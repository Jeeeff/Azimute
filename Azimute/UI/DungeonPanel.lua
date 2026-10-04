-- Painel "Masmorras": para cada masmorra, a faixa de nível (colorida pelo nível
-- do jogador), um botão para a seta levar até a ENTRADA, outro para abrir o
-- buscador de grupos do jogo, e as missões (feita / no diário / faltando) com
-- quem dá e onde. Por padrão mostra só as masmorras do nível do jogador.
local addonName, ns = ...
local L = ns.L

local Panel = {}
ns.DungeonPanel = Panel

local FRAME_NAME = "AzimuteDungeonPanel"
local WIDTH, HEIGHT = 600, 500
local ROW_HEIGHT = 20
local STATUS_ICON = {
    done = "|TInterface\\RaidFrame\\ReadyCheck-Ready:14|t",
    log = "|cffffd100!|r ",
    missing = "|cff999999•|r ",
}
-- cor e texto de cada situação de nível
local LEVEL_STYLE = {
    early = { "ff4040", "DQ_EARLY" },
    hard = { "ff9933", "DQ_HARD" },
    ideal = { "33ff66", "DQ_IDEAL" },
    easy = { "9d9d9d", "DQ_EASY" },
}

local function Checkbox(frame, label, anchor, onClick)
    local check = CreateFrame("CheckButton", nil, frame, "UICheckButtonTemplate")
    check:SetSize(22, 22)
    check:SetPoint(unpack(anchor))
    check:SetScript("OnClick", onClick)
    local text = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    text:SetPoint("LEFT", check, "RIGHT", 2, 0)
    text:SetText(label)
    return check, text
end

function Panel:Create()
    local frame = CreateFrame("Frame", FRAME_NAME, UIParent, "BackdropTemplate")
    frame:SetSize(WIDTH, HEIGHT)
    frame:SetPoint("CENTER")
    frame:SetFrameStrata("DIALOG")
    frame:SetBackdrop({
        bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
        tile = true, tileSize = 16, edgeSize = 14,
        insets = { left = 3, right = 3, top = 3, bottom = 3 },
    })
    frame:SetBackdropColor(0, 0, 0, 0.92)
    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:SetClampedToScreen(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetScript("OnDragStart", frame.StartMoving)
    frame:SetScript("OnDragStop", frame.StopMovingOrSizing)
    table.insert(UISpecialFrames, FRAME_NAME)

    frame.title = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    frame.title:SetPoint("TOPLEFT", 14, -12)
    frame.title:SetText(L["DQ_TITLE"])
    frame.hint = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    frame.hint:SetPoint("TOPLEFT", frame.title, "BOTTOMLEFT", 0, -4)
    frame.hint:SetPoint("RIGHT", -30, 0)
    frame.hint:SetJustifyH("LEFT")
    frame.hint:SetText(L["DQ_HINT"])

    local close = CreateFrame("Button", nil, frame, "UIPanelCloseButton")
    close:SetPoint("TOPRIGHT", -2, -2)

    frame.myLevel = Checkbox(frame, L["DQ_MY_LEVEL"], { "BOTTOMLEFT", 10, 10 }, function(check)
        ns.db.dungeonsMyLevel = check:GetChecked() and true or false
        Panel:Refresh()
    end)
    frame.hideDone = Checkbox(frame, L["DQ_HIDE_DONE"], { "BOTTOMLEFT", 200, 10 }, function()
        Panel:Refresh()
    end)

    local group = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
    group:SetSize(140, 22)
    group:SetPoint("BOTTOMRIGHT", -12, 10)
    group:SetText(L["DQ_GROUP"])
    group:SetScript("OnClick", function()
        if not ns.DungeonEntrances.OpenGroupFinder() then
            ns.Print(L["DQ_GROUP_NONE"])
        end
    end)

    local scroll = CreateFrame("ScrollFrame", nil, frame, "UIPanelScrollFrameTemplate")
    scroll:SetPoint("TOPLEFT", 12, -56)
    scroll:SetPoint("BOTTOMRIGHT", -32, 40)
    local content = CreateFrame("Frame", nil, scroll)
    content:SetSize(WIDTH - 50, 10)
    scroll:SetScrollChild(content)
    frame.content = content
    frame.rows = {}
    frame:Hide()
    self.frame = frame
end

function Panel:GetRow(index)
    local rows = self.frame.rows
    local row = rows[index]
    if not row then
        row = CreateFrame("Button", nil, self.frame.content)
        row:SetHeight(ROW_HEIGHT)
        row:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
        row.text = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
        row.text:SetPoint("LEFT", 4, 0)
        row.text:SetPoint("RIGHT", -230, 0)
        row.text:SetJustifyH("LEFT")
        row.text:SetWordWrap(false)
        row.right = row:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
        row.right:SetJustifyH("RIGHT")
        row.right:SetWordWrap(false)
        row.check = CreateFrame("CheckButton", nil, row, "UICheckButtonTemplate")
        row.check:SetSize(18, 18)
        row.check:SetPoint("RIGHT", -2, 0)
        -- "Entrada": a seta leva até a porta da masmorra
        row.go = CreateFrame("Button", nil, row, "UIPanelButtonTemplate")
        row.go:SetSize(70, 18)
        row.go:SetPoint("RIGHT", row.check, "LEFT", -2, 0)
        row.go:SetText(L["DQ_ENTRANCE"])
        rows[index] = row
    end
    row:ClearAllPoints()
    row:SetPoint("TOPLEFT", self.frame.content, "TOPLEFT", 0, -(index - 1) * ROW_HEIGHT)
    row:SetPoint("RIGHT", self.frame.content, "RIGHT", 0, 0)
    row:Show()
    row.check:Hide()
    row.go:Hide()
    row.right:ClearAllPoints()
    row.right:SetPoint("RIGHT", -4, 0)
    row.right:SetWidth(220)
    row:SetScript("OnEnter", nil)
    row:SetScript("OnLeave", nil)
    row:SetScript("OnClick", nil)
    return row
end

local function Levels(dungeon)
    local levels = dungeon.levels
    if type(levels) == "table" and levels.medium then
        return ("%d-%d"):format(levels.medium, levels.easy or levels.atLevel or 60)
    end
    return ""
end

local function ShowQuestTooltip(row, quest)
    GameTooltip:SetOwner(row, "ANCHOR_RIGHT")
    local id = ns.DungeonQuests.MainID(quest)
    GameTooltip:SetText(ns.Names.Quest(id) or quest.name)
    GameTooltip:AddLine(L["DQ_GIVER"]:format(quest.giver or "?", quest.location or "?"), 1, 1, 1, true)
    if quest.classOnly then
        GameTooltip:AddLine(L["DQ_CLASS_ONLY"], 1, 0.8, 0.2)
    end
    if quest.notes then
        GameTooltip:AddLine(quest.notes, 0.7, 0.7, 0.7, true)
    end
    GameTooltip:Show()
end

-- A seta leva até a entrada (rotas de voo/zepelim entram sozinhas).
function Panel:GoToEntrance(dungeon)
    local name = ns.DungeonQuests.DisplayName(dungeon)
    local entrance = ns.DungeonEntrances:Find(dungeon.name, name)
    if not entrance then
        ns.Print(L["DQ_NO_ENTRANCE"]:format(name))
        return false
    end
    local line = entrance.approx and L["DQ_ENTRANCE_APPROX"] or L["DQ_ENTRANCE_LINE"]
    ns.Nav:SetManualTarget(entrance.mapID, entrance.x, entrance.y, { title = name, lines = { line } })
    ns.Print(L["DQ_GOING_ENTRANCE"]:format(name, ns.Names.Zone(entrance.mapID)))
    return true
end

function Panel:DungeonHeader(index, dungeon, quests)
    local header = self:GetRow(index)
    local level = ns.Engine.player.level or UnitLevel("player")
    local status = ns.DungeonQuests.LevelStatus(dungeon, level)
    local style = status and LEVEL_STYLE[status]
    header.text:SetFontObject("GameFontNormal")
    local inLog = 0
    for _, quest in ipairs(quests) do
        if ns.DungeonQuests.Status(quest) == "log" then
            inLog = inLog + 1
        end
    end
    local suffix = inLog > 0 and (" |cffffd100" .. L["DQ_IN_LOG"]:format(inLog) .. "|r") or ""
    header.text:SetText(ns.DungeonQuests.DisplayName(dungeon) .. suffix)
    local levelText = L["DQ_LEVELS"]:format(Levels(dungeon))
    if style then
        levelText = ("|cff%s%s · %s|r"):format(style[1], levelText, L[style[2]])
    end
    header.right:SetText(levelText)
    header.go:Show()
    header.go:SetScript("OnClick", function()
        Panel:GoToEntrance(dungeon)
    end)
    header.right:ClearAllPoints()
    header.right:SetPoint("RIGHT", header.go, "LEFT", -6, 0)
    header.right:SetWidth(150)
    local code = ns.DungeonQuests.Code(dungeon)
    if code then
        header.check:Show()
        header.check:SetChecked(ns.Dungeons:IsChosen(code))
        header.check:SetScript("OnClick", function(check)
            ns.Dungeons:SetChosen(code, check:GetChecked())
        end)
        header.check:SetScript("OnEnter", function(check)
            GameTooltip:SetOwner(check, "ANCHOR_RIGHT")
            GameTooltip:SetText(L["OPT_DUNGEON_TIP"], 1, 1, 1, true)
            GameTooltip:Show()
        end)
        header.check:SetScript("OnLeave", function()
            GameTooltip:Hide()
        end)
    end
    return status
end

function Panel:QuestRow(index, quest, status)
    local row = self:GetRow(index)
    row.text:SetFontObject("GameFontHighlightSmall")
    local id = ns.DungeonQuests.MainID(quest)
    local name = ns.Names.Quest(id) or quest.name
    if status == "done" then
        name = "|cff808080" .. name .. "|r"
    end
    row.text:SetText("   " .. STATUS_ICON[status] .. " " .. name .. (quest.level and (" |cff999999(" .. quest.level .. ")|r") or ""))
    local mapID, x, y = ns.DungeonQuests.Location(quest)
    local zone = mapID and ns.Names.Zone(mapID) or (quest.location or "?")
    row.right:SetText(x and ("%s %.0f, %.0f"):format(zone, x * 100, y * 100) or zone)
    row:SetScript("OnEnter", function(self)
        ShowQuestTooltip(self, quest)
    end)
    row:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)
    row:SetScript("OnClick", function()
        if mapID and x then
            ns.Nav:SetManualTarget(mapID, x, y, {
                title = ns.Names.Quest(id) or quest.name,
                lines = { L["DQ_TALK_LINE"]:format(quest.giver or "?", ns.Names.Quest(id) or quest.name) },
            })
            ns.Print(L["DQ_GUIDING"]:format(quest.giver or "?", zone))
        else
            ns.Print(L["DQ_NO_LOCATION"])
        end
    end)
end

function Panel:Refresh()
    local frame = self.frame
    local hideDone = frame.hideDone:GetChecked()
    local myLevel = ns.db.dungeonsMyLevel ~= false
    frame.myLevel:SetChecked(myLevel)
    local level = ns.Engine.player.level or UnitLevel("player")
    local index = 0
    for _, entry in ipairs(ns.DungeonQuests:AllForPlayer()) do
        local dungeon = entry.dungeon
        local status = ns.DungeonQuests.LevelStatus(dungeon, level)
        -- "só do meu nível": ideal e difícil (as de "cedo demais" e "fácil demais" somem)
        if not myLevel or status == "ideal" or status == "hard" then
            index = index + 1
            self:DungeonHeader(index, dungeon, entry.quests)
            for _, quest in ipairs(entry.quests) do
                local questStatus = ns.DungeonQuests.Status(quest)
                if not (hideDone and questStatus == "done") then
                    index = index + 1
                    self:QuestRow(index, quest, questStatus)
                end
            end
        end
    end
    if index == 0 then
        local row = self:GetRow(1)
        row.text:SetText(myLevel and L["DQ_NONE_LEVEL"] or L["DQ_EMPTY"])
        row.right:SetText("")
        index = 1
    end
    for i = index + 1, #frame.rows do
        frame.rows[i]:Hide()
    end
    frame.content:SetHeight(math.max(10, index * ROW_HEIGHT))
end

function Panel:Toggle()
    if self.frame:IsShown() then
        self.frame:Hide()
    else
        self:Refresh()
        self.frame:Show()
    end
end

ns:On("INIT", function()
    Panel:Create()
end)
ns:On("NAMES_UPDATED", function()
    if Panel.frame and Panel.frame:IsShown() then
        Panel:Refresh()
    end
end)
ns:RegisterEvent("PLAYER_LEVEL_UP", function()
    if Panel.frame and Panel.frame:IsShown() then
        C_Timer.After(0.5, function() Panel:Refresh() end)
    end
end)
