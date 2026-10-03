-- Comandos de barra: /azimute (aceita comandos em português e inglês).
local addonName, ns = ...
local L = ns.L

local function Toggle(dbKey, label)
    ns.db[dbKey] = not ns.db[dbKey]
    ns.Print((ns.db[dbKey] and L["TOGGLE_ON"] or L["TOGGLE_OFF"]):format(label))
    ns.Nav.waypointKey = false -- reenviar o ponto para TomTom/pino
    ns.Nav:Refresh()
end

local function ListGuides()
    local guides = ns.Registry:List()
    if #guides == 0 then
        ns.Print(L["GUIDES_EMPTY"])
        return
    end
    ns.Print(L["GUIDES_HEADER"])
    for i, guide in ipairs(guides) do
        local levels = guide.levelMin and (" [" .. guide.levelMin .. "-" .. (guide.levelMax or "?") .. "]") or ""
        local faction = guide.faction and (" " .. guide.faction) or ""
        print(("  %d. %s%s%s |cff999999(%s)|r"):format(i, ns.Registry.DisplayName(guide), levels, faction, guide.id))
    end
end

local function LoadGuide(arg)
    local index = tonumber(arg)
    local guide = index and ns.Registry:List()[index]
    ns.Engine:LoadGuide(guide and guide.id or arg, nil, true)
end

local function PrintPosition()
    local mapID, x, y = ns.Position.Player()
    if not mapID then
        ns.Print(L["NO_POSITION"])
        return
    end
    ns.Print(L["POS_FMT"]:format(mapID, ns.Names.Zone(mapID), mapID, x * 100, y * 100))
end

-- Ponto de teste no mapa atual, para conferir a seta em qualquer lugar.
local function GoTo(arg)
    local x, y = arg:match("^(%d+%.?%d*)[%s,]+(%d+%.?%d*)$")
    x, y = tonumber(x), tonumber(y)
    local mapID = ns.Position.Player()
    if not x or not y or x > 100 or y > 100 or not mapID then
        ns.Print(L["MANUAL_USAGE"])
        return
    end
    ns.Nav:SetManualTarget(mapID, x / 100, y / 100)
    ns.Print(L["MANUAL_TARGET"]:format(ns.Names.Zone(mapID), x, y))
end

-- /way x y [nome] | #mapa x y [nome] | reset: destino avulso (formato do TomTom).
local function Way(arg)
    arg = strtrim(arg or "")
    local word = arg:lower()
    if word == "reset" or word == "clear" or word == "limpar" then
        ns.Nav:ClearManual()
        ns.Print(L["WAY_CLEARED"])
        return
    end
    local mapID, rest = arg:match("^#(%d+)%s+(.+)$")
    mapID = tonumber(mapID)
    local x, y, name = (rest or arg):match("^(%d+%.?%d*)[%s,]+(%d+%.?%d*)%s*(.*)$")
    x, y = tonumber(x), tonumber(y)
    if not x or not y or x > 100 or y > 100 then
        ns.Print(L["WAY_USAGE"])
        return
    end
    mapID = mapID or ns.Position.Player()
    if not mapID then
        ns.Print(L["NO_POSITION"])
        return
    end
    ns.Nav:SetManualTarget(mapID, x / 100, y / 100, name ~= "" and { title = name } or nil)
    ns.Print(L["MANUAL_TARGET"]:format(ns.Names.Zone(mapID), x, y))
end

-- O /way só é nosso quando o TomTom não está carregado (dois addons no mesmo
-- comando dariam resultado imprevisível). Confere no LOGIN, com tudo já carregado.
local function TomTomHandlesWay()
    return type(TomTom) == "table" or (SlashCmdList and SlashCmdList["TOMTOM_WAY"] ~= nil)
end

function ns.RegisterWaySlash()
    if TomTomHandlesWay() then
        return false
    end
    SLASH_AZIMUTEWAY1 = "/way"
    SlashCmdList.AZIMUTEWAY = Way
    return true
end
ns:On("LOGIN", ns.RegisterWaySlash)

local function Export(arg)
    local compact = arg == "compacto" or arg == "compact"
    local guide = ns.Engine.guide
    local text = guide and ns.GuideIO.Export(guide.id, compact)
    if not text then
        ns.Print(L["NO_GUIDE"])
        return
    end
    ns.ImportFrame:OpenExport(text, L["EXPORT_TITLE"] .. ": " .. ns.Registry.DisplayName(guide))
end

local function Remove(arg)
    if ns.GuideIO.Remove(arg) then
        ns.Print(L["REMOVED"]:format(arg))
    else
        ns.Print(L["NOT_IMPORTED"]:format(arg))
    end
end

local function StopRecording()
    local text = ns.Recorder:Stop()
    if text then
        ns.ImportFrame:OpenExport(text, L["REC_EXPORT_TITLE"])
    end
end

-- /azimute missao [id]: guia até a missão rastreada (ou a do id).
local function FocusQuest(arg)
    local questID = tonumber(arg)
    if not questID and C_SuperTrack and C_SuperTrack.GetSuperTrackedQuestID then
        questID = C_SuperTrack.GetSuperTrackedQuestID()
    end
    ns.Focus:Start(questID)
end

-- /azimute spec [n]: mostra/escolhe a especialização usada no equipamento.
local function Spec(arg)
    local Gear = ns.Gear
    local class = ns.Engine.player.class or select(2, UnitClass("player"))
    local specs = Gear:SpecsForClass(class)
    if #specs == 0 then
        ns.Print(L["SPEC_NONE"])
        return
    end
    local index = tonumber(arg)
    if index == 0 then
        ns.char.gearSpec = nil -- volta ao automático (pelos talentos)
        Gear:UpdateBags()
    elseif index and specs[index] then
        ns.char.gearSpec = specs[index]
        Gear:UpdateBags()
    end
    local current, source = Gear:CurrentSpec()
    ns.Print(L["SPEC_CURRENT"]:format(class, Gear.SpecName(current),
        ns.Engine.player.level or UnitLevel("player")) .. " " .. L["SPEC_SOURCE_" .. (source or "default")])
    local list = {}
    for i, spec in ipairs(specs) do
        list[i] = ("%d. %s"):format(i, spec ~= "" and Gear.SpecName(spec) or class)
    end
    ns.Print(L["SPEC_LIST"]:format(table.concat(list, ", ")))
end

-- /azimute masmorras: lista; /azimute masmorra WC: liga/desliga as missões dela.
local function DungeonCommand(arg)
    local entry = ns.Dungeons.Find(arg)
    if not entry and (arg == nil or arg == "") and #ns.DungeonQuests.dungeons > 0 then
        ns.DungeonPanel:Toggle()
        return
    end
    if entry then
        ns.Dungeons:SetChosen(entry.code, not ns.Dungeons:IsChosen(entry.code))
    end
    ns.Print(L["DUNGEONS_HEADER"])
    for _, item in ipairs(ns.Dungeons:ForPlayer()) do
        local mark = ns.Dungeons:IsChosen(item.code) and "|cff33ff99[x]|r" or "[ ]"
        print(("  %s %s %s (%s)"):format(mark, item.code, ns.Dungeons.Name(item), item.levels))
    end
end

-- /azimute treino: feitiços para treinar agora e nos próximos níveis.
local function TrainingCommand()
    local now, soon = ns.Trainer:Summary()
    if not now then
        ns.Print(L["TRAINER_NO_DATA"])
        return
    end
    ns.Print(L["TRAINER_NOW"]:format(ns.Trainer.Money(now.cost)))
    for _, spell in ipairs(now) do
        print("  " .. (ns.Names.Spell(spell.id) or spell.id) .. " - " .. ns.Trainer.Money(spell.cost))
    end
    ns.Print(L["TRAINER_SOON"]:format(ns.Trainer.Money(soon.cost)))
    for _, spell in ipairs(soon) do
        print(("  %s (%d) - %s"):format(ns.Names.Spell(spell.id) or spell.id, spell.level, ns.Trainer.Money(spell.cost)))
    end
end

local COMMANDS = {
    go = GoTo,
    way = Way,
    train = TrainingCommand,
    dungeon = DungeonCommand,
    report = function() ns.Report:Open() end,
    diag = function() ns.Diag:Run() end,
    pace = function() ns.Pace:Print() end,
    edit = function() ns.ImportFrame:OpenEditor(ns.Engine.guide) end,
    new = function() ns.ImportFrame:OpenEditor(nil) end,
    spec = Spec,
    quest = FocusQuest,
    guide = function() ns.Focus:Stop() end,
    follow = function() Toggle("followQuest", L["FOLLOW_QUEST"]) end,
    map = function() ns.MapLines:Diagnose() end,
    record = function(arg) ns.Recorder:Start(arg) end,
    stop = StopRecording,
    point = function() ns.Recorder:AddPoint() end,
    note = function(arg) ns.Recorder:AddNote(arg) end,
    import = function() ns.ImportFrame:OpenImport() end,
    export = Export,
    remove = Remove,
    show = function() ns.UI:SetShown(true) end,
    hide = function() ns.UI:SetShown(false) end,
    next = function() ns.Engine:Next() end,
    prev = function() ns.Engine:Prev() end,
    guides = function() ns.GuidePicker:Toggle() end,
    list = ListGuides,
    load = LoadGuide,
    pos = PrintPosition,
    arrow = function() Toggle("arrowShown", L["ARROW"]) end,
    tomtom = function() Toggle("useTomTom", L["TOMTOM"]) end,
    pin = function() Toggle("mapPin", L["MAP_PIN"]) end,
    reset = function()
        ns.db.point = CopyTable(ns.DEFAULTS.point)
        ns.db.arrowPoint = CopyTable(ns.DEFAULTS.arrowPoint)
        ns.RestorePosition(ns.UI.frame, "point")
        ns.RestorePosition(ns.Arrow.frame, "arrowPoint")
        ns.Print(L["POSITION_RESET"])
    end,
    debug = function()
        ns.db.debug = not ns.db.debug
        ns.Print(ns.db.debug and L["DEBUG_ON"] or L["DEBUG_OFF"])
    end,
}

-- Apelidos em português
COMMANDS.mostrar = COMMANDS.show
COMMANDS.esconder = COMMANDS.hide
COMMANDS.avancar = COMMANDS.next
COMMANDS.voltar = COMMANDS.prev
COMMANDS.ritmo = COMMANDS.pace
COMMANDS.guias = COMMANDS.guides
COMMANDS.lista = COMMANDS.list
COMMANDS.carregar = COMMANDS.load
COMMANDS.seta = COMMANDS.arrow
COMMANDS.pino = COMMANDS.pin
COMMANDS.ir = COMMANDS.go
COMMANDS.treino = COMMANDS.train
COMMANDS.masmorra = COMMANDS.dungeon
COMMANDS.masmorras = COMMANDS.dungeon
COMMANDS.editar = COMMANDS.edit
COMMANDS.novo = COMMANDS.new
COMMANDS.missao = COMMANDS.quest
COMMANDS.guia = COMMANDS.guide
COMMANDS.seguir = COMMANDS.follow
COMMANDS.mapa = COMMANDS.map
COMMANDS.gravar = COMMANDS.record
COMMANDS.parar = COMMANDS.stop
COMMANDS.ponto = COMMANDS.point
COMMANDS.nota = COMMANDS.note
COMMANDS.importar = COMMANDS.import
COMMANDS.exportar = COMMANDS.export
COMMANDS.remover = COMMANDS.remove
COMMANDS.reportar = COMMANDS.report
COMMANDS.problema = COMMANDS.report

SLASH_AZIMUTE1 = "/azimute"
SLASH_AZIMUTE2 = "/azi"
SLASH_AZIMUTE3 = "/guiaup" -- nome antigo, continua funcionando
SlashCmdList.AZIMUTE = function(input)
    local command, rest = strtrim(input or ""):match("^(%S*)%s*(.*)$")
    local handler = COMMANDS[command:lower()]
    if handler then
        handler(rest)
        return
    end
    for _, line in ipairs(L["HELP"]) do
        ns.Print(line)
    end
end
