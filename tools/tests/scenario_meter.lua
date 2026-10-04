-- Medidor: lê o C_DamageMeter falso, mostra barras, aguenta valores secretos.
local S, M = STUB, MOD

local function check(cond, msg)
    if not cond then error("FALHOU: " .. msg, 2) end
    print("  ok: " .. msg)
end

S.FireEvent("ADDON_LOADED", "Azimute_Meter")
if WITH_CORE then S.FireEvent("ADDON_LOADED", "Azimute") end
S.FireEvent("PLAYER_LOGIN")
S.RunTimers()
check(AzimuteMeterDB and M.db == AzimuteMeterDB, "dados salvos próprios (AzimuteMeterDB)")
check(SlashCmdList.AZIMUTEMETER ~= nil, "comando /azm registrado")

if WITH_CORE then
    local found = false
    for _, module in ipairs(NS.modules) do if module.name == M.L["TITLE"] then found = true end end
    check(found, "aparece no menu de módulos do Azimute")
    return
end

local W = M.Window
-- amountPerSecond vem errado do jogo no Forever (minúsculo): o medidor calcula total / duração (20 s)
S.dm.current = { maxAmount = 3000, totalAmount = 5000, durationSeconds = 20, combatSources = {
    { name = "Jeeff-Ossada", sourceGUID = "Player-1", classFilename = "WARLOCK", specIconID = 136145, totalAmount = 3000, amountPerSecond = 2.4e-05, isLocalPlayer = true },
    { name = "Thrall", sourceGUID = "Player-2", classFilename = "SHAMAN", specIconID = 0, totalAmount = 2000, amountPerSecond = 1.6e-05 },
} }
S.FireEvent("DAMAGE_METER_COMBAT_SESSION_UPDATED", 0, 1)
S.RunTimers()
local bars = W.frame.bars
check(bars[1] and bars[1]._shown and bars[2]._shown, "duas barras")
check(bars[1].name._text == "1. Jeeff", "nome sem reino e com posição: " .. tostring(bars[1].name._text))
check(bars[1].value._text == "3.0K (150) 60%", "valor + por segundo + porcentagem: " .. tostring(bars[1].value._text))
check(W.frame.title._text == "Dano - Luta atual", "título: " .. tostring(W.frame.title._text))

-- modo DPS: por segundo vem primeiro, sem porcentagem
M.Meter:SetMode(2)
check(bars[1].value._text == "150 (3.0K)", "DPS primeiro: " .. tostring(bars[1].value._text))
M.Meter:SetMode(1)

-- em combate: tudo secreto, nada de conta; a janela continua mostrando
S.dm.secret = true
S.combat = true
S.FireEvent("PLAYER_REGEN_DISABLED")
local ok, err = pcall(function() W:Refresh() end)
check(ok, "atualiza com valores secretos sem erro " .. tostring(err))
check(issecretvalue(bars[1].name._text), "nome secreto vai direto para o texto")
check(issecretvalue(bars[1].value._text), "valor secreto vai direto para o texto (sem porcentagem)")
check(not M.Meter:ReportLines(5), "relatório bloqueado em combate")
W:ShowBreakdown(bars[1].source)
check(W.breakdown.message._text == M.L["BREAKDOWN_SECRET"], "detalhes por feitiço: aviso em combate")
S.dm.secret = false
S.combat = false
S.FireEvent("PLAYER_REGEN_ENABLED")
S.RunTimers()

-- detalhes por feitiço fora de combate
S.dm.breakdown = { ["Player-1"] = { maxAmount = 2000, totalAmount = 3000, combatSpells = {
    { spellID = 686, totalAmount = 2000, amountPerSecond = 100 },
    { spellID = 172, totalAmount = 1000, amountPerSecond = 50 },
} } }
W:ShowBreakdown(bars[1].source)
check(W.breakdown._shown and W.breakdown.rows[1]._shown and W.breakdown.rows[2]._shown, "painel com 2 feitiços")
check(W.breakdown.rows[1].name._text == "Feitiço686", "nome do feitiço pelo jogo")

-- relatório
S.group = true
SlashCmdList.AZIMUTEMETER("relatar grupo")
check(#S.chat == 3 and S.chat[1]:find("^PARTY:Azimute %- Dano") and S.chat[2] == "PARTY:1. Jeeff 3.0K (60%)", "relatório no grupo: " .. tostring(S.chat[2]))

-- menu: trocar para Total e lutas anteriores
S.dm.sessions = { { sessionID = 7, name = "Hogger", durationSeconds = 75 } }
S.dm.byID = { [7] = S.dm.current }
W:OpenMenu(W.frame.header)
local total = S.MenuFind(S.menu, M.L["SEG_OVERALL"])
total.onSelect()
check(M.db.segment == "overall" and S.dm.calls[#S.dm.calls]:find("^type:0:"), "menu: luta total")
local fights = S.MenuFind(S.menu, M.L["SEG_FIGHTS"])
check(fights and fights.items[1].label == "Hogger (1:15)", "lutas anteriores com duração: " .. tostring(fights and fights.items[1].label))
fights.items[1].onSelect()
check(M.db.segment == 7 and W.frame.title._text == "Dano - Hogger", "luta anterior escolhida: " .. tostring(W.frame.title._text))

-- zerar
SlashCmdList.AZIMUTEMETER("zerar")
check(S.dm.resets == 1 and M.db.segment == "current", "zerar chama o jogo e volta para a luta atual")

-- visibilidade
M.db.onlyInGroup = true
S.group = false
S.FireEvent("GROUP_ROSTER_UPDATE")
check(not W.frame._shown, "só em grupo: some quando solo")
S.group = true
S.FireEvent("GROUP_ROSTER_UPDATE")
check(W.frame._shown, "volta ao entrar em grupo")
M.db.onlyInGroup = false

-- indisponível
S.dm.available = false
W:Refresh()
check(W.frame.empty._text:find("nível baixo"), "avisa quando o jogo não libera o medidor")
S.dm.available = true

-- funciona sem C_DamageMeter (cliente antigo): não quebra
local saved = C_DamageMeter
C_DamageMeter = nil
check(pcall(function() W:Refresh() end), "sem C_DamageMeter não dá erro")
C_DamageMeter = saved

-- números ainda lacrados depois do combate: redesenha sozinho quando o jogo libera
M.db.segment = "current"
S.dm.secret = true
W:Refresh()
check(issecretvalue(bars[1].name._text) and W.secretTicker ~= nil, "ainda lacrado fora do combate: fica tentando de novo")
S.dm.secret = false
S.Tick()
check(bars[1].name._text == "1. Jeeff" and W.secretTicker == nil, "jogo liberou: redesenha com tudo e para de tentar")
check(bars[1].value._text == "3.0K (150) 60%", "por segundo calculado pela duração: " .. tostring(bars[1].value._text))

-- ===== Recursos inspirados no Details! =====
S.dm.secret = false
M.db.segment = "current"
local T = M.Meter.TYPE

-- dica da barra: 3 feitiços principais com porcentagem
local tipLines = {}
GameTooltip.AddDoubleLine = function(_, a, b) table.insert(tipLines, a .. " " .. b) end
W:BarTooltip(bars[1])
check(tipLines[1] == "Feitiço686 2.0K (67%)", "dica da barra com os feitiços principais: " .. tostring(tipLines[1]))

-- alvos: dano do jogador em cada monstro
S.dm.byType = { [T.EnemyDamageTaken] = { totalAmount = 3500, maxAmount = 2000, combatSources = {
    { name = "Kobold", sourceCreatureID = 6, totalAmount = 2000 },
    { name = "Lobo", sourceCreatureID = 299, totalAmount = 1500 },
} } }
S.dm.enemies = {
    [6] = { combatSpells = { { spellID = 686, totalAmount = 1200, combatSpellDetails = { unitName = "Jeeff-Ossada", amount = 1200 } },
                             { spellID = 403, totalAmount = 800, combatSpellDetails = { unitName = "Thrall", amount = 800 } } } },
    [299] = { combatSpells = { { spellID = 172, totalAmount = 1500, combatSpellDetails = { unitName = "Jeeff-Ossada", amount = 1500 } } } },
}
local targets = M.Meter:Targets(bars[1].source)
check(#targets == 2 and targets[1].name == "Lobo" and targets[1].amount == 1500 and targets[2].amount == 1200, "alvos do jogador (dano em cada monstro)")
W.breakdown.view = "targets"
W:ShowBreakdown(bars[1].source)
check(W.breakdown.rows[1].name._text == "Lobo" and W.breakdown.toggle._text == "Feitiços", "painel mostra os alvos e o botão volta aos feitiços")
W.breakdown.view = "spells"

-- mouse e clique na barra (scripts da própria barra: "self" é a janela)
local tooltipBar
local barTooltip = W.BarTooltip
W.BarTooltip = function(win, bar) tooltipBar = { win = win, bar = bar } end
bars[1]._scripts.OnEnter(bars[1])
check(tooltipBar and tooltipBar.win == W and tooltipBar.bar == bars[1], "passar o mouse na barra mostra a dica (sem erro)")
W.BarTooltip = barTooltip
local shown
local showBreakdown = W.ShowBreakdown
W.ShowBreakdown = function(win, source) shown = source end
bars[1]._scripts.OnMouseUp(bars[1], "LeftButton")
check(shown == bars[1].source, "clicar na barra abre os detalhes do jogador")
W.ShowBreakdown = showBreakdown

-- dano evitável: mortal em vermelho, evitável em laranja
S.dm.breakdown["Player-1"].combatSpells[1].isDeadly = true
S.dm.breakdown["Player-1"].combatSpells[2].isAvoidable = true
M.Meter:SetMode(9) -- dano evitável sofrido (índice no menu)
local colors = {}
W.breakdown.rows[1].SetStatusBarColor = function(_, r) colors[1] = r end
W.breakdown.rows[2].SetStatusBarColor = function(_, r, g) colors[2] = g end
W:ShowBreakdown(bars[1].source)
check(colors[1] == 0.9 and colors[2] == 0.55, "evitável/mortal destacados em laranja/vermelho")
M.Meter:SetMode(1)

-- recap de morte (modo Mortes)
S.dm.byType[T.Deaths] = { totalAmount = 1, maxAmount = 1, combatSources = {
    { name = "Jeeff-Ossada", sourceGUID = "Player-1", classFilename = "WARLOCK", totalAmount = 1, deathRecapID = 42, isLocalPlayer = true } } }
S.recaps[42] = { max = 500, events = {
    { spellName = "Mordida", sourceName = "Lobo", amount = 120, currentHP = 0 },
    { spellName = "Garra", sourceName = "Lobo", amount = 200, currentHP = 120 },
} }
local events, maxHealth = M.Meter:DeathRecap({ deathRecapID = 42 })
check(#events == 2 and maxHealth == 500 and events[2].killing, "recap de morte lido do jogo (maior golpe destacado)")
local deathsIndex
for i, mode in ipairs(M.Meter.MODES) do if mode.type == T.Deaths then deathsIndex = i end end
M.Meter:SetMode(deathsIndex)
W:ShowBreakdown(S.dm.byType[T.Deaths].combatSources[1])
check(W.breakdown.view == "death" and W.breakdown.rows[2].value._text:find("%-200") , "modo Mortes: painel mostra o recap")
W.breakdown.toggle._scripts.OnClick(W.breakdown.toggle)
check(S.openedRecap == 42, "botão abre o recap do próprio jogo")
M.Meter:SetMode(1)
S.printed = {}
M.Meter:AnnounceDeath()
check(S.printed[1] and S.printed[1]:find("Maior golpe: Garra de Lobo"), "resumo da morte no chat: " .. tostring(S.printed[1]))

-- histórico salvo
S.dm.byType[T.Deaths] = nil
S.dm.duration = 30
M.db.history = {}
S.dm.byType[T.HealingDone] = { totalAmount = 100, maxAmount = 100, combatSources = { { name = "Thrall", classFilename = "SHAMAN", totalAmount = 100 } } }
check(M.Meter:SaveFight() and #M.db.history == 1, "luta salva depois do combate")
S.dm.secret = true
check(not M.Meter:SaveFight(), "números ainda lacrados: espera para salvar")
S.dm.secret = false
M.Meter:SetSegment("saved:1")
check(W.frame.title._text:find("Dano %- ") and bars[1].name._text == "1. Jeeff", "luta salva aparece na janela")
check(select(2, M.Meter:Breakdown(bars[1].source)) == "saved", "luta salva não tem detalhes por feitiço (avisa)")
M.Meter:SetSegment("current")

-- mostrador pessoal
M.db.personal = true
M.Personal:Apply()
M.Personal:Update()
check(M.Personal.frame._shown and M.Personal.frame.text._text == "Seu DPS: 100 (3.0K)", "mostrador pessoal: " .. tostring(M.Personal.frame.text._text))
S.dm.secret = true
M.Personal:Update()
check(issecretvalue(M.Personal.frame.text._text), "em combate: mostra o total lacrado direto no texto")
S.dm.secret = false

-- segunda janela: modo próprio (cura por padrão), escondida até ligar
local W2 = M.Window2
check(W2 and not W2.frame._shown, "segunda janela existe e começa escondida")
SlashCmdList.AZIMUTEMETER("2")
check(W2.frame._shown and M.db.secondWindow, "/azm 2 mostra a segunda janela")
S.dm.byType[T.HealingDone] = { totalAmount = 100, maxAmount = 100, combatSources = { { name = "Thrall", classFilename = "SHAMAN", totalAmount = 100 } } }
W2:Refresh()
W:Refresh()
check(W2.frame.title._text:find("^Cura") and W.frame.title._text:find("^Dano"), "cada janela com seu modo: " .. W2.frame.title._text .. " / " .. W.frame.title._text)
check(W2.frame.bars[1].name._text == "1. Thrall", "segunda janela mostra a cura")
M.Meter:SetMode(4, W2.cfg)
check(M.db.modeIndex == 1 and M.db.window2.modeIndex == 4, "trocar o modo de uma não muda a outra")
SlashCmdList.AZIMUTEMETER("2")
check(not W2.frame._shown, "/azm 2 esconde")
