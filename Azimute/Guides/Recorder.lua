-- Gravador de rotas: o jogador faz as missões normalmente e o Azimute
-- escreve o guia (NPC, coordenadas, aceitar/entregar, onde fez cada
-- objetivo). O resultado é texto no formato normal, pronto para editar e
-- compartilhar. A gravação fica em AzimuteCharDB e sobrevive a /reload.
--
--   /azimute gravar [nome]  começa
--   /azimute ponto          marca um ponto do caminho (rampa, ponte, caverna)
--   /azimute nota <texto>   adiciona uma nota ao último passo
--   /azimute parar          termina, salva e abre o texto para copiar
local addonName, ns = ...
local L = ns.L

local Recorder = {}
ns.Recorder = Recorder

local NPC_MEMORY_SECONDS = 60
local lastNPC            -- { id, mapID, x, y, time }
local objectiveState = {} -- [questID][index] = { fulfilled, finished, mapID, x, y }

local function Data()
    return ns.char.recording
end

function Recorder:IsActive()
    return Data() ~= nil
end

local function Here()
    local mapID, x, y = ns.Position.Player()
    if mapID then
        return { mapID = mapID, x = x, y = y }
    end
end

local function Coord(x, y)
    return ("%.2f,%.2f"):format(x * 100, y * 100)
end

local function GotoLine(pos)
    return ("goto %d %s"):format(pos.mapID, Coord(pos.x, pos.y))
end

------------------------------------------------------------------------
-- NPC da conversa atual (quem dá ou recebe a missão)
------------------------------------------------------------------------

local function RememberNPC()
    if not Recorder:IsActive() then
        return
    end
    local guid = UnitGUID("npc")
    if not guid or ns.IsSecret(guid) then
        return
    end
    local unitType, _, _, _, _, npcID = strsplit("-", guid)
    npcID = tonumber(npcID)
    if (unitType == "Creature" or unitType == "Vehicle") and npcID then
        local pos = Here()
        if pos then
            lastNPC = { id = npcID, mapID = pos.mapID, x = pos.x, y = pos.y, time = GetTime() }
        end
    end
end

local function RecentNPC()
    if lastNPC and GetTime() - lastNPC.time <= NPC_MEMORY_SECONDS then
        return lastNPC
    end
end

------------------------------------------------------------------------
-- Montagem dos passos
------------------------------------------------------------------------

-- Novo passo: caminho marcado com /azimute ponto, goto, talk (se houver NPC).
local function NewStep(pos, npc)
    local data = Data()
    local step = { lines = {}, npcID = npc and npc.id }
    local path = data.pendingPath
    if path and #path.points > 0 then
        local coords = {}
        for i, point in ipairs(path.points) do
            coords[i] = Coord(point.x, point.y)
        end
        step.lines[#step.lines + 1] = ("path seq %d %s"):format(path.mapID, table.concat(coords, " "))
        data.pendingPath = nil
    end
    if pos then
        step.lines[#step.lines + 1] = GotoLine(pos)
    end
    if npc then
        step.lines[#step.lines + 1] = "talk " .. npc.id
    end
    data.steps[#data.steps + 1] = step
    return step
end

-- Ação com NPC (aceitar/entregar): o mesmo NPC em sequência vira um passo só.
local function AddNPCAction(line)
    local data = Data()
    local npc = RecentNPC()
    local last = data.steps[#data.steps]
    local step
    if npc and last and last.npcID == npc.id and not data.pendingPath then
        step = last
    else
        step = NewStep(npc or Here(), npc)
    end
    step.lines[#step.lines + 1] = line
    ns.Print(L["REC_ADDED"]:format(line))
end

-- Objetivo concluído: vai para o lugar onde o progresso começou.
local function AddObjective(questID, index, pos)
    local data = Data()
    local last = data.steps[#data.steps]
    local line = ("objective %d/%d"):format(questID, index)
    if last and last.objectiveQuest == questID and not data.pendingPath then
        last.lines[#last.lines + 1] = line
    else
        local step = NewStep(pos or Here(), nil)
        step.objectiveQuest = questID
        step.lines[#step.lines + 1] = line
    end
    ns.Print(L["REC_ADDED"]:format(line))
end

------------------------------------------------------------------------
-- Objetivos: detecta progresso e conclusão comparando com o estado anterior
------------------------------------------------------------------------

local function SnapshotQuest(questID)
    local objectives = C_QuestLog.GetQuestObjectives(questID)
    if not objectives then
        return
    end
    local state = {}
    for index, objective in ipairs(objectives) do
        state[index] = {
            fulfilled = objective.numFulfilled or 0,
            finished = objective.finished == true,
        }
    end
    objectiveState[questID] = state
end

local function SnapshotLog()
    wipe(objectiveState)
    for i = 1, C_QuestLog.GetNumQuestLogEntries() do
        local info = C_QuestLog.GetInfo(i)
        if info and not info.isHeader and info.questID then
            SnapshotQuest(info.questID)
        end
    end
end

local function CheckObjectives()
    for questID, state in pairs(objectiveState) do
        local objectives = C_QuestLog.GetQuestObjectives(questID)
        for index, objective in ipairs(objectives or {}) do
            local old = state[index]
            if not old then
                old = { fulfilled = 0, finished = false }
                state[index] = old
            end
            local fulfilled = objective.numFulfilled or 0
            if fulfilled > old.fulfilled and not old.pos then
                old.pos = Here() -- primeiro progresso: onde estão os alvos
            end
            if objective.finished and not old.finished then
                AddObjective(questID, index, old.pos)
            end
            old.fulfilled = fulfilled
            old.finished = objective.finished == true
        end
    end
end

------------------------------------------------------------------------
-- Comandos
------------------------------------------------------------------------

function Recorder:Start(name)
    if self:IsActive() then
        ns.Print(L["REC_ALREADY"])
        return
    end
    local pos = Here()
    local zone = pos and ns.Names.Zone(pos.mapID) or "?"
    ns.char.recording = {
        name = (name and name ~= "") and name or L["REC_NAME"]:format(zone),
        startLevel = UnitLevel("player"),
        started = date("%Y%m%d%H%M"),
        steps = {},
    }
    SnapshotLog()
    ns.Print(L["REC_START"])
end

function Recorder:AddPoint()
    local data = Data()
    if not data then
        ns.Print(L["REC_NOT_ACTIVE"])
        return
    end
    local pos = Here()
    if not pos then
        ns.Print(L["NO_POSITION"])
        return
    end
    local path = data.pendingPath
    if not path or path.mapID ~= pos.mapID then
        path = { mapID = pos.mapID, points = {} }
        data.pendingPath = path
    end
    path.points[#path.points + 1] = { x = pos.x, y = pos.y }
    ns.Print(L["REC_POINT"]:format(#path.points))
end

function Recorder:AddNote(text)
    local data = Data()
    if not data then
        ns.Print(L["REC_NOT_ACTIVE"])
        return
    end
    -- "|" separa modificadores e "--" inicia comentário no formato do guia.
    text = strtrim(text or ""):gsub("|", ""):gsub("%-%-+", "-")
    if text == "" then
        return
    end
    local step = data.steps[#data.steps] or NewStep(Here(), nil)
    step.lines[#step.lines + 1] = "note " .. text
    ns.Print(L["REC_NOTE"])
end

local function SafeID(text)
    local id = (text or ""):lower():gsub("[^%w]", "")
    return id ~= "" and id or "jogador"
end

function Recorder:BuildText(data)
    local out = {
        "#format 1",
        ("#id rec.%s.%s"):format(SafeID(UnitName("player")), data.started),
        "#name " .. data.name,
        "#author " .. (UnitName("player") or "?"),
        "#version 1",
        "#flavor " .. ns.flavor,
        "#faction " .. (UnitFactionGroup("player") or ""),
        ("#levels %d-%d"):format(data.startLevel or 1, UnitLevel("player")),
        "",
    }
    for _, step in ipairs(data.steps) do
        out[#out + 1] = "step"
        for _, line in ipairs(step.lines) do
            out[#out + 1] = "    " .. line
        end
    end
    return table.concat(out, "\n")
end

-- Termina, salva como guia importado e devolve o texto.
function Recorder:Stop()
    local data = Data()
    if not data then
        ns.Print(L["REC_NOT_ACTIVE"])
        return nil
    end
    ns.char.recording = nil
    lastNPC = nil
    if #data.steps == 0 then
        ns.Print(L["REC_EMPTY"])
        return nil
    end
    local text = self:BuildText(data)
    local ok, result = ns.GuideIO.Import(text)
    if ok then
        ns.Print(L["REC_STOP"]:format(#data.steps, result.id))
    else
        ns.Print(tostring(result))
    end
    return text
end

------------------------------------------------------------------------
-- Eventos
------------------------------------------------------------------------

for _, event in ipairs({ "QUEST_DETAIL", "QUEST_PROGRESS", "QUEST_COMPLETE", "QUEST_GREETING", "GOSSIP_SHOW" }) do
    ns:RegisterEvent(event, RememberNPC)
end

ns:RegisterEvent("QUEST_ACCEPTED", function(questID)
    if Recorder:IsActive() then
        AddNPCAction("accept " .. questID)
        SnapshotQuest(questID)
    end
end)

ns:RegisterEvent("QUEST_TURNED_IN", function(questID)
    if Recorder:IsActive() then
        objectiveState[questID] = nil
        AddNPCAction("turnin " .. questID)
    end
end)

local checkQueued = false
ns:RegisterEvent("QUEST_LOG_UPDATE", function()
    if not Recorder:IsActive() or checkQueued then
        return
    end
    checkQueued = true
    C_Timer.After(0, function()
        checkQueued = false
        if Recorder:IsActive() then
            CheckObjectives()
        end
    end)
end)

ns:On("LOGIN", function()
    local data = Data()
    if data then
        SnapshotLog()
        ns.Print(L["REC_RESUMED"]:format(#data.steps))
    end
end)
