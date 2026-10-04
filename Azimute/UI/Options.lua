-- Tela de opções no menu do jogo (Esc > Opções > AddOns > Azimute), usando a
-- Settings API. Cada opção grava direto em AzimuteDB.
local addonName, ns = ...
local L = ns.L

local Options = {}
ns.Options = Options

-- Aplica na hora as opções que mudam algo visível.
local function RefreshNavigation()
    ns.Nav.waypointKey = false
    ns.Nav:Refresh()
    if ns.MapLines then
        ns.MapLines:Refresh()
    end
end

local APPLY = {
    shown = function(value)
        ns.UI:SetShown(value)
    end,
    arrowShown = RefreshNavigation,
    useTomTom = RefreshNavigation,
    mapPin = RefreshNavigation,
    routes = RefreshNavigation,
    pickupFlightPathsOnWay = function()
        ns.Router:CheckNewFlightPath()
    end,
    pickupFlightPaths = function()
        ns.Router:CheckNewFlightPath()
    end,
    trainerHints = function()
        ns:Fire("STEP_UPDATED")
    end,
    itemButton = function()
        ns.ItemButton:Update()
    end,
    gearAdvisor = function()
        ns.Gear:UpdateBags()
    end,
    bagArrows = function()
        ns.Gear:UpdateBags()
    end,
    minimapButton = function()
        ns.MinimapButton:Refresh()
    end,
    pace = function()
        ns.UI:Refresh()
    end,
    corpseGuide = function()
        ns.Corpse:Update()
    end,
    compactNotes = function()
        ns.UI:Refresh()
    end,
    fadeOut = function()
        ns.UI:UpdateAlpha()
    end,
}

-- { chave em AzimuteDB, rótulo, dica } agrupados por seção.
local SECTIONS = {
    {
        title = "OPT_SECTION_WINDOW",
        options = {
            { "compactNotes", "OPT_COMPACT", "OPT_COMPACT_TIP" },
            { "fadeOut", "OPT_FADE", "OPT_FADE_TIP" },
            { "hideInCombat", "OPT_HIDE_COMBAT", "OPT_HIDE_COMBAT_TIP" },
            { "flash", "OPT_FLASH", "OPT_FLASH_TIP" },
        },
        slider = true,
    },
    {
        title = "OPT_SECTION_GUIDE",
        options = {
            { "shown", "OPT_SHOWN", "OPT_SHOWN_TIP" },
            { "arrowShown", "OPT_ARROW", "OPT_ARROW_TIP" },
            { "useTomTom", "OPT_TOMTOM", "OPT_TOMTOM_TIP" },
            { "mapPin", "OPT_MAP", "OPT_MAP_TIP" },
            { "routes", "OPT_ROUTES", "OPT_ROUTES_TIP" },
            { "pickupFlightPaths", "OPT_PICKUP_FP", "OPT_PICKUP_FP_TIP" },
            { "pickupFlightPathsOnWay", "OPT_PICKUP_FP_WAY", "OPT_PICKUP_FP_WAY_TIP" },
            { "autoFly", "OPT_AUTO_FLY", "OPT_AUTO_FLY_TIP" },
            { "corpseGuide", "OPT_CORPSE", "OPT_CORPSE_TIP" },
            { "pace", "OPT_PACE", "OPT_PACE_TIP" },
        },
    },
    {
        title = "OPT_SECTION_QUESTS",
        options = {
            { "autoAccept", "OPT_AUTO_ACCEPT", "OPT_AUTO_ACCEPT_TIP" },
            { "autoTurnIn", "OPT_AUTO_TURNIN", "OPT_AUTO_TURNIN_TIP" },
            { "autoAllQuests", "OPT_AUTO_ALL", "OPT_AUTO_ALL_TIP" },
            { "followQuest", "OPT_FOLLOW", "OPT_FOLLOW_TIP" },
            { "itemButton", "OPT_ITEM_BUTTON", "OPT_ITEM_BUTTON_TIP" },
            { "trainerHints", "OPT_TRAINER", "OPT_TRAINER_TIP" },
            { "weaponHints", "OPT_WEAPONS", "OPT_WEAPONS_TIP" },
        },
    },
    {
        title = "OPT_SECTION_GEAR",
        options = {
            { "gearAdvisor", "OPT_GEAR", "OPT_GEAR_TIP" },
            { "gearTooltip", "OPT_GEAR_TOOLTIP", "OPT_GEAR_TOOLTIP_TIP" },
            { "bagArrows", "OPT_BAG_ARROWS", "OPT_BAG_ARROWS_TIP" },
            { "autoPickReward", "OPT_AUTO_REWARD", "OPT_AUTO_REWARD_TIP" },
            { "gearHardcore", "OPT_GEAR_HARDCORE", "OPT_GEAR_HARDCORE_TIP" },
        },
    },
    {
        title = "OPT_SECTION_VENDOR",
        options = {
            { "autoSellJunk", "OPT_AUTO_SELL", "OPT_AUTO_SELL_TIP" },
            { "autoRepair", "OPT_AUTO_REPAIR", "OPT_AUTO_REPAIR_TIP" },
        },
    },
    {
        title = "OPT_SECTION_OTHER",
        options = {
            { "minimapButton", "OPT_MINIMAP", "OPT_MINIMAP_TIP" },
            { "debug", "OPT_DEBUG", "OPT_DEBUG_TIP" },
        },
    },
}

-- Caixa de marcar ligada a table[key] (AzimuteDB ou, por personagem, AzimuteCharDB).
local function AddCheckbox(category, variable, key, tbl, default, label, tooltip, onChanged)
    local varType = Settings.VarType and Settings.VarType.Boolean or "boolean"
    local setting = Settings.RegisterAddOnSetting(category, variable, key, tbl, varType, label, default)
    local function OnChanged(_, value)
        if onChanged then
            onChanged(value)
        end
    end
    if setting.SetValueChangedCallback then
        setting:SetValueChangedCallback(OnChanged)
    elseif Settings.SetOnValueChangedCallback then
        Settings.SetOnValueChangedCallback(variable, OnChanged)
    end
    Settings.CreateCheckbox(category, setting, tooltip)
end

local function Header(layout, text)
    if layout and CreateSettingsListSectionHeaderInitializer then
        layout:AddInitializer(CreateSettingsListSectionHeaderInitializer(text))
    end
end

-- Controle deslizante da escala da janela (50% a 150%).
local function AddScaleSlider(category)
    if not (Settings.CreateSlider and Settings.CreateSliderOptions) then
        return
    end
    local varType = Settings.VarType and Settings.VarType.Number or "number"
    local setting = Settings.RegisterAddOnSetting(category, "AZIMUTE_scale", "scale", ns.db, varType,
        L["OPT_SCALE"], ns.DEFAULTS.scale)
    local function OnChanged()
        ns.UI:ApplyScale()
    end
    if setting.SetValueChangedCallback then
        setting:SetValueChangedCallback(OnChanged)
    elseif Settings.SetOnValueChangedCallback then
        Settings.SetOnValueChangedCallback("AZIMUTE_scale", OnChanged)
    end
    local options = Settings.CreateSliderOptions(0.5, 1.5, 0.05)
    if options.SetLabelFormatter and MinimalSliderWithSteppersMixin then
        options:SetLabelFormatter(MinimalSliderWithSteppersMixin.Label.Right, function(value)
            return ("%d%%"):format(value * 100 + 0.5)
        end)
    end
    Settings.CreateSlider(category, setting, options, L["OPT_SCALE_TIP"])
end

local function Build()
    local category, layout = Settings.RegisterVerticalLayoutCategory(addonName)
    for _, section in ipairs(SECTIONS) do
        Header(layout, L[section.title])
        for _, option in ipairs(section.options) do
            local key = option[1]
            AddCheckbox(category, "AZIMUTE_" .. key, key, ns.db, ns.DEFAULTS[key],
                L[option[2]], L[option[3]], APPLY[key])
        end
        if section.slider then
            -- Se a escala falhar nesta versão da API, o resto das opções continua.
            pcall(AddScaleSlider, category)
        end
    end

    -- Masmorras (por personagem): as missões delas entram no guia.
    Header(layout, L["OPT_SECTION_DUNGEONS"])
    for _, entry in ipairs(ns.Dungeons:ForPlayer()) do
        local code = entry.code
        AddCheckbox(category, "AZIMUTE_DUNGEON_" .. code, code, ns.char.dungeons, false,
            ("%s (%s)"):format(ns.Dungeons.Name(entry), entry.levels), L["OPT_DUNGEON_TIP"],
            function()
                ns.Engine:RequestEvaluate()
            end)
    end

    Settings.RegisterAddOnCategory(category)
    return category
end

function Options:Init()
    if not (Settings and Settings.RegisterVerticalLayoutCategory and Settings.RegisterAddOnSetting) then
        return
    end
    -- A Settings API muda entre versões do jogo: se algo falhar, o addon
    -- continua funcionando e as opções ficam pelos comandos /azimute.
    local ok, result = pcall(Build)
    if ok then
        self.category = result
    else
        self.error = tostring(result)
        ns.Debug("opções indisponíveis: %s", self.error)
    end
end

function Options:Open()
    if self.category and Settings.OpenToCategory then
        Settings.OpenToCategory(self.category:GetID())
    else
        for _, line in ipairs(L["HELP"]) do
            ns.Print(line)
        end
    end
end

-- No login: a facção do personagem (lista de masmorras) já está disponível.
ns:On("LOGIN", function()
    Options:Init()
end)
