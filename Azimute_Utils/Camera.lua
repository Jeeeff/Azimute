-- Zoom máximo da câmera. O menu do Forever vai até 2.0; o jogo aceita mais
-- pelo CVar (o valor efetivo fica limitado pelo próprio cliente). Ao desligar,
-- volta o valor que o jogador tinha antes.
local addonName, U = ...

local CVAR = "cameraDistanceMaxZoomFactor"
local MAX = 2.6

local function GetCVarValue()
    local get = (C_CVar and C_CVar.GetCVar) or GetCVar
    return get and tonumber(get(CVAR))
end

local function SetCVarValue(value)
    local set = (C_CVar and C_CVar.SetCVar) or SetCVar
    if set then
        pcall(set, CVAR, tostring(value))
    end
end

U:Feature({
    key = "camera",
    label = "OPT_CAMERA",
    tip = "OPT_CAMERA_TIP",
    default = true,
    apply = function(enabled)
        local current = GetCVarValue()
        if enabled then
            if U.db.cameraPrevious == nil and current and current < MAX then
                U.db.cameraPrevious = current
            end
            SetCVarValue(MAX)
        elseif U.db.cameraPrevious then
            SetCVarValue(U.db.cameraPrevious)
            U.db.cameraPrevious = nil
        end
    end,
})
