-- Navegação do passo atual: escolhe o ponto-alvo, detecta a chegada e
-- manda o ponto para a seta, o TomTom e o pino do mapa.
--
-- "path seq" segue os pontos em ordem (contornar paredes, rampas, pontes).
-- "path closest" pula para o ponto mais adiante que o jogador alcançar.
local addonName, ns = ...
local L = ns.L

local Nav = {
    goals = {},
}
ns.Nav = Nav

local TICK_SECONDS = 0.1
local ticker
local pinSet = false

-- Índice do ponto mais próximo: ao carregar um passo (ou após /reload)
-- o caminho continua de onde o jogador está.
local function ClosestIndex(goal)
    local best, bestDistance = 1, nil
    for i, point in ipairs(goal.points) do
        local distance = ns.Position.VectorTo(goal.mapID, point.x, point.y)
        if distance and (not bestDistance or distance < bestDistance) then
            best, bestDistance = i, distance
        end
    end
    return best
end

-- Destino avulso (painel de masmorras, /azimute ir x y): tem prioridade
-- sobre o guia até chegar ou o jogador cancelar; a janela mostra o modo
-- "Indo até". info = { title = "...", lines = { "..." } } (opcional).
function Nav:SetManualTarget(mapID, x, y, info)
    self.manual = { type = "goto", mapID = mapID, x = x, y = y, radius = 10, info = info or {} }
    self.waypointKey = false
    self:Refresh()
    ns:Fire("STEP_UPDATED")
end

function Nav:ClearManual()
    if not self.manual then
        return
    end
    self.manual = nil
    self.waypointKey = false
    self:Refresh()
    ns:Fire("STEP_UPDATED")
end

-- Destino avulso ativo (ou nil).
function Nav:Manual()
    local manual = self.manual
    return manual and not manual.reached and manual or nil
end

function Nav:CurrentTarget()
    -- Morto (fantasma): o corpo vem antes de tudo.
    local corpse = ns.Corpse and ns.Corpse:Target()
    if corpse then
        return corpse
    end
    local manual = self.manual
    if manual and not manual.reached then
        return { goal = manual, mapID = manual.mapID, x = manual.x, y = manual.y, radius = manual.radius }
    end
    local detour = ns.Router and ns.Router:DetourTarget()
    if detour then
        return detour
    end
    for _, goal in ipairs(self.goals) do
        if not goal.reached then
            if goal.type == "goto" then
                return { goal = goal, mapID = goal.mapID, x = goal.x, y = goal.y, radius = goal.radius }
            end
            local point = goal.points[goal.index or 1]
            if point then
                return { goal = goal, mapID = goal.mapID, x = point.x, y = point.y, radius = goal.radius }
            end
        end
    end
end

function Nav:SetWaypoint(target)
    local key = target and (target.mapID .. ":" .. target.x .. ":" .. target.y) or nil
    if key == self.waypointKey then
        return
    end
    self.waypointKey = key

    ns.TomTomBridge:Clear()
    if pinSet then
        C_Map.ClearUserWaypoint()
        pinSet = false
    end
    if not target then
        return
    end

    local title
    if target.corpse then
        title = L["CORPSE_TITLE"]
    elseif self.manual and target.goal == self.manual then
        title = self.manual.info.title or L["MANUAL_POINT"]
    elseif ns.Focus:IsActive() then
        title = ns.Names.Quest(ns.Focus.questID) or L["QUEST_FALLBACK"]:format(ns.Focus.questID)
    else
        title = L["WAYPOINT_TITLE"]:format(ns.Engine.stepIndex)
    end
    ns.TomTomBridge:Set(target, title)
    if ns.db.mapPin and C_Map.CanSetUserWaypointOnMap(target.mapID) then
        C_Map.SetUserWaypoint(UiMapPoint.CreateFromCoordinates(target.mapID, target.x, target.y))
        pinSet = true
    end
end

-- Ponto que a seta/TomTom/pino mostram: o alvo do guia, ou o mestre de voo /
-- doca quando a rota (Nav/Router.lua) diz que voar ou navegar é mais rápido.
-- A chegada continua sendo medida no alvo do guia.
local routedFor

function Nav:DisplayTarget(target)
    if (not target or target.corpse) and self.routed then
        -- Sem alvo (passo sem destino): esquece a rota antiga.
        self.routed, routedFor = nil, nil
        ns.Router.plan = nil
        ns:Fire("ROUTE_CHANGED")
    end
    if not target or not ns.Router or UnitOnTaxi("player") or target.detour or target.corpse then
        return target
    end
    local key = target.mapID .. ":" .. target.x .. ":" .. target.y
    if key ~= routedFor or ns.Router:ShouldReplan() then
        routedFor = key
        local previous = self.routed
        self.routed = ns.Router:Plan(target)
        if (previous == nil) ~= (self.routed == nil) or (previous and self.routed
            and (previous.x ~= self.routed.x or previous.y ~= self.routed.y)) then
            ns:Fire("ROUTE_CHANGED")
        end
    end
    return self.routed or target
end

function Nav:Refresh()
    local target = self:CurrentTarget()
    self:SetWaypoint(self:DisplayTarget(target))
    ns.Arrow:SetActive(target ~= nil and not ns.TomTomBridge:IsActive())

    if target and not ticker then
        ticker = C_Timer.NewTicker(TICK_SECONDS, function()
            Nav:Tick()
        end)
    elseif not target and ticker then
        ticker:Cancel()
        ticker = nil
    end
    if target then
        self:Tick()
    end
end

function Nav:Arrive(goal)
    if goal.type == "goto" then
        goal.reached = true
    else
        goal.index = (goal.index or 1) + 1
        if goal.index > #goal.points then
            if goal.mode == "loop" then
                goal.index = 1 -- circuito de coleta: recomeça
            else
                goal.reached = true
            end
        end
    end
    ns.Debug("chegou: %s", goal.type)
    if goal == self.manual then
        self.manual = nil -- destino avulso alcançado: a janela volta ao guia
        ns.Print(L["MANUAL_ARRIVED"])
    end
    self:Refresh()
    ns:Fire("NAV_ARRIVED")
end

function Nav:Tick()
    local target = self:CurrentTarget()
    if not target then
        self:Refresh()
        return
    end
    local shown = self:DisplayTarget(target)
    self:SetWaypoint(shown) -- (não faz nada se o ponto não mudou)
    local arrowDistance, arrowBearing = ns.Position.VectorTo(shown.mapID, shown.x, shown.y)
    ns.Arrow:Update(arrowDistance, arrowBearing)
    local distance = arrowDistance
    if shown ~= target then
        distance = ns.Position.VectorTo(target.mapID, target.x, target.y)
    end

    -- Em voo de táxi não conta chegada (o caminho passa por cima de tudo).
    -- No mestre de voo novo, espera o jogador abrir o mapa de voo.
    -- O corpo termina ao ressuscitar (Nav/Corpse.lua), não ao chegar perto.
    if UnitOnTaxi("player") or target.detour or target.corpse then
        return
    end

    local goal = target.goal
    if goal.type == "path" and goal.mode == "closest" then
        for i = #goal.points, (goal.index or 1) + 1, -1 do
            local point = goal.points[i]
            local d = ns.Position.VectorTo(goal.mapID, point.x, point.y)
            if d and d <= goal.radius then
                goal.index = i
                self:Arrive(goal)
                return
            end
        end
    end

    if distance and distance <= target.radius then
        self:Arrive(goal)
    end
end

-- Recalcula os objetivos de navegação: da missão selecionada (Focus) ou
-- do passo atual do guia.
function Nav:OnStepChanged(resumePaths)
    local candidates = {}
    if ns.Focus and ns.Focus:IsActive() then
        candidates = ns.Focus.goals
    else
        local step = ns.Engine:CurrentStep()
        if step then
            for _, goal in ipairs(step.goals) do
                if ns.Engine.NAV_TYPES[goal.type] and ns.Engine:GoalApplies(goal) then
                    candidates[#candidates + 1] = goal
                end
            end
        end
    end
    local goals = {}
    for _, goal in ipairs(candidates) do
        if goal.type == "path" and (resumePaths or not goal.index) then
            goal.index = ClosestIndex(goal)
        end
        goals[#goals + 1] = goal
    end
    self.goals = goals
    self.waypointKey = false -- força reenviar o ponto
    self:Refresh()
end

ns:On("STEP_CHANGED", function()
    Nav:OnStepChanged(false)
end)

-- Depois de loading screen a posição fica disponível: retoma os caminhos
-- a partir do ponto mais próximo.
ns:RegisterEvent("PLAYER_ENTERING_WORLD", function()
    if ns.Engine.guide or ns.Focus:IsActive() then
        Nav:OnStepChanged(true)
    end
end)
