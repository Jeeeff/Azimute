-- Rotas entre zonas: decide se vale mais andar, voar (mestres de voo que o
-- personagem conhece) ou pegar barco/zepelim até o alvo, pelo menor tempo.
--
-- Dados:
--   tempos de voo    -> pacote de dados (AzimuteAPI.RegisterFlightTimes)
--   posição dos voos -> o próprio jogo (C_TaxiMap.GetTaxiNodesForMap), nomes já traduzidos
--   voos conhecidos  -> anotados quando o jogador abre o mapa de voo
--   barcos/zepelins  -> tabela TRANSPORTS abaixo (posições aproximadas)
local addonName, ns = ...
local L = ns.L

local Router = {
    flightTimes = {}, -- [facção]["nodeA"][nodeB] = segundos
}
ns.Router = Router

AzimuteAPI.RegisterFlightTimes = function(data)
    for faction, nodes in pairs(data) do
        Router.flightTimes[faction] = nodes
    end
end

local CONTINENT_MAPS = { 1414, 1415 } -- Kalimdor, Reinos do Leste
local RUN_SPEED = 7                   -- jardas/s correndo
local MOUNT_LEVEL = 40
local MOUNT_SPEED = 11.2              -- montaria de 60%
local TAKEOFF_SECONDS = 15            -- falar com o mestre de voo, decolar, pousar
local TRANSPORT_WAIT = 60             -- espera média pelo barco/zepelim
local MIN_SAVING_SECONDS = 45         -- só sugere a rota se economizar isso
local REPLAN_DISTANCE = 150           -- jardas andadas até recalcular
local HEARTHSTONE_ITEM = 6948
local HEARTH_SECONDS = 25             -- conjurar (10 s) + tela de carregamento

-- Barcos e zepelins clássicos. Posições do ponto de embarque, conferidas no banco do
-- HandyNotes: TravelGuide (Classic) e nos mestres de zepelim do Wowhead Classic
-- (a pesquisa está no ROADMAP). faction: nil = todos.
local TRANSPORTS = {
    { kind = "zeppelin", faction = "Horde", ride = 75,
        a = { 1411, 0.5082, 0.1385 }, b = { 1420, 0.6069, 0.5877 } }, -- Orgrimmar (Frezza) <-> Undercity (Zapetta)
    { kind = "zeppelin", faction = "Horde", ride = 75,
        a = { 1411, 0.5057, 0.1265 }, b = { 1434, 0.3136, 0.3015 } }, -- Orgrimmar (Snurk) <-> Grom'gol (Nez'raz)
    { kind = "zeppelin", faction = "Horde", ride = 75,
        a = { 1420, 0.6188, 0.5907 }, b = { 1434, 0.3158, 0.2911 } }, -- Undercity (Hin Denburg) <-> Grom'gol (Squibby)
    { kind = "boat", ride = 90,
        a = { 1434, 0.2586, 0.7311 }, b = { 1413, 0.6368, 0.3862 } }, -- Booty Bay <-> Ratchet
    { kind = "boat", faction = "Alliance", ride = 90,
        a = { 1437, 0.0502, 0.6348 }, b = { 1445, 0.7162, 0.5648 } }, -- Menethil (píer sul) <-> Theramore
    { kind = "boat", faction = "Alliance", ride = 90,
        a = { 1437, 0.0463, 0.5710 }, b = { 1439, 0.3240, 0.4380 } }, -- Menethil (píer norte) <-> Auberdine
    { kind = "boat", faction = "Alliance", ride = 60,
        a = { 1439, 0.3319, 0.4006 }, b = { 1438, 0.5485, 0.9680 } }, -- Auberdine (píer norte) <-> Rut'theran
}

------------------------------------------------------------------------
-- Posições
------------------------------------------------------------------------

local function World(mapID, x, y)
    local continentID, world = C_Map.GetWorldPosFromMapPos(mapID, CreateVector2D(x, y))
    if not continentID or not world then
        return nil
    end
    return { continent = continentID, x = world.x, y = world.y, mapID = mapID, mx = x, my = y }
end

local function Distance(a, b)
    if a.continent ~= b.continent then
        return nil
    end
    local dx, dy = a.x - b.x, a.y - b.y
    return math.sqrt(dx * dx + dy * dy)
end

local function Speed()
    local level = ns.Engine.player.level or UnitLevel("player") or 1
    return level >= MOUNT_LEVEL and MOUNT_SPEED or RUN_SPEED
end

local function Faction()
    return UnitFactionGroup("player")
end

------------------------------------------------------------------------
-- Mestres de voo
------------------------------------------------------------------------

local taxiNodes -- [nodeID] = { id, name, pos }

local function LoadTaxiNodes()
    taxiNodes = {}
    if not (C_TaxiMap and C_TaxiMap.GetTaxiNodesForMap) then
        return
    end
    for _, mapID in ipairs(CONTINENT_MAPS) do
        for _, node in ipairs(C_TaxiMap.GetTaxiNodesForMap(mapID) or {}) do
            local position = node.position
            if node.nodeID and position then
                local x, y = position:GetXY()
                local pos = World(mapID, x, y)
                if pos then
                    taxiNodes[node.nodeID] = { id = node.nodeID, name = node.name, pos = pos }
                end
            end
        end
    end
end

-- Voos que o personagem conhece (anotados ao abrir o mapa de voo).
-- Três jeitos, porque a janela de voo do Forever pode ser a moderna ou a clássica:
--   1) C_TaxiMap.GetAllTaxiNodes (mapa do voo e continentes)
--   2) API clássica NumTaxiNodes/TaxiNodeGetType/TaxiNodeName (casando pelo nome)
--   3) o mestre de voo que o Azimute estava pedindo é, com certeza, conhecido agora
local function RecordKnownNodes()
    local known = ns.char.knownTaxi or {}
    ns.char.knownTaxi = known
    local recorded = 0

    if C_TaxiMap and C_TaxiMap.GetAllTaxiNodes then
        local maps = {}
        if GetTaxiMapID then
            maps[#maps + 1] = GetTaxiMapID()
        end
        for _, mapID in ipairs(CONTINENT_MAPS) do
            maps[#maps + 1] = mapID
        end
        local unreachable = Enum and Enum.FlightPathState and Enum.FlightPathState.Unreachable or 2
        for _, mapID in ipairs(maps) do
            for _, node in ipairs(mapID and C_TaxiMap.GetAllTaxiNodes(mapID) or {}) do
                if node.nodeID and node.state ~= nil and node.state ~= unreachable then
                    known[node.nodeID] = true
                    recorded = recorded + 1
                end
            end
        end
    end

    if recorded == 0 and NumTaxiNodes and TaxiNodeGetType and TaxiNodeName then
        if not taxiNodes then
            LoadTaxiNodes()
        end
        for index = 1, NumTaxiNodes() do
            local nodeType = TaxiNodeGetType(index)
            if nodeType == "CURRENT" or nodeType == "REACHABLE" then
                local name = TaxiNodeName(index)
                for nodeID, node in pairs(taxiNodes) do
                    if node.name == name then
                        known[nodeID] = true
                        recorded = recorded + 1
                    end
                end
            end
        end
    end

    if Router.detour then
        known[Router.detour.id] = true
    end
    ns.Debug("voos conhecidos anotados: %d", recorded)
end

------------------------------------------------------------------------
-- Grafo e menor caminho (Dijkstra; poucas dezenas de nós)
------------------------------------------------------------------------

-- Pedra de regresso: posição anotada quando o jogador definiu o lar
-- (nenhuma API do jogo dá as coordenadas). Só vale sem recarga.
local function HearthNode()
    local hearth = ns.char.hearth
    if not hearth or not GetBindLocation or GetBindLocation() ~= hearth.name then
        return nil
    end
    local count = C_Item and C_Item.GetItemCount and C_Item.GetItemCount(HEARTHSTONE_ITEM) or 0
    if count == 0 then
        return nil
    end
    if C_Container and C_Container.GetItemCooldown then
        local start, duration = C_Container.GetItemCooldown(HEARTHSTONE_ITEM)
        if start == nil or ns.IsSecret(start) or ns.IsSecret(duration)
            or (start > 0 and duration > 0 and start + duration - GetTime() > 0) then
            return nil
        end
    end
    local pos = World(hearth.mapID, hearth.x, hearth.y)
    return pos and { kind = "hearth", name = hearth.name, pos = pos }
end

local function BuildGraph(start, goal)
    if not taxiNodes then
        LoadTaxiNodes()
    end
    local faction = Faction()
    local times = Router.flightTimes[faction] or {}
    local known = ns.char.knownTaxi or {}
    local nodes = { start, goal }
    local hearth = HearthNode()
    if hearth then
        nodes[#nodes + 1] = hearth
        start.hearth = hearth
    end

    for nodeID, node in pairs(taxiNodes) do
        if known[nodeID] and times[nodeID] then
            nodes[#nodes + 1] = { kind = "taxi", id = nodeID, name = node.name, pos = node.pos }
        end
    end
    for index, transport in ipairs(TRANSPORTS) do
        if not transport.faction or transport.faction == faction then
            local a = World(transport.a[1], transport.a[2], transport.a[3])
            local b = World(transport.b[1], transport.b[2], transport.b[3])
            if a and b then
                local nodeA = { kind = "dock", transport = index, pos = a, mapID = transport.a[1] }
                local nodeB = { kind = "dock", transport = index, pos = b, mapID = transport.b[1] }
                nodeA.other, nodeB.other = nodeB, nodeA
                nodes[#nodes + 1] = nodeA
                nodes[#nodes + 1] = nodeB
            end
        end
    end
    return nodes, times
end

local function Edges(node, nodes, times, speed)
    local edges = {}
    for _, other in ipairs(nodes) do
        if other ~= node then
            local distance = Distance(node.pos, other.pos)
            if distance then
                edges[#edges + 1] = { to = other, cost = distance / speed, kind = "walk" }
            end
        end
    end
    if node.hearth then
        edges[#edges + 1] = { to = node.hearth, cost = HEARTH_SECONDS, kind = "hearth" }
    end
    if node.kind == "taxi" then
        for _, other in ipairs(nodes) do
            local seconds = other.kind == "taxi" and times[node.id] and times[node.id][other.id]
            if seconds then
                edges[#edges + 1] = { to = other, cost = seconds + TAKEOFF_SECONDS, kind = "fly" }
            end
        end
    elseif node.kind == "dock" then
        local transport = TRANSPORTS[node.transport]
        edges[#edges + 1] = { to = node.other, cost = TRANSPORT_WAIT + transport.ride, kind = transport.kind }
    end
    return edges
end

local function ShortestPath(nodes, times, start, goal)
    local speed = Speed()
    local cost, previous, done = { [start] = 0 }, {}, {}
    while true do
        local current, best
        for _, node in ipairs(nodes) do
            if not done[node] and cost[node] and (not best or cost[node] < best) then
                current, best = node, cost[node]
            end
        end
        if not current or current == goal then
            break
        end
        done[current] = true
        for _, edge in ipairs(Edges(current, nodes, times, speed)) do
            local newCost = best + edge.cost
            if not cost[edge.to] or newCost < cost[edge.to] then
                cost[edge.to] = newCost
                previous[edge.to] = { from = current, kind = edge.kind }
            end
        end
    end
    if not cost[goal] then
        return nil
    end
    -- Reconstrói os trechos do fim para o começo.
    local legs = {}
    local node = goal
    while previous[node] do
        table.insert(legs, 1, { from = previous[node].from, to = node, kind = previous[node].kind })
        node = previous[node].from
    end
    return legs, cost[goal]
end

------------------------------------------------------------------------
-- Plano atual
------------------------------------------------------------------------

-- Calcula a rota até o alvo. Devolve o ponto para onde a seta deve apontar
-- agora (mestre de voo / doca) ou nil se andar direto for o melhor.
function Router:Plan(target)
    self.plan = nil
    if not ns.db.routes or not target then
        return nil
    end
    local mapID, px, py = ns.Position.Player()
    if not mapID then
        return nil
    end
    local startPos = World(mapID, px, py)
    local goalPos = World(target.mapID, target.x, target.y)
    if not startPos or not goalPos then
        return nil
    end
    local start = { kind = "start", pos = startPos }
    local goal = { kind = "goal", pos = goalPos }
    local nodes, times = BuildGraph(start, goal)
    local legs, total = ShortestPath(nodes, times, start, goal)
    self.lastPlanPos = startPos
    if not legs or #legs < 2 then
        return nil -- andar direto (ou não há caminho conhecido)
    end
    local direct = Distance(startPos, goalPos)
    local directTime = direct and direct / Speed()
    if directTime and directTime - total < MIN_SAVING_SECONDS then
        return nil
    end
    -- Pedra de regresso logo de cara: não há ponto para andar, só a instrução.
    if legs[1].kind == "hearth" then
        self.plan = { legs = legs, action = legs[1],
            saving = directTime and (directTime - total) or nil }
        return nil
    end
    -- Primeiro trecho: andar até o mestre de voo / doca; o segundo diz o que fazer lá.
    local first, second = legs[1], legs[2]
    local via = first.to
    self.plan = {
        legs = legs,
        via = via,
        action = second,
        saving = directTime and (directTime - total) or nil,
    }
    return {
        mapID = via.pos.mapID, x = via.pos.mx, y = via.pos.my,
        radius = via.kind == "dock" and 25 or 10, routed = true,
    }
end

------------------------------------------------------------------------
-- Caminho de voo novo por perto: pegar antes de seguir o guia.
------------------------------------------------------------------------

local DETOUR_RADIUS = 250  -- jardas: "chegou na cidade"
local DETOUR_CANCEL = 450  -- afastou-se sem pegar: desiste até o próximo login
-- Voos "no caminho" até o alvo do guia: só vale se o alvo está longe e o
-- desvio é pequeno (até ON_WAY_EXTRA jardas ou ON_WAY_RATIO do trajeto).
local ON_WAY_MIN_TRIP = 600
local ON_WAY_EXTRA = 400
local ON_WAY_RATIO = 0.2
Router.skippedDetours = {}

-- onWay = desvio a caminho do alvo (não "chegou na cidade"); extra = jardas a mais.
function Router:SetDetour(node, cancelled, onWay, extra)
    local old = self.detour
    if old == node then
        return
    end
    if old and cancelled then
        self.skippedDetours[old.id] = true
    end
    self.detour = node
    self.detourOnWay = onWay or nil
    self.detourStart = nil
    if node then
        if onWay then
            local mapID, px, py = ns.Position.Player()
            local here = mapID and World(mapID, px, py)
            self.detourStart = here and Distance(here, node.pos)
            ns.Print(L["ROUTE_NEW_FP_WAY"]:format(node.name or "?", math.floor((extra or 0) + 0.5)))
        else
            ns.Print(L["ROUTE_NEW_FP"]:format(node.name or "?"))
        end
    end
    if ns.Nav then
        ns.Nav.waypointKey = false
        ns.Nav:Refresh()
    end
    ns:Fire("ROUTE_CHANGED")
end

function Router:CheckNewFlightPath()
    if not ns.db or not ns.char or UnitOnTaxi("player") then
        return
    end
    if not ns.db.pickupFlightPaths then
        if self.detour then
            self:SetDetour(nil)
        end
        return
    end
    local times = self.flightTimes[Faction()]
    local mapID, px, py = ns.Position.Player()
    local here = mapID and World(mapID, px, py)
    if not times or not here then
        return
    end
    if not taxiNodes then
        LoadTaxiNodes()
    end
    local known = ns.char.knownTaxi or {}
    local detour = self.detour
    if detour then
        local distance = Distance(here, detour.pos)
        -- desvio no caminho começa longe: desiste se o jogador se afastar dele
        local limit = DETOUR_CANCEL
        if self.detourOnWay and self.detourStart then
            limit = math.max(DETOUR_CANCEL, self.detourStart + 200)
        end
        if known[detour.id] then
            self:SetDetour(nil)
        elseif not distance or distance > limit then
            self:SetDetour(nil, true)
        end
        return
    end
    for nodeID, node in pairs(taxiNodes) do
        -- times[nodeID] = o mestre de voo é da facção do jogador
        if times[nodeID] and not known[nodeID] and not self.skippedDetours[nodeID] then
            local distance = Distance(here, node.pos)
            if distance and distance <= DETOUR_RADIUS then
                self:SetDetour(node)
                return
            end
        end
    end
    if ns.db.pickupFlightPathsOnWay then
        local node, extra = self:FlightPathOnWay(here, times, known)
        if node then
            self:SetDetour(node, false, true, extra)
        end
    end
end

-- Mestre de voo da facção, ainda não conhecido, que fica no caminho até o
-- alvo atual da seta (guia, missão ou destino avulso). Devolve o nó e quantas
-- jardas o desvio acrescenta (o de menor acréscimo).
function Router:FlightPathOnWay(here, times, known)
    local target = ns.Nav and ns.Nav:CurrentTarget()
    if not target or target.corpse or target.detour or UnitOnTaxi("player") then
        return nil
    end
    local goal = World(target.mapID, target.x, target.y)
    local trip = goal and Distance(here, goal)
    if not trip or trip < ON_WAY_MIN_TRIP then
        return nil
    end
    local allowed = math.max(ON_WAY_EXTRA, trip * ON_WAY_RATIO)
    local best, bestExtra
    for nodeID, node in pairs(taxiNodes) do
        if times[nodeID] and not known[nodeID] and not self.skippedDetours[nodeID] then
            local toNode, nodeToGoal = Distance(here, node.pos), Distance(node.pos, goal)
            if toNode and nodeToGoal then
                local extra = toNode + nodeToGoal - trip
                if extra <= allowed and (not bestExtra or extra < bestExtra) then
                    best, bestExtra = node, extra
                end
            end
        end
    end
    return best, bestExtra
end

-- Alvo da seta enquanto houver um caminho de voo novo para pegar.
function Router:DetourTarget()
    local node = self.detour
    if node then
        return { detour = true, mapID = node.pos.mapID, x = node.pos.mx, y = node.pos.my, radius = 8 }
    end
end

-- Texto para a janela: "Voe de Brill para Orgrimmar (economiza ~3 min)".
function Router:Instruction()
    if self.detour then
        return L[self.detourOnWay and "ROUTE_NEW_FP_WAY_LINE" or "ROUTE_NEW_FP"]:format(self.detour.name or "?")
    end
    local plan = self.plan
    if not plan then
        return nil
    end
    local action = plan.action
    local text
    if action.kind == "fly" then
        text = L["ROUTE_FLY"]:format(action.from.name or "?", action.to.name or "?")
    elseif action.kind == "zeppelin" then
        text = L["ROUTE_ZEPPELIN"]:format(ns.Names.Zone(action.to.mapID))
    elseif action.kind == "boat" then
        text = L["ROUTE_BOAT"]:format(ns.Names.Zone(action.to.mapID))
    elseif action.kind == "hearth" then
        text = L["ROUTE_HEARTH"]:format(action.to.name or "?")
    else
        return nil
    end
    if plan.saving and plan.saving >= 60 then
        text = text .. " " .. L["ROUTE_SAVING"]:format(math.floor(plan.saving / 60 + 0.5))
    end
    return text
end

-- Destino do voo planejado a partir deste mestre de voo (nodeID) ou nil.
function Router:PlannedFlight()
    local plan = self.plan
    if plan and plan.action.kind == "fly" then
        return plan.action.to.id
    end
end

-- Recalcular quando o jogador andou bastante desde o último plano.
function Router:ShouldReplan()
    if not self.lastPlanPos then
        return true
    end
    local mapID, px, py = ns.Position.Player()
    local here = mapID and World(mapID, px, py)
    local distance = here and Distance(here, self.lastPlanPos)
    return distance == nil or distance > REPLAN_DISTANCE
end

------------------------------------------------------------------------
-- Mapa de voo: anota os voos conhecidos e (opcional) voa sozinho.
------------------------------------------------------------------------

local function OnTaxiMapOpened()
    RecordKnownNodes()
    Router:CheckNewFlightPath() -- o voo novo foi pego: volta ao guia
    local destination = Router:PlannedFlight()
    if not destination or not ns.db.autoFly or IsShiftKeyDown() then
        return
    end
    for _, node in ipairs(C_TaxiMap.GetAllTaxiNodes(GetTaxiMapID()) or {}) do
        if node.nodeID == destination and node.slotIndex and TakeTaxiNode then
            ns.Print(L["ROUTE_AUTO_FLY"]:format(node.name or "?"))
            TakeTaxiNode(node.slotIndex)
            return
        end
    end
end

ns:RegisterEvent("TAXIMAP_OPENED", OnTaxiMapOpened)
-- Clientes novos também avisam pela "interação" (tipo voo); cobre o caso de o
-- TAXIMAP_OPENED não disparar.
ns:RegisterEvent("PLAYER_INTERACTION_MANAGER_FRAME_SHOW", function(interactionType)
    local taxi = Enum and Enum.PlayerInteractionType and Enum.PlayerInteractionType.TaxiNode
    if taxi and interactionType == taxi then
        OnTaxiMapOpened()
    end
end)

-- Lar definido: anota onde o jogador está (a API não dá as coordenadas).
ns:RegisterEvent("HEARTHSTONE_BOUND", function()
    local mapID, x, y = ns.Position.Player()
    if mapID and GetBindLocation then
        ns.char.hearth = { mapID = mapID, x = x, y = y, name = GetBindLocation() }
    end
end)

-- Pousou / trocou de zona: a posição mudou muito, recalcula.
local function Invalidate()
    Router.lastPlanPos = nil
    if ns.Nav then
        ns.Nav.waypointKey = false
    end
end
ns:RegisterEvent("PLAYER_CONTROL_GAINED", Invalidate)
ns:RegisterEvent("ZONE_CHANGED_NEW_AREA", Invalidate)
ns:RegisterEvent("PLAYER_ENTERING_WORLD", function()
    taxiNodes = nil -- recarrega posições (dados do mapa já disponíveis)
    Invalidate()
end)

-- Procura caminhos de voo novos por perto a cada 2 segundos.
ns:On("LOGIN", function()
    C_Timer.NewTicker(2, function()
        Router:CheckNewFlightPath()
    end)
end)
