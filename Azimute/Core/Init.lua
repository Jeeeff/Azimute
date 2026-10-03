-- Núcleo: utilitários, dados salvos, detecção do jogo e barramento de eventos.
local addonName, ns = ...
local L = ns.L

ns.name = addonName

local interface = select(4, GetBuildInfo())
ns.interface = interface
ns.isForever = interface >= 16000 and interface < 17000
ns.flavor = ns.isForever and "forever" or "mainline"

------------------------------------------------------------------------
-- Utilitários
------------------------------------------------------------------------

-- issecretvalue só existe a partir do Midnight 12.0 (e no Forever).
function ns.IsSecret(value)
    return type(issecretvalue) == "function" and issecretvalue(value) and true or false
end

function ns.Print(msg)
    print("|cff33ff99" .. addonName .. "|r " .. msg)
end

function ns.Debug(fmt, ...)
    if ns.db and ns.db.debug then
        ns.Print("|cff999999[debug]|r " .. fmt:format(...))
    end
end

-- Copia chaves padrão que ainda não existem (não sobrescreve o que o
-- jogador já salvou).
function ns.ApplyDefaults(db, defaults)
    for key, value in pairs(defaults) do
        if db[key] == nil then
            db[key] = type(value) == "table" and CopyTable(value) or value
        end
    end
    return db
end

function ns.RestorePosition(frame, dbKey)
    local p = ns.db[dbKey]
    frame:ClearAllPoints()
    frame:SetPoint(p[1], UIParent, p[2], p[3], p[4])
end

-- Janela arrastável com o botão esquerdo; a posição fica em ns.db[dbKey].
function ns.MakeMovable(frame, dbKey)
    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:SetClampedToScreen(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetScript("OnDragStart", frame.StartMoving)
    frame:SetScript("OnDragStop", function(f)
        f:StopMovingOrSizing()
        local point, _, relativePoint, x, y = f:GetPoint(1)
        ns.db[dbKey] = { point, relativePoint, x, y }
    end)
    ns.RestorePosition(frame, dbKey)
end

------------------------------------------------------------------------
-- Eventos do jogo: vários módulos podem escutar o mesmo evento.
-- ns:RegisterEvent("QUEST_ACCEPTED", function(questID) ... end)
------------------------------------------------------------------------

local eventFrame = CreateFrame("Frame")
local eventHandlers = {}

-- Eventos que não existem neste cliente (Forever x Midnight) são
-- ignorados em vez de derrubar o addon.
local function IsEventAvailable(event)
    if C_EventUtils and C_EventUtils.IsEventValid then
        return C_EventUtils.IsEventValid(event)
    end
    return true
end

function ns:RegisterEvent(event, handler)
    local list = eventHandlers[event]
    if not list then
        if not IsEventAvailable(event) or not pcall(eventFrame.RegisterEvent, eventFrame, event) then
            ns.unavailableEvents = ns.unavailableEvents or {}
            ns.unavailableEvents[#ns.unavailableEvents + 1] = event
            return false
        end
        list = {}
        eventHandlers[event] = list
    end
    list[#list + 1] = handler
    return true
end

eventFrame:SetScript("OnEvent", function(_, event, ...)
    local list = eventHandlers[event]
    for i = 1, #list do
        list[i](...)
    end
end)

------------------------------------------------------------------------
-- Mensagens internas entre módulos: ns:On("STEP_CHANGED", fn) / ns:Fire(...)
--   INIT          dados salvos prontos (ADDON_LOADED)
--   LOGIN         jogador pronto (PLAYER_LOGIN)
--   STEP_CHANGED  o passo atual mudou
--   STEP_UPDATED  o progresso do passo atual pode ter mudado
--   NAMES_UPDATED um nome (quest/NPC) terminou de carregar
--   NAV_ARRIVED   o jogador chegou a um ponto de navegação
------------------------------------------------------------------------

local callbacks = {}

function ns:On(message, handler)
    local list = callbacks[message]
    if not list then
        list = {}
        callbacks[message] = list
    end
    list[#list + 1] = handler
end

function ns:Fire(message, ...)
    local list = callbacks[message]
    if not list then
        return
    end
    for i = 1, #list do
        list[i](...)
    end
end

------------------------------------------------------------------------
-- Dados salvos
------------------------------------------------------------------------

ns.DEFAULTS = {
    point = { "CENTER", "CENTER", 0, 200 },
    arrowPoint = { "CENTER", "CENTER", 0, 80 },
    shown = true,
    arrowShown = true,
    useTomTom = true,
    mapPin = true,
    followQuest = true, -- guiar até a missão que o jogador selecionar
    autoAccept = true,  -- aceitar sozinho as missões do guia
    autoTurnIn = true,  -- entregar sozinho as missões do guia
    autoAllQuests = false, -- automação também fora do guia
    minimapButton = true,
    itemButton = true,  -- botão do item de missão
    gearAdvisor = true, -- indicador de equipamento
    gearTooltip = true, -- linha "melhoria +X%" na dica do item
    bagArrows = true,   -- seta verde nas bolsas
    autoPickReward = false, -- escolher sozinho a melhor recompensa
    gearHardcore = false,   -- pesos do modo Hardcore
    routes = true,      -- sugerir voo/barco/zepelim quando for mais rápido
    pickupFlightPaths = true, -- ao chegar numa cidade, pegar o caminho de voo novo primeiro
    autoSellJunk = false, -- vender itens cinza ao abrir o vendedor
    autoRepair = false,   -- reparar ao abrir o vendedor (gasta ouro; avisa o valor)
    trainerHints = true, -- feitiços para treinar + botão "Treinar tudo"
    autoFly = false,
    corpseGuide = true, -- morto: seta até o corpo + aviso na tela    -- ao abrir o mapa de voo, voar sozinho para o destino da rota
    compactNotes = true, -- dicas do passo atrás do ícone "i"
    fadeOut = false,    -- janela transparente quando o mouse não está em cima
    fadeAlpha = 0.55,
    hideInCombat = false,
    flash = true,       -- brilho verde ao concluir um passo
    collapsed = false,  -- janela minimizada (só o título)
    scale = 1,
    itemButtonPoint ={ "CENTER", "CENTER", 0, -120 },
    minimapAngle = 225,
    debug = false,
    names = {},
    imported = {}, -- [id] = texto do guia importado ou gravado
}

local CHAR_DEFAULTS = {
    guideID = nil,
    stepIndex = 1,
    dungeons = {}, -- [código] = true: masmorras cujas missões entram no guia
    progress = {}, -- [id do guia] = passo: voltar a um guia continua de onde parou
    marked = {},   -- [id do guia] = { ["passo:objetivo"] = true }: marcados como feitos à mão
}

ns:RegisterEvent("ADDON_LOADED", function(loadedName)
    if loadedName ~= addonName then
        return
    end
    AzimuteDB = ns.ApplyDefaults(AzimuteDB or {}, ns.DEFAULTS)
    AzimuteCharDB = ns.ApplyDefaults(AzimuteCharDB or {}, CHAR_DEFAULTS)
    ns.db = AzimuteDB
    ns.char = AzimuteCharDB
    if ns.char.guideID and not ns.char.progress[ns.char.guideID] then
        ns.char.progress[ns.char.guideID] = ns.char.stepIndex -- dados de antes da v0.16
    end
    ns:Fire("INIT")
end)

ns:RegisterEvent("PLAYER_LOGIN", function()
    ns:Fire("LOGIN")
    ns.Print(L["LOADED_MSG"])
end)
