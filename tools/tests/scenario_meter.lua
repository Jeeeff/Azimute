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
S.dm.current = { maxAmount = 3000, totalAmount = 5000, combatSources = {
    { name = "Jeeff-Ossada", sourceGUID = "Player-1", classFilename = "WARLOCK", specIconID = 136145, totalAmount = 3000, amountPerSecond = 150, isLocalPlayer = true },
    { name = "Thrall", sourceGUID = "Player-2", classFilename = "SHAMAN", specIconID = 0, totalAmount = 2000, amountPerSecond = 100 },
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
