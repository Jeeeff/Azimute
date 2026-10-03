-- Posição do jogador, distância (jardas) e direção até um ponto do mapa.
-- Usa só a API de mapas do jogo (C_Map), sem bibliotecas externas.
local addonName, ns = ...

local Position = {}
ns.Position = Position

local sqrt, atan2 = math.sqrt, math.atan2

-- Ponto do mapa (0-1) -> continente e coordenadas do mundo (jardas).
local function WorldPos(mapID, x, y)
    local continentID, world = C_Map.GetWorldPosFromMapPos(mapID, CreateVector2D(x, y))
    if not continentID or not world then
        return nil
    end
    return continentID, world.x, world.y
end

-- Direções "leste" e "norte" do mapa no sistema de coordenadas do mundo.
-- Calculadas uma vez por mapa a partir de três cantos, para não depender
-- de suposições sobre os eixos internos do jogo.
local axesCache = {}

local function MapAxes(mapID)
    local axes = axesCache[mapID]
    if axes ~= nil then
        return axes or nil
    end
    local c0, x0, y0 = WorldPos(mapID, 0, 0)
    local c1, x1, y1 = WorldPos(mapID, 1, 0)
    local c2, x2, y2 = WorldPos(mapID, 0, 1)
    if not (c0 and c1 and c2) then
        axesCache[mapID] = false
        return nil
    end
    local ex, ey = x1 - x0, y1 - y0 -- x do mapa cresce para leste
    local sx, sy = x2 - x0, y2 - y0 -- y do mapa cresce para o sul
    local eastLength, southLength = sqrt(ex * ex + ey * ey), sqrt(sx * sx + sy * sy)
    if eastLength == 0 or southLength == 0 then
        axesCache[mapID] = false
        return nil
    end
    axes = {
        eastX = ex / eastLength, eastY = ey / eastLength,
        northX = -sx / southLength, northY = -sy / southLength,
    }
    axesCache[mapID] = axes
    return axes
end

-- Coordenada do mundo no padrão da HereBeDragons/RestedXP -> mapa (0-1).
--   hx = eixo leste-oeste (world.y do jogo), hy = eixo norte-sul (world.x).
-- A conversão usa os cantos do mapa, calculados uma vez por mapa.
local boundsCache = {}

function Position.WorldToMap(mapID, hx, hy)
    local bounds = boundsCache[mapID]
    if bounds == nil then
        local c0, top, left = WorldPos(mapID, 0, 0)
        local c1, bottom, right = WorldPos(mapID, 1, 1)
        if c0 and c1 and left ~= right and top ~= bottom then
            bounds = { left = left, right = right, top = top, bottom = bottom }
        else
            bounds = false
        end
        boundsCache[mapID] = bounds
    end
    if not bounds then
        return nil
    end
    return (bounds.left - hx) / (bounds.left - bounds.right),
        (bounds.top - hy) / (bounds.top - bounds.bottom)
end

-- Converte todos os pontos "@mundo" de um guia para coordenadas do mapa.
-- Pontos que não convertem ficam sem x/y e são ignorados pela navegação.
function Position.ResolveGuide(guide)
    if guide.resolved then
        return
    end
    local dropped = 0
    for _, step in ipairs(guide.steps) do
        local goals = {}
        for _, goal in ipairs(step.goals) do
            local keep = true
            if goal.type == "goto" and goal.wx then
                goal.x, goal.y = Position.WorldToMap(goal.mapID, goal.wx, goal.wy)
                keep = goal.x ~= nil
            elseif goal.type == "path" then
                local points = {}
                for _, point in ipairs(goal.points) do
                    if point.wx then
                        point.x, point.y = Position.WorldToMap(goal.mapID, point.wx, point.wy)
                    end
                    if point.x then
                        points[#points + 1] = point
                    end
                end
                goal.points = points
                keep = #points > 0
            end
            if keep then
                goals[#goals + 1] = goal
            else
                dropped = dropped + 1
            end
        end
        step.goals = goals
    end
    if dropped > 0 then
        ns.Debug("%s: %d pontos sem mapa ignorados", guide.id, dropped)
    end
    guide.resolved = true
end

-- mapID, x, y (0-1) do jogador, ou nil (instâncias, dados secretos).
function Position.Player()
    local mapID = C_Map.GetBestMapForUnit("player")
    if not mapID or ns.IsSecret(mapID) then
        return nil
    end
    local position = C_Map.GetPlayerMapPosition(mapID, "player")
    if not position or ns.IsSecret(position) then
        return nil
    end
    local x, y = position:GetXY()
    if not x or ns.IsSecret(x) or ns.IsSecret(y) then
        return nil
    end
    return mapID, x, y
end

-- Distância em jardas e direção até o ponto, no mesmo padrão do
-- GetPlayerFacing(): 0 = norte, cresce no sentido anti-horário.
-- Sem resultado, devolve nil, motivo ("position" ou "continent").
function Position.VectorTo(mapID, x, y)
    local playerMap, px, py = Position.Player()
    if not playerMap then
        return nil, "position"
    end
    local playerContinent, pwx, pwy = WorldPos(playerMap, px, py)
    local targetContinent, twx, twy = WorldPos(mapID, x, y)
    if not playerContinent or not targetContinent then
        return nil, "position"
    end
    if playerContinent ~= targetContinent then
        return nil, "continent"
    end
    local dx, dy = twx - pwx, twy - pwy
    local distance = sqrt(dx * dx + dy * dy)
    local axes = MapAxes(mapID)
    if not axes then
        return distance, nil
    end
    local east = dx * axes.eastX + dy * axes.eastY
    local north = dx * axes.northX + dy * axes.northY
    return distance, atan2(-east, north)
end
