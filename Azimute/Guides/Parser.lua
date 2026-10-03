-- Converte o texto de um guia em tabelas de passos.
-- O texto é tratado SOMENTE como dados: nada do guia é executado como Lua
-- (sem loadstring), então um guia da comunidade não pode rodar código.
--
-- Formato:
--   #id meu.guia          cabeçalhos antes do primeiro "step"
--   step
--       goto 1429 48.2,42.0
--       accept 783
--       kill 6 |q 7/1     modificadores depois de "|"
--       only Warrior      condição do passo inteiro
--   -- comentário
local addonName, ns = ...
local L = ns.L

local Parser = {}
ns.Parser = Parser

Parser.FORMAT_VERSION = 1

local MAX_TEXT_SIZE = 500000
local MAX_STEPS = 5000
local MAX_PATH_POINTS = 100
local MAX_NOTE_LENGTH = 300
local DEFAULT_GOTO_RADIUS = 10
local DEFAULT_PATH_RADIUS = 8
local LOOP_RADIUS = 30 -- circuito de coleta: áreas grandes

------------------------------------------------------------------------
-- Validação de valores
------------------------------------------------------------------------

local function ParseID(text)
    local id = tonumber(text)
    if id and id > 0 and id < 100000000 and id == math.floor(id) then
        return id
    end
end

-- "48.2,42.0" (porcentagem do mapa) -> 0.482, 0.420
local function ParseCoord(text)
    local x, y = text:match("^(%d+%.?%d*),(%d+%.?%d*)$")
    x, y = tonumber(x), tonumber(y)
    if x and y and x <= 100 and y <= 100 then
        return x / 100, y / 100
    end
end

-- Ponto de um goto/path. Dois formatos:
--   "48.2,42.0"        porcentagem do mapa  -> { x = 0.482, y = 0.420 }
--   "@1667.77,1679.04" coordenada do mundo  -> { wx = 1667.77, wy = 1679.04 }
--     (mesma convenção da HereBeDragons/RestedXP; convertida para o mapa
--      quando o guia é carregado, em Engine:LoadGuide)
local function ParsePoint(text)
    local wx, wy = text:match("^@(%-?%d+%.?%d*),(%-?%d+%.?%d*)$")
    if wx then
        return { wx = tonumber(wx), wy = tonumber(wy) }
    end
    local x, y = ParseCoord(text)
    if x then
        return { x = x, y = y }
    end
end

-- "Alliance Warrior" -> { "ALLIANCE", "WARRIOR" }; "!Mage" = exceto magos.
local function ParseTokens(text)
    local tokens = {}
    for token in text:gmatch("%S+") do
        if not token:match("^!?%a+$") then
            return nil
        end
        tokens[#tokens + 1] = token:upper()
    end
    return #tokens > 0 and tokens or nil
end

-- Lista de IDs: "363 364" -> { 363, 364 }
local function ParseIDList(text)
    local ids = {}
    for token in text:gmatch("%S+") do
        local id = ParseID(token)
        if not id then
            return nil
        end
        ids[#ids + 1] = id
    end
    return #ids > 0 and ids or nil
end

local function QuestGoal(goalType)
    return function(args)
        local id = ParseID(args)
        if not id then
            return nil, L["ERR_BAD_ID"]:format(args)
        end
        return { type = goalType, questID = id }
    end
end

local function NPCGoal(goalType)
    return function(args)
        local id = ParseID(args)
        if not id then
            return nil, L["ERR_BAD_ID"]:format(args)
        end
        return { type = goalType, npcID = id }
    end
end

------------------------------------------------------------------------
-- Comandos dentro de um passo
------------------------------------------------------------------------

local VERBS = {
    accept = QuestGoal("accept"),
    turnin = QuestGoal("turnin"),
    complete = QuestGoal("complete"),
    talk = NPCGoal("talk"),
    kill = NPCGoal("kill"),
}

-- Objetivo genérico de uma quest: "objective 364/1" (gerado pelo gravador).
VERBS.objective = function(args)
    local questID, index = args:match("^(%d+)/(%d+)$")
    questID, index = ParseID(questID), ParseID(index)
    if not questID or not index then
        return nil, L["ERR_BAD_OBJECTIVE"]
    end
    return { type = "objective", objective = { questID = questID, index = index } }
end

VERBS["goto"] = function(args)
    local map, coord, radius = args:match("^(%d+)%s+(%S+)%s*(%d*)$")
    local mapID = ParseID(map)
    local point = coord and ParsePoint(coord)
    if not mapID or not point then
        return nil, L["ERR_BAD_GOTO"]
    end
    return {
        type = "goto",
        mapID = mapID,
        x = point.x,
        y = point.y,
        wx = point.wx,
        wy = point.wy,
        radius = tonumber(radius) or DEFAULT_GOTO_RADIUS,
    }
end

VERBS.path = function(args)
    local mode, map, rest = args:match("^(%a+)%s+(%d+)%s+(.+)$")
    local mapID = ParseID(map)
    -- loop = circuito de coleta: ao chegar no último ponto recomeça no primeiro
    if (mode ~= "seq" and mode ~= "closest" and mode ~= "loop") or not mapID then
        return nil, L["ERR_BAD_PATH"]
    end
    local points = {}
    for coord in rest:gmatch("%S+") do
        local point = ParsePoint(coord)
        if not point then
            return nil, L["ERR_BAD_COORD"]:format(coord)
        end
        points[#points + 1] = point
    end
    if #points == 0 or #points > MAX_PATH_POINTS then
        return nil, L["ERR_BAD_PATH"]
    end
    return {
        type = "path",
        mode = mode,
        mapID = mapID,
        points = points,
        radius = mode == "loop" and LOOP_RADIUS or DEFAULT_PATH_RADIUS,
    }
end

VERBS.level = function(args)
    local level = ParseID(args)
    if not level or level > 100 then
        return nil, L["ERR_BAD_VALUE"]:format("level")
    end
    return { type = "level", level = level }
end

VERBS.note = function(args)
    if args == "" or #args > MAX_NOTE_LENGTH then
        return nil, L["ERR_BAD_VALUE"]:format("note")
    end
    return { type = "note", text = args }
end

-- "collect 159 10": ter 10 do item 159 nas bolsas.
VERBS.collect = function(args)
    local itemID, count = args:match("^(%d+)%s*(%d*)$")
    itemID = ParseID(itemID)
    if not itemID then
        return nil, L["ERR_BAD_ID"]:format(args)
    end
    return { type = "collect", itemID = itemID, count = tonumber(count) or 1 }
end

-- "train 1459": aprender o feitiço 1459 com o treinador.
VERBS.train = function(args)
    local spellID = ParseID(args)
    if not spellID then
        return nil, L["ERR_BAD_ID"]:format(args)
    end
    return { type = "train", spellID = spellID }
end

-- "use 6948": usar o item.
VERBS.use = function(args)
    local itemID = ParseID(args)
    if not itemID then
        return nil, L["ERR_BAD_ID"]:format(args)
    end
    return { type = "use", itemID = itemID }
end

-- "fly 1454": voar até a zona (concluído ao chegar nela).
VERBS.fly = function(args)
    local mapID = ParseID(args)
    if not mapID then
        return nil, L["ERR_BAD_ID"]:format(args)
    end
    return { type = "fly", mapID = mapID }
end

-- Profissões por nome (IDs de linha de habilidade do jogo).
local PROFESSIONS = {
    alchemy = 171, blacksmithing = 164, enchanting = 333, engineering = 202,
    herbalism = 182, leatherworking = 165, mining = 186, skinning = 393,
    tailoring = 197, cooking = 185, firstaid = 129, fishing = 356,
}

local function ParseSkill(args)
    local name, level = args:match("^(%a+)%s+(%d+)$")
    local skillLine = name and PROFESSIONS[name:lower()]
    level = tonumber(level)
    if not skillLine or not level then
        return nil
    end
    return skillLine, level
end

-- "skill herbalism 70": subir a profissão até 70.
VERBS.skill = function(args)
    local skillLine, level = ParseSkill(args)
    if not skillLine then
        return nil, L["ERR_BAD_VALUE"]:format("skill")
    end
    return { type = "skill", skillLine = skillLine, level = level }
end

-- "zone 1421": ir até a zona (concluído ao entrar nela).
VERBS.zone = function(args)
    local mapID = ParseID(args)
    if not mapID then
        return nil, L["ERR_BAD_ID"]:format(args)
    end
    return { type = "zone", mapID = mapID }
end

-- "abandon 363": abandonar a missão.
VERBS.abandon = QuestGoal("abandon")

-- Ações sem argumento, concluídas por evento do jogo depois que o passo
-- começa (ex.: "vendor" termina ao fechar a janela do vendedor).
for _, action in ipairs({ "vendor", "trainer", "fp", "home", "hearth" }) do
    VERBS[action] = function()
        return { type = action }
    end
end

-- Condições do passo (o passo só vale se todas forem verdadeiras):
--   ifonquest 363 364 | ifnotonquest | ifcomplete | ifturnedin | ifnotturnedin
local CONDITIONS = {
    ifonquest = true,
    ifnotonquest = true,
    ifcomplete = true,
    ifturnedin = true,
    ifnotturnedin = true,
}

------------------------------------------------------------------------
-- Modificadores: "kill 6 |q 7/1 |only Warrior"
------------------------------------------------------------------------

local function ApplyModifier(goal, modifier)
    local key, value = modifier:match("^(%S+)%s*(.*)$")
    key = key and key:lower()
    if key == "q" then
        local questID, index = value:match("^(%d+)/(%d+)$")
        questID, index = ParseID(questID), ParseID(index)
        if not questID or not index then
            return L["ERR_BAD_OBJ"]
        end
        goal.objective = { questID = questID, index = index }
    elseif key == "opt" then
        -- Objetivo opcional: aparece na janela, mas não segura o passo.
        goal.optional = true
    elseif key == "quest" then
        -- Coleta ligada a uma missão: conta como feita quando a missão foi
        -- entregue ou está pronta ("collect 730 3 |quest 91920").
        goal.questLink = ParseID(value)
        if not goal.questLink then
            return L["ERR_BAD_VALUE"]:format("quest")
        end
    elseif key == "noauto" then
        -- Não aceitar/entregar automaticamente (ex.: escoltas).
        goal.noauto = true
    elseif key == "reward" then
        -- Recompensa escolhida pelo guia na entrega ("turnin 364 |reward 2").
        goal.reward = ParseID(value)
        if not goal.reward then
            return L["ERR_BAD_VALUE"]:format("reward")
        end
    elseif key == "only" then
        goal.only = ParseTokens(value)
        if not goal.only then
            return L["ERR_BAD_VALUE"]:format("only")
        end
    else
        return L["ERR_MODIFIER"]:format(tostring(key))
    end
end

-- Devolve uma mensagem de erro/aviso, ou nil se a linha estiver ok.
local function ParseStepLine(step, line)
    local segments = { strsplit("|", line) }
    local verb, args = strtrim(segments[1]):match("^(%S+)%s*(.*)$")
    verb = verb and verb:lower()

    if verb == "only" then
        step.only = ParseTokens(args)
        if not step.only then
            return L["ERR_BAD_VALUE"]:format("only")
        end
        return nil
    end

    -- "ifskillbelow herbalism 70": o passo só vale abaixo de 70 na profissão.
    if verb == "ifskillbelow" then
        local skillLine, level = ParseSkill(args)
        if not skillLine then
            return L["ERR_BAD_VALUE"]:format(verb)
        end
        step.conditions = step.conditions or {}
        step.conditions[#step.conditions + 1] = { type = verb, skillLine = skillLine, level = level }
        return nil
    end

    -- "ifdungeon WC" / "ifnotdungeon WC": passos das missões de masmorra.
    if verb == "ifdungeon" or verb == "ifnotdungeon" then
        local code = args:match("^(%w+)$")
        if not code then
            return L["ERR_BAD_VALUE"]:format(verb)
        end
        step.conditions = step.conditions or {}
        step.conditions[#step.conditions + 1] = { type = verb, dungeon = code:upper() }
        step.dungeon = step.dungeon or (verb == "ifdungeon" and code:upper()) or nil
        return nil
    end

    if verb and CONDITIONS[verb] then
        local ids = ParseIDList(args)
        if not ids then
            return L["ERR_BAD_VALUE"]:format(verb)
        end
        step.conditions = step.conditions or {}
        step.conditions[#step.conditions + 1] = { type = verb, questIDs = ids }
        return nil
    end

    local goal, err
    -- Nota só para um idioma: "note-enUS Kill the boars" aparece só no enUS.
    local noteLocale = verb and verb:match("^note%-(%a%a%a%a)$")
    if noteLocale then
        goal, err = VERBS.note(args)
        if goal then
            -- ptbr -> ptBR (verb foi convertido para minúsculas)
            goal.locale = noteLocale:sub(1, 2) .. noteLocale:sub(3, 4):upper()
        end
    else
        local handler = verb and VERBS[verb]
        if not handler then
            return L["ERR_VERB"]:format(tostring(verb))
        end
        goal, err = handler(args)
    end
    if not goal then
        return err
    end

    local warning
    for i = 2, #segments do
        local modifier = strtrim(segments[i])
        if modifier ~= "" then
            warning = ApplyModifier(goal, modifier) or warning
        end
    end
    step.goals[#step.goals + 1] = goal
    return warning
end

------------------------------------------------------------------------
-- Cabeçalhos
------------------------------------------------------------------------

local function ParseLevels(value)
    local minLevel, maxLevel = value:match("^(%d+)%-(%d+)$")
    return tonumber(minLevel), tonumber(maxLevel)
end

local HEADERS = {
    format = function(guide, value)
        guide.format = ParseID(value)
    end,
    id = function(guide, value)
        if not value:match("^[%w%._%-]+$") or #value > 80 then
            return L["ERR_BAD_VALUE"]:format("#id")
        end
        guide.id = value
    end,
    name = function(guide, value)
        guide.name = value:sub(1, 120)
    end,
    author = function(guide, value)
        guide.author = value:sub(1, 80)
    end,
    version = function(guide, value)
        guide.version = tonumber(value)
    end,
    flavor = function(guide, value)
        guide.flavors = {}
        for flavor in value:gmatch("[^,%s]+") do
            guide.flavors[flavor:lower()] = true
        end
    end,
    faction = function(guide, value)
        guide.faction = value:upper()
    end,
    -- Raças que começam neste guia (ex.: "#race Orc Troll"); vazio = todas.
    race = function(guide, value)
        local tokens = ParseTokens(value)
        if not tokens then
            return L["ERR_BAD_VALUE"]:format("#race")
        end
        guide.races = {}
        for _, token in ipairs(tokens) do
            guide.races[token] = true
        end
    end,
    levels = function(guide, value)
        guide.levelMin, guide.levelMax = ParseLevels(value)
    end,
    next = function(guide, value)
        guide.next = value
    end,
    license = function(guide, value)
        guide.license = value:sub(1, 80)
    end,
    -- Confiança no guia: "validated" (conferido no jogo) ou "experimental"
    -- (convertido de outra versão do jogo, ainda sem teste no Forever).
    status = function(guide, value)
        value = value:lower()
        if value ~= "validated" and value ~= "experimental" then
            return L["ERR_BAD_VALUE"]:format("#status")
        end
        guide.status = value
    end,
    description = function(guide, value)
        guide.description = value:sub(1, 300)
    end,
    -- Categoria e subcategoria no seletor de guias.
    group = function(guide, value)
        guide.group = value:sub(1, 80)
    end,
    subgroup = function(guide, value)
        guide.subgroup = value:sub(1, 80)
    end,
    -- Zona principal: o nome exibido vem do cliente, já traduzido
    -- ("#zone 1420" + "#levels 1-6" -> "1-6 Clareiras de Tirisfal").
    zone = function(guide, value)
        guide.zone = ParseID(value)
    end,
    -- Várias zonas: "#zones 1442 1413" -> "20-23 Garraquia / Sertões".
    zones = function(guide, value)
        guide.zones = ParseIDList(value)
        if not guide.zones then
            return L["ERR_BAD_VALUE"]:format("#zones")
        end
    end,
    -- Tipo do guia: "leveling" (padrão, escolhido automaticamente pelo nível)
    -- ou "profession", "dungeon"... (só pelo seletor).
    kind = function(guide, value)
        guide.kind = value:lower()
    end,
    -- Complemento do nome montado pelas zonas ("AoE", "(Orc/Troll)").
    suffix = function(guide, value)
        guide.suffix = value:sub(1, 40)
    end,
    -- Recomendado para (não restringe): "#recommend Undead", "#recommend Orc Troll".
    recommend = function(guide, value)
        guide.recommend = ParseTokens(value)
    end,
    -- Restrição do guia inteiro: "#only Human Mage" (mesma regra do "only").
    only = function(guide, value)
        guide.only = ParseTokens(value)
        if not guide.only then
            return L["ERR_BAD_VALUE"]:format("#only")
        end
    end,
}

local function ParseHeader(guide, line)
    local key, value = line:match("^#(%S+)%s*(.*)$")
    if not key then
        return L["ERR_HEADER"]:format(line)
    end
    -- Textos traduzidos: #name-ptBR, #group-ptBR, #subgroup-ptBR
    local field, textLocale = key:match("^(%a+)%-(%a%a%a%a)$")
    field = field and field:lower()
    if field == "name" then
        guide.names[textLocale] = value:sub(1, 120)
        return nil
    elseif field == "group" or field == "subgroup" or field == "suffix" then
        guide.translations = guide.translations or {}
        guide.translations[field .. ":" .. textLocale] = value:sub(1, 80)
        return nil
    end
    local handler = HEADERS[key:lower()]
    if not handler then
        return L["ERR_HEADER"]:format(key)
    end
    return handler(guide, value)
end

------------------------------------------------------------------------
-- Entrada principal
-- Devolve: guide (ou nil se inválido), lista de avisos/erros
------------------------------------------------------------------------

-- headerOnly = true lê só o cabeçalho (rápido): usado para listar guias no
-- seletor sem montar todos os passos; o guia completo é lido ao carregar.
function Parser:Parse(text, headerOnly)
    if type(text) ~= "string" then
        return nil, { L["ERR_NOT_TEXT"] }
    end
    if #text > MAX_TEXT_SIZE then
        return nil, { L["ERR_TOO_BIG"] }
    end

    local guide = { steps = {}, names = {} }
    local problems = {}
    local step
    local lineNumber = 0

    for rawLine in (text .. "\n"):gmatch("([^\n]*)\n") do
        lineNumber = lineNumber + 1
        local line = strtrim((rawLine:gsub("\r", ""):gsub("%-%-.*$", "")))

        if headerOnly and line:lower() == "step" then
            guide.hasSteps = true
            break
        end
        if line ~= "" then
            local err
            if line:sub(1, 1) == "#" then
                if step then
                    err = L["ERR_HEADER_POS"]
                else
                    err = ParseHeader(guide, line)
                end
            elseif line:lower() == "step" then
                if #guide.steps >= MAX_STEPS then
                    return nil, { L["ERR_TOO_MANY"] }
                end
                step = { goals = {}, line = lineNumber }
                guide.steps[#guide.steps + 1] = step
            elseif not step then
                err = L["ERR_OUTSIDE"]
            else
                err = ParseStepLine(step, line)
            end
            if err then
                problems[#problems + 1] = L["PARSE_LINE"]:format(lineNumber, err)
            end
        end
    end

    if not guide.id then
        return nil, { L["ERR_NO_ID"] }
    end
    if #guide.steps == 0 and not guide.hasSteps then
        return nil, { L["ERR_NO_STEPS"] }
    end
    if guide.format and guide.format > Parser.FORMAT_VERSION then
        table.insert(problems, 1, L["ERR_NEWER"]:format(guide.format))
    end

    guide.name = guide.names[ns.locale] or guide.name or guide.id
    return guide, problems
end
