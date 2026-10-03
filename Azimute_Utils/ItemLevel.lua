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
