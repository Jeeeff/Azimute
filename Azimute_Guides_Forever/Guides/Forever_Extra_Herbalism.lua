-- Convertido automaticamente de RXPGuides (Extra Herbalism.lua)
-- (c) RestedXP - CC BY-NC-SA 4.0 (ver LICENSE.txt). Não edite à mão:
-- rode tools/rxp2azimute.py de novo.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id forever.x.h.1-300-herbalism-h
#name 1-300 Herbalism (H)
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Horde
#kind profession
#name-ptBR 1-300 Herborismo (Horda)
#group Professions
#group-ptBR Profissões
#subgroup Gathering (adapted from Classic)
#subgroup-ptBR Coleta (adaptado do Classic)

step
    ifskillbelow herbalism 70
    goto 1458 54,49.5
    zone 1458 |only Mage |opt
    note-enUS Teleport to Undercity |only Mage
    note-ptBR Teleporte-se para Undercity |only Mage
    note-enUS Hearth to Dalaran |only !Mage
    note-ptBR Use a pedra de regresso para Dalaran |only !Mage
    zone 1458 |only !Mage |opt
    note-enUS In Dalaran, take the portal to Undercity |only !Mage
    note-ptBR Em Dalaran, pegue o portal para Undercity |only !Mage
    train 2366
    note-enUS Train Apprentice Herbalism (1-75) from Martha in Undercity
    note-ptBR Treine Apprentice Herbalism (1-75) com Martha em Undercity
step
    ifskillbelow herbalism 70
    path seq 1458 53.8,54.5
    goto 1458 67.8,14.4
    goto 1420 61.9,64.9
    note-enUS Jump onto the light near the stairs and then log out, and back in. This will save you a LOT of time
    note-ptBR Pule na luz perto das escadas e depois saia do jogo e entre de novo. Isso vai economizar MUITO tempo
    note-enUS If you can't do this, just run out of Undercity normally
    note-ptBR Se não conseguir, saia de Undercity normalmente
    zone 1420
    note-enUS Exit Undercity into Tirisfal Glades
    note-ptBR Saia de Undercity para Tirisfal Glades
step
    skill herbalism 70
    note-enUS Level your Herbalism from 1-70 in Tirisfal Glades. Press "M" to open your map to see the route.
    note-ptBR Suba seu Herbalism de 1-70 em Tirisfal Glades. Aperte "M" para abrir o mapa e ver a rota.
    path loop 1420 53.7,59.8 51.5,62.2 49.1,66.4 43.4,67.3 42.5,64.3 42.1,60.1 41.3,53.8 39.4,50.5 30.6,49.7 30.5,46.6 37.4,45.9 39.1,39.1 44.7,40.5 43.7,31.9 48.7,29.8 52.2,28.6 47.8,43.1 45.7,46.1 46.8,52 50.1,55.2 52.8,48.5 56,48.5 58.5,47.6 60.2,44.8 57.4,39 57,33.1 58.3,30.6 61.6,32.7 63.7,35.4 66.6,35.6 63.5,44 63.7,48.5 65.5,51.4 58.5,58.2 56.8,59.6 53.7,59.8
step
    only !Mage
    ifskillbelow herbalism 115
    path seq 1458 66.2,1.5 65.9,44.1
    goto 1458 54,49.5 50
    zone 1458 |only Mage |opt
    note-enUS Teleport to Undercity |only Mage
    note-ptBR Teleporte-se para Undercity |only Mage
    note-enUS Ride back to Martha in Undercity
    note-ptBR Volte de montaria para Martha em Undercity
step
    only !Mage
    ifskillbelow herbalism 115
    note-enUS Hearth to Dalaran
    note-ptBR Use a pedra de regresso para Dalaran
step
    ifskillbelow herbalism 115
    goto 1458 54,49.5
    zone 1458 |only !Mage |opt
    note-enUS In Dalaran, take the portal to Undercity |only !Mage
    note-ptBR Em Dalaran, pegue o portal para Undercity |only !Mage
    train 2368
    note-enUS Train Journeyman Herbalism (75-150) from Martha in Undercity
    note-ptBR Treine Journeyman Herbalism (75-150) com Martha em Undercity
step
    path seq 1458 65.9,44.1
    goto 1458 63.3,48.6
    fp |opt
    note-enUS Fly to The Sepulcher
    note-ptBR Voe para The Sepulcher
    skill herbalism 115
    note-enUS Level your Herbalism from 70-115 in Silverpine Forest
    note-ptBR Suba seu Herbalism de 70-115 em Silverpine Forest
    path loop 1421 51.9,42.9 48.9,33.3 45.1,30.3 47.6,24.9 52,20.9 55.1,15.7 58.4,12.1 64.3,9.1 65.3,11.3 60.5,14.1 56.2,18.7 55.8,22.5 56.2,29.3 55.4,31.9 52.5,31.2 54.6,35.9 54.4,43.1 52.2,49.8 54.7,58.5 55.8,64.5 61.5,64.3 64.2,76.9 60.1,78.3 55.1,76.3 51.7,77.6 49.5,80.1 46.1,80.8 50.1,74.3 51.4,68.1 51.7,56.4 48,52.6 45.5,53.6 44.1,50.4 45.1,47.5 49,46.8 51.9,42.9
step
    goto 1421 45.6,42.6
    goto 1424 21,46.2
    note-enUS Travel to Hillsbrad Foothills. If you're close to the border, then ride there - otherwise ride back to The Sepulcher and fly to Tarren Mill
    note-ptBR Vá para Hillsbrad Foothills. Se estiver perto da divisa, vá montado; senão, volte a The Sepulcher e voe para Tarren Mill
    fp |opt
    note-enUS Fly to Tarren Mill
    note-ptBR Voe para Tarren Mill
    skill herbalism 150
    note-enUS Level your Herbalism from 115-150 in Hillsbrad Foothills
    note-ptBR Suba seu Herbalism de 115-150 em Hillsbrad Foothills
    path loop 1424 56.2,28 55.7,17.7 58.6,15 63.6,13 66.8,8.2 70.4,15.9 71.8,23.2 75.9,30.5 84.4,33.4 87.3,37.3 86.3,39.8 76.7,32.9 70.7,38.6 64.9,45.7 64.3,52.4 70.2,53.2 75.4,55.4 70.6,63.1 67.1,69 68.9,83.8 64.6,73 60.9,67 56.2,52.8 51.5,46.2 46.3,47.6 45.6,51.5 43.3,61.3 40.1,64.3 35.6,63.5 37.4,56 33.2,55.4 25.4,53.2 21.7,54.1 16.9,54.1 14.7,51.6 18.1,44.2 22.4,42.4 25.7,42.7 26.2,33.9 31.6,29.8 38.7,32.7 42,38.2 47.5,35.1 48.2,31.2 53.1,31.6 56.2,28
step
    ifskillbelow herbalism 225
    goto 1424 60.1,18.6
    train 3570
    note-enUS Train Expert Herbalism (150-225) from Aranae in Tarren Mill
    note-ptBR Treine Expert Herbalism (150-225) com Aranae em Tarren Mill
step
    goto 1424 60.1,18.6 |only !Mage
    zone 1435 |only Mage |opt
    note-enUS Teleport to Stonard |only Mage
    note-ptBR Teleporte-se para Stonard |only Mage
    fp |only !Mage |opt
    note-enUS Fly to Stonard |only !Mage
    note-ptBR Voe para Stonard |only !Mage
    note-enUS Focus on Liferoot and Kingsblood to start with, and Fadeleaf when you reach 160 skill
    note-ptBR Foque em Liferoot e Kingsblood no começo, e em Fadeleaf quando chegar a 160 de habilidade
    skill herbalism 170
    note-enUS Level your Herbalism from 150-170 in Swamp of Sorrows
    note-ptBR Suba seu Herbalism de 150-170 em Swamp of Sorrows
    path loop 1435 37.2,46.5 30,51.3 26.8,58.7 23.4,58.8 19.4,55.1 17,59.8 13.2,62.7 13.6,52.7 18.3,45.4 12.2,32.9 21.9,44.7 28.7,38.8 34,35 45.2,34 61.3,33.1 74.1,24.2 76.7,15.2 82.4,25.6 78.3,36 87.5,43.8 83.4,47.6 86.9,58.8 81.6,62.5 78.4,67 83.3,71.7 76,77.5 68.9,69.8 58.9,59 56.8,49 46.8,39.5 37.2,46.5
step
    note-enUS Now focus on Goldthorn and when you get to 185 skill, Khadgar's Whisker
    note-ptBR Agora foque em Goldthorn e, quando chegar a 185 de habilidade, em Khadgar's Whisker
    skill herbalism 225
    note-enUS Level your Herbalism from 170-225 in Swamp of Sorrows
    note-ptBR Suba seu Herbalism de 170-225 em Swamp of Sorrows
    path loop 1435 54.5,42.1 44.8,41.9 30.8,51.2 26.7,61.6 23.2,59.5 20.9,53.4 17.1,55.1 15.1,64 11.8,63.7 14.8,46.3 18,46.1 17,42.3 10.9,37.1 10.7,32.1 14.9,33.2 19.4,43.7 21.6,40.7 26.3,44.3 30.2,34.8 34.1,40.7 38.3,38.5 37.4,32.4 45.7,31.3 52.8,30.6 63.4,20.9 70.3,13.1 81.2,22 86.4,42.3 86.2,62.1 82.8,72.2 75.4,86.1 69.1,77.5 64.5,68.6 73.3,72.4 81.3,59.1 79.3,43.9 70.1,35 61.2,41.1 56.1,59.1 54.5,42.1
step
    only !Mage
    ifskillbelow herbalism 300
    path seq 1419 52,7.7
    goto 1419 58.8,60.2 50
    zone 1454 |only Mage |opt
    note-enUS Teleport to Orgrimmar |only Mage
    note-ptBR Teleporte-se para Orgrimmar |only Mage
    note-enUS Go into Blasted Lands. Go through the Dark Portal
    note-ptBR Vá para Blasted Lands. Atravesse o Dark Portal
step
    ifskillbelow herbalism 300
    path seq 1454 43.1,41.4 45.9,43.6 49.4,39.6 54.5,41
    goto 1454 55.6,39.5
    note-enUS Hearth to Dalaran |only !Mage
    note-ptBR Use a pedra de regresso para Dalaran |only !Mage
    zone 1454 |only !Mage |opt
    note-enUS In Dalaran, take the portal to Orgrimmar |only !Mage
    note-ptBR Em Dalaran, pegue o portal para Orgrimmar |only !Mage
    note-enUS Go in the back entrance of the upper part of The Drag
    note-ptBR Entre pela entrada dos fundos da parte alta de The Drag
    train 11993
    note-enUS Train Artisan Herbalism (225-300) from Jandi in the building in Orgrimmar
    note-ptBR Treine Artisan Herbalism (225-300) com Jandi no prédio em Orgrimmar
step
    only !Mage
    ifskillbelow herbalism 300
    goto 1411 45.5,12.2
    zone 1435 |only Mage |opt
    note-enUS Teleport to Stonard |only Mage
    note-ptBR Teleporte-se para Stonard |only Mage
    zone 1411
    note-enUS Exit Orgrimmar into Durotar. Alternatively, pay a mage for a portal to Stonard
    note-ptBR Saia de Orgrimmar para Durotar. Como alternativa, pague um mago por um portal para Stonard
step
    only !Mage
    ifskillbelow herbalism 300
    path seq 1411 50.7,13.3
    goto 1411 50.6,12.6
    zone 1434
    note-enUS Climb the Zeppelin Tower. Take the Zeppelin to Stranglethorn Vale (Grom'Gol)
    note-ptBR Suba a Zeppelin Tower. Pegue o zepelim para Stranglethorn Vale (Grom'Gol)
step
    goto 1434 32.5,29.4 |only !Mage
    fp |only !Mage |opt
    note-enUS Fly to Stonard |only !Mage
    note-ptBR Voe para Stonard |only !Mage
    skill herbalism 300
    note-enUS Level your Herbalism from 225-300 in Swamp of Sorrows
    note-ptBR Suba seu Herbalism de 225-300 em Swamp of Sorrows
    path loop 1435 54.5,42.1 44.8,41.9 30.8,51.2 26.7,61.6 23.2,59.5 20.9,53.4 17.1,55.1 15.1,64 11.8,63.7 14.8,46.3 18,46.1 17,42.3 10.9,37.1 10.7,32.1 14.9,33.2 19.4,43.7 21.6,40.7 26.3,44.3 30.2,34.8 34.1,40.7 38.3,38.5 37.4,32.4 45.7,31.3 52.8,30.6 60,33.2 63.4,20.9 70.3,13.1 81.2,22 79.1,31.5 86.4,42.3 86.2,62.1 82.8,72.2 78.5,77.4 71.1,68.9 76.9,67.2 81.3,59.1 79.3,43.9 70.1,35 61.2,41.1 56.1,59.1 54.5,42.1
step
    note-enUS Hearth to Dalaran |only !Mage
    note-ptBR Use a pedra de regresso para Dalaran |only !Mage
    fp |only !Mage |opt
    note-enUS Fly to Storm Peaks (K3) |only !Mage
    note-ptBR Voe para Storm Peaks (K3) |only !Mage
    note-enUS Congratulations on reaching skill level 450 in Herbalism!
    note-ptBR Parabéns, você chegou ao máximo de Herborismo!
]==])

register([==[
#format 1
#id forever.x.a.1-300-herbalism-a
#name 1-300 Herbalism (A)
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#kind profession
#name-ptBR 1-300 Herborismo (Aliança)
#group Professions
#group-ptBR Profissões
#subgroup Gathering (adapted from Classic)
#subgroup-ptBR Coleta (adaptado do Classic)

step
    ifskillbelow herbalism 70
    goto 1453 54.3,84.1
    zone 1453 |only Mage |opt
    note-enUS Teleport to Stormwind |only Mage
    note-ptBR Teleporte-se para Stormwind |only Mage
    note-enUS Hearth to Dalaran |only !Mage
    note-ptBR Use a pedra de regresso para Dalaran |only !Mage
    zone 1453 |only !Mage |opt
    note-enUS In Dalaran, take the portal to Stormwind City |only !Mage
    note-ptBR Em Dalaran, pegue o portal para Stormwind City |only !Mage
    train 2366
    note-enUS Train Apprentice Herbalism (1-75) from Tannysa in Stormwind
    note-ptBR Treine Apprentice Herbalism (1-75) com Tannysa em Stormwind
step
    goto 1429 32.3,49.9
    zone 1429 |opt
    note-enUS Exit Stormwind into Elwynn Forest
    note-ptBR Saia de Stormwind para Elwynn Forest
    skill herbalism 70
    note-enUS Level your Herbalism from 1-70 in Elwynn Forest. Press "M" to open your map to see the route.
    note-ptBR Suba seu Herbalism de 1-70 em Elwynn Forest. Aperte "M" para abrir o mapa e ver a rota.
    path loop 1429 32.4,56.2 36.5,58.7 40.5,54.7 47.7,59.3 60.9,59.2 65.8,64.8 68.9,62.3 68.9,52 65.8,45.5 72.2,40 79.6,39.4 81.6,49.7 80.7,56.4 86.9,61.5 85.9,73.2 87.3,79.2 85.2,82.6 79.9,80.9 76,82.8 62.7,77.7 57.4,78.2 49.4,84.3 42.2,89.1 40.4,87.5 42,80.8 39.3,74.8 36,81.9 34.8,85.6 26.4,90.9 26.5,81.2 23,75.9 26,74.7 29.4,68.2 29.1,62 30.5,58.5 32.4,56.2
step
    only !Mage
    ifskillbelow herbalism 150
    goto 1453 73,89.9
    zone 1453 |only Mage |opt
    note-enUS Teleport to Stormwind |only Mage
    note-ptBR Teleporte-se para Stormwind |only Mage
    zone 1453
    note-enUS Ride back to Stormwind City
    note-ptBR Volte de montaria para Stormwind City
step
    ifskillbelow herbalism 151
    goto 1453 54.3,84.1
    note-enUS Hearth to Dalaran |only !Mage
    note-ptBR Use a pedra de regresso para Dalaran |only !Mage
    zone 1453 |only !Mage |opt
    note-enUS In Dalaran, take the portal to Stormwind City |only !Mage
    note-ptBR Em Dalaran, pegue o portal para Stormwind City |only !Mage
    train 2368
    note-enUS Train Journeyman Herbalism (75-150) from Tannysa in Stormwind
    note-ptBR Treine Journeyman Herbalism (75-150) com Tannysa em Stormwind
step
    path seq 1453 68.2,72.9
    goto 1453 71,72.5
    fp |opt
    note-enUS Fly to Lakeshire
    note-ptBR Voe para Lakeshire
    skill herbalism 150
    note-enUS Level your Herbalism from 70-150 in Redridge Mountains
    note-ptBR Suba seu Herbalism de 70-150 em Redridge Mountains
    path loop 1433 24.8,72.7 30.8,80.7 36.2,73.4 40,76 55.8,75.4 60.4,72.4 64.7,78.2 69.1,77.6 73.9,82.4 77.1,73.4 77.1,66.7 81.4,69.8 82.8,66 87,62 80.4,39.9 76.6,39.3 76.8,50.5 71.2,50.2 64.2,44.8 54.8,44.1 49.5,41.1 43.2,34.2 30.5,22.5 24.8,24.1 23.8,29.1 20.7,40.7 15.4,52.2 22.3,60.8 11.8,76 24.8,72.7
step
    ifskillbelow herbalism 226
    goto 1433 21.7,45.8
    train 3570
    note-enUS Train Expert Herbalism (150-225) from Alma in Lakeshire
    note-ptBR Treine Expert Herbalism (150-225) com Alma em Lakeshire
step
    goto 1433 30.6,59.4
    goto 1419 52.1,8.5 40
    goto 1435 33.9,65.9
    fp |opt
    note-enUS Fly to Nethergarde Keep
    note-ptBR Voe para Nethergarde Keep
    zone 1435 |opt
    note-enUS Ride to Swamp of Sorrows
    note-ptBR Vá de montaria até Swamp of Sorrows
    note-enUS Focus on Liferoot and Kingsblood to start with, and Fadeleaf when you reach 160 skill
    note-ptBR Foque em Liferoot e Kingsblood no começo, e em Fadeleaf quando chegar a 160 de habilidade
    skill herbalism 170
    note-enUS Level your Herbalism from 150-170 in Swamp of Sorrows
    note-ptBR Suba seu Herbalism de 150-170 em Swamp of Sorrows
    path loop 1435 37.2,46.5 30,51.3 26.8,58.7 23.4,58.8 19.4,55.1 17,59.8 13.2,62.7 13.6,52.7 18.3,45.4 12.2,32.9 21.9,44.7 28.7,38.8 34,35 45.2,34 61.3,33.1 74.1,24.2 76.7,15.2 82.4,25.6 78.3,36 87.5,43.8 83.4,47.6 86.9,58.8 81.6,62.5 78.4,67 83.3,71.7 76,77.5 68.9,69.8 58.9,59 56.8,49 46.8,39.5 37.2,46.5
step
    note-enUS Now focus on Goldthorn and when you get to 185 skill, Khadgar's Whisker
    note-ptBR Agora foque em Goldthorn e, quando chegar a 185 de habilidade, em Khadgar's Whisker
    skill herbalism 225
    note-enUS Level your Herbalism from 170-225 in Swamp of Sorrows
    note-ptBR Suba seu Herbalism de 170-225 em Swamp of Sorrows
    path loop 1435 54.5,42.1 44.8,41.9 30.8,51.2 26.7,61.6 23.2,59.5 20.9,53.4 17.1,55.1 15.1,64 11.8,63.7 14.8,46.3 18,46.1 17,42.3 10.9,37.1 10.7,32.1 14.9,33.2 19.4,43.7 21.6,40.7 26.3,44.3 30.2,34.8 34.1,40.7 38.3,38.5 37.4,32.4 45.7,31.3 52.8,30.6 63.4,20.9 70.3,13.1 81.2,22 86.4,42.3 86.2,62.1 82.8,72.2 75.4,86.1 69.1,77.5 64.5,68.6 73.3,72.4 81.3,59.1 79.3,43.9 70.1,35 61.2,41.1 56.1,59.1 54.5,42.1
step
    ifskillbelow herbalism 300
    goto 1419 52.1,8.5
    goto 1430 56.8,42
    goto 1419 65.5,24.3
    goto 1431 77.5,44.3
    goto 1433 21.7,45.8
    zone 1433 |opt
    note-enUS Travel to either Deadwind or Blasted Lands, whichever is closer
    note-ptBR Vá até Deadwind ou Blasted Lands, o que estiver mais perto
    fp |opt
    note-enUS Fly to Lakeshire
    note-ptBR Voe para Lakeshire
    train 11993
    note-enUS Train Artisan Herbalism (225-300) from Alma in Lakeshire
    note-ptBR Treine Artisan Herbalism (225-300) com Alma em Lakeshire
step
    goto 1433 30.6,59.4
    goto 1419 52.1,8.5 40
    goto 1435 33.9,65.9
    fp |opt
    note-enUS Fly to Nethergarde Keep
    note-ptBR Voe para Nethergarde Keep
    zone 1435 |opt
    note-enUS Ride to Swamp of Sorrows
    note-ptBR Vá de montaria até Swamp of Sorrows
    skill herbalism 300
    note-enUS Level your Herbalism from 225-300 in Swamp of Sorrows
    note-ptBR Suba seu Herbalism de 225-300 em Swamp of Sorrows
    path loop 1435 54.5,42.1 44.8,41.9 30.8,51.2 26.7,61.6 23.2,59.5 20.9,53.4 17.1,55.1 15.1,64 11.8,63.7 14.8,46.3 18,46.1 17,42.3 10.9,37.1 10.7,32.1 14.9,33.2 19.4,43.7 21.6,40.7 26.3,44.3 30.2,34.8 34.1,40.7 38.3,38.5 37.4,32.4 45.7,31.3 52.8,30.6 60,33.2 63.4,20.9 70.3,13.1 81.2,22 79.1,31.5 86.4,42.3 86.2,62.1 82.8,72.2 78.5,77.4 71.1,68.9 76.9,67.2 81.3,59.1 79.3,43.9 70.1,35 61.2,41.1 56.1,59.1 54.5,42.1
step
    note-enUS Teleport to Dalaran |only Mage
    note-ptBR Teleporte-se para Dalaran |only Mage
    note-enUS Hearth to Dalaran |only !Mage
    note-ptBR Use a pedra de regresso para Dalaran |only !Mage
    fp |only !Mage |opt
    note-enUS Fly to Storm Peaks (K3) |only !Mage
    note-ptBR Voe para Storm Peaks (K3) |only !Mage
    note-enUS Congratulations on reaching skill level 450 in Herbalism!
    note-ptBR Parabéns, você chegou ao máximo de Herborismo!
]==])
