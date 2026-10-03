-- Relatório de problema: junta guia, passo e posição num texto curto para o
-- jogador colar no canal de suporte (Ctrl+C). Nada é enviado pela rede.
local addonName, ns = ...
local L = ns.L

local Report = {}
ns.Report = Report

local MAX_GOAL_LINES = 12

-- Valores secretos (Forever/Midnight) não podem ser impressos nem comparados.
local function Safe(value)
    if value == nil or ns.IsSecret(value) then
        return "?"
    end
    return tostring(value)
end

local function AddonVersion()
    local getMeta = C_AddOns and C_AddOns.GetAddOnMetadata or GetAddOnMetadata
    return Safe(getMeta and getMeta(addonName, "Version"))
end

-- Uma linha por objetivo do passo (ids de missão/NPC/item e coordenadas).
local function GoalLine(goal)
    local kind = goal.type
    if kind == "goto" or kind == "path" then
        if goal.x and goal.y then
            return ("%s %s %.2f,%.2f"):format(kind, Safe(goal.mapID), goal.x * 100, goal.y * 100)
        end
        return ("%s %s @%s,%s"):format(kind, Safe(goal.mapID), Safe(goal.wx), Safe(goal.wy))
    end
    local id = goal.questID or goal.npcID or goal.itemID or goal.spellID
    if not id and goal.objective then
        id = ("%s/%s"):format(Safe(goal.objective.questID), Safe(goal.objective.index))
    end
    if id then
        return ("%s %s"):format(Safe(kind), Safe(id))
    end
    return Safe(kind)
end

function Report:Build()
    local Engine = ns.Engine
    local guide = Engine.guide
    if not guide then
        return nil
    end
    local lines = {
        "[Azimute report]",
        ("addon=%s interface=%s locale=%s"):format(AddonVersion(), Safe(ns.interface), Safe(ns.locale)),
        ("guide=%s version=%s status=%s"):format(Safe(guide.id), Safe(guide.version), guide.status or "-"),
        ("step=%s/%s"):format(Safe(Engine.stepIndex), Safe(#guide.steps)),
    }
    local _, raceFile = UnitRace("player")
    local _, classFile = UnitClass("player")
    lines[#lines + 1] = ("player=level %s %s %s %s"):format(
        Safe(UnitLevel("player")), Safe(raceFile), Safe(classFile), Safe(UnitFactionGroup("player")))
    local mapID, x, y = ns.Position.Player()
    if mapID and x and y then
        lines[#lines + 1] = ("position=map %s (%s) %.2f,%.2f"):format(
            Safe(mapID), Safe(ns.Names.Zone(mapID)), x * 100, y * 100)
    else
        lines[#lines + 1] = "position=?"
    end
    local step = Engine:CurrentStep()
    lines[#lines + 1] = "goals:"
    local goals = step and step.goals or {}
    for i = 1, math.min(#goals, MAX_GOAL_LINES) do
        lines[#lines + 1] = "  " .. GoalLine(goals[i])
    end
    if #goals > MAX_GOAL_LINES then
        lines[#lines + 1] = ("  (+%d)"):format(#goals - MAX_GOAL_LINES)
    end
    lines[#lines + 1] = "note: "
    return table.concat(lines, "\n")
end

function Report:Open()
    local text = self:Build()
    if not text then
        ns.Print(L["REPORT_NO_GUIDE"])
        return
    end
    ns.ImportFrame:OpenExport(text, L["REPORT_TITLE"], L["REPORT_HINT"])
end
