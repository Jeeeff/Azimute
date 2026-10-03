-- Aceitar e entregar missões automaticamente (como no RestedXP/Zygor).
-- Por padrão só age nas missões que o guia está pedindo agora (passo atual
-- e os próximos), ou na missão selecionada. Segurar SHIFT ao falar com o
-- NPC desliga a automação naquela conversa. Tudo configurável nas opções.
local addonName, ns = ...
local L = ns.L

local AutoQuest = {}
ns.AutoQuest = AutoQuest

local LOOKAHEAD_STEPS = 3

local function Bypassed()
    return IsShiftKeyDown and IsShiftKeyDown()
end

-- Objetivo do guia que pede esta ação (accept/turnin) para esta missão.
local function GuideGoal(kind, questID)
    local Engine = ns.Engine
    local guide = Engine.guide
    if not guide then
        return nil
    end
    local checked = 0
    local index = Engine.stepIndex
    while index <= #guide.steps and checked <= LOOKAHEAD_STEPS do
        local step = guide.steps[index]
        if Engine.StepApplies(step) then
            for _, goal in ipairs(step.goals) do
                if goal.type == kind and goal.questID == questID and Engine:GoalApplies(goal) then
                    return goal
                end
            end
            checked = checked + 1
        end
        index = index + 1
    end
end

-- Deve agir nesta missão? Devolve true e o objetivo do guia (se houver).
local function Wants(kind, questID)
    if not questID or ns.IsSecret(questID) or questID == 0 then
        return false
    end
    local setting = kind == "accept" and "autoAccept" or "autoTurnIn"
    if not ns.db[setting] or Bypassed() then
        return false
    end
    local goal = GuideGoal(kind, questID)
    if goal then
        return not goal.noauto, goal
    end
    if kind == "turnin" and ns.Focus and ns.Focus.questID == questID then
        return true
    end
    return ns.db.autoAllQuests == true
end

local function Act(action, questID)
    ns.Debug("auto %s %d", action, questID)
end

------------------------------------------------------------------------
-- Janela de diálogo (gossip): entrega primeiro, depois aceita.
------------------------------------------------------------------------

local function OnGossip()
    if not C_GossipInfo then
        return
    end
    for _, info in ipairs(C_GossipInfo.GetActiveQuests() or {}) do
        if info.isComplete and Wants("turnin", info.questID) then
            Act("turnin", info.questID)
            C_GossipInfo.SelectActiveQuest(info.questID)
            return
        end
    end
    for _, info in ipairs(C_GossipInfo.GetAvailableQuests() or {}) do
        if Wants("accept", info.questID) then
            Act("accept", info.questID)
            C_GossipInfo.SelectAvailableQuest(info.questID)
            return
        end
    end
end

-- NPCs antigos (tela de saudação sem gossip).
local function OnGreeting()
    if GetNumActiveQuests and GetActiveQuestID then
        for i = 1, GetNumActiveQuests() do
            local _, isComplete = GetActiveTitle(i)
            local questID = GetActiveQuestID(i)
            if isComplete and Wants("turnin", questID) then
                Act("turnin", questID)
                SelectActiveQuest(i)
                return
            end
        end
    end
    if GetNumAvailableQuests and GetAvailableQuestInfo then
        for i = 1, GetNumAvailableQuests() do
            local questID = select(5, GetAvailableQuestInfo(i))
            if Wants("accept", questID) then
                Act("accept", questID)
                SelectAvailableQuest(i)
                return
            end
        end
    end
end

------------------------------------------------------------------------
-- Telas da missão: detalhes (aceitar), progresso e recompensa (entregar).
------------------------------------------------------------------------

local function OnDetail()
    local questID = GetQuestID()
    if QuestGetAutoAccept and QuestGetAutoAccept() then
        return -- o jogo já aceitou sozinho
    end
    if Wants("accept", questID) then
        Act("accept", questID)
        AcceptQuest()
    end
end

local function OnProgress()
    local questID = GetQuestID()
    if IsQuestCompletable() and Wants("turnin", questID) then
        Act("complete", questID)
        CompleteQuest()
    end
end

local function OnComplete()
    local questID = GetQuestID()
    local wants, goal = Wants("turnin", questID)
    if not wants then
        return
    end
    local choices = GetNumQuestChoices() or 0
    if choices <= 1 then
        Act("reward", questID)
        GetQuestReward(choices == 1 and 1 or nil)
    elseif goal and goal.reward and goal.reward <= choices then
        -- O guia indica qual recompensa pegar.
        Act("reward", questID)
        GetQuestReward(goal.reward)
    else
        -- Várias recompensas: escolhe a melhor para o personagem se a opção
        -- estiver ligada; senão a escolha é do jogador.
        local best = ns.db.autoPickReward and ns.Gear and ns.Gear:BestQuestReward()
        if best then
            Act("reward", questID)
            GetQuestReward(best)
        else
            ns.Print(L["AUTO_CHOOSE_REWARD"])
        end
    end
end

ns:RegisterEvent("GOSSIP_SHOW", OnGossip)
ns:RegisterEvent("QUEST_GREETING", OnGreeting)
ns:RegisterEvent("QUEST_DETAIL", OnDetail)
ns:RegisterEvent("QUEST_PROGRESS", OnProgress)
ns:RegisterEvent("QUEST_COMPLETE", OnComplete)
