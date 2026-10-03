-- Opções (Esc > Opções > AddOns > Azimute Utilidades), montadas a partir dos
-- recursos registrados (U:Feature), agrupados por seção.
local addonName, U = ...
local L = U.L

local Options = {}
U.Options = Options

local SECTIONS = {
    { "SECTION_GENERAL", { "camera", "tooltipIDs", "tooltipTarget" } },
    { "SECTION_MAP", { "mapCoords" } },
    { "SECTION_ALERTS", { "alertBags", "alertDurability", "alertHearth" } },
    { "SECTION_MERCHANT", { "merchantStack" } },
    { "SECTION_SOCIAL", { "declineDuels", "declineInvites", "acceptResurrect", "acceptSummon" } },
}

local function FindFeature(key)
    for _, feature in ipairs(U.features) do
        if feature.key == key then
            return feature
        end
    end
end

local function Build()
    local category, layout = Settings.RegisterVerticalLayoutCategory(L["TITLE"])
    local boolean = Settings.VarType and Settings.VarType.Boolean or "boolean"
    for _, section in ipairs(SECTIONS) do
        if layout and CreateSettingsListSectionHeaderInitializer then
            layout:AddInitializer(CreateSettingsListSectionHeaderInitializer(L[section[1]]))
        end
        for _, key in ipairs(section[2]) do
            local feature = FindFeature(key)
            if feature then
                local variable = "AZIMUTE_UTILS_" .. key
                local setting = Settings.RegisterAddOnSetting(category, variable, key, U.db, boolean, L[feature.label], feature.default)
                local function changed(_, value)
                    if feature.apply then
                        pcall(feature.apply, value and true or false)
                    end
                end
                if setting.SetValueChangedCallback then
                    setting:SetValueChangedCallback(changed)
                elseif Settings.SetOnValueChangedCallback then
                    Settings.SetOnValueChangedCallback(variable, changed)
                end
                Settings.CreateCheckbox(category, setting, L[feature.tip])
            end
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
    end
end

U:On("LOGIN", function()
    Options:Init()
end)
