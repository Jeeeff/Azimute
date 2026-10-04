-- Nível de item em cada espaço da janela do personagem (a média o próprio jogo
-- já mostra). Cor pela qualidade do item.
local addonName, U = ...

local SKIP = { [4] = true, [19] = true } -- camisa e tabardo

local function ItemLevel(link)
    if not link or not C_Item.GetDetailedItemLevelInfo then
        return nil
    end
    local level = C_Item.GetDetailedItemLevelInfo(link)
    if not level or U.IsSecret(level) or level <= 1 then
        return nil
    end
    return level
end

-- Etiquetas guardadas aqui (não escrevemos campos nos botões da Blizzard).
local labels = setmetatable({}, { __mode = "k" })
U.slotLabels = labels

local function Label(button)
    local label = labels[button]
    if not label then
        label = button:CreateFontString(nil, "OVERLAY", "NumberFontNormalSmall")
        label:SetPoint("TOPLEFT", 2, -2)
        labels[button] = label
    end
    return label
end

local function Update(button)
    if not (button and button.GetID) then
        return
    end
    local slot = button:GetID()
    if not slot or SKIP[slot] or slot < 1 or slot > 19 then
        return
    end
    local label = Label(button)
    local link = U:Enabled("charItemLevel") and GetInventoryItemLink("player", slot)
    local level = link and ItemLevel(link)
    if not level then
        label:SetText("")
        return
    end
    local quality = select(3, C_Item.GetItemInfo(link))
    local color = quality and ITEM_QUALITY_COLORS and ITEM_QUALITY_COLORS[quality]
    label:SetText(color and color.hex and (color.hex .. level .. "|r") or tostring(level))
end
U.UpdateSlotLevel = Update

U:Feature({
    key = "charItemLevel",
    label = "OPT_CHAR_ILVL",
    tip = "OPT_CHAR_ILVL_TIP",
    default = true,
    init = function()
        if type(PaperDollItemSlotButton_Update) == "function" then
            hooksecurefunc("PaperDollItemSlotButton_Update", function(button)
                pcall(Update, button)
            end)
        end
    end,
})

------------------------------------------------------------------------
-- Nível de item nas bolsas do próprio jogo (armas e armaduras). A seta de
-- melhoria fica no canto de cima (indicador do Azimute); o número, embaixo.
------------------------------------------------------------------------

local bagLabels = setmetatable({}, { __mode = "k" })
U.bagLabels = bagLabels

local function BagLabel(button)
    local label = bagLabels[button]
    if not label then
        label = button:CreateFontString(nil, "OVERLAY", "NumberFontNormalSmall")
        label:SetPoint("BOTTOMLEFT", 2, 2)
        bagLabels[button] = label
    end
    return label
end

local function BagText(bag, slot)
    local info = C_Container.GetContainerItemInfo(bag, slot)
    local link = info and info.hyperlink
    if not link then
        return nil
    end
    local _, _, _, equipLoc, _, classID = C_Item.GetItemInfoInstant(link)
    if not (classID == 2 or classID == 4) or not equipLoc or equipLoc == "" or equipLoc == "INVTYPE_NON_EQUIP_IGNORE" then
        return nil
    end
    local level = ItemLevel(link)
    if not level then
        return nil
    end
    local color = info.quality and ITEM_QUALITY_COLORS and ITEM_QUALITY_COLORS[info.quality]
    return color and color.hex and (color.hex .. level .. "|r") or tostring(level)
end

local function UpdateBagFrame(frame)
    if not (frame and frame.EnumerateValidItems and frame:IsShown()) then
        return
    end
    local enabled = U:Enabled("bagItemLevel")
    for _, button in frame:EnumerateValidItems() do
        local text = enabled and BagText(button:GetBagID(), button:GetID())
        if text then
            BagLabel(button):SetText(text)
        elseif bagLabels[button] then
            bagLabels[button]:SetText("")
        end
    end
end

local function UpdateBags()
    if ContainerFrameCombinedBags then
        pcall(UpdateBagFrame, ContainerFrameCombinedBags)
    end
    for i = 1, (NUM_CONTAINER_FRAMES or 13) do
        pcall(UpdateBagFrame, _G["ContainerFrame" .. i])
    end
end
U.UpdateBagLevels = UpdateBags

local queued = false
local function Queue()
    if queued then
        return
    end
    queued = true
    C_Timer.After(0.2, function()
        queued = false
        UpdateBags()
    end)
end

U:Feature({
    key = "bagItemLevel",
    label = "OPT_BAG_ILVL",
    tip = "OPT_BAG_ILVL_TIP",
    default = true,
    init = function()
        U:RegisterEvent("BAG_UPDATE_DELAYED", Queue)
        U:RegisterEvent("ITEM_LOCK_CHANGED", Queue)
        U:On("LOGIN", function()
            if ContainerFrameCombinedBags then
                ContainerFrameCombinedBags:HookScript("OnShow", Queue)
            end
            for i = 1, (NUM_CONTAINER_FRAMES or 13) do
                local frame = _G["ContainerFrame" .. i]
                if frame then
                    frame:HookScript("OnShow", Queue)
                end
            end
        end)
    end,
    apply = function()
        UpdateBags()
    end,
})
