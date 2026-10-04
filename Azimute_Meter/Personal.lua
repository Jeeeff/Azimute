-- Mostrador pessoal (opcional): uma linha discreta com o SEU dano durante a
-- luta e o seu DPS quando ela acaba. Em combate o número vem lacrado e vai
-- direto para o texto (o jogo deixa); a conta do DPS só depois.
local addonName, M = ...
local L = M.L
local Meter = M.Meter

local Personal = {}
M.Personal = Personal

local INTERVAL = 0.5

local function LocalSource(meterType)
    local ok, session = pcall(C_DamageMeter.GetCombatSessionFromType, Meter.SESSION.Current, meterType)
    if not ok or not session then
        return nil, nil
    end
    for _, source in ipairs(session.combatSources or {}) do
        if source.isLocalPlayer == true then
            return source, session
        end
    end
    return nil, session
end

function Personal:Create()
    local frame = CreateFrame("Frame", "AzimuteMeterPersonal", UIParent)
    frame:SetSize(170, 20)
    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetScript("OnDragStart", frame.StartMoving)
    frame:SetScript("OnDragStop", function(f)
        f:StopMovingOrSizing()
        local point, _, relativePoint, x, y = f:GetPoint(1)
        M.db.personalPoint = { point, relativePoint, x, y }
    end)
    frame.text = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    frame.text:SetPoint("CENTER")
    local p = M.db.personalPoint
    frame:SetPoint(p[1], UIParent, p[2], p[3], p[4])
    local elapsed = 0
    frame:SetScript("OnUpdate", function(self, delta)
        elapsed = elapsed + delta
        if elapsed >= INTERVAL then
            elapsed = 0
            Personal:Update()
        end
    end)
    self.frame = frame
    self:Apply()
end

function Personal:Update()
    if not Meter:Available() then
        self.frame.text:SetText("")
        return
    end
    local source = LocalSource(Meter.TYPE.DamageDone)
    if not source then
        self.frame.text:SetText("")
        return
    end
    local amount = source.totalAmount
    if M.IsSecret(amount) then
        -- em combate: só o total (o jogo não deixa fazer a conta)
        self.frame.text:SetText(L["PERSONAL_DAMAGE"] .. M.Abbrev(amount))
        return
    end
    local duration = C_DamageMeter.GetSessionDurationSeconds and C_DamageMeter.GetSessionDurationSeconds(Meter.SESSION.Current)
    if M.Positive(duration) and M.Positive(amount) then
        self.frame.text:SetText(L["PERSONAL_DPS"]:format(M.Abbrev(amount / duration), M.Abbrev(amount)))
    else
        self.frame.text:SetText(L["PERSONAL_DAMAGE"] .. M.Abbrev(amount or 0))
    end
end

function Personal:Apply()
    if self.frame then
        self.frame:SetShown(M.db.personal and true or false)
    end
end

M:On("INIT", function()
    Personal:Create()
end)
