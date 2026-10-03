-- Janela unificada (uma para as bolsas, outra para o banco): grade de itens,
-- busca, organizar, espaços livres e ouro.
--
-- Os botões usam o modelo do próprio jogo (ContainerFrameItemButtonTemplate):
-- clicar usa/equipa/vende/deposita como nas bolsas da Blizzard. Para não
-- "contaminar" esses cliques, cada bolsa tem um quadro-pai com SetID(bolsa) e
-- cada botão SetID(espaço); nunca escrevemos campos que o clique lê
-- (bagID etc.).
local addonName, B = ...
local L = B.L

local SLOT = 37
local GAP = 4
local PAD = 8
local TOP = 54   -- título + busca
local BOTTOM = 26 -- rodapé (livres + ouro)
local GOLD = { 0.85, 0.68, 0.25 }
local EMPTY_SLOT = "Interface\\PaperDoll\\UI-Backpack-EmptySlot"

local Container = {}
Container.__index = Container
B.Container = Container

local function Money(copper)
    local coins = (C_CurrencyInfo and C_CurrencyInfo.GetCoinTextureString) or GetCoinTextureString or GetMoneyString
    if coins then
        return coins(copper)
    end
    return ("%dg %ds %dc"):format(math.floor(copper / 10000), math.floor(copper / 100) % 100, copper % 100)
end

-- Arma ou armadura que se equipa: mostra o nível do item.
local function ItemLevelText(link, quality)
    if not link or not C_Item.GetDetailedItemLevelInfo then
        return nil
    end
    local _, _, _, equipLoc, _, classID = C_Item.GetItemInfoInstant(link)
    if not (classID == 2 or classID == 4) or not equipLoc or equipLoc == "" or equipLoc == "INVTYPE_NON_EQUIP_IGNORE" then
        return nil
    end
    local level = C_Item.GetDetailedItemLevelInfo(link)
    if not level or level <= 1 then
        return nil
    end
    local color = quality and ITEM_QUALITY_COLORS and ITEM_QUALITY_COLORS[quality]
    if color and color.hex then
        return color.hex .. level .. "|r"
    end
    return tostring(level)
end

------------------------------------------------------------------------
-- Criação
------------------------------------------------------------------------

-- kind = "bags" ou "bank"; getBags() devolve a lista de bolsas da janela.
function Container:New(kind, title, getBags)
    local self = setmetatable({ kind = kind, getBags = getBags, holders = {}, buttons = {}, dirty = true }, Container)
    local frame = CreateFrame("Frame", "AzimuteBags_" .. kind, UIParent, "BackdropTemplate")
    frame:SetBackdrop({ bgFile = "Interface\\Buttons\\WHITE8x8", edgeFile = "Interface\\Buttons\\WHITE8x8", edgeSize = 1 })
    frame:SetBackdropColor(0.04, 0.04, 0.06, 0.92)
    frame:SetBackdropBorderColor(GOLD[1], GOLD[2], GOLD[3], 0.45)
    frame:SetFrameStrata("HIGH")
    frame:SetToplevel(true)
    frame:SetClampedToScreen(true)
    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetScript("OnDragStart", frame.StartMoving)
    frame:SetScript("OnDragStop", function(f)
        f:StopMovingOrSizing()
        local point, _, relativePoint, x, y = f:GetPoint(1)
        B.db.points[kind] = { point, relativePoint, x, y }
    end)
    frame:SetScript("OnShow", function()
        self:Refresh(true)
    end)
    frame:SetScript("OnHide", function()
        if self.search then
            self.search:SetText("")
        end
        if kind == "bags" and C_Container.SetItemSearch then
            C_Container.SetItemSearch("")
        end
    end)
    -- Esc fecha a janela.
    table.insert(UISpecialFrames, frame:GetName())

    frame.title = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    frame.title:SetPoint("TOPLEFT", PAD, -8)
    frame.title:SetText(title)

    local close = CreateFrame("Button", nil, frame, "UIPanelCloseButton")
    close:SetSize(22, 22)
    close:SetPoint("TOPRIGHT", -2, -2)

    local sort = CreateFrame("Button", nil, frame)
    sort:SetSize(18, 18)
    sort:SetPoint("RIGHT", close, "LEFT", -4, 0)
    sort:SetNormalTexture("Interface\\Icons\\INV_Pet_Broom")
    sort:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")
    sort:SetScript("OnClick", function()
        B.Sort(kind)
    end)
    sort:SetScript("OnEnter", function(button)
        GameTooltip:SetOwner(button, "ANCHOR_TOP")
        GameTooltip:SetText(L["SORT"])
        GameTooltip:Show()
    end)
    sort:SetScript("OnLeave", function() GameTooltip:Hide() end)

    -- Busca: usa a busca do próprio jogo (entende nome, tipo, "vinculado"...).
    local search = CreateFrame("EditBox", nil, frame, "InputBoxTemplate")
    search:SetHeight(20)
    search:SetPoint("TOPLEFT", PAD + 6, -28)
    search:SetPoint("TOPRIGHT", -PAD, -28)
    search:SetAutoFocus(false)
    search.placeholder = search:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
    search.placeholder:SetPoint("LEFT", 2, 0)
    search.placeholder:SetText(L["SEARCH"])
    search:SetScript("OnTextChanged", function(box)
        local text = box:GetText() or ""
        box.placeholder:SetShown(text == "")
        self.query = text:lower()
        if C_Container.SetItemSearch then
            C_Container.SetItemSearch(text)
        end
        self:UpdateItems()
    end)
    search:SetScript("OnEscapePressed", function(box)
        box:ClearFocus()
    end)
    self.search = search

    frame.free = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    frame.free:SetPoint("BOTTOMLEFT", PAD, 8)
    frame.money = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    frame.money:SetPoint("BOTTOMRIGHT", -PAD, 8)

    frame.content = CreateFrame("Frame", nil, frame)
    frame.content:SetPoint("TOPLEFT", PAD, -TOP)
    frame.content:SetSize(1, 1)

    frame:SetScale(B.db.scale or 1)
    local p = B.db.points[kind]
    frame:SetPoint(p[1], UIParent, p[2], p[3], p[4])
    frame:Hide()
    self.frame = frame
    return self
end

-- Quadro-pai de cada bolsa (o clique do botão pergunta a bolsa ao pai).
function Container:Holder(bag)
    local holder = self.holders[bag]
    if not holder then
        holder = CreateFrame("Frame", nil, self.frame.content)
        holder:SetID(bag)
        holder:SetSize(1, 1)
        holder:SetPoint("TOPLEFT")
        holder.IsCombinedBagContainer = function() return false end
        self.holders[bag] = holder
    end
    return holder
end

function Container:Button(bag, slot)
    self.buttons[bag] = self.buttons[bag] or {}
    local button = self.buttons[bag][slot]
    if not button then
        local name = ("AzimuteBags%s%dSlot%d"):format(self.kind, bag + 10, slot)
        button = CreateFrame("ItemButton", name, self:Holder(bag), "ContainerFrameItemButtonTemplate")
        button:SetID(slot)
        button:SetSize(SLOT, SLOT)
        button.emptyBg = button:CreateTexture(nil, "BACKGROUND", nil, -1)
        button.emptyBg:SetAllPoints()
        button.emptyBg:SetTexture(EMPTY_SLOT)
        button.emptyBg:SetAlpha(0.6)
        button.ilvl = button:CreateFontString(nil, "OVERLAY", "NumberFontNormalSmall")
        button.ilvl:SetPoint("TOPLEFT", 2, -2)
        -- seta verde de melhoria (indicador de equipamento do Azimute, se ligado)
        button.upgrade = button:CreateTexture(nil, "OVERLAY", nil, 7)
        button.upgrade:SetSize(14, 14)
        button.upgrade:SetPoint("TOPRIGHT", -1, -1)
        if not (button.upgrade.SetAtlas and button.upgrade:SetAtlas("bags-greenarrow")) then
            button.upgrade:SetTexture("Interface\\Buttons\\UI-MicroStream-Green")
        end
        button.upgrade:Hide()
        self.buttons[bag][slot] = button
    end
    return button
end

------------------------------------------------------------------------
-- Layout e atualização
------------------------------------------------------------------------

function Container:Columns()
    return self.kind == "bank" and B.db.bankColumns or B.db.columns
end

function Container:Layout()
    local columns = math.max(4, self:Columns())
    local index = 0
    local used = {}
    for _, bag in ipairs(self.getBags()) do
        used[bag] = true
        local holder = self:Holder(bag)
        holder:Show()
        for slot = 1, B.NumSlots(bag) do
            local button = self:Button(bag, slot)
            local row, column = math.floor(index / columns), index % columns
            button:ClearAllPoints()
            button:SetPoint("TOPLEFT", self.frame.content, "TOPLEFT", column * (SLOT + GAP), -row * (SLOT + GAP))
            button:Show()
            index = index + 1
        end
        -- bolsa trocada por uma menor: esconde os botões que sobraram
        for slot, button in pairs(self.buttons[bag] or {}) do
            if slot > B.NumSlots(bag) then
                button:Hide()
            end
        end
    end
    for bag, holder in pairs(self.holders) do
        if not used[bag] then
            holder:Hide()
        end
    end
    local rows = math.max(1, math.ceil(index / columns))
    local width = PAD * 2 + columns * SLOT + (columns - 1) * GAP
    local height = TOP + rows * SLOT + (rows - 1) * GAP + BOTTOM + 4
    self.frame:SetSize(math.max(width, 200), height)
    self.dirty = false
end

local function Call(button, method, ...)
    local fn = button[method]
    if fn then
        fn(button, ...)
    end
end

function Container:UpdateButton(button, bag, slot)
    local info = C_Container.GetContainerItemInfo(bag, slot)
    local texture = info and info.iconFileID
    local quality = info and info.quality
    local link = info and info.hyperlink
    if ClearItemButtonOverlay then
        ClearItemButtonOverlay(button)
    end
    Call(button, "SetHasItem", texture)
    if button.SetItemButtonTexture then
        button:SetItemButtonTexture(texture)
    elseif SetItemButtonTexture then
        SetItemButtonTexture(button, texture)
    end
    if SetItemButtonQuality then
        SetItemButtonQuality(button, quality, link, false, info and info.isBound)
    end
    if SetItemButtonCount then
        SetItemButtonCount(button, info and info.stackCount)
    end
    if SetItemButtonDesaturated then
        SetItemButtonDesaturated(button, info and info.isLocked)
    end
    local questInfo = C_Container.GetContainerItemQuestInfo and C_Container.GetContainerItemQuestInfo(bag, slot)
    if questInfo then
        Call(button, "UpdateQuestItem", questInfo.isQuestItem, questInfo.questID, questInfo.isActive)
    end
    Call(button, "UpdateNewItem", quality)
    Call(button, "UpdateJunkItem", quality, info and info.hasNoValue)
    Call(button, "UpdateCooldown", texture)
    Call(button, "SetReadable", info and info.isReadable)
    -- Busca do jogo (isFiltered) + nome, para funcionar mesmo antes do evento.
    local matches = true
    if self.query and self.query ~= "" then
        local name = info and info.itemName
        matches = info ~= nil and (info.isFiltered == false or (name and name:lower():find(self.query, 1, true) ~= nil))
    end
    if button.SetMatchesSearch then
        button:SetMatchesSearch(matches)
    else
        button:SetAlpha(matches and 1 or 0.25)
    end
    button.emptyBg:SetShown(not texture)
    local level = B.db.itemLevel and ItemLevelText(link, quality)
    button.ilvl:SetText(level or "")
    local upgrade = link and AzimuteAPI and AzimuteAPI.IsUpgrade and AzimuteAPI.IsUpgrade(link)
    button.upgrade:SetShown(upgrade and true or false)
end

function Container:UpdateItems()
    if not self.frame:IsShown() then
        self.dirty = true
        return
    end
    for _, bag in ipairs(self.getBags()) do
        for slot = 1, B.NumSlots(bag) do
            local button = self.buttons[bag] and self.buttons[bag][slot]
            if button then
                -- um item com problema não pode apagar a janela inteira
                local ok, err = pcall(self.UpdateButton, self, button, bag, slot)
                if not ok and B.db.debug then
                    B.Print(tostring(err))
                end
            end
        end
    end
    self:UpdateFooter()
end

function Container:UpdateCooldowns()
    if not self.frame:IsShown() then
        return
    end
    for _, bag in ipairs(self.getBags()) do
        for slot, button in pairs(self.buttons[bag] or {}) do
            local has = C_Container.HasContainerItem and C_Container.HasContainerItem(bag, slot)
            Call(button, "UpdateCooldown", has)
        end
    end
end

function Container:UpdateFooter()
    local frame = self.frame
    frame.free:SetText(L["FREE"]:format(B.FreeSlots(self.getBags())))
    frame.money:SetText(self.kind == "bags" and Money(GetMoney()) or "")
end

function Container:Refresh(layout)
    if layout or self.dirty then
        self:Layout()
    end
    self:UpdateItems()
end

function Container:IsShown()
    return self.frame:IsShown()
end

function Container:SetShown(shown)
    self.frame:SetShown(shown)
end

function Container:Toggle()
    self:SetShown(not self:IsShown())
end

function Container:ApplyLayout()
    self.frame:SetScale(B.db.scale or 1)
    self.dirty = true
    if self.frame:IsShown() then
        self:Refresh(true)
    end
end

------------------------------------------------------------------------
-- Janelas e eventos
------------------------------------------------------------------------

B:On("INIT", function()
    B.bags = Container:New("bags", L["BAGS"], B.InventoryBags)
    B.bank = Container:New("bank", L["BANK"], B.BankBags)
end)

local function Each(method, ...)
    for _, container in ipairs({ B.bags, B.bank }) do
        if container then
            container[method](container, ...)
        end
    end
end

B:On("ITEMS", function()
    Each("UpdateItems")
end)
B:On("COOLDOWNS", function()
    Each("UpdateCooldowns")
end)
B:On("LAYOUT", function()
    for _, container in ipairs({ B.bags, B.bank }) do
        container.dirty = true
        if container:IsShown() then
            container:Refresh(true)
        end
    end
end)
B:On("MONEY", function()
    if B.bags and B.bags:IsShown() then
        B.bags:UpdateFooter()
    end
end)
