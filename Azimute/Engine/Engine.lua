-- Motor do guia: passo atual, condições e avanço automático.
-- Os eventos só avisam que algo mudou; quem decide se um passo foi
-- concluído é uma consulta ao estado do jogo.
local addonName, ns = ...
local L = ns.L

local Engine = {
    guide = nil,
    stepIndex = 1,
    hold = false, -- depois de "voltar", não pula o passo sozinho
}
ns.Engine = Engine

local NAV_TYPES = { ["goto"] = true, path = true }
Engine.NAV_TYPES = NAV_TYPES

local player = {}
Engine.player = player

local function UpdatePlayerLevel()
    local level = UnitLevel("player")
    if level and not ns.IsSecret(level) then
        player.level = level
    end
end

-- QUEST_TURNED_IN chega antes de IsQuestFlaggedCompleted atualizar.
local turnedIn = {}

------------------------------------------------------------------------
-- Condições: "only Alliance Warrior" = Aliança E Guerreiro.
-- Tokens da mesma categoria são alternativas ("only Human Dwarf").
------------------------------------------------------------------------

local FACTIONS = { ALLIANCE = true, HORDE = true, NEUTRAL = true }
local CLASSES = {
    WARRIOR = true, PALADIN = true, HUNTER = true, ROGUE = true, PRIEST = true,
    SHAMAN = true, MAGE = true, WARLOCK = true, DRUID = true, DEATHKNIGHT = true,
    MONK = true, DEMONHUNTER = true, EVOKER = true,
}

-- "!MAGE" nega: qualquer token negado que case com o personagem reprova.
local function Matches(only)
    if not only then
        return true
    end
    local matched = {}
    for _, token in ipairs(only) do
        local negated = token:sub(1, 1) == "!"
        if negated then
            token = token:sub(2)
        end
        local category, value
        if FACTIONS[token] then
            category, value = "faction", player.faction
        elseif CLASSES[token] then
            category, value = "class", player.class
        else
            category, value = "race", player.race
        end
        if negated then
            if token == value then
                return false
            end
        else
            matched[category] = matched[category] or token == value
        end
    end
    for _, ok in pairs(matched) do
        if not ok then
            return false
        end
    end
    return true
end
Engine.Matches = Matches

------------------------------------------------------------------------
-- Verificação de cada tipo de objetivo
------------------------------------------------------------------------

local function IsQuestDone(questID)
    return turnedIn[questID] or C_QuestLog.IsQuestFlaggedCompleted(questID)
end

-- Momento (GetTime) do último evento de cada ação ("vendor", "fp"...).
-- Uma ação só conta se aconteceu depois que o passo começou.
local actionTimes = {}

local function DidAction(action)
    local step = Engine:CurrentStep()
    local at = actionTimes[action]
    return at ~= nil and step ~= nil and at >= (step.activatedAt or 0)
end

-- Nível atual da profissão (linha de habilidade), ou 0 se não tiver.
local function ProfessionSkill(skillLine)
    if not (GetProfessions and GetProfessionInfo) then
        return 0
    end
    for _, index in ipairs({ GetProfessions() }) do
        if index then
            local _, _, rank, _, _, _, line = GetProfessionInfo(index)
            if line == skillLine and rank and not ns.IsSecret(rank) then
                return rank
            end
        end
    end
    return 0
end
Engine.ProfessionSkill = ProfessionSkill

local function KnowsSpell(spellID)
    if IsPlayerSpell then
        return IsPlayerSpell(spellID)
    end
    return IsSpellKnown and IsSpellKnown(spellID) or false
end

local function ItemCount(itemID)
    if C_Item and C_Item.GetItemCount then
        return C_Item.GetItemCount(itemID) or 0
    end
    return GetItemCount and GetItemCount(itemID) or 0
end

-- O jogador está na zona (ou em um mapa dentro dela)?
local function IsInZone(mapID)
    local current = C_Map.GetBestMapForUnit("player")
    local guard = 0
    while current and not ns.IsSecret(current) and current > 0 and guard < 10 do
        if current == mapID then
            return true
        end
        local info = C_Map.GetMapInfo(current)
        current = info and info.parentMapID
        guard = guard + 1
    end
    return false
end

-- Condições do passo (ifonquest, ifturnedin...): todas precisam valer.
local CONDITION_CHECKS = {
    ifonquest = function(questID)
        return C_QuestLog.IsOnQuest(questID)
    end,
    ifnotonquest = function(questID)
        return not C_QuestLog.IsOnQuest(questID)
    end,
    ifcomplete = function(questID)
        return C_QuestLog.ReadyForTurnIn(questID) == true or IsQuestDone(questID)
    end,
    ifturnedin = function(questID)
        return IsQuestDone(questID)
    end,
    ifnotturnedin = function(questID)
        return not IsQuestDone(questID)
    end,
}

local function ConditionsHold(step)
    for _, condition in ipairs(step.conditions or {}) do
        if condition.type == "ifskillbelow" then
            if ProfessionSkill(condition.skillLine) >= condition.level then
                return false
            end
        elseif condition.type == "ifdungeon" or condition.type == "ifnotdungeon" then
            local chosen = ns.char and ns.char.dungeons and ns.char.dungeons[condition.dungeon] == true
            if chosen ~= (condition.type == "ifdungeon") then
                return false
            end
        else
        local check = CONDITION_CHECKS[condition.type]
        -- Várias missões na mesma condição: basta uma valer.
        local any = false
        for _, questID in ipairs(condition.questIDs) do
            if check(questID) then
                any = true
                break
            end
        end
        if not any then
            return false
        end
        end
    end
    return true
end

local function IsObjectiveDone(objective)
    local questID = objective.questID
    if IsQuestDone(questID) or C_QuestLog.ReadyForTurnIn(questID) == true then
        return true
    end
    local objectives = C_QuestLog.GetQuestObjectives(questID)
    local data = objectives and objectives[objective.index]
    return data ~= nil and data.finished == true
end

local CHECKS = {
    accept = function(goal)
        return C_QuestLog.IsOnQuest(goal.questID) or IsQuestDone(goal.questID)
    end,
    turnin = function(goal)
        return IsQuestDone(goal.questID)
    end,
    complete = function(goal)
        return IsQuestDone(goal.questID) or C_QuestLog.ReadyForTurnIn(goal.questID) == true
    end,
    kill = function(goal)
        return IsObjectiveDone(goal.objective)
    end,
    objective = function(goal)
        return IsObjectiveDone(goal.objective)
    end,
    level = function(goal)
        local level = UnitLevel("player")
        return not ns.IsSecret(level) and level >= goal.level
    end,
    ["goto"] = function(goal)
        return goal.reached == true
    end,
    path = function(goal)
        return goal.reached == true
    end,
    collect = function(goal)
        if goal.objective and IsObjectiveDone(goal.objective) then
            return true
        end
        local quest = goal.questLink
        if quest and (IsQuestDone(quest) or C_QuestLog.ReadyForTurnIn(quest) == true) then
            return true
        end
        return ItemCount(goal.itemID) >= goal.count
    end,
    train = function(goal)
        return KnowsSpell(goal.spellID)
    end,
    fly = function(goal)
        return IsInZone(goal.mapID)
    end,
    zone = function(goal)
        return IsInZone(goal.mapID)
    end,
    skill = function(goal)
        return ProfessionSkill(goal.skillLine) >= goal.level
    end,
    abandon = function(goal)
        return not C_QuestLog.IsOnQuest(goal.questID)
    end,
    vendor = function()
        return DidAction("vendor")
    end,
    trainer = function()
        return DidAction("trainer")
    end,
    fp = function()
        return DidAction("fp")
    end,
    home = function()
        return DidAction("home")
    end,
    hearth = function()
        return DidAction("hearth")
    end,
}

-- Objetivo vale para o personagem (only) e para o idioma (note-enUS...).
function Engine:GoalApplies(goal)
    return Matches(goal.only) and (goal.locale == nil or goal.locale == ns.locale)
end

-- true/false para objetivos verificáveis; nil para os só informativos
-- (note, talk, kill sem |q).
function Engine:IsGoalDone(goal)
    if self:IsMarked(goal) then
        return true
    end
    if goal.type == "kill" and not goal.objective then
        return nil
    end
    local check = CHECKS[goal.type]
    if not check then
        return nil
    end
    return check(goal) and true or false
end

local function StepApplies(step)
    if not Matches(step.only) or not ConditionsHold(step) then
        return false
    end
    for _, goal in ipairs(step.goals) do
        if Engine:GoalApplies(goal) then
            return true
        end
    end
    return false
end
Engine.StepApplies = StepApplies

-- Um passo com objetivos de quest termina quando todos terminam; a
-- navegação (goto/path) só conta quando o passo não tem outro objetivo.
-- Objetivos "|opt" aparecem, mas não seguram o passo.
-- Um passo só com notas espera o jogador clicar em "avançar".
local function IsStepComplete(step)
    local hasQuestGoals, hasNavGoals, navDone = false, false, true
    for _, goal in ipairs(step.goals) do
        if Engine:GoalApplies(goal) and not goal.optional then
            if NAV_TYPES[goal.type] then
                hasNavGoals = true
                navDone = navDone and goal.reached == true
            else
                local done = Engine:IsGoalDone(goal)
                if done ~= nil then
                    hasQuestGoals = true
                    if not done then
                        return false
                    end
                end
            end
        end
    end
    if hasQuestGoals then
        return true
    end
    return hasNavGoals and navDone
end

local function ResetStepState(step)
    if not step then
        return
    end
    step.activatedAt = GetTime()
    for _, goal in ipairs(step.goals) do
        if NAV_TYPES[goal.type] then
            goal.reached = Engine:IsMarked(goal) or false
            goal.index = nil
        end
    end
end

------------------------------------------------------------------------
-- Navegação entre passos
------------------------------------------------------------------------

function Engine:CurrentStep()
    return self.guide and self.guide.steps[self.stepIndex]
end

function Engine:SetStep(index, hold)
    self.stepIndex = index
    self.hold = hold or false
    ResetStepState(self:CurrentStep())
    ns.char.stepIndex = index
    if self.guide then
        ns.char.progress[self.guide.id] = index
    end
    ns:Fire("STEP_CHANGED")
end

-- manual = true quando o jogador escolheu o guia (/azimute carregar).
function Engine:LoadGuide(id, stepIndex, manual)
    local guide = ns.Registry:Get(id)
    if not guide then
        ns.Print(L["GUIDE_NOT_FOUND"]:format(tostring(id)))
        return false
    end
    -- Escolher um guia = quer seguir o guia: sai da "missão selecionada" e do
    -- destino avulso (muita gente não repara no X).
    if manual then
        if ns.Focus and ns.Focus:IsActive() then
            ns.Focus:Stop()
        end
        if ns.Nav and ns.Nav:Manual() then
            ns.Nav:ClearManual()
        end
    end
    ns.Position.ResolveGuide(guide)
    -- Chave estável de cada objetivo (passo:posição) para as marcas do jogador.
    for i, step in ipairs(guide.steps) do
        for j, goal in ipairs(step.goals) do
            goal.markKey = i .. ":" .. j
        end
    end
    self.guide = guide
    self.finishedNotified = false
    ns.char.guideID = id
    ns.char.guideManual = manual and true or false
    -- Sem passo pedido: continua de onde parou neste guia, ou estima pelo diário.
    stepIndex = stepIndex or ns.char.progress[id] or self:ResumeIndex(guide)
    local index = math.max(1, math.min(tonumber(stepIndex) or 1, #guide.steps + 1))
    self:SetStep(index, false)
    ns.Print(L["GUIDE_LOADED"]:format(ns.Registry.DisplayName(guide)))
    self:RequestEvaluate()
    return true
end

function Engine:Unload()
    self.guide = nil
    self.stepIndex = 1
    ns.char.guideID = nil
    ns:Fire("STEP_CHANGED")
    ns:Fire("STEP_UPDATED")
end

-- Avançar/voltar manualmente mostra o próximo passo que vale para o
-- personagem, MESMO que já esteja concluído (para o jogador conferir).
-- Só pula passos de outra classe/raça ou cujas condições não valem.
function Engine:Next()
    local guide = self.guide
    if not guide or self.stepIndex > #guide.steps then
        return
    end
    local index = self.stepIndex + 1
    while index <= #guide.steps and not StepApplies(guide.steps[index]) do
        index = index + 1
    end
    self:SetStep(index, true)
    self:RequestEvaluate()
end

-- O passo atual já está concluído? (a janela avisa quando o jogador está
-- revendo um passo concluído)
function Engine:IsCurrentStepComplete()
    local step = self:CurrentStep()
    return step ~= nil and IsStepComplete(step)
end

function Engine:Prev()
    if not self.guide then
        return
    end
    local index = self.stepIndex - 1
    while index >= 1 and not StepApplies(self.guide.steps[index]) do
        index = index - 1
    end
    if index >= 1 then
        self:SetStep(index, true)
        ns:Fire("STEP_UPDATED")
    end
end

function Engine:OnGuideFinished()
    if self.finishedNotified then
        return
    end
    self.finishedNotified = true
    ns.Print(L["GUIDE_DONE"])
    local nextID = self.guide.next
    if nextID and ns.Registry:Get(nextID) then
        self:LoadGuide(nextID)
        return
    end
    -- Sem "#next": escolhe o guia mais indicado para o nível atual, nunca
    -- um que já terminou nesta sessão (evita trocar de guia sem parar).
    self.finishedGuides = self.finishedGuides or {}
    self.finishedGuides[self.guide.id] = true
    UpdatePlayerLevel()
    local best = ns.Registry:FindFor(player, self.finishedGuides)
    if best then
        ns.Print(L["GUIDE_NEXT_AUTO"]:format(ns.Registry.DisplayName(best)))
        self:LoadGuide(best.id)
    end
end

-- Pula passos que não se aplicam ao personagem ou que já foram concluídos.
-- Em "espera" (o jogador navegou com ◀/▶), o passo fica na tela; se ele
-- ainda não estiver concluído, a espera acaba e o avanço automático volta
-- a valer quando ele for concluído.
function Engine:Evaluate()
    local guide = self.guide
    if not guide then
        ns:Fire("STEP_UPDATED")
        return
    end
    local steps = guide.steps
    local startIndex = self.stepIndex

    while self.stepIndex <= #steps do
        local step = steps[self.stepIndex]
        local skip
        if not StepApplies(step) then
            skip = true
        elseif self.hold then
            if not IsStepComplete(step) then
                self.hold = false
            end
            skip = false
        else
            skip = IsStepComplete(step)
        end
        if not skip then
            break
        end
        self.stepIndex = self.stepIndex + 1
        self.hold = false
        ResetStepState(steps[self.stepIndex])
    end

    if self.stepIndex ~= startIndex then
        ns.char.stepIndex = self.stepIndex
        ns.char.progress[guide.id] = self.stepIndex
        ns.Debug("passo %d -> %d", startIndex, self.stepIndex)
        ns:Fire("STEP_CHANGED")
    end
    if self.stepIndex > #steps then
        self:OnGuideFinished()
    end
    ns:Fire("STEP_UPDATED")
end

------------------------------------------------------------------------
-- Marcar como feito (clique direito na linha): para missões que o jogo não
-- reconheceu ou que o jogador decidiu pular. Fica salvo por personagem.
------------------------------------------------------------------------

function Engine:CanMark(goal)
    return self.guide ~= nil and goal.markKey ~= nil and goal.type ~= "note"
end

function Engine:IsMarked(goal)
    local marks = self.guide and goal.markKey and ns.char.marked[self.guide.id]
    return marks and marks[goal.markKey] == true or false
end

function Engine:ToggleMark(goal)
    if not self:CanMark(goal) then
        return
    end
    local id = self.guide.id
    local marks = ns.char.marked[id] or {}
    ns.char.marked[id] = marks
    local marked = not marks[goal.markKey] or nil
    marks[goal.markKey] = marked
    if next(marks) == nil then
        ns.char.marked[id] = nil
    end
    if NAV_TYPES[goal.type] then
        goal.reached = marked or false
        ns.Nav.waypointKey = false
        ns.Nav:Refresh()
    end
    ns:Fire("STEP_UPDATED")
    self:RequestEvaluate()
end

-- Missão ligada ao objetivo (accept/turnin/complete, objective/kill, |quest).
local function GoalQuest(goal)
    return goal.questID or (goal.objective and goal.objective.questID) or goal.questLink
end

local PROGRESS_TYPES = { accept = true, turnin = true, complete = true }

-- Passo onde retomar um guia sem progresso salvo: logo depois do último
-- passo com missão já aceita/entregue; ou antes, se uma missão que o
-- jogador tem no diário ainda tiver algo a fazer nesse trecho.
function Engine:ResumeIndex(guide)
    local lastDone, firstOpen
    for i, step in ipairs(guide.steps) do
        if StepApplies(step) then
            for _, goal in ipairs(step.goals) do
                if self:GoalApplies(goal) and not goal.optional then
                    local questID = GoalQuest(goal)
                    local done = self:IsGoalDone(goal)
                    if PROGRESS_TYPES[goal.type] and done then
                        lastDone = i
                    elseif questID and done == false and not firstOpen
                        and C_QuestLog.IsOnQuest(questID) then
                        firstOpen = i
                    end
                end
            end
        end
    end
    local index = lastDone and lastDone + 1 or 1
    if firstOpen and firstOpen < index then
        index = firstOpen
    end
    return index
end

-- Vários eventos seguidos (ex.: QUEST_LOG_UPDATE) viram uma única
-- avaliação no próximo frame.
local evaluateQueued = false

function Engine:RequestEvaluate()
    if evaluateQueued then
        return
    end
    evaluateQueued = true
    C_Timer.After(0, function()
        evaluateQueued = false
        Engine:Evaluate()
    end)
end

function Engine:Start()
    player.faction = (UnitFactionGroup("player") or ""):upper()
    player.class = select(2, UnitClass("player"))
    player.race = (select(2, UnitRace("player")) or ""):upper()
    UpdatePlayerLevel()

    -- Guia salvo: mantém se foi escolhido pelo jogador ou se ainda serve
    -- para o personagem (a escolha automática pode ter mudado).
    local saved = ns.char.guideID and ns.Registry:Get(ns.char.guideID)
    if saved and (ns.char.guideManual or ns.Registry:Fits(saved, player)) then
        self:LoadGuide(saved.id, ns.char.stepIndex, ns.char.guideManual)
        return
    end
    local guide = ns.Registry:FindFor(player)
    if guide then
        self:LoadGuide(guide.id)
    else
        ns:Fire("STEP_UPDATED")
    end
end

------------------------------------------------------------------------
-- Eventos
------------------------------------------------------------------------

local function Reevaluate()
    Engine:RequestEvaluate()
end

ns:RegisterEvent("QUEST_TURNED_IN", function(questID)
    turnedIn[questID] = true
    ns.Debug("QUEST_TURNED_IN %d", questID)
    Engine:RequestEvaluate()
end)
ns:RegisterEvent("QUEST_ACCEPTED", Reevaluate)
ns:RegisterEvent("QUEST_REMOVED", Reevaluate)
ns:RegisterEvent("QUEST_LOG_UPDATE", Reevaluate)
ns:RegisterEvent("PLAYER_LEVEL_UP", function()
    C_Timer.After(0, UpdatePlayerLevel)
    Engine:RequestEvaluate()
end)
ns:RegisterEvent("BAG_UPDATE_DELAYED", Reevaluate)      -- collect
ns:RegisterEvent("SPELLS_CHANGED", Reevaluate)          -- train
ns:RegisterEvent("SKILL_LINES_CHANGED", Reevaluate)     -- skill
ns:RegisterEvent("ZONE_CHANGED_NEW_AREA", Reevaluate)   -- fly

-- Ações concluídas por evento (valem se acontecerem depois que o passo começou).
local function RecordAction(action)
    return function()
        actionTimes[action] = GetTime()
        Engine:RequestEvaluate()
    end
end
ns:RegisterEvent("MERCHANT_CLOSED", RecordAction("vendor"))
ns:RegisterEvent("TRAINER_CLOSED", RecordAction("trainer"))
ns:RegisterEvent("TAXIMAP_OPENED", RecordAction("fp"))
ns:RegisterEvent("HEARTHSTONE_BOUND", RecordAction("home"))

local HEARTHSTONE_SPELL = 8690
local recordHearth = RecordAction("hearth")
ns:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED", function(unit, _, spellID)
    if unit == "player" and not ns.IsSecret(spellID) and spellID == HEARTHSTONE_SPELL then
        recordHearth()
    end
end)
-- No login o histórico de missões pode ainda não estar pronto; checa de
-- novo quando a tela de carregamento termina e quando dados chegam.
ns:RegisterEvent("PLAYER_ENTERING_WORLD", Reevaluate)
ns:On("NAMES_UPDATED", Reevaluate)
ns:On("NAV_ARRIVED", Reevaluate)

ns:On("LOGIN", function()
    Engine:Start()
end)
