-- Núcleo das Utilidades: dados salvos, eventos e o registro de recursos.
-- Cada recurso (câmera, dicas, mapa...) mora num arquivo e se registra com
-- U:Feature(); o que é inicializado roda protegido (pcall): um recurso com
-- erro não impede os outros.
local addonName, U = ...
local L = U.L

U.DEFAULTS = {}
U.features = {}

function U.Print(msg)
    print("|cff33ff99" .. L["TITLE"] .. "|r " .. msg)
end

function U.IsSecret(value)
    return type(issecretvalue) == "function" and issecretvalue(value) and true or false
end

-- info = { key = "camera", label = "OPT_CAMERA", tip = "OPT_CAMERA_TIP", default = true,
--          init = function() end, apply = function(enabled) end, options = { ...extras } }
function U:Feature(info)
    self.DEFAULTS[info.key] = info.default
    for _, extra in ipairs(info.extras or {}) do
        self.DEFAULTS[extra.key] = extra.default
    end
    table.insert(self.features, info)
end

function U:Enabled(key)
    return self.db and self.db[key] and true or false
end

------------------------------------------------------------------------
-- Mensagens internas e eventos (vários recursos podem ouvir o mesmo evento)
------------------------------------------------------------------------

local callbacks = {}
function U:On(message, handler)
    callbacks[message] = callbacks[message] or {}
    table.insert(callbacks[message], handler)
end
function U:Fire(message, ...)
    for _, handler in ipairs(callbacks[message] or {}) do
        local ok, err = pcall(handler, ...)
        if not ok and U.db and U.db.debug then
            U.Print(tostring(err))
        end
    end
end

local frame = CreateFrame("Frame")
local handlers = {}
function U:RegisterEvent(event, handler)
    if C_EventUtils and C_EventUtils.IsEventValid and not C_EventUtils.IsEventValid(event) then
        return false
    end
    if not handlers[event] then
        if not pcall(frame.RegisterEvent, frame, event) then
            return false
        end
        handlers[event] = {}
    end
    table.insert(handlers[event], handler)
    return true
end
frame:SetScript("OnEvent", function(_, event, ...)
    for _, handler in ipairs(handlers[event] or {}) do
        local ok, err = pcall(handler, ...)
        if not ok and U.db and U.db.debug then
            U.Print(event .. ": " .. tostring(err))
        end
    end
end)

local function CopyDefaults(db, defaults)
    for key, value in pairs(defaults) do
        if db[key] == nil then
            db[key] = type(value) == "table" and CopyTable(value) or value
        end
    end
    return db
end

U:RegisterEvent("ADDON_LOADED", function(name)
    if name ~= addonName then
        return
    end
    AzimuteUtilsDB = CopyDefaults(AzimuteUtilsDB or {}, U.DEFAULTS)
    U.db = AzimuteUtilsDB
    for _, feature in ipairs(U.features) do
        if feature.init then
            local ok, err = pcall(feature.init)
            if not ok then
                U.Print(("%s: %s"):format(L[feature.label], tostring(err)))
            end
        end
    end
    U:Fire("INIT")
end)

U:RegisterEvent("PLAYER_LOGIN", function()
    for _, feature in ipairs(U.features) do
        if feature.apply then
            pcall(feature.apply, U:Enabled(feature.key))
        end
    end
    U:Fire("LOGIN")
    if AzimuteAPI and AzimuteAPI.RegisterModule then
        pcall(AzimuteAPI.RegisterModule, {
            name = L["TITLE"],
            toggle = function() U.Options:Open() end,
            options = function() U.Options:Open() end,
        })
    end
end)

SLASH_AZIMUTEUTILS1 = "/azu"
SLASH_AZIMUTEUTILS2 = "/azutil"
SlashCmdList.AZIMUTEUTILS = function()
    U.Options:Open()
end
