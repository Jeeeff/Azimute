-- Convertido automaticamente de RXPGuides (Extra Mining.lua)
-- (c) RestedXP - CC BY-NC-SA 4.0 (ver LICENSE.txt). Não edite à mão:
-- rode tools/rxp2azimute.py de novo.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id forever.x.h.1-300-mining-h
#name 1-300 Mining (H)
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Horde
#kind profession
#name-ptBR 1-300 Mineração (Horda)
#group Professions
#group-ptBR Profissões
#subgroup Gathering (adapted from Classic)
#subgroup-ptBR Coleta (adaptado do Classic)

step
    only !Mage
    ifskillbelow mining 65
    zone 1454 |only Mage |opt
    note-enUS Teleport to Orgrimmar |only Mage
    note-ptBR Teleporte-se para Orgrimmar |only Mage
    note-enUS Hearth to Dalaran |only !Mage
    note-ptBR Use a pedra de regresso para Dalaran |only !Mage
    zone 1454
    note-enUS In Dalaran, take the portal to Orgrimmar
    note-ptBR Em Dalaran, pegue o portal para Orgrimmar
step
    ifskillbelow mining 65
    goto 1454 73.3,26.6
    note-enUS Buy a Mining Pick from Gorina next to Makaru
    note-ptBR Compre uma Picareta de Mineração de Gorina, ao lado de Makaru
    collect 2901 1
step
    ifskillbelow mining 65
    goto 1454 73.1,26.1
    train 2575
    note-enUS Train Apprentice Mining (1-75) from Makaru in the building in Orgrimmar
    note-ptBR Treine Apprentice Mining (1-75) com Makaru no prédio em Orgrimmar
step
    goto 1411 45.5,12.2
    zone 1411 |opt
    note-enUS Exit Orgrimmar into Durotar
    note-ptBR Saia de Orgrimmar para Durotar
    skill mining 65
    note-enUS Level your Mining from 1-65 in Durotar. Press "M" to open your map to see the route.
    note-ptBR Suba seu Mining de 1-65 em Durotar. Aperte "M" para abrir o mapa e ver a rota.
    path loop 1411 43.6,21.5 40.9,18.8 39.6,16.2 38.7,21.6 36.8,27.5 39.5,27 39.4,28.3 39.2,32.8 41.1,33.7 44.1,33.8 45.7,31.2 47.4,30.9 48.6,34 46.9,34.8 48.2,36.7 46.2,38.9 43.6,40.2 41,37.3 36.8,35.4 36.8,43.4 37.8,50.3 38.6,52.8 41.6,51.3 43.1,43.5 44.5,49.2 48,49.2 48.6,49.3 50,50 50.7,53.7 51.6,59.5 51.5,61.7 54.7,60.6 56.7,58.9 60.5,59.9 60.2,55.3 57.7,48.2 55.6,40.3 55.5,37.7 53.8,36.2 53,29.5 53.6,24.8 53.9,27.8 51.7,27.4 48.2,21.4 43.6,21.5
step
    only !Mage
    ifskillbelow mining 125
    goto 1454 48.8,91
    zone 1454 |only Mage |opt
    note-enUS Teleport to Orgrimmar |only Mage
    note-ptBR Teleporte-se para Orgrimmar |only Mage
    zone 1454
    note-enUS Ride back to Orgrimmar
    note-ptBR Volte de montaria para Orgrimmar
step
    ifskillbelow mining 125
    goto 1454 73.1,26.1
    note-enUS Hearth to Dalaran |only !Mage
    note-ptBR Use a pedra de regresso para Dalaran |only !Mage
    zone 1454 |only !Mage |opt
    note-enUS In Dalaran, take the portal to Orgrimmar |only !Mage
    note-ptBR Em Dalaran, pegue o portal para Orgrimmar |only !Mage
    train 2576
    note-enUS Train Journeyman Mining (75-150) from Makaru in the building in Orgrimmar
    note-ptBR Treine Journeyman Mining (75-150) com Makaru no prédio em Orgrimmar
step
    goto 1454 45.1,63.9
    fp |opt
    note-enUS Fly to The Crossroads
    note-ptBR Voe para The Crossroads
    skill mining 125
    note-enUS Level your Mining from 65-125 in The Barrens [Route 1]
    note-ptBR Suba seu Mining de 65-125 em The Barrens [Rota 1]
    path loop 1413 52.7,30.9 54.4,27.4 55.6,26.4 56.2,24.5 58,25 58.5,26.1 58.9,24.8 57.2,18.8 57.6,16.9 54.4,16.9 53.5,18.6 50.7,12.5 49,14.6 47.8,15.8 47,15.3 46.9,12.8 44.1,13 43,14.2 39.6,14.4 38.9,11.7 37.5,16 41,18.6 40.7,21.7 40.1,24.3 41.9,28.9 43.5,27 44.9,25.3 45.4,23.1 49,28.5 52.7,30.9
    note-enUS 65-125 [Route 2]
    note-ptBR 65-125 [Rota 2]
    path loop 1413 46.6,36.9 46.8,38.9 50.3,41.5 51.1,42.8 55.1,42.8 56.5,43.6 51.7,47.4 49,48.8 51.2,51.6 52.1,53.4 52.9,52.6 53.2,54.5 51.7,55.4 51,57.8 47.7,66.3 47.3,69.4 48.7,69.5 47.7,72.7 48.5,80.4 48.4,84 48.8,87.2 47,84.8 44,84.4 41,80.5 41.1,79.3 44,78.2 43.7,74.2 45.7,69.1 43.6,54.8 44.6,54.3 43.8,52.6 44,51.4 41.4,45.4 43.5,44.4 43.3,40.2 45.7,37 46.6,36.9
step
    only !Mage
    ifskillbelow mining 175
    path seq 1413 51.5,30.3
    goto 1413 44.4,59.2
    zone 1454 |only Mage |opt
    note-enUS Teleport to Orgrimmar |only Mage
    note-ptBR Teleporte-se para Orgrimmar |only Mage
    fly 1454
    zone 1454
    note-enUS Fly to Orgrimmar from either Crossroads or Camp Taurajo, whichever is closer (preferably Crossroads)
    note-ptBR Voe para Orgrimmar a partir de Crossroads ou Camp Taurajo, o que estiver mais perto (de preferência Crossroads)
step
    ifskillbelow mining 175
    goto 1454 73.1,26.1
    note-enUS Hearth to Dalaran |only !Mage
    note-ptBR Use a pedra de regresso para Dalaran |only !Mage
    zone 1454 |only !Mage |opt
    note-enUS In Dalaran, take the portal to Orgrimmar |only !Mage
    note-ptBR Em Dalaran, pegue o portal para Orgrimmar |only !Mage
    train 3564
    note-enUS Train Expert Mining (150-225) from Makaru in the building in Orgrimmar
    note-ptBR Treine Expert Mining (150-225) com Makaru no prédio em Orgrimmar
step
    only !Mage
    ifskillbelow mining 175
    goto 1411 45.5,12.2 |only !Mage
    path seq 1411 50.7,13.3
    goto 1411 50.8,13.9
    zone 1458 |only Mage |opt
    note-enUS Teleport to Undercity |only Mage
    note-ptBR Teleporte-se para Undercity |only Mage
    zone 1411 |only !Mage |opt
    note-enUS Exit Orgrimmar into Durotar. Alternatively, pay a mage for a portal to Undercity |only !Mage
    note-ptBR Saia de Orgrimmar para Durotar. Como alternativa, pague um mago por um portal para Undercity |only !Mage
    zone 1434
    note-enUS Climb the Zeppelin Tower. Take the Zeppelin to Tirisfal Glades
    note-ptBR Suba a Zeppelin Tower. Pegue o zepelim para Tirisfal Glades
step
    only !Mage
    ifskillbelow mining 175
    goto 1458 66.3,4.4
    zone 1458
    note-enUS Run into Undercity, then take the elevators down
    note-ptBR Entre correndo em Undercity e depois desça pelos elevadores
step
    path seq 1458 65.9,44.1
    goto 1458 63.3,48.6
    fp |opt
    note-enUS Fly to Hammerfall
    note-ptBR Voe para Hammerfall
    skill mining 175
    note-enUS Level your Mining from 125-175 in Arathi Highlands
    note-ptBR Suba seu Mining de 125-175 em Arathi Highlands
    path loop 1417 71.9,31 66.4,27.7 63.4,32.6 59.9,36.2 60.9,41.7 53.9,47.8 49,51.3 52,45.5 52.6,35.4 48.2,38.5 42.4,42.8 40.4,46.6 35.5,44.3 39.1,35.6 42.8,31.6 34.6,22.8 28.8,18.7 29.6,32 24.7,30.7 23.9,35.5 21,34.1 22.9,42.7 27.5,49.7 30.1,51.4 32.8,62.1 34.3,65.4 39.8,70.7 44.2,75.7 45.6,75.5 52.5,77.3 54.6,74.9 55.1,71.7 59.5,70.6 63.2,72.8 66.1,73.1 68.2,74.4 71.1,68.2 72,59.9 69.8,56.7 73.7,45.9 79.2,40.3 81.7,35.8 82.6,39 76.6,33.2 75.2,28.8 71.9,31
step
    goto 1417 73.1,32.7
    fp |opt
    note-enUS Fly to Revantusk Village
    note-ptBR Voe para Revantusk Village
    skill mining 225
    note-enUS Level your Mining from 175-225 in The Hinterlands
    note-ptBR Suba seu Mining de 175-225 em The Hinterlands
    path loop 1425 70.9,63.3 73.9,58 72.9,53 76.5,52.4 77.6,48.8 72.9,48.5 64.6,43 60.6,38.5 61.7,34.3 67.5,36.2 69.3,27.4 66.1,21.8 67.2,16.5 68.7,14.2 64.2,16.1 58.6,20.7 59,28.3 57.3,35.2 57.6,38.3 51.8,47.3 47.6,38.5 46.7,35.7 45,41.1 40.7,45.6 38.9,47.4 34.2,42.2 32.2,43.3 32.1,48.8 28.9,53.5 24.9,59.5 26.6,68 30.9,62.4 35.8,64 34.2,68.5 31.4,70.4 31.5,72.6 34.2,74 36.1,68.7 39.7,65.9 45.7,70 49,65.4 50.7,67.3 52.7,58.3 58,51.6 65.7,54.8 66,60.7 70.9,63.3
step
    ifskillbelow mining 245
    goto 1454 73.1,26.1
    zone 1454 |only Mage |opt
    note-enUS Teleport to Orgrimmar |only Mage
    note-ptBR Teleporte-se para Orgrimmar |only Mage
    note-enUS Hearth to Dalaran |only !Mage
    note-ptBR Use a pedra de regresso para Dalaran |only !Mage
    zone 1454 |only !Mage |opt
    note-enUS In Dalaran, take the portal to Orgrimmar |only !Mage
    note-ptBR Em Dalaran, pegue o portal para Orgrimmar |only !Mage
    train 10248
    note-enUS Train Artisan Mining (225-300) from Makaru in the building in Orgrimmar
    note-ptBR Treine Artisan Mining (225-300) com Makaru no prédio em Orgrimmar
step
    goto 1454 45.1,63.9
    note-enUS Teleport to Shattrath |only Mage
    note-ptBR Teleporte-se para Shattrath |only Mage
    zone 1446 |only Mage |opt
    note-enUS Talk to Zephyr in the World's End Tavern to teleport to the Caverns of Time. Do NOT talk to the Steward of Time when you arrive |only Mage
    note-ptBR Fale com Zephyr na World's End Tavern para se teleportar às Caverns of Time. NÃO fale com o Steward of Time quando chegar |only Mage
    fp |opt
    note-enUS Fly to Gadgetzan
    note-ptBR Voe para Gadgetzan
    note-enUS Enter the Silithid Hives for veins of ore if there are any inside
    note-ptBR Entre nas Colmeias Silitídeas atrás de veios de minério, se houver algum lá dentro
    skill mining 245
    note-enUS Level your Mining from 225-245 in Tanaris
    note-ptBR Suba seu Mining de 225-245 em Tanaris
    path loop 1446 55.9,24.3 54.1,24.6 47.1,23.9 46.7,29.8 43.9,26 34.3,26.1 34.3,31.7 36.7,33.4 33.4,37.7 32.8,42.1 29.9,46.4 27.8,56.7 28.2,61 30.4,62.8 30.9,67.3 28.2,74 30.8,77.2 34.7,80.3 41.7,76.7 44.3,76.1 51.3,79 57.8,69.3 58.8,63.2 61.8,53.9 65.3,56.7 69.1,54.6 73.3,53.9 72.3,49.1 71,43.6 69,41.7 67,41.5 55.9,24.3
step
    goto 1446 51.6,25.4
    goto 1449 70.7,90.7
    fp |opt
    note-enUS Fly to Marshal's Refuge from Gadgetzan, or ride into Un'Goro if it is closer
    note-ptBR Voe para Marshal's Refuge a partir de Gadgetzan, ou vá de montaria até Un'Goro se estiver mais perto
    skill mining 275
    note-enUS Level your Mining from 245-275 in Un'Goro Crater
    note-ptBR Suba seu Mining de 245-275 em Un'Goro Crater
    path loop 1449 48.4,13.8 53.1,30.7 56.1,33.3 62.2,32.3 58.6,23.4 57.7,14.1 63,16.8 64.5,20.9 69.5,20.3 71.6,28.1 74.5,34.5 75.6,38.7 78.9,41.8 76.5,43.8 76.2,51.1 76,61.2 79.6,59.9 76,61.2 74.1,68 69.8,68.4 60.8,65.7 61.6,70.1 63.8,79 60.4,83.4 56.1,89.5 54.4,86.3 51,86.5 44.8,82.6 48.8,80.7 50.7,72.5 54.3,64.9 46.9,65.4 39,64.8 37.1,55.5 35.8,53.7 35.7,48.2 33.4,47.7 38.3,37 44.5,35.1 44.1,28.8 35.8,22.1 39.6,17.4 44.2,14.5 48.4,13.8
step
    skill mining 300
    note-enUS Level your Mining from 275-300 in Un'Goro Crater
    note-ptBR Suba seu Mining de 275-300 em Un'Goro Crater
    path loop 1449 48.4,13.8 53.1,30.7 56.1,33.3 62.2,32.3 58.6,23.4 57.7,14.1 63,16.8 64.5,20.9 69.5,20.3 71.6,28.1 74.5,34.5 75.6,38.7 78.9,41.8 76.5,43.8 76.2,51.1 76,61.2 79.6,59.9 76,61.2 74.1,68 69.8,68.4 60.8,65.7 61.6,70.1 63.8,79 60.4,83.4 56.1,89.5 54.4,86.3 51,86.5 44.8,82.6 48.8,80.7 50.7,72.5 54.3,64.9 50.8,53.4 50.8,53.4 53.1,51.3 52.5,47.6 51.7,45.7 47.7,46.8 46.9,51.8 47.9,64.6 39,64.8 37.9,78.6 31.8,78.9 32.1,73.6 32.7,70.8 28.9,68.2 25.3,61.4 22.9,58.2 24.2,55 24.3,43.1 22.2,41.2 28.1,40.4 32.8,47.7 38.3,37 44.5,35.1 44.1,28.8 35.8,22.1 39.6,17.4 44.2,14.5 48.4,13.8
step
    note-enUS In Dalaran, Teleport to Shattrath
    note-ptBR Em Dalaran, teleporte-se para Shattrath
    note-enUS Teleport to Dalaran |only Mage
    note-ptBR Teleporte-se para Dalaran |only Mage
    note-enUS Hearth to Dalaran |only !Mage
    note-ptBR Use a pedra de regresso para Dalaran |only !Mage
    note-enUS Level your Mining from 425-450 in Icecrown
    note-ptBR Suba seu Mining de 425-450 em Icecrown
step
    note-enUS Congratulations on reaching skill level 450 in Mining!
    note-ptBR Parabéns, você chegou ao máximo de Mineração!
]==])

register([==[
#format 1
#id forever.x.a.1-300-mining-a
#name 1-300 Mining (A)
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#kind profession
#name-ptBR 1-300 Mineração (Aliança)
#group Professions
#group-ptBR Profissões
#subgroup Gathering (adapted from Classic)
#subgroup-ptBR Coleta (adaptado do Classic)

step
    only !Mage
    ifskillbelow mining 65
    zone 1453 |only Mage |opt
    note-enUS Teleport to Stormwind |only Mage
    note-ptBR Teleporte-se para Stormwind |only Mage
    note-enUS Hearth to Dalaran |only !Mage
    note-ptBR Use a pedra de regresso para Dalaran |only !Mage
    zone 1453
    note-enUS In Dalaran, take the portal to Stormwind City
    note-ptBR Em Dalaran, pegue o portal para Stormwind City
step
    ifskillbelow mining 65
    path seq 1453 60.2,37
    goto 1453 59.1,37.5
    note-enUS Buy a Mining Pick from Brooke downstairs in the house in Stormwind
    note-ptBR Compre uma Picareta de Mineração de Brooke, no andar de baixo da casa em Stormwind
    collect 2901 1
step
    ifskillbelow mining 65
    goto 1453 59.3,37.9
    train 2575
    note-enUS Train Apprentice Mining (1-75) from Gelman upstairs in the house in Stormwind
    note-ptBR Treine Apprentice Mining (1-75) com Gelman no andar de cima da casa em Stormwind
step
    goto 1429 32.3,49.9
    zone 1429 |opt
    note-enUS Exit Stormwind into Elwynn Forest
    note-ptBR Saia de Stormwind para Elwynn Forest
    skill mining 65
    note-enUS Level your Mining from 1-65 in Elwynn Forest. Press "M" to open your map to see the route.
    note-ptBR Suba seu Mining de 1-65 em Elwynn Forest. Aperte "M" para abrir o mapa e ver a rota.
    path loop 1429 37.9,52.6 41,52.9 43.8,50.4 50.8,58.8 51.4,65.6 54.7,62.1 60.6,63.4 58.6,57.7 61.8,54.2 65.5,58.6 69,68.6 65.8,72.8 58.5,77.5 51.2,85.3 51,75.7 46.7,72.6 43.5,76 39.1,82.6 38.2,84.6 36.7,81.6 40.5,73.7 37.2,72.2 34.1,71.9 26.7,69.9 27,67.4 29.4,63.6 29.3,60.1 31.2,54.9 37.9,52.6
step
    only !Mage
    ifskillbelow mining 125
    goto 1453 73,89.9
    zone 1453 |only Mage |opt
    note-enUS Teleport to Stormwind |only Mage
    note-ptBR Teleporte-se para Stormwind |only Mage
    zone 1453
    note-enUS Ride back to Stormwind City
    note-ptBR Volte de montaria para Stormwind City
step
    only !Mage
    ifskillbelow mining 125
    note-enUS Hearth to Dalaran |only !Mage
    note-ptBR Use a pedra de regresso para Dalaran |only !Mage
    zone 1453
    note-enUS In Dalaran, take the portal to Stormwind City
    note-ptBR Em Dalaran, pegue o portal para Stormwind City
step
    ifskillbelow mining 125
    path seq 1453 60.2,37
    goto 1453 59.3,37.9
    train 2576
    note-enUS Train Journeyman Mining (75-150) from Gelman upstairs in the house in Stormwind
    note-ptBR Treine Journeyman Mining (75-150) com Gelman no andar de cima da casa em Stormwind
step
    path seq 1453 68.2,72.9
    goto 1453 71,72.5
    fp |opt
    note-enUS Fly to Lakeshire
    note-ptBR Voe para Lakeshire
    skill mining 125
    note-enUS Level your Mining from 65-125 in Redridge Mountains
    note-ptBR Suba seu Mining de 65-125 em Redridge Mountains
    path loop 1433 39.8,39.6 47.5,38.8 54.9,44.7 60.7,44.8 71.5,50 67.6,52.2 65.7,60.9 61.2,65.1 53.1,76.1 65,75.9 70.2,74.4 74.4,83.6 77.4,67.6 81.6,69.5 86.9,61.4 84.2,50.1 80.3,42.7 76.5,36.9 66.6,42.8 60.5,39.7 51.6,40.4 46.1,23 41.5,14.4 37.4,13.2 33.6,7.8 37.4,13.2 41.5,14.4 46.1,23 45,31.5 40.3,32.1 29.5,22 24.4,25.5 23.5,32.1 19.8,34.1 20.7,28.2 20.7,37.7 29.1,36.8 39.8,39.6
step
    only !Mage
    ifskillbelow mining 175
    goto 1433 30.6,59.4
    zone 1453 |only Mage |opt
    note-enUS Teleport to Stormwind |only Mage
    note-ptBR Teleporte-se para Stormwind |only Mage
    fly 1453
    zone 1453
    note-enUS Travel to Stormwind City
    note-ptBR Vá até Stormwind City
step
    ifskillbelow mining 175
    path seq 1453 60.2,37
    goto 1453 59.3,37.9
    note-enUS Hearth to Dalaran |only !Mage
    note-ptBR Use a pedra de regresso para Dalaran |only !Mage
    zone 1453 |only !Mage |opt
    note-enUS In Dalaran, take the portal to Stormwind City |only !Mage
    note-ptBR Em Dalaran, pegue o portal para Stormwind City |only !Mage
    train 3564
    note-enUS Train Expert Mining (150-225) from Gelman upstairs in the house in Stormwind
    note-ptBR Treine Expert Mining (150-225) com Gelman no andar de cima da casa em Stormwind
step
    path seq 1453 68.2,72.9
    goto 1453 71,72.5
    fp |opt
    note-enUS Fly to Refuge Pointe
    note-ptBR Voe para Refuge Pointe
    skill mining 175
    note-enUS Level your Mining from 125-175 in Arathi Highlands
    note-ptBR Suba seu Mining de 125-175 em Arathi Highlands
    path loop 1417 71.9,31 66.4,27.7 63.4,32.6 59.9,36.2 60.9,41.7 53.9,47.8 49,51.3 52,45.5 52.6,35.4 48.2,38.5 42.4,42.8 40.4,46.6 35.5,44.3 39.1,35.6 42.8,31.6 34.6,22.8 28.8,18.7 29.6,32 24.7,30.7 23.9,35.5 21,34.1 22.9,42.7 27.5,49.7 30.1,51.4 32.8,62.1 34.3,65.4 39.8,70.7 44.2,75.7 45.6,75.5 52.5,77.3 54.6,74.9 55.1,71.7 59.5,70.6 63.2,72.8 66.1,73.1 68.2,74.4 71.1,68.2 72,59.9 69.8,56.7 73.7,45.9 79.2,40.3 81.7,35.8 82.6,39 76.6,33.2 75.2,28.8 71.9,31
step
    goto 1417 45.8,46.1
    fp |opt
    note-enUS Fly to Aerie Peak
    note-ptBR Voe para Aerie Peak
    skill mining 225
    note-enUS Level your Mining from 175-225 in The Hinterlands
    note-ptBR Suba seu Mining de 175-225 em The Hinterlands
    path loop 1425 70.9,63.3 73.9,58 72.9,53 76.5,52.4 77.6,48.8 72.9,48.5 64.6,43 60.6,38.5 61.7,34.3 67.5,36.2 69.3,27.4 66.1,21.8 67.2,16.5 68.7,14.2 64.2,16.1 58.6,20.7 59,28.3 57.3,35.2 57.6,38.3 51.8,47.3 47.6,38.5 46.7,35.7 45,41.1 40.7,45.6 38.9,47.4 34.2,42.2 32.2,43.3 32.1,48.8 28.9,53.5 24.9,59.5 26.6,68 30.9,62.4 35.8,64 34.2,68.5 31.4,70.4 31.5,72.6 34.2,74 36.1,68.7 39.7,65.9 45.7,70 49,65.4 50.7,67.3 52.7,58.3 58,51.6 65.7,54.8 66,60.7 70.9,63.3
step
    ifskillbelow mining 245
    path seq 1455 51.8,29.5 49.6,28.2
    goto 1455 49.9,26.3
    zone 1455 |only Mage |opt
    note-enUS Teleport to Ironforge |only Mage
    note-ptBR Teleporte-se para Ironforge |only Mage
    note-enUS Hearth to Dalaran |only !Mage
    note-ptBR Use a pedra de regresso para Dalaran |only !Mage
    zone 1453 |only !Mage |opt
    note-enUS In Dalaran, take the portal to Ironforge |only !Mage
    note-ptBR Em Dalaran, pegue o portal para Ironforge |only !Mage
    train 3564
    note-enUS Train Artisan Mining (225-300) from Geofram downstairs in the house in Ironforge
    note-ptBR Treine Artisan Mining (225-300) com Geofram no andar de baixo da casa em Ironforge
step
    only Mage
    ifskillbelow mining 245
    note-enUS Teleport to Shattrath |only Mage
    note-ptBR Teleporte-se para Shattrath |only Mage
    zone 1446
    note-enUS Talk to Zephyr in the World's End Tavern to teleport to the Caverns of Time. Do NOT talk to the Steward of Time when you arrive
    note-ptBR Fale com Zephyr na World's End Tavern para se teleportar às Caverns of Time. NÃO fale com o Steward of Time quando chegar
step
    only !Mage
    ifskillbelow mining 245
    goto 1455 55.5,47.7 |only !Mage
    goto 1437 5,63.5
    zone 1445 |only Mage |opt
    note-enUS Teleport to Theramore |only Mage
    note-ptBR Teleporte-se para Theramore |only Mage
    fly 1437 |only !Mage |opt
    note-enUS Fly to Menethil Harbor |only !Mage
    note-ptBR Voe para Menethil Harbor |only !Mage
    zone 1445
    note-enUS Take the Boat to Dustwallow Marsh (Theramore)
    note-ptBR Pegue o barco para Dustwallow Marsh (Theramore)
step
    goto 1445 67.5,51.3
    fp |opt
    note-enUS Fly to Gadgetzan
    note-ptBR Voe para Gadgetzan
    note-enUS Enter the Silithid Hives for veins of ore if there are any inside
    note-ptBR Entre nas Colmeias Silitídeas atrás de veios de minério, se houver algum lá dentro
    skill mining 245
    note-enUS Level your Mining from 225-245 in Tanaris
    note-ptBR Suba seu Mining de 225-245 em Tanaris
    path loop 1446 55.9,24.3 54.1,24.6 47.1,23.9 46.7,29.8 43.9,26 34.3,26.1 34.3,31.7 36.7,33.4 33.4,37.7 32.8,42.1 29.9,46.4 27.8,56.7 28.2,61 30.4,62.8 30.9,67.3 28.2,74 30.8,77.2 34.7,80.3 41.7,76.7 44.3,76.1 51.3,79 57.8,69.3 58.8,63.2 61.8,53.9 65.3,56.7 69.1,54.6 73.3,53.9 72.3,49.1 71,43.6 69,41.7 67,41.5 55.9,24.3
step
    goto 1446 51,29.4
    goto 1449 70.7,90.7
    fp |opt
    note-enUS Fly to Marshal's Refuge from Gadgetzan, or ride into Un'Goro if it is closer
    note-ptBR Voe para Marshal's Refuge a partir de Gadgetzan, ou vá de montaria até Un'Goro se estiver mais perto
    skill mining 275
    note-enUS Level your Mining from 245-275 in Un'Goro Crater
    note-ptBR Suba seu Mining de 245-275 em Un'Goro Crater
    path loop 1449 48.4,13.8 53.1,30.7 56.1,33.3 62.2,32.3 58.6,23.4 57.7,14.1 63,16.8 64.5,20.9 69.5,20.3 71.6,28.1 74.5,34.5 75.6,38.7 78.9,41.8 76.5,43.8 76.2,51.1 76,61.2 79.6,59.9 76,61.2 74.1,68 69.8,68.4 60.8,65.7 61.6,70.1 63.8,79 60.4,83.4 56.1,89.5 54.4,86.3 51,86.5 44.8,82.6 48.8,80.7 50.7,72.5 54.3,64.9 46.9,65.4 39,64.8 37.1,55.5 35.8,53.7 35.7,48.2 33.4,47.7 38.3,37 44.5,35.1 44.1,28.8 35.8,22.1 39.6,17.4 44.2,14.5 48.4,13.8
step
    skill mining 300
    note-enUS Level your Mining from 275-300 in Un'Goro Crater
    note-ptBR Suba seu Mining de 275-300 em Un'Goro Crater
    path loop 1449 48.4,13.8 53.1,30.7 56.1,33.3 62.2,32.3 58.6,23.4 57.7,14.1 63,16.8 64.5,20.9 69.5,20.3 71.6,28.1 74.5,34.5 75.6,38.7 78.9,41.8 76.5,43.8 76.2,51.1 76,61.2 79.6,59.9 76,61.2 74.1,68 69.8,68.4 60.8,65.7 61.6,70.1 63.8,79 60.4,83.4 56.1,89.5 54.4,86.3 51,86.5 44.8,82.6 48.8,80.7 50.7,72.5 54.3,64.9 50.8,53.4 50.8,53.4 53.1,51.3 52.5,47.6 51.7,45.7 47.7,46.8 46.9,51.8 47.9,64.6 39,64.8 37.9,78.6 31.8,78.9 32.1,73.6 32.7,70.8 28.9,68.2 25.3,61.4 22.9,58.2 24.2,55 24.3,43.1 22.2,41.2 28.1,40.4 32.8,47.7 38.3,37 44.5,35.1 44.1,28.8 35.8,22.1 39.6,17.4 44.2,14.5 48.4,13.8
step
    note-enUS Teleport to Dalaran |only Mage
    note-ptBR Teleporte-se para Dalaran |only Mage
    note-enUS Hearth to Dalaran |only !Mage
    note-ptBR Use a pedra de regresso para Dalaran |only !Mage
    note-enUS Level your Mining from 425-450 in Icecrown
    note-ptBR Suba seu Mining de 425-450 em Icecrown
step
    note-enUS Congratulations on reaching skill level 450 in Mining!
    note-ptBR Parabéns, você chegou ao máximo de Mineração!
]==])
