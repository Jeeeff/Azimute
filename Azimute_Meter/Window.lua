-- Janela do medidor: título (modo + luta), barras por jogador e painel de
-- feitiços. Valores secretos (em combate) vão direto para SetText/SetValue.
local addonName, M = ...
local L = M.L
local Meter = M.Meter

local Window = {}
M.Window = Window

local HEADER = 22
local GOLD = { 0.85, 0.68, 0.25 }
local BAR_TEXTURE = "Interface\\TargetingFrame\\UI-StatusBar"

local function ClassColor(classFile)
    if classFile and C_ClassColor and C_ClassColor.GetClassColor then
        local color = C_ClassColor.GetClassColor(classFile)
        if color then
            return color:GetRGB()
        end
    end
    local color = classFile and RAID_CLASS_COLORS and RAID_CLASS_COLORS[classFile]
    if color then
        return color.r, color.g, color.b
    end
    return 0.55, 0.55, 0.55
end

-- Texto do valor: "12,3 mil (450,2)" + porcentagem quando os números são normais.
local function ValueText(mode, amount, perSecond, total)
    local main, extra = amount, perSecond
    if mode.perSecond == "primary" then
        main, extra = perSecond, amount
    end
    local text = M.Abbrev(main)
    if mode.perSecond and extra ~= nil then
        text = text .. " (" .. M.Abbrev(extra) .. ")"
    end
    if mode.perSecond ~= "primary" and M.Positive(total) and amount ~= nil and not M.IsSecret(amount) then
        text = text .. (" %.0f%%"):format(100 * amount / total)
    end
    return text
end

local function Backdrop(frame, alpha)
    frame:SetBackdrop({ bgFile = "Interface\\Buttons\\WHITE8x8", edgeFile = "Interface\\Buttons\\WHITE8x8", edgeSize = 1 })
    frame:SetBackdropColor(0.04, 0.04, 0.06, alpha or 0.85)
    frame:SetBackdropBorderColor(GOLD[1], GOLD[2], GOLD[3], 0.45)
end

------------------------------------------------------------------------
-- Criação
------------------------------------------------------------------------

function Window:Create()
    local db = M.db
    local frame = CreateFrame("Frame", "AzimuteMeterFrame", UIParent, "BackdropTemplate")
    Backdrop(frame)
    frame:SetSize(db.width, db.height)
    frame:SetScale(db.scale or 1)
    frame:SetClampedToScreen(true)
    frame:SetMovable(true)
    frame:SetResizable(true)
    if frame.SetResizeBounds then
        frame:SetResizeBounds(150, 80, 600, 600)
    end
    frame:EnableMouse(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetScript("OnDragStart", function(f)
        if not M.db.locked then
            f:StartMoving()
        end
    end)
    frame:SetScript("OnDragStop", function(f)
        f:StopMovingOrSizing()
        local point, _, relativePoint, x, y = f:GetPoint(1)
        M.db.point = { point, relativePoint, x, y }
    end)
    frame:SetScript("OnMouseWheel", function(_, delta)
        Window:Scroll(-delta)
    end)
    frame:EnableMouseWheel(true)
    frame:SetScript("OnSizeChanged", function(f, width, height)
        M.db.width, M.db.height = math.floor(width + 0.5), math.floor(height + 0.5)
        Window:Refresh()
    end)
    local p = db.point
    frame:SetPoint(p[1], UIParent, p[2], p[3], p[4])

    -- Título: clique abre o menu de modo/luta.
    frame.header = CreateFrame("Button", nil, frame)
    frame.header:SetPoint("TOPLEFT", 1, -1)
    frame.header:SetPoint("TOPRIGHT", -1, -1)
    frame.header:SetHeight(HEADER - 2)
    frame.header:RegisterForClicks("LeftButtonUp", "RightButtonUp")
    frame.header:SetScript("OnClick", function(button)
        Window:OpenMenu(button)
    end)
    frame.header:RegisterForDrag("LeftButton")
    frame.header:SetScript("OnDragStart", function() frame:GetScript("OnDragStart")(frame) end)
    frame.header:SetScript("OnDragStop", function() frame:GetScript("OnDragStop")(frame) end)
    local headerBg = frame.header:CreateTexture(nil, "BACKGROUND")
    headerBg:SetAllPoints()
    headerBg:SetColorTexture(1, 1, 1, 0.05)
    frame.title = frame.header:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    frame.title:SetPoint("LEFT", 6, 0)
    frame.title:SetPoint("RIGHT", -46, 0)
    frame.title:SetJustifyH("LEFT")
    frame.title:SetWordWrap(false)

    local function SmallButton(texture, tooltip, onClick)
        local button = CreateFrame("Button", nil, frame.header)
        button:SetSize(14, 14)
        button:SetNormalTexture(texture)
        button:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")
        button:SetScript("OnClick", onClick)
        button:SetScript("OnEnter", function(self)
            GameTooltip:SetOwner(self, "ANCHOR_TOP")
            GameTooltip:SetText(tooltip)
            GameTooltip:Show()
        end)
        button:SetScript("OnLeave", function() GameTooltip:Hide() end)
        return button
    end
    frame.resetButton = SmallButton("Interface\\Buttons\\UI-StopButton", L["RESET"], function()
        Meter:Reset()
        M.Print(L["RESET_DONE"])
    end)
    frame.resetButton:SetPoint("RIGHT", -4, 0)
    frame.reportButton = SmallButton("Interface\\ChatFrame\\UI-ChatIcon-Chat-Up", L["REPORT"], function(button)
        Window:OpenReportMenu(button)
    end)
    frame.reportButton:SetPoint("RIGHT", frame.resetButton, "LEFT", -4, 0)

    frame.empty = frame:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
    frame.empty:SetPoint("TOPLEFT", 8, -(HEADER + 8))
    frame.empty:SetPoint("RIGHT", -8, 0)
    frame.empty:SetJustifyH("LEFT")

    -- Alça de redimensionar.
    frame.grip = CreateFrame("Button", nil, frame)
    frame.grip:SetSize(14, 14)
    frame.grip:SetPoint("BOTTOMRIGHT", -1, 1)
    frame.grip:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Up")
    frame.grip:SetHighlightTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Highlight")
    frame.grip:SetScript("OnMouseDown", function()
        if not M.db.locked then
            frame:StartSizing("BOTTOMRIGHT")
        end
    end)
    frame.grip:SetScript("OnMouseUp", function()
        frame:StopMovingOrSizing()
    end)

    frame.bars = {}
    self.offset = 0
    self.frame = frame
    self:CreateBreakdown()
    self:ApplyLock()
end

function Window:GetBar(index)
    local frame = self.frame
    local bar = frame.bars[index]
    if not bar then
        bar = CreateFrame("StatusBar", nil, frame)
        bar:SetStatusBarTexture(BAR_TEXTURE)
        bar.bg = bar:CreateTexture(nil, "BACKGROUND")
        bar.bg:SetAllPoints()
        bar.bg:SetColorTexture(1, 1, 1, 0.06)
        bar.icon = bar:CreateTexture(nil, "OVERLAY")
        bar.icon:SetPoint("LEFT", 1, 0)
        bar.name = bar:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
        bar.name:SetJustifyH("LEFT")
        bar.name:SetWordWrap(false)
        bar.value = bar:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
        bar.value:SetPoint("RIGHT", -3, 0)
        bar.value:SetJustifyH("RIGHT")
        bar.name:SetPoint("RIGHT", bar.value, "LEFT", -4, 0)
        bar:EnableMouse(true)
        bar:SetScript("OnMouseUp", function(self, button)
            if button == "RightButton" then
                Window:OpenMenu(frame.header)
            else
                Window:ShowBreakdown(self.source)
            end
        end)
        bar:SetScript("OnEnter", function(self)
            GameTooltip:SetOwner(self, "ANCHOR_LEFT")
            local name = M.ShortName(self.source and self.source.name)
            GameTooltip:SetText(M.IsSecret(name) and L["TITLE"] or name)
            GameTooltip:AddLine(L["CLICK_HINT"], 0.7, 0.7, 0.7)
            GameTooltip:Show()
        end)
        bar:SetScript("OnLeave", function() GameTooltip:Hide() end)
        frame.bars[index] = bar
    end
    local height = M.db.barHeight
    bar:SetHeight(height)
    bar:ClearAllPoints()
    bar:SetPoint("TOPLEFT", frame, "TOPLEFT", 2, -(HEADER + 1 + (index - 1) * (height + 1)))
    bar:SetPoint("RIGHT", frame, "RIGHT", -2, 0)
    bar.icon:SetSize(height - 2, height - 2)
    return bar
end

function Window:VisibleBars()
    return math.max(1, math.floor((M.db.height - HEADER - 4) / (M.db.barHeight + 1)))
end

function Window:Scroll(delta)
    self.offset = math.max(0, (self.offset or 0) + delta)
    self:Refresh()
end

------------------------------------------------------------------------
-- Atualização
------------------------------------------------------------------------

function Window:Refresh()
    local frame = self.frame
    if not frame then
        return
    end
    local mode = Meter:Mode()
    frame.title:SetText(("%s - %s"):format(L[mode.label], Meter:SegmentLabel()))

    local available, reason = Meter:Available()
    local session = available and Meter:Session()
    local sources = session and session.combatSources or {}
    local count = #sources
    local visible = self:VisibleBars()
    self.offset = math.min(self.offset or 0, math.max(0, count - visible))

    if not available then
        frame.empty:SetText(L["UNAVAILABLE"]:format(tostring(reason)))
    else
        frame.empty:SetText(count == 0 and L["EMPTY"] or "")
    end
    frame.empty:SetShown(count == 0)

    local maxAmount = session and session.maxAmount
    local total = session and session.totalAmount
    local shown = 0
    for i = 1, visible do
        local source = sources[i + self.offset]
        if source then
            shown = i
            local bar = self:GetBar(i)
            bar.source = source
            local amount = source.totalAmount
            -- Barra proporcional ao primeiro colocado (aceita valores secretos).
            if maxAmount ~= nil and (M.IsSecret(maxAmount) or maxAmount > 0) then
                bar:SetMinMaxValues(0, maxAmount)
            else
                bar:SetMinMaxValues(0, 1)
            end
            bar:SetValue(amount or 0)
            local r, g, b = ClassColor(source.classFilename)
            bar:SetStatusBarColor(r, g, b, 0.85)
            local showIcon = M.db.specIcons and source.specIconID and source.specIconID ~= 0
            bar.icon:SetShown(showIcon and true or false)
            if showIcon then
                bar.icon:SetTexture(source.specIconID)
                bar.name:SetPoint("LEFT", bar.icon, "RIGHT", 3, 0)
            else
                bar.name:SetPoint("LEFT", bar, "LEFT", 4, 0)
            end
            local name = M.ShortName(source.name)
            if M.IsSecret(name) then
                bar.name:SetText(name)
            else
                bar.name:SetText(("%d. %s"):format(i + self.offset, name))
            end
            bar.value:SetText(ValueText(mode, amount, source.amountPerSecond, total))
            bar:Show()
        end
    end
    for i = shown + 1, #frame.bars do
        frame.bars[i]:Hide()
    end
    if self.breakdown:IsShown() then
        self:ShowBreakdown(self.breakdown.source)
    end
end

------------------------------------------------------------------------
-- Painel de feitiços
------------------------------------------------------------------------

function Window:CreateBreakdown()
    local panel = CreateFrame("Frame", "AzimuteMeterBreakdown", self.frame, "BackdropTemplate")
    Backdrop(panel, 0.92)
    panel:SetSize(260, 200)
    panel:SetPoint("TOPRIGHT", self.frame, "TOPLEFT", -4, 0)
    panel:EnableMouse(true)
    panel.title = panel:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    panel.title:SetPoint("TOPLEFT", 6, -6)
    panel.title:SetPoint("RIGHT", -24, 0)
    panel.title:SetJustifyH("LEFT")
    local close = CreateFrame("Button", nil, panel, "UIPanelCloseButton")
    close:SetSize(20, 20)
    close:SetPoint("TOPRIGHT", 0, 0)
    panel.message = panel:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
    panel.message:SetPoint("TOPLEFT", 6, -26)
    panel.message:SetPoint("RIGHT", -6, 0)
    panel.message:SetJustifyH("LEFT")
    panel.rows = {}
    panel:Hide()
    self.breakdown = panel
end

function Window:ShowBreakdown(source)
    local panel = self.breakdown
    if not source then
        panel:Hide()
        return
    end
    panel.source = source
    panel.title:SetText(L["BREAKDOWN_TITLE"]:format(M.ShortName(source.name)))
    local data, problem = Meter:Breakdown(source)
    local spells = data and data.combatSpells or {}
    panel.message:SetText(problem == "secret" and L["BREAKDOWN_SECRET"] or (#spells == 0 and L["BREAKDOWN_EMPTY"] or ""))
    panel.message:SetShown(#spells == 0)
    local mode = Meter:Mode()
    local maxRows = 10
    for i = 1, maxRows do
        local spell = spells[i]
        local row = panel.rows[i]
        if spell and not row then
            row = CreateFrame("StatusBar", nil, panel)
            row:SetStatusBarTexture(BAR_TEXTURE)
            row:SetStatusBarColor(GOLD[1], GOLD[2], GOLD[3], 0.6)
            row:SetHeight(16)
            row:SetPoint("TOPLEFT", panel, "TOPLEFT", 4, -(24 + (i - 1) * 17))
            row:SetPoint("RIGHT", panel, "RIGHT", -4, 0)
            row.icon = row:CreateTexture(nil, "OVERLAY")
            row.icon:SetSize(14, 14)
            row.icon:SetPoint("LEFT", 1, 0)
            row.value = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
            row.value:SetPoint("RIGHT", -3, 0)
            row.name = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
            row.name:SetPoint("LEFT", row.icon, "RIGHT", 3, 0)
            row.name:SetPoint("RIGHT", row.value, "LEFT", -4, 0)
            row.name:SetJustifyH("LEFT")
            row.name:SetWordWrap(false)
            panel.rows[i] = row
        end
        if row then
            if spell then
                local maxAmount = data.maxAmount
                if maxAmount ~= nil and (M.IsSecret(maxAmount) or maxAmount > 0) then
                    row:SetMinMaxValues(0, maxAmount)
                else
                    row:SetMinMaxValues(0, 1)
                end
                row:SetValue(spell.totalAmount or 0)
                local texture = C_Spell and C_Spell.GetSpellTexture and C_Spell.GetSpellTexture(spell.spellID)
                row.icon:SetTexture(texture or 134400)
                local name = C_Spell and C_Spell.GetSpellName and C_Spell.GetSpellName(spell.spellID)
                row.name:SetText(name or spell.creatureName or "?")
                row.value:SetText(ValueText(mode, spell.totalAmount, spell.amountPerSecond, data.totalAmount))
                row:Show()
            else
                row:Hide()
            end
        end
    end
    panel:SetHeight(30 + math.max(1, math.min(#spells, maxRows)) * 17)
    panel:Show()
end

------------------------------------------------------------------------
-- Menus (MenuUtil do 12.x; sem ele, alterna o modo no clique)
------------------------------------------------------------------------

function Window:OpenMenu(owner)
    if not (MenuUtil and MenuUtil.CreateContextMenu) then
        Meter:SetMode(M.db.modeIndex % #Meter.MODES + 1)
        return
    end
    MenuUtil.CreateContextMenu(owner, function(_, root)
        root:CreateTitle(L["MENU_MODE"])
        for index, mode in ipairs(Meter.MODES) do
            root:CreateRadio(L[mode.label], function() return M.db.modeIndex == index end, function()
                Meter:SetMode(index)
            end)
        end
        root:CreateDivider()
        root:CreateTitle(L["MENU_SEGMENT"])
        root:CreateRadio(L["SEG_CURRENT"], function() return M.db.segment == "current" end, function()
            Meter:SetSegment("current")
        end)
        root:CreateRadio(L["SEG_OVERALL"], function() return M.db.segment == "overall" end, function()
            Meter:SetSegment("overall")
        end)
        local fights = Meter:Sessions()
        if #fights > 0 then
            local submenu = root:CreateButton(L["SEG_FIGHTS"])
            for i = #fights, math.max(1, #fights - 14), -1 do
                local info = fights[i]
                local label = M.IsSecret(info.name) and ("#" .. i) or (info.name or ("#" .. i))
                if info.durationSeconds and not M.IsSecret(info.durationSeconds) then
                    label = ("%s (%d:%02d)"):format(label, math.floor(info.durationSeconds / 60), math.floor(info.durationSeconds % 60))
                end
                submenu:CreateRadio(label, function() return M.db.segment == info.sessionID end, function()
                    Meter:SetSegment(info.sessionID)
                end)
            end
        end
        root:CreateDivider()
        root:CreateCheckbox(L["LOCK"], function() return M.db.locked end, function()
            M.db.locked = not M.db.locked
            Window:ApplyLock()
        end)
        root:CreateButton(L["RESET"], function()
            Meter:Reset()
            M.Print(L["RESET_DONE"])
        end)
        root:CreateButton(L["OPTIONS"], function() M.Options:Open() end)
    end)
end

function Window:OpenReportMenu(owner)
    if not (MenuUtil and MenuUtil.CreateContextMenu) then
        Meter:Report(M.FindChannel(""))
        return
    end
    MenuUtil.CreateContextMenu(owner, function(_, root)
        root:CreateTitle(L["REPORT"])
        for _, channel in ipairs(Meter.CHANNELS) do
            root:CreateButton(L["REPORT_TO"]:format(L[channel.label]), function()
                Meter:Report(channel.key)
            end)
        end
    end)
end

------------------------------------------------------------------------
-- Visibilidade
------------------------------------------------------------------------

function Window:ApplyLock()
    if self.frame then
        self.frame.grip:SetShown(not M.db.locked)
    end
end

function Window:ShouldShow()
    local db = M.db
    if not db.shown then
        return false
    end
    if db.onlyInGroup and not ((IsInGroup and IsInGroup()) or (IsInRaid and IsInRaid())) then
        return false
    end
    if db.onlyInCombat then
        local recent = M.combatEndedAt and (GetTime() - M.combatEndedAt) < 10
        if not (M.inCombat or InCombatLockdown() or recent) then
            return false
        end
    end
    return true
end

function Window:UpdateVisibility()
    if self.frame then
        local show = self:ShouldShow()
        self.frame:SetShown(show)
        if show then
            self:Refresh()
        end
    end
end

function Window:Toggle()
    M.db.shown = not M.db.shown
    self:UpdateVisibility()
end

function Window:ApplyLayout()
    local frame = self.frame
    if frame then
        frame:SetScale(M.db.scale or 1)
        self:Refresh()
    end
end

M:On("INIT", function()
    Window:Create()
end)
M:On("LOGIN", function()
    Window:UpdateVisibility()
end)
M:On("UPDATE", function()
    if Window.frame and Window.frame:IsShown() then
        Window:Refresh()
    end
end)
M:On("VISIBILITY", function()
    Window:UpdateVisibility()
end)
