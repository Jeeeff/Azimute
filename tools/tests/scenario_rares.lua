-- Raros: aviso por vignette e por classificação, sem repetir, seta do Azimute.
local S, R = STUB, MOD

local function check(cond, msg)
    if not cond then error("FALHOU: " .. msg, 2) end
    print("  ok: " .. msg)
end

S.FireEvent("ADDON_LOADED", "Azimute_Rares")
if WITH_CORE then S.FireEvent("ADDON_LOADED", "Azimute") end
S.FireEvent("PLAYER_LOGIN")
S.RunTimers()
check(AzimuteRaresDB and R.db == AzimuteRaresDB, "dados salvos próprios (AzimuteRaresDB)")

S.alerts = {}
S.player.map, S.player.x, S.player.y = 1429, 0.5, 0.5
S.vignettes["V-1"] = { name = "Mor'Ladim", atlasName = "VignetteKillElite", onMinimap = true, isDead = false, x = 0.32, y = 0.71 }
S.FireEvent("VIGNETTE_MINIMAP_UPDATED", "V-1", true)
check(S.alerts[#S.alerts] == "Raro por perto: Mor'Ladim", "aviso do raro pelo minimapa: " .. tostring(S.alerts[#S.alerts]))
check(R.last and R.last.x == 0.32 and R.last.mapID == 1429, "posição do raro guardada")
local count = #S.alerts
S.FireEvent("VIGNETTE_MINIMAP_UPDATED", "V-1", true)
check(#S.alerts == count, "não repete o mesmo raro")
S.vignettes["V-2"] = { name = "Baú", atlasName = "VignetteLoot", onMinimap = true }
S.FireEvent("VIGNETTE_MINIMAP_UPDATED", "V-2", true)
check(#S.alerts == count, "tesouro: desligado por padrão")
R.db.treasures = true
S.FireEvent("VIGNETTE_MINIMAP_UPDATED", "V-2", true)
check(S.alerts[#S.alerts] == "Tesouro por perto: Baú", "tesouro com a opção ligada")

-- pela classificação da unidade (placa de nome)
S.units = { nameplate3 = { name = "Lobo Raro" } }
S.unitClass.nameplate3 = "rare"
S.FireEvent("NAME_PLATE_UNIT_ADDED", "nameplate3")
check(S.alerts[#S.alerts] == "Raro por perto: Lobo Raro", "raro pela placa de nome")
S.units.nameplate4 = { name = S.Secret("x") }
S.unitClass.nameplate4 = "rareelite"
S.FireEvent("NAME_PLATE_UNIT_ADDED", "nameplate4")
check(S.alerts[#S.alerts] == "Raro por perto: ?", "nome secreto vira ?")
S.units.nameplate5 = { name = "Lobo Comum" }
count = #S.alerts
S.FireEvent("NAME_PLATE_UNIT_ADDED", "nameplate5")
check(#S.alerts == count, "monstro comum não avisa")

-- ir até o raro
R.last = { name = "Mor'Ladim", mapID = 1429, x = 0.32, y = 0.71 }
SlashCmdList.AZIMUTERARES("ir")
if WITH_CORE then
    check(NS.Nav:Manual() and NS.Nav:Manual().x == 0.32, "com o Azimute: seta até o raro (Indo até)")
    check(NS.UI.frame.title._text:find("Mor'Ladim"), "janela do guia mostra o raro")
else
    check(S.pin and S.pin.x == 0.32, "sem o Azimute: pino do mapa do jogo")
end
SlashCmdList.AZIMUTERARES("")
check(S.printed[#S.printed]:find("min"), "histórico de raros")
