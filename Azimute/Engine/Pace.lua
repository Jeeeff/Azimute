-- Ritmo de up: XP por hora, tempo até o próximo nível e missões por hora,
-- medidos nos últimos 30 minutos de jogo (sobrevive ao /reload: o registro
-- fica em AzimuteCharDB.pace com a hora do relógio, time()).
local addonName, ns = ...
local L = ns.L

local Pace = {}
ns.Pace = Pace

local WINDOW = 30 * 60   -- segundos considerados
local MIN_SPAN = 3 * 60  -- antes disso a média ainda é instável
local MAX_ENTRIES = 300

local function IsSecret(value)
    return ns.IsSecret(value)
end

local function Log()
    ns.char.pace = ns.char.pace or { gains = {}, quests = {} }
    return ns.char.pace
end

local function Prune(list, now)
    while #list > 0 and (now - list[1].t > WINDOW or #list > MAX_ENTRIES) do
        table.remove(list, 1)
    end
end

-- XP atual (nil se o jogo não informar ou vier secreto).
local function CurrentXP()
    if not (UnitXP and UnitXPMax) then
        return nil
    end
    local xp, max = UnitXP("player"), UnitXPMax("player")
    if xp == nil or max == nil or IsSecret(xp) or IsSecret(max) then
        return nil
    end
    return xp, max
end

function Pace:OnXP()
    local xp, max = CurrentXP()
    if not xp then
        return
    end
    local log = Log()
    local now = time()
    if self.lastXP and self.lastLevel then
        local gain
        if UnitLevel("player") > self.lastLevel then
            gain = (self.lastMax - self.lastXP) + xp -- subiu de nível no meio
        else
            gain = xp - self.lastXP
        end
        if gain > 0 then
            table.insert(log.gains, { t = now, xp = gain })
        end
    end
    -- início da medição (para saber há quanto tempo estamos medindo)
    log.since = log.since or now
    if now - (log.last or now) > WINDOW then
        log.since = now -- ficou muito tempo parado/deslogado: recomeça
    end
    log.last = now
    Prune(log.gains, now)
    self.lastXP, self.lastMax, self.lastLevel = xp, max, UnitLevel("player")
end

function Pace:OnQuest()
    local log = Log()
    local now = time()
    table.insert(log.quests, { t = now })
    Prune(log.quests, now)
end

-- { xpPerHour, secondsToLevel, questsPerHour } ou nil (pouco tempo medido,
-- nível máximo ou XP indisponível).
function Pace:Stats()
    local xp, max = CurrentXP()
    if not xp or max == 0 then
        return nil
    end
    local log = Log()
    local now = time()
    Prune(log.gains, now)
    Prune(log.quests, now)
    local span = math.min(WINDOW, now - (log.since or now))
    if span < MIN_SPAN or #log.gains == 0 then
        return nil
    end
    local total = 0
    for _, gain in ipairs(log.gains) do
        total = total + gain.xp
    end
    local perHour = total * 3600 / span
    local stats = { xpPerHour = perHour, questsPerHour = #log.quests * 3600 / span }
    if perHour > 0 then
        stats.secondsToLevel = (max - xp) * 3600 / perHour
    end
    return stats
end

local function Duration(seconds)
    if seconds >= 3600 then
        return L["PACE_HOURS"]:format(math.floor(seconds / 3600), math.floor(seconds % 3600 / 60))
    end
    return L["PACE_MINUTES"]:format(math.max(1, math.floor(seconds / 60 + 0.5)))
end

local function Thousands(value)
    value = math.floor(value + 0.5)
    if value >= 1000 then
        return ("%d.%03d"):format(math.floor(value / 1000), value % 1000)
    end
    return tostring(value)
end

-- Linha para a janela do guia (ou nil).
function Pace:Line()
    if not ns.db.pace then
        return nil
    end
    local stats = self:Stats()
    if not stats then
        return nil
    end
    local text = L["PACE_XP"]:format(Thousands(stats.xpPerHour))
    if stats.secondsToLevel then
        text = text .. "  ·  " .. L["PACE_LEVEL"]:format(Duration(stats.secondsToLevel))
    end
    if stats.questsPerHour > 0 then
        text = text .. "  ·  " .. L["PACE_QUESTS"]:format(stats.questsPerHour)
    end
    return text
end

function Pace:Print()
    local line = self:Stats() and self:Line()
    ns.Print(line or L["PACE_WAIT"])
end

ns:On("LOGIN", function()
    local xp, max = CurrentXP()
    Pace.lastXP, Pace.lastMax, Pace.lastLevel = xp, max, UnitLevel("player")
    local log = Log()
    if log.last and time() - log.last > WINDOW then
        log.since, log.gains, log.quests = nil, {}, {}
    end
end)
ns:RegisterEvent("PLAYER_XP_UPDATE", function()
    Pace:OnXP()
    if ns.UI then
        ns.UI:Refresh()
    end
end)
ns:RegisterEvent("QUEST_TURNED_IN", function()
    Pace:OnQuest()
end)
