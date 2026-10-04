-- Entradas das masmorras: primeiro pergunta ao jogo (as mesmas entradas que o
-- mapa-múndi desenha, C_EncounterJournal.GetDungeonEntrancesForMap); se o jogo
-- não souber, usa uma posição aproximada conhecida do Classic (marcada como
-- aproximada na tela). Também abre o buscador de grupos do jogo.
local addonName, ns = ...

local Entrances = {
    cache = nil, -- [nome normalizado] = { mapID, x, y }
}
ns.DungeonEntrances = Entrances

local CONTINENTS = { 1414, 1415 } -- Kalimdor, Reinos do Leste

-- Posições aproximadas (Classic) por nome nos dados. mapID, x, y (0-100).
local APPROX = {
    ["Ragefire Chasm"] = { 1454, 52.0, 49.5 },
    ["Wailing Caverns"] = { 1413, 46.0, 36.5 },
    ["The Deadmines"] = { 1436, 42.5, 72.0 },
    ["Shadowfang Keep"] = { 1421, 44.8, 67.8 },
    ["Blackfathom Deeps"] = { 1440, 14.2, 14.0 },
    ["The Stockades"] = { 1453, 41.0, 58.0 },
    ["Gnomeregan"] = { 1426, 24.3, 39.5 },
    ["Razorfen Kraul"] = { 1413, 42.5, 90.0 },
    ["Scarlet Monastery"] = { 1420, 82.6, 33.5 },
    ["Razorfen Downs"] = { 1413, 48.5, 93.0 },
    ["Uldaman"] = { 1418, 43.0, 12.5 },
    ["Zul'Farrak"] = { 1446, 39.0, 20.5 },
    ["Maraudon"] = { 1443, 29.2, 62.6 },
    ["Sunken Temple"] = { 1435, 69.8, 54.0 },
    ["Blackrock Depths"] = { 1427, 34.8, 85.0 },
    ["Lower Blackrock Spire"] = { 1427, 34.8, 85.0 },
    ["Upper Blackrock Spire"] = { 1427, 34.8, 85.0 },
    ["Dire Maul"] = { 1444, 59.0, 44.5 },
    ["Scholomance"] = { 1422, 69.6, 73.2 },
    ["Stratholme"] = { 1423, 31.0, 15.5 },
}

local function Normalize(name)
    if not name or ns.IsSecret(name) then
        return nil
    end
    return (name:lower():gsub("^the ", ""):gsub("[^%w]", ""))
end
Entrances.Normalize = Normalize

-- Lê do jogo as entradas de todas as zonas dos dois continentes (uma vez).
function Entrances:Scan()
    self.cache = {}
    if not (C_EncounterJournal and C_EncounterJournal.GetDungeonEntrancesForMap and C_Map.GetMapChildrenInfo) then
        return
    end
    local zoneType = Enum and Enum.UIMapType and Enum.UIMapType.Zone or 3
    for _, continent in ipairs(CONTINENTS) do
        for _, child in ipairs(C_Map.GetMapChildrenInfo(continent, zoneType, true) or {}) do
            local ok, list = pcall(C_EncounterJournal.GetDungeonEntrancesForMap, child.mapID)
            for _, entrance in ipairs(ok and list or {}) do
                local key = Normalize(entrance.name)
                if key and entrance.position and not self.cache[key] then
                    local x, y = entrance.position:GetXY()
                    self.cache[key] = { mapID = child.mapID, x = x, y = y }
                end
            end
        end
    end
end

-- Entrada da masmorra: { mapID, x, y (0-1), approx } ou nil.
-- dataName = nome nos dados (inglês); displayName = nome traduzido pelo jogo.
function Entrances:Find(dataName, displayName)
    if not self.cache then
        self:Scan()
    end
    for _, name in ipairs({ displayName, dataName, (dataName or ""):match("^([^:]+)") }) do
        local key = Normalize(name)
        local found = key and self.cache[key]
        if found then
            return { mapID = found.mapID, x = found.x, y = found.y }
        end
    end
    local base = (dataName or ""):match("^([^:]+)") or dataName
    local approx = APPROX[dataName] or APPROX[base]
    if approx then
        return { mapID = approx[1], x = approx[2] / 100, y = approx[3] / 100, approx = true }
    end
end

-- Buscador de grupos do jogo (no Forever, o "estilo Vanilla", carregado sob demanda).
function Entrances.OpenGroupFinder()
    if C_AddOns and C_AddOns.IsAddOnLoaded and not C_AddOns.IsAddOnLoaded("Blizzard_GroupFinder_VanillaStyle") then
        if GroupFinderVanillaStyle_LoadUI then
            GroupFinderVanillaStyle_LoadUI()
        elseif C_AddOns.LoadAddOn then
            pcall(C_AddOns.LoadAddOn, "Blizzard_GroupFinder_VanillaStyle")
        end
    end
    if LFGVanilla_ToggleFrame then
        LFGVanilla_ToggleFrame(2) -- aba "Procurar grupo"
        return true
    elseif PVEFrame_ToggleFrame then
        PVEFrame_ToggleFrame()
        return true
    end
    return false
end
