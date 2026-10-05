-- Painel de rotação: a ordem de prioridade da especialização, com ícone,
-- o que fazer e se você já sabe o feitiço (ou quando aprende).
local addonName, R = ...
local L = R.L

local Panel = {}
R.Panel = Panel

local WIDTH = 380
local ROW = 34
local MAX_ROWS = 14
local GOLD = { 0.85, 0.68, 0.25 }

local function Create()
    local frame = CreateFrame("Frame", "AzimuteRotationPanel", UIParent, "BackdropTemplate")
    frame:SetBackdrop({ bgFile = "Interface\\Buttons\\WHITE8x8", edgeFile = "Interface\\Buttons\\WHITE8x8", edgeSize = 1 })
    frame:SetBackdropColor(0.04, 0.04, 0.06, 0.94)
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
        R.db.panelPoint = { point, relativePoint, x, y }
    end)
    table.insert(UISpecialFrames, frame:GetName())
    local p = R.db.panelPoint
    frame:SetPoint(p[1], UIParent, p[2], p[3], p[4])
    frame:SetWidth(WIDTH)

    frame.title = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    frame.title:SetPoint("TOPLEFT", 10, -9)
    frame.source = frame:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
    frame.source:SetPoint("LEFT", frame.title, "RIGHT", 6, 0)

    local close = CreateFrame("Button", nil, frame, "UIPanelCloseButton")
    close:SetSize(22, 22)
    close:SetPoint("TOPRIGHT", -2, -2)

    -- uma aba por especialização da classe
    frame.tabs = {}
    frame.tip = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    frame.tip:SetJustifyH("LEFT")
    frame.tip:SetWidth(WIDTH - 20)

    frame.rows = {}
    for i = 1, MAX_ROWS do
        local row = CreateFrame("Frame", nil, frame)
        row:SetSize(WIDTH - 20, ROW)
        row.icon = row:CreateTexture(nil, "ARTWORK")
        row.icon:SetSize(26, 26)
        row.icon:SetPoint("LEFT", 18, 0)
        row.number = row:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
        row.number:SetPoint("RIGHT", row.icon, "LEFT", -4, 0)
        row.name = row:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
        row.name:SetPoint("TOPLEFT", row.icon, "TOPRIGHT", 6, 0)
        row.status = row:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
        row.status:SetPoint("TOPRIGHT", 0, -1)
        row.text = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
        row.text:SetPoint("BOTTOMLEFT", row.icon, "BOTTOMRIGHT", 6, 0)
        row.text:SetPoint("RIGHT", 0, 0)
        row.text:SetJustifyH("LEFT")
        row.text:SetTextColor(0.75, 0.75, 0.75)
        row:SetScript("OnEnter", function(r)
            if r.spellID and GameTooltip.SetSpellByID then
                GameTooltip:SetOwner(r, "ANCHOR_RIGHT")
                GameTooltip:SetSpellByID(r.spellID)
                GameTooltip:Show()
            end
        end)
        row:SetScript("OnLeave", function() GameTooltip:Hide() end)
        frame.rows[i] = row
    end

    frame:Hide()
    frame:SetScript("OnShow", function() Panel:Update() end)
    return frame
end

function Panel:Frame()
    if not self.frame then
        self.frame = Create()
    end
    return self.frame
end

function Panel:Toggle()
    local frame = self:Frame()
    frame:SetShown(not frame:IsShown())
end

local function StatusText(step, class)
    if R.Knows(step[1]) then
        return ""
    end
    local how, level = R:HowToLearn(step, class)
    if how == "talent" then
        return L["TALENT"]
    elseif how == "quest" then
        return L["QUEST"]:format(level)
    elseif level and level > (UnitLevel("player") or 1) then
        return L["LEARN_LEVEL"]:format(level)
    end
    return "|cff40c040" .. L["LEARN_NOW"] .. "|r"
end

function Panel:Update()
    local frame = self.frame
    if not (frame and frame:IsShown()) then
        return
    end
    local class = R.Class()
    local specs = R:Specs(class)
    local spec, source = R:CurrentSpec()
    local className = (LOCALIZED_CLASS_NAMES_MALE and LOCALIZED_CLASS_NAMES_MALE[class]) or UnitClass("player")

    -- abas
    for i, tab in ipairs(frame.tabs) do
        tab:SetShown(specs[i] ~= nil)
    end
    local x = 10
    for i, s in ipairs(specs) do
        local tab = frame.tabs[i]
        if not tab then
            tab = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
            tab:SetHeight(20)
            tab:SetScript("OnClick", function() R:ChooseSpec(i) end)
            frame.tabs[i] = tab
        end
        tab:SetText(R.Text(s.name))
        local textWidth = tab:GetTextWidth()
        local width = math.max(60, (type(textWidth) == "number" and textWidth or 60) + 18)
        tab:SetWidth(width)
        tab:ClearAllPoints()
        tab:SetPoint("TOPLEFT", x, -28)
        tab:SetEnabled(s ~= spec)
        tab:Show()
        x = x + width + 4
    end

    if not spec then
        frame.title:SetText(L["TITLE"])
        frame.source:SetText("")
        frame.tip:SetText(L["NO_CLASS"])
        frame.tip:SetPoint("TOPLEFT", 10, -32)
        for _, row in ipairs(frame.rows) do
            row:Hide()
        end
        frame:SetHeight(80)
        return
    end

    frame.title:SetText(L["PANEL_TITLE"]:format(className .. " " .. R.Text(spec.name)))
    frame.source:SetText(source == "chosen" and L["SPEC_CHOSEN"] or source == "talents" and L["SPEC_AUTO"] or "")
    frame.tip:ClearAllPoints()
    frame.tip:SetPoint("TOPLEFT", 10, -54)
    frame.tip:SetText(R.Text(spec.tip))
    local top = 54 + (frame.tip:GetStringHeight() or 28) + 8

    for i, row in ipairs(frame.rows) do
        local step = spec.steps[i]
        if step then
            local known = R.Knows(step[1])
            row.spellID = step[1]
            row.icon:SetTexture(R.SpellIcon(step[1]))
            row.icon:SetDesaturated(not known)
            row.number:SetText(i .. ".")
            local name = R.SpellName(step[1]) or ("#" .. step[1])
            row.name:SetText(name .. "  |cff999999" .. (L["KIND"][step[2]] or "") .. "|r")
            row.name:SetAlpha(known and 1 or 0.6)
            row.status:SetText(StatusText(step, class))
            row.text:SetText(R.Text(step))
            row:ClearAllPoints()
            row:SetPoint("TOPLEFT", 10, -top - (i - 1) * ROW)
            row:Show()
        else
            row.spellID = nil
            row:Hide()
        end
    end
    frame:SetHeight(top + #spec.steps * ROW + 10)
end

R:On("CHANGED", function()
    Panel:Update()
end)
