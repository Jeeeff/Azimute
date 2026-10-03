-- Volta ao corpo: enquanto o jogador é fantasma, a seta/TomTom/pino levam
-- até o corpo (prioridade sobre o guia) e um aviso aparece na tela.
local addonName, ns = ...
local L = ns.L

local Corpse = {}
ns.Corpse = Corpse

local TICK_SECONDS = 0.25
local ARRIVE_YARDS = 30 -- perto disso o jogo já oferece "Ressuscitar"

local function IsGhost()
    return UnitIsGhost and UnitIsGhost("player") and true or false
end

-- Posição do corpo no mapa do jogador ou em algum mapa acima dele
-- (zona -> continente), onde a API conseguir responder.
local function FindCorpse()
    if not (C_DeathInfo and C_DeathInfo.GetCorpseMapPosition) then
        return nil
    end
    local mapID = C_Map.GetBestMapForUnit("player")
    for _ = 1, 5 do
        if not mapID or mapID == 0 then
            return nil
        end
        local ok, position = pcall(C_DeathInfo.GetCorpseMapPosition, mapID)
        if ok and position then
            local x, y = position:GetXY()
            if x and y and (x ~= 0 or y ~= 0) then
                return mapID, x, y
            end
        end
        local info = C_Map.GetMapInfo(mapID)
        mapID = info and info.parentMapID
    end
end

-- Alvo de navegação do corpo (nil quando não está morto ou a opção está desligada).
function Corpse:Target()
    if not self.active then
        return nil
    end
    local mapID, x, y = FindCorpse()
    if not mapID then
        return nil
    end
    self.goal = self.goal or { type = "corpse" }
    return { goal = self.goal, mapID = mapID, x = x, y = y, radius = ARRIVE_YARDS, corpse = true }
end

function Corpse:IsGuiding()
    return self.active == true
end

------------------------------------------------------------------------
-- Aviso na tela
------------------------------------------------------------------------

function Corpse:CreateBanner()
    local banner = CreateFrame("Frame", "AzimuteCorpseBanner", UIParent, "BackdropTemplate")
    banner:SetSize(320, 34)
    banner:SetPoint("TOP", UIParent, "TOP", 0, -110)
    banner:SetFrameStrata("HIGH")
    banner:SetBackdrop({
        bgFile = "Interface\\Buttons\\WHITE8x8",
        edgeFile = "Interface\\Buttons\\WHITE8x8",
        edgeSize = 1,
    })
    banner:SetBackdropColor(0.04, 0.04, 0.06, 0.85)
    banner:SetBackdropBorderColor(0.6, 0.75, 1, 0.5)
    banner.icon = banner:CreateTexture(nil, "ARTWORK")
    banner.icon:SetSize(20, 20)
    banner.icon:SetPoint("LEFT", 8, 0)
    banner.icon:SetTexture("Interface\\TargetingFrame\\UI-TargetingFrame-Skull")
    banner.text = banner:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    banner.text:SetPoint("LEFT", banner.icon, "RIGHT", 8, 0)
    banner.text:SetPoint("RIGHT", -8, 0)
    banner.text:SetJustifyH("LEFT")
    banner:Hide()
    self.banner = banner
end

function Corpse:UpdateBanner()
    local banner = self.banner
    if not banner then
        return
    end
    if not self.active then
        banner:Hide()
        return
    end
    local target = self:Target()
    local text
    if not target then
        text = L["CORPSE_UNKNOWN"]
    else
        local distance = ns.Position.VectorTo(target.mapID, target.x, target.y)
        if distance and distance <= ARRIVE_YARDS then
            text = L["CORPSE_ARRIVED"]
        elseif distance then
            text = L["CORPSE_GUIDING"]:format(distance)
        else
            text = L["CORPSE_GUIDING_NODIST"]
        end
    end
    banner.text:SetText(text)
    banner:SetWidth(math.max(220, banner.text:GetStringWidth() + 46))
    banner:Show()
end

------------------------------------------------------------------------
-- Estado: fantasma ou não
------------------------------------------------------------------------

function Corpse:Update()
    local active = ns.db.corpseGuide and IsGhost() or false
    if active ~= self.active then
        self.active = active
        ns.Debug("corpo: %s", active and "guiando" or "desligado")
        if ns.Nav then
            ns.Nav.waypointKey = false
            ns.Nav:Refresh()
        end
        ns:Fire("STEP_UPDATED")
        if active and not self.ticker then
            self.ticker = C_Timer.NewTicker(TICK_SECONDS, function()
                Corpse:UpdateBanner()
            end)
        elseif not active and self.ticker then
            self.ticker:Cancel()
            self.ticker = nil
        end
    end
    self:UpdateBanner()
end

local function Update()
    Corpse:Update()
    -- O estado de fantasma às vezes só muda um instante depois do evento.
    C_Timer.After(0.5, function()
        Corpse:Update()
    end)
end

ns:On("INIT", function()
    Corpse:CreateBanner()
end)
ns:On("LOGIN", Update)
ns:RegisterEvent("PLAYER_DEAD", Update)
ns:RegisterEvent("PLAYER_ALIVE", Update)   -- liberou o espírito (fantasma) ou ressuscitou
ns:RegisterEvent("PLAYER_UNGHOST", Update) -- voltou ao corpo
ns:RegisterEvent("PLAYER_ENTERING_WORLD", Update)
