-- Desenha no mapa-múndi o caminho do passo atual: linhas entre os pontos
-- do "path"/"goto" e um marcador em cada ponto (dourado = próximo alvo).
local addonName, ns = ...

local MapLines = {}
ns.MapLines = MapLines

local LINE_COLOR = { 1, 0.82, 0, 0.9 }
local DONE_COLOR = { 0.5, 0.5, 0.5, 0.6 }
local LINE_THICKNESS = 4
local DOT_SIZE = 9

local provider, holder
local linePool, dotPool = {}, {}
local usedLines, usedDots = 0, 0

-- Converte um ponto de outro mapa para o mapa exibido (via coordenadas do mundo).
local function ToDisplayedMap(displayMapID, mapID, x, y)
    if mapID == displayMapID then
        return x, y
    end
    if not C_Map.GetMapPosFromWorldPos then
        return nil
    end
    local continentID, world = C_Map.GetWorldPosFromMapPos(mapID, CreateVector2D(x, y))
    if not continentID or not world then
        return nil
    end
    local _, position = C_Map.GetMapPosFromWorldPos(continentID, world, displayMapID)
    if not position then
        return nil
    end
    -- Pontos fora do mapa aberto continuam valendo: o mapa corta o que
    -- passa da borda e a linha mostra a direção do alvo.
    return position:GetXY()
end

-- Pontos do passo atual em ordem: { mapID, x, y, done, current }.
local function CollectPoints()
    local points = {}
    local target = ns.Nav:CurrentTarget()
    for _, goal in ipairs(ns.Nav.goals or {}) do
        if goal.type == "goto" then
            points[#points + 1] = {
                mapID = goal.mapID, x = goal.x, y = goal.y,
                done = goal.reached, current = target and target.goal == goal,
            }
        else
            local index = goal.index or 1
            for i, point in ipairs(goal.points) do
                points[#points + 1] = {
                    mapID = goal.mapID, x = point.x, y = point.y,
                    done = goal.reached or i < index,
                    current = target and target.goal == goal and i == index,
                }
            end
        end
    end
    return points
end

local function GetLine()
    usedLines = usedLines + 1
    local line = linePool[usedLines]
    if not line then
        line = holder:CreateLine(nil, "OVERLAY")
        line:SetThickness(LINE_THICKNESS)
        linePool[usedLines] = line
    end
    line:Show()
    return line
end

local function GetDot()
    usedDots = usedDots + 1
    local dot = dotPool[usedDots]
    if not dot then
        dot = holder:CreateTexture(nil, "OVERLAY", nil, 7)
        dotPool[usedDots] = dot
    end
    dot:Show()
    return dot
end

local function Clear()
    for i = 1, usedLines do
        linePool[i]:Hide()
    end
    for i = 1, usedDots do
        dotPool[i]:Hide()
    end
    usedLines, usedDots = 0, 0
end

local PLAYER_LINE_COLOR = { 0.3, 0.8, 1, 0.9 }

-- Posição do jogador no mapa aberto (funciona também em mapas "pais").
local function PlayerOnMap(displayMapID)
    local position = C_Map.GetPlayerMapPosition(displayMapID, "player")
    if not position or ns.IsSecret(position) then
        return nil
    end
    local x, y = position:GetXY()
    if not x or ns.IsSecret(x) or (x == 0 and y == 0) then
        return nil
    end
    return x, y
end

local function Draw(map)
    Clear()
    local displayMapID = map:GetMapID()
    if not displayMapID or not ns.db.mapPin then
        return
    end
    local width, height = holder:GetWidth(), holder:GetHeight()
    if width <= 0 or height <= 0 then
        return -- mapa ainda sem tamanho; o timer tenta de novo
    end
    local points = CollectPoints()

    -- Linha azul do jogador até o próximo alvo.
    local px, py = PlayerOnMap(displayMapID)
    if px then
        for _, point in ipairs(points) do
            if point.current then
                local x, y = ToDisplayedMap(displayMapID, point.mapID, point.x, point.y)
                if x then
                    local line = GetLine()
                    line:SetColorTexture(unpack(PLAYER_LINE_COLOR))
                    line:SetStartPoint("TOPLEFT", holder, px * width, -py * height)
                    line:SetEndPoint("TOPLEFT", holder, x * width, -y * height)
                end
                break
            end
        end
    end

    -- Linha dourada do caminho do guia (cinza = pontos já alcançados).
    local previous
    for _, point in ipairs(points) do
        local x, y = ToDisplayedMap(displayMapID, point.mapID, point.x, point.y)
        if x then
            local color = point.done and DONE_COLOR or LINE_COLOR
            if previous then
                local line = GetLine()
                line:SetColorTexture(unpack(color))
                line:SetStartPoint("TOPLEFT", holder, previous.x * width, -previous.y * height)
                line:SetEndPoint("TOPLEFT", holder, x * width, -y * height)
            end
            local dot = GetDot()
            local size = point.current and DOT_SIZE * 1.6 or DOT_SIZE
            dot:SetSize(size, size)
            dot:SetColorTexture(unpack(point.current and { 1, 0.95, 0.3, 1 } or color))
            dot:SetPoint("CENTER", holder, "TOPLEFT", x * width, -y * height)
            previous = { x = x, y = y }
        else
            previous = nil
        end
    end
end

-- Estado para o diagnóstico (/azimute mapa).
local stats = { draws = 0, points = 0 }
local drawTicker

-- O mapa cria e reordena as próprias camadas (blocos, névoa, marcadores)
-- depois de abrir; se alguma passar do nosso nível, a linha some. Aqui o
-- frame das linhas fica sempre acima da camada mais alta.
local MAX_FRAME_LEVEL = 9990

local function KeepOnTop()
    local canvas = holder:GetParent()
    local top = canvas:GetFrameLevel()
    for _, child in ipairs({ canvas:GetChildren() }) do
        if child ~= holder then
            local level = child:GetFrameLevel()
            if level > top then
                top = level
            end
        end
    end
    stats.topLayer = top
    if holder:GetFrameLevel() <= top then
        holder:SetFrameLevel(math.min(top + 10, MAX_FRAME_LEVEL))
    end
end

-- Desenha protegido: um erro aqui não pode quebrar o mapa da Blizzard, e
-- fica guardado para o /azimute mapa (o jogo esconde erros de Lua por padrão).
local function SafeDraw()
    if not holder or not WorldMapFrame:IsShown() then
        return
    end
    pcall(KeepOnTop)
    local ok, err = pcall(Draw, WorldMapFrame)
    stats.draws = stats.draws + 1
    if not ok then
        stats.lastError = tostring(err)
        ns.Debug("erro ao desenhar no mapa: %s", stats.lastError)
    end
end

local function Setup()
    if holder or not WorldMapFrame or not WorldMapFrame.GetCanvas then
        return
    end
    local canvas = WorldMapFrame:GetCanvas()
    -- Um frame próprio acima das texturas do mapa (os blocos do mapa são
    -- frames filhos do canvas e cobririam linhas desenhadas nele).
    holder = CreateFrame("Frame", nil, canvas)
    holder:SetAllPoints(canvas)
    holder:SetFrameLevel(canvas:GetFrameLevel() + 1000)

    -- Camada de dados do mapa: redesenha na hora quando o jogador troca de
    -- mapa ou de zoom. Se não estiver disponível, o timer abaixo basta.
    if MapCanvasDataProviderMixin and WorldMapFrame.AddDataProvider then
        provider = CreateFromMixins(MapCanvasDataProviderMixin)
        function provider:RemoveAllData()
            Clear()
        end
        function provider:RefreshAllData()
            SafeDraw()
        end
        WorldMapFrame:AddDataProvider(provider)
    end

    -- Com o mapa aberto, redesenha a cada meio segundo (o jogador anda).
    drawTicker = C_Timer.NewTicker(0.5, SafeDraw)
    ns.Debug("linhas do mapa prontas")
end

function MapLines:Refresh()
    SafeDraw()
end

-- /azimute mapa: mostra por que a linha aparece (ou não).
function MapLines:Diagnose()
    local lines = {}
    local function add(fmt, ...)
        lines[#lines + 1] = fmt:format(...)
    end
    add("WorldMapFrame: %s | camada: %s | ativo: %s", tostring(WorldMapFrame ~= nil),
        tostring(provider ~= nil), tostring(holder ~= nil))
    if holder then
        local map = WorldMapFrame:GetMapID()
        add("mapa aberto: %s (%s) | tamanho: %.0f x %.0f | nível: %d | camada mais alta: %s | estrato: %s",
            tostring(WorldMapFrame:IsShown()), tostring(map), holder:GetWidth(), holder:GetHeight(),
            holder:GetFrameLevel(), tostring(stats.topLayer), tostring(holder:GetFrameStrata()))
        local points = CollectPoints()
        add("pontos do passo: %d | desenhos: %d | linhas: %d | marcadores: %d",
            #points, stats.draws, usedLines, usedDots)
        if map then
            local px, py = PlayerOnMap(map)
            add("jogador neste mapa: %s", px and ("%.1f, %.1f"):format(px * 100, py * 100) or "não")
            for i, point in ipairs(points) do
                local x, y = ToDisplayedMap(map, point.mapID, point.x, point.y)
                add("  ponto %d: mapa %d (%.1f, %.1f) -> %s%s", i, point.mapID, point.x * 100, point.y * 100,
                    x and ("%.1f, %.1f"):format(x * 100, y * 100) or "fora",
                    point.current and " [alvo]" or "")
            end
        end
    end
    add("pino no mapa ligado: %s | último erro: %s", tostring(ns.db.mapPin), stats.lastError or "nenhum")
    for _, line in ipairs(lines) do
        ns.Print(line)
    end
end

ns:On("LOGIN", Setup)
ns:RegisterEvent("ADDON_LOADED", function(name)
    if name == "Blizzard_WorldMap" then
        Setup()
    end
end)
ns:On("STEP_CHANGED", function()
    MapLines:Refresh()
end)
ns:On("NAV_ARRIVED", function()
    MapLines:Refresh()
end)
ns:On("STEP_UPDATED", function()
    MapLines:Refresh()
end)
