-- Stubs mínimos da API do WoW para testar a lógica do Azimute fora do jogo.
local S = { timers = {}, tickers = {}, frames = {}, printed = {} }
_G.STUB = S

S.quest = { onQuest = {}, completed = {}, ready = {}, objectives = {}, titles = {} }
S.player = { map = 1429, x = 0.50, y = 0.50, facing = 0, level = 1 }

function print(...)
    local parts = {}
    for i = 1, select("#", ...) do parts[#parts + 1] = tostring((select(i, ...))) end
    local line = table.concat(parts, " ")
    S.printed[#S.printed + 1] = line
    io.write("  [chat] ", line, "\n")
end

function GetBuildInfo() return "1.60.1", "70009", "Sep 20 2026", 16001 end
function GetLocale() return "ptBR" end
function strtrim(s) return (s:match("^%s*(.-)%s*$")) end
function strsplit(sep, s)
    local parts, start = {}, 1
    while true do
        local i = s:find(sep, start, true)
        if not i then parts[#parts + 1] = s:sub(start); break end
        parts[#parts + 1] = s:sub(start, i - 1)
        start = i + 1
    end
    return unpack(parts)
end
function CopyTable(t)
    local c = {}
    for k, v in pairs(t) do c[k] = type(v) == "table" and CopyTable(v) or v end
    return c
end

-- Objeto "coringa": qualquer método existe e devolve outro coringa.
local function Mock(kind)
    local obj = { _kind = kind, _scripts = {}, _events = {}, _shown = true }
    return setmetatable(obj, { __index = function(t, k)
        return function() return Mock(k) end
    end })
end

local FrameMethods = {}
function FrameMethods:SetText(text) self._text = text end
function FrameMethods:GetText() return self._text end
function FrameMethods:GetStringHeight() return 14 end
function FrameMethods:GetStringWidth() return 100 end
-- Como no jogo: OnShow/OnHide disparam quando a visibilidade muda.
function FrameMethods:SetShown(v)
    local was = self._shown
    self._shown = v and true or false
    if was ~= self._shown then
        local script = self._scripts[self._shown and "OnShow" or "OnHide"]
        if script then script(self) end
    end
end
function FrameMethods:Show() self:SetShown(true) end
function FrameMethods:Hide() self:SetShown(false) end
function FrameMethods:IsShown() return self._shown end
function FrameMethods:GetPoint() return "CENTER", nil, "CENTER", 0, 0 end
function FrameMethods:SetScript(name, fn) self._scripts[name] = fn end
function FrameMethods:RegisterEvent(e) self._events[e] = true end
function FrameMethods:CreateFontString() return S.NewFrame("FontString") end
function FrameMethods:CreateTexture() return S.NewFrame("Texture") end
function FrameMethods:SetRotation(r) self._rotation = r end

function S.NewFrame(kind)
    local obj = { _kind = kind, _scripts = {}, _events = {}, _shown = true }
    setmetatable(obj, { __index = function(t, k)
        if FrameMethods[k] then return FrameMethods[k] end
        return function() return Mock(k) end
    end })
    S.frames[#S.frames + 1] = obj
    return obj
end

function CreateFrame(kind, name)
    local f = S.NewFrame(kind)
    if name then _G[name] = f end
    return f
end
UIParent = S.NewFrame("UIParent")
SlashCmdList = {}

function S.FireEvent(event, ...)
    for _, f in ipairs(S.frames) do
        if f._events[event] and f._scripts.OnEvent then
            f._scripts.OnEvent(f, event, ...)
        end
    end
end

C_Timer = {
    After = function(_, fn) S.timers[#S.timers + 1] = fn end,
    NewTicker = function(_, fn)
        local t = { fn = fn, cancelled = false }
        function t:Cancel() self.cancelled = true end
        S.tickers[#S.tickers + 1] = t
        return t
    end,
}
function S.RunTimers()
    for _ = 1, 50 do
        if #S.timers == 0 then return end
        local list = S.timers
        S.timers = {}
        for _, fn in ipairs(list) do fn() end
    end
    error("timers em loop")
end
function S.Tick()
    for _, t in ipairs(S.tickers) do
        if not t.cancelled then t.fn() end
    end
    S.RunTimers()
end

C_QuestLog = {
    IsOnQuest = function(q) return S.quest.onQuest[q] == true end,
    IsQuestFlaggedCompleted = function(q) return S.quest.completed[q] == true end,
    ReadyForTurnIn = function(q) return S.quest.ready[q] end,
    GetQuestObjectives = function(q) return S.quest.objectives[q] end,
    GetTitleForQuestID = function(q) return S.quest.titles[q] end,
    RequestLoadQuestByID = function(q) S.requested = (S.requested or 0) + 1 end,
}
C_TooltipInfo = {
    GetHyperlink = function(link)
        local id = link:match("Creature%-0%-0%-0%-0%-(%d+)%-0")
        return { lines = { { leftText = "NPC_" .. id } } }
    end,
}
function CreateVector2D(x, y) return { x = x, y = y } end
C_Map = {
    GetBestMapForUnit = function() return S.player.map end,
    GetPlayerMapPosition = function()
        return { GetXY = function() return S.player.x, S.player.y end }
    end,
    -- Eixos como no WoW: x do mundo = norte, y do mundo = oeste. Mapa 1000x1000 jardas.
    -- Durotar (1411) fica em Kalimdor (continente 1); o resto nos Reinos do Leste (0).
    GetWorldPosFromMapPos = function(m, v) return m == 1411 and 1 or 0, { x = -v.y * 1000, y = -v.x * 1000 } end,
    GetMapInfo = function(id) return { name = "Mapa" .. id } end,
    CanSetUserWaypointOnMap = function() return true end,
    SetUserWaypoint = function(p) S.pin = p end,
    ClearUserWaypoint = function() S.pin = nil end,
}
UiMapPoint = { CreateFromCoordinates = function(m, x, y) return { m = m, x = x, y = y } end }
C_AddOns = { GetAddOnMetadata = function() return "0.2.0" end }

function GetPlayerFacing() return S.player.facing end
function UnitOnTaxi() return false end
function UnitLevel() return S.player.level end
S.player.faction, S.player.race = "Alliance", "Human"
function UnitFactionGroup() return S.player.faction end
function UnitClass() return "Guerreiro", "WARRIOR" end
function UnitRace() return "Raça", S.player.race end
function InCombatLockdown() return false end

S.npcGUID = nil
S.time = 1000
function UnitGUID(unit) if unit == "npc" then return S.npcGUID end end
function UnitName() return "Jeeff" end
function GetTime() return S.time end
function date() return "202609281200" end
function time() return S.clock or 1790000000 end
function wipe(t) for k in pairs(t) do t[k] = nil end return t end
UISpecialFrames = {}
ChatFontNormal = {}
S.questLog = {}
C_QuestLog.GetNumQuestLogEntries = function() return #S.questLog end
C_QuestLog.GetInfo = function(i) return { questID = S.questLog[i], isHeader = false } end
-- Codificação reversível falsa (a real é Deflate + Base64 no cliente).
C_EncodingUtil = {
    CompressString = function(s) return "c:" .. s end,
    DecompressString = function(s) assert(s:sub(1, 2) == "c:", "corrompido"); return s:sub(3) end,
    EncodeBase64 = function(s) return s:reverse() end,
    DecodeBase64 = function(s) return s:reverse() end,
}

S.superTracked = 0
S.questsOnMap = {}
C_SuperTrack = { GetSuperTrackedQuestID = function() return S.superTracked end }
function hooksecurefunc() end
function GetQuestUiMapID(q) return 0 end
C_QuestLog.GetQuestsOnMap = function(m) return S.questsOnMap[m] end
C_QuestLog.GetNextWaypoint = function(q) return nil end

-- Mapa-múndi falso: canvas 1000x667, mapa exibido = S.displayMap.
FrameMethods.GetWidth = function() return 1000 end
FrameMethods.GetHeight = function() return 667 end
FrameMethods.GetFrameLevel = function(self) return rawget(self, "_level") or 1 end
FrameMethods.SetFrameLevel = function(self, l) self._level = l end
FrameMethods.GetParent = function(self) return S.canvas end
FrameMethods.GetChildren = function(self)
    if self == S.canvas then return S.mapTiles, S.holderGuess end
end
FrameMethods.GetFrameStrata = function() return "HIGH" end
FrameMethods.CreateLine = function() return S.NewFrame("Line") end
FrameMethods.SetStartPoint = function(self, p, rel, x, y) self._start = { x, y } end
FrameMethods.SetEndPoint = function(self, p, rel, x, y) self._end = { x, y } end
S.displayMap = 1421
C_Map.GetMapPosFromWorldPos = function(c, w, m)
    return m, { GetXY = function() return -w.y / 1000, -w.x / 1000 end }
end
WorldMapFrame = S.NewFrame("WorldMapFrame")
S.canvas = S.NewFrame("Canvas")
WorldMapFrame.GetCanvas = function() return S.canvas end
WorldMapFrame.GetMapID = function() return S.displayMap end
C_Map.GetPlayerMapPosition = function(m)
    if m ~= S.player.map and m ~= S.displayMap then return nil end
    return { GetXY = function() return S.player.x, S.player.y end }
end

FrameMethods.GetChecked = function(self) return rawget(self, "_checked") or false end
FrameMethods.SetChecked = function(self, v) self._checked = v end
GameTooltip = S.NewFrame("GameTooltip")
S.items, S.spells = {}, {}
C_Item = C_Item or {}
C_Item.GetItemCount = function(id) return S.items[id] or 0 end
C_Item.GetItemNameByID = function(id) return "Item" .. id end
function IsPlayerSpell(id) return S.spells[id] == true end
C_Spell = { GetSpellName = function(id) return "Feitiço" .. id end }

-- Diálogo com NPC / telas de missão
S.npc = { questID = 0, choices = 0, completable = false, active = {}, available = {}, shift = false }
S.actions = {}
local function act(name, arg) S.actions[#S.actions + 1] = name .. ":" .. tostring(arg) end
function GetQuestID() return S.npc.questID end
function AcceptQuest() act("accept", S.npc.questID) end
function QuestGetAutoAccept() return false end
function IsQuestCompletable() return S.npc.completable end
function CompleteQuest() act("complete", S.npc.questID) end
function GetNumQuestChoices() return S.npc.choices end
function GetQuestReward(i) act("reward", i) end
function IsShiftKeyDown() return S.npc.shift end
C_GossipInfo = {
    GetActiveQuests = function() return S.npc.active end,
    GetAvailableQuests = function() return S.npc.available end,
    SelectActiveQuest = function(q) act("selectActive", q) end,
    SelectAvailableQuest = function(q) act("selectAvailable", q) end,
}

-- Settings API e minimapa falsos
S.settings = {}
Settings = {
    VarType = { Boolean = "boolean" },
    RegisterVerticalLayoutCategory = function(name)
        local cat = { name = name, GetID = function() return 77 end }
        return cat, { AddInitializer = function() end }
    end,
    RegisterAddOnSetting = function(cat, variable, key, tbl, varType, name, default)
        local setting = { key = key, tbl = tbl, name = name, default = default }
        function setting:SetValueChangedCallback(cb) self.cb = cb end
        function setting:SetValue(v) self.tbl[self.key] = v; if self.cb then self.cb(self, v) end end
        S.settings[key] = setting
        return setting
    end,
    CreateCheckbox = function() end,
    RegisterAddOnCategory = function(cat) S.settingsCategory = cat end,
    OpenToCategory = function(id) S.openedCategory = id end,
}
function CreateSettingsListSectionHeaderInitializer(text) return { text = text } end
Minimap = S.NewFrame("Minimap")
FrameMethods.GetCenter = function() return 500, 500 end
FrameMethods.GetEffectiveScale = function() return 1 end

FrameMethods.SetAttribute = function(self, k, v) local a = rawget(self, "_attr") or {}; rawset(self, "_attr", a); a[k] = v end
FrameMethods.GetAttribute = function(self, k) local a = rawget(self, "_attr"); return a and a[k] end
S.combat = false
function InCombatLockdown() return S.combat end
S.specialItems = {}
C_QuestLog.GetLogIndexForQuestID = function(q) return S.specialItems[q] and q or nil end
function GetQuestLogSpecialItemInfo(index) local id = S.specialItems[index]; return id and ("|cffffffff|Hitem:" .. id .. "::::|h[Item]|h|r") end
C_Item.GetItemIconByID = function(id) return 1000 + id end
C_Container = { GetItemCooldown = function() return 0, 0, 1 end }

-- Itens: S.itemData[link] = { equipLoc, minLevel, classID, subclassID, stats }
S.itemData, S.equipped, S.questChoices = {}, {}, {}
C_Item.GetItemStats = function(link) local d = S.itemData[link]; return d and d.stats end
C_Item.GetItemInfo = function(link)
    local d = S.itemData[link]
    if not d then return nil end
    return "Item", link, 2, 20, d.minLevel or 1, "Armor", "Cloth", 1, d.equipLoc, 0, 100, d.classID or 4, d.subclassID or 1
end
function GetInventoryItemLink(unit, slot) return S.equipped[slot] end
function GetQuestItemLink(kind, i) return S.questChoices[i] end

-- Mestres de voo: S.taxi = { { nodeID, map, x, y, slot, state } }
S.taxi, S.tookTaxi = {}, nil
C_TaxiMap = {
    GetTaxiNodesForMap = function(mapID)
        local out = {}
        for _, n in ipairs(S.taxi) do
            if n.map == mapID then
                out[#out + 1] = { nodeID = n.nodeID, name = n.name, position = { GetXY = function() return n.x, n.y end } }
            end
        end
        return out
    end,
    GetAllTaxiNodes = function()
        local out = {}
        for _, n in ipairs(S.taxi) do out[#out + 1] = { nodeID = n.nodeID, name = n.name, slotIndex = n.slot, state = n.state or 1 } end
        return out
    end,
}
function GetTaxiMapID() return 1415 end
function TakeTaxiNode(slot) S.tookTaxi = slot end

-- Talentos (Forever: C_Traits)
S.talentGroups = {}
C_ClassTalents = { GetActiveConfigID = function() return 5 end }
C_Traits = {
    GetConfigInfo = function() return { treeIDs = { 100 } } end,
    GetGroupDisplayInfoByTreeID = function() return {
        { groupID = 13, orderIndex = 3, displayName = "Destruição" },
        { groupID = 11, orderIndex = 1, displayName = "Suplício" },
        { groupID = 12, orderIndex = 2, displayName = "Demonologia" },
    } end,
    GetGroupCurrencyInfo = function() return S.talentGroups end,
}
-- Pedra de regresso e profissões
S.bind = "Brill"
function GetBindLocation() return S.bind end
S.herbSkill = 1
function GetProfessions() return 1, nil end
function GetProfessionInfo(i) return "Herborismo", 0, S.herbSkill, 300, 0, 0, 182 end

function GetRealZoneText(id) return id and ("Instancia" .. id) or "Zona Atual" end

S.money = 0
function GetMoney() return S.money end
function GetCoinTextureString(c) return c .. "c" end
S.known = {}
function IsSpellKnown(id) return S.known[id] == true end
local isPlayerSpell = IsPlayerSpell
function IsPlayerSpell(id) return S.known[id] == true or (S.spells and S.spells[id] == true) end

-- Vendedor (vender lixo / reparar)
S.merchant = { canRepair = false, repairCost = 0, junkValue = 0, repaired = false, sold = false }
function CanMerchantRepair() return S.merchant.canRepair end
function GetRepairAllCost() return S.merchant.repairCost, S.merchant.canRepair and S.merchant.repairCost > 0 end
function RepairAllItems() S.merchant.repaired = true; S.money = S.money - S.merchant.repairCost end
C_MerchantFrame = {
    SellAllJunkItems = function() S.merchant.sold = true; S.money = S.money + S.merchant.junkValue end,
    GetNumJunkItems = function() return S.merchant.junkValue > 0 and 1 or 0 end,
}

return S
