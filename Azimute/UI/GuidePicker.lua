-- Seletor de guias (como o do Zygor): guias agrupados por categoria, com
-- os recomendados para o personagem (facção, raça, classe e nível) no topo.
local addonName, ns = ...
local L = ns.L

local Picker = {}
ns.GuidePicker = Picker

local FRAME_NAME = "AzimuteGuidePicker"
local WIDTH, HEIGHT = 480, 460
local ROW_HEIGHT = 20
local STAR = "|TInterface\\COMMON\\FavoritesIcon:16|t"

local function Levels(guide)
    if guide.levelMin then
        return ("%d-%d"):format(guide.levelMin, guide.levelMax or guide.levelMin)
    end
    return ""
end

-- Lista ordenada: grupo > subgrupo > nível inicial > nome.
local function SortedGuides(showAll)
    local player = ns.Engine.player
    local guides = {}
    for _, guide in ipairs(ns.Registry:List()) do
        if showAll or ns.Registry:Fits(guide, player) then
            guides[#guides + 1] = guide
        end
    end
    table.sort(guides, function(a, b)
        local ga, gb = a.group or "~", b.group or "~"
        if ga ~= gb then
            return ga < gb
        end
        local sa, sb = a.subgroup or "", b.subgroup or ""
        if sa ~= sb then
            return sa < sb
        end
        if (a.levelMin or 0) ~= (b.levelMin or 0) then
            return (a.levelMin or 0) < (b.levelMin or 0)
        end
        return ns.Registry.DisplayName(a) < ns.Registry.DisplayName(b)
    end)
    return guides
end

------------------------------------------------------------------------
-- Frame
------------------------------------------------------------------------

function Picker:Create()
    local frame = CreateFrame("Frame", FRAME_NAME, UIParent, "BackdropTemplate")
    frame:SetSize(WIDTH, HEIGHT)
    frame:SetPoint("CENTER")
    frame:SetFrameStrata("DIALOG")
    frame:SetBackdrop({
        bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
        tile = true,
        tileSize = 16,
        edgeSize = 14,
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
    frame.title:SetText(L["PICKER_TITLE"])

    frame.subtitle = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    frame.subtitle:SetPoint("TOPLEFT", frame.title, "BOTTOMLEFT", 0, -4)

    local close = CreateFrame("Button", nil, frame, "UIPanelCloseButton")
    close:SetPoint("TOPRIGHT", -2, -2)

    local showAll = CreateFrame("CheckButton", nil, frame, "UICheckButtonTemplate")
    showAll:SetSize(22, 22)
    showAll:SetPoint("BOTTOMLEFT", 10, 10)
    showAll:SetScript("OnClick", function()
        Picker:Refresh()
    end)
    frame.showAll = showAll
    local showAllText = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    showAllText:SetPoint("LEFT", showAll, "RIGHT", 2, 0)
    showAllText:SetText(L["PICKER_SHOW_ALL"])

    local scroll = CreateFrame("ScrollFrame", nil, frame, "UIPanelScrollFrameTemplate")
    scroll:SetPoint("TOPLEFT", 12, -52)
    scroll:SetPoint("BOTTOMRIGHT", -32, 40)
    local content = CreateFrame("Frame", nil, scroll)
    content:SetSize(WIDTH - 50, 10)
    scroll:SetScrollChild(content)
    frame.content = content

    frame.rows = {}
    frame:Hide()
    self.frame = frame
end

-- Linha reutilizável: cabeçalho de grupo ou botão de guia.
function Picker:GetRow(index)
    local rows = self.frame.rows
    local row = rows[index]
    if not row then
        row = CreateFrame("Button", nil, self.frame.content)
        row:SetHeight(ROW_HEIGHT)
        row:SetPoint("LEFT", 0, 0)
        row:SetPoint("RIGHT", 0, 0)
        row:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
        row.text = row:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
        row.text:SetPoint("LEFT", 4, 0)
        row.text:SetPoint("RIGHT", -100, 0)
        row.text:SetJustifyH("LEFT")
        row.text:SetWordWrap(false)
        row.levels = row:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
        row.levels:SetPoint("RIGHT", -4, 0)
        rows[index] = row
    end
    row:ClearAllPoints()
    row:SetPoint("TOPLEFT", self.frame.content, "TOPLEFT", 0, -(index - 1) * ROW_HEIGHT)
    row:SetPoint("RIGHT", self.frame.content, "RIGHT", 0, 0)
    row:Show()
    return row
end

function Picker:Refresh()
    local frame = self.frame
    local player = ns.Engine.player
    frame.subtitle:SetText(L["PICKER_FOR"]:format(
        UnitRace("player") or "?", UnitClass("player") or "?", player.level or UnitLevel("player")))

    local guides = SortedGuides(frame.showAll:GetChecked())
    local best = ns.Registry:FindFor(player)
    local current = ns.Engine.guide and ns.Engine.guide.id

    local index = 0
    local lastGroup, lastSubgroup
    local function Header(text, font)
        index = index + 1
        local row = self:GetRow(index)
        row.text:SetFontObject(font)
        row.text:SetText(text)
        row.levels:SetText("")
        row:SetScript("OnClick", nil)
        row:EnableMouse(false)
    end

    for _, guide in ipairs(guides) do
        local group = ns.Registry.DisplayGroup(guide, "group") or L["PICKER_OTHER"]
        if group ~= lastGroup then
            Header(group, "GameFontNormalLarge")
            lastGroup, lastSubgroup = group, nil
        end
        local subgroup = ns.Registry.DisplayGroup(guide, "subgroup")
        if subgroup and subgroup ~= lastSubgroup then
            Header("  " .. subgroup, "GameFontNormal")
            lastSubgroup = subgroup
        end
        index = index + 1
        local row = self:GetRow(index)
        row:EnableMouse(true)
        row.text:SetFontObject("GameFontHighlight")
        local name = ns.Registry.DisplayName(guide)
        if best and guide.id == best.id then
            name = STAR .. name .. " |cff33ff99" .. L["PICKER_RECOMMENDED"] .. "|r"
        end
        if guide.id == current then
            name = name .. " |cffffd100" .. L["PICKER_CURRENT"] .. "|r"
        end
        local tag = ns.Registry.StatusTag(guide)
        if tag ~= "" then
            name = name .. " " .. tag
        end
        local inLog = ns.Registry.QuestsInLog(guide)
        if inLog > 0 then
            name = name .. " |cff66ccff" .. L["PICKER_IN_LOG"]:format(inLog) .. "|r"
        end
        if not ns.Registry:Fits(guide, player) then
            name = "|cff808080" .. name .. "|r"
        end
        row.text:SetText("    " .. name)
        local levels = Levels(guide)
        local saved = ns.char.progress[guide.id]
        if saved and saved > 1 then
            levels = "|cff999999" .. L["PICKER_STEP"]:format(saved) .. "|r  " .. levels
        end
        row.levels:SetText(levels)
        local id = guide.id
        row:SetScript("OnClick", function()
            ns.Engine:LoadGuide(id, nil, true)
            frame:Hide()
        end)
    end
    if index == 0 then
        Header(L["GUIDES_EMPTY"], "GameFontHighlight")
    end
    for i = index + 1, #frame.rows do
        frame.rows[i]:Hide()
    end
    frame.content:SetHeight(math.max(10, index * ROW_HEIGHT))
end

function Picker:Toggle()
    if self.frame:IsShown() then
        self.frame:Hide()
    else
        self:Refresh()
        self.frame:Show()
    end
end

ns:On("INIT", function()
    Picker:Create()
end)
ns:On("GUIDES_CHANGED", function()
    if Picker.frame and Picker.frame:IsShown() then
        Picker:Refresh()
    end
end)
