-- Dicas: ID do item/feitiço e o alvo de quem está sob o mouse. (Preço de
-- venda e guilda o próprio jogo já mostra.)
local addonName, U = ...
local L = U.L

local GRAY = 0.6

local function AddID(tooltip, label, id)
    if id and not U.IsSecret(id) and type(id) == "number" then
        tooltip:AddLine(("%s %d"):format(label, id), GRAY, GRAY, GRAY)
    end
end

local function OnItem(tooltip, data)
    if U:Enabled("tooltipIDs") and data then
        AddID(tooltip, L["TOOLTIP_ITEM_ID"], data.id)
    end
end

local function OnSpell(tooltip, data)
    if U:Enabled("tooltipIDs") and data then
        AddID(tooltip, L["TOOLTIP_SPELL_ID"], data.id)
    end
end

-- Alvo do jogador/NPC sob o mouse. Em combate o nome pode vir secreto:
-- nesse caso não mostra nada.
local function OnUnit(tooltip)
    if not U:Enabled("tooltipTarget") or not tooltip.GetUnit then
        return
    end
    local _, unit = tooltip:GetUnit()
    if not unit or U.IsSecret(unit) then
        return
    end
    local target = unit .. "target"
    if not UnitExists(target) then
        return
    end
    local name = UnitName(target)
    if not name or U.IsSecret(name) then
        return
    end
    if UnitIsUnit(target, "player") then
        name = "|cffff5555" .. L["TOOLTIP_YOU"] .. "|r"
    else
        local _, class = UnitClass(target)
        local color = class and UnitIsPlayer(target) and C_ClassColor and C_ClassColor.GetClassColor(class)
        if color then
            name = color:WrapTextInColorCode(name)
        end
    end
    tooltip:AddLine(L["TOOLTIP_TARGET"]:format(name), 1, 0.82, 0)
end

local function Register()
    if not (TooltipDataProcessor and TooltipDataProcessor.AddTooltipPostCall and Enum and Enum.TooltipDataType) then
        return
    end
    local types = Enum.TooltipDataType
    TooltipDataProcessor.AddTooltipPostCall(types.Item, function(tooltip, data) pcall(OnItem, tooltip, data) end)
    TooltipDataProcessor.AddTooltipPostCall(types.Spell, function(tooltip, data) pcall(OnSpell, tooltip, data) end)
    TooltipDataProcessor.AddTooltipPostCall(types.Unit, function(tooltip) pcall(OnUnit, tooltip) end)
end

U:Feature({ key = "tooltipIDs", label = "OPT_TOOLTIP_IDS", tip = "OPT_TOOLTIP_IDS_TIP", default = true, init = Register })
U:Feature({ key = "tooltipTarget", label = "OPT_TOOLTIP_TARGET", tip = "OPT_TOOLTIP_TARGET_TIP", default = true })
