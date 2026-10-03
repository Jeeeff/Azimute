-- Seta própria do Azimute (usada quando o TomTom não está ativo).
local addonName, ns = ...
local L = ns.L

local Arrow = {}
ns.Arrow = Arrow

-- Textura nativa do jogo; se a ponta não estiver para cima, ajuste o
-- ROTATION_OFFSET (em radianos) depois de testar no jogo.
local ARROW_TEXTURE = "Interface\\Minimap\\MiniMap-QuestArrow"
local ROTATION_OFFSET = 0
local NEAR_DISTANCE = 20

function Arrow:Create()
    local frame = CreateFrame("Frame", "AzimuteArrowFrame", UIParent)
    frame:SetSize(70, 80)
    frame:SetFrameStrata("MEDIUM")

    local icon = frame:CreateTexture(nil, "ARTWORK")
    icon:SetSize(48, 48)
    icon:SetPoint("TOP")
    icon:SetTexture(ARROW_TEXTURE)
    frame.icon = icon

    local distance = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    distance:SetPoint("TOP", icon, "BOTTOM", 0, -2)
    frame.distance = distance

    ns.MakeMovable(frame, "arrowPoint")
    frame:Hide()
    self.frame = frame
end

function Arrow:SetActive(active)
    if self.frame then
        self.frame:SetShown(active and ns.db.arrowShown)
    end
end

-- distance em jardas; bearing no padrão do GetPlayerFacing(). Sem
-- distância, bearing traz o motivo ("position" ou "continent").
function Arrow:Update(distance, bearing)
    local frame = self.frame
    if not frame or not frame:IsShown() then
        return
    end
    if not distance then
        frame.icon:Hide()
        frame.distance:SetText(bearing == "continent" and L["OTHER_CONTINENT"] or L["NO_POSITION"])
        return
    end
    frame.distance:SetText(L["YARDS"]:format(math.floor(distance)))

    local facing = GetPlayerFacing()
    if bearing and facing and not ns.IsSecret(facing) then
        frame.icon:Show()
        frame.icon:SetRotation(bearing - facing + ROTATION_OFFSET)
        if distance <= NEAR_DISTANCE then
            frame.icon:SetVertexColor(0.3, 1, 0.3)
        else
            frame.icon:SetVertexColor(1, 1, 1)
        end
    else
        frame.icon:Hide()
    end
end

ns:On("INIT", function()
    Arrow:Create()
end)
