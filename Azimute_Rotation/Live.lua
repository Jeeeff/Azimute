-- Barra ao vivo: os ícones da rotação em combate, na ordem de prioridade.
-- No Forever (regras do Midnight) o jogo esconde dos addons parte do que
-- acontece em combate (valores secretos). Por isso a barra só usa:
--   * "dá para usar agora" (C_Spell.IsSpellUsable, nunca secreto): ícone apagado se não;
--   * o giro da recarga desenhado pelo próprio jogo (objeto de duração);
--   * o brilho no próximo golpe só quando a recarga (e, para dano contínuo,
--     o efeito no alvo) vier legível. Nada secreto é comparado.
-- A barra não tem cliques: é só para olhar.
local addonName, R = ...

local Live = {}
R.Live = Live

local SIZE = 36
local GAP = 4
local SHOWN = 5
local GCD = 1.6
local LIVE_KINDS = { opener = true, dot = true, main = true, reactive = true, execute = true, filler = true }

local function Call(fn, ...)
    if type(fn) ~= "function" then
        return false
    end
    return pcall(fn, ...)
end

------------------------------------------------------------------------
-- O que o jogo deixa saber
------------------------------------------------------------------------

-- true/false: pode usar agora (mana, fúria, posição, alvo...). nil se não souber.
function Live.Usable(key)
    if not (C_Spell and C_Spell.IsSpellUsable) then
        return nil
    end
    local ok, usable = Call(C_Spell.IsSpellUsable, key)
    if not ok or R.IsSecret(usable) then
        return nil
    end
    return usable and true or false
end

-- true: fora de recarga; false: em recarga; nil: o jogo escondeu.
function Live.Ready(key)
    if not (C_Spell and C_Spell.GetSpellCooldown) then
        return nil
    end
    local ok, info = Call(C_Spell.GetSpellCooldown, key)
    if not ok or not info or R.IsSecret(info) or R.IsSecret(info.duration) or R.IsSecret(info.startTime) then
        return nil
    end
    if (info.duration or 0) <= GCD then
        return true
    end
    return (info.startTime or 0) + info.duration - GetTime() <= GCD
end

-- true: o seu efeito está no alvo; false: não está; nil: o jogo escondeu.
function Live.OnTarget(key)
    if not (C_UnitAuras and C_UnitAuras.GetAuraDataBySpellName) or type(key) ~= "string" then
        return nil
    end
    local ok, aura = Call(C_UnitAuras.GetAuraDataBySpellName, "target", key, "HARMFUL|PLAYER")
    if not ok or R.IsSecret(aura) then
        return nil
    end
    if aura and (R.IsSecret(aura.expirationTime) or R.IsSecret(aura.spellId)) then
        return nil
    end
    return aura ~= nil
end

-- Passos da barra: conhecidos e do tipo que faz sentido em combate.
function Live.Steps(spec, inCombat)
    local list = {}
    for _, step in ipairs(spec and spec.steps or {}) do
        if LIVE_KINDS[step[2]] and not (inCombat and step[2] == "opener") and R.Knows(step[1]) then
            list[#list + 1] = step
        end
    end
    return list
end

-- Índice do próximo golpe (só quando dá para ter certeza).
function Live.Next(steps)
    for i, step in ipairs(steps) do
        local key = R.SpellKey(step[1])
        local usable, ready = Live.Usable(key), Live.Ready(key)
        if usable and ready then
            if step[2] ~= "dot" then
                return i
            end
            local onTarget = Live.OnTarget(key)
            if onTarget == false then
                return i
            end
        end
    end
end

------------------------------------------------------------------------
-- Diagnóstico: guarda o que deu para ler na primeira atualização da luta
------------------------------------------------------------------------

local function State(ok, value)
    if not ok then
        return "missing"
    end
    return R.IsSecret(value) and "secret" or "ok"
end

function Live.Probe(steps)
    local step = steps[1]
    if not step then
        return
    end
    local key = R.SpellKey(step[1])
    local diag = {}
    local ok, value = Call(C_Spell and C_Spell.IsSpellUsable, key)
    diag.usable = State(ok, value)
    ok, value = Call(C_Spell and C_Spell.GetSpellCooldown, key)
    diag.cooldown = State(ok, value and not R.IsSecret(value) and value.duration or value)
    ok, value = Call(C_Spell and C_Spell.GetSpellCooldownDuration, key, true)
    diag.duration = State(ok, value)
    ok, value = Call(C_UnitAuras and C_UnitAuras.GetAuraDataBySpellName, "target", key, "HARMFUL|PLAYER")
    diag.aura = State(ok, value)
    if C_AssistedCombat and C_AssistedCombat.IsAvailable then
        local okA, available, reason = pcall(C_AssistedCombat.IsAvailable)
        diag.assisted = okA and (available and "ok" or ("no: " .. tostring(reason))) or "missing"
    else
        diag.assisted = "missing"
    end
    diag.time = time and time() or 0
    R.db.diag = diag
end

------------------------------------------------------------------------
-- Barra
------------------------------------------------------------------------

local function CreateBar()
    local bar = CreateFrame("Frame", "AzimuteRotationBar", UIParent, "BackdropTemplate")
    bar:SetSize(SHOWN * SIZE + (SHOWN - 1) * GAP + 8, SIZE + 8)
    bar:SetFrameStrata("MEDIUM")
    bar:SetClampedToScreen(true)
    bar:SetMovable(true)
    bar:RegisterForDrag("LeftButton")
    bar:SetScript("OnDragStart", bar.StartMoving)
    bar:SetScript("OnDragStop", function(f)
        f:StopMovingOrSizing()
        local point, _, relativePoint, x, y = f:GetPoint(1)
        R.db.barPoint = { point, relativePoint, x, y }
    end)
    local p = R.db.barPoint
    bar:SetPoint(p[1], UIParent, p[2], p[3], p[4])
    bar.icons = {}
    for i = 1, SHOWN do
        local icon = CreateFrame("Frame", nil, bar)
        icon:SetSize(SIZE, SIZE)
        icon:SetPoint("LEFT", 4 + (i - 1) * (SIZE + GAP), 0)
        icon.texture = icon:CreateTexture(nil, "ARTWORK")
        icon.texture:SetAllPoints()
        icon.cooldown = CreateFrame("Cooldown", nil, icon, "CooldownFrameTemplate")
        icon.cooldown:SetAllPoints()
        icon.glow = icon:CreateTexture(nil, "OVERLAY")
        icon.glow:SetPoint("TOPLEFT", -6, 6)
        icon.glow:SetPoint("BOTTOMRIGHT", 6, -6)
        icon.glow:SetTexture("Interface\\Buttons\\UI-ActionButton-Border")
        icon.glow:SetBlendMode("ADD")
        icon.glow:SetVertexColor(1, 0.85, 0.2)
        icon.glow:Hide()
        bar.icons[i] = icon
    end
    bar:Hide()
    return bar
end

function Live:Bar()
    if not self.bar then
        self.bar = CreateBar()
    end
    return self.bar
end

function Live:ShouldShow()
    if not R.db.live then
        return false
    end
    if not R.db.locked or R.db.liveAlways then
        return true
    end
    return UnitAffectingCombat and UnitAffectingCombat("player") and true or false
end

function Live:Update()
    local bar = self:Bar()
    local show = self:ShouldShow()
    bar:EnableMouse(not R.db.locked)
    bar:SetBackdrop(not R.db.locked and { bgFile = "Interface\\Buttons\\WHITE8x8" } or nil)
    if not R.db.locked then
        bar:SetBackdropColor(0.2, 0.6, 1, 0.35)
    end
    bar:SetShown(show)
    if not show then
        return
    end
    local inCombat = UnitAffectingCombat and UnitAffectingCombat("player")
    local steps = Live.Steps(R:CurrentSpec(), inCombat)
    if inCombat and not self.probed then
        self.probed = true
        pcall(Live.Probe, steps)
    end
    local nextIndex = Live.Next(steps)
    for i, icon in ipairs(bar.icons) do
        local step = steps[i]
        if step then
            local key = R.SpellKey(step[1])
            icon.texture:SetTexture(R.SpellIcon(step[1]))
            icon.texture:SetDesaturated(Live.Usable(key) == false)
            local ok, duration = Call(C_Spell and C_Spell.GetSpellCooldownDuration, key, true)
            if ok and duration and icon.cooldown.SetCooldownFromDurationObject then
                pcall(icon.cooldown.SetCooldownFromDurationObject, icon.cooldown, duration)
            end
            icon.glow:SetShown(i == nextIndex)
            icon:Show()
        else
            icon:Hide()
        end
    end
end

local elapsed = 0
local ticker = CreateFrame("Frame")
ticker:SetScript("OnUpdate", function(_, delta)
    elapsed = elapsed + delta
    if elapsed < 0.15 or not R.db then
        return
    end
    elapsed = 0
    if Live.bar and Live.bar:IsShown() then
        local ok, err = pcall(Live.Update, Live)
        if not ok and R.db.debug then
            R.Print(tostring(err))
        end
    end
end)

R:On("CHANGED", function() Live:Update() end)
R:On("LOGIN", function() Live:Update() end)
R:RegisterEvent("PLAYER_REGEN_DISABLED", function()
    Live.probed = false
    C_Timer.After(0.1, function() Live:Update() end)
end)
R:RegisterEvent("PLAYER_REGEN_ENABLED", function() Live:Update() end)
R:RegisterEvent("PLAYER_TARGET_CHANGED", function() Live:Update() end)
