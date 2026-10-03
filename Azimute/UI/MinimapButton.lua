-- Botão no minimapa (como o do Zygor) e no menu de addons do jogo.
--   clique esquerdo: mostra/esconde a janela do guia
--   Shift + clique:  abre o seletor de guias
--   clique direito:  abre as opções
--   arrastar:        move o botão em volta do minimapa
local addonName, ns = ...
local L = ns.L

local MinimapButton = {}
ns.MinimapButton = MinimapButton

-- Logo do Azimute (rosa dos ventos), arte própria em Media/Icon.tga.
local ICON = "Interface\\AddOns\\Azimute\\Media\\Icon"

-- Menu do clique direito (MenuUtil do cliente moderno); sem ele, abre as opções.
local function OpenMenu(owner)
    if not (MenuUtil and MenuUtil.CreateContextMenu) then
        ns.Options:Open()
        return
    end
    MenuUtil.CreateContextMenu(owner, function(_, root)
        root:CreateTitle(addonName)
        root:CreateButton(L["MENU_TOGGLE"], function()
            ns.UI:SetShown(not ns.db.shown)
        end)
        root:CreateButton(L["PICKER_BUTTON"], function()
            ns.GuidePicker:Toggle()
        end)
        root:CreateButton(L["DQ_TITLE"], function()
            ns.DungeonPanel:Toggle()
        end)
        root:CreateButton(L["MENU_EDIT"], function()
            ns.ImportFrame:OpenEditor(ns.Engine.guide)
        end)
        root:CreateButton(L["EDITOR_NEW"], function()
            ns.ImportFrame:OpenEditor(nil)
        end)
        root:CreateButton(L["IMPORT_TITLE"], function()
            ns.ImportFrame:OpenImport()
        end)
        root:CreateButton(L["EXPORT_TITLE"], function()
            SlashCmdList.AZIMUTE("exportar")
        end)
        if ns.Recorder:IsActive() then
            root:CreateButton(L["MENU_RECORD_STOP"], function()
                SlashCmdList.AZIMUTE("parar")
            end)
        else
            root:CreateButton(L["MENU_RECORD"], function()
                ns.Recorder:Start()
            end)
        end
        root:CreateButton(L["MENU_OPTIONS"], function()
            ns.Options:Open()
        end)
        -- Módulos do pacote (medidor, bolsas...): um erro neles não afeta o guia.
        if #ns.modules > 0 then
            root:CreateDivider()
            root:CreateTitle(L["MENU_MODULES"])
            for _, module in ipairs(ns.modules) do
                local entry = root:CreateButton(module.name)
                entry:CreateButton(L["MENU_MODULE_TOGGLE"], function()
                    pcall(module.toggle)
                end)
                if module.options then
                    entry:CreateButton(L["MENU_OPTIONS"], function()
                        pcall(module.options)
                    end)
                end
            end
        end
    end)
end

local function OnClick(mouseButton, owner)
    if mouseButton == "RightButton" then
        OpenMenu(owner or ns.MinimapButton.button)
    elseif IsShiftKeyDown() then
        ns.GuidePicker:Toggle()
    else
        ns.UI:SetShown(not ns.db.shown)
    end
end

local function ShowTooltip(owner)
    GameTooltip:SetOwner(owner, "ANCHOR_LEFT")
    GameTooltip:SetText(addonName)
    GameTooltip:AddLine(L["MINIMAP_LEFT"], 1, 1, 1)
    GameTooltip:AddLine(L["MINIMAP_SHIFT"], 1, 1, 1)
    GameTooltip:AddLine(L["MINIMAP_RIGHT"], 1, 1, 1)
    GameTooltip:Show()
end

local function UpdatePosition(button)
    local angle = math.rad(ns.db.minimapAngle or 225)
    local radius = (Minimap:GetWidth() / 2) + 5
    button:ClearAllPoints()
    button:SetPoint("CENTER", Minimap, "CENTER", math.cos(angle) * radius, math.sin(angle) * radius)
end

-- Ângulo do cursor em relação ao centro do minimapa, durante o arrasto.
local function OnDragUpdate(button)
    local centerX, centerY = Minimap:GetCenter()
    local cursorX, cursorY = GetCursorPosition()
    local scale = Minimap:GetEffectiveScale()
    cursorX, cursorY = cursorX / scale, cursorY / scale
    ns.db.minimapAngle = math.deg(math.atan2(cursorY - centerY, cursorX - centerX))
    UpdatePosition(button)
end

function MinimapButton:Create()
    if not Minimap then
        return
    end
    local button = CreateFrame("Button", "AzimuteMinimapButton", Minimap)
    button:SetSize(31, 31)
    button:SetFrameStrata("MEDIUM")
    button:SetFrameLevel(8)
    button:RegisterForClicks("LeftButtonUp", "RightButtonUp")
    button:RegisterForDrag("LeftButton")
    button:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight")

    local background = button:CreateTexture(nil, "BACKGROUND")
    background:SetSize(20, 20)
    background:SetTexture("Interface\\Minimap\\UI-Minimap-Background")
    background:SetPoint("TOPLEFT", 7, -5)

    local icon = button:CreateTexture(nil, "ARTWORK")
    icon:SetSize(20, 20)
    icon:SetTexture(ICON)
    icon:SetPoint("TOPLEFT", 6, -5)

    local border = button:CreateTexture(nil, "OVERLAY")
    border:SetSize(53, 53)
    border:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder")
    border:SetPoint("TOPLEFT")

    button:SetScript("OnClick", function(self, mouseButton)
        OnClick(mouseButton, self)
    end)
    button:SetScript("OnEnter", ShowTooltip)
    button:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)
    button:SetScript("OnDragStart", function(self)
        self:SetScript("OnUpdate", OnDragUpdate)
    end)
    button:SetScript("OnDragStop", function(self)
        self:SetScript("OnUpdate", nil)
    end)

    self.button = button
    UpdatePosition(button)
    self:Refresh()
end

function MinimapButton:Refresh()
    if self.button then
        self.button:SetShown(ns.db.minimapButton)
    end
end

-- Menu de addons do jogo (## AddonCompartmentFunc no .toc): funções globais.
function Azimute_OnAddonCompartmentClick(_, mouseButton)
    OnClick(mouseButton)
end

function Azimute_OnAddonCompartmentEnter(_, menuButton)
    ShowTooltip(menuButton)
end

function Azimute_OnAddonCompartmentLeave()
    GameTooltip:Hide()
end

ns:On("INIT", function()
    MinimapButton:Create()
end)
