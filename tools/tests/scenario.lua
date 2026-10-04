-- Simula um jogador Aliança fazendo o guia de teste de Northshire.
local S, ns = STUB, NS
local Q = S.quest

local function check(cond, msg)
    if not cond then error("FALHOU: " .. msg, 2) end
    print("  ok: " .. msg)
end

local function UILines()
    local out = {}
    for _, line in ipairs(ns.UI.frame.lines) do
        if line._shown then out[#out + 1] = line._text end
    end
    return out
end

local function Show(label)
    print("--- " .. label .. " | passo " .. ns.Engine.stepIndex .. " | " .. tostring(ns.UI.frame.counter._text))
    for _, t in ipairs(UILines()) do print("      " .. t) end
end

local function MoveTo(x, y)
    S.player.x, S.player.y = x / 100, y / 100
    S.Tick()
end

print("\n== Carregamento ==")
S.FireEvent("ADDON_LOADED", "Azimute")
S.FireEvent("PLAYER_LOGIN")
S.RunTimers()
check(ns.isForever, "detecta o Forever pela interface 16001")
check(#ns.Registry:List() == 3, "3 guias de teste registrados")
check(ns.Engine.guide and ns.Engine.guide.id == "azimute.teste.northshire", "guia da Aliança escolhido automaticamente")
check(ns.Engine.guide.name == "Teste: Vale de Northshire", "nome do guia em pt-BR")
Show("login")
check(UILines()[3]:find("Missão #783"), "nome da quest ainda carregando -> fallback")

Q.titles[783] = "Uma Ameaça Interna"
S.FireEvent("QUEST_DATA_LOAD_RESULT", 783, true)
check(UILines()[3]:find("Uma Ameaça Interna"), "nome da quest atualizado após QUEST_DATA_LOAD_RESULT")
check(S.pin and S.pin.m == 1429, "pino no mapa definido no goto")

print("\n== Chegar no goto não conclui passo que tem quest ==")
MoveTo(48.15, 42.95)
check(ns.Engine.stepIndex == 1, "continua no passo 1 até aceitar a quest")

print("\n== Aceitar 783 ==")
Q.onQuest[783] = true
S.FireEvent("QUEST_ACCEPTED", 783)
S.RunTimers()
check(ns.Engine.stepIndex == 2, "avançou para o passo 2")
Show("passo 2")

print("\n== Entregar 783 e aceitar 7 ==")
Q.onQuest[783] = nil
S.FireEvent("QUEST_TURNED_IN", 783, 40, 0)
S.RunTimers()
check(ns.Engine.stepIndex == 2, "ainda falta aceitar a 7")
Q.onQuest[7] = true
Q.objectives[7] = { { text = "Verme Kobold morto: 0/10", finished = false } }
S.FireEvent("QUEST_ACCEPTED", 7)
S.RunTimers()
check(ns.Engine.stepIndex == 3, "avançou para o passo 3 (caminho + kobolds)")
Show("passo 3")
check(UILines()[1]:find("1/3"), "caminho começa no ponto 1/3")
check(UILines()[2]:find("Verme Kobold morto: 0/10"), "texto do objetivo vem do cliente (localizado)")

print("\n== Seguir o caminho em ordem ==")
local arrow = ns.Arrow.frame
MoveTo(48.2, 43.0)
check(arrow._shown, "seta visível (sem TomTom)")
check(arrow.distance._text:find("jardas"), "distância em jardas: " .. arrow.distance._text)
-- alvo (48.2,40.4) fica ao norte: facing 0 -> rotação ~0
check(math.abs(arrow.icon._rotation) < 0.01, "seta aponta para frente quando o alvo está ao norte")
S.player.facing = math.pi / 2 -- virado para oeste
S.Tick()
check(math.abs(arrow.icon._rotation + math.pi / 2) < 0.01, "virado para oeste, seta gira para a direita (-90°)")
S.player.facing = 0
MoveTo(48.2, 40.4)
check(UILines()[1]:find("2/3"), "chegou ao ponto 1 -> ponto 2/3")
MoveTo(47.6, 35.0)
check(UILines()[1]:find("2/3"), "modo seq: pular para o último ponto não conta")
MoveTo(48.0, 37.5)
MoveTo(47.6, 35.0)
check(ns.Engine.stepIndex == 3, "caminho concluído, mas ainda faltam os kobolds")

print("\n== Matar os kobolds ==")
Q.objectives[7][1] = { text = "Verme Kobold morto: 10/10", finished = true }
S.FireEvent("QUEST_LOG_UPDATE")
S.RunTimers()
check(ns.Engine.stepIndex == 4, "objetivo concluído -> passo 4")

print("\n== Voltar e avançar ==")
ns.Engine:Prev()
S.RunTimers()
check(ns.Engine.stepIndex == 3 and ns.Engine.hold, "voltar mantém o passo 3 mesmo concluído")
S.FireEvent("QUEST_LOG_UPDATE")
S.RunTimers()
check(ns.Engine.stepIndex == 3, "eventos não pulam o passo enquanto está em espera")
ns.Engine:Next()
S.RunTimers()
check(ns.Engine.stepIndex == 4, "avançar volta ao passo 4")

print("\n== Entregar 7 -> fim do guia ==")
Q.completed[7] = true
S.FireEvent("QUEST_TURNED_IN", 7, 100, 0)
S.RunTimers()
check(ns.Engine.stepIndex == 5, "guia concluído")
Show("fim")
check(UILines()[1] == "Guia concluído!", "mensagem de conclusão")
check(S.pin == nil, "pino removido sem alvo")
check(not arrow._shown, "seta escondida sem alvo")

print("\n== Progresso salvo ==")
check(AzimuteCharDB.guideID == "azimute.teste.northshire" and AzimuteCharDB.stepIndex == 5, "guia e passo salvos por personagem")
check(AzimuteDB.names.ptBR.quest[783] == "Uma Ameaça Interna", "nome da quest em cache por idioma")

print("\n== Parser: guias inválidos e avisos ==")
local P = ns.Parser
local g, problems = P:Parse("step\n accept 1")
check(g == nil and problems[1]:find("#id"), "sem #id -> rejeitado")
g = P:Parse("#id x\n")
check(g == nil, "sem passos -> rejeitado")
g, problems = P:Parse("#id x\nstep\n accept abc\n voar 1\n goto 1429 150,20\n path seq 1429\n kill 6 |q 7\n note " .. string.rep("a", 400))
check(g ~= nil and #g.steps == 1, "erros nas linhas não derrubam o guia")
check(#problems == 6, "6 problemas reportados (" .. #problems .. ")")
for _, p in ipairs(problems) do print("      " .. p) end
check(#g.steps[1].goals == 1, "só a linha válida (kill) virou objetivo")
g = P:Parse("#id x\n#format 99\nstep\n note oi")
check(g ~= nil, "formato mais novo ainda carrega (com aviso)")
g = P:Parse(string.rep("a", 600000))
check(g == nil, "texto grande demais -> rejeitado")
g = P:Parse({})
check(g == nil, "valor que não é texto -> rejeitado")
check(ns.Registry:Register('#id z\nstep\n note os.exit() -- loadstring("x")', "teste") == true,
    "código Lua no guia vira só texto de nota")
check(ns.Registry:Get("z").steps[1].goals[1].text == "os.exit()", "nota guardada como texto, nada executado")

print("\n== Condições ==")
ns.Registry:Register([[
#id cond
step
    note so guerreiro |only Warrior
    note so mago |only Mage
step
    only Horde
    note passo da horda
step
    note final
]], "teste")
ns.Engine:LoadGuide("cond")
S.RunTimers()
local lines = UILines()
check(#lines == 1 and lines[1]:find("so guerreiro"), "objetivo só de mago escondido para guerreiro")
ns.Engine:Next()
S.RunTimers()
check(ns.Engine.stepIndex == 3, "passo só da Horda pulado para Aliança")

print("\n== Renegado com o guia de Durotar salvo (bug do print) ==")
S.player.faction, S.player.race, S.player.map = "Horde", "Scourge", 1420
AzimuteCharDB.guideID, AzimuteCharDB.guideManual = "azimute.teste.valeprovacoes", false
ns.Engine:Start()
S.RunTimers()
check(ns.Engine.guide.id == "azimute.teste.deathknell", "guia automático errado é trocado pelo de Deathknell")
check(ns.Arrow.frame.distance._text:find("jardas"), "seta com distância no mesmo continente")

print("\n== Guia escolhido manualmente é mantido ==")
SlashCmdList.AZIMUTE("carregar azimute.teste.valeprovacoes")
S.RunTimers()
check(AzimuteCharDB.guideManual == true, "marcado como escolha manual")
S.Tick()
local zeppelin = false
for _, l in ipairs(UILines()) do if l:find("Pegue o zepelim para") then zeppelin = true end end
check(zeppelin, "outro continente: sugere o zepelim (Undercity -> Orgrimmar)")
AzimuteDB.routes = false
ns.Router.lastPlanPos = nil
S.Tick()
check(ns.Arrow.frame.distance._text == "Em outro continente", "sem rotas: mensagem de outro continente: " .. ns.Arrow.frame.distance._text)
AzimuteDB.routes = true
ns.Engine:Start()
S.RunTimers()
check(ns.Engine.guide.id == "azimute.teste.valeprovacoes", "relogar mantém o guia escolhido")

print("\n== /azimute ir ==")
S.player.x, S.player.y = 0.50, 0.50
SlashCmdList.AZIMUTE("ir 50 45")
S.Tick()
check(ns.Arrow.frame.distance._text == "50 jardas", "ponto de teste 50 jardas ao norte: " .. ns.Arrow.frame.distance._text)
check(math.abs(ns.Arrow.frame.icon._rotation) < 0.01, "seta aponta para frente (norte)")
SlashCmdList.AZIMUTE("ir 55 50")
S.Tick()
check(math.abs(ns.Arrow.frame.icon._rotation + math.pi / 2) < 0.01, "ponto a leste -> seta para a direita")
S.player.x = 0.549
S.Tick()
check(ns.Nav.manual == nil, "chegou ao ponto de teste (destino avulso termina)")
check(ns.Nav:CurrentTarget().mapID == 1411, "volta a mostrar o alvo do guia (Durotar)")
SlashCmdList.AZIMUTE("ir abc")
check(S.printed[#S.printed]:find("/azimute ir"), "uso inválido mostra ajuda")

print("\n== Importar / exportar ==")
local IO = ns.GuideIO
local guideText = "#id com.teste\n#name Guia da Comunidade\n#version 2\nstep\n    note primeiro passo\nstep\n    objective 364/1"
local ok, g = IO.Import(guideText)
check(ok and g.id == "com.teste", "importa texto puro")
check(AzimuteDB.imported["com.teste"] == guideText, "guia importado salvo nos dados do addon")
local code = IO.Export("com.teste", true)
check(code:sub(1, 5) == "!AZ1!", "exporta código compactado: " .. code:sub(1, 20) .. "...")
check(IO.Decode(code) == guideText, "código volta ao texto original")
ok = IO.Import(code)
check(ok, "importa o código compactado")
ok, g = IO.Import("!AZ1!lixo")
check(not ok and g == "Código inválido ou corrompido.", "código corrompido é recusado")
ok, g = IO.Import("step\n note sem id")
check(not ok, "guia sem #id é recusado: " .. tostring(g))
check(IO.Export("com.teste", false) == guideText, "exportar texto puro")
check(not IO.Remove("azimute.teste.northshire"), "guia embutido não pode ser removido")
ns.Engine:LoadGuide("com.teste", 1, true)
S.RunTimers()
check(IO.Remove("com.teste") and ns.Engine.guide == nil, "remover guia carregado descarrega o guia")
check(ns.Registry:Get("com.teste") == nil and AzimuteDB.imported["com.teste"] == nil, "removido do registro e dos dados")

print("\n== Objetivo genérico ==")
ok = IO.Import(guideText)
ns.Engine:LoadGuide("com.teste", 2, true)
S.RunTimers()
Q.objectives[364] = { { text = "Zumbi Desmiolado morto: 2/8", finished = false } }
S.FireEvent("QUEST_LOG_UPDATE"); S.RunTimers()
check(UILines()[1]:find("Zumbi Desmiolado morto: 2/8"), "objective mostra o texto do cliente")
Q.objectives[364] = nil
S.FireEvent("QUEST_LOG_UPDATE"); S.RunTimers()
check(UILines()[1]:find("Objetivo 1 de"), "sem dados do cliente usa texto padrão: " .. UILines()[1])

print("\n== Gravador de rotas ==")
local R = ns.Recorder
S.player.map, S.player.x, S.player.y = 1421, 0.40, 0.40
SlashCmdList.AZIMUTE("gravar Pinhaprata 10-12")
check(R:IsActive(), "gravação iniciada")
SlashCmdList.AZIMUTE("gravar")
check(S.printed[#S.printed]:find("Já existe"), "não inicia duas gravações")
-- fala com NPC 1515 e aceita duas missões com ele
S.npcGUID = "Creature-0-3783-0-18-1515-0000ABCD"
S.player.x, S.player.y = 0.4321, 0.4012
S.FireEvent("QUEST_DETAIL")
Q.onQuest[500] = true; S.questLog = { 500 }
Q.objectives[500] = { { numFulfilled = 0, finished = false }, { numFulfilled = 0, finished = false } }
S.FireEvent("QUEST_ACCEPTED", 500); S.RunTimers()
S.FireEvent("QUEST_DETAIL")
Q.onQuest[501] = true; S.questLog = { 500, 501 }
S.FireEvent("QUEST_ACCEPTED", 501); S.RunTimers()
-- anda marcando o caminho
S.npcGUID = nil
S.player.x, S.player.y = 0.45, 0.38
SlashCmdList.AZIMUTE("ponto")
S.player.x, S.player.y = 0.48, 0.35
SlashCmdList.AZIMUTE("ponto")
-- primeiro progresso do objetivo 1 em 50,33; conclui objetivos 1 e 2 mais adiante
S.player.x, S.player.y = 0.50, 0.33
Q.objectives[500][1] = { numFulfilled = 1, finished = false }
S.FireEvent("QUEST_LOG_UPDATE"); S.RunTimers()
S.player.x, S.player.y = 0.52, 0.30
Q.objectives[500][1] = { numFulfilled = 6, finished = true }
Q.objectives[500][2] = { numFulfilled = 3, finished = true }
S.FireEvent("QUEST_LOG_UPDATE"); S.RunTimers()
SlashCmdList.AZIMUTE("nota Cuidado com o -- elite |q 1/1")
-- /reload no meio da gravação
S.FireEvent("PLAYER_LOGIN"); S.RunTimers()
check(R:IsActive(), "gravação sobrevive ao /reload")
-- volta e entrega ao mesmo NPC
S.time = S.time + 300
S.npcGUID = "Creature-0-3783-0-18-1515-0000ABCD"
S.player.x, S.player.y = 0.4321, 0.4012
S.FireEvent("QUEST_COMPLETE")
Q.completed[500] = true; S.questLog = { 501 }
S.FireEvent("QUEST_TURNED_IN", 500, 100, 0); S.RunTimers()
SlashCmdList.AZIMUTE("parar")
check(not R:IsActive(), "gravação terminada")
local exported = ns.ImportFrame.frame.edit._text
print(exported)
check(exported:find("goto 1421 43.21,40.12\n    talk 1515\n    accept 500\n    accept 501", 1, true), "mesmo NPC agrupa as duas missões num passo")
check(exported:find("path seq 1421 45.00,38.00 48.00,35.00\n    goto 1421 50.00,33.00\n    objective 500/1\n    objective 500/2", 1, true), "caminho marcado + local do primeiro progresso + objetivos")
check(exported:find("note Cuidado com o - elite q 1/1", 1, true), "nota sem | nem -- (não quebra o formato)")
check(exported:find("talk 1515\n    turnin 500", 1, true), "entrega com o NPC")
local rec = ns.Registry:Get("rec.jeeff.202609281200")
check(rec and #rec.steps == 3, "gravação vira guia importado com 3 passos")
check(rec.name == "Pinhaprata 10-12", "nome da gravação")

print("\n== Missão selecionada (fora do guia) ==")
local F = ns.Focus
S.time = S.time + 100
S.player.map, S.player.x, S.player.y = 1421, 0.40, 0.40
Q.onQuest[600] = true
Q.titles[600] = "Receita mortal"
Q.objectives[600] = { { text = "Sangue de Pateante: 0/6", finished = false } }
S.questsOnMap[1421] = { { questID = 600, x = 0.60, y = 0.50 } }
S.superTracked = 600
S.FireEvent("SUPER_TRACKING_CHANGED"); S.RunTimers()
check(F:IsActive() and F.questID == 600, "clicar na missão ativa o modo missão")
local target = ns.Nav:CurrentTarget()
check(target and target.mapID == 1421 and target.x == 0.60, "alvo = marcador da Blizzard da missão")
check(ns.UI.frame.title._text == "Missão: Receita mortal", "janela mostra a missão: " .. ns.UI.frame.title._text)
Show("foco")
check(UILines()[2]:find("Sangue de Pateante: 0/6"), "objetivos da missão aparecem na janela")
check(ns.UI.frame.focusClose._shown and not ns.UI.frame.nextButton._shown, "botão X aparece, setas somem")
Q.objectives[600][1] = { text = "Sangue de Pateante: 6/6", finished = true }
Q.ready[600] = true
S.questsOnMap[1421] = { { questID = 600, x = 0.45, y = 0.42 } }
S.FireEvent("QUEST_LOG_UPDATE"); S.RunTimers()
target = ns.Nav:CurrentTarget()
check(target and target.x == 0.45, "marcador atualizado para a entrega")
check(UILines()[#UILines() - 1]:find("Entregue"), "linha de entrega aparece quando pronta")
check(UILines()[#UILines()]:find("Voltar ao guia"), "linha clicável 'Voltar ao guia' no fim")
Q.completed[600] = true; Q.onQuest[600] = nil
S.FireEvent("QUEST_TURNED_IN", 600, 0, 0); S.RunTimers()
check(not F:IsActive(), "entregar a missão volta ao guia")
check(S.printed[#S.printed - 1]:find("voltando ao guia"), "avisa no chat")

print("\n== Missão selecionada que está no guia usa o caminho do guia ==")
S.player.map = 1420
ns.Engine:LoadGuide("azimute.teste.deathknell", 1, true)
S.RunTimers()
Q.onQuest[364] = true
Q.objectives[364] = { { text = "Zumbi: 0/8", finished = false }, { text = "Zumbi Miserável: 0/8", finished = false } }
S.time = S.time + 100
S.superTracked = 364
S.FireEvent("SUPER_TRACKING_CHANGED"); S.RunTimers()
check(F:IsActive() and F.signature == "step:3", "usa o passo 3 do guia (caminho curado)")
target = ns.Nav:CurrentTarget()
check(target and target.goal.type == "path", "alvo é o path do guia, não o marcador")
check(ns.Engine.stepIndex == 1, "o guia não perde o lugar")
SlashCmdList.AZIMUTE("guia")
check(not F:IsActive() and ns.Nav:CurrentTarget().mapID == 1420 and math.abs(ns.Nav:CurrentTarget().x - 0.302) < 1e-9, "/azimute guia volta ao passo 1")

print("\n== Filtros ==")
S.superTracked = 0
Q.onQuest[700] = true
S.FireEvent("QUEST_ACCEPTED", 700)
S.superTracked = 700
S.FireEvent("SUPER_TRACKING_CHANGED"); S.RunTimers()
check(not F:IsActive(), "rastreamento automático logo após aceitar é ignorado")
S.time = S.time + 10
S.superTracked = 363
Q.onQuest[363] = true
S.FireEvent("SUPER_TRACKING_CHANGED"); S.RunTimers()
check(not F:IsActive(), "missão do passo atual não troca de modo")
SlashCmdList.AZIMUTE("seguir")
S.superTracked = 700
S.FireEvent("SUPER_TRACKING_CHANGED"); S.RunTimers()
check(not F:IsActive(), "com 'seguir' desligado, clicar não muda nada")
S.questsOnMap[1420] = { { questID = 700, x = 0.5, y = 0.5 } }
SlashCmdList.AZIMUTE("missao")
check(F:IsActive() and F.questID == 700, "/azimute missao funciona mesmo com 'seguir' desligado")
SlashCmdList.AZIMUTE("missao 99999")
check(S.printed[#S.printed]:find("Nenhuma missão"), "missão fora do diário é recusada")

print("\n== Linha no mapa ==")
S.player.map, S.player.x, S.player.y = 1421, 0.437, 0.412
S.displayMap = 1421
Q.onQuest[800] = true
S.questsOnMap[1421] = { { questID = 800, x = 0.534, y = 0.126 } }
S.time = S.time + 100
ns.Focus:Start(800)
S.RunTimers()
S.Tick()
ns.MapLines:Refresh()
local blue
for _, f in ipairs(S.frames) do
    if f._kind == "Line" and f._shown and f._start then blue = f end
end
check(blue ~= nil, "linha desenhada do jogador até o alvo")
check(math.abs(blue._start[1] - 437) < 1 and math.abs(blue._start[2] + 0.412 * 667) < 1, "começa na posição do jogador")
check(math.abs(blue._end[1] - 534) < 1 and math.abs(blue._end[2] + 0.126 * 667) < 1, "termina no marcador da missão")
SlashCmdList.AZIMUTE("mapa")

print("\n== Camadas do mapa sobem depois de abrir ==")
S.mapTiles = S.NewFrame("MapLayer")
S.mapTiles._level = 2500 -- camada da Blizzard acima do nosso nível inicial
ns.MapLines:Refresh()
local holderLevel
for _, f in ipairs(S.frames) do
    local l = rawget(f, "_level"); if f._kind == "Frame" and l and l > 2500 then holderLevel = l end
end
check(holderLevel == 2510, "linhas sobem para acima da camada mais alta (" .. tostring(holderLevel) .. ")")
SlashCmdList.AZIMUTE("mapa")

print("\n== Formato novo: mundo, negação, coleta, treino, vendedor, condições ==")
if ns.Focus:IsActive() then ns.Focus:Stop() end
S.player.faction, S.player.race = "Horde", "Scourge"
ns.Engine:Start(); S.RunTimers()
local ok2 = ns.Registry:Register([==[
#id novo.formato
#only Horde
step
    goto 1420 @-482,-429
    note-enUS Talk to Mordo
    note-ptBR Fale com o Mordo
    note dica em todos os idiomas
    accept 900
step
    only !Warrior
    note passo que guerreiro pula
step
    only !Scourge
    note passo que renegado pula
step
    collect 159 10
    train 1459 |opt
step
    vendor
step
    ifonquest 901
    note só se estiver na missão 901
step
    zone 1421
]==], "teste", true, true)
check(ok2 and ns.Registry:Peek("novo.formato").lazy, "registrado sob demanda (só cabeçalho)")
ns.Engine:LoadGuide("novo.formato", 1, true); S.RunTimers()
local g = ns.Engine.guide
check(not g.lazy and #g.steps == 7, "lido por completo ao carregar")
local goto1 = g.steps[1].goals[1]
check(math.abs(goto1.x - 0.482) < 1e-9 and math.abs(goto1.y - 0.429) < 1e-9, ("coordenada do mundo convertida: %.3f, %.3f"):format(goto1.x, goto1.y))
AzimuteDB.compactNotes = false
ns.UI:Refresh()
local lines = UILines()
check(#lines == 4, "nota enUS escondida no ptBR (" .. #lines .. " linhas)")
check(lines[2]:find("Fale com o Mordo") and lines[3]:find("dica em todos"), "nota ptBR e nota geral aparecem")
AzimuteDB.compactNotes = true
ns.UI:Refresh()
lines = UILines()
check(#lines == 3 and lines[2]:find("Fale com o Mordo") and #ns.UI.hiddenNotes == 1 and ns.UI.frame.infoButton._shown,
    "modo compacto: instrução principal visível, a dica extra atrás do ícone i (" .. #lines .. " linhas)")
check(ns.UI.frame.rows[1].map == 1420, "linha do 'vá até' abre o mapa ao clicar")
AzimuteDB.collapsed = true
ns.UI:Refresh()
check(#UILines() == 0, "janela minimizada: só o título")
AzimuteDB.collapsed = false
ns.UI:Refresh()
Q.onQuest[900] = true
S.FireEvent("QUEST_ACCEPTED", 900); S.RunTimers()
check(ns.Engine.stepIndex == 4, "pulou o passo do Guerreiro? não: pulou o do Renegado (negação) -> passo " .. ns.Engine.stepIndex)
check(UILines()[1]:find("Obtenha 10 x") and UILines()[2]:find("Treine") and UILines()[2]:find("opcional"), "coleta + treino opcional na janela")
S.items[159] = 10
S.FireEvent("BAG_UPDATE_DELAYED"); S.RunTimers()
check(ns.Engine.stepIndex == 5, "10 itens na bolsa conclui (treino opcional não segura)")
S.player.map = 1420
S.FireEvent("MERCHANT_CLOSED"); S.RunTimers()
check(ns.Engine.stepIndex == 7, "vendedor concluído; passo 'ifonquest 901' pulado")
S.player.map = 1421
S.FireEvent("ZONE_CHANGED_NEW_AREA"); S.RunTimers()
check(ns.Engine.guide.id ~= "novo.formato" or ns.Engine.stepIndex == 8, "entrar na zona conclui o 'zone' (e o guia termina)")

print("\n== Seletor de guias ==")
S.player.level = 1
ns.Engine:Start(); S.RunTimers()
ns.GuidePicker:Toggle()
local rows = {}
for _, row in ipairs(ns.GuidePicker.frame.rows) do
    if row._shown then rows[#rows + 1] = row.text._text end
end
for _, r in ipairs(rows) do print("      " .. r) end
check(#rows > 0, "seletor lista os guias (" .. #rows .. " linhas)")
local hasNovo = false
for _, r in ipairs(rows) do if r:find("novo.formato") then hasNovo = true end end
check(hasNovo, "guia registrado aparece no seletor")

print("\n== Navegação mostra passos concluídos ==")
S.player.faction, S.player.race = "Horde", "Scourge"
ns.Registry:Register([==[
#id nav.teste
step
    accept 1001
step
    accept 1002
step
    only Mage
    accept 1003
step
    accept 1004 |noauto
step
    turnin 1001
    turnin 1005 |reward 2
]==], "teste", true)
Q.onQuest[1001], Q.onQuest[1002], Q.onQuest[1004] = nil, true, nil
ns.Engine:LoadGuide("nav.teste", 1, true); S.RunTimers()
check(ns.Engine.stepIndex == 1, "começa no passo 1 (pendente)")
ns.Engine:Next(); S.RunTimers()
check(ns.Engine.stepIndex == 4, "pular o passo atual também pula os já feitos (2) e o de outra classe (3)")
check(not UILines()[1]:find("Passo já concluído"), "passo pendente não mostra o aviso")
-- revisão: voltar com ◀ mostra o passo feito; ▶ anda de um em um
ns.Engine:Prev(); S.RunTimers()
check(ns.Engine.stepIndex == 2, "voltar mostra o passo 2 mesmo já concluído")
check(UILines()[1]:find("Passo já concluído"), "aviso de passo concluído na janela")
S.FireEvent("QUEST_LOG_UPDATE"); S.RunTimers()
check(ns.Engine.stepIndex == 2, "fica no passo revisado até o jogador avançar")
ns.Engine:Next(); S.RunTimers()
check(ns.Engine.stepIndex == 4, "na revisão, avançar vai ao próximo que vale (pula o de Mago)")
Q.onQuest[1004] = true
S.FireEvent("QUEST_ACCEPTED", 1004); S.RunTimers()
check(ns.Engine.stepIndex == 5, "passo pendente volta a avançar sozinho quando concluído")

print("\n== Aceitar/entregar automaticamente ==")
ns.Engine:SetStep(1, false); S.RunTimers()
check(ns.Engine.stepIndex == 1, "de volta ao passo 1")
S.actions = {}
S.npc.questID = 1001
S.FireEvent("QUEST_DETAIL")
check(S.actions[1] == "accept:1001", "aceita a missão do passo atual")
S.actions = {}
S.npc.questID = 9999
S.FireEvent("QUEST_DETAIL")
check(#S.actions == 0, "não aceita missão fora do guia")
S.npc.questID = 1004
S.FireEvent("QUEST_DETAIL")
check(#S.actions == 0, "não aceita escolta marcada com |noauto")
S.npc.shift, S.npc.questID = true, 1001
S.FireEvent("QUEST_DETAIL")
check(#S.actions == 0, "SHIFT desliga a automação")
S.npc.shift = false
AzimuteDB.autoAllQuests = true
S.npc.questID = 9999
S.FireEvent("QUEST_DETAIL")
check(S.actions[1] == "accept:9999", "opção 'todas as missões' aceita qualquer uma")
AzimuteDB.autoAllQuests = false
-- gossip: entrega antes de aceitar
S.actions = {}
S.npc.active = { { questID = 1001, isComplete = true } }
S.npc.available = { { questID = 1002 } }
ns.Engine:SetStep(5, false)
S.FireEvent("GOSSIP_SHOW")
check(S.actions[1] == "selectActive:1001", "no diálogo, entrega primeiro")
-- recompensa
S.actions = {}
S.npc.questID, S.npc.completable = 1001, true
S.FireEvent("QUEST_PROGRESS")
check(S.actions[1] == "complete:1001", "completa na tela de progresso")
S.npc.choices = 1
S.FireEvent("QUEST_COMPLETE")
check(S.actions[2] == "reward:1", "uma recompensa: pega sozinho")
S.npc.choices = 3
S.FireEvent("QUEST_COMPLETE")
check(#S.actions == 2 and S.printed[#S.printed]:find("Escolha sua recompensa"), "várias recompensas: o jogador escolhe")
S.npc.questID = 1005
S.FireEvent("QUEST_COMPLETE")
check(S.actions[3] == "reward:2", "recompensa indicada pelo guia (|reward 2)")
AzimuteDB.autoTurnIn = false
S.npc.questID, S.npc.choices = 1001, 1
S.FireEvent("QUEST_COMPLETE")
check(#S.actions == 3, "opção desligada: não entrega")
AzimuteDB.autoTurnIn = true

print("\n== Opções e botão do minimapa ==")
-- Settings/Minimap falsos só existem a partir daqui: recria como no INIT.
ns.Options:Init()
ns.MinimapButton:Create()
check(S.settingsCategory and S.settingsCategory.name == "Azimute", "categoria Azimute registrada nas opções do jogo")
local count, dungeonCount = 0, 0
for key in pairs(S.settings) do
    if key:match("^%u+$") then dungeonCount = dungeonCount + 1 else count = count + 1 end
end
check(count == 30, "30 opções registradas (" .. count .. ")")
check(S.settings.autoSellJunk and S.settings.autoRepair, "opções de vender lixo e reparar registradas")
check(S.settings.autoSellJunk.name == "Vender itens cinza automaticamente" and S.settings.autoSellJunk.default == false,
    "vender lixo: rótulo em pt-BR e desligado por padrão")
check(dungeonCount >= 10, "opções de masmorra registradas (" .. dungeonCount .. ")")
check(S.settings.autoAccept.name == "Aceitar missões automaticamente", "rótulos em pt-BR")
S.settings.minimapButton:SetValue(false)
check(AzimuteDB.minimapButton == false and not ns.MinimapButton.button._shown, "desligar o botão do minimapa esconde na hora")
S.settings.shown:SetValue(false)
check(not ns.UI.frame._shown, "desligar a janela esconde na hora")
S.settings.shown:SetValue(true)
ns.MinimapButton.button._scripts.OnClick(ns.MinimapButton.button, "RightButton")
check(S.openedCategory == 77, "clique direito no botão abre as opções")
ns.MinimapButton.button._scripts.OnClick(ns.MinimapButton.button, "LeftButton")
check(AzimuteDB.shown == false, "clique esquerdo esconde a janela")
Azimute_OnAddonCompartmentClick(nil, "LeftButton")
check(AzimuteDB.shown == true, "menu de addons do jogo também funciona")

AzimuteDB.hideInCombat = true
S.FireEvent("PLAYER_REGEN_DISABLED")
check(not ns.UI.frame._shown, "esconder em combate: some ao entrar em combate")
S.FireEvent("PLAYER_REGEN_ENABLED")
check(ns.UI.frame._shown, "volta ao sair do combate")
AzimuteDB.hideInCombat = false
AzimuteDB.scale = 1.2
ns.UI:ApplyScale()
check(AzimuteDB.scale == 1.2, "escala aplicada sem erro")
AzimuteDB.scale = 1

print("\n== Coleta ligada a missão já entregue ==")
ns.Registry:Register([==[
#id coleta.missao
step
    collect 730 3 |quest 91920
    collect 3164 3 |quest 429 |opt
step
    note fim
]==], "teste", true)
S.items[730] = 0
ns.Engine:LoadGuide("coleta.missao", 1, true); S.RunTimers()
check(ns.Engine.stepIndex == 1, "sem os itens e sem a missão feita: fica no passo")
Q.completed[91920] = true
S.FireEvent("QUEST_LOG_UPDATE"); S.RunTimers()
check(ns.Engine.stepIndex == 2, "missão já entregue: a coleta conta como feita")

print("\n== Nome com várias zonas e próximo guia automático ==")
ns.Registry:Register([==[
#id zonas.a
#faction Horde
#levels 20-23
#zones 1442 1413
#suffix JJ
#suffix-ptBR JJ-pt
step
    accept 2001
]==], "teste", true)
check(ns.Registry.DisplayName(ns.Registry:Peek("zonas.a")) == "20-23 Mapa1442 / Mapa1413 JJ-pt", "nome montado: " .. ns.Registry.DisplayName(ns.Registry:Peek("zonas.a")))
ns.Registry:Register([==[
#id zonas.b
#faction Horde
#levels 23-26
#zone 1424
step
    accept 2002
]==], "teste", true)
S.player.level = 23
ns.Engine:LoadGuide("zonas.a", 1, true); S.RunTimers()
Q.onQuest[2001] = true
S.FireEvent("QUEST_ACCEPTED", 2001); S.RunTimers()
check(ns.Engine.guide.id == "zonas.b", "guia terminou sem #next: carrega o melhor para o nível (" .. ns.Engine.guide.id .. ")")
check(S.printed[#S.printed - 1]:find("Próximo guia para o seu nível") or S.printed[#S.printed - 2]:find("Próximo guia"), "avisa no chat")
-- guia escolhido sozinho já está todo feito: não pode ficar alternando
Q.onQuest[2002] = true
ns.Engine.finishedGuides = nil
local loads = 0
local original = ns.Engine.LoadGuide
ns.Engine.LoadGuide = function(self, ...) loads = loads + 1; return original(self, ...) end
ns.Engine:LoadGuide("zonas.b", 1, true)
for _ = 1, 30 do S.RunTimers() end
ns.Engine.LoadGuide = original
check(loads < 60, "não fica trocando de guia sem parar (" .. loads .. " carregamentos)")

print("\n== Botão do item de missão ==")
local IB = ns.ItemButton
ns.Registry:Register([==[
#id item.teste
step
    objective 3001/1
step
    use 6948
]==], "teste", true)
Q.onQuest[3001] = true
Q.objectives[3001] = { { text = "Usar o item: 0/1", finished = false } }
S.specialItems[3001] = 5000
S.items[5000] = 1
ns.Engine:LoadGuide("item.teste", 1, true); S.RunTimers()
check(IB.button._shown and IB.button:GetAttribute("item") == "item:5000", "item de missão do diário aparece no botão")
check(IB.button.icon and true, "ícone definido")
S.combat = true
Q.objectives[3001][1] = { text = "Usar o item: 1/1", finished = true }
S.FireEvent("QUEST_LOG_UPDATE"); S.RunTimers()
check(ns.Engine.stepIndex == 2 and IB.pending and IB.button:GetAttribute("item") == "item:5000", "em combate o botão não muda (fica pendente)")
S.items[6948] = 1
S.combat = false
S.FireEvent("PLAYER_REGEN_ENABLED")
check(IB.button:GetAttribute("item") == "item:6948", "fim do combate: botão mostra o item do 'use'")
S.items[6948] = 0
S.FireEvent("BAG_UPDATE_DELAYED"); S.RunTimers()
check(not IB.button._shown, "sem o item na bolsa: botão some")

print("\n== Indicador de equipamento ==")
local G = ns.Gear
AzimuteAPI.RegisterStatWeights({
    ["Warrior Speedrun 20-29"] = { Class = "Warrior", Spec = "Arms", Kind = "Speedrun", MIN_LEVEL = 20, MAX_LEVEL = 29,
        ITEM_MOD_STRENGTH_SHORT = 2, ITEM_MOD_STAMINA_SHORT = 1, ITEM_MOD_INTELLECT_SHORT = 0,
        ITEM_MOD_DAMAGE_PER_SECOND_SHORT = 10, RESISTANCE0_NAME = 0.05 },
})
S.player.level = 23
ns.Engine.player.level = 23
check(G:Profile() and G:Profile().MIN_LEVEL == 20, "perfil do pacote (Guerreiro 20-29) ganha dos pesos próprios")
S.itemData["peito-atual"] = { equipLoc = "INVTYPE_CHEST", subclassID = 3, stats = { ITEM_MOD_STRENGTH_SHORT = 5, RESISTANCE0_NAME = 100 } }
S.itemData["peito-forte"] = { equipLoc = "INVTYPE_CHEST", subclassID = 3, stats = { ITEM_MOD_STRENGTH_SHORT = 9, RESISTANCE0_NAME = 120 } }
S.itemData["peito-int"]   = { equipLoc = "INVTYPE_CHEST", subclassID = 1, stats = { ITEM_MOD_INTELLECT_SHORT = 20 } }
S.itemData["peito-placa"] = { equipLoc = "INVTYPE_CHEST", subclassID = 4, stats = { ITEM_MOD_STRENGTH_SHORT = 30 } }
S.itemData["peito-60"]    = { equipLoc = "INVTYPE_CHEST", minLevel = 60, subclassID = 3, stats = { ITEM_MOD_STRENGTH_SHORT = 50 } }
S.equipped[5] = "peito-atual"
local up, pct = G:IsUpgrade("peito-forte")
check(up and math.floor(pct + 0.5) == 60, ("peito com mais Força é melhoria (+%.0f%%)"):format(pct or 0))
check(not G:IsUpgrade("peito-int"), "peito de Intelecto não é melhoria para Guerreiro")
check(not G:IsUpgrade("peito-placa"), "placa antes do nível 40 não pode ser usada")
check(not G:IsUpgrade("peito-60"), "item de nível acima do personagem é ignorado")
-- arma de duas mãos contra principal + secundária
S.itemData["espada1m"] = { equipLoc = "INVTYPE_WEAPON", classID = 2, stats = { ITEM_MOD_DAMAGE_PER_SECOND_SHORT = 8 } }
S.itemData["escudo"]   = { equipLoc = "INVTYPE_SHIELD", subclassID = 6, stats = { ITEM_MOD_STAMINA_SHORT = 5, RESISTANCE0_NAME = 300 } }
S.itemData["machado2m"] = { equipLoc = "INVTYPE_2HWEAPON", classID = 2, stats = { ITEM_MOD_DAMAGE_PER_SECOND_SHORT = 10, ITEM_MOD_STRENGTH_SHORT = 5 } }
S.equipped[16], S.equipped[17] = "espada1m", "escudo"
local diff = G:Compare("machado2m")
check(math.abs(diff - (110 - (80 + 20))) < 0.01, "2 mãos comparada com principal + escudo (diferença " .. diff .. ")")
-- dano mágico: o jogo chama de ITEM_MOD_SPELL_POWER (1 a menos que a dica); os pesos, de STAT_SPELLDAMAGE
local caster = { STAT_SPELLDAMAGE = 1.0, ITEM_MOD_STAMINA_SHORT = 0.5, RESISTANCE0_NAME = 0.01 }
S.itemData["cinto-magia"] = { equipLoc = "INVTYPE_WAIST", stats = { ITEM_MOD_SPELL_POWER = 3, RESISTANCE0_NAME = 39 } }
S.itemData["cinto-vigor"] = { equipLoc = "INVTYPE_WAIST", stats = { ITEM_MOD_STAMINA_SHORT = 3, RESISTANCE0_NAME = 16 } }
S.itemData["cinto-velho"] = { equipLoc = "INVTYPE_WAIST", stats = { ITEM_MOD_SPELL_DAMAGE_DONE = 3, ITEM_MOD_SPELL_POWER = 3 } }
check(math.abs(G:Score("cinto-magia", caster) - (4 + 0.39)) < 0.001, "+4 de dano mágico conta (3 do jogo + 1): " .. G:Score("cinto-magia", caster))
check(G:Score("cinto-magia", caster) > G:Score("cinto-vigor", caster), "cinto de magia vale mais que o de +3 vigor para quem usa magia")
check(math.abs(G:Score("cinto-velho", caster) - 4) < 0.001, "os dois nomes do mesmo atributo não somam em dobro")

print("\n== Melhor recompensa de missão ==")
S.questChoices = { "peito-int", "peito-forte", "peito-placa" }
S.npc.choices, S.npc.questID = 3, 1001
check(G:BestQuestReward() == 2, "melhor recompensa é a 2 (peito com mais Força)")
S.printed = {}
S.actions = {}
AzimuteDB.autoPickReward = false
ns.Engine:LoadGuide("nav.teste", 5, true); S.RunTimers()
S.FireEvent("QUEST_COMPLETE")
local printedBest = false
for _, l in ipairs(S.printed) do if l:find("Melhor recompensa para você: peito%-forte") then printedBest = true end end
check(printedBest, "avisa no chat qual é a melhor recompensa")
check(#S.actions == 0, "sem a opção, não escolhe sozinho")
AzimuteDB.autoPickReward = true
S.FireEvent("QUEST_COMPLETE")
check(S.actions[1] == "reward:2", "com a opção, escolhe sozinho a melhor")
AzimuteDB.autoPickReward = false
SlashCmdList.AZIMUTE("spec")
check(S.printed[#S.printed]:find("Especializações"), "/azimute spec lista as especializações")

print("\n== Rotas: voar quando for mais rápido ==")
if ns.Focus:IsActive() then ns.Focus:Stop() end
S.player.faction, S.player.race, S.player.level = "Horde", "Scourge", 20
ns.Engine.player.level = 20
AzimuteAPI.RegisterFlightTimes({ Horde = { [1] = { [2] = 30, name = "A" }, [2] = { [1] = 30, name = "B" } } })
S.taxi = {
    { nodeID = 1, name = "Pouso A", map = 1415, x = 0.12, y = 0.12, slot = 1 },
    { nodeID = 2, name = "Pouso B", map = 1415, x = 0.88, y = 0.88, slot = 2 },
}
S.FireEvent("PLAYER_ENTERING_WORLD"); S.RunTimers()
S.FireEvent("TAXIMAP_OPENED") -- aprende os dois voos
check(AzimuteCharDB.knownTaxi[1] and AzimuteCharDB.knownTaxi[2], "voos conhecidos anotados ao abrir o mapa de voo")
ns.Registry:Register([==[
#id rota.teste
step
    goto 1421 90,90
]==], "teste", true)
S.player.map, S.player.x, S.player.y = 1421, 0.10, 0.10
ns.Engine:LoadGuide("rota.teste", 1, true); S.RunTimers()
S.Tick()
check(ns.Nav.routed and math.abs(ns.Nav.routed.x - 0.12) < 1e-9, "seta vai primeiro ao mestre de voo")
local found = false
for _, l in ipairs(UILines()) do if l:find("Voe de Pouso A para Pouso B") then found = true end end
check(found, "janela mostra 'Voe de Pouso A para Pouso B'")
-- alvo perto: andar direto
S.player.x, S.player.y = 0.85, 0.85
ns.Router.lastPlanPos = nil
S.Tick()
check(ns.Nav.routed == nil, "alvo perto: sem rota, anda direto")
-- voo automático
S.player.x, S.player.y = 0.10, 0.10
ns.Router.lastPlanPos = nil
S.Tick()
AzimuteDB.autoFly = true
S.FireEvent("TAXIMAP_OPENED")
check(S.tookTaxi == 2, "voo automático escolhe o destino da rota")
AzimuteDB.autoFly = false
S.tookTaxi = nil
S.FireEvent("TAXIMAP_OPENED")
check(S.tookTaxi == nil, "opção desligada: não voa sozinho")
-- voo não conhecido não entra na rota
AzimuteDB.pickupFlightPathsOnWay = false
AzimuteCharDB.knownTaxi = { [1] = true }
ns.Router.lastPlanPos = nil
S.Tick()
check(ns.Nav.routed == nil, "voo desconhecido não é usado")
AzimuteDB.pickupFlightPathsOnWay = true
AzimuteDB.routes = false

print("\n== Caminho de voo novo ao chegar na cidade ==")
AzimuteDB.routes = true
AzimuteDB.pickupFlightPaths = true
AzimuteCharDB.knownTaxi = { [1] = true } -- conhece só o Pouso A
ns.Router.skippedDetours = {}
S.player.map, S.player.x, S.player.y = 1421, 0.70, 0.70 -- longe do Pouso B
ns.Router:CheckNewFlightPath()
check(ns.Router.detour == nil, "longe do mestre de voo: nada muda")
S.player.x, S.player.y = 0.80, 0.80 -- ~113 jardas do Pouso B (0.88)
ns.Router:CheckNewFlightPath()
check(ns.Router.detour and ns.Router.detour.id == 2, "chegou perto de um voo desconhecido: vira o primeiro passo")
local target = ns.Nav:CurrentTarget()
check(target and target.detour and math.abs(target.x - 0.88) < 1e-9, "seta vai para o mestre de voo")
local fpLine = false
for _, l in ipairs(UILines()) do if l:find("Novo caminho de voo: fale com o mestre de voo de Pouso B") then fpLine = true end end
check(fpLine, "janela mostra 'Novo caminho de voo'")
S.FireEvent("TAXIMAP_OPENED") -- falou com o mestre de voo: aprende o B
check(ns.Router.detour == nil and AzimuteCharDB.knownTaxi[2], "voo pego: volta ao guia")
-- afastar-se sem pegar cancela até o próximo login
AzimuteCharDB.knownTaxi = { [1] = true }
ns.Router.skippedDetours = {}
ns.Router:CheckNewFlightPath()
check(ns.Router.detour and ns.Router.detour.id == 2, "de novo perto do voo")
S.player.x, S.player.y = 0.30, 0.30
ns.Router:CheckNewFlightPath()
check(ns.Router.detour == nil and ns.Router.skippedDetours[2], "afastou-se: desiste do voo")
S.player.x, S.player.y = 0.80, 0.80
ns.Router:CheckNewFlightPath()
check(ns.Router.detour == nil, "não insiste no voo que o jogador ignorou")

print("\n== Especialização pelos talentos ==")
AzimuteAPI.RegisterStatWeights({
    ["Warlock Speedrun 20-29 - Affliction"] = { Class = "Warlock", Spec = "Affliction", Kind = "Speedrun", MIN_LEVEL = 20, MAX_LEVEL = 29, ITEM_MOD_INTELLECT_SHORT = 1 },
    ["Warlock Speedrun 20-29 - Destruction"] = { Class = "Warlock", Spec = "Destruction", Kind = "Speedrun", MIN_LEVEL = 20, MAX_LEVEL = 29, ITEM_MOD_INTELLECT_SHORT = 2 },
})
local savedClass = ns.Engine.player.class
ns.Engine.player.class = "WARLOCK"
AzimuteCharDB.gearSpec = nil
S.talentGroups = {}
local spec, source = ns.Gear:CurrentSpec()
check(spec == "Affliction" and source == nil, "sem pontos: especialização padrão (Aflição)")
S.talentGroups = { { traitNodeGroupID = 13, currencyInfos = { { spent = 5 } } }, { traitNodeGroupID = 11, currencyInfos = { { spent = 2 } } } }
spec, source = ns.Gear:CurrentSpec()
check(spec == "Destruction" and source == "talents", "mais pontos em Destruição: usa Destruição")
SlashCmdList.AZIMUTE("spec 1")
spec, source = ns.Gear:CurrentSpec()
check(spec == "Affliction" and source == "manual", "/azimute spec 1 força Aflição")
SlashCmdList.AZIMUTE("spec 0")
spec = ns.Gear:CurrentSpec()
check(spec == "Destruction", "/azimute spec 0 volta ao automático")
ns.Engine.player.class = savedClass

print("\n== Pedra de regresso na rota ==")
AzimuteDB.routes, AzimuteDB.pickupFlightPaths = true, false
AzimuteCharDB.knownTaxi = {}
S.player.map, S.player.x, S.player.y = 1421, 0.88, 0.88
S.FireEvent("HEARTHSTONE_BOUND")
check(AzimuteCharDB.hearth and AzimuteCharDB.hearth.name == "Brill", "lar anotado ao definir a pedra")
S.items[6948] = 1
S.player.x, S.player.y = 0.10, 0.10
ns.Engine:LoadGuide("rota.teste", 1, true); S.RunTimers()
ns.Router.lastPlanPos = nil
S.Tick()
local hearthLine = false
for _, l in ipairs(UILines()) do if l:find("Use sua Pedra de Regresso %(Brill%)") then hearthLine = true end end
check(hearthLine, "alvo perto do lar: sugere a Pedra de Regresso")
S.items[6948] = 0
ns.Router.lastPlanPos = nil
S.Tick()
check(ns.Router.plan == nil, "sem a pedra na bolsa: não sugere")

print("\n== Profissões ==")
ns.Registry:Register([==[
#id prof.teste
#kind profession
step
    ifskillbelow herbalism 70
    skill herbalism 70
    path loop 1421 20,20 30,30
step
    note depois do 70
]==], "teste", true)
check(ns.Registry:Score(ns.Registry:Peek("prof.teste"), ns.Engine.player) == nil, "guia de profissão nunca é escolhido sozinho")
S.herbSkill = 12
S.player.x, S.player.y = 0.50, 0.50
ns.Engine:LoadGuide("prof.teste", 1, true); S.RunTimers()
check(UILines()[1]:find("Suba") and UILines()[1]:find("Herborismo") and UILines()[1]:find("12/70"), "mostra a habilidade atual: " .. UILines()[1])
check(UILines()[2]:find("circuito de coleta"), "circuito de coleta na janela")
S.player.x, S.player.y = 0.20, 0.20; S.Tick()
S.player.x, S.player.y = 0.30, 0.30; S.Tick()
check(ns.Nav:CurrentTarget() and math.abs(ns.Nav:CurrentTarget().x - 0.20) < 1e-9, "fim do circuito: recomeça no primeiro ponto")
S.herbSkill = 70
S.FireEvent("SKILL_LINES_CHANGED"); S.RunTimers()
check(ns.Engine.stepIndex == 2, "habilidade 70: passo concluído")

print("\n== Missões de masmorra ==")
S.player.faction = "Horde"
AzimuteAPI.RegisterDungeonQuests({
    { name = "Ragefire Chasm", levels = { hard = 9, medium = 12, atLevel = 14, easy = 19 }, quests = {
        { name = "Slaying the Beast", id = 5761, level = 9, faction = "Horde", giver = "Neeru Fireblade", location = "Orgrimmar, The Drag", coords = "49, 50" },
        { name = "Alliance only", id = 9001, level = 9, faction = "Alliance", giver = "X", location = "Stormwind", coords = "1, 1" },
        { name = "Warlock only", id = 9002, level = 9, faction = "Neutral", classOnly = "WARLOCK", giver = "Y", location = "TBD" },
        { name = "Array", id = { 9003, 9004 }, level = 9, faction = "Neutral", giver = "Z", location = "TBD" },
    } },
})
local list = ns.DungeonQuests:ForPlayer()
check(#list == 1 and #list[1].quests == 2, "filtra facção e classe (" .. (#list > 0 and #list[1].quests or 0) .. " missões)")
local mapID, x, y, place = ns.DungeonQuests.Location(list[1].quests[1])
check(mapID == 1454 and math.abs(x - 0.49) < 1e-9 and place == "The Drag", "local de quem dá a missão")
Q.onQuest[9004] = true
check(ns.DungeonQuests.Status(list[1].quests[2]) == "log", "ID em lista: missão no diário")
Q.completed[5761] = true
check(ns.DungeonQuests.Status(list[1].quests[1]) == "done", "missão feita")
check(ns.DungeonQuests.DisplayName(list[1].dungeon) == "Instancia389", "nome da masmorra pelo cliente")
local savedLevel5 = ns.Engine.player.level
ns.Engine.player.level = 14
check(ns.DungeonQuests.LevelStatus(list[1].dungeon, 14) == "ideal" and ns.DungeonQuests.LevelStatus(list[1].dungeon, 8) == "early"
    and ns.DungeonQuests.LevelStatus(list[1].dungeon, 10) == "hard" and ns.DungeonQuests.LevelStatus(list[1].dungeon, 25) == "easy",
    "situação pelo nível: cedo demais / difícil / ideal / fácil demais")
ns.DungeonPanel:Toggle()
local rows = 0
for _, r in ipairs(ns.DungeonPanel.frame.rows) do if r._shown then rows = rows + 1 end end
check(rows == 3, "painel: cabeçalho + 2 missões (" .. rows .. ")")
check(ns.DungeonPanel.frame.rows[1].right._text:find("seu nível"), "faixa de nível colorida com a situação: " .. ns.DungeonPanel.frame.rows[1].right._text)
-- entrada: pelo jogo (ícones do mapa) e, sem o jogo, posição aproximada
C_EncounterJournal = { GetDungeonEntrancesForMap = function(mapID)
    if mapID == 1454 then return { { name = "Instancia389", position = { GetXY = function() return 0.52, 0.49 end }, journalInstanceID = 226 } } end
    return {}
end }
C_Map.GetMapChildrenInfo = function(continent) return continent == 1414 and { { mapID = 1454 } } or {} end
Enum = Enum or {}
Enum.UIMapType = { Zone = 3 }
ns.DungeonEntrances.cache = nil
ns.DungeonPanel.frame.rows[1].go._scripts.OnClick(ns.DungeonPanel.frame.rows[1].go)
check(ns.Nav:Manual() and ns.Nav:Manual().x == 0.52 and ns.Nav:Manual().info.lines[1] == "Entrada da masmorra", "Entrada: seta até a porta (posição do jogo)")
ns.Nav:ClearManual()
C_EncounterJournal = nil
ns.DungeonEntrances.cache = nil
local approx = ns.DungeonEntrances:Find("Wailing Caverns", "Caverna Ululante")
check(approx and approx.approx and approx.mapID == 1413, "sem o jogo: posição aproximada conhecida")
check(ns.DungeonEntrances:Find("Excavation Site", "Excavation Site") == nil, "masmorra sem posição conhecida: nil (avisa no chat)")
-- procurar grupo abre o buscador do jogo
local opened
function LFGVanilla_ToggleFrame(tab) opened = tab end
C_AddOns.IsAddOnLoaded = function() return true end
check(ns.DungeonEntrances.OpenGroupFinder() and opened == 2, "Procurar grupo abre o buscador do jogo (aba de busca)")
-- só do meu nível
ns.Engine.player.level = 30
ns.DungeonPanel:Refresh()
check(ns.DungeonPanel.frame.rows[1].text._text:find("Nenhuma masmorra"), "nível 30: Ragefire some do filtro 'só do meu nível'")
AzimuteDB.dungeonsMyLevel = false
ns.DungeonPanel:Refresh()
check(ns.DungeonPanel.frame.rows[1].right._text:find("fácil demais"), "filtro desligado: mostra todas, marcando 'fácil demais'")
AzimuteDB.dungeonsMyLevel = true
ns.Engine.player.level = 14
ns.DungeonPanel:Refresh()
ns.DungeonPanel.frame.rows[1].check:SetChecked(true)
ns.DungeonPanel.frame.rows[1].check._scripts.OnClick(ns.DungeonPanel.frame.rows[1].check)
check(AzimuteCharDB.dungeons.RFC == true, "marcar no painel inclui a masmorra no guia")
ns.DungeonPanel.frame.rows[2]._scripts.OnClick()
check(ns.Nav.manual and ns.Nav.manual.mapID == 1454, "clicar na missão guia até quem a dá")
ns.Nav:ClearManual()
ns.Engine.player.level = savedLevel5

print("\n== Passos de masmorra nos guias ==")
ns.Registry:Register([==[
#id dg.teste
step
    ifdungeon RFC
    note passo da masmorra
step
    ifnotdungeon RFC
    note alternativa sem masmorra
]==], "teste", true)
AzimuteCharDB.dungeons.RFC = true
ns.Engine:LoadGuide("dg.teste", 1, true); S.RunTimers()
check(UILines()[#UILines()]:find("passo da masmorra"), "RFC marcada: mostra o passo da masmorra")
AzimuteCharDB.dungeons.RFC = nil
ns.Engine:LoadGuide("dg.teste", 1, true); S.RunTimers()
check(UILines()[#UILines()]:find("alternativa sem masmorra"), "RFC desmarcada: mostra a alternativa")

print("\n== Treino da classe ==")
AzimuteAPI.RegisterClassSpells({ WARRIOR = {
    [1] = { { id = 6673, cost = 10 } },
    [4] = { { id = 100, cost = 100 }, { id = 772, cost = 100 } },
    [6] = { { id = 3127, cost = 100, requiredIds = { 999 } } },
    [8] = { { id = 284, cost = 200 } },
} })
ns.Engine.player.class = "WARRIOR"
ns.Engine.player.level = 6
S.known = { [6673] = true }
local now, soon = ns.Trainer:Summary()
check(#now == 2 and now.cost == 200, "2 feitiços para treinar agora (200c): " .. #now .. " / " .. now.cost)
check(#soon == 1 and soon[1].id == 284, "próximos níveis: o do nível 8 (o de pré-requisito fica de fora)")
S.money = 50
local line = ns.Trainer:Line()
check(line:find("2 feitiços para treinar") and line:find("dinheiro insuficiente"), "linha avisa dinheiro insuficiente")
S.money = 500
ns.UI:Refresh()
local trainerLine = false
for _, l in ipairs(UILines()) do if l:find("feitiços para treinar") then trainerLine = true end end
check(trainerLine and ns.UI.frame.trainerHit._shown, "janela mostra a linha do treino (com dica)")
AzimuteDB.trainerHints = false
ns.UI:Refresh()
check(not rawget(ns.UI.frame, "trainerHit"), "opção desligada: sem linha de treino")
AzimuteDB.trainerHints = true

print("\n== Voos conhecidos pela janela de voo clássica ==")
local modern = C_TaxiMap.GetAllTaxiNodes
C_TaxiMap.GetAllTaxiNodes = nil
function NumTaxiNodes() return 2 end
function TaxiNodeGetType(i) return i == 1 and "CURRENT" or "REACHABLE" end
function TaxiNodeName(i) return i == 1 and "Pouso A" or "Pouso B" end
AzimuteCharDB.knownTaxi = {}
S.FireEvent("TAXIMAP_OPENED")
check(AzimuteCharDB.knownTaxi[1] and AzimuteCharDB.knownTaxi[2], "API clássica: voos anotados pelo nome")
-- nenhuma API disponível: o mestre de voo pedido conta como conhecido
NumTaxiNodes = nil
AzimuteCharDB.knownTaxi = {}
AzimuteDB.pickupFlightPaths = true
ns.Router.skippedDetours = {}
S.player.map, S.player.x, S.player.y = 1421, 0.80, 0.80
ns.Router:CheckNewFlightPath()
check(ns.Router.detour and ns.Router.detour.id == 2, "pede o voo B")
S.FireEvent("TAXIMAP_OPENED")
check(AzimuteCharDB.knownTaxi[2] and ns.Router.detour == nil, "sem API: abrir o mapa de voo no mestre pedido já conta")
C_TaxiMap.GetAllTaxiNodes = modern

print("\n== Morte: seta até o corpo ==")
S.ghost, S.corpse = false, nil
function UnitIsGhost() return S.ghost end
C_DeathInfo = { GetCorpseMapPosition = function(m)
    if S.corpse and S.corpse.map == m then
        return { GetXY = function() return S.corpse.x, S.corpse.y end }
    end
end }
S.player.map, S.player.x, S.player.y = 1429, 0.50, 0.50
S.corpse = { map = 1429, x = 0.60, y = 0.50 }
S.FireEvent("PLAYER_DEAD"); S.RunTimers()
check(not ns.Corpse:IsGuiding(), "morto sem liberar: ainda não guia (o corpo está aqui)")
S.ghost = true
S.FireEvent("PLAYER_ALIVE"); S.RunTimers()
check(ns.Corpse:IsGuiding(), "liberou o espírito: guiando até o corpo")
local t = ns.Nav:CurrentTarget()
check(t and t.corpse and t.mapID == 1429 and t.x == 0.60, "alvo da seta é o corpo")
check(ns.Corpse.banner._shown and ns.Corpse.banner.text._text:find("Levando você até o seu corpo"), "aviso na tela: " .. tostring(ns.Corpse.banner.text._text))
local corpseLine = false
for _, l in ipairs(UILines()) do if l:find("seta leva até o seu corpo") then corpseLine = true end end
check(corpseLine, "janela do guia avisa que está levando ao corpo")
check(S.pin and S.pin.x == 0.60, "pino do mapa no corpo")
MoveTo(59.5, 50)
check(ns.Corpse.banner.text._text:find("chegou ao corpo"), "perto do corpo: pede para ressuscitar")
S.ghost = false
S.FireEvent("PLAYER_UNGHOST"); S.RunTimers()
check(not ns.Corpse:IsGuiding() and not ns.Corpse.banner._shown, "ressuscitou: aviso some")
t = ns.Nav:CurrentTarget()
check(not (t and t.corpse), "seta volta para o guia")
AzimuteDB.corpseGuide = false
S.ghost = true
S.FireEvent("PLAYER_ALIVE"); S.RunTimers()
check(not ns.Corpse:IsGuiding(), "opção desligada: não guia até o corpo")
S.ghost = false
AzimuteDB.corpseGuide = true
S.FireEvent("PLAYER_UNGHOST"); S.RunTimers()

print("\n== Voltar a um guia: passo salvo e retomada pelo diário ==")
S.player.faction, S.player.race, S.player.level = "Horde", "Scourge", 13
ns.Engine:Start(); S.RunTimers()
ns.Registry:Register([==[
#id retoma.silverpine
#faction Horde
#levels 12-14
#zone 1421
step
    goto 1421 10,10
    accept 3001
step
    goto 1421 20,20
    note andar
step
    objective 3001/1
step
    goto 1421 30,30
    accept 3002
step
    goto 1421 40,40
    note depois da 3002
step
    turnin 3002
]==], "teste", true, true)
ns.Registry:Register([==[
#id retoma.barrens
#faction Horde
#levels 12-14
#zone 1413
step
    accept 3100
]==], "teste", true, true)
Q.onQuest[3001], Q.onQuest[3002] = true, true
Q.objectives[3001] = { { text = "Lobos 2/10", finished = false } }
local best = ns.Registry:FindFor(ns.Engine.player)
check(best.id == "retoma.silverpine", "recomendado: o guia com as missões do diário (" .. best.id .. ")")
check(ns.Registry.QuestsInLog(ns.Registry:Peek("retoma.silverpine")) == 2, "conta 2 missões do diário no guia")
AzimuteCharDB.progress["retoma.silverpine"] = nil
ns.Engine:LoadGuide("retoma.silverpine", nil, true); S.RunTimers()
check(ns.Engine.stepIndex == 3, "sem progresso salvo: começa no objetivo aberto da missão do diário (passo " .. ns.Engine.stepIndex .. ")")
Q.objectives[3001] = { { text = "Lobos 10/10", finished = true } }
AzimuteCharDB.progress["retoma.silverpine"] = nil
ns.Engine:LoadGuide("retoma.silverpine", nil, true); S.RunTimers()
check(ns.Engine.stepIndex == 5, "objetivo feito: começa depois da última missão aceita (passo " .. ns.Engine.stepIndex .. ")")
ns.Engine:Next(); S.RunTimers()
local saved = ns.Engine.stepIndex
ns.Engine:LoadGuide("retoma.barrens", nil, true); S.RunTimers()
ns.Engine:LoadGuide("retoma.silverpine", nil, true); S.RunTimers()
check(ns.Engine.stepIndex == saved, "voltar ao guia continua no passo salvo (" .. ns.Engine.stepIndex .. ")")

print("\n== Marcar como feito (clique direito) ==")
ns.Registry:Register([==[
#id marcar
#faction Horde
step
    goto 1421 50,50
    collect 1179 20
    vendor
step
    note depois
]==], "teste", true)
S.items[1179] = 0
AzimuteCharDB.marked = {}
S.time = S.time + 100 -- o vendedor de testes anteriores não conta
ns.Engine:LoadGuide("marcar", 1, true); S.RunTimers()
local rows = ns.UI.frame.rows
local function RowWith(text)
    for _, r in ipairs(rows) do
        if r._shown and r.text._text and r.text._text:find(text) then return r end
    end
end
local collectRow = RowWith("Obtenha 20")
check(collectRow and collectRow.goal, "linha da coleta pode ser marcada")
collectRow._scripts.OnClick(collectRow, "RightButton"); S.RunTimers()
check(RowWith("marcado"), "linha mostra (marcado)")
check(ns.Engine.stepIndex == 1, "ainda falta o vendedor: fica no passo")
local vendorRow = RowWith("Venda o lixo")
vendorRow._scripts.OnClick(vendorRow, "RightButton"); S.RunTimers()
check(ns.Engine.stepIndex == 2, "tudo marcado: avança o passo (" .. ns.Engine.stepIndex .. ")")
check(AzimuteCharDB.marked.marcar["1:2"] and AzimuteCharDB.marked.marcar["1:3"], "marcas salvas por personagem")
ns.Engine:Prev(); S.RunTimers()
check(ns.Engine.stepIndex == 1 and RowWith("marcado"), "voltando ao passo: marcas continuam")
collectRow = RowWith("Obtenha 20")
collectRow._scripts.OnClick(collectRow, "RightButton"); S.RunTimers()
check(not AzimuteCharDB.marked.marcar["1:2"], "clique direito de novo desmarca")

print("\n== Missão de masmorra no painel: janela em modo 'Indo até' ==")
ns.Engine:LoadGuide("marcar", 1, true); S.RunTimers()
S.player.map, S.player.x, S.player.y = 1411, 0.10, 0.10
ns.Nav:SetManualTarget(1411, 0.50, 0.50, { title = "Missão da Masmorra", lines = { "Fale com Fulano para pegar Missão da Masmorra" } })
S.RunTimers()
check(ns.UI.frame.title._text:find("Indo até: Missão da Masmorra"), "título: " .. tostring(ns.UI.frame.title._text))
local texts = table.concat(UILines(), " | ")
check(texts:find("Fale com Fulano") and texts:find("Vá até"), "linhas do destino: " .. texts)
check(not texts:find("Obtenha 20"), "linhas do passo do guia somem")
check(ns.UI.frame.focusClose._shown, "botão X para cancelar")
ns.UI.frame.focusClose._scripts.OnClick(ns.UI.frame.focusClose); S.RunTimers()
check(ns.Nav:Manual() == nil and table.concat(UILines(), " "):find("Obtenha 20"), "X cancela e volta ao guia")
ns.Nav:SetManualTarget(1411, 0.50, 0.50, { title = "Missão da Masmorra" }); S.RunTimers()
MoveTo(50, 50.5)
check(ns.Nav:Manual() == nil and table.concat(UILines(), " "):find("Obtenha 20"), "chegando: volta ao guia sozinho")

print("\n== #status: selo de confiança do guia ==")
local statusText = "#id com.status\n#name Guia Experimental\n#version 3\n#status experimental\nstep\n    goto 1429 48.15,42.95\n    accept 783\nstep\n    note segundo passo"
ok, g = IO.Import(statusText)
check(ok and g.status == "experimental", "#status experimental é lido")
local okBad, gBad = IO.Import("#id com.ruim\n#name Ruim\n#status bom\nstep\n    note x")
check(okBad and gBad.status == nil and S.printed[#S.printed]:find("valor inválido para #status", 1, true),
    "#status inválido vira aviso e é ignorado (o guia continua importável)")
IO.Remove("com.ruim")
check(ns.Registry.StatusTag({ status = "validated" }):find("validado"), "selo 'validado' em pt-BR")
check(ns.Registry.StatusTag({}) == "" and ns.Registry.StatusTag(nil) == "", "guia sem #status fica sem selo")
ns.Engine:LoadGuide("com.status", 1, true); S.RunTimers()
check(ns.UI.frame.title._text:find("experimental") and ns.UI.frame.title._text:find("Guia Experimental"),
    "título da janela mostra o selo: " .. tostring(ns.UI.frame.title._text))
ns.GuidePicker:Toggle()
local pickerHasTag = false
for _, row in ipairs(ns.GuidePicker.frame.rows) do
    if row.text._text and row.text._text:find("Guia Experimental") and row.text._text:find("experimental") then
        pickerHasTag = true
    end
end
check(pickerHasTag, "seletor mostra o selo ao lado do nome")
ns.GuidePicker:Toggle()

print("\n== Reportar problema ==")
ns.Engine:SetStep(1); S.RunTimers()
local report = ns.Report:Build()
check(report:find("%[Azimute report%]"), "relatório tem o cabeçalho")
check(report:find("guide=com.status version=3 status=experimental", 1, true), "guia, versão e status no relatório")
check(report:find("step=1/2", 1, true), "passo atual e total")
check(report:find("goto 1429 48.15,42.95", 1, true) and report:find("accept 783", 1, true), "coordenadas e ids do passo")
check(report:find("interface=16001", 1, true) and report:find("addon=0.2.0", 1, true), "interface e versão do addon")
check(report:sub(-6) == "note: ", "última linha é o campo para o jogador escrever")
SlashCmdList.AZIMUTE("reportar")
check(ns.ImportFrame.frame.edit._text == report, "/azimute reportar abre o texto na janela para copiar")
check(ns.ImportFrame.frame.title._text == "Reportar problema", "título da janela de relatório")
ns.ImportFrame.frame:Hide()
ns.UI.frame.reportButton._scripts.OnClick(ns.UI.frame.reportButton)
check(ns.ImportFrame.frame._shown and ns.ImportFrame.frame.edit._text:find("guide=com.status", 1, true), "botão da janela abre o relatório")
ns.ImportFrame.frame:Hide()
ns.Engine:Unload()
SlashCmdList.AZIMUTE("reportar")
check(S.printed[#S.printed]:find("Nenhum guia carregado"), "sem guia: avisa e não abre nada")
check(IO.Remove("com.status"), "limpa o guia de teste")

print("\n== /way sem TomTom ==")
check(SlashCmdList.AZIMUTEWAY and SLASH_AZIMUTEWAY1 == "/way", "/way é registrado quando o TomTom não está carregado")
S.player.map, S.player.x, S.player.y = 1411, 0.10, 0.10
SlashCmdList.AZIMUTEWAY("45.5, 60.25 Casa do Fulano")
local manual = ns.Nav:Manual()
check(manual and manual.mapID == 1411 and math.abs(manual.x - 0.455) < 1e-6 and math.abs(manual.y - 0.6025) < 1e-6,
    "/way x, y nome: ponto no mapa atual")
check(manual.info.title == "Casa do Fulano", "nome do ponto guardado")
S.RunTimers()
check(ns.UI.frame.title._text:find("Indo até: Casa do Fulano", 1, true), "janela mostra o destino: " .. tostring(ns.UI.frame.title._text))
SlashCmdList.AZIMUTEWAY("#1429 10 20")
manual = ns.Nav:Manual()
check(manual.mapID == 1429 and math.abs(manual.x - 0.10) < 1e-6 and math.abs(manual.y - 0.20) < 1e-6, "/way #mapa x y: mapa informado")
SlashCmdList.AZIMUTEWAY("abc")
check(S.printed[#S.printed]:find("/way <x> <y>", 1, true), "entrada inválida mostra o uso")
SlashCmdList.AZIMUTEWAY("101 5")
check(S.printed[#S.printed]:find("/way <x> <y>", 1, true), "coordenada acima de 100 é recusada")
SlashCmdList.AZIMUTE("way 33 44")
check(ns.Nav:Manual() and math.abs(ns.Nav:Manual().x - 0.33) < 1e-6, "/azimute way funciona também")
SlashCmdList.AZIMUTEWAY("reset")
check(ns.Nav:Manual() == nil and S.printed[#S.printed]:find("Ponto removido", 1, true), "/way reset remove o ponto")
SlashCmdList.AZIMUTEWAY = nil; SLASH_AZIMUTEWAY1 = nil
TomTom = {}
check(ns.RegisterWaySlash() == false and SlashCmdList.AZIMUTEWAY == nil, "com o TomTom carregado o /way fica com ele")
TomTom = nil
check(ns.RegisterWaySlash() == true and SlashCmdList.AZIMUTEWAY, "sem o TomTom o /way volta a ser registrado")

print("\n== Vendedor: vender lixo e reparar ==")
local M = S.merchant
local function Reset(canRepair, cost, junk, money)
    M.canRepair, M.repairCost, M.junkValue, M.repaired, M.sold = canRepair, cost, junk, false, false
    S.money = money
end
check(ns.db.autoSellJunk == false and ns.db.autoRepair == false, "vender lixo e reparar vêm desligados")
Reset(true, 2500, 700, 100000)
S.FireEvent("MERCHANT_SHOW"); S.RunTimers()
check(not M.repaired and not M.sold and S.money == 100000, "opções desligadas: nada é feito")
ns.db.autoRepair, ns.db.autoSellJunk = true, true
S.npc.shift = true
S.FireEvent("MERCHANT_SHOW"); S.RunTimers()
check(not M.repaired and not M.sold, "SHIFT pula a automação")
S.npc.shift = false
local mark = #S.printed
S.FireEvent("MERCHANT_SHOW"); S.RunTimers()
local tail = table.concat(S.printed, " | ", mark + 1, #S.printed)
check(M.repaired and M.sold and S.money == 100000 - 2500 + 700, "repara e vende: ouro final " .. S.money)
check(tail:find("reparado por 2500c", 1, true) and tail:find("vendidos por 700c", 1, true), "avisa o custo do reparo e o ganho da venda: " .. tail)
Reset(true, 2500, 0, 1000)
S.FireEvent("MERCHANT_SHOW"); S.RunTimers()
check(not M.repaired and S.money == 1000 and S.printed[#S.printed]:find("custa 2500c e você tem só 1000c", 1, true),
    "sem ouro para o reparo: não repara e explica")
Reset(false, 2500, 700, 5000)
S.FireEvent("MERCHANT_SHOW"); S.RunTimers()
check(not M.repaired and M.sold, "vendedor que não repara: só vende")
ns.db.autoSellJunk = false
Reset(true, 0, 700, 5000)
S.FireEvent("MERCHANT_SHOW"); S.RunTimers()
check(not M.repaired and not M.sold, "nada a reparar e venda desligada: não faz nada")

print("\n== Vendedor: cliente sem venda em massa vende as bolsas cinza ==")
local savedMerchantFrame, savedContainer = C_MerchantFrame, C_Container
C_MerchantFrame = nil
local used = {}
C_Container = {
    GetContainerNumSlots = function(bag) return bag == 0 and 3 or 0 end,
    GetContainerItemInfo = function(bag, slot)
        if slot == 1 then return { quality = 0, hasNoValue = false } end   -- cinza vendável
        if slot == 2 then return { quality = 0, hasNoValue = true } end    -- cinza sem valor
        return { quality = 1 }                                             -- item comum
    end,
    UseContainerItem = function(bag, slot) used[#used + 1] = bag .. ":" .. slot end,
    GetItemCooldown = savedContainer.GetItemCooldown,
}
ns.db.autoSellJunk = true
Reset(false, 0, 0, 5000)
S.FireEvent("MERCHANT_SHOW"); S.RunTimers()
check(#used == 1 and used[1] == "0:1", "vende só o cinza com valor: " .. table.concat(used, ","))
C_MerchantFrame, C_Container = savedMerchantFrame, savedContainer
ns.db.autoSellJunk, ns.db.autoRepair = false, false

print("\n== Diagnóstico ==")
C_DamageMeter = { GetCombatSessionFromType = function() end }
local report = ns.Diag:Run()
check(AzimuteDB.diag == report and report.interface == 16001, "relatório salvo com a interface do cliente")
check(type(report.namespaces.C_DamageMeter) == "table" and report.namespaces.C_DamageMeter[1] == "GetCombatSessionFromType", "lista o que existe em C_DamageMeter")
check(report.namespaces.C_Bank == false, "namespace ausente fica false")
local listed = false
for _, path in ipairs(report.missingAPI) do if path == "C_Traits.GetConfigInfo" then listed = true end end
check(not listed, "função que existe não aparece como faltando")
C_DamageMeter = nil

print("\n== Rota com masmorras no recomendado ==")
ns.Registry:Register("#id forever.h.50-52-teste\n#faction Horde\n#levels 50-52\nstep\n    accept 5001", "teste", true)
ns.Registry:Register("#id forever.dg.h.50-52-teste\n#faction Horde\n#levels 50-52\nstep\n    accept 5001", "teste", true)
S.player.level = 50; ns.Engine.player.level = 50
AzimuteCharDB.dungeons = {}
check(ns.Registry:FindFor(ns.Engine.player).id == "forever.h.50-52-teste", "sem masmorras escolhidas: rota normal")
AzimuteCharDB.dungeons = { RFC = true }
check(ns.Registry:FindFor(ns.Engine.player).id == "forever.dg.h.50-52-teste", "com masmorras escolhidas: rota com masmorras")
AzimuteCharDB.dungeons = {}

print("\n== Ritmo de up ==")
S.clock = 100000
S.xp, S.xpMax = 1000, 5000
function UnitXP() return S.xp end
function UnitXPMax() return S.xpMax end
AzimuteCharDB.pace = nil
S.player.level = 20; ns.Engine.player.level = 20
S.FireEvent("PLAYER_LOGIN"); S.RunTimers()
S.xp = 1200; S.FireEvent("PLAYER_XP_UPDATE")
check(ns.Pace:Stats() == nil, "pouco tempo medido: ainda sem ritmo")
S.clock = S.clock + 600
S.xp = 1600; S.FireEvent("PLAYER_XP_UPDATE")
S.FireEvent("QUEST_TURNED_IN", 1)
local stats = ns.Pace:Stats()
check(stats and math.abs(stats.xpPerHour - 3600) < 1, "600 XP em 10 min = 3600 XP/h: " .. tostring(stats and stats.xpPerHour))
check(math.abs(stats.secondsToLevel - 3400) < 1, "faltam 3400 XP: nível em ~57 min")
check(ns.Pace:Line() == "3.600 XP/h  ·  nível em 57 min  ·  6 missões/h", "linha: " .. tostring(ns.Pace:Line()))
-- subir de nível no meio conta o resto do nível anterior
S.player.level = 21
S.xp, S.xpMax = 100, 6000
S.FireEvent("PLAYER_XP_UPDATE")
check(math.abs(ns.Pace:Stats().xpPerHour - (600 + 3400 + 100) * 6) < 1, "XP do nível anterior conta ao subir")
local found = false
for _, l in ipairs(UILines()) do if l:find("XP/h") then found = true end end
check(found, "linha do ritmo aparece na janela do guia")
AzimuteDB.pace = false
ns.UI:Refresh()
found = false
for _, l in ipairs(UILines()) do if l:find("XP/h") then found = true end end
check(not found, "opção desligada: some")
AzimuteDB.pace = true

print("\n== Pesos próprios: tanque, cura, guerreiro, ladino e caçador ==")
local G2 = ns.Gear
local savedClass2, savedLevel2 = ns.Engine.player.class, ns.Engine.player.level
AzimuteCharDB.gearSpec = nil
ns.Engine.player.level = 25
-- guerreiro com mais pontos em Proteção: perfil de tanque
ns.Engine.player.class = "WARRIOR"
S.talentGroups = { { traitNodeGroupID = 13, currencyInfos = { { spent = 8 } } } } -- 3ª aba = Proteção
local spec, source = G2:CurrentSpec()
check(spec == "Protection" and source == "talents", "guerreiro com talentos de Proteção: " .. tostring(spec))
check(G2:Profile() and G2:Profile().Source == "azimute" and G2:Profile().RESISTANCE0_NAME == 0.12, "usa os pesos de tanque do Azimute")
S.itemData["peito-tanque"] = { equipLoc = "INVTYPE_CHEST", subclassID = 3, stats = { ITEM_MOD_STAMINA_SHORT = 8, RESISTANCE0_NAME = 200 } }
S.itemData["peito-dps"]    = { equipLoc = "INVTYPE_CHEST", subclassID = 3, stats = { ITEM_MOD_STRENGTH_SHORT = 8, RESISTANCE0_NAME = 120 } }
check(G2:Score("peito-tanque") > G2:Score("peito-dps"), "tanque prefere Vigor e armadura a Força")
check(G2.SpecName("Protection") == "Proteção (tanque)", "nome em português com o papel")
S.talentGroups = {}
spec = G2:CurrentSpec()
check(spec == "Arms", "guerreiro sem talentos: Armas (DPS) por padrão")
check(G2:Score("peito-dps") > G2:Score("peito-tanque"), "DPS prefere Força")
-- caçador: arco com o peso de arma à distância
ns.Engine.player.class = "HUNTER"
S.itemData["arco-bom"]   = { equipLoc = "INVTYPE_RANGED", classID = 2, stats = { ITEM_MOD_DAMAGE_PER_SECOND_SHORT = 10 } }
S.itemData["espada-boa"] = { equipLoc = "INVTYPE_WEAPON", classID = 2, stats = { ITEM_MOD_DAMAGE_PER_SECOND_SHORT = 10 } }
check(G2:Score("arco-bom") == 140 and G2:Score("espada-boa") == 20, "caçador: DPS do arco vale 14, da espada 2")
-- paladino: as especializações de tanque e cura aparecem no /azimute spec
ns.Engine.player.class = "PALADIN"
local specs = table.concat(G2:SpecsForClass("PALADIN"), ",")
check(specs:find("Protection") and specs:find("Holy"), "paladino pode escolher Proteção e Sagrado: " .. specs)
-- varinha de conjurador (pesos no estilo do RXP, com _RANGED = 14)
local mage = { ITEM_MOD_DAMAGE_PER_SECOND_SHORT = 1, ITEM_MOD_DAMAGE_PER_SECOND_SHORT_RANGED = 14 }
S.itemData["varinha"] = { equipLoc = "INVTYPE_RANGEDRIGHT", classID = 2, stats = { ITEM_MOD_DAMAGE_PER_SECOND_SHORT = 12 } }
check(G2:Score("varinha", mage) == 168, "varinha usa o peso de arma à distância (12 x 14)")
ns.Engine.player.class, ns.Engine.player.level = savedClass2, savedLevel2

print("\n== Liberar voos no caminho ==")
if ns.Nav:Manual() then ns.Nav:ClearManual() end
AzimuteDB.routes, AzimuteDB.pickupFlightPaths, AzimuteDB.pickupFlightPathsOnWay = true, true, true
AzimuteAPI.RegisterFlightTimes({ Horde = { [3] = { [4] = 60 }, [4] = { [3] = 60 } } })
S.taxi = {
    { nodeID = 3, name = "Pouso no Caminho", map = 1415, x = 0.50, y = 0.53 },
    { nodeID = 4, name = "Pouso Fora", map = 1415, x = 0.50, y = 0.95 },
}
S.FireEvent("PLAYER_ENTERING_WORLD"); S.RunTimers()
AzimuteCharDB.knownTaxi = {}
ns.Router.skippedDetours = {}
ns.Router:SetDetour(nil)
ns.Registry:Register([==[
#id rota.caminho
step
    goto 1421 90,50
]==], "teste", true)
S.player.map, S.player.x, S.player.y = 1421, 0.10, 0.50
ns.Engine:LoadGuide("rota.caminho", 1, true); S.RunTimers()
ns.Router:CheckNewFlightPath()
check(ns.Router.detour and ns.Router.detour.id == 3, "voo desconhecido quase no caminho vira desvio")
check(ns.Router:Instruction():find("No caminho: libere o voo de Pouso no Caminho"), "janela: " .. tostring(ns.Router:Instruction()))
check(ns.Nav:CurrentTarget().detour, "seta vai primeiro ao mestre de voo do caminho")
-- andou até lá e pegou o voo: volta ao guia, não pede o que está fora do caminho
S.player.x, S.player.y = 0.50, 0.53
AzimuteCharDB.knownTaxi[3] = true
ns.Router:CheckNewFlightPath()
check(ns.Router.detour == nil, "voo liberado: volta ao alvo do guia (o de fora do caminho não é pedido)")
-- ainda longe do desvio, mas se afastando dele: desiste
AzimuteCharDB.knownTaxi = {}
S.player.x, S.player.y = 0.10, 0.50
ns.Router:CheckNewFlightPath()
check(ns.Router.detour and ns.Router.detour.id == 3, "desvio de novo")
S.player.x, S.player.y = 0.05, 0.05 -- ~660 jardas do voo (começou a 400; limite 400 + 200)
ns.Router:CheckNewFlightPath()
check(ns.Router.detour == nil and ns.Router.skippedDetours[3], "afastou-se do desvio: desiste dele")
-- opção desligada
ns.Router.skippedDetours = {}
AzimuteDB.pickupFlightPathsOnWay = false
S.player.x, S.player.y = 0.10, 0.50
ns.Router:CheckNewFlightPath()
check(ns.Router.detour == nil, "opção desligada: não desvia")
AzimuteDB.pickupFlightPathsOnWay = true

print("\n== Sair da missão selecionada sem o X ==")
local F2 = ns.Focus
AzimuteDB.followQuest = true
S.time = S.time + 200
Q.onQuest[700] = true
Q.titles[700] = "Outra missão"
S.questsOnMap[S.player.map] = { { questID = 700, x = 0.3, y = 0.3 } }
S.superTracked = 700
S.FireEvent("SUPER_TRACKING_CHANGED"); S.RunTimers()
check(F2:IsActive() and F2.questID == 700, "missão selecionada")
ns.Engine:LoadGuide("azimute.teste.deathknell", 1, true); S.RunTimers()
check(not F2:IsActive() and not ns.UI.frame.title._text:find("Missão:"), "escolher um guia sai da missão selecionada")
S.time = S.time + 200
S.superTracked = 700
S.FireEvent("SUPER_TRACKING_CHANGED"); S.RunTimers()
check(F2:IsActive(), "selecionada de novo")
S.superTracked = 0
S.FireEvent("SUPER_TRACKING_CHANGED"); S.RunTimers()
check(not F2:IsActive(), "desmarcar a missão no rastreador volta ao guia")
S.time = S.time + 200
S.superTracked = 700
S.FireEvent("SUPER_TRACKING_CHANGED"); S.RunTimers()
local backRow
for _, r in ipairs(ns.UI.frame.rows) do
    if r._shown and r.text._text and r.text._text:find("Voltar ao guia") then backRow = r end
end
check(backRow, "linha 'Voltar ao guia' aparece")
backRow._scripts.OnClick(backRow, "LeftButton"); S.RunTimers()
check(not F2:IsActive(), "clicar em 'Voltar ao guia' sai da missão")
ns.Nav:SetManualTarget(1421, 0.5, 0.5, { title = "Algum lugar" }); S.RunTimers()
ns.Engine:LoadGuide("azimute.teste.deathknell", 1, true); S.RunTimers()
check(ns.Nav:Manual() == nil, "escolher um guia também cancela o destino avulso")

print("\n== Instrução principal e nota sem tradução ==")
ns.Registry:Register([==[
#id barril.teste
step
    goto 1413 50,50
    note-enUS Kill Water Seekers
    note-ptBR Mate Water Seekers
    objective 871/1 |opt
    use 4926
    note-enUS Loot Chen's Empty Keg from the ground and start the quest
    note-enUS You can get it later if it's not there
    note-ptBR Você pode pegá-lo depois se não estiver lá
    collect 4926 1 |quest 819
    accept 819
]==], "teste", true)
AzimuteDB.compactNotes = true
ns.Engine:LoadGuide("barril.teste", 1, true); S.RunTimers()
local texts = table.concat(UILines(), " | ")
check(texts:find("Loot Chen's Empty Keg from the ground"), "instrução sem tradução aparece (em inglês) e fica visível: " .. texts)
check(not texts:find("You can get it later"), "a versão em inglês da nota traduzida não aparece")
local hidden = table.concat(ns.UI.hiddenNotes, " | ")
check(hidden:find("Mate Water Seekers") and hidden:find("Você pode pegá"), "dicas extras atrás do i: " .. hidden)

print("\n== Dica do equipamento: porcentagem só quando faz sentido ==")
local G3 = ns.Gear
local savedClass3 = ns.Engine.player.class
ns.Engine.player.class, ns.Engine.player.level = "WARRIOR", 10
AzimuteCharDB.gearSpec = nil
S.talentGroups = {}
S.itemData["luva-6"] = { equipLoc = "INVTYPE_HAND", subclassID = 1, stats = { RESISTANCE0_NAME = 6 } }
S.itemData["luva-11"] = { equipLoc = "INVTYPE_HAND", subclassID = 1, stats = { RESISTANCE0_NAME = 11 } }
S.itemData["luva-forca"] = { equipLoc = "INVTYPE_HAND", subclassID = 1, stats = { ITEM_MOD_STRENGTH_SHORT = 4, RESISTANCE0_NAME = 8 } }
S.equipped[10] = "luva-6"
check(G3:TooltipText("luva-11"):find("melhoria pequena"), "só armadura contra só armadura: 'melhoria pequena', sem +83%: " .. G3:TooltipText("luva-11"))
check(G3:TooltipText("luva-forca"):find("melhoria grande"), "atual fraco, novo com Força: 'melhoria grande'")
S.equipped[10] = "luva-forca"
S.itemData["luva-forca2"] = { equipLoc = "INVTYPE_HAND", subclassID = 1, stats = { ITEM_MOD_STRENGTH_SHORT = 6, RESISTANCE0_NAME = 8 } }
check(G3:TooltipText("luva-forca2"):find("melhoria %+%d+%%"), "itens com atributos: mostra a porcentagem")
ns.Engine.player.class = savedClass3

print("\n== Habilidades de arma ==")
local savedClass4 = ns.Engine.player.class
ns.Engine.player.class = "WARLOCK"
S.player.faction = "Horde"
S.known = {}
check(ns.Trainer:MissingWeapons() == nil, "sem nenhuma habilidade de arma conhecida: o sistema não existe, não mostra nada")
S.known = { [227] = true } -- conhece Cajados
local weapons = ns.Trainer:MissingWeapons()
check(weapons and #weapons == 2 and weapons[1].id == 201 and weapons[1].cities == "Mapa1458", "bruxo: falta Espadas (Undercity) e Adagas")
check(weapons[2].id == 1180 and weapons[2].cities == "Mapa1454, Mapa1458", "Adagas em Orgrimmar e Undercity")
ns.Engine.player.class = savedClass4
S.known = {}
