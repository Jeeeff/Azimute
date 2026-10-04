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
    deathSummary = true,  -- ao morrer, linha no chat com o maior golpe
    personal = false,     -- mostrador pequeno com o seu dano/DPS
    personalPoint = { "CENTER", "CENTER", 0, -160 },
    history = {},         -- lutas salvas (dano e cura)
    secondWindow = false, -- segunda janela (ex.: cura ao lado do dano)
    window2 = { point = { "RIGHT", "RIGHT", -40, 110 }, width = 250, height = 170, modeIndex = 3, segment = "current", shown = true },
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
Meter.TYPE, Meter.SESSION = TYPE, SESSION

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

-- Configuração da janela que está pedindo os dados (modo e luta próprios).
function Meter:View()
    return self.view or M.db
end

function Meter:Mode()
    return self.MODES[self:View().modeIndex] or self.MODES[1]
end

function Meter:SetMode(index, cfg)
    (cfg or self:View()).modeIndex = index
    M:Fire("UPDATE")
end

function Meter:SetSegment(segment, cfg)
    (cfg or self:View()).segment = segment
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
    local segment = Meter:View().segment
    local saved = type(segment) == "string" and tonumber(segment:match("^saved:(%d+)$"))
    if saved then
        return self:SavedSession(saved)
    end
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
    local segment = Meter:View().segment
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
    local segment = Meter:View().segment
    local saved = type(segment) == "string" and tonumber(segment:match("^saved:(%d+)$"))
    if saved then
        local fight = M.db.history[saved]
        if fight then
            return L["SEG_SAVED_ITEM"]:format(fight.zone or "?", math.floor((fight.duration or 0) / 60), math.floor((fight.duration or 0) % 60))
        end
        Meter:View().segment = "current"
    end
    if segment == "overall" then
    elseif type(segment) == "number" then
        for _, info in ipairs(self:Sessions()) do
            if info.sessionID == segment then
                return M.IsSecret(info.name) and L["SEG_FIGHTS"] or (info.name or "?")
            end
        end
        -- luta antiga sumiu (o jogo descartou): volta para a atual
        Meter:View().segment = "current"
    end
    return L["SEG_CURRENT"]
end

-- Feitiços de uma fonte (jogador/pet). Em combate o GUID pode vir secreto e o
-- jogo não aceita GUID secreto vindo de addon: devolve nil, "secret".
function Meter:Breakdown(source)
    if not self:Available() then
        return nil, "error"
    end
    if type(Meter:View().segment) == "string" and Meter:View().segment:find("^saved:") then
        return nil, "saved"
    end
    if not source or M.IsSecret(source.sourceGUID) or not source.sourceGUID then
        return nil, "secret"
    end
    local mode = self:Mode()
    local segment = Meter:View().segment
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
    if M.db.window2 then
        M.db.window2.segment = "current"
    end
    M:Fire("UPDATE")
end

------------------------------------------------------------------------
-- Alvos: em quem um jogador bateu (mesmo truque do Details no Midnight:
-- a sessão "dano nos inimigos" lista cada monstro, e os feitiços de cada um
-- dizem quem causou o dano).
------------------------------------------------------------------------

local function SessionOfType(meterType)
    local segment = Meter:View().segment
    local ok, session
    if type(segment) == "number" then
        ok, session = pcall(C_DamageMeter.GetCombatSessionFromID, segment, meterType)
    else
        local sessionType = segment == "overall" and SESSION.Overall or SESSION.Current
        ok, session = pcall(C_DamageMeter.GetCombatSessionFromType, sessionType, meterType)
    end
    return ok and session or nil
end

local function EnemySpells(creatureID)
    local segment = Meter:View().segment
    local ok, result
    if type(segment) == "number" then
        ok, result = pcall(C_DamageMeter.GetCombatSessionSourceFromID, segment, TYPE.EnemyDamageTaken, nil, creatureID)
    else
        local sessionType = segment == "overall" and SESSION.Overall or SESSION.Current
        ok, result = pcall(C_DamageMeter.GetCombatSessionSourceFromType, sessionType, TYPE.EnemyDamageTaken, nil, creatureID)
    end
    return ok and result and result.combatSpells or {}
end

-- { { name = monstro, amount = dano do jogador nele }, ... } (maior primeiro) ou nil, motivo.
function Meter:Targets(source)
    if not self:Available() or not source then
        return nil, "error"
    end
    if type(Meter:View().segment) == "string" and Meter:View().segment:find("^saved:") then
        return nil, "saved"
    end
    local player = source.name
    if M.IsSecret(player) or not player then
        return nil, "secret"
    end
    local session = SessionOfType(TYPE.EnemyDamageTaken)
    if not session or M.IsSecret(session.totalAmount) then
        return nil, "secret"
    end
    local byEnemy = {}
    for _, enemy in ipairs(session.combatSources or {}) do
        local creatureID = enemy.sourceCreatureID
        if creatureID and not M.IsSecret(creatureID) and not M.IsSecret(enemy.name) then
            local total = 0
            for _, spell in ipairs(EnemySpells(creatureID)) do
                local details = spell.combatSpellDetails
                local amount = details and details.amount
                if details and details.unitName == player and type(amount) == "number" and not M.IsSecret(amount) then
                    total = total + amount
                end
            end
            if total > 0 then
                local name = enemy.name or "?"
                byEnemy[name] = (byEnemy[name] or 0) + total
            end
        end
    end
    local list = {}
    for name, amount in pairs(byEnemy) do
        list[#list + 1] = { name = name, amount = amount }
    end
    table.sort(list, function(a, b) return a.amount > b.amount end)
    return list
end

------------------------------------------------------------------------
-- Recap de morte (modo Mortes): o que acertou e com quanta vida.
------------------------------------------------------------------------

-- { { spell, source, amount, hp, icon, killing }, ... }, vidaMáxima  ou nil.
function Meter:DeathRecap(source)
    local id = source and source.deathRecapID
    if not id or M.IsSecret(id) or id == 0 or not (C_DeathRecap and C_DeathRecap.GetRecapEvents) then
        return nil
    end
    if C_DeathRecap.HasRecapEvents and not C_DeathRecap.HasRecapEvents(id) then
        return nil
    end
    local events = C_DeathRecap.GetRecapEvents(id) or {}
    local maxHealth = C_DeathRecap.GetRecapMaxHealth and C_DeathRecap.GetRecapMaxHealth(id)
    if M.IsSecret(maxHealth) then
        maxHealth = nil
    end
    local list = {}
    for i, event in ipairs(events) do
        local function Safe(value)
            return (value ~= nil and not M.IsSecret(value)) and value or nil
        end
        local spell = Safe(event.spellName) or (event.spellId and C_Spell.GetSpellName(event.spellId)) or L["DEATH_MELEE"]
        if M.IsSecret(spell) then
            spell = "?"
        end
        list[#list + 1] = {
            spell = spell, source = Safe(event.sourceName), amount = Safe(event.amount), hp = Safe(event.currentHP),
            icon = event.spellId and not M.IsSecret(event.spellId) and C_Spell.GetSpellTexture(event.spellId) or nil,
        }
    end
    if #list == 0 then
        return nil
    end
    -- destaca o golpe que mais tirou vida
    local biggest
    for _, event in ipairs(list) do
        if event.amount and (not biggest or event.amount > biggest.amount) then
            biggest = event
        end
    end
    if biggest then
        biggest.killing = true
    end
    return list, maxHealth
end

-- Ao morrer: uma linha no chat com o golpe que mais tirou vida (opcional).
function Meter:AnnounceDeath()
    if not M.db.deathSummary then
        return
    end
    local ok, session = pcall(C_DamageMeter.GetCombatSessionFromType, SESSION.Current, TYPE.Deaths)
    if not ok or not session then
        return
    end
    for _, source in ipairs(session.combatSources or {}) do
        if source.isLocalPlayer == true then
            local events = self:DeathRecap(source)
            local worst
            for _, event in ipairs(events or {}) do
                if event.amount and (not worst or event.amount > worst.amount) then
                    worst = event
                end
            end
            if worst then
                M.Print(L["DEATH_SUMMARY"]:format(worst.spell, worst.source or "?", M.Abbrev(worst.amount)))
            end
            return
        end
    end
end

------------------------------------------------------------------------
-- Histórico salvo: depois de cada luta (com os números já liberados) guarda
-- dano e cura de cada um. Sobrevive ao /reload e ao logout.
------------------------------------------------------------------------

local HISTORY_SIZE = 15
local HISTORY_TYPES = { [TYPE.DamageDone] = "damage", [TYPE.HealingDone] = "healing" }

local function Snapshot(meterType)
    local ok, session = pcall(C_DamageMeter.GetCombatSessionFromType, SESSION.Current, meterType)
    if not ok or not session or M.IsSecret(session.totalAmount) then
        return nil
    end
    local sources = {}
    for _, source in ipairs(session.combatSources or {}) do
        if M.IsSecret(source.name) or M.IsSecret(source.totalAmount) then
            return nil
        end
        sources[#sources + 1] = { name = source.name, classFilename = source.classFilename, totalAmount = source.totalAmount,
            specIconID = source.specIconID, isLocalPlayer = source.isLocalPlayer }
    end
    return { combatSources = sources, totalAmount = session.totalAmount, maxAmount = session.maxAmount }
end

-- Devolve true quando salvou; false enquanto os números ainda estão lacrados.
function Meter:SaveFight()
    local duration = C_DamageMeter.GetSessionDurationSeconds and C_DamageMeter.GetSessionDurationSeconds(SESSION.Current)
    if M.IsSecret(duration) then
        return false
    end
    if not duration or duration < 5 then
        return true -- luta curta demais: não vale guardar
    end
    local fight = { time = time(), duration = duration, zone = GetRealZoneText and GetRealZoneText() or "?" }
    for meterType, key in pairs(HISTORY_TYPES) do
        local snap = Snapshot(meterType)
        if not snap then
            return false
        end
        fight[key] = snap
    end
    if #fight.damage.combatSources == 0 then
        return true
    end
    table.insert(M.db.history, 1, fight)
    while #M.db.history > HISTORY_SIZE do
        table.remove(M.db.history)
    end
    return true
end

-- Luta salva no formato de sessão (para a janela mostrar). Só dano/cura.
function Meter:SavedSession(index)
    local fight = M.db.history[index]
    local key = fight and HISTORY_TYPES[self:Mode().type]
    if not key then
        return nil
    end
    local session = fight[key]
    session.durationSeconds = fight.duration
    return session
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
        elseif key == "window2" and type(db[key]) == "table" then
            CopyDefaults(db[key], value)
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
-- Depois do combate, guarda a luta quando o jogo liberar os números
-- (tenta de novo a cada 2 s, por até 20 s).
local function SaveWhenReady(tries)
    if Meter:Available() and not Meter:SaveFight() and tries > 0 then
        C_Timer.After(2, function() SaveWhenReady(tries - 1) end)
    end
end

M:RegisterEvent("PLAYER_DEAD", function()
    C_Timer.After(1.5, function()
        pcall(Meter.AnnounceDeath, Meter)
    end)
end)

M:RegisterEvent("PLAYER_REGEN_ENABLED", function()
    M.inCombat = false
    M.combatEndedAt = GetTime()
    C_Timer.After(1, function() SaveWhenReady(10) end)
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
    elseif command == "2" then
        M.db.secondWindow = not M.db.secondWindow
        M.Window2:UpdateVisibility()
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
