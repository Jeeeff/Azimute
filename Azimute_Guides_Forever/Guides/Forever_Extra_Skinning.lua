-- Convertido automaticamente de RXPGuides (Extra Skinning.lua)
-- (c) RestedXP - CC BY-NC-SA 4.0 (ver LICENSE.txt). Não edite à mão:
-- rode tools/rxp2azimute.py de novo.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id forever.x.h.1-300-skinning-h
#name 1-300 Skinning (H)
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Horde
#kind profession
#name-ptBR 1-300 Esfolamento (Horda)
#group Professions
#group-ptBR Profissões
#subgroup Gathering (adapted from Classic)
#subgroup-ptBR Coleta (adaptado do Classic)

step
    ifskillbelow skinning 75
    goto 1454 63,45.5
    zone 1454 |only Mage |opt
    zone 1454 |only !Mage |opt
    note-enUS Buy a Skinning Knife from Tamar next to Thuwd
    note-ptBR Compre uma Faca de Esfolar de Tamar, ao lado de Thuwd
    collect 7005 1
step
    ifskillbelow skinning 75
    path seq 1454 62.1,45.7
    goto 1454 63.4,45.4
    train 8613
step
    goto 1411 45.5,12.2
    zone 1411 |opt
    skill skinning 75
    path loop 1411 54.5,68.2 54.2,60.1 54.7,58.9 54.5,54.3 51.2,51.8 51.1,46.6 47.4,42.7 45.7,37.7 45,34.3 43,34.9 42.6,37 40.8,37 38.5,34.3 36.5,31.3 36.9,25 38.5,21.7 40.8,21.1 43,21.4 44.4,19.2 43.5,15.7
step
    only !Mage
    ifskillbelow skinning 125
    goto 1454 48.8,91
    zone 1454
step
    ifskillbelow skinning 125
    path seq 1454 62.1,45.7
    goto 1454 63.4,45.4
    zone 1454 |only Mage |opt
    zone 1454 |only !Mage |opt
    train 8617
step
    goto 1454 45.1,63.9
    fp |opt
    note-enUS Aim to reach at least skill level 125 before you get to Camp Taurajo
    note-ptBR Tente chegar a pelo menos 125 de habilidade antes de chegar a Camp Taurajo
    skill skinning 125
    path loop 1413 51,31.7 51,35 50.2,36.3 49.3,38 49.6,39.9 49,42.5 50.2,45.4 49.5,47.8 46,51.7 45.9,53.7 46.3,56.2
step
    ifskillbelow skinning 165
    goto 1413 45.1,59.1
    train 8618
step
    skill skinning 165
    path loop 1413 46.1,59.9 46.9,63.1 46.7,65.3 46.9,68 45.6,71.5 45.4,74.6 45,77.6 47.1,79.2 46.8,82 44.8,85.2
step
    goto 1441 32.1,22.7
    zone 1441 |opt
    skill skinning 205
    path loop 1441 31.4,25.4 30.8,28.2 31.4,31.2 30,34.2 29.9,41.7 31.2,47.5 32.2,52.4 38.8,56.7 42.9,59.7 48.4,59.4 53.3,54 57.7,56.5 61.7,60.1 66.6,61.6 69.9,62.7 72.1,67.7 71.8,74.2 72.9,81.3 77.4,84 80.9,87.7 78.6,91.1 75.7,89.7
step
    ifskillbelow skinning 230
    goto 1444 88.8,41.4
    goto 1446 51.3,21.4
    zone 1446
step
    ifskillbelow skinning 230
    goto 1446 51.6,25.4
    path seq 1444 74.7,43
    goto 1444 74.5,43
    fp |opt
    train 10768
step
    skill skinning 230
    path loop 1444 72.3,44.4 71.1,41.5 74.4,40.7 76.7,39.4 76.7,39.4 79.2,38.3 79.7,39.9 79.2,44.1 78.9,46.2 78.3,47.8 76.5,48.7 75.4,51.9 73.1,54.6
step
    note-enUS Kill the Yetis in the cave or the Hippogryphs outside, then skin them
    note-ptBR Mate os Yetis na caverna ou os Hipogrifos do lado de fora e depois esfole-os
    skill skinning 260
    path loop 1444 58.7,55 57.2,56.4 55.3,56.3 56.2,58.3 55.5,62.1 56.1,63.9 54.6,65.4 53.4,68.5 53.8,70 54.5,73.6 56.3,73.5 55.5,69.9
step
    note-enUS Kill the Yetis in the cave or the beasts outside, then skin them
    note-ptBR Mate os Yetis na caverna ou as feras do lado de fora e depois esfole-as
    skill skinning 280
    path loop 1444 48.4,37.9 49.9,33.7 52,31.8 49.4,31.5 49.5,29.3 50.1,26.4 47.6,24.5 45.8,24.6 46.5,27.5 46.3,29.9
step
    goto 1444 75.4,44.4
    note-enUS Ride back to Camp Mojache
    note-ptBR Volte montado para Camp Mojache
    fp |opt
    skill skinning 300
    path loop 1449 31.5,28.9 37.1,28.9 42.1,33.4 42.7,40.2 40.7,45.1 34.3,44.6 29.4,40 29.4,34.4 31.5,28.9
step
    note-enUS Congratulations on reaching skill level 450 in Skinning!
    note-ptBR Parabéns, você chegou ao máximo de Esfolamento!
]==])

register([==[
#format 1
#id forever.x.a.1-300-skinning-a
#name 1-300 Skinning (A)
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#kind profession
#name-ptBR 1-300 Esfolamento (Aliança)
#group Professions
#group-ptBR Profissões
#subgroup Gathering (adapted from Classic)
#subgroup-ptBR Coleta (adaptado do Classic)

step
    only !Mage
    ifskillbelow skinning 75
    zone 1453 |only Mage |opt
    zone 1453
step
    ifskillbelow skinning 75
    goto 1453 71.6,62.8
    note-enUS Buy a Skinning Knife from Jillian next to Simon
    note-ptBR Compre uma Faca de Esfolar de Jillian, ao lado de Simon
    collect 7005 1
step
    ifskillbelow skinning 75
    path seq 1453 72.6,62.1
    goto 1453 72.1,62.2
    train 8613
step
    goto 1429 32.3,49.9
    zone 1429 |opt
    skill skinning 75
    path loop 1429 32.6,83 31,85.6 32.6,87.8 33.6,85.4 32.6,83
step
    only !Mage
    ifskillbelow skinning 125
    path seq 1453 68.2,72.9
    goto 1453 71,72.5
    zone 1455 |only Mage |opt
    note-enUS Return to Stormwind
    note-ptBR Volte para Stormwind
    fly 1455
    zone 1455
step
    ifskillbelow skinning 125
    path seq 1455 42.1,33.2 40.4,35.5
    goto 1455 39.9,32.5
    zone 1455 |only !Mage |opt
    train 8617
step
    goto 1455 55.5,47.7
    fp |opt
    skill skinning 115
    path loop 1432 34.4,53.8 37.7,52.3 41.7,54.4 44.4,64.1 49.9,69.3 55.6,66.9 63.9,63.4 59.4,62 63,57 64.3,48.7 62.2,38.9 59.9,36.9 59.5,29.8
step
    skill skinning 125
    path loop 1432 61.5,40.9 72.4,41.8 76.8,47.9 77.4,41.4 59.9,28 61.5,40.9
step
    only !Mage
    ifskillbelow skinning 155
    goto 1432 33.9,51
    zone 1455 |only Mage |opt
    note-enUS Return to Thelsamar
    note-ptBR Volte para Thelsamar
    fly 1455
    zone 1455
step
    ifskillbelow skinning 155
    path seq 1455 42.1,33.2 40.4,35.5
    goto 1455 39.9,32.5
    zone 1455 |only !Mage |opt
    train 8618
step
    goto 1455 55.5,47.7
    fp |opt
    skill skinning 155
    path loop 1437 31.9,42 30.4,45.1 29.9,47.5 27.7,46.7 26.6,47.8 26.5,49.7 24.6,53.8 22.7,57.4 20.2,54.4 18.9,50.7
step
    goto 1437 9.5,59.7
    note-enUS Ride back to Menethil
    note-ptBR Volte montado para Menethil
    fp |opt
    skill skinning 185
    path loop 1417 44.9,52.8 47,54.9 49.7,50.6 52.4,46 55.2,48.3 59.4,45.1 64.4,45.4 68.6,39.1 66.8,34.3 64.3,38 59.6,38.4 55.5,42.9 51.3,40.4 46.5,41.1 43.3,38.7 42,43.4 40.7,48.4 36.2,49.8
step
    skill skinning 205
    path loop 1417 47.2,69.9 46.8,73 45.7,76.4 45.6,81.2 48.2,82.6 51.1,74.4 54.1,69.9 56.6,68 54.9,62.9 48.7,60.6 47.2,69.9
step
    only !Mage
    ifskillbelow skinning 230
    goto 1417 45.8,46.1
    zone 1455 |only Mage |opt
    note-enUS Return to Refuge Pointe
    note-ptBR Volte para Refuge Pointe
    fly 1455
    zone 1455
step
    ifskillbelow skinning 230
    path seq 1455 42.1,33.2 40.4,35.5
    goto 1455 39.9,32.5
    zone 1455 |only !Mage |opt
    train 10768
step
    only !Mage
    ifskillbelow skinning 230
    goto 1455 55.5,47.7 |only !Mage
    goto 1437 5,63.5
    zone 1445 |only Mage |opt
    fp |only !Mage |opt
    zone 1445
step
    goto 1445 67.5,51.3
    fp |opt
    skill skinning 230
    path loop 1444 72.3,44.4 71.1,41.5 74.4,40.7 76.7,39.4 76.7,39.4 79.2,38.3 79.7,39.9 79.2,44.1 78.9,46.2 78.3,47.8 76.5,48.7 75.4,51.9 73.1,54.6
step
    note-enUS Kill the Yetis in the cave or the Hippogryphs outside, then skin them
    note-ptBR Mate os Yetis na caverna ou os Hipogrifos do lado de fora e depois esfole-os
    skill skinning 260
    path loop 1444 58.7,55 57.2,56.4 55.3,56.3 56.2,58.3 55.5,62.1 56.1,63.9 54.6,65.4 53.4,68.5 53.8,70 54.5,73.6 56.3,73.5 55.5,69.9
step
    note-enUS Kill the Yetis in the cave or the beasts outside, then skin them
    note-ptBR Mate os Yetis na caverna ou as feras do lado de fora e depois esfole-as
    skill skinning 280
    path loop 1444 48.4,37.9 49.9,33.7 52,31.8 49.4,31.5 49.5,29.3 50.1,26.4 47.6,24.5 45.8,24.6 46.5,27.5 46.3,29.9
step
    goto 1445 67.5,51.3 |only Mage
    goto 1444 30.2,43.2 |only !Mage
    zone 1445 |only Mage |opt
    note-enUS Travel to Feathermoon Stronghold |only !Mage
    note-ptBR Vá para Feathermoon Stronghold |only !Mage
    fp |opt
    skill skinning 300
    path loop 1449 31.5,28.9 37.1,28.9 42.1,33.4 42.7,40.2 40.7,45.1 34.3,44.6 29.4,40 29.4,34.4 31.5,28.9
step
    note-enUS Congratulations on reaching skill level 450 in Skinning!
    note-ptBR Parabéns, você chegou ao máximo de Esfolamento!
]==])
