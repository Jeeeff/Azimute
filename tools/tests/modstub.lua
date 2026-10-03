-- Stubs extras para os módulos (medidor e bolsas), por cima do wowstub.lua.
local S = STUB

------------------------------------------------------------------------
-- Valores secretos falsos: guardar e passar adiante pode; conta, comparação
-- e ordenação dão erro (como no jogo). Concatenar devolve outro secreto.
------------------------------------------------------------------------
local SecretMeta = {}
local function Secret(value)
    return setmetatable({ _secret = value }, SecretMeta)
end
local function Forbidden()
    error("operação proibida com valor secreto", 2)
end
SecretMeta.__add, SecretMeta.__sub, SecretMeta.__mul, SecretMeta.__div = Forbidden, Forbidden, Forbidden, Forbidden
SecretMeta.__lt, SecretMeta.__le, SecretMeta.__unm, SecretMeta.__len = Forbidden, Forbidden, Forbidden, Forbidden
SecretMeta.__index = function() Forbidden() end
SecretMeta.__concat = function(a, b)
    local function raw(v) return type(v) == "table" and getmetatable(v) == SecretMeta and tostring(v._secret) or tostring(v) end
    return Secret(raw(a) .. raw(b))
end
SecretMeta.__tostring = function(v) return "<secreto " .. tostring(v._secret) .. ">" end
S.Secret = Secret
function issecretvalue(v) return type(v) == "table" and getmetatable(v) == SecretMeta end

function AbbreviateNumbers(v)
    if issecretvalue(v) then return Secret("abbr") end
    if v >= 1000 then return ("%.1fK"):format(v / 1000) end
    return tostring(math.floor(v + 0.5))
end
C_StringUtil = { AbbreviateNumbers = AbbreviateNumbers }

-- Widgets: SetText/SetValue aceitam secretos (o wowstub já guarda _text).
S.statusbars = {}

------------------------------------------------------------------------
-- C_DamageMeter falso
------------------------------------------------------------------------
Enum = Enum or {}
Enum.DamageMeterType = { DamageDone = 0, Dps = 1, HealingDone = 2, Hps = 3, Absorbs = 4, Interrupts = 5,
    Dispels = 6, DamageTaken = 7, AvoidableDamageTaken = 8, Deaths = 9, EnemyDamageTaken = 10 }
Enum.DamageMeterSessionType = { Overall = 0, Current = 1, Expired = 2 }

S.dm = { available = true, sessions = {}, current = nil, overall = nil, calls = {}, resets = 0, secret = false }
local function MaybeSecret(session)
    if not session or not S.dm.secret then return session end
    local copy = { maxAmount = Secret(session.maxAmount), totalAmount = Secret(session.totalAmount), combatSources = {} }
    for i, src in ipairs(session.combatSources) do
        copy.combatSources[i] = { name = Secret(src.name), sourceGUID = Secret(src.sourceGUID), classFilename = src.classFilename,
            specIconID = src.specIconID, totalAmount = Secret(src.totalAmount), amountPerSecond = Secret(src.amountPerSecond),
            isLocalPlayer = src.isLocalPlayer }
    end
    return copy
end
C_DamageMeter = {
    IsDamageMeterAvailable = function() return S.dm.available, S.dm.available and "" or "nível baixo" end,
    GetCombatSessionFromType = function(sessionType, meterType)
        S.dm.calls[#S.dm.calls + 1] = "type:" .. sessionType .. ":" .. meterType
        return MaybeSecret(sessionType == 0 and S.dm.overall or S.dm.current)
    end,
    GetCombatSessionFromID = function(id, meterType)
        S.dm.calls[#S.dm.calls + 1] = "id:" .. id .. ":" .. meterType
        return MaybeSecret(S.dm.byID and S.dm.byID[id])
    end,
    GetAvailableCombatSessions = function() return S.dm.sessions end,
    GetCombatSessionSourceFromType = function(sessionType, meterType, guid)
        if issecretvalue(guid) then error("GUID secreto vindo de addon") end
        return S.dm.breakdown and S.dm.breakdown[guid]
    end,
    GetCombatSessionSourceFromID = function(id, meterType, guid)
        if issecretvalue(guid) then error("GUID secreto vindo de addon") end
        return S.dm.breakdown and S.dm.breakdown[guid]
    end,
    ResetAllCombatSessions = function() S.dm.resets = S.dm.resets + 1 end,
}

S.chat = {}
C_ChatInfo = { SendChatMessage = function(msg, channel) S.chat[#S.chat + 1] = channel .. ":" .. msg end }
S.group = false
function IsInGroup() return S.group end
function IsInRaid() return false end
function IsInInstance() return S.instance or false end
C_ClassColor = { GetClassColor = function(class)
    return { GetRGB = function() return 1, 0, 0 end }
end }
C_Spell.GetSpellTexture = function(id) return 100 + (type(id) == "number" and id or 0) end
C_Spell.GetSpellName = C_Spell.GetSpellName or function(id) return "Feitiço" .. tostring(id) end

-- MenuUtil: grava o menu montado para o teste inspecionar.
S.menu = nil
local function MenuNode()
    local node = { items = {} }
    local function add(kind, label, a, b)
        local child = MenuNode()
        child.kind, child.label, child.isSelected, child.onSelect = kind, label, a, b
        if kind == "button" then child.onSelect = a end
        table.insert(node.items, child)
        return child
    end
    function node:CreateTitle(label) return add("title", label) end
    function node:CreateDivider() return add("divider") end
    function node:CreateButton(label, onClick) return add("button", label, onClick) end
    function node:CreateRadio(label, isSelected, onSelect) return add("radio", label, isSelected, onSelect) end
    function node:CreateCheckbox(label, isSelected, onSelect) return add("checkbox", label, isSelected, onSelect) end
    return node
end
MenuUtil = { CreateContextMenu = function(owner, builder)
    local root = MenuNode()
    builder(owner, root)
    S.menu = root
end }
function S.MenuFind(node, label)
    for _, item in ipairs(node.items) do
        if item.label == label then return item end
    end
end

function strtrim(s) return (s:match("^%s*(.-)%s*$")) end

------------------------------------------------------------------------
-- Bolsas: C_Container falso e as funções de bolsa da Blizzard
------------------------------------------------------------------------
function hooksecurefunc(a, b, c)
    local tbl, name, fn = _G, a, b
    if type(a) == "table" then tbl, name, fn = a, b, c end
    local orig = tbl[name]
    if type(orig) ~= "function" then return end
    tbl[name] = function(...)
        local r = { orig(...) }
        fn(...)
        return unpack(r)
    end
end

Enum.BagIndex = { Keyring = -1, Backpack = 0, Bag_1 = 1, Bag_2 = 2, Bag_3 = 3, Bag_4 = 4, ReagentBag = 5,
    CharacterBankTab_1 = 6, CharacterBankTab_9 = 14 }
S.bagSlots = { [0] = 16, [1] = 6, [-1] = 4 }
S.bagItems = {}
S.search = ""
S.sorted = 0
C_Container = C_Container or {}
C_Container.GetContainerNumSlots = function(bag) return S.bagSlots[bag] or 0 end
C_Container.GetContainerItemInfo = function(bag, slot)
    local item = S.bagItems[bag] and S.bagItems[bag][slot]
    if not item then return nil end
    local filtered = S.search ~= "" and not item.itemName:lower():find(S.search:lower(), 1, true)
    return { iconFileID = item.icon or 1, stackCount = item.count or 1, quality = item.quality or 1, hyperlink = item.link,
        itemName = item.itemName, itemID = item.id, isFiltered = filtered, isLocked = false }
end
C_Container.GetContainerNumFreeSlots = function(bag)
    local used = 0
    for _ in pairs(S.bagItems[bag] or {}) do used = used + 1 end
    return (S.bagSlots[bag] or 0) - used, 0
end
C_Container.GetContainerItemQuestInfo = function() return { isQuestItem = false, isActive = false } end
C_Container.HasContainerItem = function(bag, slot) return S.bagItems[bag] and S.bagItems[bag][slot] ~= nil end
C_Container.SortBags = function() S.sorted = S.sorted + 1 end
C_Container.SortBankBags = function() S.sorted = S.sorted + 10 end
C_Container.SetItemSearch = function(text) S.search = text end
C_Item.GetItemInfoInstant = function(link)
    local d = S.itemData[link]
    return 1, "x", "y", d and d.equipLoc or "", 1, d and d.classID or 0, 0
end
C_Item.GetDetailedItemLevelInfo = function(link) local d = S.itemData[link]; return d and d.ilvl end
ITEM_QUALITY_COLORS = { [3] = { hex = "|cff0070dd" } }
-- Botões de item guardam a transparência (para conferir a busca).
local createFrame = CreateFrame
function CreateFrame(kind, ...)
    local frame = createFrame(kind, ...)
    if kind == "ItemButton" then
        rawset(frame, "SetAlpha", function(self, alpha) self._alpha = alpha end)
        -- o modelo do jogo tem SetMatchesSearch (apaga o item que não bate)
        rawset(frame, "SetMatchesSearch", function(self, matches) self._matches = matches end)
    end
    return frame
end

-- Bolsas da Blizzard: ToggleAllBags abre/fecha chamando OpenAllBags/CloseAllBags.
ContainerFrameCombinedBags = S.NewFrame("ContainerFrameCombinedBags")
ContainerFrameCombinedBags._shown = false
function OpenAllBags() ContainerFrameCombinedBags:Show() end
function CloseAllBags() ContainerFrameCombinedBags:Hide() end
function ToggleAllBags()
    if ContainerFrameCombinedBags:IsShown() then CloseAllBags() else OpenAllBags() end
end
function ToggleBackpack() ToggleAllBags() end
function OpenBackpack() OpenAllBags() end
function CloseBackpack() CloseAllBags() end
function GetMoney() return 123456 end
