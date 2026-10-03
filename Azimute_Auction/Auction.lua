-- Leilão: varredura completa (C_AuctionHouse.ReplicateItems, liberada pelo jogo
-- a cada 15 min), menor preço por unidade de cada item, preço na dica e valor
-- das bolsas. Os preços ficam por reino e facção.
local addonName, A = ...
local L = A.L

local SCAN_COOLDOWN = 15 * 60
local CHUNK = 2000 -- leilões processados por frame (não travar o jogo)

A.DEFAULTS = { tooltip = true, vendorHint = true }

local function IsSecret(value)
    return type(issecretvalue) == "function" and issecretvalue(value) and true or false
end

function A.Print(msg)
    print("|cff33ff99" .. L["TITLE"] .. "|r " .. msg)
end

function A.Money(copper)
    copper = math.floor(copper + 0.5)
    local coins = (C_CurrencyInfo and C_CurrencyInfo.GetCoinTextureString) or GetCoinTextureString or GetMoneyString
    if coins then
        return coins(copper)
    end
    return ("%dg %ds %dc"):format(math.floor(copper / 10000), math.floor(copper / 100) % 100, copper % 100)
end

function A.Age(seconds)
    if seconds >= 2 * 86400 then
        return L["AGE_DAYS"]:format(math.floor(seconds / 86400))
    elseif seconds >= 3600 then
        return L["AGE_HOURS"]:format(math.floor(seconds / 3600))
    end
    return L["AGE_MIN"]:format(math.max(1, math.floor(seconds / 60)))
end

-- Preços deste reino/facção: { prices = { [itemID] = cobre por unidade }, time, count }
function A:Realm()
    local key = (GetRealmName and GetRealmName() or "?") .. "-" .. (UnitFactionGroup("player") or "?")
    self.db.realms[key] = self.db.realms[key] or { prices = {} }
    return self.db.realms[key]
end

function A:Price(itemID)
    local realm = self:Realm()
    return itemID and realm.prices[itemID], realm.time
end

------------------------------------------------------------------------
-- Varredura
------------------------------------------------------------------------

function A:ScanWait()
    local last = self.db.lastScan or 0
    return math.max(0, last + SCAN_COOLDOWN - time())
end

function A:StartScan()
    if not self.auctionOpen then
        A.Print(L["SCAN_NEED_AH"])
        return false
    end
    local wait = self:ScanWait()
    if wait > 0 then
        A.Print(L["SCAN_WAIT"]:format(math.ceil(wait / 60)))
        return false
    end
    self.db.lastScan = time()
    self.scanning = true
    C_AuctionHouse.ReplicateItems()
    A.Print(L["SCAN_START"])
    return true
end

-- Lê o resultado em pedaços (pode ter dezenas de milhares de leilões).
function A:ProcessScan()
    if not self.scanning then
        return
    end
    self.scanning = false
    local total = C_AuctionHouse.GetNumReplicateItems() or 0
    local prices, index, auctions = {}, 0, 0
    local function Step()
        local last = math.min(total - 1, index + CHUNK - 1)
        for i = index, last do
            local _, _, count, _, _, _, _, _, _, buyout, _, _, _, _, _, _, itemID = C_AuctionHouse.GetReplicateItemInfo(i)
            if itemID and buyout and count and not IsSecret(buyout) and buyout > 0 and count > 0 then
                local unit = buyout / count
                if not prices[itemID] or unit < prices[itemID] then
                    prices[itemID] = unit
                end
                auctions = auctions + 1
            end
        end
        index = last + 1
        if index < total then
            C_Timer.After(0, Step)
            return
        end
        local realm = A:Realm()
        local items = 0
        for itemID, price in pairs(prices) do
            prices[itemID] = math.floor(price + 0.5)
            items = items + 1
        end
        realm.prices, realm.time, realm.count = prices, time(), items
        A.Print(L["SCAN_DONE"]:format(auctions, items))
        if A.button then
            A:UpdateButton()
        end
    end
    Step()
end

------------------------------------------------------------------------
-- Botão na casa de leilões
------------------------------------------------------------------------

function A:UpdateButton()
    local wait = self:ScanWait()
    self.button:SetEnabled(wait == 0 and not self.scanning)
end

function A:CreateButton()
    if self.button or not AuctionHouseFrame then
        return
    end
    local button = CreateFrame("Button", "AzimuteAuctionScanButton", AuctionHouseFrame, "UIPanelButtonTemplate")
    button:SetSize(150, 22)
    button:SetPoint("TOPRIGHT", AuctionHouseFrame, "TOPRIGHT", -60, -30)
    button:SetText(L["SCAN"])
    button:SetScript("OnClick", function()
        A:StartScan()
        A:UpdateButton()
    end)
    button:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_BOTTOM")
        GameTooltip:SetText(L["SCAN"])
        GameTooltip:AddLine(L["SCAN_TIP"], 1, 1, 1, true)
        local wait = A:ScanWait()
        if wait > 0 then
            GameTooltip:AddLine(L["SCAN_WAIT"]:format(math.ceil(wait / 60)), 1, 0.3, 0.3)
        end
        GameTooltip:Show()
    end)
    button:SetScript("OnLeave", function() GameTooltip:Hide() end)
    self.button = button
end

------------------------------------------------------------------------
-- Dica do item e valor das bolsas
------------------------------------------------------------------------

local function VendorPrice(itemID)
    local sellPrice = select(11, C_Item.GetItemInfo(itemID))
    return type(sellPrice) == "number" and sellPrice or 0
end

local function OnTooltip(tooltip, data)
    if not (A.db and A.db.tooltip and data and data.id) or IsSecret(data.id) then
        return
    end
    local price, scanned = A:Price(data.id)
    if not price then
        return
    end
    local age = scanned and (" |cff999999" .. L["TOOLTIP_AGE"]:format(A.Age(time() - scanned)) .. "|r") or ""
    tooltip:AddLine(L["TOOLTIP_PRICE"]:format(A.Money(price)) .. age, 0.9, 0.8, 0.5)
    if A.db.vendorHint and VendorPrice(data.id) > price then
        tooltip:AddLine(L["TOOLTIP_VENDOR_BETTER"], 1, 0.5, 0.2)
    end
end

-- Valor dos itens não vinculados das bolsas: leilão (última varredura) e vendedor.
function A:BagValue()
    local auction, vendor = 0, 0
    for bag = 0, 4 do
        for slot = 1, C_Container.GetContainerNumSlots(bag) or 0 do
            local info = C_Container.GetContainerItemInfo(bag, slot)
            if info and info.itemID and not info.isBound then
                local count = info.stackCount or 1
                local price = self:Price(info.itemID)
                local sell = VendorPrice(info.itemID)
                auction = auction + math.max(price or 0, sell) * count
                vendor = vendor + sell * count
            end
        end
    end
    return auction, vendor
end

function A:Summary()
    local realm = self:Realm()
    if not realm.time then
        A.Print(L["NO_SCAN"])
    else
        A.Print(L["LAST_SCAN"]:format(A.Age(time() - realm.time), realm.count or 0))
    end
    local auction, vendor = self:BagValue()
    A.Print(L["BAG_VALUE"]:format(A.Money(auction), A.Money(vendor)))
end

------------------------------------------------------------------------
-- Eventos, opções e comando
------------------------------------------------------------------------

local frame = CreateFrame("Frame")
local handlers = {}
local function On(event, handler)
    if C_EventUtils and C_EventUtils.IsEventValid and not C_EventUtils.IsEventValid(event) then
        return
    end
    if pcall(frame.RegisterEvent, frame, event) then
        handlers[event] = handler
    end
end
frame:SetScript("OnEvent", function(_, event, ...)
    local handler = handlers[event]
    if not handler or (event ~= "ADDON_LOADED" and not A.db) then
        return
    end
    local ok, err = pcall(handler, ...)
    if not ok and A.db and A.db.debug then
        A.Print(event .. ": " .. tostring(err))
    end
end)

On("ADDON_LOADED", function(name)
    if name ~= addonName then
        return
    end
    AzimuteAuctionDB = AzimuteAuctionDB or {}
    for key, value in pairs(A.DEFAULTS) do
        if AzimuteAuctionDB[key] == nil then
            AzimuteAuctionDB[key] = value
        end
    end
    AzimuteAuctionDB.realms = AzimuteAuctionDB.realms or {}
    A.db = AzimuteAuctionDB
    if TooltipDataProcessor and TooltipDataProcessor.AddTooltipPostCall and Enum and Enum.TooltipDataType then
        TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item, function(tooltip, data)
            pcall(OnTooltip, tooltip, data)
        end)
    end
end)

On("AUCTION_HOUSE_SHOW", function()
    A.auctionOpen = true
    A:CreateButton()
    if A.button then
        A:UpdateButton()
    end
end)
On("AUCTION_HOUSE_CLOSED", function()
    A.auctionOpen = false
end)
On("REPLICATE_ITEM_LIST_UPDATE", function()
    A:ProcessScan()
end)

local function BuildOptions()
    if not (Settings and Settings.RegisterVerticalLayoutCategory and Settings.RegisterAddOnSetting) then
        return
    end
    local category = Settings.RegisterVerticalLayoutCategory(L["TITLE"])
    local boolean = Settings.VarType and Settings.VarType.Boolean or "boolean"
    for _, option in ipairs({ { "tooltip", "OPT_TOOLTIP" }, { "vendorHint", "OPT_VENDOR_HINT" } }) do
        local setting = Settings.RegisterAddOnSetting(category, "AZIMUTE_AUCTION_" .. option[1], option[1], A.db, boolean,
            L[option[2]], A.DEFAULTS[option[1]])
        Settings.CreateCheckbox(category, setting, L[option[2] .. "_TIP"])
    end
    Settings.RegisterAddOnCategory(category)
    A.category = category
end

On("PLAYER_LOGIN", function()
    pcall(BuildOptions)
    if AzimuteAPI and AzimuteAPI.RegisterModule then
        pcall(AzimuteAPI.RegisterModule, {
            name = L["TITLE"],
            toggle = function() A:Summary() end,
            options = function() SlashCmdList.AZIMUTEAUCTION("opcoes") end,
        })
    end
end)

SLASH_AZIMUTEAUCTION1 = "/azl"
SLASH_AZIMUTEAUCTION2 = "/azleilao"
SlashCmdList.AZIMUTEAUCTION = function(input)
    local command = strtrim(input or ""):lower()
    if command == "" then
        A:Summary()
    elseif command == "scan" or command == "varrer" then
        A:StartScan()
    elseif command == "options" or command == "opcoes" or command == "opções" then
        if A.category and Settings.OpenToCategory then
            Settings.OpenToCategory(A.category:GetID())
        end
    else
        for _, line in ipairs(L["HELP"]) do
            A.Print(line)
        end
    end
end
