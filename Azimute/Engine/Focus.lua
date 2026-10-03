-- Modo "missão selecionada": quando o jogador escolhe uma missão no
-- rastreador, no registro ou no mapa, o Azimute guia até ela.
--   1. Se o guia carregado tem um passo para a missão, usa o caminho dele.
--   2. Senão, usa o marcador da própria Blizzard (área dos objetivos ou NPC
--      de entrega) e o ponto de passagem entre zonas.
-- Ao entregar/abandonar a missão, volta ao guia.
--
-- Só LÊ o rastreamento da Blizzard (C_SuperTrack.GetSuperTrackedQuestID);
-- definir o rastreamento é bloqueado para addons no Forever.
local addonName, ns = ...
local L = ns.L

local Focus = {
    questID = nil,
    goals = {},
}
ns.Focus = Focus

local POI_RADIUS = 15
-- Aceitar uma missão pode fazer o jogo rastreá-la sozinho; isso não é
-- uma escolha do jogador, então ignoramos mudanças logo após aceitar.
local AUTO_TRACK_WINDOW = 2
local lastAcceptTime = 0

function Focus:IsActive()
    return self.questID ~= nil
end

local function QuestOfGoal(goal)
    return goal.questID or (goal.objective and goal.objective.questID)
end

------------------------------------------------------------------------
-- Onde está a missão
------------------------------------------------------------------------

local function Usable(value)
    return value ~= nil and not ns.IsSecret(value)
end

-- Marcador da Blizzard: ponto de passagem (outra zona) ou POI no mapa.
local function FindQuestLocation(questID)
    if C_QuestLog.GetNextWaypoint then
        local mapID, x, y = C_QuestLog.GetNextWaypoint(questID)
        if Usable(mapID) and Usable(x) and Usable(y) then
            return mapID, x, y
        end
    end
    if not C_QuestLog.GetQuestsOnMap then
        return nil
    end
    local maps = {}
    if GetQuestUiMapID then
        local questMap = GetQuestUiMapID(questID)
        if Usable(questMap) and questMap > 0 then
            maps[#maps + 1] = questMap
        end
    end
    local mapID = C_Map.GetBestMapForUnit("player")
    while Usable(mapID) and mapID > 0 and #maps < 8 do
        maps[#maps + 1] = mapID
        local info = C_Map.GetMapInfo(mapID)
        mapID = info and info.parentMapID
    end
    for _, candidate in ipairs(maps) do
        for _, info in ipairs(C_QuestLog.GetQuestsOnMap(candidate) or {}) do
            if info.questID == questID and Usable(info.x) and Usable(info.y) then
                return candidate, info.x, info.y
            end
        end
    end
end

-- Primeiro passo do guia carregado com um objetivo pendente desta missão.
local function FindGuideStep(questID)
    local guide = ns.Engine.guide
    if not guide then
        return nil
    end
    for index, step in ipairs(guide.steps) do
        for _, goal in ipairs(step.goals) do
            if QuestOfGoal(goal) == questID and ns.Engine:GoalApplies(goal)
                and ns.Engine:IsGoalDone(goal) == false then
                return step, index
            end
        end
    end
end

local function CopyNavGoal(goal)
    local copy = {}
    for key, value in pairs(goal) do
        copy[key] = value
    end
    copy.reached, copy.index = false, nil
    return copy
end

-- Monta os objetivos de navegação e uma assinatura para detectar mudanças.
local function BuildGoals(questID)
    local goals = {}
    local step, stepIndex = FindGuideStep(questID)
    if step then
        for _, goal in ipairs(step.goals) do
            if ns.Engine.NAV_TYPES[goal.type] and ns.Engine:GoalApplies(goal) then
                goals[#goals + 1] = CopyNavGoal(goal)
            end
        end
        if #goals > 0 then
            return goals, "step:" .. stepIndex
        end
    end
    local mapID, x, y = FindQuestLocation(questID)
    if mapID then
        goals[1] = { type = "goto", mapID = mapID, x = x, y = y, radius = POI_RADIUS, poi = true }
        return goals, ("poi:%d:%.3f:%.3f"):format(mapID, x, y)
    end
    return goals, "none"
end

------------------------------------------------------------------------
-- Controle
------------------------------------------------------------------------

function Focus:Update(force)
    if not self.questID then
        return
    end
    local goals, signature = BuildGoals(self.questID)
    if force or signature ~= self.signature then
        self.signature = signature
        self.goals = goals
        ns.Nav:OnStepChanged(true)
    end
    ns:Fire("STEP_UPDATED")
end

function Focus:Start(questID)
    if not Usable(questID) or questID == 0 or not C_QuestLog.IsOnQuest(questID) then
        ns.Print(L["FOCUS_NONE"])
        return false
    end
    self.questID = questID
    self.signature = nil
    self:Update(true)
    local title = ns.Names.Quest(questID) or L["QUEST_FALLBACK"]:format(questID)
    ns.Print(L["FOCUS_START"]:format(title))
    if #self.goals == 0 then
        ns.Print(L["FOCUS_NO_LOCATION"])
    end
    return true
end

function Focus:Stop(message)
    if not self.questID then
        return
    end
    self.questID = nil
    self.goals = {}
    self.signature = nil
    if message then
        ns.Print(message)
    end
    ns.Nav:OnStepChanged(true)
    ns:Fire("STEP_UPDATED")
end

-- Missão do passo atual do guia: selecioná-la não precisa trocar de modo.
local function IsInCurrentStep(questID)
    local step = ns.Engine:CurrentStep()
    if not step then
        return false
    end
    for _, goal in ipairs(step.goals) do
        if QuestOfGoal(goal) == questID then
            return true
        end
    end
    return false
end

-- Seleção feita pelo jogador (rastreamento ou detalhes no registro).
function Focus:OnUserSelect(questID)
    if not ns.db or not ns.db.followQuest then
        return
    end
    if GetTime() - lastAcceptTime < AUTO_TRACK_WINDOW then
        return
    end
    if not Usable(questID) or questID == 0 or questID == self.questID then
        return
    end
    if not self:IsActive() and IsInCurrentStep(questID) then
        return
    end
    self:Start(questID)
end

------------------------------------------------------------------------
-- Eventos
------------------------------------------------------------------------

ns:RegisterEvent("SUPER_TRACKING_CHANGED", function()
    if C_SuperTrack and C_SuperTrack.GetSuperTrackedQuestID then
        local questID = C_SuperTrack.GetSuperTrackedQuestID()
        -- Desmarcou a missão no rastreador: volta ao guia.
        if (not questID or questID == 0) and Focus:IsActive() then
            Focus:Stop()
            return
        end
        Focus:OnUserSelect(questID)
    end
end)

ns:On("LOGIN", function()
    -- Abrir os detalhes de uma missão no registro também conta como escolha.
    if type(QuestMapFrame_ShowQuestDetails) == "function" then
        hooksecurefunc("QuestMapFrame_ShowQuestDetails", function(questID)
            Focus:OnUserSelect(questID)
        end)
    end
end)

ns:RegisterEvent("QUEST_ACCEPTED", function()
    lastAcceptTime = GetTime()
end)

local function OnQuestGone(questID)
    if questID == Focus.questID then
        local title = ns.Names.Quest(questID) or L["QUEST_FALLBACK"]:format(questID)
        Focus:Stop(L["FOCUS_DONE"]:format(title))
    end
end
ns:RegisterEvent("QUEST_TURNED_IN", OnQuestGone)
ns:RegisterEvent("QUEST_REMOVED", OnQuestGone)

local updateQueued = false
local function QueueUpdate()
    if not Focus:IsActive() or updateQueued then
        return
    end
    updateQueued = true
    C_Timer.After(0, function()
        updateQueued = false
        Focus:Update(false)
    end)
end
ns:RegisterEvent("QUEST_LOG_UPDATE", QueueUpdate)
ns:RegisterEvent("ZONE_CHANGED_NEW_AREA", QueueUpdate)
