-- Raros por perto: detecta pelos marcadores do minimapa (vignettes) e pela
-- classificação "raro" de placas de nome, alvo e mouse. Avisa uma vez por
-- raro a cada 10 minutos, com som; guarda a posição para levar a seta lá.
local addonName, R = ...
local L = R.L

local REPEAT = 10 * 60
local HISTORY = 15

R.DEFAULTS = { rares = true, treasures = false, sound = true, pin = false }

local function IsSecret(value)
    return type(issecretvalue) == "function" and issecretvalue(value) and true or false
end

function R.Print(msg)
    print("|cff33ff99" .. L["TITLE"] .. "|r " .. msg)
end

------------------------------------------------------------------------
-- Aviso
------------------------------------------------------------------------

local seen = {} -- [chave] = hora do último aviso

local function Alert(kind, name, mapID, x, y)
    local now = GetTime()
    local key = kind .. ":" .. name
    if seen[key] and now - seen[key] < REPEAT then
        return false
    end
    seen[key] = now
    local text = (kind == "treasure" and L["TREASURE_FOUND"] or L["RARE_FOUND"]):format(name)
    if RaidNotice_AddMessage and RaidWarningFrame and ChatTypeInfo then
        RaidNotice_AddMessage(RaidWarningFrame, text, ChatTypeInfo["RAID_WARNING"])
    end
    if R.db.sound and PlaySound and SOUNDKIT and SOUNDKIT.RAID_WARNING then
        PlaySound(SOUNDKIT.RAID_WARNING)
    end
    R.Print(text)
    local entry = { name = name, kind = kind, time = time(), mapID = mapID, x = x, y = y }
    table.insert(R.db.history, 1, entry)
    while #R.db.history > HISTORY do
        table.remove(R.db.history)
    end
    if mapID and x then
        R.last = entry
        if R.db.pin then
            R:Go(entry)
        else
            R.Print(L["CLICK_TO_GO"])
        end
    end
    return true
end
R.Alert = Alert

-- Seta do Azimute (se estiver ligado) ou pino do mapa do jogo.
function R:Go(entry)
    entry = entry or self.last
    if not (entry and entry.mapID and entry.x) then
        R.Print(L["GO_NONE"])
        return
    end
    local done = AzimuteAPI and AzimuteAPI.GoTo and AzimuteAPI.GoTo(entry.mapID, entry.x, entry.y, entry.name)
    if not done and C_Map.CanSetUserWaypointOnMap and C_Map.CanSetUserWaypointOnMap(entry.mapID) then
        C_Map.SetUserWaypoint(UiMapPoint.CreateFromCoordinates(entry.mapID, entry.x, entry.y))
        if C_SuperTrack and C_SuperTrack.SetSuperTrackedUserWaypoint then
            pcall(C_SuperTrack.SetSuperTrackedUserWaypoint, true)
        end
    end
    R.Print(L["GOING"]:format(entry.name))
end

------------------------------------------------------------------------
-- Marcadores do minimapa (vignettes)
------------------------------------------------------------------------

local function VignetteKind(info)
    local atlas = info.atlasName or ""
    if atlas:find("Loot") or atlas:find("Treasure") then
        return "treasure"
    end
    if atlas:find("Kill") or atlas:find("Rare") or atlas:find("Elite") then
        return "rare"
    end
    return nil
end

function R:CheckVignette(guid)
    if not (C_VignetteInfo and C_VignetteInfo.GetVignetteInfo) or not guid or IsSecret(guid) then
        return
    end
    local info = C_VignetteInfo.GetVignetteInfo(guid)
    if not info or info.isDead or not info.onMinimap then
        return
    end
    local kind = VignetteKind(info)
    if not kind or (kind == "rare" and not self.db.rares) or (kind == "treasure" and not self.db.treasures) then
        return
    end
    local name = (info.name and not IsSecret(info.name)) and info.name or "?"
    local mapID = C_Map.GetBestMapForUnit("player")
    local x, y
    if mapID and C_VignetteInfo.GetVignettePosition then
        local position = C_VignetteInfo.GetVignettePosition(guid, mapID)
        if position then
            x, y = position:GetXY()
        end
    end
    Alert(kind, name, mapID, x, y)
end

function R:ScanVignettes()
    if not (C_VignetteInfo and C_VignetteInfo.GetVignettes) then
        return
    end
    for _, guid in ipairs(C_VignetteInfo.GetVignettes() or {}) do
        self:CheckVignette(guid)
    end
end

------------------------------------------------------------------------
-- Unidades (placas de nome, alvo, mouse): classificação "raro"
------------------------------------------------------------------------

local RARE_CLASS = { rare = true, rareelite = true }

function R:CheckUnit(unit)
    if not self.db.rares or not UnitExists(unit) or UnitIsDead(unit) or UnitIsPlayer(unit) then
        return
    end
    local classification = UnitClassification(unit)
    if IsSecret(classification) or not RARE_CLASS[classification] then
        return
    end
    local name = UnitName(unit)
    if not name or IsSecret(name) then
        name = "?"
    end
    -- sem posição exata da unidade: usa a do jogador (está perto)
    local mapID = C_Map.GetBestMapForUnit("player")
    local position = mapID and C_Map.GetPlayerMapPosition(mapID, "player")
    local x, y
    if position then
        x, y = position:GetXY()
    end
    Alert("rare", name, mapID, x, y)
end

------------------------------------------------------------------------
-- Eventos, opções e comando
------------------------------------------------------------------------

local frame = CreateFrame("Frame")
local handlers = {}
local function On(event, handler)
    if C_EventUtils and C_EventUtils.IsEventValid and not C_EventUtils.IsEventValid(event) then
        return
    end
    if pcall(frame.RegisterEvent, frame, event) then
        handlers[event] = handler
    end
end

On("ADDON_LOADED", function(name)
    if name ~= addonName then
        return
    end
    AzimuteRaresDB = AzimuteRaresDB or {}
    for key, value in pairs(R.DEFAULTS) do
        if AzimuteRaresDB[key] == nil then
            AzimuteRaresDB[key] = value
        end
    end
    AzimuteRaresDB.history = AzimuteRaresDB.history or {}
    R.db = AzimuteRaresDB
end)
-- Até o ADDON_LOADED não há dados salvos: os outros eventos esperam.
frame:SetScript("OnEvent", function(_, event, ...)
    local handler = handlers[event]
    if not handler or (event ~= "ADDON_LOADED" and not R.db) then
        return
    end
    local ok, err = pcall(handler, ...)
    if not ok and R.db and R.db.debug then
        R.Print(event .. ": " .. tostring(err))
    end
end)

On("VIGNETTE_MINIMAP_UPDATED", function(guid, onMinimap)
    if onMinimap then
        R:CheckVignette(guid)
    end
end)
On("VIGNETTES_UPDATED", function()
    R:ScanVignettes()
end)
On("NAME_PLATE_UNIT_ADDED", function(unit)
    R:CheckUnit(unit)
end)
On("PLAYER_TARGET_CHANGED", function()
    R:CheckUnit("target")
end)
On("UPDATE_MOUSEOVER_UNIT", function()
    R:CheckUnit("mouseover")
end)

local function BuildOptions()
    if not (Settings and Settings.RegisterVerticalLayoutCategory and Settings.RegisterAddOnSetting) then
        return
    end
    local category = Settings.RegisterVerticalLayoutCategory(L["TITLE"])
    local boolean = Settings.VarType and Settings.VarType.Boolean or "boolean"
    for _, option in ipairs({ { "rares", "OPT_RARES" }, { "treasures", "OPT_TREASURES" }, { "sound", "OPT_SOUND" }, { "pin", "OPT_PIN" } }) do
        local setting = Settings.RegisterAddOnSetting(category, "AZIMUTE_RARES_" .. option[1], option[1], R.db, boolean,
            L[option[2]], R.DEFAULTS[option[1]])
        Settings.CreateCheckbox(category, setting, L[option[2] .. "_TIP"])
    end
    Settings.RegisterAddOnCategory(category)
    R.category = category
end

On("PLAYER_LOGIN", function()
    pcall(BuildOptions)
    if AzimuteAPI and AzimuteAPI.RegisterModule then
        pcall(AzimuteAPI.RegisterModule, {
            name = L["TITLE"],
            toggle = function() SlashCmdList.AZIMUTERARES("") end,
            options = function() SlashCmdList.AZIMUTERARES("opcoes") end,
        })
    end
    C_Timer.After(5, function()
        R:ScanVignettes()
    end)
end)

SLASH_AZIMUTERARES1 = "/azr"
SLASH_AZIMUTERARES2 = "/azraros"
SlashCmdList.AZIMUTERARES = function(input)
    local command = strtrim(input or ""):lower()
    if command == "go" or command == "ir" then
        R:Go()
    elseif command == "options" or command == "opcoes" or command == "opções" then
        if R.category and Settings.OpenToCategory then
            Settings.OpenToCategory(R.category:GetID())
        end
    elseif command == "" then
        local history = R.db.history
        if #history == 0 then
            R.Print(L["HISTORY_EMPTY"])
            return
        end
        R.Print(L["HISTORY"])
        for i = 1, math.min(10, #history) do
            local entry = history[i]
            print(("  %s - %s"):format(entry.name, L["AGO"]:format(math.floor((time() - entry.time) / 60))))
        end
    else
        for _, line in ipairs(L["HELP"]) do
            R.Print(line)
        end
    end
end
