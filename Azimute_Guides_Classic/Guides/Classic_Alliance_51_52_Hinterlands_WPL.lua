-- Convertido automaticamente de Guidelime_Zarant (Alliance/51-52_Hinterlands-WPL.lua).
-- (c) Zarant - GNU GPL v3 (ver LICENSE.txt). Gerado por tools/guidelime2azimute.py.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id classic.a.51-52-wpl
#name 51-52 WPL
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 51-52
#zones 1422
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    turnin 5066 |opt
    turnin 5090 |opt
    turnin 5091 |opt
    accept 5092
step
    goto 1422 50.8,77.8 120
    complete 5092
step
    turnin 5092
    accept 5215
step
    turnin 5215
    accept 5216
step
    goto 1422 37.17,56.94
    complete 5216
step
    turnin 5216
    accept 5217
    note-enUS Click on the cauldron Turn in Accept
    note-ptBR Clique no caldeirão Entregue Aceite
step
    accept 5021
    note-enUS Talk to Janice Felstone inside the farm house Accept
    note-ptBR Fale com Janice Felstone dentro da casa da fazenda. Aceite
step
    turnin 5021
    accept 5022
    note-enUS Click on the parcel inside the barn Turn in Accept
    note-ptBR Clique no pacote dentro do celeiro Entregue Aceite
step
    only Hunter
    note-enUS Grind until you are If you are not yet close, do one more cauldron quest to get you where you need to be |only Hunter
    note-ptBR Faça grind até estar Se ainda não estiver perto, faça mais uma missão do caldeirão para chegar onde precisa |only Hunter
    turnin 5217
    note-enUS Turn in You can death skip to chillwind camp if you are at or close to level 52
    note-ptBR Entregue. Você pode fazer death skip até chillwind camp se estiver no nível 52 ou perto dele
step
    only Druid Mage Paladin Priest Rogue Warlock Warrior
    turnin 5217
step
    goto 1422 46.2,52 |only Hunter
    accept 5219 |only Hunter |opt
    turnin 5219 |only Hunter |opt
    accept 5220 |only Hunter |opt
    note-enUS Kill the cauldron and lord Turn in Accept |only Hunter
    note-ptBR Mate o cauldron lord. Entregue. Aceite |only Hunter
    turnin 5220 |only Hunter |opt
    hearth |opt
    note-enUS Hearth to Ironforge if your HS is off cooldown
    note-ptBR Use a Pedra de Regresso para Ironforge se ela estiver fora de recarga
    fly 1437
]==])
