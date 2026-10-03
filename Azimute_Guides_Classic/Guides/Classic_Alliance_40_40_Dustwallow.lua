-- Convertido automaticamente de Guidelime_Zarant (Alliance/40-40_Dustwallow.lua).
-- (c) Zarant - GNU GPL v3 (ver LICENSE.txt). Gerado por tools/guidelime2azimute.py.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id classic.a.40-40-dustwallow-marsh
#name 40-40 Dustwallow Marsh
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 40-40
#zones 1445
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    only Hunter
    goto 1437 10.7,60.9
    note-enUS Head to Menethil Harbor
    note-ptBR Vá até Menethil Harbor
    home
    note-enUS Set your HS to Wetlands
    note-ptBR Defina sua Pedra de Regresso em Wetlands
step
    goto 1413 70.84,79.14 20
    note-enUS Take the boat to Theramore
    note-ptBR Pegue o barco para Theramore
    accept 1286
step
    goto 1445 67.76,48.97
    accept 6624 |opt
    turnin 6624 |opt
    note-enUS Do the First Aid quest if applicable (Requires 225 First Aid)
    note-ptBR Faça a missão de Primeiros Socorros, se for o caso (requer 225 em Primeiros Socorros)
step
    goto 1413 69.87,77.51 20
    turnin 1260 |opt
    accept 1204
step
    complete 1204
    note-enUS Kill turtles along the coast
    note-ptBR Mate tartarugas ao longo da costa
step
    complete 1177
step
    goto 1413 67.3,58.53 151
    complete 1204
step
    goto 1413 64.22,67.57 20
    accept 1206
step
    complete 1206
step
    goto 1413 59.79,63.03 20
    accept 1222
    note-enUS Start the escort quest
    note-ptBR Inicie a missão de escolta
step
    complete 1222
step
    goto 1413 64.22,67.57 20
    turnin 1206
step
    goto 1413 53.71,73.78 20
    turnin 1177
step
    goto 1413 54.2,82.09 20
    turnin 1286
    accept 1287
step
    complete 1187
step
    goto 1413 69.87,77.51 20
    note-enUS Grind until your HS cooldown is <10min After that, die on purpose and spirit rez
    note-ptBR Faça grind até a recarga da sua Pedra de Regresso ficar <10min Depois disso, morra de propósito e ressuscite com o Spirit Healer
    turnin 1204
    accept 1258
    turnin 1222
step
    goto 1413 70.84,79.14 30
    turnin 1287
step
    fly 1446
step
    only Hunter
    note-enUS Tame a level 40/41 scorpid near Gadgetzan and learn Claw 6
    note-ptBR Dome um scorpid nível 40/41 perto de Gadgetzan e aprenda Claw 6
step
    turnin 1107
    accept 1106
    note-enUS Run to Shimmering Flats Turn in Accept
    note-ptBR Corra até Shimmering Flats. Entregue. Aceite
step
    turnin 1117
step
    accept 1118
    note-enUS Wait for the RP sequence to finish Accept
    note-ptBR Espere a sequência de RP terminar. Aceite
step
    turnin 1187
    accept 1188
step
    hearth
step
    fly 1455
]==])

register([==[
#format 1
#id classic.a.39-40-dustwallow-desolace
#name 39-40 Dustwallow/Desolace
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 39-40
#zones 1445 1443
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    only Warlock
    note-enUS Head to Menethil Harbor
    note-ptBR Vá até Menethil Harbor
    note-enUS Take the boat to Theramore
    note-ptBR Pegue o barco para Theramore
    fp
step
    only Warlock
    turnin 4965 |only Warlock |opt
    turnin 4968
step
    only Warlock
    accept 1799
step
    only Warlock
    turnin 4488 |only Warlock |opt
    turnin 4487
step
    only Warlock
    accept 4490
    turnin 4490
step
    only Warlock
    accept 4962
step
    only Warlock
    fp
step
    accept 1286
step
    goto 1445 67.76,48.97
    accept 6624 |opt
    turnin 6624 |opt
    note-enUS Do the First Aid quest if applicable (Requires 225 First Aid)
    note-ptBR Faça a missão de Primeiros Socorros, se for o caso (requer 225 em Primeiros Socorros)
step
    goto 1413 69.87,77.51 20
    turnin 1260 |opt
    accept 1204
step
    complete 1204
    note-enUS Kill turtles along the coast
    note-ptBR Mate tartarugas ao longo da costa
step
    complete 1177
step
    goto 1413 67.3,58.53 151
    complete 1204
step
    goto 1413 64.22,67.57 20
    accept 1206
step
    complete 1206
step
    goto 1413 59.79,63.03 20
    accept 1222
    note-enUS Start the escort quest
    note-ptBR Inicie a missão de escolta
step
    complete 1222
step
    goto 1413 64.22,67.57 20
    turnin 1206
step
    goto 1413 53.71,73.78 20
    turnin 1177
step
    goto 1413 54.2,82.09 20
    turnin 1286
    accept 1287
step
    complete 1187
step
    goto 1413 69.87,77.51 20
    turnin 1204
    accept 1258
    turnin 1222
step
    goto 1413 70.84,79.14 30
    turnin 1287
step
    fly 1443
step
    home
    note-enUS Set your HS to Desolace
    note-ptBR Defina sua Pedra de Regresso em Desolace
step
    accept 261
step
    accept 1466
step
    accept 6134
step
    turnin 1373
    accept 1374
step
    only Warlock
    complete 1799 |opt
step
    only Warlock
    complete 4962 |opt
    note-enUS Kill a felhound while draining it with the quest item provided
    note-ptBR Mate um felhound enquanto o drena com o item de missão fornecido
step
    complete 1466
step
    complete 261 |opt
    complete 6134
    note-enUS Clear up the center area, set up the ghost magnets and pull ghosts 1 by 1
    note-ptBR Limpe a área central, monte os ghost magnets e puxe os fantasmas 1 por 1
step
    complete 261
step
    complete 1374
step
    accept 6132
    note-enUS Start the escort quest Accept
    note-ptBR Inicie a missão de escolta. Aceite
step
    turnin 6132
step
    only Warlock
    complete 1799
step
    turnin 6134
step
    turnin 1374
step
    goto 1444 54.81,47.99 20
    note-enUS Head south to Feralas
    note-ptBR Siga para o sul até Feralas
    note-enUS Once you get to feralas, die and rez at the Dire Maul GY
    note-ptBR Ao chegar a feralas, morra e ressuscite no cemitério de Dire Maul
step
    path seq 1444 41.9,39.5
    goto 1444 31.83,48.12 20
    note-enUS Run west towards the coast
    note-ptBR Corra para o oeste em direção à costa
    note-enUS Find a water elemental/sea giant and pull it while swimming southwest towards the Feathermoon graveyard
    note-ptBR Encontre um water elemental/sea giant e puxe-o enquanto nada para o sudoeste em direção ao cemitério de Feathermoon
    note-enUS Die and spirit rez at Feathermoon
    note-ptBR Morra e ressuscite com o Spirit Healer em Feathermoon
step
    fly 1446
step
    note-enUS Run to Shimmering Flats
    note-ptBR Corra até Shimmering Flats
    turnin 1107
step
    accept 1106
step
    turnin 1117
step
    accept 1118
    note-enUS Wait for the RP sequence to finish Accept
    note-ptBR Espere a sequência de RP terminar. Aceite
step
    turnin 1187
    accept 1188
step
    hearth
    note-enUS Hearth back to Nijel's Point
    note-ptBR Use a Pedra de Regresso para voltar a Nijel's Point
step
    turnin 261
    note-enUS Turn in Skip the follow up
    note-ptBR Entregue. Pule a continuação
step
    turnin 1466
    accept 1467
step
    fp
    note-enUS Use the website unstuck service to teleport to SW OR Head back to Tanaris, fly to and take the boat to menethil
    note-ptBR Use o serviço de unstuck do site para teleportar para SW OU volte para Tanaris, voe para e pegue o barco para menethil
]==])
