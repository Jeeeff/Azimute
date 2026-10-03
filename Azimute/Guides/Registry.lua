-- Registro de guias: os guias embutidos, os de pacotes e os importados
-- passam pelo mesmo parser (só dados).
--
-- Pacotes grandes são registrados "sob demanda": na hora só o cabeçalho é
-- lido (para o seletor); os passos são lidos quando o guia é carregado.
local addonName, ns = ...
local L = ns.L

local Registry = {
    guides = {},
    order = {},
}
ns.Registry = Registry

local function ReportProblems(label, problems, fatal)
    local template = fatal and L["GUIDE_REJECTED"] or L["GUIDE_WARNING"]
    for _, problem in ipairs(problems or {}) do
        ns.Print(template:format(label, problem))
    end
end

local function Parse(text, label, headerOnly)
    local ok, guide, problems = pcall(ns.Parser.Parse, ns.Parser, text, headerOnly)
    if not ok then
        problems = { tostring(guide) }
        ReportProblems(label, problems, true)
        return nil, problems
    end
    if not guide then
        ReportProblems(label, problems, true)
        return nil, problems
    end
    ReportProblems(guide.id, problems, false)
    return guide
end

-- Devolve true, guia se foi registrado; false, lista de problemas se não.
-- force = true substitui um guia com o mesmo id (importação pelo jogador).
-- lazy = true lê só o cabeçalho agora (pacotes de guias).
function Registry:Register(text, source, force, lazy)
    local guide, problems = Parse(text, tostring(source or "?"), lazy)
    if not guide then
        return false, problems
    end

    local existing = self.guides[guide.id]
    if existing then
        -- Mantém a versão mais nova quando dois pacotes trazem o mesmo guia.
        if not force and (existing.version or 0) >= (guide.version or 0) then
            return false, {}
        end
    else
        self.order[#self.order + 1] = guide.id
    end
    guide.source = source
    guide.text = text -- para exportar e para a leitura completa
    guide.lazy = lazy and true or nil
    self.guides[guide.id] = guide
    ns:Fire("GUIDES_CHANGED")
    return true, guide
end

function Registry:Remove(id)
    if not self.guides[id] then
        return false
    end
    self.guides[id] = nil
    for i, orderID in ipairs(self.order) do
        if orderID == id then
            table.remove(self.order, i)
            break
        end
    end
    ns:Fire("GUIDES_CHANGED")
    return true
end

-- Cabeçalho do guia (sem garantir os passos): para listas e escolhas.
function Registry:Peek(id)
    return self.guides[id]
end

-- Guia completo, com os passos (lê agora se foi registrado sob demanda).
function Registry:Get(id)
    local guide = self.guides[id]
    if guide and guide.lazy then
        local full = Parse(guide.text, id, false)
        if not full then
            return nil
        end
        full.source, full.text = guide.source, guide.text
        self.guides[id] = full
        guide = full
    end
    return guide
end

function Registry:List()
    local list = {}
    for i, id in ipairs(self.order) do
        list[i] = self.guides[id]
    end
    return list
end

-- Nome para exibir: tradução do guia > nível + zona do cliente > #name.
-- Selo de confiança do guia ("" quando o guia não declara #status).
function Registry.StatusTag(guide)
    if guide and guide.status == "experimental" then
        return "|cffff9933[" .. L["STATUS_EXPERIMENTAL"] .. "]|r"
    elseif guide and guide.status == "validated" then
        return "|cff33ff99[" .. L["STATUS_VALIDATED"] .. "]|r"
    end
    return ""
end

function Registry.DisplayName(guide)
    local translated = guide.names and guide.names[ns.locale]
    if translated then
        return translated
    end
    local zones = guide.zones or (guide.zone and { guide.zone })
    if zones then
        local names = {}
        for i, mapID in ipairs(zones) do
            names[i] = ns.Names.Zone(mapID)
        end
        local text = table.concat(names, " / ")
        if guide.levelMin then
            text = ("%d-%d %s"):format(guide.levelMin, guide.levelMax or guide.levelMin, text)
        end
        local suffix = Registry.DisplayGroup(guide, "suffix")
        if suffix then
            text = text .. " " .. suffix
        end
        return text
    end
    return guide.name or guide.id
end

-- Categoria/subcategoria no idioma do cliente (#group-ptBR), se houver.
function Registry.DisplayGroup(guide, field)
    local translations = guide.translations
    local translated = translations and translations[field .. ":" .. ns.locale]
    return translated or guide[field]
end

-- player: { faction = "HORDE", race = "SCOURGE", class = "WARLOCK", level = 13 }
function Registry:Fits(guide, player)
    if guide.faction and guide.faction ~= player.faction then
        return false
    end
    if guide.races and not guide.races[player.race] then
        return false
    end
    if guide.flavors and not guide.flavors[ns.flavor] then
        return false
    end
    if guide.only and not ns.Engine.Matches(guide.only) then
        return false
    end
    return true
end

-- Quanto o guia combina com o personagem (maior = melhor); nil se não serve.
function Registry:Score(guide, player)
    if not self:Fits(guide, player) then
        return nil
    end
    if guide.kind and guide.kind ~= "leveling" then
        return nil -- profissões etc.: só pelo seletor
    end
    local score = 0
    local level = player.level or 1
    if guide.levelMin and guide.levelMax then
        if level >= guide.levelMin and level < guide.levelMax then
            score = score + 10
        elseif level < guide.levelMin or level > guide.levelMax + 2 then
            score = score - 5
        end
    end
    if guide.recommend and ns.Engine.Matches(guide.recommend) then
        score = score + 5
    end
    if guide.races then
        score = score + 2
    end
    -- Rota com masmorras (forever.dg.*): só ganha de quem escolheu masmorras.
    if guide.id:find("^forever%.dg%.") then
        score = score + (next(ns.char.dungeons) and 2 or -4)
    end
    -- Missões que o jogador já tem no diário e zona onde ele está.
    score = score + math.min(15, 3 * Registry.QuestsInLog(guide))
    local mapID = C_Map.GetBestMapForUnit("player")
    local zones = guide.zones or (guide.zone and { guide.zone }) or {}
    for _, zone in ipairs(zones) do
        if zone == mapID then
            score = score + 3
            break
        end
    end
    return score
end

-- IDs das missões citadas no guia (lidos do texto, sem montar os passos).
local function GuideQuests(guide)
    if not guide.questIDs then
        local ids, seen = {}, {}
        for _, verb in ipairs({ "accept", "turnin", "complete" }) do
            for id in (guide.text or ""):gmatch("%f[%w]" .. verb .. "%s+(%d+)") do
                id = tonumber(id)
                if not seen[id] then
                    seen[id] = true
                    ids[#ids + 1] = id
                end
            end
        end
        guide.questIDs = ids
    end
    return guide.questIDs
end

-- Quantas missões do diário do jogador este guia conduz.
function Registry.QuestsInLog(guide)
    local count = 0
    for _, id in ipairs(GuideQuests(guide)) do
        if C_QuestLog.IsOnQuest(id) then
            count = count + 1
        end
    end
    return count
end

-- Guia mais indicado para o personagem (facção, raça, classe, nível e jogo).
-- except: { [id] = true } guias a ignorar (ex.: os que já terminaram).
function Registry:FindFor(player, except)
    local best, bestScore
    for _, id in ipairs(self.order) do
        local guide = self.guides[id]
        local score = not (except and except[id]) and self:Score(guide, player)
        if score and (not bestScore or score > bestScore) then
            best, bestScore = guide, score
        end
    end
    return best
end

-- API pública para pacotes de guias:
--   AzimuteAPI.RegisterGuide([[ #id ... step ... ]])
AzimuteAPI = {
    formatVersion = ns.Parser.FORMAT_VERSION,
    RegisterGuide = function(text)
        return Registry:Register(text, "external", false, true)
    end,
}
-- Nome antigo (pacotes feitos para o GuiaUp continuam funcionando).
GuiaUpAPI = AzimuteAPI

-- Módulos independentes do pacote (Azimute_Meter, Azimute_Bags...) aparecem no
-- menu do botão do minimapa. Eles funcionam sozinhos; isto é só um atalho.
-- info = { name = "...", toggle = function, options = function (opcional) }
ns.modules = {}
-- Destino avulso vindo de um módulo (ex.: raro achado pelo Azimute_Raros):
-- janela em "Indo até", seta e pino. Devolve true se aceitou.
AzimuteAPI.GoTo = function(mapID, x, y, title)
    if type(mapID) ~= "number" or type(x) ~= "number" or type(y) ~= "number" then
        return false
    end
    ns.Nav:SetManualTarget(mapID, x, y, { title = title })
    return true
end

AzimuteAPI.RegisterModule = function(info)
    if type(info) == "table" and type(info.name) == "string" and type(info.toggle) == "function" then
        ns.modules[#ns.modules + 1] = info
        return true
    end
    return false
end
