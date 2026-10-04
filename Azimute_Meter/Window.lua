-- Janela do medidor: título (modo + luta), barras por jogador e painel de
-- feitiços. Valores secretos (em combate) vão direto para SetText/SetValue.
local addonName, M = ...
local L = M.L
local Meter = M.Meter

-- Molde de janela: M.windows[1] é a principal (configuração em M.db) e
-- M.windows[2] a segunda, opcional (configuração em M.db.window2). Cada uma
-- tem modo, luta, posição e tamanho próprios.
local Window = {}
Window.__index = Window
M.WindowClass = Window
M.windows = {}

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

-- Valor por segundo. O campo amountPerSecond do jogo chega errado no Forever
-- (ex.: 104 de dano -> 0,00002/s, como se a luta durasse semanas), então,
-- com números liberados, calculamos total / duração da luta. Em combate
-- (secretos) só o modo DPS/HPS usa o valor do jogo; nos outros fica de fora.
local function PerSecond(mode, amount, rawPerSecond, duration)
    if amount ~= nil and not M.IsSecret(amount) and M.Positive(duration) then
        return amount / duration
    end
    if mode.perSecond == "primary" then
        return rawPerSecond
    end
    return nil
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

function Window:Create(suffix)
    self.suffix = suffix
    local db = self.cfg
    local frame = CreateFrame("Frame", "AzimuteMeterFrame" .. (suffix or ""), UIParent, "BackdropTemplate")
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
        self.cfg.point = { point, relativePoint, x, y }
    end)
    frame:SetScript("OnMouseWheel", function(_, delta)
        self:Scroll(-delta)
    end)
    frame:EnableMouseWheel(true)
    frame:SetScript("OnSizeChanged", function(f, width, height)
        self.cfg.width, self.cfg.height = math.floor(width + 0.5), math.floor(height + 0.5)
        self:Refresh()
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
        self:OpenMenu(button)
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
        self:OpenReportMenu(button)
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
                self:OpenMenu(frame.header)
            else
                self:ShowBreakdown(self.source)
            end
        end)
        bar:SetScript("OnEnter", function(self)
            self:BarTooltip(self)
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

-- Enquanto houver número "lacrado" na tela, redesenha a cada segundo até o
-- jogo liberar (pode demorar alguns segundos depois do combate).
function Window:WatchSecrets(hasSecret)
    if hasSecret and not self.secretTicker then
        self.secretTicker = C_Timer.NewTicker(1, function()
            if self.frame:IsShown() and not InCombatLockdown() then
                self:Refresh()
            end
        end)
    elseif not hasSecret and self.secretTicker then
        self.secretTicker:Cancel()
        self.secretTicker = nil
    end
end

function Window:VisibleBars()
    return math.max(1, math.floor((self.cfg.height - HEADER - 4) / (M.db.barHeight + 1)))
end

function Window:Scroll(delta)
    self.offset = math.max(0, (self.offset or 0) + delta)
    self:Refresh()
end

------------------------------------------------------------------------
-- Atualização
------------------------------------------------------------------------

function Window:Refresh()
    Meter.view = self.cfg
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
    local duration = session and Meter:Duration(session)
    local hasSecret = M.IsSecret(maxAmount) or M.IsSecret(total)
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
            bar.value:SetText(ValueText(mode, amount, PerSecond(mode, amount, source.amountPerSecond, duration), total))
            hasSecret = hasSecret or M.IsSecret(amount) or M.IsSecret(source.name)
            bar:Show()
        end
    end
    for i = shown + 1, #frame.bars do
        frame.bars[i]:Hide()
    end
    self:WatchSecrets(hasSecret)
    if self.breakdown:IsShown() then
        self:ShowBreakdown(self.breakdown.source)
    end
end

------------------------------------------------------------------------
-- Painel de detalhes: feitiços, alvos (dano em cada monstro) e, no modo
-- Mortes, o recap da morte (o que acertou e com quanta vida).
------------------------------------------------------------------------

local ROW_HEIGHT = 16
local MAX_ROWS = 12
local RED, ORANGE = { 0.9, 0.2, 0.2 }, { 1, 0.55, 0.1 }

function Window:CreateBreakdown()
    local panel = CreateFrame("Frame", "AzimuteMeterBreakdown" .. (self.suffix or ""), self.frame, "BackdropTemplate")
    Backdrop(panel, 0.92)
    panel:SetSize(280, 200)
    panel:SetPoint("TOPRIGHT", self.frame, "TOPLEFT", -4, 0)
    panel:EnableMouse(true)
    panel.title = panel:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    panel.title:SetPoint("TOPLEFT", 6, -6)
    panel.title:SetPoint("RIGHT", -90, 0)
    panel.title:SetJustifyH("LEFT")
    panel.title:SetWordWrap(false)
    local close = CreateFrame("Button", nil, panel, "UIPanelCloseButton")
    close:SetSize(20, 20)
    close:SetPoint("TOPRIGHT", 0, 0)
    -- alterna feitiços / alvos (modos de dano) ou abre o recap do jogo (Mortes)
    panel.toggle = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
    panel.toggle:SetSize(70, 18)
    panel.toggle:SetPoint("TOPRIGHT", close, "TOPLEFT", -2, -1)
    panel.toggle:SetScript("OnClick", function()
        if panel.view == "death" then
            local id = panel.source and panel.source.deathRecapID
            if id and OpenDeathRecapUI then
                OpenDeathRecapUI(id)
            end
            return
        end
        panel.view = panel.view == "targets" and "spells" or "targets"
        self:ShowBreakdown(panel.source)
    end)
    panel.message = panel:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
    panel.message:SetPoint("TOPLEFT", 6, -28)
    panel.message:SetPoint("RIGHT", -6, 0)
    panel.message:SetJustifyH("LEFT")
    panel.rows = {}
    panel.view = "spells"
    panel:Hide()
    self.breakdown = panel
end

function Window:BreakdownRow(i)
    local panel = self.breakdown
    local row = panel.rows[i]
    if not row then
        row = CreateFrame("StatusBar", nil, panel)
        row:SetStatusBarTexture(BAR_TEXTURE)
        row:SetHeight(ROW_HEIGHT)
        row:SetPoint("TOPLEFT", panel, "TOPLEFT", 4, -(26 + (i - 1) * (ROW_HEIGHT + 1)))
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
    return row
end

-- entries = { { icon, name, value, amount, max, color } }
function Window:FillBreakdown(entries, message)
    local panel = self.breakdown
    panel.message:SetText(message or "")
    panel.message:SetShown(#entries == 0)
    for i = 1, MAX_ROWS do
        local entry = entries[i]
        if entry then
            local row = self:BreakdownRow(i)
            local maxAmount = entry.max
            if maxAmount ~= nil and (M.IsSecret(maxAmount) or maxAmount > 0) then
                row:SetMinMaxValues(0, maxAmount)
            else
                row:SetMinMaxValues(0, 1)
            end
            row:SetValue(entry.amount or 0)
            local color = entry.color or GOLD
            row:SetStatusBarColor(color[1], color[2], color[3], 0.6)
            row.icon:SetTexture(entry.icon or 134400)
            row.name:SetText(entry.name or "?")
            row.value:SetText(entry.value or "")
            row:Show()
        elseif panel.rows[i] then
            panel.rows[i]:Hide()
        end
    end
    panel:SetHeight(34 + math.max(1, math.min(#entries, MAX_ROWS)) * (ROW_HEIGHT + 1))
end

local DAMAGE_TYPES = { [Meter.TYPE.DamageDone] = true, [Meter.TYPE.Dps] = true }
local TAKEN_TYPES = { [Meter.TYPE.DamageTaken] = true, [Meter.TYPE.AvoidableDamageTaken] = true }

local function ProblemText(problem)
    if problem == "secret" then
        return L["BREAKDOWN_SECRET"]
    elseif problem == "saved" then
        return L["BREAKDOWN_SAVED"]
    end
    return L["BREAKDOWN_EMPTY"]
end

local function SpellEntries(source, mode)
    local data, problem = Meter:Breakdown(source)
    if not data then
        return {}, ProblemText(problem)
    end
    local entries = {}
    local duration = Meter:Duration(Meter:Session())
    for _, spell in ipairs(data.combatSpells or {}) do
        local texture = C_Spell and C_Spell.GetSpellTexture and C_Spell.GetSpellTexture(spell.spellID)
        local name = C_Spell and C_Spell.GetSpellName and C_Spell.GetSpellName(spell.spellID)
        local color
        -- dano sofrido: o que dava para evitar em laranja, o que é mortal em vermelho
        if TAKEN_TYPES[mode.type] then
            if spell.isDeadly == true then
                color = RED
            elseif spell.isAvoidable == true then
                color = ORANGE
            end
        end
        entries[#entries + 1] = {
            icon = texture, name = name or spell.creatureName or "?", amount = spell.totalAmount, max = data.maxAmount,
            value = ValueText(mode, spell.totalAmount, PerSecond(mode, spell.totalAmount, spell.amountPerSecond, duration), data.totalAmount),
            color = color,
        }
    end
    return entries, #entries == 0 and L["BREAKDOWN_EMPTY"] or nil
end

local function TargetEntries(source)
    local targets, problem = Meter:Targets(source)
    if not targets then
        return {}, ProblemText(problem)
    end
    local entries = {}
    local top = targets[1] and targets[1].amount or 0
    for _, target in ipairs(targets) do
        entries[#entries + 1] = { icon = 136243, name = target.name, amount = target.amount, max = top, value = M.Abbrev(target.amount) }
    end
    return entries, #entries == 0 and L["BREAKDOWN_EMPTY"] or nil
end

local function DeathEntries(source)
    local events, maxHealth = Meter:DeathRecap(source)
    if not events then
        return {}, L["DEATH_NONE"]
    end
    local entries = {}
    for _, event in ipairs(events) do
        local percent = (maxHealth and maxHealth > 0 and event.hp) and ("%d%%"):format(event.hp / maxHealth * 100) or ""
        entries[#entries + 1] = {
            icon = event.icon, name = event.source and ("%s |cff999999(%s)|r"):format(event.spell, event.source) or event.spell,
            amount = event.amount or 0, max = maxHealth, value = ("-%s  %s"):format(M.Abbrev(event.amount or 0), percent),
            color = event.killing and RED or nil,
        }
    end
    return entries
end

function Window:ShowBreakdown(source)
    Meter.view = self.cfg
    local panel = self.breakdown
    if not source then
        panel:Hide()
        return
    end
    panel.source = source
    local mode = Meter:Mode()
    local name = M.ShortName(source.name)
    if mode.type == Meter.TYPE.Deaths then
        panel.view = "death"
    elseif panel.view == "death" or (panel.view == "targets" and not DAMAGE_TYPES[mode.type]) then
        panel.view = "spells"
    end
    local entries, message
    if panel.view == "death" then
        panel.title:SetText(L["DEATH_TITLE"]:format(name))
        panel.toggle:SetText(L["DEATH_GAME_RECAP"])
        panel.toggle:SetShown(source.deathRecapID ~= nil and OpenDeathRecapUI ~= nil)
        entries, message = DeathEntries(source)
    elseif panel.view == "targets" then
        panel.title:SetText(L["TARGETS_TITLE"]:format(name))
        panel.toggle:SetText(L["VIEW_SPELLS"])
        panel.toggle:Show()
        entries, message = TargetEntries(source)
    else
        panel.title:SetText(L["BREAKDOWN_TITLE"]:format(name))
        panel.toggle:SetText(L["VIEW_TARGETS"])
        panel.toggle:SetShown(DAMAGE_TYPES[mode.type] and true or false)
        entries, message = SpellEntries(source, mode)
    end
    self:FillBreakdown(entries, message)
    panel:Show()
end

-- Dica ao passar o mouse na barra: os 3 feitiços principais (depois do combate).
function Window:BarTooltip(bar)
    Meter.view = self.cfg
    local source = bar.source
    GameTooltip:SetOwner(bar, "ANCHOR_LEFT")
    local name = M.ShortName(source and source.name)
    GameTooltip:SetText(M.IsSecret(name) and L["TITLE"] or name)
    local data = source and Meter:Breakdown(source)
    local total = data and data.totalAmount
    if data and M.Positive(total) then
        for i = 1, math.min(3, #(data.combatSpells or {})) do
            local spell = data.combatSpells[i]
            local spellName = C_Spell and C_Spell.GetSpellName and C_Spell.GetSpellName(spell.spellID) or spell.creatureName or "?"
            if not M.IsSecret(spell.totalAmount) and not M.IsSecret(spellName) then
                GameTooltip:AddDoubleLine(spellName, ("%s (%.0f%%)"):format(M.Abbrev(spell.totalAmount), 100 * spell.totalAmount / total), 1, 1, 1, 1, 1, 1)
            end
        end
    end
    GameTooltip:AddLine(L["CLICK_HINT"], 0.7, 0.7, 0.7)
    GameTooltip:Show()
end

------------------------------------------------------------------------
-- Menus (MenuUtil do 12.x; sem ele, alterna o modo no clique)
------------------------------------------------------------------------

function Window:OpenMenu(owner)
    if not (MenuUtil and MenuUtil.CreateContextMenu) then
        Meter:SetMode(self.cfg.modeIndex % #Meter.MODES + 1, self.cfg)
        return
    end
    MenuUtil.CreateContextMenu(owner, function(_, root)
        root:CreateTitle(L["MENU_MODE"])
        for index, mode in ipairs(Meter.MODES) do
            root:CreateRadio(L[mode.label], function() return self.cfg.modeIndex == index end, function()
                Meter:SetMode(index, self.cfg)
            end)
        end
        root:CreateDivider()
        root:CreateTitle(L["MENU_SEGMENT"])
        root:CreateRadio(L["SEG_CURRENT"], function() return self.cfg.segment == "current" end, function()
            Meter:SetSegment("current", self.cfg)
        end)
        root:CreateRadio(L["SEG_OVERALL"], function() return self.cfg.segment == "overall" end, function()
            Meter:SetSegment("overall", self.cfg)
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
                submenu:CreateRadio(label, function() return self.cfg.segment == info.sessionID end, function()
                    Meter:SetSegment(info.sessionID, self.cfg)
                end)
            end
        end
        local saved = M.db.history or {}
        if #saved > 0 then
            local submenu = root:CreateButton(L["SEG_SAVED"])
            for index, fight in ipairs(saved) do
                local segment = "saved:" .. index
                local ago = math.floor((time() - (fight.time or time())) / 60)
                local label = ("%s (%d:%02d) - %s"):format(fight.zone or "?", math.floor((fight.duration or 0) / 60),
                    math.floor((fight.duration or 0) % 60), L["AGO_MIN"]:format(ago))
                submenu:CreateRadio(label, function() return self.cfg.segment == segment end, function()
                    Meter:SetSegment(segment, self.cfg)
                end)
            end
        end
        root:CreateDivider()
        root:CreateCheckbox(L["LOCK"], function() return M.db.locked end, function()
            M.db.locked = not M.db.locked
            self:ApplyLock()
        end)
        root:CreateButton(L["RESET"], function()
            Meter:Reset()
            M.Print(L["RESET_DONE"])
        end)
        root:CreateButton(L["OPTIONS"], function() M.Options:Open() end)
    end)
end

function Window:OpenReportMenu(owner)
    Meter.view = self.cfg
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
    if not self.cfg.shown or (self == M.Window2 and not db.secondWindow) then
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
    self.cfg.shown = not self.cfg.shown
    self:UpdateVisibility()
end

function Window:ApplyLayout()
    local frame = self.frame
    if frame then
        frame:SetScale(M.db.scale or 1)
        self:Refresh()
    end
end

local function New(cfg, suffix)
    local window = setmetatable({ cfg = cfg }, Window)
    window:Create(suffix)
    M.windows[#M.windows + 1] = window
    return window
end

local function Each(method, ...)
    for _, window in ipairs(M.windows) do
        window[method](window, ...)
    end
end
M.EachWindow = Each

M:On("INIT", function()
    -- a principal usa os campos de M.db; a segunda, M.db.window2
    M.Window = New(M.db, "")
    M.Window2 = New(M.db.window2, "2")
end)
M:On("LOGIN", function()
    Each("UpdateVisibility")
end)
M:On("UPDATE", function()
    for _, window in ipairs(M.windows) do
        if window.frame and window.frame:IsShown() then
            window:Refresh()
        end
    end
end)
M:On("VISIBILITY", function()
    Each("UpdateVisibility")
end)
