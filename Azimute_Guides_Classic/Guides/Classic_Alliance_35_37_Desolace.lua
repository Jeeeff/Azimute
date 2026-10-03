-- Convertido automaticamente de Guidelime_Zarant (Alliance/35-37_Desolace.lua).
-- (c) Zarant - GNU GPL v3 (ver LICENSE.txt). Gerado por tools/guidelime2azimute.py.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id classic.a.35-36-desolace
#name 35-36 Desolace
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 35-36
#zones 1443
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    goto 1455 67.91,17.5 20
    accept 1453
step
    note-enUS Take the boat to Darkshore
    note-ptBR Pegue o barco para Darkshore
step
    fly 1442
step
    path seq 1443 54.76,0.47
    goto 1443 66.4,11.82
    note-enUS Head to Desolace Fly to Desolace if you have the FP
    note-ptBR Vá até Desolace Voe até Desolace se tiver o caminho de voo
    accept 1437
step
    path seq 1443 64.66,10.53
    goto 1443 66.28,6.55
    fp |opt
    home
    note-enUS Set your HS to
    note-ptBR Defina sua Pedra de Regresso em
step
    turnin 1453
    accept 1454
    accept 1458
step
    accept 1387
    accept 1382
step
    complete 1458
step
    turnin 1458
    accept 1459
step
    complete 1459 |opt
    note-enUS Kill scorpids/aged kodos as you quest
    note-ptBR Mate scorpids/aged kodos enquanto faz missões
step
    turnin 1437
    accept 1465
step
    accept 5741
step
    turnin 1454
    accept 1455
    note-enUS Click on the small chest on the ground Turn in Accept
    note-ptBR Clique no pequeno baú no chão Entregue Aceite
step
    accept 6161
    note-enUS Click on the small book on the ground next to the chest Accept
    note-ptBR Clique no livrinho no chão ao lado do baú Aceite
step
    goto 1443 33.1,29.8 130
    objective 6161/1
    note-enUS Murder some crab people
    note-ptBR Mate uns homens-caranguejo
step
    hearth |opt
    note-enUS Grind until your HS is off cooldown Hearth back to Nijel's Point
    note-ptBR Faça grind até sua Pedra de Regresso sair da recarga Use a Pedra de Regresso para voltar a Nijel's Point
    turnin 1455
    accept 1456
step
    turnin 1465
    accept 1438
step
    complete 5741
    note-enUS Climb the tower, kill a Burning Blade Seer
    note-ptBR Suba a torre, mate um Burning Blade Seer
step
    turnin 1438
    accept 1439
step
    complete 1439
step
    turnin 1439
step
    accept 1440
step
    complete 1440
step
    accept 5501
step
    accept 5561
step
    goto 1443 72,76 160
    complete 1387 |opt
step
    goto 1443 72,76 160
    complete 1382
    note-enUS Keep killing centaurs until you get friendly rep. with Gelkis centaur
    note-ptBR Continue matando centauros até ficar com reputação amigável com Gelkis centaur
step
    complete 5501 |opt
step
    turnin 5561 |opt
    note-enUS Do Grind mobs on your way back and forth Be on the lookout for the kodos that patrol next to the quest giver
    note-ptBR Faça Faça grind de mobs na ida e na volta Fique atento aos kodos que patrulham perto de quem dá a missão
step
    complete 1459
step
    turnin 5501
step
    turnin 5741
    accept 6027
step
    objective 6161/2 |opt
step
    complete 1456 |opt
step
    goto 1443 28.26,6.57
    complete 6027
    note-enUS Click on the naga statue
    note-ptBR Clique na estátua naga
step
    turnin 6161
step
    complete 1456
step
    turnin 6027
step
    hearth
    note-enUS Keep grinding mobs until your HS is off cooldown Hearth back to Nijel's Point
    note-ptBR Continue o grind de mobs até sua Pedra de Regresso sair da recarga Use a Pedra de Regresso para voltar a Nijel's Point
step
    turnin 1456
    accept 1457
    turnin 1459
step
    turnin 1387
step
    turnin 1440
step
    only Hunter
    note-enUS Unstuck and spirit rez at the kodo graveyard
    note-ptBR Use o unstuck e ressuscite pelo curandeiro espiritual no cemitério dos kodos
    note-enUS Tame a Scorpashi Lasher Learn claw rank 5
    note-ptBR Dome um Scorpashi Lasher. Aprenda claw rank 5
step
    turnin 1382
step
    goto 1443 41.13,91.72 20
step
    goto 1444 54.81,47.99 20
    note-enUS Once you get to feralas, unstuck and rez at the Dire Maul GY
    note-ptBR Ao chegar a feralas, use o unstuck e ressuscite no cemitério de Dire Maul
step
    path seq 1444 43.33,42.77
    goto 1444 31.83,48.12 20
    note-enUS Run to the edge of the dock and unstuck Spirit rez at Feathermoon
    note-ptBR Corra até a ponta do cais e use o unstuck. Ressuscite pelo curandeiro espiritual em Feathermoon
step
    fly 1446
step
    turnin 1112
    note-enUS Run to Thousand Needles Turn in
    note-ptBR Corra até Thousand Needles. Entregue
step
    accept 1107
step
    turnin 1183
    accept 1186
step
    turnin 1186
    accept 1187
step
    accept 1114
step
    turnin 1114
step
    accept 1115
step
    path seq 1446 50.52,18.94
    goto 1446 51,29.3
    fp
    note-enUS You have 2 options going into the next segment: Fly to and take the boat to Booty Bay OR You can use the unstuck self service through the battle.net website and teleport to SW
    note-ptBR Você tem 2 opções para o próximo segmento: voe para e pegue o barco para Booty Bay OU use o unstuck de autoatendimento pelo site battle.net e teleporte para SW
]==])

register([==[
#format 1
#id classic.a.35-37-desolace
#name 35-37 Desolace
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 35-37
#zones 1443
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    goto 1455 67.91,17.5 20
    accept 1453
step
    note-enUS Take the boat to Darkshore
    note-ptBR Pegue o barco para Darkshore
step
    fly 1442
step
    goto 1443 54.76,0.47 60
step
    accept 1437
step
    goto 1443 64.66,10.53
    fp
step
    goto 1443 66.28,6.55
    home
    note-enUS Set your HS to
    note-ptBR Defina sua Pedra de Regresso em
step
    turnin 1453
    accept 1454
    accept 1458
step
    accept 1387
    accept 1382
step
    complete 1458
step
    turnin 1458
    accept 1459
step
    complete 1459 |opt
    note-enUS Kill scorpids/aged kodos as you quest
    note-ptBR Mate scorpids/aged kodos enquanto faz missões
step
    turnin 1437
    accept 1465
step
    accept 5741
step
    turnin 1454
    accept 1455
    note-enUS Click on the small chest on the ground Turn in Accept
    note-ptBR Clique no pequeno baú no chão Entregue Aceite
step
    accept 6161
    note-enUS Click on the small book on the ground next to the chest Accept
    note-ptBR Clique no livrinho no chão ao lado do baú Aceite
step
    goto 1443 33.1,29.8 130
    objective 6161/1
    note-enUS Murder some crab people
    note-ptBR Mate uns homens-caranguejo
step
    accept 5561
step
    goto 1443 72,76 160
    complete 1387 |opt
step
    goto 1443 72,76 160
    complete 1382
    note-enUS Keep killing centaurs until you get friendly rep. with Gelkis centaur
    note-ptBR Continue matando centauros até ficar com reputação amigável com Gelkis centaur
step
    turnin 1382
    accept 1384
step
    hearth |opt
    note-enUS Grind until your HS is off cooldown Hearth back to Nijel's Point
    note-ptBR Faça grind até sua Pedra de Regresso sair da recarga Use a Pedra de Regresso para voltar a Nijel's Point
    turnin 1455
    accept 1456
step
    turnin 1465
    accept 1438
step
    complete 1384
step
    accept 5501
step
    complete 5741
    note-enUS Climb the tower, kill a Burning Blade Seer
    note-ptBR Suba a torre, mate um Burning Blade Seer
step
    turnin 1438
    accept 1439
step
    complete 1439
step
    turnin 1439
step
    accept 1440
step
    complete 1440
step
    turnin 5741
    accept 6027
step
    objective 6161/2 |opt
step
    complete 1456 |opt
step
    goto 1443 28.26,6.57
    complete 6027
    note-enUS Click on the naga statue
    note-ptBR Clique na estátua naga
step
    turnin 6161
step
    complete 1456
step
    turnin 6027
step
    turnin 1384
    accept 1370
step
    complete 5501 |opt
    turnin 5561 |opt
    note-enUS Do Grind mobs on your way back and forth Be on the lookout for the kodos that patrol next to the quest giver
    note-ptBR Faça Faça grind de mobs na ida e na volta Fique atento aos kodos que patrulham perto de quem dá a missão
step
    complete 1370
step
    complete 5501
step
    objective 1459/2
    note-enUS Make sure you have 3 Aged Kodo Hides
    note-ptBR Certifique-se de ter 3 Aged Kodo Hides
step
    turnin 5501
step
    complete 1459
step
    note-enUS Die on purpose and spirit rez
    note-ptBR Morra de propósito e ressuscite com o Spirit Healer
    turnin 1370
    accept 1373
step
    hearth
step
    turnin 1456
    accept 1457
    turnin 1459
step
    turnin 1387
step
    turnin 1440
step
    fly 1446
step
    turnin 1112
    note-enUS Run to Thousand Needles Turn in
    note-ptBR Corra até Thousand Needles. Entregue
step
    accept 1107
step
    turnin 1183
    accept 1186
step
    turnin 1186
    accept 1187
step
    accept 1114
step
    turnin 1114
step
    accept 1115
step
    path seq 1446 50.52,18.94
    goto 1446 51,29.3
    fp
    note-enUS You have 2 options going into the next segment: Fly to and take the boat to Booty Bay OR You can use the unstuck self service through the battle.net website and teleport to SW
    note-ptBR Você tem 2 opções para o próximo segmento: voe para e pegue o barco para Booty Bay OU use o unstuck de autoatendimento pelo site battle.net e teleporte para SW
]==])
