-- Janela para colar (importar) ou copiar (exportar) o texto de um guia.
local addonName, ns = ...
local L = ns.L

local ImportFrame = {}
ns.ImportFrame = ImportFrame

local FRAME_NAME = "AzimuteImportFrame"

function ImportFrame:Create()
    local frame = CreateFrame("Frame", FRAME_NAME, UIParent, "BackdropTemplate")
    frame:SetSize(560, 420)
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
    table.insert(UISpecialFrames, FRAME_NAME) -- ESC fecha

    frame.title = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    frame.title:SetPoint("TOPLEFT", 14, -12)

    frame.hint = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    frame.hint:SetPoint("TOPLEFT", frame.title, "BOTTOMLEFT", 0, -6)
    frame.hint:SetPoint("RIGHT", -40, 0)
    frame.hint:SetJustifyH("LEFT")

    local close = CreateFrame("Button", nil, frame, "UIPanelCloseButton")
    close:SetPoint("TOPRIGHT", -2, -2)

    local scroll = CreateFrame("ScrollFrame", nil, frame, "UIPanelScrollFrameTemplate")
    scroll:SetPoint("TOPLEFT", 14, -58)
    scroll:SetPoint("BOTTOMRIGHT", -34, 48)

    local edit = CreateFrame("EditBox", nil, scroll)
    edit:SetMultiLine(true)
    edit:SetAutoFocus(false)
    edit:SetMaxLetters(0)
    edit:SetFontObject(ChatFontNormal)
    edit:SetWidth(500)
    edit:SetHeight(300)
    edit:SetScript("OnEscapePressed", function()
        frame:Hide()
    end)
    scroll:SetScrollChild(edit)
    scroll:EnableMouse(true)
    scroll:SetScript("OnMouseDown", function()
        edit:SetFocus()
    end)
    frame.edit = edit

    local action = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
    action:SetSize(130, 24)
    action:SetPoint("BOTTOMRIGHT", -14, 14)
    frame.action = action

    frame:Hide()
    self.frame = frame
end

local function Open(title, hint, text, buttonText, onClick)
    local frame = ImportFrame.frame
    frame.title:SetText(title)
    frame.hint:SetText(hint)
    frame.hint:SetTextColor(1, 1, 1)
    frame.edit:SetText(text or "")
    frame.action:SetText(buttonText)
    frame.action:SetScript("OnClick", onClick)
    frame:Show()
    frame.edit:SetFocus()
    frame.edit:HighlightText()
end

function ImportFrame:OpenImport()
    Open(L["IMPORT_TITLE"], L["IMPORT_HINT"], "", L["IMPORT_BUTTON"], function()
        local ok, result = ns.GuideIO.Import(self.frame.edit:GetText())
        if ok then
            ns.Print(L["IMPORT_OK"]:format(ns.Registry.DisplayName(result), #result.steps, result.id))
            self.frame:Hide()
        else
            self.frame.hint:SetText(tostring(result))
            self.frame.hint:SetTextColor(1, 0.3, 0.3)
        end
    end)
end

-- Editor: abre o texto do guia atual; "Salvar" valida e grava como guia
-- importado (substitui o do pacote, e /azimute remover <id> desfaz).
function ImportFrame:OpenEditor(guide)
    local text = guide and guide.text or L["EDITOR_TEMPLATE"]
    local title = guide and (L["EDITOR_TITLE"] .. ": " .. ns.Registry.DisplayName(guide)) or L["EDITOR_NEW"]
    Open(title, L["EDITOR_HINT"], text, L["EDITOR_SAVE"], function()
        local keepStep = ns.Engine.stepIndex
        local ok, result = ns.GuideIO.Import(self.frame.edit:GetText())
        if not ok then
            self.frame.hint:SetText(tostring(result))
            self.frame.hint:SetTextColor(1, 0.3, 0.3)
            return
        end
        ns.Print(L["EDITOR_SAVED"]:format(ns.Registry.DisplayName(result), #result.steps))
        -- Recarrega o guia editado no mesmo passo (ou carrega o novo).
        local sameGuide = guide and guide.id == result.id
        ns.Engine:LoadGuide(result.id, sameGuide and keepStep or 1, true)
        self.frame:Hide()
    end)
end

function ImportFrame:OpenExport(text, title, hint)
    Open(title or L["EXPORT_TITLE"], hint or L["EXPORT_HINT"], text, L["CLOSE"], function()
        self.frame:Hide()
    end)
end

ns:On("INIT", function()
    ImportFrame:Create()
end)
