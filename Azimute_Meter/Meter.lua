-- Dados do medidor: lê o C_DamageMeter do próprio jogo (no Midnight/Forever o
-- log de combate saiu dos addons; o servidor monta as lutas e entrega prontas).
--
-- Regra de ouro: durante o combate os números chegam como "valores secretos".
-- Código de addon pode guardá-los e passá-los direto para FontString:SetText,
-- StatusBar:SetValue e AbbreviateNumbers, mas NÃO pode fazer conta, comparar,
-- usar como chave nem testar. Tudo que precisa de conta (porcentagem,
-- relatório, nome sem reino) só acontece quando o valor não é secreto.
local addonName, M = ...
local L = M.L

local Meter = {}
M.Meter = Meter

M.DEFAULTS = {
    point = { "RIGHT", "RIGHT", -40, -80 },
    width = 250,
    height = 170,
    barHeight = 18,
    scale = 1,
    modeIndex = 1,
    segment = "current", -- "current", "overall" ou o id de uma luta anterior
    shown = true,
    locked = false,
    onlyInGroup = false,
    onlyInCombat = false,
    specIcons = true,
    resetOnInstance = false,
}

------------------------------------------------------------------------
-- Utilitários seguros para valores secretos
------------------------------------------------------------------------

function M.IsSecret(value)
    return type(issecretvalue) == "function" and issecretvalue(value) and true or false
end

-- Número curto ("12,3 mil"); aceita valor secreto (a função do jogo aceita).
function M.Abbrev(value)
    if value == nil then
        return "0"
    end
    local abbreviate = (C_StringUtil and C_StringUtil.AbbreviateNumbers) or AbbreviateNumbers
    if abbreviate then
        return abbreviate(value)
    end
    if M.IsSecret(value) then
        return value
    end
    return tostring(math.floor(value + 0.5))
end

-- Número normal (não secreto) e maior que zero?
function M.Positive(value)
    return value ~= nil and not M.IsSecret(value) and type(value) == "number" and value > 0
end

function M.Print(msg)
    print("|cff33ff99" .. L["TITLE"] .. "|r " .. msg)
end

------------------------------------------------------------------------
-- Modos (tipos do Enum.DamageMeterType)
------------------------------------------------------------------------

local TYPE = (Enum and Enum.DamageMeterType) or {
    DamageDone = 0, Dps = 1, HealingDone = 2, Hps = 3, Absorbs = 4, Interrupts = 5,
    Dispels = 6, DamageTaken = 7, AvoidableDamageTaken = 8, Deaths = 9, EnemyDamageTaken = 10,
}
local SESSION = (Enum and Enum.DamageMeterSessionType) or { Overall = 0, Current = 1, Expired = 2 }

-- perSecond = "primary" (DPS/HPS: o valor por segundo vem primeiro),
-- "secondary" (entre parênteses) ou nil (contagens: interrupções, mortes...).
Meter.MODES = {
    { type = TYPE.DamageDone, label = "MODE_DAMAGE", perSecond = "secondary" },
    { type = TYPE.Dps, label = "MODE_DPS", perSecond = "primary" },
    { type = TYPE.HealingDone, label = "MODE_HEALING", perSecond = "secondary" },
    { type = TYPE.Hps, label = "MODE_HPS", perSecond = "primary" },
    { type = TYPE.Absorbs, label = "MODE_ABSORBS", perSecond = "secondary" },
    { type = TYPE.Interrupts, label = "MODE_INTERRUPTS" },
    { type = TYPE.Dispels, label = "MODE_DISPELS" },
    { type = TYPE.DamageTaken, label = "MODE_TAKEN", perSecond = "secondary" },
    { type = TYPE.AvoidableDamageTaken, label = "MODE_AVOIDABLE", perSecond = "secondary" },
    { type = TYPE.Deaths, label = "MODE_DEATHS" },
    { type = TYPE.EnemyDamageTaken, label = "MODE_ENEMY", perSecond = "secondary" },
}

function Meter:Mode()
    return self.MODES[M.db.modeIndex] or self.MODES[1]
end

function Meter:SetMode(index)
    M.db.modeIndex = index
    M:Fire("UPDATE")
end

function Meter:SetSegment(segment)
    M.db.segment = segment
    M:Fire("UPDATE")
end

------------------------------------------------------------------------
-- Leitura das lutas
------------------------------------------------------------------------

-- true, ou false + motivo (texto do jogo).
function Meter:Available()
    if not (C_DamageMeter and C_DamageMeter.GetCombatSessionFromType) then
        return false, "C_DamageMeter"
    end
    if C_DamageMeter.IsDamageMeterAvailable then
        local ok, available, reason = pcall(C_DamageMeter.IsDamageMeterAvailable)
        if ok and available == false then
            return false, reason or "?"
        end
    end
    return true
end

-- Luta escolhida no tipo do modo atual: { combatSources = {...}, maxAmount, totalAmount, durationSeconds }
function Meter:Session()
    if not self:Available() then
        return nil
    end
    local mode = self:Mode()
    local segment = M.db.segment
    local ok, session
    if segment == "overall" then
        ok, session = pcall(C_DamageMeter.GetCombatSessionFromType, SESSION.Overall, mode.type)
    elseif type(segment) == "number" then
        ok, session = pcall(C_DamageMeter.GetCombatSessionFromID, segment, mode.type)
    else
        ok, session = pcall(C_DamageMeter.GetCombatSessionFromType, SESSION.Current, mode.type)
    end
    return ok and session or nil
end

-- Lutas anteriores guardadas pelo jogo: { { sessionID, name, durationSeconds }, ... }
function Meter:Sessions()
    if not (C_DamageMeter and C_DamageMeter.GetAvailableCombatSessions) then
        return {}
    end
    local ok, list = pcall(C_DamageMeter.GetAvailableCombatSessions)
    return ok and list or {}
end

-- Duração da luta em segundos (nil se o jogo não informar ou vier secreta).
function Meter:Duration(session)
    local duration = session and session.durationSeconds
    if M.Positive(duration) then
        return duration
    end
    local segment = M.db.segment
    if type(segment) == "number" then
        for _, info in ipairs(self:Sessions()) do
            if info.sessionID == segment and M.Positive(info.durationSeconds) then
                return info.durationSeconds
            end
        end
        return nil
    end
    if C_DamageMeter and C_DamageMeter.GetSessionDurationSeconds then
        local sessionType = segment == "overall" and SESSION.Overall or SESSION.Current
        local ok, value = pcall(C_DamageMeter.GetSessionDurationSeconds, sessionType)
        if ok and M.Positive(value) then
            return value
        end
    end
    return nil
end

function Meter:SegmentLabel()
    local segment = M.db.segment
    if segment == "overall" then
        return L["SEG_OVERALL"]
    elseif type(segment) == "number" then
        for _, info in ipairs(self:Sessions()) do
            if info.sessionID == segment then
                return M.IsSecret(info.name) and L["SEG_FIGHTS"] or (info.name or "?")
            end
        end
        -- luta antiga sumiu (o jogo descartou): volta para a atual
        M.db.segment = "current"
    end
    return L["SEG_CURRENT"]
end

-- Feitiços de uma fonte (jogador/pet). Em combate o GUID pode vir secreto e o
-- jogo não aceita GUID secreto vindo de addon: devolve nil, "secret".
function Meter:Breakdown(source)
    if not self:Available() then
        return nil, "error"
    end
    if not source or M.IsSecret(source.sourceGUID) or not source.sourceGUID then
        return nil, "secret"
    end
    local mode = self:Mode()
    local segment = M.db.segment
    local ok, result
    if type(segment) == "number" then
        ok, result = pcall(C_DamageMeter.GetCombatSessionSourceFromID, segment, mode.type, source.sourceGUID, source.sourceCreatureID)
    else
        local sessionType = segment == "overall" and SESSION.Overall or SESSION.Current
        ok, result = pcall(C_DamageMeter.GetCombatSessionSourceFromType, sessionType, mode.type, source.sourceGUID, source.sourceCreatureID)
    end
    if not ok or not result then
        return nil, "error"
    end
    return result
end

function Meter:Reset()
    if C_DamageMeter and C_DamageMeter.ResetAllCombatSessions then
        pcall(C_DamageMeter.ResetAllCombatSessions)
    end
    M.db.segment = "current"
    M:Fire("UPDATE")
end

------------------------------------------------------------------------
-- Relatório no chat (só fora de combate, com números normais)
------------------------------------------------------------------------

Meter.CHANNELS = {
    { key = "PARTY", label = "CH_PARTY", words = { "party", "grupo" } },
    { key = "RAID", label = "CH_RAID", words = { "raid", "raide" } },
    { key = "INSTANCE_CHAT", label = "CH_INSTANCE", words = { "instance", "instancia" } },
    { key = "SAY", label = "CH_SAY", words = { "say", "dizer" } },
    { key = "GUILD", label = "CH_GUILD", words = { "guild", "guilda" } },
}

-- Linhas do relatório (top N) ou nil + motivo.
function Meter:ReportLines(count)
    if InCombatLockdown() then
        return nil, "REPORT_COMBAT"
    end
    local session = self:Session()
    local sources = session and session.combatSources
    if not sources or #sources == 0 then
        return nil, "REPORT_EMPTY"
    end
    local mode = self:Mode()
    local total = session.totalAmount
    if M.IsSecret(total) then
        return nil, "REPORT_COMBAT"
    end
    local lines = { L["REPORT_HEADER"]:format(L[mode.label], self:SegmentLabel()) }
    for i = 1, math.min(count or 5, #sources) do
        local source = sources[i]
        local name, amount = source.name, source.totalAmount
        if mode.perSecond == "primary" then
            local duration = self:Duration(session)
            if M.Positive(duration) and not M.IsSecret(amount) then
                amount = (amount or 0) / duration
            else
                amount = source.amountPerSecond
            end
        end
        if M.IsSecret(name) or M.IsSecret(amount) then
            return nil, "REPORT_COMBAT"
        end
        local line = ("%d. %s %s"):format(i, M.ShortName(name), M.Abbrev(amount or 0))
        if M.Positive(total) and mode.perSecond ~= "primary" and not M.IsSecret(source.totalAmount) then
            line = line .. (" (%.0f%%)"):format(100 * (source.totalAmount or 0) / total)
        end
        lines[#lines + 1] = line
    end
    return lines
end

function Meter:Report(channel)
    local lines, problem = self:ReportLines(5)
    if not lines then
        M.Print(L[problem])
        return false
    end
    local send = (C_ChatInfo and C_ChatInfo.SendChatMessage) or SendChatMessage
    for _, line in ipairs(lines) do
        send(line, channel)
    end
    return true
end

-- Nome sem o reino ("Fulano-Reino" ou "Fulano Reino" -> "Fulano"; nome de
-- personagem não tem espaço). Secreto passa como está.
function M.ShortName(name)
    if name == nil then
        return "?"
    end
    if M.IsSecret(name) then
        return name
    end
    return (name:match("^[^%-%s]+")) or name
end

------------------------------------------------------------------------
-- Eventos e mensagens internas
------------------------------------------------------------------------

local callbacks = {}
function M:On(message, handler)
    callbacks[message] = callbacks[message] or {}
    table.insert(callbacks[message], handler)
end
function M:Fire(message, ...)
    for _, handler in ipairs(callbacks[message] or {}) do
        handler(...)
    end
end

local frame = CreateFrame("Frame")
local handlers = {}
function M:RegisterEvent(event, handler)
    if C_EventUtils and C_EventUtils.IsEventValid and not C_EventUtils.IsEventValid(event) then
        return false
    end
    if not pcall(frame.RegisterEvent, frame, event) then
        return false
    end
    handlers[event] = handler
    return true
end
frame:SetScript("OnEvent", function(_, event, ...)
    if handlers[event] then
        handlers[event](...)
    end
end)

-- Vários eventos seguidos viram uma atualização só (a cada 0,2 s no máximo).
local queued = false
function M:RequestUpdate()
    if queued then
        return
    end
    queued = true
    C_Timer.After(0.2, function()
        queued = false
        M:Fire("UPDATE")
    end)
end

local function CopyDefaults(db, defaults)
    for key, value in pairs(defaults) do
        if db[key] == nil then
            db[key] = type(value) == "table" and CopyTable(value) or value
        end
    end
    return db
end

M:RegisterEvent("ADDON_LOADED", function(name)
    if name ~= addonName then
        return
    end
    AzimuteMeterDB = CopyDefaults(AzimuteMeterDB or {}, M.DEFAULTS)
    M.db = AzimuteMeterDB
    M:Fire("INIT")
end)

M:RegisterEvent("PLAYER_LOGIN", function()
    M:Fire("LOGIN")
    -- Integração opcional: aparece no menu do botão do minimapa do Azimute.
    if AzimuteAPI and AzimuteAPI.RegisterModule then
        pcall(AzimuteAPI.RegisterModule, {
            name = L["TITLE"],
            toggle = function() M.Window:Toggle() end,
            options = function() M.Options:Open() end,
        })
    end
end)

local function Update()
    M:RequestUpdate()
end
M:RegisterEvent("DAMAGE_METER_COMBAT_SESSION_UPDATED", Update)
M:RegisterEvent("DAMAGE_METER_CURRENT_SESSION_UPDATED", Update)
M:RegisterEvent("DAMAGE_METER_RESET", Update)
-- O jogo avisa quando a restrição de addons acaba (números deixam de ser secretos).
M:RegisterEvent("ADDON_RESTRICTION_STATE_CHANGED", Update)
M:RegisterEvent("GROUP_ROSTER_UPDATE", function()
    M:Fire("VISIBILITY")
end)
M:RegisterEvent("PLAYER_REGEN_DISABLED", function()
    M.inCombat = true
    M:Fire("VISIBILITY")
end)
M:RegisterEvent("PLAYER_REGEN_ENABLED", function()
    M.inCombat = false
    M.combatEndedAt = GetTime()
    -- Fora de combate os números deixam de ser secretos: redesenha com tudo.
    C_Timer.After(1, function()
        M:Fire("UPDATE")
        M:Fire("VISIBILITY")
    end)
    C_Timer.After(10, function()
        M:Fire("VISIBILITY")
    end)
end)
M:RegisterEvent("PLAYER_ENTERING_WORLD", function(isLogin, isReload)
    if M.db and M.db.resetOnInstance and not isLogin and not isReload and IsInInstance and IsInInstance() then
        Meter:Reset()
    end
    M:Fire("VISIBILITY")
end)

------------------------------------------------------------------------
-- Comando /azm
------------------------------------------------------------------------

local function FindChannel(word)
    word = (word or ""):lower()
    for _, channel in ipairs(Meter.CHANNELS) do
        for _, alias in ipairs(channel.words) do
            if alias == word then
                return channel.key
            end
        end
    end
    if IsInRaid and IsInRaid() then
        return "RAID"
    elseif IsInGroup and IsInGroup() then
        return "PARTY"
    end
    return "SAY"
end

SLASH_AZIMUTEMETER1 = "/azm"
SLASH_AZIMUTEMETER2 = "/azmedidor"
SlashCmdList.AZIMUTEMETER = function(input)
    local command, rest = strtrim(input or ""):match("^(%S*)%s*(.-)$")
    command = (command or ""):lower()
    if command == "" then
        M.Window:Toggle()
    elseif command == "reset" or command == "zerar" then
        Meter:Reset()
        M.Print(L["RESET_DONE"])
    elseif command == "report" or command == "relatar" then
        Meter:Report(FindChannel(rest))
    elseif command == "options" or command == "opcoes" or command == "opções" then
        M.Options:Open()
    else
        for _, line in ipairs(L["HELP"]) do
            M.Print(line)
        end
    end
end
M.FindChannel = FindChannel
