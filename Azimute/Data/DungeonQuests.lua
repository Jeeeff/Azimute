-- Missões de masmorra: dados registrados por um pacote (AzimuteAPI.RegisterDungeonQuests),
-- ex.: o Azimute_Guides_Forever traz os do Forever Dungeon Quests (MIT).
-- Formato de cada masmorra: { name, levels = { hard, medium, atLevel, easy }, quests = {
--   { name, id (número ou lista), level, faction, giver, location = "Zona, lugar",
--     coords = "49, 50", classOnly, notes, prereqs } } }
local addonName, ns = ...

local DungeonQuests = {
    dungeons = {},
}
ns.DungeonQuests = DungeonQuests

AzimuteAPI.RegisterDungeonQuests = function(list)
    for _, dungeon in ipairs(list) do
        if type(dungeon) == "table" and dungeon.name and dungeon.quests then
            DungeonQuests.dungeons[#DungeonQuests.dungeons + 1] = dungeon
        end
    end
end

-- Nome da zona (em inglês, como nos dados) -> uiMapID, para guiar até quem dá a missão.
local ZONES = {
    ["Durotar"] = 1411, ["Mulgore"] = 1412, ["The Barrens"] = 1413, ["Alterac Mountains"] = 1416,
    ["Arathi Highlands"] = 1417, ["Badlands"] = 1418, ["Blasted Lands"] = 1419,
    ["Tirisfal Glades"] = 1420, ["Silverpine Forest"] = 1421, ["Western Plaguelands"] = 1422,
    ["Eastern Plaguelands"] = 1423, ["Hillsbrad Foothills"] = 1424, ["The Hinterlands"] = 1425,
    ["Dun Morogh"] = 1426, ["Searing Gorge"] = 1427, ["Burning Steppes"] = 1428,
    ["Elwynn Forest"] = 1429, ["Deadwind Pass"] = 1430, ["Duskwood"] = 1431, ["Loch Modan"] = 1432,
    ["Redridge Mountains"] = 1433, ["Stranglethorn Vale"] = 1434, ["Swamp of Sorrows"] = 1435,
    ["Westfall"] = 1436, ["Wetlands"] = 1437, ["Teldrassil"] = 1438, ["Darkshore"] = 1439,
    ["Ashenvale"] = 1440, ["Thousand Needles"] = 1441, ["Stonetalon Mountains"] = 1442,
    ["Desolace"] = 1443, ["Feralas"] = 1444, ["Dustwallow Marsh"] = 1445, ["Tanaris"] = 1446,
    ["Azshara"] = 1447, ["Felwood"] = 1448, ["Un'Goro Crater"] = 1449, ["Moonglade"] = 1450,
    ["Silithus"] = 1451, ["Winterspring"] = 1452, ["Stormwind"] = 1453, ["Stormwind City"] = 1453,
    ["Orgrimmar"] = 1454, ["Ironforge"] = 1455, ["Thunder Bluff"] = 1456, ["Darnassus"] = 1457,
    ["Undercity"] = 1458,
}

-- ID da instância (nome traduzido pelo cliente) de cada masmorra dos dados.
local INSTANCES = {
    ["Ragefire Chasm"] = 389, ["Wailing Caverns"] = 43, ["The Deadmines"] = 36,
    ["Shadowfang Keep"] = 33, ["Blackfathom Deeps"] = 48, ["The Stockades"] = 34,
    ["Gnomeregan"] = 90, ["Razorfen Kraul"] = 47, ["Scarlet Monastery"] = 189,
    ["Razorfen Downs"] = 129, ["Uldaman"] = 70, ["Zul'Farrak"] = 209, ["Maraudon"] = 349,
    ["Sunken Temple"] = 109, ["Blackrock Depths"] = 230, ["Lower Blackrock Spire"] = 229,
    ["Upper Blackrock Spire"] = 229, ["Scholomance"] = 289,
}

-- Código usado nos guias (condição "ifdungeon") para cada masmorra dos dados.
local CODES = {
    ["Ragefire Chasm"] = "RFC", ["Wailing Caverns"] = "WC", ["The Deadmines"] = "DM",
    ["Shadowfang Keep"] = "SFK", ["Blackfathom Deeps"] = "BFD", ["The Stockades"] = "STOCKS",
    ["Gnomeregan"] = "GNOMER", ["Razorfen Kraul"] = "RFK", ["Scarlet Monastery"] = "SM",
    ["Razorfen Downs"] = "RFD", ["Uldaman"] = "ULDA", ["Zul'Farrak"] = "ZF", ["Maraudon"] = "MARA",
    ["Sunken Temple"] = "ST", ["Blackrock Depths"] = "BRD",
}

function DungeonQuests.DisplayName(dungeon)
    local instance = INSTANCES[dungeon.name]
    local name = instance and GetRealZoneText and GetRealZoneText(instance)
    if name and name ~= "" and not ns.IsSecret(name) then
        -- as variações (Dire Maul: East...) mantêm o complemento em inglês
        local suffix = dungeon.name:match(":%s*(.+)$")
        return suffix and (name .. ": " .. suffix) or name
    end
    return dungeon.name
end

function DungeonQuests.Code(dungeon)
    return CODES[dungeon.name]
end

-- Onde pegar: mapID, x, y (0-1), subzona em texto; nil se os dados não têm.
function DungeonQuests.Location(quest)
    local zone, place = (quest.location or ""):match("^([^,]+),?%s*(.*)$")
    local mapID = zone and ZONES[zone]
    local x, y = (quest.coords or ""):match("^(%d+%.?%d*)%s*,%s*(%d+%.?%d*)$")
    x, y = tonumber(x), tonumber(y)
    if mapID and x and y then
        return mapID, x / 100, y / 100, place
    end
    return mapID, nil, nil, place
end

local function IDs(quest)
    if type(quest.id) == "table" then
        return quest.id
    end
    return { quest.id }
end

function DungeonQuests.MainID(quest)
    return IDs(quest)[1]
end

-- Estado da missão: "done", "log" (no diário) ou "missing".
function DungeonQuests.Status(quest)
    for _, id in ipairs(IDs(quest)) do
        if id and C_QuestLog.IsQuestFlaggedCompleted(id) then
            return "done"
        end
    end
    for _, id in ipairs(IDs(quest)) do
        if id and C_QuestLog.IsOnQuest(id) then
            return "log"
        end
    end
    return "missing"
end

-- A missão vale para o personagem (facção e classe)?
function DungeonQuests.Fits(quest)
    local faction = UnitFactionGroup("player")
    if quest.faction and quest.faction ~= "Neutral" and quest.faction ~= faction then
        return false
    end
    if quest.classOnly and quest.classOnly ~= select(2, UnitClass("player")) then
        return false
    end
    return true
end

-- Masmorras com pelo menos uma missão para o personagem, pela ordem de nível.
function DungeonQuests:ForPlayer()
    local list = {}
    for _, dungeon in ipairs(self.dungeons) do
        local quests = {}
        for _, quest in ipairs(dungeon.quests) do
            if self.Fits(quest) then
                quests[#quests + 1] = quest
            end
        end
        if #quests > 0 then
            list[#list + 1] = { dungeon = dungeon, quests = quests }
        end
    end
    return list
end
