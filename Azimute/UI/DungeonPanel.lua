-- Painel "Missões de masmorra": para cada masmorra da facção do personagem,
-- as missões com o estado (feita / no diário / faltando), quem dá e onde.
-- Clique numa missão para a seta guiar até quem a dá.
local addonName, ns = ...
local L = ns.L

local Panel = {}
ns.DungeonPanel = Panel

local FRAME_NAME = "AzimuteDungeonPanel"
local WIDTH, HEIGHT = 560, 480
local ROW_HEIGHT = 18
local STATUS_ICON = {
    done = "|TInterface\\RaidFrame\\ReadyCheck-Ready:14|t",
    log = "|cffffd100!|r ",
    missing = "|cff999999•|r ",
}

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
    frame.hint:SetText(L["DQ_HINT"])

    local close = CreateFrame("Button", nil, frame, "UIPanelCloseButton")
    close:SetPoint("TOPRIGHT", -2, -2)

    local hideDone = CreateFrame("CheckButton", nil, frame, "UICheckButtonTemplate")
    hideDone:SetSize(22, 22)
    hideDone:SetPoint("BOTTOMLEFT", 10, 10)
    hideDone:SetScript("OnClick", function()
        Panel:Refresh()
    end)
    frame.hideDone = hideDone
    local hideDoneText = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    hideDoneText:SetPoint("LEFT", hideDone, "RIGHT", 2, 0)
    hideDoneText:SetText(L["DQ_HIDE_DONE"])

    local scroll = CreateFrame("ScrollFrame", nil, frame, "UIPanelScrollFrameTemplate")
    scroll:SetPoint("TOPLEFT", 12, -50)
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
        row.text:SetPoint("RIGHT", -150, 0)
        row.text:SetJustifyH("LEFT")
        row.text:SetWordWrap(false)
        row.right = row:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
        row.right:SetPoint("RIGHT", -4, 0)
        row.right:SetWidth(146)
        row.right:SetJustifyH("RIGHT")
        row.right:SetWordWrap(false)
        row.check = CreateFrame("CheckButton", nil, row, "UICheckButtonTemplate")
        row.check:SetSize(18, 18)
        row.check:SetPoint("RIGHT", -2, 0)
        rows[index] = row
    end
    row:ClearAllPoints()
    row:SetPoint("TOPLEFT", self.frame.content, "TOPLEFT", 0, -(index - 1) * ROW_HEIGHT)
    row:SetPoint("RIGHT", self.frame.content, "RIGHT", 0, 0)
    row:Show()
    row.check:Hide()
    row.right:SetPoint("RIGHT", -4, 0)
    row:SetScript("OnEnter", nil)
    row:SetScript("OnLeave", nil)
    row:SetScript("OnClick", nil)
    return row
end

local function Levels(dungeon)
    local levels = dungeon.levels
    if type(levels) == "table" and levels.medium and levels.easy then
        return ("%d-%d"):format(levels.medium, levels.easy)
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

function Panel:Refresh()
    local frame = self.frame
    local hideDone = frame.hideDone:GetChecked()
    local index = 0
    for _, entry in ipairs(ns.DungeonQuests:ForPlayer()) do
        local dungeon = entry.dungeon
        -- Cabeçalho da masmorra, com "incluir no guia" quando o guia a conhece.
        index = index + 1
        local header = self:GetRow(index)
        header.text:SetFontObject("GameFontNormal")
        header.text:SetText(ns.DungeonQuests.DisplayName(dungeon))
        header.right:SetText(L["DQ_LEVELS"]:format(Levels(dungeon)))
        local code = ns.DungeonQuests.Code(dungeon)
        if code then
            header.right:SetPoint("RIGHT", -26, 0) -- espaço para a caixa de marcar
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
        for _, quest in ipairs(entry.quests) do
            local status = ns.DungeonQuests.Status(quest)
            if not (hideDone and status == "done") then
                index = index + 1
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
        end
    end
    if index == 0 then
        local row = self:GetRow(1)
        row.text:SetText(L["DQ_EMPTY"])
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
