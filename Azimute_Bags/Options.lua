-- Opções (Esc > Opções > AddOns > Azimute Bolsas).
local addonName, B = ...
local L = B.L

local Options = {}
B.Options = Options

local CHECKBOXES = {
    { "replaceBags", "OPT_REPLACE", "OPT_REPLACE_TIP" },
    { "unifiedBank", "OPT_BANK", "OPT_BANK_TIP" },
    { "itemLevel", "OPT_ILVL", "OPT_ILVL_TIP" },
    { "showKeyring", "OPT_KEYRING", "OPT_KEYRING_TIP" },
}

local SLIDERS = {
    { "columns", "OPT_COLUMNS", 6, 20, 1, function(v) return ("%d"):format(v) end },
    { "bankColumns", "OPT_BANK_COLUMNS", 6, 24, 1, function(v) return ("%d"):format(v) end },
    { "scale", "OPT_SCALE", 0.5, 1.5, 0.05, function(v) return ("%d%%"):format(v * 100 + 0.5) end },
}

local function Apply()
    for _, container in ipairs({ B.bags, B.bank }) do
        if container then
            container:ApplyLayout()
        end
    end
end

local function OnChange(setting, variable)
    if setting.SetValueChangedCallback then
        setting:SetValueChangedCallback(Apply)
    elseif Settings.SetOnValueChangedCallback then
        Settings.SetOnValueChangedCallback(variable, Apply)
    end
end

local function Build()
    local category = Settings.RegisterVerticalLayoutCategory(L["TITLE"])
    local boolean = Settings.VarType and Settings.VarType.Boolean or "boolean"
    local number = Settings.VarType and Settings.VarType.Number or "number"
    for _, option in ipairs(CHECKBOXES) do
        local key = option[1]
        local variable = "AZIMUTE_BAGS_" .. key
        local setting = Settings.RegisterAddOnSetting(category, variable, key, B.db, boolean, L[option[2]], B.DEFAULTS[key])
        OnChange(setting, variable)
        Settings.CreateCheckbox(category, setting, L[option[3]])
    end
    if Settings.CreateSlider and Settings.CreateSliderOptions then
        for _, option in ipairs(SLIDERS) do
            local key = option[1]
            local variable = "AZIMUTE_BAGS_" .. key
            local setting = Settings.RegisterAddOnSetting(category, variable, key, B.db, number, L[option[2]], B.DEFAULTS[key])
            OnChange(setting, variable)
            local sliderOptions = Settings.CreateSliderOptions(option[3], option[4], option[5])
            if sliderOptions.SetLabelFormatter and MinimalSliderWithSteppersMixin then
                sliderOptions:SetLabelFormatter(MinimalSliderWithSteppersMixin.Label.Right, option[6])
            end
            Settings.CreateSlider(category, setting, sliderOptions, L[option[2]])
        end
    end
    Settings.RegisterAddOnCategory(category)
    return category
end

function Options:Init()
    if not (Settings and Settings.RegisterVerticalLayoutCategory and Settings.RegisterAddOnSetting) then
        return
    end
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
            B.Print(line)
        end
    end
end

B:On("LOGIN", function()
    Options:Init()
end)
