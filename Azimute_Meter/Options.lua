-- Opções no menu do jogo (Esc > Opções > AddOns > Azimute Medidor).
local addonName, M = ...
local L = M.L

local Options = {}
M.Options = Options

local CHECKBOXES = {
    { "shown", "OPT_SHOWN", "OPT_SHOWN_TIP" },
    { "locked", "OPT_LOCKED", "OPT_LOCKED_TIP" },
    { "onlyInGroup", "OPT_GROUP", "OPT_GROUP_TIP" },
    { "onlyInCombat", "OPT_COMBAT", "OPT_COMBAT_TIP" },
    { "specIcons", "OPT_SPEC_ICONS", "OPT_SPEC_ICONS_TIP" },
    { "resetOnInstance", "OPT_RESET_INSTANCE", "OPT_RESET_INSTANCE_TIP" },
    { "deathSummary", "OPT_DEATH_SUMMARY", "OPT_DEATH_SUMMARY_TIP" },
    { "personal", "OPT_PERSONAL", "OPT_PERSONAL_TIP" },
    { "secondWindow", "OPT_SECOND", "OPT_SECOND_TIP" },
}

local SLIDERS = {
    { "barHeight", "OPT_BAR_HEIGHT", 12, 30, 1, function(v) return ("%d"):format(v) end },
    { "scale", "OPT_SCALE", 0.5, 1.5, 0.05, function(v) return ("%d%%"):format(v * 100 + 0.5) end },
}

local function Apply(key)
    if key == "personal" then
        M.Personal:Apply()
    elseif key == "deathSummary" then
        return
    elseif key == "locked" then
        M.EachWindow("ApplyLock")
    elseif key == "scale" or key == "barHeight" or key == "specIcons" then
        M.EachWindow("ApplyLayout")
    else
        M.EachWindow("UpdateVisibility")
    end
end

local function OnChange(setting, variable, key)
    local function changed()
        Apply(key)
    end
    if setting.SetValueChangedCallback then
        setting:SetValueChangedCallback(changed)
    elseif Settings.SetOnValueChangedCallback then
        Settings.SetOnValueChangedCallback(variable, changed)
    end
end

local function Build()
    local category, layout = Settings.RegisterVerticalLayoutCategory(L["TITLE"])
    local boolean = Settings.VarType and Settings.VarType.Boolean or "boolean"
    local number = Settings.VarType and Settings.VarType.Number or "number"
    for _, option in ipairs(CHECKBOXES) do
        local key = option[1]
        local variable = "AZIMUTE_METER_" .. key
        local setting = Settings.RegisterAddOnSetting(category, variable, key, M.db, boolean, L[option[2]], M.DEFAULTS[key])
        OnChange(setting, variable, key)
        Settings.CreateCheckbox(category, setting, L[option[3]])
    end
    if Settings.CreateSlider and Settings.CreateSliderOptions then
        for _, option in ipairs(SLIDERS) do
            local key = option[1]
            local variable = "AZIMUTE_METER_" .. key
            local setting = Settings.RegisterAddOnSetting(category, variable, key, M.db, number, L[option[2]], M.DEFAULTS[key])
            OnChange(setting, variable, key)
            local sliderOptions = Settings.CreateSliderOptions(option[3], option[4], option[5])
            if sliderOptions.SetLabelFormatter and MinimalSliderWithSteppersMixin then
                sliderOptions:SetLabelFormatter(MinimalSliderWithSteppersMixin.Label.Right, option[6])
            end
            Settings.CreateSlider(category, setting, sliderOptions, L[option[2]])
        end
    end
    if layout and CreateSettingsListSectionHeaderInitializer then
        layout:AddInitializer(CreateSettingsListSectionHeaderInitializer(L["OPT_NATIVE"]))
    end
    Settings.RegisterAddOnCategory(category)
    return category
end

function Options:Init()
    if not (Settings and Settings.RegisterVerticalLayoutCategory and Settings.RegisterAddOnSetting) then
        return
    end
    -- Se a Settings API mudar, o medidor continua funcionando pelo /azm.
    local ok, result = pcall(Build)
    if ok then
        self.category = result
    end
end

function Options:Open()
    if self.category and Settings.OpenToCategory then
        Settings.OpenToCategory(self.category:GetID())
    else
        for _, line in ipairs(L["HELP"]) do
            M.Print(line)
        end
    end
end

M:On("LOGIN", function()
    Options:Init()
end)
