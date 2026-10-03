-- Coordenadas no mapa-múndi: do jogador e do cursor (no mapa que está aberto).
local addonName, U = ...
local L = U.L

local INTERVAL = 0.1

local function Format(x, y)
    if not x or not y or U.IsSecret(x) or U.IsSecret(y) or (x == 0 and y == 0) then
        return "--"
    end
    return ("%.1f, %.1f"):format(x * 100, y * 100)
end

local function PlayerText(mapID)
    local position = mapID and C_Map.GetPlayerMapPosition(mapID, "player")
    if not position then
        return "--"
    end
    return Format(position:GetXY())
end

local function CursorText(container)
    if not (container and container.GetNormalizedCursorPosition and container:IsMouseOver()) then
        return "--"
    end
    local x, y = container:GetNormalizedCursorPosition()
    if not x or x < 0 or x > 1 or y < 0 or y > 1 then
        return "--"
    end
    return Format(x, y)
end

local function Create()
    local map = WorldMapFrame
    if not map or U.coords then
        return
    end
    local container = map.ScrollContainer or map
    local frame = CreateFrame("Frame", "AzimuteUtilsMapCoords", container)
    frame:SetSize(320, 18)
    frame:SetPoint("BOTTOM", container, "BOTTOM", 0, 4)
    frame:SetFrameStrata("HIGH")
    frame.bg = frame:CreateTexture(nil, "BACKGROUND")
    frame.bg:SetAllPoints()
    frame.bg:SetColorTexture(0, 0, 0, 0.55)
    frame.text = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    frame.text:SetPoint("CENTER")
    local elapsed = 0
    frame:SetScript("OnUpdate", function(self, delta)
        elapsed = elapsed + delta
        if elapsed < INTERVAL then
            return
        end
        elapsed = 0
        local mapID = map.GetMapID and map:GetMapID()
        self.text:SetText(L["MAP_COORDS"]:format(PlayerText(mapID), CursorText(container)))
    end)
    frame:SetShown(U:Enabled("mapCoords"))
    U.coords = frame
end

U:Feature({
    key = "mapCoords",
    label = "OPT_MAP_COORDS",
    tip = "OPT_MAP_COORDS_TIP",
    default = true,
    init = function()
        -- O mapa-múndi pode carregar depois das Utilidades.
        if WorldMapFrame then
            Create()
        end
        U:RegisterEvent("ADDON_LOADED", function(name)
            if name == "Blizzard_WorldMap" then
                Create()
            end
        end)
    end,
    apply = function(enabled)
        Create()
        if U.coords then
            U.coords:SetShown(enabled)
        end
    end,
})
