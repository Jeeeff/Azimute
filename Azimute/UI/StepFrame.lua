-- Janela do passo atual: nome do guia, barra de progresso, objetivos (com
-- ícone por tipo) e botões. Modo compacto: as dicas ficam atrás do ícone "i".
local addonName, ns = ...
local L = ns.L

local UI = {}
ns.UI = UI

local WIDTH = 340
local PADDING = 10
local HEADER_HEIGHT = 30
local LINE_SPACING = 3
local ICON_SIZE = 14
local HIGHLIGHT = "|cffffd100%s|r"
local GOLD = { 0.85, 0.68, 0.25 }

-- Ícone de cada tipo de objetivo (texturas do próprio jogo).
local TYPE_ICONS = {
    accept = "Interface\\GossipFrame\\AvailableQuestIcon",
    turnin = "Interface\\GossipFrame\\ActiveQuestIcon",
    complete = "Interface\\GossipFrame\\ActiveQuestIcon",
    talk = "Interface\\GossipFrame\\GossipGossipIcon",
    kill = "Interface\\Icons\\Ability_DualWield",
    objective = "Interface\\Icons\\INV_Misc_Note_01",
    ["goto"] = "Interface\\Icons\\INV_Misc_Map_01",
    path = "Interface\\Icons\\INV_Misc_Map_01",
    level = "Interface\\Icons\\Spell_ChargePositive",
    collect = "Interface\\Icons\\INV_Misc_Bag_08",
    train = "Interface\\Icons\\INV_Misc_Book_07",
    use = "Interface\\Icons\\INV_Misc_Gear_01",
    fly = "Interface\\TaxiFrame\\UI-Taxi-Icon-Green",
    fp = "Interface\\TaxiFrame\\UI-Taxi-Icon-Green",
    zone = "Interface\\Icons\\INV_Misc_Map_01",
    skill = "Interface\\Icons\\Trade_Herbalism",
    abandon = "Interface\\RaidFrame\\ReadyCheck-NotReady",
    vendor = "Interface\\GossipFrame\\VendorGossipIcon",
    trainer = "Interface\\GossipFrame\\TrainerGossipIcon",
    home = "Interface\\Icons\\INV_Misc_Rune_01",
    hearth = "Interface\\Icons\\INV_Misc_Rune_01",
}
local ICON_DONE = "Interface\\RaidFrame\\ReadyCheck-Ready"
local ICON_ROUTE = "Interface\\TaxiFrame\\UI-Taxi-Icon-Green"
local ICON_TRAINER = "Interface\\Icons\\INV_Misc_Book_07"
local ICON_CORPSE = "Interface\\TargetingFrame\\UI-TargetingFrame-Skull"
local ICON_INFO = "Interface\\FriendsFrame\\InformationIcon"

------------------------------------------------------------------------
-- Texto de cada objetivo (nomes vêm do cliente, no idioma do jogo)
------------------------------------------------------------------------

local function QuestName(questID)
    return HIGHLIGHT:format(ns.Names.Quest(questID) or L["QUEST_FALLBACK"]:format(questID))
end

local function NPCName(npcID)
    return HIGHLIGHT:format(ns.Names.NPC(npcID) or L["NPC_FALLBACK"]:format(npcID))
end

-- Texto do objetivo da quest ("Kobold Vermin slain: 3/10"), já traduzido.
local function ObjectiveText(objective)
    local objectives = C_QuestLog.GetQuestObjectives(objective.questID)
    local data = objectives and objectives[objective.index]
    local text = data and data.text
    if text and not ns.IsSecret(text) and text ~= "" then
        return text
    end
end

local GOAL_TEXT = {
    accept = function(goal)
        return L["GOAL_ACCEPT"]:format(QuestName(goal.questID))
    end,
    turnin = function(goal)
        return L["GOAL_TURNIN"]:format(QuestName(goal.questID))
    end,
    complete = function(goal)
        return L["GOAL_COMPLETE"]:format(QuestName(goal.questID))
    end,
    talk = function(goal)
        return L["GOAL_TALK"]:format(NPCName(goal.npcID))
    end,
    kill = function(goal)
        return (goal.objective and ObjectiveText(goal.objective))
            or L["GOAL_KILL"]:format(NPCName(goal.npcID))
    end,
    objective = function(goal)
        local objective = goal.objective
        return ObjectiveText(objective)
            or L["GOAL_OBJECTIVE"]:format(objective.index, QuestName(objective.questID))
    end,
    ["goto"] = function(goal)
        local text = L["GOAL_GOTO"]:format(ns.Names.Zone(goal.mapID), goal.x * 100, goal.y * 100)
        if goal.poi then
            text = text .. " |cff999999" .. L["FOCUS_POI"] .. "|r"
        end
        return text
    end,
    path = function(goal)
        if goal.mode == "loop" then
            return L["GOAL_LOOP"]
        end
        return L["GOAL_PATH"]:format(math.min(goal.index or 1, #goal.points), #goal.points)
    end,
    level = function(goal)
        return L["GOAL_LEVEL"]:format(goal.level)
    end,
    collect = function(goal)
        local name = ns.Names.Item(goal.itemID) or L["ITEM_FALLBACK"]:format(goal.itemID)
        return L["GOAL_COLLECT"]:format(goal.count, HIGHLIGHT:format(name))
    end,
    train = function(goal)
        local name = ns.Names.Spell(goal.spellID) or L["SPELL_FALLBACK"]:format(goal.spellID)
        return L["GOAL_TRAIN"]:format(HIGHLIGHT:format(name))
    end,
    use = function(goal)
        local name = ns.Names.Item(goal.itemID) or L["ITEM_FALLBACK"]:format(goal.itemID)
        return L["GOAL_USE"]:format(HIGHLIGHT:format(name))
    end,
    fly = function(goal)
        return L["GOAL_FLY"]:format(HIGHLIGHT:format(ns.Names.Zone(goal.mapID)))
    end,
    zone = function(goal)
        return L["GOAL_ZONE"]:format(HIGHLIGHT:format(ns.Names.Zone(goal.mapID)))
    end,
    skill = function(goal)
        local name = L["PROFESSION_" .. goal.skillLine]
        return L["GOAL_SKILL"]:format(HIGHLIGHT:format(name), goal.level,
            ns.Engine.ProfessionSkill(goal.skillLine), goal.level)
    end,
    abandon = function(goal)
        return L["GOAL_ABANDON"]:format(QuestName(goal.questID))
    end,
    vendor = function()
        return L["GOAL_VENDOR"]
    end,
    trainer = function()
        return L["GOAL_TRAINER"]
    end,
    fp = function()
        return L["GOAL_FP"]
    end,
    home = function()
        return L["GOAL_HOME"]
    end,
    hearth = function()
        return L["GOAL_HEARTH"]
    end,
    note = function(goal)
        return goal.text
    end,
}

-- Objetivos que sozinhos não explicam o passo (as dicas continuam visíveis).
local QUIET_GOALS = { note = true, ["goto"] = true, path = true, zone = true }

-- Mapa do objetivo (para abrir o mapa-múndi ao clicar), se houver.
local function GoalMap(goal)
    if goal.type == "goto" or goal.type == "path" or goal.type == "fly" or goal.type == "zone" then
        return goal.mapID
    end
end

-- Linha de objetivo: { icon, text, done, goal }
local function GoalEntry(goal)
    local text = GOAL_TEXT[goal.type](goal)
    if goal.optional then
        text = text .. " |cff999999" .. L["OPTIONAL"] .. "|r"
    end
    local done = ns.Engine:IsGoalDone(goal)
    if goal.type == "goto" or goal.type == "path" then
        done = goal.reached == true or nil
    end
    if ns.Engine:IsMarked(goal) then
        text = text .. " |cff999999" .. L["UI_MARKED"] .. "|r"
    end
    return { icon = TYPE_ICONS[goal.type], text = text, done = done, map = GoalMap(goal),
        goal = ns.Engine:CanMark(goal) and goal or nil }
end

-- Linhas do modo "missão selecionada": navegação + objetivos do cliente.
local function FocusEntries(questID)
    local entries = {}
    for _, goal in ipairs(ns.Focus.goals) do
        entries[#entries + 1] = { icon = TYPE_ICONS[goal.type], text = GOAL_TEXT[goal.type](goal),
            done = goal.reached == true or nil, map = GoalMap(goal) }
    end
    for _, data in ipairs(C_QuestLog.GetQuestObjectives(questID) or {}) do
        local text = data.text
        if text and not ns.IsSecret(text) and text ~= "" then
            entries[#entries + 1] = { icon = TYPE_ICONS.objective, text = text, done = data.finished == true }
        end
    end
    if C_QuestLog.ReadyForTurnIn(questID) == true then
        entries[#entries + 1] = { icon = TYPE_ICONS.turnin, text = L["GOAL_TURNIN"]:format(QuestName(questID)), done = false }
    end
    return entries
end

------------------------------------------------------------------------
-- Frame
------------------------------------------------------------------------

local function IconButton(parent, texture, size, onClick, tooltip)
    local button = CreateFrame("Button", nil, parent)
    button:SetSize(size, size)
    button:SetNormalTexture(texture)
    button:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")
    button:SetScript("OnClick", onClick)
    if tooltip then
        button:SetScript("OnEnter", function(self)
            GameTooltip:SetOwner(self, "ANCHOR_TOP")
            GameTooltip:SetText(type(tooltip) == "function" and tooltip() or tooltip)
            GameTooltip:Show()
        end)
        button:SetScript("OnLeave", function()
            GameTooltip:Hide()
        end)
    end
    return button
end

local function CreatePageButton(parent, direction, onClick)
    local button = CreateFrame("Button", nil, parent)
    button:SetSize(20, 20)
    local base = "Interface\\Buttons\\UI-SpellbookIcon-" .. direction .. "Page-"
    button:SetNormalTexture(base .. "Up")
    button:SetPushedTexture(base .. "Down")
    button:SetDisabledTexture(base .. "Disabled")
    button:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight", "ADD")
    button:SetScript("OnClick", onClick)
    return button
end

function UI:Create()
    local frame = CreateFrame("Frame", "AzimuteMainFrame", UIParent, "BackdropTemplate")
    frame:SetSize(WIDTH, 80)
    frame:SetFrameStrata("MEDIUM")
    -- Fundo escuro liso com borda fina dourada.
    frame:SetBackdrop({
        bgFile = "Interface\\Buttons\\WHITE8x8",
        edgeFile = "Interface\\Buttons\\WHITE8x8",
        edgeSize = 1,
    })
    frame:SetBackdropColor(0.04, 0.04, 0.06, 0.88)
    frame:SetBackdropBorderColor(GOLD[1], GOLD[2], GOLD[3], 0.45)

    -- Faixa do título.
    frame.header = frame:CreateTexture(nil, "BACKGROUND", nil, 1)
    frame.header:SetPoint("TOPLEFT", 1, -1)
    frame.header:SetPoint("TOPRIGHT", -1, -1)
    frame.header:SetHeight(HEADER_HEIGHT - 5)
    frame.header:SetColorTexture(1, 1, 1, 0.05)

    -- Barra fina de progresso do guia.
    frame.progress = CreateFrame("StatusBar", nil, frame)
    frame.progress:SetPoint("TOPLEFT", frame.header, "BOTTOMLEFT", 0, 0)
    frame.progress:SetPoint("TOPRIGHT", frame.header, "BOTTOMRIGHT", 0, 0)
    frame.progress:SetHeight(2)
    frame.progress:SetStatusBarTexture("Interface\\Buttons\\WHITE8x8")
    frame.progress:SetStatusBarColor(GOLD[1], GOLD[2], GOLD[3], 0.9)
    frame.progress:SetMinMaxValues(0, 1)
    frame.progress.bg = frame.progress:CreateTexture(nil, "BACKGROUND")
    frame.progress.bg:SetAllPoints()
    frame.progress.bg:SetColorTexture(1, 1, 1, 0.08)

    -- Brilho verde rápido quando um passo é concluído.
    frame.flash = frame:CreateTexture(nil, "OVERLAY")
    frame.flash:SetAllPoints()
    frame.flash:SetColorTexture(0.2, 1, 0.3, 0.25)
    frame.flash:SetAlpha(0)
    frame.flashAnim = frame.flash:CreateAnimationGroup()
    local fadeIn = frame.flashAnim:CreateAnimation("Alpha")
    fadeIn:SetFromAlpha(0)
    fadeIn:SetToAlpha(1)
    fadeIn:SetDuration(0.15)
    fadeIn:SetOrder(1)
    local fadeOut = frame.flashAnim:CreateAnimation("Alpha")
    fadeOut:SetFromAlpha(1)
    fadeOut:SetToAlpha(0)
    fadeOut:SetDuration(0.5)
    fadeOut:SetOrder(2)

    frame.nextButton = CreatePageButton(frame, "Next", function()
        ns.Engine:Next()
    end)
    frame.nextButton:SetPoint("TOPRIGHT", -4, -3)
    frame.prevButton = CreatePageButton(frame, "Prev", function()
        ns.Engine:Prev()
    end)
    frame.prevButton:SetPoint("RIGHT", frame.nextButton, "LEFT", 0, 0)

    -- Sai do modo "missão selecionada" e volta ao guia.
    frame.focusClose = CreateFrame("Button", nil, frame, "UIPanelCloseButton")
    frame.focusClose:SetSize(22, 22)
    frame.focusClose:SetPoint("TOPRIGHT", -2, -2)
    frame.focusClose:SetScript("OnClick", function()
        if ns.Nav:Manual() then
            ns.Nav:ClearManual()
        else
            ns.Focus:Stop()
        end
    end)
    frame.focusClose:Hide()

    frame.collapseButton = IconButton(frame, "Interface\\Buttons\\UI-MinusButton-Up", 14, function()
        ns.db.collapsed = not ns.db.collapsed
        UI:Refresh()
    end, function()
        return ns.db.collapsed and L["UI_EXPAND"] or L["UI_COLLAPSE"]
    end)
    frame.collapseButton:SetPoint("RIGHT", frame.prevButton, "LEFT", -3, 0)

    frame.pickerButton = IconButton(frame, "Interface\\Icons\\INV_Misc_Book_09", 16, function()
        ns.GuidePicker:Toggle()
    end, L["PICKER_BUTTON"])
    frame.pickerButton:SetPoint("RIGHT", frame.collapseButton, "LEFT", -4, 0)

    -- Reportar problema no passo atual (abre um texto para copiar e colar).
    frame.reportButton = IconButton(frame, "Interface\\Icons\\INV_Misc_Bug_01", 16, function()
        ns.Report:Open()
    end, function()
        local guide = ns.Engine.guide
        local tip = L["REPORT_BUTTON"]
        if guide and guide.status == "experimental" then
            tip = tip .. "\n|cffff9933" .. L["STATUS_EXP_TIP"] .. "|r"
        end
        return tip
    end)
    frame.reportButton:SetPoint("RIGHT", frame.pickerButton, "LEFT", -4, 0)

    -- Modo compacto: as dicas do passo ficam aqui (passe o mouse).
    frame.infoButton = IconButton(frame, ICON_INFO, 16, nil, nil)
    frame.infoButton:SetPoint("RIGHT", frame.reportButton, "LEFT", -4, 0)
    frame.infoButton:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
        GameTooltip:SetText(L["UI_TIPS"])
        for _, note in ipairs(UI.hiddenNotes or {}) do
            GameTooltip:AddLine(note, 1, 1, 1, true)
        end
        GameTooltip:Show()
    end)
    frame.infoButton:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)

    frame.counter = frame:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
    frame.counter:SetPoint("RIGHT", frame.infoButton, "LEFT", -4, 0)

    frame.title = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    frame.title:SetPoint("TOPLEFT", PADDING, -8)
    frame.title:SetPoint("RIGHT", frame.counter, "LEFT", -6, 0)
    frame.title:SetJustifyH("LEFT")
    frame.title:SetWordWrap(false)

    frame.rows = {}
    frame.lines = {} -- textos das linhas (usado também pelos testes)
    ns.MakeMovable(frame, "point")
    frame:SetScale(ns.db.scale or 1)
    frame:SetShown(ns.db.shown)
    self.frame = frame

    -- Transparência quando o mouse não está em cima (opcional).
    C_Timer.NewTicker(0.2, function()
        UI:UpdateAlpha()
    end)
end

function UI:UpdateAlpha()
    local frame = self.frame
    if not frame or not frame:IsShown() then
        return
    end
    local over = frame.IsMouseOver and frame:IsMouseOver()
    local alpha = (ns.db.fadeOut and not over) and (ns.db.fadeAlpha or 0.55) or 1
    frame:SetAlpha(alpha)
end

-- Linha reutilizável: ícone + texto, clicável (abre o mapa) e com dica.
function UI:GetRow(index)
    local frame = self.frame
    local row = frame.rows[index]
    if not row then
        row = CreateFrame("Button", nil, frame)
        row.icon = row:CreateTexture(nil, "ARTWORK")
        row.icon:SetSize(ICON_SIZE, ICON_SIZE)
        row.icon:SetPoint("TOPLEFT", 0, 0)
        row.text = row:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
        row.text:SetPoint("TOPLEFT", ICON_SIZE + 5, 0)
        row.text:SetWidth(WIDTH - 2 * PADDING - ICON_SIZE - 5)
        row.text:SetJustifyH("LEFT")
        row.text:SetWordWrap(true)
        row:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
        row:SetScript("OnEnter", function(self)
            if self.onEnter then
                self.onEnter(self)
            end
        end)
        row:SetScript("OnLeave", function()
            GameTooltip:Hide()
        end)
        -- Arrastar pela linha move a janela inteira.
        row:RegisterForDrag("LeftButton")
        row:SetScript("OnDragStart", function()
            frame:GetScript("OnDragStart")(frame)
        end)
        row:SetScript("OnDragStop", function()
            frame:GetScript("OnDragStop")(frame)
        end)
        row:RegisterForClicks("LeftButtonUp", "RightButtonUp")
        row:SetScript("OnClick", function(self, button)
            if button == "RightButton" then
                if self.goal then
                    ns.Engine:ToggleMark(self.goal)
                end
            elseif self.map and OpenWorldMap then
                OpenWorldMap(self.map)
            end
        end)
        frame.rows[index] = row
        frame.lines[index] = row.text
    end
    row:ClearAllPoints()
    if index == 1 then
        row:SetPoint("TOPLEFT", PADDING, -(HEADER_HEIGHT + 2))
    else
        row:SetPoint("TOPLEFT", frame.rows[index - 1], "BOTTOMLEFT", 0, -LINE_SPACING)
    end
    row:SetWidth(WIDTH - 2 * PADDING)
    return row
end

-- Dica da linha: o que o clique esquerdo e o direito fazem.
local function RowTooltip(row)
    GameTooltip:SetOwner(row, "ANCHOR_RIGHT")
    if row.map then
        GameTooltip:AddLine(L["UI_OPEN_MAP"], 1, 1, 1)
    end
    if row.goal then
        GameTooltip:AddLine(ns.Engine:IsMarked(row.goal) and L["UI_UNMARK"] or L["UI_MARK"], 1, 1, 1)
    end
    GameTooltip:Show()
end

local function TrainerTooltip(row)
    GameTooltip:SetOwner(row, "ANCHOR_RIGHT")
    ns.Trainer:FillTooltip(GameTooltip)
    GameTooltip:Show()
end

function UI:Refresh()
    local frame = self.frame
    if not frame then
        return
    end
    local Engine = ns.Engine
    local guide = Engine.guide
    local entries = {}
    local notes = {}
    local focus = ns.Focus and ns.Focus:IsActive()
    local compact = ns.db.compactNotes

    -- Rota sugerida (voo/barco/zepelim/pedra) e treino aparecem no topo.
    -- Morto: a janela avisa que a seta está levando ao corpo (a rota fica para depois).
    local corpse = ns.Corpse and ns.Corpse:IsGuiding()
    local route = not corpse and ns.Router and ns.Router:Instruction()
    if corpse then
        entries[#entries + 1] = { icon = ICON_CORPSE, text = "|cff99ccff" .. L["CORPSE_LINE"] .. "|r" }
    elseif route then
        entries[#entries + 1] = { icon = ICON_ROUTE, text = "|cff66ccff" .. route .. "|r" }
    end
    local training = ns.Trainer and ns.Trainer:Line()
    if training then
        entries[#entries + 1] = { icon = ICON_TRAINER, text = "|cffc0a0ff" .. training .. "|r", onEnter = TrainerTooltip, trainer = true }
    end

    local progress = 0
    local manual = ns.Nav and ns.Nav:Manual()
    if manual then
        -- Destino avulso (ex.: missão de masmorra escolhida no painel).
        frame.title:SetText(L["MANUAL_TITLE"]:format(manual.info.title or L["MANUAL_POINT"]))
        frame.counter:SetText("")
        entries[#entries + 1] = { icon = TYPE_ICONS["goto"], map = manual.mapID,
            text = L["GOAL_GOTO"]:format(ns.Names.Zone(manual.mapID), manual.x * 100, manual.y * 100) }
        for _, line in ipairs(manual.info.lines or {}) do
            entries[#entries + 1] = { icon = TYPE_ICONS.talk, text = line }
        end
    elseif focus then
        local questID = ns.Focus.questID
        frame.title:SetText(L["FOCUS_TITLE"]:format(ns.Names.Quest(questID) or L["QUEST_FALLBACK"]:format(questID)))
        frame.counter:SetText("")
        for _, entry in ipairs(FocusEntries(questID)) do
            entries[#entries + 1] = entry
        end
    elseif not guide then
        frame.title:SetText(addonName)
        frame.counter:SetText("")
        entries[#entries + 1] = { text = L["NO_GUIDE"] }
    else
        local tag = ns.Registry.StatusTag(guide)
        frame.title:SetText((tag ~= "" and (tag .. " ") or "") .. ns.Registry.DisplayName(guide))
        local step = Engine:CurrentStep()
        progress = math.min(1, (Engine.stepIndex - 1) / math.max(1, #guide.steps))
        if step then
            frame.counter:SetText(L["STEP_COUNTER"]:format(Engine.stepIndex, #guide.steps))
            -- Revendo um passo já feito (navegou com ◀/▶): deixa isso claro.
            if Engine.hold and Engine:IsCurrentStepComplete() then
                entries[#entries + 1] = { icon = ICON_DONE, text = "|cff33ff99" .. L["STEP_ALREADY_DONE"] .. "|r" }
            end
            -- Modo compacto: dicas vão para o "i" só se o passo tiver outro
            -- objetivo concreto; passo só de dicas continua mostrando o texto.
            local hideNotes = false
            if compact then
                for _, goal in ipairs(step.goals) do
                    if not QUIET_GOALS[goal.type] and Engine:GoalApplies(goal) then
                        hideNotes = true
                        break
                    end
                end
            end
            for _, goal in ipairs(step.goals) do
                if Engine:GoalApplies(goal) then
                    if goal.type == "note" and hideNotes then
                        notes[#notes + 1] = goal.text
                    else
                        entries[#entries + 1] = GoalEntry(goal)
                    end
                end
            end
        else
            progress = 1
            frame.counter:SetText("")
            entries[#entries + 1] = { icon = ICON_DONE, text = L["GUIDE_DONE"] }
        end
    end
    self.hiddenNotes = notes
    frame.progress:SetValue(progress)
    local special = focus or manual ~= nil
    frame.progress:SetShown(guide ~= nil and not special)
    frame.infoButton:SetShown(#notes > 0)
    frame.collapseButton:SetNormalTexture(ns.db.collapsed and "Interface\\Buttons\\UI-PlusButton-Up"
        or "Interface\\Buttons\\UI-MinusButton-Up")

    local height = HEADER_HEIGHT + 4
    local shown = ns.db.collapsed and 0 or #entries
    frame.trainerHit = nil
    for i = 1, shown do
        local entry = entries[i]
        local row = self:GetRow(i)
        local text = entry.text
        if entry.done then
            text = "|cff8a8a8a" .. text .. "|r"
        end
        row.text:SetText(text)
        row.text:Show()
        local icon = entry.done and ICON_DONE or entry.icon
        row.icon:SetTexture(icon)
        row.icon:SetShown(icon ~= nil)
        row.map = entry.map
        row.goal = entry.goal
        row.onEnter = entry.onEnter or ((entry.map or entry.goal) and RowTooltip) or nil
        row:EnableMouse(row.onEnter ~= nil)
        local rowHeight = math.max(ICON_SIZE, row.text:GetStringHeight())
        row:SetHeight(rowHeight)
        row:Show()
        if entry.trainer then
            frame.trainerHit = row
        end
        height = height + rowHeight + LINE_SPACING
    end
    for i = shown + 1, #frame.rows do
        frame.rows[i]:Hide()
        frame.rows[i].text:Hide()
    end
    frame:SetHeight(height + PADDING - 2)

    frame.focusClose:SetShown(special)
    frame.prevButton:SetShown(not special)
    frame.nextButton:SetShown(not special)
    local hasGuide = guide ~= nil
    frame.prevButton:SetEnabled(hasGuide and Engine.stepIndex > 1)
    frame.nextButton:SetEnabled(hasGuide and Engine.stepIndex <= #guide.steps)
end

function UI:SetShown(shown)
    ns.db.shown = shown
    if self.frame then
        self.frame:SetShown(shown and not (ns.db.hideInCombat and InCombatLockdown()))
    end
end

function UI:ApplyScale()
    if self.frame then
        self.frame:SetScale(ns.db.scale or 1)
    end
end

local function Refresh()
    UI:Refresh()
end

-- Flash verde quando o jogador avança para um passo novo.
local lastStep, lastGuide
ns:On("STEP_CHANGED", function()
    local guide = ns.Engine.guide
    local frame = UI.frame
    if frame and guide and guide == lastGuide and ns.Engine.stepIndex > (lastStep or 0) and ns.db.flash then
        frame.flashAnim:Stop()
        frame.flashAnim:Play()
    end
    lastGuide, lastStep = guide, ns.Engine.stepIndex
    UI:Refresh()
end)

-- Esconder em combate (opcional).
ns:RegisterEvent("PLAYER_REGEN_DISABLED", function()
    if UI.frame and ns.db.hideInCombat then
        UI.frame:Hide()
    end
end)
ns:RegisterEvent("PLAYER_REGEN_ENABLED", function()
    if UI.frame and ns.db.hideInCombat and ns.db.shown then
        UI.frame:Show()
    end
end)

ns:On("INIT", function()
    UI:Create()
    UI:Refresh()
end)
ns:On("STEP_UPDATED", Refresh)
ns:On("NAMES_UPDATED", Refresh)
ns:On("NAV_ARRIVED", Refresh)
ns:On("ROUTE_CHANGED", Refresh)
