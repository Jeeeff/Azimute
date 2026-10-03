-- Núcleo das bolsas: dados salvos, quais bolsas entram em cada janela, troca
-- das bolsas do jogo pela janela unificada e eventos.
local addonName, B = ...
local L = B.L

B.DEFAULTS = {
    replaceBags = true,
    unifiedBank = true,
    itemLevel = true,
    showKeyring = true,
    columns = 10,
    bankColumns = 14,
    scale = 1,
    points = {
        bags = { "BOTTOMRIGHT", "BOTTOMRIGHT", -60, 110 },
        bank = { "TOPLEFT", "TOPLEFT", 40, -110 },
    },
}

function B.Print(msg)
    print("|cff33ff99" .. L["TITLE"] .. "|r " .. msg)
end

------------------------------------------------------------------------
-- Bolsas de cada janela (Enum.BagIndex do Forever: chaveiro = -1,
-- mochila = 0, bolsas 1-4, bolsa de reagentes = 5, abas do banco 6-14)
------------------------------------------------------------------------

local BAG = (Enum and Enum.BagIndex) or {}
local BACKPACK = BAG.Backpack or 0
local KEYRING = BAG.Keyring or -1
local REAGENT = BAG.ReagentBag or 5

local function NumSlots(bag)
    local ok, slots = pcall(C_Container.GetContainerNumSlots, bag)
    return ok and slots or 0
end
B.NumSlots = NumSlots

function B.InventoryBags()
    local bags = {}
    for bag = BACKPACK, BACKPACK + 4 do
        if NumSlots(bag) > 0 then
            bags[#bags + 1] = bag
        end
    end
    if NumSlots(REAGENT) > 0 then
        bags[#bags + 1] = REAGENT
    end
    if B.db.showKeyring and NumSlots(KEYRING) > 0 then
        bags[#bags + 1] = KEYRING
    end
    return bags
end

-- Banco do Forever: as "abas" compradas funcionam como as bolsas do banco
-- clássico. Entra toda aba de personagem que tiver espaços.
function B.BankBags()
    local bags = {}
    local first = BAG.CharacterBankTab_1 or 6
    local last = BAG.CharacterBankTab_9 or (first + 8)
    for bag = first, last do
        if NumSlots(bag) > 0 then
            bags[#bags + 1] = bag
        end
    end
    return bags
end

-- Espaços livres nas bolsas comuns (sem chaveiro nem bolsas especiais).
function B.FreeSlots(bags)
    local free = 0
    for _, bag in ipairs(bags) do
        if bag ~= KEYRING then
            local ok, count, family = pcall(C_Container.GetContainerNumFreeSlots, bag)
            if ok and count and (family == nil or family == 0) then
                free = free + count
            end
        end
    end
    return free
end

function B.Sort(kind)
    if InCombatLockdown() then
        B.Print(L["SORT_COMBAT"])
        return
    end
    if kind == "bank" then
        if C_Container.SortBankBags then
            C_Container.SortBankBags()
        elseif C_Container.SortBank and Enum and Enum.BankType then
            C_Container.SortBank(Enum.BankType.Character)
        end
    elseif C_Container.SortBags then
        C_Container.SortBags()
    end
end

------------------------------------------------------------------------
-- Mensagens internas e eventos
------------------------------------------------------------------------

local callbacks = {}
function B:On(message, handler)
    callbacks[message] = callbacks[message] or {}
    table.insert(callbacks[message], handler)
end
function B:Fire(message, ...)
    for _, handler in ipairs(callbacks[message] or {}) do
        handler(...)
    end
end

local eventFrame = CreateFrame("Frame")
local handlers = {}
function B:RegisterEvent(event, handler)
    if C_EventUtils and C_EventUtils.IsEventValid and not C_EventUtils.IsEventValid(event) then
        return false
    end
    if not pcall(eventFrame.RegisterEvent, eventFrame, event) then
        return false
    end
    handlers[event] = handlers[event] or {}
    table.insert(handlers[event], handler)
    return true
end
eventFrame:SetScript("OnEvent", function(_, event, ...)
    for _, handler in ipairs(handlers[event] or {}) do
        handler(...)
    end
end)

local function CopyDefaults(db, defaults)
    for key, value in pairs(defaults) do
        if db[key] == nil then
            db[key] = type(value) == "table" and CopyTable(value) or value
        elseif type(value) == "table" and type(db[key]) == "table" then
            CopyDefaults(db[key], value)
        end
    end
    return db
end

B:RegisterEvent("ADDON_LOADED", function(name)
    if name ~= addonName then
        return
    end
    AzimuteBagsDB = CopyDefaults(AzimuteBagsDB or {}, B.DEFAULTS)
    B.db = AzimuteBagsDB
    B:Fire("INIT")
end)

B:RegisterEvent("PLAYER_LOGIN", function()
    B:Fire("LOGIN")
    if AzimuteAPI and AzimuteAPI.RegisterModule then
        pcall(AzimuteAPI.RegisterModule, {
            name = L["TITLE"],
            toggle = function() B.bags:Toggle() end,
            options = function() B.Options:Open() end,
        })
    end
end)

-- Atualizações em rajada (BAG_UPDATE de várias bolsas) viram uma só.
local pending = {}
local function Request(kind)
    if pending[kind] then
        return
    end
    pending[kind] = true
    C_Timer.After(0.05, function()
        pending[kind] = nil
        B:Fire(kind)
    end)
end
B.Request = Request

local function Items()
    Request("ITEMS")
end
B:RegisterEvent("BAG_UPDATE_DELAYED", Items)
B:RegisterEvent("ITEM_LOCK_CHANGED", Items)
B:RegisterEvent("BAG_NEW_ITEMS_UPDATED", Items)
B:RegisterEvent("INVENTORY_SEARCH_UPDATE", Items)
B:RegisterEvent("QUEST_ACCEPTED", Items)
B:RegisterEvent("QUEST_REMOVED", Items)
B:RegisterEvent("MERCHANT_SHOW", Items)
B:RegisterEvent("MERCHANT_CLOSED", Items)
B:RegisterEvent("PLAYERBANKSLOTS_CHANGED", Items)
B:RegisterEvent("BAG_UPDATE_COOLDOWN", function()
    Request("COOLDOWNS")
end)
B:RegisterEvent("BAG_CONTAINER_UPDATE", function()
    Request("LAYOUT")
end)
B:RegisterEvent("BANK_TABS_CHANGED", function()
    Request("LAYOUT")
end)
-- Equipamento ou talentos mudaram: a seta de melhoria pode mudar.
B:RegisterEvent("PLAYER_EQUIPMENT_CHANGED", Items)
B:RegisterEvent("TRAIT_CONFIG_UPDATED", Items)
B:RegisterEvent("PLAYER_TALENT_UPDATE", Items)
B:RegisterEvent("PLAYER_MONEY", function()
    B:Fire("MONEY")
end)

------------------------------------------------------------------------
-- Troca das bolsas do jogo pela janela unificada.
--
-- Não substituímos as funções da Blizzard (isso espalharia "taint"); só
-- observamos (hooksecurefunc). Abrir/fechar/alternar pedem um estado e, no
-- frame seguinte, escondemos as bolsas do jogo e mostramos/escondemos a
-- nossa. ToggleAllBags chama OpenAllBags/CloseAllBags por dentro: o pedido de
-- "alternar" vale mais que os de abrir/fechar do mesmo frame.
------------------------------------------------------------------------

local request -- nil, "open", "close" ou "toggle"
local function Want(kind)
    if not (B.db and B.db.replaceBags) then
        return
    end
    if request == "toggle" then
        return
    end
    if request == nil then
        C_Timer.After(0, function()
            local wanted = request
            request = nil
            B:ApplyRequest(wanted)
        end)
    end
    request = kind
end

local function HideBlizzardBags()
    if ContainerFrameCombinedBags and ContainerFrameCombinedBags:IsShown() then
        ContainerFrameCombinedBags:Hide()
    end
    for i = 1, (NUM_CONTAINER_FRAMES or 13) do
        local frame = _G["ContainerFrame" .. i]
        if frame and frame:IsShown() then
            frame:Hide()
        end
    end
end
B.HideBlizzardBags = HideBlizzardBags

function B:ApplyRequest(wanted)
    local bags = self.bags
    if not bags then
        return
    end
    HideBlizzardBags()
    if wanted == "toggle" then
        bags:SetShown(not bags:IsShown())
    elseif wanted == "open" then
        bags:SetShown(true)
    elseif wanted == "close" then
        bags:SetShown(false)
    end
end

local HOOKS = {
    ToggleAllBags = "toggle", ToggleBackpack = "toggle", ToggleBag = "toggle",
    OpenAllBags = "open", OpenBackpack = "open", OpenBag = "open",
    CloseAllBags = "close", CloseBackpack = "close",
}
B:On("LOGIN", function()
    for name, kind in pairs(HOOKS) do
        if type(_G[name]) == "function" then
            hooksecurefunc(name, function()
                Want(kind)
            end)
        end
    end
end)

B:RegisterEvent("BANKFRAME_OPENED", function()
    if B.db.unifiedBank and B.bank then
        B.bank:SetShown(true)
        B.bags:SetShown(true)
    end
end)
B:RegisterEvent("BANKFRAME_CLOSED", function()
    if B.bank then
        B.bank:SetShown(false)
    end
end)

------------------------------------------------------------------------
-- Comando /azb
------------------------------------------------------------------------

SLASH_AZIMUTEBAGS1 = "/azb"
SLASH_AZIMUTEBAGS2 = "/azbolsas"
SlashCmdList.AZIMUTEBAGS = function(input)
    local command = strtrim(input or ""):lower()
    if command == "" then
        B.bags:Toggle()
    elseif command == "sort" or command == "organizar" then
        B.Sort("bags")
    elseif command == "options" or command == "opcoes" or command == "opções" then
        B.Options:Open()
    else
        for _, line in ipairs(L["HELP"]) do
            B.Print(line)
        end
    end
end
