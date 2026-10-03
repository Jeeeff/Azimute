-- Convertido automaticamente de RXPGuides (Extra RestedXP Horde 20-30.lua)
-- (c) RestedXP - CC BY-NC-SA 4.0 (ver LICENSE.txt). Não edite à mão:
-- rode tools/rxp2azimute.py de novo.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id forever.x.h.20-23-stonetalon-the-barrens
#name 20-23 Stonetalon / The Barrens
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Horde
#only !Warrior !Shaman
#levels 20-23
#zones 1442 1413
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup Experimental (from Classic guides)
#subgroup-ptBR Experimental (adaptado do Classic)

step
    only Mage
    path seq 1454 49.59,94.74 49.42,90.9 52.26,88.65 50.93,67.97 49.02,61.46 45.78,57.19 |only Mage
    goto 1454 45.44,56.55 10 |only Mage
    path seq 1454 39.53,75.82 42.68,62.42 45.57,57.46 |only Troll Mage
    goto 1454 45.44,56.55 10 |only Troll Mage
    goto 1454 45.44,56.55
    note-enUS Travel toward Horthus |only Mage
    note-ptBR Vá em direção a Horthus |only Mage
    train 3567 |only Troll Mage |opt
    note-enUS Travel toward Horthus |only Troll Mage
    note-ptBR Vá em direção a Horthus |only Troll Mage
    train 3567 |only Troll Mage |opt
    note-enUS Talk to Horthus
    note-ptBR Fale com Horthus
    note-enUS Buy [Runes of Teleportation] from him
    note-ptBR Compre [Runes of Teleportation] dele
    collect 17031 2 |quest 496 |q 496/1
step
    only !Shaman !Warrior !Troll !Orc
    path seq 1454 41.83,61.66 42.01,60.77 41.73,62.41 38.65,56.58 38.78,54.87 40.94,45.2 42.3,37.44 |only Troll Mage
    goto 1454 39.5,37.17 20 |only Troll Mage
    path seq 1454 49.02,61.46 47.41,65.07 46.59,64.54 46.75,63.84 46.59,64.54 46.75,63.84 46.59,64.54 46.75,63.84 |only !Troll Mage
    goto 1454 45.12,63.88 10 |only !Troll Mage
    path seq 1454 49.59,94.74 49.42,90.9 52.26,88.65 51.01,68.03 49.72,66.08 47.41,65.07 46.59,64.54 46.75,63.84 46.59,64.54 46.75,63.84 46.59,64.54 46.75,63.84 |only !Shaman !Warrior !Troll !Orc
    goto 1454 45.12,63.88 10 |only !Shaman !Warrior !Troll !Orc
    goto 1454 45.12,63.88
    note-enUS Travel up the tower, then toward Grommash Hold |only Troll Mage
    note-ptBR Suba a torre e depois vá em direção a Grommash Hold |only Troll Mage
    note-enUS Travel up the tower toward Doras |only !Troll Mage
    note-ptBR Suba a torre em direção a Doras |only !Troll Mage
    note-enUS Travel up the tower toward Doras |only !Shaman !Warrior !Troll !Orc
    note-ptBR Suba a torre em direção a Doras |only !Shaman !Warrior !Troll !Orc
    note-enUS Talk to Doras
    note-ptBR Fale com Doras
    fp
    note-enUS Get the Orgrimmar flight path
    note-ptBR Pegue o ponto de voo de Orgrimmar
step
    only !Shaman !Warrior
    path seq 1454 49.59,94.74 49.42,90.9 52.26,88.65 42.63,61.99 41.83,61.66 42.01,60.77 |only Orc Troll
    goto 1454 41.73,62.41 8 |only Orc Troll
    goto 1454 41.91,64.3 15 |only !Orc !Troll
    path seq 1454 38.65,56.58 38.78,54.87 40.94,45.2 |only !Shaman !Warrior
    goto 1454 42.3,37.44 30 |only !Shaman !Warrior
    goto 1454 39.5,37.17 20 |only Orc Troll
    goto 1454 39.5,37.17 20 |only !Orc !Troll
    goto 1454 31.62,37.82
    note-enUS Travel up the tower, then toward Grommash Hold |only Orc Troll
    note-ptBR Suba a torre e depois vá em direção a Grommash Hold |only Orc Troll
    note-enUS Travel across the bridge, then toward Grommash Hold |only !Orc !Troll
    note-ptBR Atravesse a ponte e depois vá em direção a Grommash Hold |only !Orc !Troll
    note-enUS Talk to Thrall
    note-ptBR Fale com Thrall
    turnin 9813
step
    only Paladin
    goto 1454 32.29,35.74
    note-enUS Talk to Pyreanor
    note-ptBR Fale com Pyreanor
    train 879
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Shaman
    path seq 1454 42.63,61.99 41.83,61.66 42.01,60.77 |only Orc Troll
    goto 1454 41.73,62.41 8 |only Orc Troll
    goto 1454 41.91,64.3 15 |only !Orc !Troll
    path seq 1454 38.65,56.58 38.78,54.87 40.94,45.2 |only Shaman
    goto 1454 42.3,37.44 30 |only Shaman
    goto 1454 39.5,37.17 20 |only Orc Troll
    goto 1454 38.81,36.38
    note-enUS Travel toward Kardris |only Orc Troll
    note-ptBR Vá em direção a Kardris |only Orc Troll
    note-enUS Talk to Kardris
    note-ptBR Fale com Kardris
step
    goto 1454 38.93,38.39
    note-enUS Talk to Zor
    note-ptBR Fale com Zor
    accept 1061
step
    only Mage
    path seq 1454 42.3,37.44 |only Mage Priest Rogue Warlock
    goto 1454 40.96,45.16 20 |only Mage Priest Rogue Warlock
    path seq 1454 40.01,51.88 42.29,56.98 |only Rogue Warlock
    goto 1454 43.82,56.28 20 |only Rogue Warlock
    goto 1454 43.61,53.4 15 |only Rogue
    path seq 1454 38.66,56.48 |only Mage Priest
    goto 1454 41.17,67.04 20 |only Mage Priest
    path seq 1454 38.78,77.83 38.72,83.38 |only Mage
    goto 1454 38.36,85.56 15 |only Mage
    goto 1454 35.59,87.8 15 |only Priest
    goto 1454 43.05,53.73 10 |only Rogue
    goto 1454 48.25,45.27 15 |only Warlock
    goto 1454 38.36,85.56
    note-enUS Cast [Teleport: Orgrimmar], then go downstairs |only Troll Mage
    note-ptBR Lance [Teleport: Orgrimmar] e depois desça as escadas |only Troll Mage
    note-enUS Travel toward Pephredo |only Mage
    note-ptBR Vá em direção a Pephredo |only Mage
    note-enUS Travel toward Ur'kyo |only Priest
    note-ptBR Vá em direção a Ur'kyo |only Priest
    note-enUS Travel toward Shenthul |only Rogue
    note-ptBR Vá em direção a Shenthul |only Rogue
    note-enUS Travel toward Gan'rul |only Warlock
    note-ptBR Vá em direção a Gan'rul |only Warlock
    note-enUS Talk to Pephredo
    note-ptBR Fale com Pephredo
    train 1953
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Priest
    goto 1454 35.59,87.8
    note-enUS Talk to Ur'kyo
    note-ptBR Fale com Ur'kyo
    train 15237
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Rogue
    goto 1454 43.05,53.73
    note-enUS Talk to Shenthul
    note-ptBR Fale com Shenthul
    turnin 10794
    accept 2460
step
    only Rogue
    goto 1454 43.05,53.73
    note-enUS Target Shenthul to Salute him
    note-ptBR Selecione Shenthul como alvo para saudá-lo
    objective 2460/1
step
    only Rogue
    goto 1454 43.05,53.73
    note-enUS Talk to Shenthul
    note-ptBR Fale com Shenthul
    turnin 2460
    accept 2458
step
    only Warlock
    goto 1454 47.99,45.93
    note-enUS Talk to Grol'dar
    note-ptBR Fale com Grol'dar
    train 1094
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warlock
    goto 1454 48.25,45.27
    abandon 10605
    note-enUS Abandon Carendin Summons
    note-ptBR Abandone Carendin Summons
step
    only Warlock
    path seq 1454 48.25,45.27
    goto 1454 47.05,46.43
    note-enUS Talk to Gan'rul and Cazul
    note-ptBR Fale com Gan'rul e Cazul
    accept 1507
    turnin 1507
    accept 1508
    accept 65601
step
    only Warlock
    path seq 1454 45.37,51.02 44.07,53.5 43.82,56.28 39.24,54.35 38.14,60.48 |only Warlock
    goto 1454 37.04,59.45 10 |only Warlock
    goto 1454 37.04,59.45
    note-enUS Travel toward Zankaja |only Warlock
    note-ptBR Vá em direção a Zankaja |only Warlock
    note-enUS Talk to Zankaja
    note-ptBR Fale com Zankaja
    turnin 1508
    accept 1509
step
    only Warlock
    path seq 1454 42.01,63.34 52.99,57.59 55.88,56.81 61.49,50.55 |only Warlock
    goto 1454 63.65,49.93 15 |only Warlock
    goto 1454 63.65,49.93
    note-enUS Travel toward Magar |only Warlock
    note-ptBR Vá em direção a Magar |only Warlock
    note-enUS Talk to Magar
    note-ptBR Fale com Magar
    turnin 65601
    accept 65610
step
    only Mage
    path seq 1454 37.22,87.73 37.74,88.56 |only Mage
    goto 1454 38.64,85.42 10 |only Mage
    goto 1454 38.64,85.42
    note-enUS Travel upstairs toward Thuul |only Mage
    note-ptBR Suba as escadas em direção a Thuul |only Mage
    note-enUS Talk to Thuul
    note-ptBR Fale com Thuul
    train 3567
    note-enUS Train [Teleport: Orgrimmar]
    note-ptBR Treine [Teleport: Orgrimmar]
step
    only Warrior
    path seq 1454 63.08,39.25 64.31,38.12 |only Hunter Warrior
    goto 1454 66.07,40.04 30 |only Hunter Warrior
    path seq 1454 76.76,33.04 79.13,32.8 |only Warrior
    goto 1454 80.39,32.38 20 |only Warrior
    path seq 1454 72.25,21.42 67.6,14.89 |only Hunter
    goto 1454 66.05,18.52 20 |only Hunter
    goto 1454 80.39,32.38
    note-enUS Travel toward Sorek |only Warrior
    note-ptBR Vá em direção a Sorek |only Warrior
    note-enUS Travel toward Ormak |only Hunter
    note-ptBR Vá em direção a Ormak |only Hunter
    train 580 |only Orc Hunter Orc Warrior |opt
    train 6653 |only Orc Hunter Orc Warrior |opt
    train 6654 |only Orc Hunter Orc Warrior |opt
    train 64658 |only Orc Hunter Orc Warrior |opt
    note-enUS Talk to Sorek
    note-ptBR Fale com Sorek
    accept 1823
    train 6574
    note-enUS Train your class spells
    note-ptBR Treine your class spells
    train 6574
step
    only Warrior
    goto 1454 80.39,32.38
    note-enUS Talk to Sorek
    note-ptBR Fale com Sorek
    accept 1823
step
    only Hunter
    goto 1454 66.05,18.52
    note-enUS Talk to Ormak
    note-ptBR Fale com Ormak
    train 3045
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Shaman
    path seq 1454 63.08,39.25 64.31,38.12 66.07,40.04 |only Paladin
    goto 1454 74.19,25.89 30 |only Paladin
    goto 1454 76.76,22.12 30 |only Paladin Shaman Warrior
    goto 1454 81.53,19.64 10 |only Shaman Warrior Paladin
    goto 1454 81.53,19.64
    note-enUS Travel toward Hanashi |only Shaman Warrior Paladin
    note-ptBR Vá em direção a Hanashi |only Shaman Warrior Paladin
    note-enUS Talk to Hanashi
    note-ptBR Fale com Hanashi
    train 196
    note-enUS Train 1h Axes
    note-ptBR Treine 1h Axes
    train 197
    note-enUS Train 2h Axes
    note-ptBR Treine 2h Axes
    train 196
    train 197
step
    only Shaman
    goto 1454 81.53,19.64
    note-enUS Talk to Hanashi
    note-ptBR Fale com Hanashi
    train 196
    note-enUS Train 1h Axes
    note-ptBR Treine 1h Axes
step
    only Warrior Paladin
    goto 1454 81.53,19.64
    note-enUS Talk to Hanashi
    note-ptBR Fale com Hanashi
    train 197
    note-enUS Train 2h Axes
    note-ptBR Treine 2h Axes
step
    path seq 1454 52.26,88.65
    goto 1454 49.42,90.9 30
    goto 1454 48.5,95.12 30 |only !Troll
    goto 1454 48.5,95.12 30 |only Troll
    path seq 1454 47.41,65.07 46.59,64.54 46.75,63.84 46.59,64.54 46.75,63.84 46.59,64.54 46.75,63.84 |only Warrior Shaman
    goto 1454 45.12,63.88 10 |only Warrior Shaman
    path seq 1411 46.94,69.1 46.02,69.32 41.38,73.54 |only Troll
    goto 1411 66.29,35.94 30 |only Troll
    goto 1413 63.08,37.16 30 |only Troll
    goto 1413 63.08,37.16
    note-enUS Exit Orgrimmar |only Troll
    note-ptBR Saia de Orgrimmar |only Troll
    zone 1411 |only !Troll |opt
    note-enUS Exit Orgrimmar |only !Troll
    note-ptBR Saia de Orgrimmar |only !Troll
    note-enUS Travel up the tower toward Doras |only Warrior Shaman
    note-ptBR Suba a torre em direção a Doras |only Warrior Shaman
    note-enUS Talk to Doras |only Warrior Shaman
    note-ptBR Fale com Doras |only Warrior Shaman
    fp |only Warrior |opt
    note-enUS Fly to Crossroads |only Warrior
    note-ptBR Voe para Crossroads |only Warrior
    fp |only Shaman |opt
    note-enUS Fly to Camp Taurajo |only Shaman
    note-ptBR Voe para Camp Taurajo |only Shaman
    note-enUS Travel toward Bragok |only Troll
    note-ptBR Vá em direção a Bragok |only Troll
    note-enUS Talk to Bragok
    note-ptBR Fale com Bragok
    fp |only !Shaman !Warrior
    note-enUS Get the Ratchet flight path |only !Shaman !Warrior
    note-ptBR Pegue o ponto de voo de Ratchet |only !Shaman !Warrior
step
    path seq 1413 63,37.2 63.09,37.61
    goto 1413 62.4,37.6
    note-enUS Accept quest around Ratchet
    note-ptBR Aceite a missão pelos arredores de Ratchet
    note-enUS Talk to Sputtervalve
    note-ptBR Fale com Sputtervalve
    accept 1483
    note-enUS Talk to Crane Operator Bigglefuzz
    note-ptBR Fale com Crane Operator Bigglefuzz
    accept 959
    note-enUS Talk to Mebok Mizzyrix
    note-ptBR Fale com Mebok Mizzyrix
    accept 865
step
    goto 1413 62.4,37.6
    note-enUS Talk to Mebok Mizzyrix
    note-ptBR Fale com Mebok Mizzyrix
    accept 1069
step
    only Rogue
    goto 1413 65,45.4
    note-enUS Run to the boat then go down to the 2nd floor. Start picking lockboxes until you're at 80 lockpicking skill.
    note-ptBR Corra até o barco e desça para o 2º andar. Comece a arrombar lockboxes até ter 80 de habilidade em arrombamento.
step
    goto 1413 52.3,31.9
    note-enUS Run to the Crossroads
    note-ptBR Corra até Crossroads
    note-enUS Talk to Tonga Runetotem
    note-ptBR Fale com Tonga Runetotem
    accept 870
step
    goto 1413 51.9,31.6
    note-enUS Talk to Mankrik
    note-ptBR Fale com Mankrik
    accept 899
    accept 4921
step
    path seq 1413 52.02,30.14
    goto 1413 51.99,29.89 15
    note-enUS Travel toward Boorand
    note-ptBR Vá em direção a Boorand
    note-enUS Talk to Boorand
    note-ptBR Fale com Boorand
    home
    note-enUS Set your Hearthstone to Crossroads
    note-ptBR Defina sua pedra de regresso em Crossroads
step
    only Warlock
    goto 1413 51.93,30.32
    note-enUS Talk to BGazrog
    note-ptBR Fale com BGazrog
    turnin 1509
    accept 1510
step
    only !Shaman !Warrior
    goto 1413 51.5,30.33
    note-enUS Talk to BDevrak
    note-ptBR Fale com BDevrak
    fp
    note-enUS Get the The Crossroads flight path
    note-ptBR Pegue o ponto de voo de The Crossroads
step
    goto 1413 51.5,30.1
    note-enUS Talk to Apothecary Helbrim
    note-ptBR Fale com Apothecary Helbrim
    accept 848
step
    goto 1413 45.4,28.4
    note-enUS Head west out of the Crossroads
    note-ptBR Siga para o oeste saindo de Crossroads
    note-enUS Talk to Regthar Deathgate
    note-ptBR Fale com Regthar Deathgate
    accept 850
step
    ifonquest 870
    goto 1413 45.1,22.5
    note-enUS Collect the white mushrooms around The Forgotten Pools
    note-ptBR Colete os cogumelos brancos pelos arredores de The Forgotten Pools
    objective 848/1 |opt
    note-enUS Dive underwater to the Bubbling Fissure
    note-ptBR Mergulhe até a Bubbling Fissure
    objective 870/1
step
    ifonquest 848
    path seq 1413 45.2,23.3 45.2,22 44.6,22.5
    goto 1413 45,22.7
    note-enUS Finish collecting the white mushrooms around The Forgotten Pools
    note-ptBR Termine de coletar os cogumelos brancos pelos arredores de The Forgotten Pools
    objective 848/1
step
    ifonquest 850
    goto 1413 42.9,23.5
    note-enUS Kill Kodobane. Loot him for his head
    note-ptBR Mate Kodobane. Saqueie-o para obter a cabeça dele
    objective 850/1
step
    ifonquest 1061
    goto 1413 35.3,27.9
    note-enUS Kill & Loot level 16+ raptors as you see them en route to the next step
    note-ptBR Mate e saqueie raptores de nível 16+ que encontrar no caminho para a próxima etapa
    objective 865/1 |opt
    note-enUS Talk to Seereth Stonebreak
    note-ptBR Fale com Seereth Stonebreak
    turnin 1061
    accept 1062
step
    goto 1413 35.3,27.9
    note-enUS Talk to Makaba Flathoof
    note-ptBR Fale com Makaba Flathoof
    accept 6548
step
    goto 1442 81.8,96.1
    zone 1442
    note-enUS Head to Stonetalon Mountains
    note-ptBR Vá para Stonetalon Mountains
step
    ifonquest 6548
    path seq 1442 80.7,89.2 82,86 84.7,84.3 82.3,90 80.7,89.2 82,86 84.7,84.3
    goto 1442 82.3,90
    note-enUS Kill Grimtotems in the area
    note-ptBR Mate Grimtotems na área
    objective 6548/2
    objective 6548/1
step
    ifonquest 6548
    goto 1413 35.19,27.79
    note-enUS Head back to the quest giver in The Barrens
    note-ptBR Volte até quem deu a missão em The Barrens
    note-enUS Talk to Makaba Flathoof
    note-ptBR Fale com Makaba Flathoof
    turnin 6548
    accept 6629
step
    path seq 1442 82.3,98.5
    goto 1442 71.4,95.1
    note-enUS Run up to the mountain here
    note-ptBR Corra até a montanha aqui
    note-enUS Talk to Xen'Zilla in the hut
    note-ptBR Fale com Xen'Zilla na cabana
    note-enUS Talk to Xen'Zilla
    note-ptBR Fale com Xen'Zilla
    accept 6461
step
    ifonquest 6629
    path seq 1442 71.7,86.7
    goto 1442 74,86.2
    note-enUS Run to the path here
    note-ptBR Corra até o caminho aqui
    note-enUS Make sure you kill all 6 brutes before starting the quest inside. Kill Grundig in front of the main tent
    note-ptBR Mate todos os 6 brutos antes de iniciar a missão lá dentro. Mate Grundig em frente à tenda principal
    objective 6629/1
    objective 6629/2
step
    ifonquest 6629
    goto 1442 73.5,85.8
    note-enUS Start the Kaya Escort
    note-ptBR Inicie a escolta de Kaya
    note-enUS Talk to Kaya Flathoof
    note-ptBR Fale com Kaya Flathoof
    accept 6523
step
    ifonquest 6523
    goto 1442 75.8,91.4
    note-enUS Escort Kaya and stay close to her. 3 Grimtotems will spawn at the bonfire. Eat/drink before she gets to the camp
    note-ptBR Escolte Kaya e fique perto dela. 3 Grimtotems surgirão na fogueira. Coma/beba antes que ela chegue ao acampamento
    objective 6523/1
step
    goto 1442 59,75.7
    note-enUS Kill Deepmoss Creepers en route to the wanted poster. You do not have to finish the quest now.
    note-ptBR Mate Deepmoss Creepers no caminho até o cartaz de Procura-se. Você não precisa terminar a missão agora.
    objective 6461/1 |opt
    note-enUS Click the Wanted poster up the road
    note-ptBR Clique no cartaz de Procura-se mais adiante na estrada
    accept 6284
step
    goto 1442 57.5,76.2 30
    note-enUS Run up the path here to Sishir Canyon
    note-ptBR Suba o caminho correndo aqui até Sishir Canyon
step
    ifonquest 6461
    path seq 1442 54.7,71.9 52.6,71.8 52.2,75.6 53.9,74.2 54.7,71.9 52.6,71.8 52.2,75.6 53.9,74.2 54.7,71.9 52.6,71.8 52.2,75.6 53.9,74.2 54.7,71.9 52.6,71.8 52.2,75.6
    goto 1442 53.9,74.2
    note-enUS Click the spider eggs near the trees. Be careful as mobs can spawn from the eggs
    note-ptBR Clique nos ovos de aranha perto das árvores. Cuidado, pois mobs podem surgir dos ovos
    objective 1069/1 |opt
    note-enUS Kill and loot Besseleth for his fang
    note-ptBR Mate e saqueie Besseleth para obter a presa dele
    objective 6284/1 |opt
    note-enUS Kill the Deepmoss Spiders and Besseleth in the area. Loot Besseleth for his fang
    note-ptBR Mate os Deepmoss Spiders e Besseleth na área. Saqueie Besseleth para obter a presa dele
    objective 6461/1
    objective 6461/2
step
    ifonquest 1483
    goto 1442 58.99,62.6
    note-enUS Head to the goblin hut behind the hill
    note-ptBR Vá até a cabana goblin atrás da colina
    note-enUS Talk to Ziz Fizziks
    note-ptBR Fale com Ziz Fizziks
    turnin 1483
step
    goto 1442 58.99,62.6
    note-enUS Head to the goblin hut behind the hill
    note-ptBR Vá até a cabana goblin atrás da colina
    note-enUS Talk to Ziz Fizziks
    note-ptBR Fale com Ziz Fizziks
    accept 1093
step
    path seq 1442 62.8,53.7 61.7,51.5 66.8,45.3 71.7,49.9 74.3,54.7
    goto 1442 62.8,53.7
    note-enUS Kill Loggers as you search for Operators to get the Blueprints
    note-ptBR Mate Loggers enquanto procura Operators para obter os Blueprints
    objective 1062/1 |opt
    note-enUS Kill Venture Co. Operators until you get the Blueprints
    note-ptBR Mate Venture Co. Operators até obter os Blueprints
    objective 1093/1
step
    ifonquest 1062
    path seq 1442 64.1,56.7 73.4,54.3 64.1,56.7 73.4,54.3 64.1,56.7 73.4,54.3 64.1,56.7
    goto 1442 73.4,54.3
    note-enUS Finish killing Loggers
    note-ptBR Termine de matar Loggers
    objective 1062/1
step
    goto 1442 58.99,62.6
    note-enUS Talk to Ziz Fizziks
    note-ptBR Fale com Ziz Fizziks
    turnin 1093
    accept 1094
step
    goto 1413 52.2,31.9
    hearth
    note-enUS Hearth to Crossroads
    note-ptBR Use a pedra de regresso para Crossroads
step
    ifonquest 870
    goto 1413 52.2,31.9
    note-enUS Talk to Tonga Runetotem
    note-ptBR Fale com Tonga Runetotem
    turnin 870
step
    ifturnedin 870
    goto 1413 52.2,31.9
    note-enUS Talk to Tonga Runetotem
    note-ptBR Fale com Tonga Runetotem
    accept 877
step
    goto 1413 52.3,31.9
    vendor
    note-enUS Vendor trash & repair your gear.
    note-ptBR Venda o lixo e repare seu equipamento.
step
    ifonquest 848
    goto 1413 51.5,30.2
    note-enUS Turning this in will start a timed quest. Log out here if you're going to be busy in the next 45+ minutes.
    note-ptBR Entregar esta missão inicia uma missão com tempo. Deslogue aqui se for estar ocupado nos próximos 45+ minutos.
    note-enUS Talk to Apothecary Helbrim
    note-ptBR Fale com Apothecary Helbrim
    turnin 848
step
    ifturnedin 848
    goto 1413 51.5,30.2
    note-enUS Wait for the roleplay then accept the quest
    note-ptBR Espere o roleplay e depois aceite a missão
    note-enUS Talk to Apothecary Helbrim
    note-ptBR Fale com Apothecary Helbrim
    accept 853
step
    ifonquest 877
    goto 1413 55.6,42.7
    note-enUS You have 45 minutes to complete the Apothecary quest so keep an eye on the timer. Skip the quest if you fail it
    note-ptBR Você tem 45 minutos para completar a missão do Apothecary, então fique de olho no cronômetro. Pule a missão se falhar
    note-enUS Kill & Loot any level 16+ Raptors you see
    note-ptBR Mate e saqueie quaisquer Raptors de nível 16+ que encontrar
    objective 865/1 |opt
    note-enUS Click the Bubbling Fissure underwater
    note-ptBR Clique na Bubbling Fissure debaixo d'água
    objective 877/1
step
    ifonquest 865
    path seq 1413 52.2,46.6 57.8,54.1 52.2,46.6 57.8,54.1 52.2,46.6
    goto 1413 57.8,54.1
    note-enUS Finish looting the rest of the Raptor Horns
    note-ptBR Termine de saquear o restante dos Raptor Horns
    objective 865/1
step
    goto 1413 49.3,50.4
    note-enUS Head to the small outpost by the road to the south
    note-ptBR Vá até o pequeno posto avançado perto da estrada ao sul
    objective 4921/1
step
    path seq 1413 50,53.1 46,49.2
    goto 1413 45.3,52.5
    note-enUS Find & kill Lakota'mani (Gray Kodo) around the area. Loot his Hoof. If you can't find him, skip this quest.
    note-ptBR Encontre e mate Lakota'mani (Kodo Cinzento) pela área. Saqueie o Casco dele. Se não o encontrar, pule esta missão.
    collect 5099 1 |quest 883 |opt
    use 5099 |opt
    accept 883 |opt
step
    goto 1413 45.1,57.68
    note-enUS Talk to Tatternack Steelforge
    note-ptBR Fale com Tatternack Steelforge
    accept 893
step
    ifonquest 883
    goto 1413 44.7,59.1
    note-enUS Talk to Jorn Skyseer
    note-ptBR Fale com Jorn Skyseer
    turnin 883
step
    goto 1413 44.8,59.1
    note-enUS Talk to Jorn Skyseer
    note-ptBR Fale com Jorn Skyseer
    accept 1130
step
    goto 1413 44.5,59.2
    note-enUS Talk to Mangletooth
    note-ptBR Fale com Mangletooth
    accept 878
step
    goto 1413 44.5,59.2
    fp
    note-enUS Get the Camp Taurajo flight path
    note-ptBR Pegue o ponto de voo de Camp Taurajo
step
    path seq 1413 47.1,53.3 42.2,48.3 44.3,52.3 47.1,53.3 53.2,54.3 53.3,51.3 53.2,54.3 53.3,51.3 44.3,52.3 47.1,53.3
    goto 1413 45.2,54.3
    note-enUS Kill a LOT of Quilboars. Prioritize Thornweavers, Water Seekers, and Geomancers where you can. Loot them for their tusks. Save the Blood Shards you get
    note-ptBR Mate MUITOS Quilboars. Priorize Thornweavers, Water Seekers e Geomancers quando puder. Saqueie-os para obter as presas deles. Guarde os Blood Shards que conseguir
    objective 878/1
    objective 878/2
    objective 878/3
    objective 899/1
step
    path seq 1413 44.2,62.1 49.2,62.6 49.6,60 44.2,62.1 49.2,62.6
    goto 1413 49.6,60
    note-enUS Search for Owatanka (Blue Thunder Lizard) around this area. If you find him, loot his Tailspike and start the quest. Skip this quest if you can't find him
    note-ptBR Procure Owatanka (Thunder Lizard azul) por esta área. Se encontrá-lo, saqueie a Tailspike dele e inicie a missão. Pule esta missão se não conseguir encontrá-lo
    collect 5102 1 |quest 884
    use 5102
    accept 884
step
    goto 1413 44.6,59.2
    note-enUS Talk to Mangletooth
    note-ptBR Fale com Mangletooth
    turnin 878
    accept 5052
    turnin 5052
    note-enUS Use your Blood Shards on Spirit of the Wind
    note-ptBR Use seus Blood Shards em Spirit of the Wind
    accept 889
    turnin 889
step
    ifonquest 884
    goto 1413 44.9,59.1
    note-enUS Destroy any leftover Blood Shards
    note-ptBR Destrua quaisquer Blood Shards que sobrarem
    note-enUS Talk to Jorn Skyseer
    note-ptBR Fale com Jorn Skyseer
    turnin 884
step
    ifonquest 883
    goto 1413 44.9,59.1
    note-enUS Talk to Jorn Skyseer
    note-ptBR Fale com Jorn Skyseer
    turnin 883
step
    only !Tauren
    goto 1456 32.1,67.2 30
    note-enUS Run to Thunder Bluff
    note-ptBR Corra até Thunder Bluff
step
    only Warlock
    goto 1456 45.81,64.71 |only !Tauren
    goto 1456 40.9,62.7
    home |only !Tauren |opt
    note-enUS Set your Hearthstone to Thunder Bluff |only !Tauren
    note-ptBR Defina sua pedra de regresso em Thunder Bluff |only !Tauren
    train 227
    note-enUS Train Staves
    note-ptBR Treine Staves
step
    goto 1413 44.4,59.2 |only Tauren
    goto 1456 76.48,27.22 |only Druid
    goto 1456 30.1,30 25
    fly 1456 |only Tauren |opt
    note-enUS Fly or run to Thunder Bluff |only Tauren
    note-ptBR Voe ou corra até Thunder Bluff |only Tauren
    note-enUS Talk to Turak Runetotem |only Druid
    note-ptBR Fale com Turak Runetotem |only Druid
    trainer |only Druid |opt
    note-enUS Go and train your class spells |only Druid
    note-ptBR Vá treinar suas magias de classe |only Druid
    note-enUS Go into The Pools of Vision below the Spirit Rise
    note-ptBR Entre em The Pools of Vision abaixo de Spirit Rise
step
    goto 1456 27.5,24.7
    note-enUS Talk to Clarice Foster
    note-ptBR Fale com Clarice Foster
    note-enUS Talk to Clarice Foster
    note-ptBR Fale com Clarice Foster
    accept 264
step
    ifonquest 853
    goto 1456 23,20.9
    note-enUS If you failed the Zamah quest, just abandon it
    note-ptBR Se você falhou na missão de Zamah, simplesmente abandone-a
    note-enUS Talk to Apothecary Zamah
    note-ptBR Fale com Apothecary Zamah
    turnin 853
step
    ifonquest 853
    abandon 853
    note-enUS Abandon Apothecary Zamah
    note-ptBR Abandone Apothecary Zamah
step
    goto 1456 23,20.9
    note-enUS Talk to Apothecary Zamah
    note-ptBR Fale com Apothecary Zamah
    accept 962
step
    goto 1456 45.81,64.71 |only Tauren
    goto 1456 61.54,80.92
    home |only Tauren |opt
    note-enUS Set your Hearthstone to Thunder Bluff |only Tauren
    note-ptBR Defina sua pedra de regresso em Thunder Bluff |only Tauren
    note-enUS Head to Hunter's Rise
    note-ptBR Vá até Hunter's Rise
    note-enUS Talk to Melor Stonehoof
    note-ptBR Fale com Melor Stonehoof
    turnin 1130
    accept 1131
step
    goto 1456 54.97,51.41
    note-enUS Talk to Zangen Stonehoof
    note-ptBR Fale com Zangen Stonehoof
    accept 1195
step
    only !Tauren
    goto 1456 47,49.83
    note-enUS Go up the tower
    note-ptBR Suba a torre
    fp
    note-enUS Get the Thunder Bluff Flight Path
    note-ptBR Pegue o ponto de voo de Thunder Bluff
step
    ifonquest 865
    goto 1456 47,49.83
    goto 1413 62.4,37.6
    fp |opt
    note-enUS Fly to Ratchet
    note-ptBR Voe para Ratchet
    note-enUS Talk to Mebok Mizzyrix
    note-ptBR Fale com Mebok Mizzyrix
    turnin 865
step
    ifturnedin 865
    goto 1413 62.4,37.6
    note-enUS Talk to Mebok Mizzyrix
    note-ptBR Fale com Mebok Mizzyrix
    accept 1491
step
    goto 1413 62.4,37.6
    note-enUS Talk to Mebok Mizzyrix
    note-ptBR Fale com Mebok Mizzyrix
    turnin 1069
step
    goto 1413 63,37.2
    note-enUS Destroy any leftover Deepmoss Spider Eggs
    note-ptBR Destrua quaisquer Deepmoss Spider Eggs que sobrarem
    note-enUS Talk to Sputtervalve
    note-ptBR Fale com Sputtervalve
    turnin 1094
    accept 1095
step
    path seq 1413 63.1,37.2
    goto 1413 52,31.6
    fp |opt
    note-enUS Fly to Crossroads
    note-ptBR Voe para Crossroads
    note-enUS Talk to Mankrik
    note-ptBR Fale com Mankrik
    turnin 4921
    turnin 899
step
    ifonquest 877
    goto 1413 52.2,31.9
    note-enUS Destroy any leftover Quilboar Tusks
    note-ptBR Destrua quaisquer Quilboar Tusks que sobrarem
    note-enUS Talk to Tonga Runetotem
    note-ptBR Fale com Tonga Runetotem
    turnin 877
step
    ifonquest 959
    path seq 1413 47,34.7 46.4,34.9
    goto 1413 46.6,34.8 10
    note-enUS Go up the mountain here
    note-ptBR Suba a montanha aqui
step
    ifonquest 959
    path seq 1414 51.9,55.4
    goto 1414 51.9,55.6 15
    note-enUS Drop down carefully to the eye of the cave (you may have to walk or backpedal off)
    note-ptBR Desça com cuidado até o olho da caverna (talvez precise andar ou recuar para cair)
step
    ifonquest 959
    goto 1414 51.9,55.4
    note-enUS Go into the eye of the cave
    note-ptBR Vá até o centro da caverna
    note-enUS Talk to Nalpak
    note-ptBR Fale com Nalpak
    accept 1486
step
    ifonquest 959
    goto 1413 46.1,36.7 35
    note-enUS Leave the eye. Go to the mouth of the cave
    note-ptBR Saia do olho. Vá até a boca da caverna
step
    ifonquest 1486
    note-enUS Kill Deviate mobs. Loot them for their hides
    note-ptBR Mate mobs Deviate. Saqueie-os para obter as peles deles
    objective 1486/1
step
    ifonquest 962
    note-enUS Look for green and red flowers on the ground
    note-ptBR Procure flores verdes e vermelhas no chão
    objective 962/1
step
    ifonquest 959
    path seq 1414 52,55.4 52.2,55.2 51.8,54.8 52,55.4 52.2,55.2 51.8,54.8 52,55.4 52.2,55.2 51.8,54.8 52,55.4 52.2,55.2 51.8,54.8
    goto 1414 52.2,55.2
    note-enUS Look for Mad Magglish (a goblin). He's stealthed, and has multiple spawnpoints. Kill and loot him for 99-Year-Old Port
    note-ptBR Procure Mad Magglish (um goblin). Ele fica em furtividade e tem vários pontos de ressurgimento. Mate-o e saqueie-o para obter o 99-Year-Old Port
    objective 959/1
step
    ifonquest 1491
    goto 1414 51.9,54.9 20
    note-enUS Enter the deeper part of the cave
    note-ptBR Entre na parte mais profunda da caverna
step
    ifonquest 1491
    path seq 1414 52.1,54.5 52.3,54.6 52.4,55.1 52.8,54.8 52.6,54.5 52.1,54.5 52.3,54.6 52.4,55.1 52.8,54.8 52.6,54.5 52.1,54.5 52.3,54.6 52.4,55.1 52.8,54.8
    goto 1414 52.6,54.5 30
    note-enUS Kill Ectoplasms for Wailing Essences. Keep an eye out for the 2 rares in the deeper part of the cave (Trigore and Boahn), as they can drop blue BoE items
    note-ptBR Mate Ectoplasms para obter Wailing Essences. Fique de olho nos 2 raros na parte mais funda da caverna (Trigore e Boahn), pois eles podem dropar itens azuis BoE
    objective 1491/1
step
    ifonquest 1486
    goto 1414 51.9,55.4
    note-enUS Run back to the eye of the cave
    note-ptBR Volte correndo para o centro da caverna
    note-enUS Talk to Nalpak
    note-ptBR Fale com Nalpak
    turnin 1486
step
    ifonquest 850
    goto 1413 45.4,28.4
    note-enUS Head back to the Kolkar outpost
    note-ptBR Volte para o posto avançado Kolkar
    note-enUS Talk to Regthar Deathgate
    note-ptBR Fale com Regthar Deathgate
    turnin 850
step
    ifcomplete 1062
    goto 1413 35.3,27.8
    note-enUS Head towards Stonetalon. Talk to Seereth
    note-ptBR Siga em direção a Stonetalon. Fale com Seereth
    note-enUS Talk to Seereth Stonebreak
    note-ptBR Fale com Seereth Stonebreak
    turnin 1062
step
    ifturnedin 1062
    goto 1413 35.3,27.8
    note-enUS Talk to Seereth Stonebreak
    note-ptBR Fale com Seereth Stonebreak
    accept 1063
step
    ifonquest 6523
    goto 1413 35.3,27.8
    note-enUS Head towards Stonetalon
    note-ptBR Siga em direção a Stonetalon
    note-enUS Talk to Makaba Flathoof
    note-ptBR Fale com Makaba Flathoof
    turnin 6629
    turnin 6523
step
    ifturnedin 6523
    goto 1413 35.3,27.8
    note-enUS Talk to Makaba Flathoof
    note-ptBR Fale com Makaba Flathoof
    accept 6401
step
    ifonquest 6461
    goto 1442 82.3,98.5 40
    note-enUS Run up to the mountain here
    note-ptBR Corra até a montanha aqui
step
    ifonquest 6461
    goto 1442 71.3,95
    note-enUS Talk to Xen'Zilla
    note-ptBR Fale com Xen'Zilla
    turnin 6461
step
    only !Rogue
    path seq 1442 49,62.8
    goto 1442 47.3,64.2
    note-enUS Head to Sun Rock Retreat
    note-ptBR Vá até Sun Rock Retreat
    note-enUS Head up the side mountain path to your left once you reach Sun Rock
    note-ptBR Suba pela trilha lateral da montanha à sua esquerda quando chegar a Sun Rock
    note-enUS Talk to Tsunaman
    note-ptBR Fale com Tsunaman
    accept 6562
step
    only Rogue
    path seq 1442 49,62.8
    goto 1442 47.3,64.2
    note-enUS Head to Sun Rock Retreat
    note-ptBR Vá até Sun Rock Retreat
    note-enUS Head up the side mountain path to your left once you reach Sun Rock
    note-ptBR Suba pela trilha lateral da montanha à sua esquerda quando chegar a Sun Rock
    note-enUS Talk to Tsunaman
    note-ptBR Fale com Tsunaman
    accept 6562
step
    ifonquest 6284
    goto 1442 47.2,61.1
    note-enUS Talk to Maggran Earthbinder
    note-ptBR Fale com Maggran Earthbinder
    turnin 6284
step
    goto 1442 45.1,59.8
    fp
    note-enUS Get the Sun Rock Retreat Flight Path
    note-ptBR Pegue o ponto de voo de Sun Rock Retreat
step
    ifonquest 6401
    goto 1442 47.5,58.3
    note-enUS Talk to Tammra Windfield
    note-ptBR Fale com Tammra Windfield
    turnin 6401
step
    ifonquest 1095
    goto 1442 58.99,62.6
    note-enUS Head back to the goblin hut behind the hill
    note-ptBR Volte para a cabana goblin atrás da colina
    note-enUS Talk to Ziz Fizziks
    note-ptBR Fale com Ziz Fizziks
    turnin 1095
step
    goto 1442 78.2,42.8 30
    goto 1440 42.3,71 20
    note-enUS Go to Talondeep Path
    note-ptBR Vá até Talondeep Path
    note-enUS Run through the cave to Ashenvale
    note-ptBR Corra pela caverna até Ashenvale
step
    goto 1440 16.3,29.8 90
    note-enUS Go to the Zoram'gar Outpost. Be sure to avoid Astranaar guards en route
    note-ptBR Vá até Zoram'gar Outpost. Evite os guardas de Astranaar no caminho
step
    goto 1440 12.3,33.8
    fp
    note-enUS Get the Zoram'gar Outpost flight path
    note-ptBR Pegue o ponto de voo de Zoram'gar Outpost
step
    goto 1440 11.8,34.7
    note-enUS Talk to Karang Amakkar
    note-ptBR Fale com Karang Amakkar
    accept 216
step
    goto 1440 11.6,34.9
    note-enUS Talk to the trolls in the hut
    note-ptBR Fale com os trolls na cabana
    note-enUS Talk to Marukai
    note-ptBR Fale com Marukai
    accept 6442
    note-enUS Talk to Mitsuwa
    note-ptBR Fale com Mitsuwa
    accept 6462
step
    ifcomplete 6562
    goto 1440 11.6,34.3
    note-enUS Talk to Je'neu Sancrea
    note-ptBR Fale com Je'neu Sancrea
    turnin 6562
step
    goto 1440 11.6,34.3
    note-enUS Talk to Je'neu Sancrea
    note-ptBR Fale com Je'neu Sancrea
    accept 6563
step
    goto 1440 12.1,34.4
    note-enUS Accepting this quest starts an escort. Follow him
    note-ptBR Aceitar esta missão inicia uma escolta. Siga-o
    note-enUS Talk to Muglash
    note-ptBR Fale com Muglash
    accept 6641
step
    ifonquest 6442
    goto 1440 15.5,17.1
    note-enUS Kill the Nagas around the beach. Loot them for their heads
    note-ptBR Mate as Nagas pela praia. Saqueie-as para obter as cabeças delas
    objective 6442/1
step
    ifonquest 6641
    goto 1440 9.8,27.4
    note-enUS Click the Brazier. There will be waves of Naga that spawn. Once Vorsha comes out, let Muglash get aggro before fighting him.
    note-ptBR Clique no Brazier. Ondas de Naga vão aparecer. Quando Vorsha surgir, deixe Muglash pegar o aggro antes de enfrentá-lo.
    objective 6641/1
step
    ifonquest 6442
    goto 1440 14.2,14.7 40
    note-enUS Drop down the hole into Blackfathom Deeps
    note-ptBR Desça pelo buraco para Blackfathom Deeps
step
    ifonquest 6563
    path seq 1440 13,13.2 13.6,9 13,13.2 13.6,9 13,13.2 13.6,9 13,13.2 13.6,9 13,13.2 13.6,9 13,13.2 13.6,9 13,13.2 13.6,9 13,13.2
    goto 1440 13.6,9
    use 16790 |opt
    note-enUS Swim under the water and enter Blackfathom Deeps. Kill the Priestess' until a Damp Note drops(quest). Then right click it and accept the quest.
    note-ptBR Nade debaixo d'água e entre em Blackfathom Deeps. Mate as Priestess até dropar uma Damp Note (missão). Depois clique com o botão direito nela e aceite a missão.
    collect 16790 1 |quest 6564 |opt
    accept 6564 |opt
    note-enUS Loot the Sapphires from the walls in the tunnel.
    note-ptBR Saqueie as Sapphires das paredes do túnel.
    objective 6563/1
step
    ifcomplete 6641
    goto 1440 12.22,34.22
    note-enUS Return to Zoram'gar Outpost.
    note-ptBR Volte para Zoram'gar Outpost.
    note-enUS Talk to Warsong Runner
    note-ptBR Fale com o Warsong Runner
    turnin 6641
step
    ifcomplete 6563
    goto 1440 11.6,34.3
    note-enUS Talk to Je'neu Sancrea
    note-ptBR Fale com Je'neu Sancrea
    turnin 6563
step
    ifonquest 6564
    goto 1440 11.6,34.3
    note-enUS Destroy any leftover Sapphires of Aku'Mai
    note-ptBR Destrua quaisquer Sapphires of Aku'Mai que sobrarem
    note-enUS Talk to Je'neu Sancrea
    note-ptBR Fale com Je'neu Sancrea
    turnin 6564
step
    ifcomplete 6442
    goto 1440 11.69,34.91
    note-enUS Talk to Marukai
    note-ptBR Fale com Marukai
    turnin 6442
step
    ifonquest 1063
    goto 1442 45.1,59.8
    goto 1456 69.85,30.91
    hearth |opt
    note-enUS Hearth to Thunder Bluff
    note-ptBR Use a pedra de regresso para Thunder Bluff
    fly 1456 |opt
    note-enUS Fly to Thunder Bluff
    note-ptBR Voe para Thunder Bluff
    note-enUS Talk to Magatha Grimtotem
    note-ptBR Fale com Magatha Grimtotem
    turnin 1063
    note-enUS Wait for the roleplay to finish
    note-ptBR Espere o roleplay terminar
    accept 1064
step
    ifonquest 1064
    goto 1456 22.9,21.1
    note-enUS Head to the pools under the Spirit Rise
    note-ptBR Vá até os lagos abaixo de Spirit Rise
    note-enUS Talk to Apothecary Zamah
    note-ptBR Fale com Apothecary Zamah
    turnin 1064
    accept 1065
step
    ifonquest 1489
    goto 1456 78.4,28.4
    note-enUS Talk to Arch Druid Hamuul Runetotem
    note-ptBR Fale com Arch Druid Hamuul Runetotem
    turnin 1489
    accept 1490
step
    ifturnedin 1489
    goto 1456 75.6,31.2
    note-enUS Talk to Nara Wildmane
    note-ptBR Fale com Nara Wildmane
    turnin 1490
step
    ifonquest 962
    goto 1456 22.9,21.1
    note-enUS Head to the pools under the Spirit Rise
    note-ptBR Vá até os lagos abaixo de Spirit Rise
    note-enUS Talk to Apothecary Zamah
    note-ptBR Fale com Apothecary Zamah
    turnin 962
step
    ifonquest 959
    goto 1456 47,49.83 |only !Druid
    goto 1456 47,49.83 |only Druid
    goto 1413 63.09,37.61
    fp |only !Druid |opt
    note-enUS Fly to Ratchet |only !Druid
    note-ptBR Voe para Ratchet |only !Druid
    fp |only Druid |opt
    note-enUS Fly to Ratchet |only Druid
    note-ptBR Voe para Ratchet |only Druid
    note-enUS Talk to Crane Operator Bigglefuzz
    note-ptBR Fale com Crane Operator Bigglefuzz
    turnin 959
step
    ifonquest 1491
    goto 1413 62.4,37.6
    note-enUS Talk to Mebok Mizzyrix
    note-ptBR Fale com Mebok Mizzyrix
    turnin 1491
step
    only Rogue
    goto 1454 32.4,35.8 |only Paladin
    goto 1454 38.6,36 |only Shaman
    path seq 1454 66.05,18.53 |only Hunter
    goto 1454 66.3,14.8 |only Hunter
    goto 1454 79.7,31.4 |only Warrior
    goto 1454 44,54.6 |only Rogue
    goto 1454 47.98,45.93 |only Warlock
    goto 1454 38.8,85.6 |only Mage
    goto 1454 35.6,87.8 |only Priest
    goto 1454 43.05,53.74
    trainer |only Paladin |opt
    note-enUS Go and train your class spells |only Paladin
    note-ptBR Vá treinar suas magias de classe |only Paladin
    trainer |only Shaman |opt
    note-enUS Go and train your class spells |only Shaman
    note-ptBR Vá treinar suas magias de classe |only Shaman
    trainer |only Hunter |opt
    note-enUS Go and train your class spells |only Hunter
    note-ptBR Vá treinar suas magias de classe |only Hunter
    trainer |only Hunter |opt
    note-enUS Go and train your pet spells |only Hunter
    note-ptBR Vá treinar as magias do seu pet |only Hunter
    trainer |only Warrior |opt
    note-enUS Go and train your class spells |only Warrior
    note-ptBR Vá treinar suas magias de classe |only Warrior
    trainer |only Rogue |opt
    note-enUS Go and train your class spells |only Rogue
    note-ptBR Vá treinar suas magias de classe |only Rogue
    trainer |only Warlock |opt
    note-enUS Go and train your class spells |only Warlock
    note-ptBR Vá treinar suas magias de classe |only Warlock
    trainer |only Mage |opt
    note-enUS Go and train your class spells |only Mage
    note-ptBR Vá treinar suas magias de classe |only Mage
    trainer |only Priest |opt
    note-enUS Go and train your class spells |only Priest
    note-ptBR Vá treinar suas magias de classe |only Priest
    note-enUS Talk to Shenthul
    note-ptBR Fale com Shenthul
    train 1725
    note-enUS Train Distract
    note-ptBR Treine Distract
    train 1856
    note-enUS Train Vanish
    note-ptBR Treine Vanish
    train 1759
    note-enUS Train Sinister Strike r4
    note-ptBR Treine Sinister Strike r4
step
    only Warlock
    goto 1454 48.25,45.28
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
]==])

register([==[
#format 1
#id forever.x.h.22-25-hillsbrad-south-barrens
#name 22-25 Hillsbrad / South Barrens
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Horde
#levels 22-25
#zones 1424 1413
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup Experimental (from Classic guides)
#subgroup-ptBR Experimental (adaptado do Classic)
#next forever.x.h.25-26-stonetalon

step
    goto 1411 50.8,13.8
    note-enUS Go to the Zeppelin tower. Take the zeppelin to Tirisfal
    note-ptBR Vá até a torre do Zepelim. Pegue o zepelim para Tirisfal
    zone 1420
    note-enUS Arrive in Tirisfal Glades
    note-ptBR Chegue em Tirisfal Glades
step
    goto 1421 42.8,40.87
    note-enUS Talk to Renferrel
    note-ptBR Fale com Renferrel
    accept 493
step
    ifonquest 3301
    goto 1421 42.9,41.99
    note-enUS Talk to Mura Runetotem
    note-ptBR Fale com Mura Runetotem
    turnin 3301
step
    ifonquest 264
    goto 1421 44.1,42.5
    note-enUS Click the stone grave on the ground
    note-ptBR Clique na sepultura de pedra no chão
    turnin 264
step
    goto 1421 45.62,42.6
    note-enUS Talk to Karos
    note-ptBR Fale com Karos
    fp
    note-enUS Get the The Sepulcher flight path
    note-ptBR Pegue o ponto de voo de The Sepulcher
step
    path seq 1421 46.33,44.3 61.47,67.47
    goto 1421 67.14,79.06 40
    goto 1424 20.79,47.4 40
    note-enUS Travel toward Lesh
    note-ptBR Vá em direção a Lesh
    note-enUS Be careful of Dalaran Wizards en route as they cast [Frostbolt] which will slow you down
    note-ptBR Cuidado com os Dalaran Wizards no caminho, pois eles lançam [Frostbolt], que deixa você lento
    note-enUS Talk to Lesh
    note-ptBR Fale com Lesh
    accept 494
step
    goto 1424 60.14,18.62
    note-enUS Talk to Zarise
    note-ptBR Fale com Zarise
    fp
    note-enUS Get the Tarren Mill Flight Path
    note-ptBR Pegue o ponto de voo de Tarren Mill
step
    only Shaman Warrior
    path seq 1424 61.51,19.42 61.44,19.06 62.39,20.28 62.65,20.76 62.95,20.59
    goto 1424 63.24,20.66
    note-enUS Talk to Lydon, Darthalia, the Wanted Poster, Krusk
    note-ptBR Fale com Lydon, Darthalia, o Wanted Poster, Krusk
    turnin 493
    accept 496
    accept 501
    turnin 1065
    accept 1066
    turnin 494
    accept 527
    accept 549
    accept 498
step
    only !Shaman !Warrior
    path seq 1424 61.51,19.42 61.44,19.06 62.39,20.28 62.65,20.76 62.95,20.59
    goto 1424 63.24,20.66
    note-enUS Talk to Lydon, Darthalia, the Wanted Poster, and Krusk
    note-ptBR Fale com Lydon, Darthalia, o Wanted Poster e Krusk
    turnin 493
    accept 496
    accept 501
    turnin 494
    accept 527
    accept 549
    accept 498
step
    path seq 1424 62.53,19.58
    goto 1424 62.78,19.05
    note-enUS Talk to Shay
    note-ptBR Fale com Shay
    note-enUS Buy [Melon Juice] from him |only Priest Mage Warlock Druid
    note-ptBR Compre [Melon Juice] dele |only Priest Mage Warlock Druid
    note-enUS Buy [Mutton Chops] from him |only !Priest !Mage !Warlock !Druid !Paladin
    note-ptBR Compre [Mutton Chops] dele |only !Priest !Mage !Warlock !Druid !Paladin
    note-enUS Buy [Melon Juice] and [Mutton Chops] from him |only Paladin
    note-ptBR Compre [Melon Juice] e [Mutton Chops] dele |only Paladin
    collect 1205 20 |quest 1145 |q 1145/1 |only Priest Mage Warlock Druid Paladin Shaman
    collect 3770 20 |quest 1145 |q 1145/1 |only !Priest !Mage !Warlock !Druid !Paladin !Shaman
    collect 3770 10 |quest 1145 |q 1145/1 |only Paladin Shaman
step
    path seq 1424 62.53,19.58
    goto 1424 62.78,19.05
    note-enUS Talk to Shay
    note-ptBR Fale com Shay
    note-enUS Buy [Sweet Nectar] from him |only Priest Mage Warlock Druid
    note-ptBR Compre [Sweet Nectar] dele |only Priest Mage Warlock Druid
    note-enUS Buy [Wild Hog Shanks] from him |only !Priest !Mage !Warlock !Druid !Paladin
    note-ptBR Compre [Wild Hog Shanks] dele |only !Priest !Mage !Warlock !Druid !Paladin
    note-enUS Buy [Sweet Nectar] and [Wild Hog Shanks] from him |only Paladin
    note-ptBR Compre [Sweet Nectar] e [Wild Hog Shanks] dele |only Paladin
    collect 1708 20 |quest 1145 |q 1145/1 |only Priest Mage Warlock Druid Paladin
    collect 3771 20 |quest 1145 |q 1145/1 |only !Priest !Mage !Warlock !Druid !Paladin
    collect 3771 10 |quest 1145 |q 1145/1 |only Paladin
step
    only Hunter
    ifonquest 498
    goto 1424 62.56,19.91
    note-enUS Talk to Kayren
    note-ptBR Fale com Kayren
    note-enUS Buy [Sharp Arrows] from her
    note-ptBR Compre [Sharp Arrows] dela
    collect 2515 1000 |quest 1145 |q 1145/1
step
    only Hunter
    ifonquest 498
    goto 1424 62.56,19.91
    note-enUS Talk to Kayren
    note-ptBR Fale com Kayren
    note-enUS Buy [Razor Arrows] from her
    note-ptBR Compre [Razor Arrows] dela
    collect 3030 2000 |quest 1145 |q 1145/1
step
    only Hunter
    ifonquest 498
    goto 1424 62.56,19.91
    note-enUS Talk to Kayren
    note-ptBR Fale com Kayren
    note-enUS Buy [Razor Arrows] from her
    note-ptBR Compre [Razor Arrows] dela
    collect 3030 1000 |quest 1145 |q 1145/1
step
    only Shaman
    goto 1424 62.17,20.82
    note-enUS Use the [Empty Red Waterskin] at the well
    note-ptBR Use o [Empty Red Waterskin] no poço
    objective 1536/1
    use 7768
step
    only Rogue
    goto 1424 60.43,26.18
    note-enUS Talk to Ott
    note-ptBR Fale com Ott
    note-enUS Buy the [Longsword] from him
    note-ptBR Compre a [Longsword] dele
    collect 923 1 |quest 885 |q 885/1
step
    only Shaman Warrior
    goto 1424 60.43,26.18
    note-enUS Talk to Ott
    note-ptBR Fale com Ott
    note-enUS Buy the [Merciless Axe] from him if it's up
    note-ptBR Compre o [Merciless Axe] dele se estiver disponível
    vendor
    note-enUS Vendor and Repair
    note-ptBR Venda o lixo e conserte
step
    only Rogue
    goto 1424 60.43,26.18
    note-enUS Equip the [Merciless Axe] |only Shaman Warrior
    note-ptBR Equipe o [Merciless Axe] |only Shaman Warrior
    use 12249 |only Shaman Warrior |opt
    note-enUS Talk to Ott
    note-ptBR Fale com Ott
    note-enUS Buy the [Broad Bladed Knife] from him if it's up
    note-ptBR Compre a [Broad Bladed Knife] dele se estiver disponível
    vendor
    note-enUS Vendor and Repair
    note-ptBR Venda o lixo e conserte
step
    ifonquest 549
    goto 1424 76.72,46.22 60
    note-enUS Equip the [Broad Bladed Knife] |only Rogue
    note-ptBR Equipe a [Broad Bladed Knife] |only Rogue
    use 12247 |only Rogue |opt
    note-enUS Kill Vicious Gray Bears and Gray Bears. Loot them for their Tongues
    note-ptBR Mate Vicious Gray Bears e Gray Bears. Saqueie-os para obter as línguas deles
    note-enUS Avoid Elder Gray Bears as they're not worth killing
    note-ptBR Evite os Elder Gray Bears, pois não vale a pena matá-los
    objective 496/1 |opt
    note-enUS Kill Forest Moss Creepers. Loot them for their Ichor
    note-ptBR Mate Forest Moss Creepers. Saqueie-os para obter o Ichor deles
    objective 496/2 |opt
    note-enUS Travel to Durnholde Keep
    note-ptBR Vá até Durnholde Keep
step
    goto 1424 79.55,41.85 15
    note-enUS Kill Syndicate Rogues and Syndicate Watchmen |only !Shaman !Warrior
    note-ptBR Mate Syndicate Rogues e Syndicate Watchmen |only !Shaman !Warrior
    note-enUS Kill Syndicate Rogues, Syndicate Watchmen, and Syndicate Shadow Mages. Loot them for their Vials of Innocent Blood |only Shaman Warrior
    note-ptBR Mate Syndicate Rogues, Syndicate Watchmen e Syndicate Shadow Mages. Saqueie-os para obter os Vials of Innocent Blood deles |only Shaman Warrior
    objective 549/1 |opt
    objective 549/2 |opt
    objective 1066/1 |only Shaman Warrior |opt
    note-enUS Kill Jailor Eston. Loot him for his Iron Key
    note-ptBR Mate Jailor Eston. Saqueie-o para obter a Iron Key dele
    note-enUS He can be found in front of Tog'thar's Barracks
    note-ptBR Ele pode ser encontrado em frente ao Tog'thar's Barracks
    collect 3467 1 |quest 498 |q 498/1
step
    path seq 1424 79.45,40.57 77.99,40.19 79.45,40.57 77.99,40.19 79.45,40.57 77.99,40.19 79.45,40.57
    goto 1424 77.99,40.19
    note-enUS Kill Jailor Marlgen. Loot him for his Gold Key
    note-ptBR Mate Jailor Marlgen. Saqueie-o para obter a Gold Key dele
    note-enUS He can be found in front of Tog'thar or, at the bottom of the tower
    note-ptBR Ele pode ser encontrado em frente a Tog'thar ou na base da torre
    collect 3499 1 |quest 498 |q 498/2
step
    goto 1424 79.79,39.65
    note-enUS Click the Ball and Chain on the ground
    note-ptBR Clique na Ball and Chain no chão
    objective 498/2
step
    only Rogue Hunter Shaman
    goto 1424 80.14,38.89
    note-enUS Talk to Kris
    note-ptBR Fale com Kris
    note-enUS Buy the [Stalking Pants] and [Wolf Bracers] from her if they're up
    note-ptBR Compre as [Stalking Pants] e as [Wolf Bracers] dela se estiverem disponíveis
    vendor
    note-enUS Vendor and Repair
    note-ptBR Venda o lixo e conserte
step
    only Rogue Hunter Shaman
    goto 1424 80.14,38.89
    note-enUS Talk to Kris
    note-ptBR Fale com Kris
    note-enUS Buy the [Stalking Pants] from her if they're up
    note-ptBR Compre as [Stalking Pants] dela se estiverem disponíveis
    vendor
    note-enUS Vendor and Repair
    note-ptBR Venda o lixo e conserte
step
    only Rogue Hunter Shaman
    goto 1424 80.14,38.89
    note-enUS Talk to Kris
    note-ptBR Fale com Kris
    note-enUS Buy the [Wolf Bracers] from her if they're up
    note-ptBR Compre as [Wolf Bracers] dela se estiverem disponíveis
    vendor
    note-enUS Vendor and Repair
    note-ptBR Venda o lixo e conserte
step
    path seq 1424 79.55,41.85 75.31,41.63 79.55,41.85 75.31,41.63 79.55,41.85 75.31,41.63 79.55,41.85 75.31,41.63 79.55,41.85 75.31,41.63 79.55,41.85
    goto 1424 75.31,41.63
    note-enUS Equip the [Stalking Pants] and [Wolf Bracers] |only Rogue Hunter Shaman
    note-ptBR Equipe as [Stalking Pants] e as [Wolf Bracers] |only Rogue Hunter Shaman
    use 4831 |only Rogue Hunter Shaman |opt
    use 4794 |only Rogue Hunter Shaman |opt
    note-enUS Equip the [Stalking Pants] |only Rogue Hunter Shaman
    note-ptBR Equipe as [Stalking Pants] |only Rogue Hunter Shaman
    use 4831 |only Rogue Hunter Shaman |opt
    note-enUS Equip the [Wolf Bracers] |only Rogue Hunter Shaman
    note-ptBR Equipe as [Wolf Bracers] |only Rogue Hunter Shaman
    use 4794 |only Rogue Hunter Shaman |opt
    note-enUS Kill Jailor Eston. Loot him for his Iron Key
    note-ptBR Mate Jailor Eston. Saqueie-o para obter a Iron Key dele
    note-enUS He can be found in front of Tog'thar's Barracks, or in front of Drull
    note-ptBR Ele pode ser encontrado em frente ao Tog'thar's Barracks ou em frente a Drull
    collect 3467 1 |quest 498 |q 498/1
step
    goto 1424 75.33,41.5
    note-enUS Click the Ball and Chain on the ground
    note-ptBR Clique na Ball and Chain no chão
    objective 498/1
step
    path seq 1424 75.29,40.17 76.53,41 77.28,43.55 78.98,45.09 79.58,46.88 80.97,46.77 81.82,45.15 82.24,42.5 80.69,44.07 81.1,43.85 81.92,39.69 83.83,40.78 80.67,42.47 79.7,43.22 79.69,39.76 78.25,41.3 77.58,39.23 78.01,43.37 76.47,46.62
    goto 1424 75.29,40.17
    note-enUS Kill Syndicate Rogues and Syndicate Watchmen |only !Shaman !Warrior
    note-ptBR Mate Syndicate Rogues e Syndicate Watchmen |only !Shaman !Warrior
    note-enUS Kill Syndicate Rogues, Syndicate Watchmen, and Syndicate Shadow Mages. Loot them for their Vials of Innocent Blood |only Shaman Warrior
    note-ptBR Mate Syndicate Rogues, Syndicate Watchmen e Syndicate Shadow Mages. Saqueie-os para obter os Vials of Innocent Blood deles |only Shaman Warrior
    objective 549/1
    objective 549/2
    objective 1066/1 |only Shaman Warrior
step
    path seq 1424 76.72,46.22 67.06,46.27 66.04,45.78 64.87,47.17 66.13,48.44 67.11,50.53 76.51,46.31 75.29,40.17 76.53,41 77.28,43.55 78.98,45.09 79.58,46.88 80.97,46.77 81.82,45.15 82.24,42.5 80.69,44.07 81.1,43.85 81.92,39.69 83.83,40.78 80.67,42.47 79.7,43.22 79.69,39.76 78.25,41.3 77.58,39.23 78.01,43.37 76.47,46.62
    goto 1424 75.29,40.17
    note-enUS Exit Durnholde Keep
    note-ptBR Saia de Durnholde Keep
    note-enUS Kill Vicious Gray Bears and Gray Bears. Loot them for their Tongues
    note-ptBR Mate Vicious Gray Bears e Gray Bears. Saqueie-os para obter as línguas deles
    note-enUS Avoid Elder Gray Bears as they're not worth killing
    note-ptBR Evite os Elder Gray Bears, pois não vale a pena matá-los
    objective 496/1 |opt
    note-enUS Kill Forest Moss Creepers. Loot them for their Ichor
    note-ptBR Mate Forest Moss Creepers. Saqueie-os para obter o Ichor deles
    note-enUS Avoid Giant Moss Creepers as they're not worth killing yet
    note-ptBR Evite os Giant Moss Creepers, pois ainda não vale a pena matá-los
    objective 496/2 |opt
    note-enUS Kill Syndicate Rogues and Syndicate Watchmen |only !Shaman !Warrior
    note-ptBR Mate Syndicate Rogues e Syndicate Watchmen |only !Shaman !Warrior
    note-enUS Kill Syndicate Rogues, Syndicate Watchmen, and Syndicate Shadow Mages. Loot them for their Vials of Innocent Blood |only Shaman Warrior
    note-ptBR Mate Syndicate Rogues, Syndicate Watchmen e Syndicate Shadow Mages. Saqueie-os para obter os Vials of Innocent Blood deles |only Shaman Warrior
    objective 549/1
    objective 549/2
    objective 1066/1 |only Shaman Warrior
step
    ifonquest 527
    path seq 1424 62.93,38.53 62.16,39.83 60.92,38.2 59.23,34.19 58.77,28.98 57.15,30.8 54.77,28.72 52.93,29.45 54.29,31.75 51.28,35.37 43.36,39.38 42.56,40.19 40.91,44.23 39.92,45.83 37.97,44.59 39.88,40.56 38.45,38.77 38.7,36.71 39.79,34.43
    goto 1424 36.02,39.19 80
    note-enUS Kill Vicious Gray Bears and Gray Bears. Loot them for their Tongues
    note-ptBR Mate Vicious Gray Bears e Gray Bears. Saqueie-os para obter as línguas deles
    note-enUS Avoid Elder Gray Bears as they're not worth killing
    note-ptBR Evite os Elder Gray Bears, pois não vale a pena matá-los
    objective 496/1 |opt
    note-enUS Kill Forest Moss Creepers. Loot them for their Ichor
    note-ptBR Mate Forest Moss Creepers. Saqueie-os para obter o Ichor deles
    note-enUS Avoid Giant Moss Creepers as they're not worth killing
    note-ptBR Evite os Giant Moss Creepers, pois não vale a pena matá-los
    objective 496/2 |opt
    note-enUS Kill Starving Mountain Lions. Loot them for their Blood
    note-ptBR Mate Starving Mountain Lions. Saqueie-os para obter o sangue deles
    objective 501/1 |opt
    note-enUS Travel to the Hillsbrad Fields
    note-ptBR Vá até Hillsbrad Fields
step
    path seq 1424 36.7,39.38 35.28,40.76 35.17,38.18 35.39,37.7 33.7,35.5 33.02,35.1 32.67,34.8 33.21,34.78 33.7,35.5 33.02,35.1 32.67,34.8 33.21,34.78 33.7,35.5 33.02,35.1 32.67,34.8 33.21,34.78 33.7,35.5 33.02,35.1 32.67,34.8
    goto 1424 33.21,34.78
    note-enUS Kill Hillsbrad Farmers and Hillsbrad Farmhands
    note-ptBR Mate Hillsbrad Farmers e Hillsbrad Farmhands
    objective 527/1 |opt
    objective 527/2 |opt
    note-enUS Kill Farmer Getz
    note-ptBR Mate Farmer Getz
    note-enUS He can be found in the House, in the Field, or in the Barn
    note-ptBR Ele pode ser encontrado na casa, no campo ou no celeiro
    objective 527/4 |opt
    note-enUS Kill Farmer Ray
    note-ptBR Mate Farmer Ray
    note-enUS He can be found in the vineyard, or in the first and second floor of the house
    note-ptBR Ele pode ser encontrado no vinhedo ou no primeiro e segundo andar da casa
    objective 527/3
step
    path seq 1424 36.7,39.38 35.28,40.76 35.17,38.18 35.39,37.7 36.7,39.38 35.28,40.76 35.17,38.18 35.39,37.7 36.7,39.38 35.28,40.76 35.17,38.18 35.39,37.7 36.7,39.38 35.28,40.76 35.17,38.18 35.39,37.7 36.7,39.38 35.28,40.76 35.17,38.18
    goto 1424 35.39,37.7
    note-enUS Kill Farmer Getz
    note-ptBR Mate Farmer Getz
    note-enUS He can be found in the House, in the Field, or in the Barn
    note-ptBR Ele pode ser encontrado na casa, no campo ou no celeiro
    objective 527/4
step
    path closest 1424 35.9,40.63 33.88,41.8 30.19,38.48 30.67,35.21 31.71,36.72 33.67,35.66 35.9,40.63
    note-enUS Kill Hillsbrad Farmers and Hillsbrad Farmhands
    note-ptBR Mate Hillsbrad Farmers e Hillsbrad Farmhands
    objective 527/1
    objective 527/2
step
    path closest 1424 39.79,34.43 38.7,36.71 38.45,38.77 39.88,40.56 37.97,44.59 39.92,45.83 40.91,44.23 42.56,40.19 43.36,39.38 51.28,35.37 54.29,31.75 52.93,29.45 54.77,28.72
    note-enUS Kill Forest Moss Creepers and Giant Moss Creepers. Loot them for their Ichor
    note-ptBR Mate Forest Moss Creepers e Giant Moss Creepers. Saqueie-os para obter o Ichor deles
    objective 496/2 |opt
    note-enUS Kill Vicious Gray Bears and Gray Bears. Loot them for their Tongues
    note-ptBR Mate Vicious Gray Bears e Gray Bears. Saqueie-os para obter as línguas deles
    note-enUS Avoid Elder Gray Bears as they're not worth killing
    note-ptBR Evite os Elder Gray Bears, pois não vale a pena matá-los
    objective 496/1 |opt
    note-enUS Kill Starving Mountain Lions. Loot them for their Blood
    note-ptBR Mate Starving Mountain Lions. Saqueie-os para obter o sangue deles
    objective 501/1
step
    path closest 1424 40.88,33.87 40.86,37.4 40.85,39.42 38.5,38.04 37.68,41.23 38.71,42.66 40.4,44.65 44.39,41.34 45.23,39.62 43.87,37.01 49.75,34.33 52.06,36.86 51.91,32.97 52.39,29.27 57.38,22.85 57.09,25.67 58.08,28.07 56.88,28.85 59.68,30.9 57.71,34.06 59.89,36.74 62.63,37.64 64.73,38.03 66.52,34.52
    note-enUS Kill Vicious Gray Bears and Gray Bears. Loot them for their Tongues
    note-ptBR Mate Vicious Gray Bears e Gray Bears. Saqueie-os para obter as línguas deles
    note-enUS Avoid Elder Gray Bears as they're not worth killing
    note-ptBR Evite os Elder Gray Bears, pois não vale a pena matá-los
    objective 496/1
step
    path closest 1424 62.85,38.74 62.24,39.96 60.92,37.92 59.62,33.33 56.88,29.73 59.8,27.72 57.63,24.16 56.47,16.42 59.36,14.55 60.54,13.67 62.65,12.9 64.43,10.22 65.18,6.93 65.31,5.76 66.9,9.02 70.39,8.89 68.86,10.18 67.35,12.95 71.38,19.81 71.78,21.89 64.85,24.92 66.68,28.15 69.76,31.89 67.62,37.65 62.85,38.74
    note-enUS Kill Forest Moss Creepers and Giant Moss Creepers. Loot them for their Ichor
    note-ptBR Mate Forest Moss Creepers e Giant Moss Creepers. Saqueie-os para obter o Ichor deles
    objective 496/2
step
    path seq 1424 61.51,19.42 61.44,19.06 61.53,19.16 62.39,20.28 62.95,20.59
    goto 1424 63.24,20.66
    note-enUS Talk to Lydon, Umpi, Darthalia, and Krusk
    note-ptBR Fale com Lydon, Umpi, Darthalia e Krusk
    turnin 496
    accept 499
    turnin 501
    accept 502
    turnin 1066 |only Shaman Warrior
    accept 1067 |only Shaman Warrior
    turnin 499
    turnin 527
    accept 528
    turnin 549
    turnin 498
step
    only Hunter
    ifonquest 528
    goto 1424 62.56,19.91
    note-enUS Talk to Kayren
    note-ptBR Fale com Kayren
    note-enUS Buy [Sharp Arrows] from her
    note-ptBR Compre [Sharp Arrows] dela
    collect 2515 1000 |quest 498 |q 498/1
step
    only Hunter
    ifonquest 528
    goto 1424 62.56,19.91
    note-enUS Talk to Kayren
    note-ptBR Fale com Kayren
    note-enUS Buy [Razor Arrows] from her
    note-ptBR Compre [Razor Arrows] dela
    collect 3030 2000 |quest 498 |q 498/1
step
    only Hunter
    ifonquest 528
    goto 1424 62.56,19.91
    note-enUS Talk to Kayren
    note-ptBR Fale com Kayren
    note-enUS Buy [Razor Arrows] from her
    note-ptBR Compre [Razor Arrows] dela
    collect 3030 1000 |quest 498 |q 498/1
step
    path seq 1424 62.53,19.58
    goto 1424 62.78,19.05
    note-enUS Talk to Shay
    note-ptBR Fale com Shay
    note-enUS Buy [Melon Juice] from him |only Priest Mage Warlock Druid
    note-ptBR Compre [Melon Juice] dele |only Priest Mage Warlock Druid
    note-enUS Buy [Mutton Chops] from him |only !Priest !Mage !Warlock !Druid !Paladin
    note-ptBR Compre [Mutton Chops] dele |only !Priest !Mage !Warlock !Druid !Paladin
    note-enUS Buy [Melon Juice] and [Mutton Chops] from him |only Paladin
    note-ptBR Compre [Melon Juice] e [Mutton Chops] dele |only Paladin
    collect 1205 20 |quest 1145 |q 1145/1 |only Priest Mage Warlock Druid Paladin Shaman
    collect 3770 20 |quest 1145 |q 1145/1 |only !Priest !Mage !Warlock !Druid !Paladin !Shaman
    collect 3770 10 |quest 1145 |q 1145/1 |only Paladin Shaman
step
    path seq 1424 62.53,19.58
    goto 1424 62.78,19.05
    note-enUS Talk to Shay
    note-ptBR Fale com Shay
    note-enUS Buy [Sweet Nectar] from him |only Priest Mage Warlock Druid
    note-ptBR Compre [Sweet Nectar] dele |only Priest Mage Warlock Druid
    note-enUS Buy [Wild Hog Shanks] from him |only !Priest !Mage !Warlock !Druid !Paladin
    note-ptBR Compre [Wild Hog Shanks] dele |only !Priest !Mage !Warlock !Druid !Paladin
    note-enUS Buy [Sweet Nectar] and [Wild Hog Shanks] from him |only Paladin
    note-ptBR Compre [Sweet Nectar] e [Wild Hog Shanks] dele |only Paladin
    collect 1708 20 |quest 1145 |q 1145/1 |only Priest Mage Warlock Druid Paladin
    collect 3771 20 |quest 1145 |q 1145/1 |only !Priest !Mage !Warlock !Druid !Paladin
    collect 3771 10 |quest 1145 |q 1145/1 |only Paladin
step
    goto 1424 62.11,19.68
    note-enUS Talk to Samsa
    note-ptBR Fale com Samsa
    accept 546
step
    path seq 1424 32.67,35.33 36.54,39.44 35.36,38.73 33.98,38.78 32.56,40.03 32.58,38.17 32.66,36.08 32.92,35.25 32.56,40.03 32.65,41.12 32.45,42.58 31.27,42.06 30.53,40.56 31.27,42.06 32.45,42.58 32.41,43.85 32.46,44.59 32.29,45.13 32.45,42.58 32.56,40.03
    goto 1424 36.54,39.44
    note-enUS Kill Hillsbrad Humans. Loot them for their Skulls
    note-ptBR Mate Hillsbrad Humans. Saqueie-os para obter os crânios deles
    objective 546/1 |opt
    note-enUS Talk to Stanley
    note-ptBR Fale com Stanley
    note-enUS Wait out the RP, then kill Enraged Stanley
    note-ptBR Espere o RP terminar e depois mate Enraged Stanley
    note-enUS Enraged Stanley gives a full quest's worth of experience
    note-ptBR Enraged Stanley dá a experiência equivalente a uma missão inteira
    turnin 502 |opt
    note-enUS Kill Citizen Wilkes
    note-ptBR Mate Citizen Wilkes
    note-enUS He patrols around the roads of the town
    note-ptBR Ele patrulha pelas estradas da cidade
    objective 567/2
step
    goto 1424 32.67,35.33
    note-enUS Talk to Stanley
    note-ptBR Fale com Stanley
    note-enUS Wait out the RP, then kill Enraged Stanley
    note-ptBR Espere o RP terminar e depois mate Enraged Stanley
    note-enUS Enraged Stanley gives a full quest's worth of experience
    note-ptBR Enraged Stanley dá a experiência equivalente a uma missão inteira
    turnin 502
step
    goto 1424 36,46.5
    note-enUS Kill Farmer Kalaba
    note-ptBR Mate Farmer Kalaba
    objective 567/4 |opt
    note-enUS Kill Hillsbrad Peasants
    note-ptBR Mate Hillsbrad Peasants
    objective 528/1 |opt
    note-enUS Kill Farmer Kalaba
    note-ptBR Mate Farmer Kalaba
    objective 567/4
step
    path closest 1424 36.64,45.21 36.03,44.4 34.36,44.62 33.82,45.75 33.25,48.54 34.59,48.13 35.29,47.28 36.49,47.49 36.64,45.21
    note-enUS Kill Hillsbrad Peasants
    note-ptBR Mate Hillsbrad Peasants
    objective 528/1
step
    ifcomplete 546
    path seq 1424 62.11,19.68
    goto 1424 62.39,20.28
    note-enUS Talk to Samsa and Darthalia
    note-ptBR Fale com Samsa e Darthalia
    turnin 546
    turnin 528
    accept 529
step
    goto 1424 62.39,20.28
    note-enUS Talk to Darthalia
    note-ptBR Fale com Darthalia
    turnin 528
    accept 529
step
    path seq 1424 62.53,19.58
    goto 1424 62.78,19.05
    note-enUS Talk to Shay
    note-ptBR Fale com Shay
    note-enUS Buy [Melon Juice] from him |only Priest Mage Warlock Druid
    note-ptBR Compre [Melon Juice] dele |only Priest Mage Warlock Druid
    note-enUS Buy [Mutton Chops] from him |only !Priest !Mage !Warlock !Druid !Paladin
    note-ptBR Compre [Mutton Chops] dele |only !Priest !Mage !Warlock !Druid !Paladin
    note-enUS Buy [Melon Juice] and [Mutton Chops] from him |only Paladin
    note-ptBR Compre [Melon Juice] e [Mutton Chops] dele |only Paladin
    collect 1205 20 |quest 1145 |q 1145/1 |only Priest Mage Warlock Druid Paladin Shaman
    collect 3770 20 |quest 1145 |q 1145/1 |only !Priest !Mage !Warlock !Druid !Paladin !Shaman
    collect 3770 10 |quest 1145 |q 1145/1 |only Paladin Shaman
step
    path seq 1424 62.53,19.58
    goto 1424 62.78,19.05
    note-enUS Talk to Shay
    note-ptBR Fale com Shay
    note-enUS Buy [Sweet Nectar] from him |only Priest Mage Warlock Druid
    note-ptBR Compre [Sweet Nectar] dele |only Priest Mage Warlock Druid
    note-enUS Buy [Wild Hog Shanks] from him |only !Priest !Mage !Warlock !Druid !Paladin
    note-ptBR Compre [Wild Hog Shanks] dele |only !Priest !Mage !Warlock !Druid !Paladin
    note-enUS Buy [Sweet Nectar] and [Wild Hog Shanks] from him |only Paladin
    note-ptBR Compre [Sweet Nectar] e [Wild Hog Shanks] dele |only Paladin
    collect 1708 20 |quest 1145 |q 1145/1 |only Priest Mage Warlock Druid Paladin
    collect 3771 20 |quest 1145 |q 1145/1 |only !Priest !Mage !Warlock !Druid !Paladin
    collect 3771 10 |quest 1145 |q 1145/1 |only Paladin
step
    only Shaman Warrior
    goto 1424 60.43,26.18
    note-enUS Talk to Ott
    note-ptBR Fale com Ott
    note-enUS Buy the [Merciless Axe] from him if it's up
    note-ptBR Compre o [Merciless Axe] dele se estiver disponível
    vendor
    note-enUS Vendor and Repair
    note-ptBR Venda o lixo e conserte
step
    only Rogue
    goto 1424 60.43,26.18
    note-enUS Equip the [Merciless Axe] |only Shaman Warrior
    note-ptBR Equipe o [Merciless Axe] |only Shaman Warrior
    use 12249 |only Shaman Warrior |opt
    note-enUS Talk to Ott
    note-ptBR Fale com Ott
    note-enUS Buy the [Broad Bladed Knife] from him if it's up
    note-ptBR Compre a [Broad Bladed Knife] dele se estiver disponível
    vendor
    note-enUS Vendor and Repair
    note-ptBR Venda o lixo e conserte
step
    path seq 1424 32.56,45.95
    goto 1424 32.01,45.45
    note-enUS Equip the [Broad Bladed Knife] |only Rogue
    note-ptBR Equipe a [Broad Bladed Knife] |only Rogue
    use 12247 |only Rogue |opt
    note-enUS Kill Hillsbrad Humans. Loot them for their Skulls
    note-ptBR Mate Hillsbrad Humans. Saqueie-os para obter os crânios deles
    objective 546/1 |opt
    note-enUS Kill Hillsbrad Apprentice Blacksmiths
    note-ptBR Mate Hillsbrad Apprentice Blacksmiths
    objective 529/2 |opt
    note-enUS Kill Blacksmith Verringtan
    note-ptBR Mate Blacksmith Verringtan
    objective 529/1 |opt
    note-enUS Loot the Shipment of Iron inside on the ground
    note-ptBR Saqueie o Shipment of Iron no chão lá dentro
    objective 529/3
step
    path closest 1424 32.56,45.95 32.2,45.65 32.11,44.43 32.56,45.95 32.2,45.65 32.11,44.33 32.56,45.95
    note-enUS Kill Blacksmith Verringtan
    note-ptBR Mate Blacksmith Verringtan
    objective 529/1
step
    path closest 1424 31.96,45.83 32.69,45.1 31.15,43.91 31.1,46.75 31.89,46.72 31.96,45.83
    note-enUS Kill Hillsbrad Apprentice Blacksmiths
    note-ptBR Mate Hillsbrad Apprentice Blacksmiths
    objective 529/2
step
    path closest 1424 36.64,45.21 36.03,44.4 34.36,44.62 33.82,45.75 33.25,48.54 34.59,48.13 35.29,47.28 36.49,47.49 36.64,45.21
    note-enUS Kill Hillsbrad Humans. Loot them for their Skulls
    note-ptBR Mate Hillsbrad Humans. Saqueie-os para obter os crânios deles
    objective 546/1
step
    path closest 1424 36.64,45.21 36.03,44.4 34.36,44.62 33.82,45.75 33.25,48.54 34.59,48.13 35.29,47.28 36.49,47.49 36.64,45.21
    level 24
    note-enUS Grind to level 24
    note-ptBR Mate monstros até o nível 24
step
    only Druid
    goto 1450 52.53,40.56 |only Druid
    goto 1456 77,29.9
    note-enUS Use the spell Teleport: Moonglade |only Druid
    note-ptBR Use a magia Teleport: Moonglade |only Druid
    trainer |only Druid |opt
    note-enUS Go and train your class spells |only Druid
    note-ptBR Vá treinar suas magias de classe |only Druid
    note-enUS We're not going to turn these quests in until later on.
    note-ptBR Não vamos entregar estas missões até mais tarde.
    hearth |opt
    note-enUS Hearth to Thunder Bluff
    note-ptBR Use a pedra de regresso para Thunder Bluff
    trainer
    note-enUS Go and train your class spells
    note-ptBR Vá treinar suas magias de classe
step
    only Hunter
    goto 1456 59.1,86.9
    trainer
    note-enUS Go and train your class spells
    note-ptBR Vá treinar suas magias de classe
step
    only Hunter
    goto 1456 54.1,83.9
    trainer
    note-enUS Go and train your pet spells
    note-ptBR Vá treinar as magias do seu pet
step
    only Warrior
    goto 1456 57.6,85.5
    trainer
    note-enUS Go and train your class spells
    note-ptBR Vá treinar suas magias de classe
step
    only Shaman
    goto 1456 22.81,20.89
    trainer
    note-enUS Go and train your class spells
    note-ptBR Vá treinar suas magias de classe
step
    ifonquest 1067
    goto 1456 23.1,21
    note-enUS In the pools below the Spirit Rise
    note-ptBR Nos lagos abaixo de Spirit Rise
    note-enUS Talk to Apothecary Zamah
    note-ptBR Fale com Apothecary Zamah
    turnin 1067
    accept 1086
step
    only Priest
    goto 1456 24.6,22.6
    trainer
    note-enUS Go and train your class spells
    note-ptBR Vá treinar suas magias de classe
step
    only Mage
    goto 1456 25.2,20.9
    trainer
    note-enUS Go and train your class spells
    note-ptBR Vá treinar suas magias de classe
step
    goto 1456 46.8,50.1
    note-enUS Head up the totem tower
    note-ptBR Suba a torre de totem
    fp
    note-enUS Fly to Camp Taurajo
    note-ptBR Voe para Camp Taurajo
step
    only Warrior
    goto 1413 44.7,59.4
    note-enUS In the building
    note-ptBR No prédio
    note-enUS Talk to Ruga Ragetotem
    note-ptBR Fale com Ruga Ragetotem
    turnin 1823
    accept 1824
step
    path seq 1413 44.6,59.2
    goto 1413 45,57.6
    note-enUS Speak to Mangletooth in the cage then pickup Weapons of Choice from Tatternack if you didn't grab it last time
    note-ptBR Fale com Mangletooth na jaula e depois aceite Weapons of Choice de Tatternack se não a pegou da última vez
    note-enUS Talk to Mangletooth
    note-ptBR Fale com Mangletooth
    accept 879
    note-enUS Talk to Tatternack Steelforge
    note-ptBR Fale com Tatternack Steelforge
    accept 893
step
    only Warrior
    path seq 1413 44.2,62.1 49.2,62.6 49.6,60
    goto 1413 48.1,70.3
    note-enUS Search for Owatanka (Blue Thunder Lizard) around this area. If you find him, loot his Tailspike and start the quest. If you can't find him, skip this quest
    note-ptBR Procure Owatanka (Thunder Lizard azul) por esta área. Se encontrá-lo, saqueie a Tailspike dele e inicie a missão. Se não encontrar, pule esta missão
    collect 5102 1 |quest 884 |opt
    use 5102 |opt
    accept 884 |opt
    note-enUS Kill Silithid mobs in the area. Loot them for Twitching Antennae. Be quick as they have a 15m duration
    note-ptBR Mate mobs Silithid na área. Saqueie-os para obter Twitching Antennae. Seja rápido, pois elas duram 15 min
    objective 1824/1
step
    only Warrior
    goto 1413 44.7,59.4
    note-enUS In the building
    note-ptBR No prédio
step
    only Warrior
    goto 1413 44.7,59.4
    note-enUS Talk to Ruga Ragetotem
    note-ptBR Fale com Ruga Ragetotem
    accept 1825
step
    only Shaman
    path seq 1413 44.7,74.7 44.7,77.8 47.6,79.8
    goto 1413 43.4,77.4
    note-enUS Search for Washte Pawne (Red Wind Serpent) around the area. He drops a quest.
    note-ptBR Procure Washte Pawne (Wind Serpent vermelha) pela área. Ele dropa uma missão.
    collect 5103 1 |quest 885 |opt
    accept 885 |opt
    note-enUS Talk to Brine
    note-ptBR Fale com Brine
    turnin 1536
    accept 1534
step
    path seq 1413 46,76.2 46,81.2 46,76.2
    goto 1413 46,81.2 50
    note-enUS Talk to Gann Stonespire
    note-ptBR Fale com Gann Stonespire
    accept 843
    note-enUS He patrols along the road.
    note-ptBR Ele patrulha ao longo da estrada.
step
    ifonquest 893
    path seq 1413 44.7,74.7 43.4,78.8 40.4,80.8
    goto 1413 43.8,83.5 30
    note-enUS Search for Washte Pawne (Red Wind Serpent) around the area. He drops a quest. Skip the quest If you can't find him in this last spot
    note-ptBR Procure Washte Pawne (Wind Serpent vermelha) pela área. Ele dropa uma missão. Pule a missão se não conseguir encontrá-lo neste último local
    collect 5103 1 |quest 885 |opt
    accept 885 |opt
    note-enUS Kill mobs in the area for Weapons of Choice. Backstabber from Stalkers or Pathfinders, Wand from Seers, and Shield from Warfrenzies
    note-ptBR Mate mobs na área para Weapons of Choice. Backstabber dos Stalkers ou Pathfinders, Wand dos Seers e Shield dos Warfrenzies
    objective 893/1
    objective 893/2
    objective 893/3
step
    ifonquest 879
    goto 1413 43.4,78.8
    note-enUS Kuz walks all around the ridge. Kill and loot her for her skull.
    note-ptBR Kuz anda por toda a serra. Mate-a e saqueie-a para obter o crânio dela.
    objective 879/1
step
    ifonquest 879
    goto 1413 40.4,80.8
    note-enUS Lok is in the building up from the ramp. Kill and loot him for his skull.
    note-ptBR Lok está no prédio subindo a rampa. Mate-o e saqueie-o para obter o crânio dele.
    objective 879/3
step
    ifonquest 879
    goto 1413 43.8,83.5
    note-enUS Nak is on the southern part of the ridge. Kill and loot him for his skull.
    note-ptBR Nak fica na parte sul da serra. Mate-o e saqueie-o para obter o crânio dele.
    objective 879/2
step
    ifonquest 843
    goto 1413 48.3,86.2
    note-enUS Kill Dwarves in the area for Gann's Reclamation
    note-ptBR Mate anões na área para Gann's Reclamation
    objective 843/1
    objective 843/2
step
    ifonquest 843
    goto 1413 48.3,86.2
    note-enUS Kill Prospector Khazgorm. Loot him for his Journal
    note-ptBR Mate Prospector Khazgorm. Saqueie-o para obter o diário dele
    objective 843/3
step
    ifonquest 843
    path seq 1413 46,81.2 46,76.2 46,81.2
    goto 1413 46,76.2 50
    note-enUS Search for Washte Pawne (Red Wind Serpent) around the area. He drops a quest. Skip the quest If you can't find him
    note-ptBR Procure Washte Pawne (Wind Serpent vermelha) pela área. Ele dropa uma missão. Pule a missão se não conseguir encontrá-lo
    collect 5103 1 |quest 885 |opt
    accept 885 |opt
    note-enUS Find Gann on the road again
    note-ptBR Encontre Gann na estrada novamente
    note-enUS Talk to Gann Stonespire
    note-ptBR Fale com Gann Stonespire
    turnin 843
step
    path seq 1413 46,81.2 46,76.2 46,81.2
    goto 1413 46,76.2 50
    note-enUS Talk to Gann Stonespire
    note-ptBR Fale com Gann Stonespire
    accept 846
step
    goto 1413 49.4,84.3
    note-enUS Kill mobs and loot them for Revenge of Gann
    note-ptBR Mate mobs e saqueie-os para Revenge of Gann
    objective 846/1
    objective 846/2
    objective 846/3
step
    ifcomplete 846
    path seq 1413 46,81.2 46,76.2 46,81.2
    goto 1413 46,76.2 50
    note-enUS Search for Washte Pawne (Red Wind Serpent) around the area. He drops a quest. Skip the quest If you can't find him
    note-ptBR Procure Washte Pawne (Wind Serpent vermelha) pela área. Ele dropa uma missão. Pule a missão se não conseguir encontrá-lo
    collect 5103 1 |quest 885 |opt
    accept 885 |opt
    note-enUS Find Gann on the road again
    note-ptBR Encontre Gann na estrada novamente
    note-enUS Talk to Gann Stonespire
    note-ptBR Fale com Gann Stonespire
    turnin 846
step
    ifturnedin 846
    path seq 1413 46,81.2 46,76.2 46,81.2
    goto 1413 46,76.2 50
    note-enUS Talk to Gann Stonespire
    note-ptBR Fale com Gann Stonespire
    accept 849
step
    ifonquest 849
    goto 1413 46.97,85.63
    note-enUS Right click the Flying Machine. This has a large range, you can do it from below far away instead of going to the top of the platform.
    note-ptBR Clique com o botão direito na Flying Machine. Ela tem grande alcance, você pode usá-la lá de baixo, de longe, em vez de subir até o topo da plataforma.
    objective 849/1
step
    ifonquest 849
    path seq 1413 46,81.2 46,76.2 46,81.2
    goto 1413 46,76.2 50
    note-enUS Search for Washte Pawne (Red Wind Serpent) around the area. He drops a quest. Skip the quest If you can't find him
    note-ptBR Procure Washte Pawne (Wind Serpent vermelha) pela área. Ele dropa uma missão. Pule a missão se não conseguir encontrá-lo
    collect 5103 1 |quest 885 |opt
    accept 885 |opt
    note-enUS Find Gann once more
    note-ptBR Encontre Gann mais uma vez
    note-enUS Talk to Gann Stonespire
    note-ptBR Fale com Gann Stonespire
    turnin 849
step
    ifonquest 879
    goto 1413 44.6,59.2
    note-enUS Talk to Mangletooth in the cage
    note-ptBR Fale com Mangletooth na jaula
    note-enUS Talk to Mangletooth
    note-ptBR Fale com Mangletooth
    turnin 879
    accept 906
step
    ifonquest 893
    goto 1413 45.1,57.68
    note-enUS Talk to Tatternack Steelforge
    note-ptBR Fale com Tatternack Steelforge
    turnin 893
    accept 1153
step
    ifonquest 885
    goto 1413 44.9,59.1
    note-enUS Talk to Jorn Skyseer
    note-ptBR Fale com Jorn Skyseer
    turnin 885
step
    ifonquest 884
    goto 1413 44.9,59.1
    note-enUS Talk to Jorn Skyseer
    note-ptBR Fale com Jorn Skyseer
    turnin 884
step
    ifonquest 883
    goto 1413 44.9,59.1
    note-enUS Talk to Jorn Skyseer
    note-ptBR Fale com Jorn Skyseer
    turnin 883
step
    goto 1413 51.5,30.3
    fp
    note-enUS Fly to Crossroads
    note-ptBR Voe para Crossroads
step
    ifonquest 906
    goto 1413 51.5,30.9
    note-enUS Talk to Thork
    note-ptBR Fale com Thork
    turnin 906
]==])

register([==[
#format 1
#id forever.x.h.25-26-stonetalon
#name 25-26 Stonetalon
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Horde
#levels 25-26
#zones 1442
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup Experimental (from Classic guides)
#subgroup-ptBR Experimental (adaptado do Classic)
#next forever.x.h.26-30-ashenvale-thousand-needles

step
    goto 1413 51.5,30.3
    fp
    note-enUS Fly to Stonetalon Mountains
    note-ptBR Voe para Stonetalon Mountains
step
    goto 1442 45.9,60.4
    note-enUS Talk to Braelyn Firehand
    note-ptBR Fale com Braelyn Firehand
    accept 1087
step
    goto 1442 47.3,64.3
    note-enUS Talk to Tsunaman
    note-ptBR Fale com Tsunaman
    accept 6393
step
    goto 1442 47.4,58.4
    note-enUS Talk to Tammra Windfield
    note-ptBR Fale com Tammra Windfield
    accept 6301
step
    goto 1442 47.3,61.1
    note-enUS Talk to Maggran Earthbinder
    note-ptBR Fale com Maggran Earthbinder
    accept 5881
    accept 6282
step
    goto 1442 59,62.6
    note-enUS Talk to Ziz Fizziks
    note-ptBR Fale com Ziz Fizziks
    accept 1096
step
    ifonquest 1086
    goto 1442 66.4,45.4
    note-enUS Place the Toxic Fogger
    note-ptBR Posicione o Toxic Fogger
    objective 1086/1
step
    goto 1442 64.48,40.25
    note-enUS Climb up the mountain to find Gerenzo. Clear the mobs around him and kill him.
    note-ptBR Suba a montanha para encontrar Gerenzo. Limpe os mobs ao redor dele e mate-o.
    objective 1096/1
step
    goto 1442 62.6,40.2
    vendor
    note-enUS Go and buy gear upgrades from the vendor at the end of platform. He has the chance of having gear upgrades for every class.
    note-ptBR Vá comprar upgrades de equipamento com o vendedor no fim da plataforma. Ele pode ter upgrades para todas as classes.
step
    goto 1442 58.98,62.59
    note-enUS Talk to Ziz Fizziks
    note-ptBR Fale com Ziz Fizziks
    turnin 1096
step
    goto 1442 50.64,36.6
    note-enUS Loot Gaea Seeds as you pass through the lake and around the lake.
    note-ptBR Saqueie Gaea Seeds ao passar pelo lago e ao redor dele.
    objective 6301/1
step
    goto 1442 35.84,13.09
    note-enUS Kill the Dryads and Night Elves in the area
    note-ptBR Mate as Dríades e os Elfos Noturnos na área
    objective 1087/1
    objective 1087/2
    objective 1087/3
step
    path seq 1442 32.6,67.4
    goto 1442 31.1,61.27
    note-enUS Kill Fire Elementals. Loot them for Incendrite
    note-ptBR Mate Fire Elementals. Saqueie-os para obter Incendrite
    objective 6393/1 |opt
    note-enUS Kill Harpies. Be careful as the Slayers execute you when you're below 20% health, Ambushers shock for a LOT of instant damage on low cooldown, and Roguefeathers thrash (multiple attacks at once every 10 seconds or so)
    note-ptBR Mate Harpias. Cuidado: os Slayers executam você abaixo de 20% de vida, os Ambushers dão choques com MUITO dano instantâneo e recarga curta, e os Roguefeathers usam thrash (vários ataques de uma vez a cada 10 segundos ou mais)
    objective 6282/1
    objective 6282/2
    objective 6282/3
    objective 6282/4
step
    path seq 1442 38.7,68.6
    goto 1442 46,60.5
    note-enUS Enter Sun Rock Retreat from the West side
    note-ptBR Entre em Sun Rock Retreat pelo lado oeste
    note-enUS Head to Sun Rock Retreat
    note-ptBR Vá até Sun Rock Retreat
    note-enUS Talk to Braelyn Firehand
    note-ptBR Fale com Braelyn Firehand
    turnin 1087
    accept 1088
step
    goto 1442 47.1,61.1
    note-enUS Talk to Maggran Earthbinder
    note-ptBR Fale com Maggran Earthbinder
    turnin 6282
    accept 6283
step
    goto 1442 47.4,58.5
    note-enUS Talk to Tammra Windfield
    note-ptBR Fale com Tammra Windfield
    turnin 6301
    accept 6381
step
    path seq 1442 32.6,67.4 31.1,61.27
    goto 1442 32.6,67.4
    note-enUS Kill Fire Elementals. Loot them for Incendrite
    note-ptBR Mate Fire Elementals. Saqueie-os para obter Incendrite
    objective 6393/1 |opt
    note-enUS Plant the trees in the dirt mounds of The Charred Vale
    note-ptBR Plante as árvores nos montes de terra de The Charred Vale
    objective 6381/1 |opt
    note-enUS Kill Fire Elementals. Loot them for Incendrite
    note-ptBR Mate Fire Elementals. Saqueie-os para obter Incendrite
    objective 6393/1
step
    goto 1442 30.75,61.91
    objective 6283/1
step
    goto 1442 31.1,61.27
    note-enUS Plant the trees in the dirt mounds of The Charred Vale
    note-ptBR Plante as árvores nos montes de terra de The Charred Vale
    objective 6381/1
step
    path seq 1442 38.7,68.6
    goto 1442 47.2,64.4
    note-enUS Head back to Sun Rock Retreat
    note-ptBR Volte para Sun Rock Retreat
    note-enUS Talk to Tsunaman
    note-ptBR Fale com Tsunaman
    turnin 6393
step
    ifcomplete 6283
    goto 1442 47.19,61.15
    note-enUS Talk to Maggran Earthbinder
    note-ptBR Fale com Maggran Earthbinder
    turnin 6283
step
    goto 1442 47.46,58.37
    note-enUS Talk to Tammra Windfield
    note-ptBR Fale com Tammra Windfield
    turnin 6381
]==])

register([==[
#format 1
#id forever.x.h.26-30-ashenvale-thousand-needles
#name 26-30 Ashenvale / Thousand Needles
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Horde
#levels 26-30
#zones 1440 1441
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup Experimental (from Classic guides)
#subgroup-ptBR Experimental (adaptado do Classic)

step
    goto 1442 45.2,69.8
    goto 1413 51.6,30.4
    fly 1454
    note-enUS Fly to Orgrimmar
    note-ptBR Voe para Orgrimmar
step
    goto 1454 32.4,35.8 |only Paladin
    goto 1454 38.6,36 |only Shaman
    path seq 1454 66.05,18.53 |only Hunter
    goto 1454 66.3,14.8 |only Hunter
    goto 1454 79.7,31.4 |only Warrior
    goto 1454 44,54.6 |only Rogue
    goto 1454 47.98,45.93 |only Warlock
    goto 1454 38.8,85.6 |only Mage
    goto 1454 35.6,87.8 |only Priest
    goto 1454 16.2,62.2 30
    path seq 1440 94.7,76.8 90.8,66.9 89.2,68.4 88.5,64.9 81.7,62.9
    goto 1440 73.2,61.6
    trainer |only Paladin |opt
    note-enUS Go and train your class spells |only Paladin
    note-ptBR Vá treinar suas magias de classe |only Paladin
    trainer |only Shaman |opt
    note-enUS Go and train your class spells |only Shaman
    note-ptBR Vá treinar suas magias de classe |only Shaman
    trainer |only Hunter |opt
    note-enUS Go and train your class spells |only Hunter
    note-ptBR Vá treinar suas magias de classe |only Hunter
    trainer |only Hunter |opt
    note-enUS Go and train your pet spells |only Hunter
    note-ptBR Vá treinar as magias do seu pet |only Hunter
    trainer |only Warrior |opt
    note-enUS Go and train your class spells |only Warrior
    note-ptBR Vá treinar suas magias de classe |only Warrior
    trainer |only Rogue |opt
    note-enUS Go and train your class spells |only Rogue
    note-ptBR Vá treinar suas magias de classe |only Rogue
    trainer |only Warlock |opt
    note-enUS Go and train your class spells |only Warlock
    note-ptBR Vá treinar suas magias de classe |only Warlock
    trainer |only Mage |opt
    note-enUS Go and train your class spells |only Mage
    note-ptBR Vá treinar suas magias de classe |only Mage
    trainer |only Priest |opt
    note-enUS Go and train your class spells |only Priest
    note-ptBR Vá treinar suas magias de classe |only Priest
    note-enUS Exit Orgrimmar through the west exit
    note-ptBR Saia de Orgrimmar pela saída oeste
    note-enUS Run along the side of the river
    note-ptBR Corra pela margem do rio
    note-enUS Run up the ramp here
    note-ptBR Suba a rampa correndo aqui
    note-enUS Go up the ramp. Be careful of the level 28/29 spider mobs
    note-ptBR Suba a rampa. Cuidado com os mobs aranha de nível 28/29
    note-enUS Run to the Lumber Camp
    note-ptBR Corra até o Lumber Camp
    note-enUS Run through the camp to here
    note-ptBR Corra pelo acampamento até aqui
    fp
    note-enUS Get the Splintertree Post flight path
    note-ptBR Pegue o ponto de voo de Splintertree Post
step
    path seq 1440 73.1,61.5
    goto 1440 73.8,61.5
    note-enUS Talk to Pixel
    note-ptBR Fale com Pixel
    accept 6441
    note-enUS Talk to Senani Thunderheart
    note-ptBR Fale com Senani Thunderheart
    turnin 6383
step
    goto 1440 74,60.6 |only Rogue
    goto 1440 73.6,60
    home |only Rogue |opt
    note-enUS Set your Hearthstone to Splintertree Post |only Rogue
    note-ptBR Defina sua pedra de regresso em Splintertree Post |only Rogue
    note-enUS Talk to Mastok Wrilehiss
    note-ptBR Fale com Mastok Wrilehiss
    accept 25
step
    goto 1440 71.11,68.12
    note-enUS Talk to Kuray'bin
    note-ptBR Fale com Kuray'bin
    accept 6503
step
    path seq 1440 72.5,72.5 76.3,71.1 76.3,67.3
    goto 1440 72.5,72.5
    note-enUS Kill Ashenvale Outrunners that are stealthed around the area.
    note-ptBR Mate os Ashenvale Outrunners que estão em furtividade pela área.
    objective 6503/1
step
    goto 1440 68.3,75.3
    note-enUS Talk to Torek
    note-ptBR Fale com Torek
    accept 6544
    note-enUS If he is not there he can take a few minutes to respawn
    note-ptBR Se ele não estiver lá, pode levar alguns minutos para ressurgir
step
    goto 1440 64.6,75.3
    note-enUS Follow Torek. This quest can get a bit hard. It will spawn a wave enemies inside the building. You may need to skip.
    note-ptBR Siga Torek. Esta missão pode ficar um pouco difícil. Uma onda de inimigos vai aparecer dentro do prédio. Talvez seja preciso pular.
    note-enUS Run as far into the building as you can. Have Torek tank some of the mobs. Abandon this quest if you die.
    note-ptBR Corra o mais fundo que puder dentro do prédio. Deixe Torek tanquear alguns dos mobs. Abandone esta missão se morrer.
    objective 6544/1
step
    path seq 1440 72.3,49.8
    goto 1440 68.2,54
    note-enUS Run along the side of the river to here
    note-ptBR Corra pela margem do rio até aqui
    note-enUS Kill Satyrs in the area. Loot them for their Horns
    note-ptBR Mate Sátiros na área. Saqueie-os para obter os chifres deles
    objective 6441/1
step
    goto 1440 62.07,51.32
    note-enUS Ordanus can be quite hard, your should try to burst him, loot him and then jump down from the building.
    note-ptBR Ordanus pode ser bem difícil, tente causar dano explosivo nele, saqueie-o e depois pule do prédio.
    objective 1088/1
step
    path seq 1440 62.2,49.6 58,56.2 51.9,54.3 61.2,51.5 62.2,49.6 58,56.2 51.9,54.3
    goto 1440 61.2,51.5
    note-enUS Kill Laughing Sisters until they drop an Etched Phial
    note-ptBR Mate Laughing Sisters até cair um Etched Phial
    collect 5867 1 |opt
    use 16304
    note-enUS Look for Shadumbra (a panther) and loot her for Shadumbra's Head, then accept the quest from clicking it.
    note-ptBR Procure Shadumbra (uma pantera) e saqueie-a para pegar Shadumbra's Head; depois clique nele para aceitar a missão.
    collect 16304 1 |quest 24
    accept 24
step
    goto 1440 61.3,51.9
    note-enUS Kill Laughing Sisters until they drop Etched Phial
    note-ptBR Mate Laughing Sisters até cair o Etched Phial
    collect 5867 1
step
    only Rogue
    goto 1440 16.3,29.8 90
    note-enUS Go to the Zoram'gar Outpost. Be sure to avoid Astranaar guards en route
    note-ptBR Vá até Zoram'gar Outpost. Evite os guardas de Astranaar no caminho
step
    only Rogue
    goto 1440 12.3,33.8 |only Rogue
    goto 1440 11.8,34.7
    fp |only Rogue |opt
    note-enUS Get the Zoram'gar Outpost flight path |only Rogue
    note-ptBR Pegue o ponto de voo de Zoram'gar Outpost |only Rogue
    note-enUS Talk to Karang Amakkar
    note-ptBR Fale com Karang Amakkar
    accept 216
step
    only Rogue
    goto 1440 11.6,34.9
    note-enUS Talk to the trolls in the hut
    note-ptBR Fale com os trolls na cabana
    note-enUS Talk to Mitsuwa
    note-ptBR Fale com Mitsuwa
    accept 6462
step
    only Rogue
    ifcomplete 6562
    goto 1440 11.6,34.3
    note-enUS Talk to Je'neu Sancrea
    note-ptBR Fale com Je'neu Sancrea
    turnin 6562
step
    only Rogue
    goto 1440 12.1,34.4
    note-enUS Accepting this quest starts an escort. Follow him
    note-ptBR Aceitar esta missão inicia uma escolta. Siga-o
    note-enUS Talk to Muglash
    note-ptBR Fale com Muglash
    accept 6641
step
    only Rogue
    ifonquest 6641
    goto 1440 9.8,27.4
    note-enUS Click the Brazier. There will be waves of Naga that spawn. Once Vorsha comes out, let Muglash get aggro before fighting him.
    note-ptBR Clique no Brazier. Ondas de Naga vão aparecer. Quando Vorsha surgir, deixe Muglash pegar o aggro antes de enfrentá-lo.
    objective 6641/1
step
    ifonquest 216
    goto 1440 38.5,36.1 50
    note-enUS Run to Thistlefur Village
    note-ptBR Corra até Thistlefur Village
step
    ifonquest 216
    goto 1440 38.4,30.6 30
    note-enUS Kill some of the Furbolgs en route to the cave
    note-ptBR Mate alguns dos Furbolgs no caminho até a caverna
    objective 216/2 |opt
    objective 216/1 |opt
    note-enUS Run into Thistlefur Hold
    note-ptBR Entre correndo em Thistlefur Hold
step
    ifonquest 6462
    note-enUS Loot the tiny chests inside the tunnel.
    note-ptBR Saqueie os baús pequenos dentro do túnel.
    objective 6462/1
step
    ifonquest 216
    goto 1440 41.5,34.5
    note-enUS This starts an escort. Start it when ready.
    note-ptBR Isto inicia uma escolta. Comece quando estiver pronto.
    note-enUS Talk to Ruul Snowhoof
    note-ptBR Fale com Ruul Snowhoof
    accept 6482
step
    ifonquest 6482
    goto 1440 38.5,36.4
    note-enUS Kill quest mobs while you are escorting Ruul
    note-ptBR Mate os mobs da missão enquanto escolta Ruul
    objective 216/2 |opt
    objective 216/1 |opt
    objective 6482/1
step
    ifonquest 216
    note-enUS Finish killing the Furbolgs
    note-ptBR Termine de matar os Furbolgs
    objective 216/2
    objective 216/1
step
    only Shaman
    goto 1440 33.5,67.5
    use 7767
    note-enUS Fill the Waterskin
    note-ptBR Encha o Waterskin
    objective 1534/1
step
    path seq 1440 41.5,67.4 44.3,68.6 43.8,63.6 41.4,65.9 41.5,67.4 44.3,68.6 43.8,63.6 41.4,65.9 41.5,67.4 44.3,68.6 43.8,63.6 41.4,65.9 41.5,67.4 44.3,68.6 43.8,63.6 41.4,65.9
    goto 1440 44.3,68.6
    use 16303
    note-enUS Look for Ursangous (Bear). He patrols clockwise. Kill and loot him for Ursangous's Paw then click it to accept the quest.
    note-ptBR Procure Ursangous (urso). Ele patrulha no sentido horário. Mate-o e saqueie Ursangous's Paw; depois clique nele para aceitar a missão.
    collect 16303 1 |quest 23
    accept 23
step
    use 16408
    note-enUS Kill Tideress who is located around the middle of the lake. Loot her for a Befouled Water Globe, then click it to accept the quest
    note-ptBR Mate Tideress, que fica mais ou menos no meio do lago. Saqueie-a para pegar um Befouled Water Globe e clique nele para aceitar a missão
    collect 16408 1 |quest 1918
    accept 1918
step
    goto 1440 48.93,69.56
    note-enUS Kill Water Elementals throughout the lake
    note-ptBR Mate Water Elementals por todo o lago
    objective 25/1 |opt
    note-enUS Run under the Gazebo in the middle of the lake
    note-ptBR Corra para baixo do Gazebo no meio do lago
    objective 25/2
step
    goto 1440 48.9,69.6
    note-enUS Kill Water Elementals throughout the lake
    note-ptBR Mate Water Elementals por todo o lago
    objective 25/1
step
    goto 1440 60.2,72.9
    use 5867
    note-enUS Use the Etched Phial from earlier at the moonwell
    note-ptBR Use o Etched Phial de antes no moonwell
    objective 1195/1
step
    goto 1440 71.2,68.1
    note-enUS Talk to Kuray'bin
    note-ptBR Fale com Kuray'bin
    turnin 6503
step
    path seq 1440 72.4,72.1 75.7,70 78.2,65.5 72.4,72.1 75.7,70 78.2,65.5
    goto 1440 75.3,72
    use 16305
    note-enUS Look for Sharptalon (big bird). He Patrols clockwise. Kill and loot him for Sharptalon's Claw. Accept the quest from it. Solo him down to about 60% health then kite him to the undead camp to kill him.
    note-ptBR Procure Sharptalon (pássaro grande). Ele patrulha no sentido horário. Mate-o e saqueie Sharptalon's Claw. Aceite a missão por ele. Enfrente-o sozinho até cerca de 60% de vida e depois atraia-o até o acampamento dos mortos-vivos para matá-lo.
    collect 16305 1 |quest 2
    accept 2
step
    ifcomplete 6544
    goto 1440 73.1,62.5
    note-enUS Go back to town
    note-ptBR Volte para a cidade
    note-enUS Talk to Ertog Ragetusk
    note-ptBR Fale com Ertog Ragetusk
    turnin 6544
step
    goto 1440 73.8,61.5
    note-enUS Talk to Senani Thunderheart
    note-ptBR Fale com Senani Thunderheart
    turnin 2
    turnin 24
    turnin 23
    turnin 247
step
    goto 1440 73.7,60
    note-enUS Talk to Mastok Wrilehiss
    note-ptBR Fale com Mastok Wrilehiss
    turnin 25
    turnin 1918
step
    goto 1440 73.7,60
    abandon 1918
    note-enUS Abandon The Befouled Element
    note-ptBR Abandone The Befouled Element
    note-enUS Destroy Befouled Water Globe
    note-ptBR Destrua Befouled Water Globe
step
    ifonquest 216
    goto 1440 73.7,60
    note-enUS Talk to Mastok Wrilehiss
    note-ptBR Fale com Mastok Wrilehiss
    accept 824
step
    ifonquest 6482
    goto 1440 74.11,60.92
    note-enUS Head into the inn
    note-ptBR Entre na estalagem
    note-enUS Talk to Yama Snowhoof
    note-ptBR Fale com Yama Snowhoof
    turnin 6482
step
    goto 1440 73.1,61.5
    note-enUS Talk to Pixel
    note-ptBR Fale com Pixel
    turnin 6441
step
    ifonquest 216
    path seq 1440 73.2,61.5
    goto 1440 11.9,34.53
    fp |opt
    note-enUS Fly to Zoram'gar Outpost
    note-ptBR Voe para Zoram'gar Outpost
    note-enUS Talk to Karang Amakkar
    note-ptBR Fale com Karang Amakkar
    turnin 216
step
    ifonquest 6462
    goto 1440 11.7,34.8
    note-enUS Talk to Mitsuwa
    note-ptBR Fale com Mitsuwa
    turnin 6462
step
    ifturnedin 6462
    goto 1440 11.6,34.3
    note-enUS Talk to Je'neu Sancrea
    note-ptBR Fale com Je'neu Sancrea
    turnin 824
step
    only Rogue
    ifcomplete 6641
    goto 1440 12.22,34.22
    note-enUS Return to Zoram'gar Outpost.
    note-ptBR Volte para Zoram'gar Outpost.
    note-enUS Talk to Warsong Runner
    note-ptBR Fale com o Warsong Runner
    turnin 6641
step
    only Rogue
    goto 1440 11.59,34.27
    note-enUS Talk to Je'neu Sancrea
    note-ptBR Fale com Je'neu Sancrea
    accept 6921
    accept 6563
step
    only Rogue
    goto 1440 14,15 100
    note-enUS Go to the entrance of Blackfathom Deeps
    note-ptBR Vá até a entrada de Blackfathom Deeps
step
    only Rogue
    goto 1440 13.15,12.96
    note-enUS Kill Blackfathom Tide Priestesses until Damp Note drops. Start the quest
    note-ptBR Mate Blackfathom Tide Priestesses até cair a Damp Note. Inicie a missão
    collect 16790 1 |quest 6564
    accept 6564
step
    only Rogue
    goto 1440 17.04,12.29
    note-enUS Stealth towards the dungeon while looting the 20 Sapphires on the walls
    note-ptBR Vá em Furtividade em direção à masmorra enquanto saqueia as 20 Sapphires nas paredes
    objective 6563/1
step
    only Rogue
    note-enUS To solo this quest you need to play correctly in 2 ways. First of all you need to not die to breath, that means before you aggro the boss you should have full breath. The second thing to be aware of is that you need to kick EVERY frostbolt you can and use evasion after a kick. Mo |only Rogue
    note-ptBR Para fazer esta missão sozinho, jogue certo em 2 pontos. Primeiro, não morra por falta de fôlego: tenha fôlego cheio antes de puxar o chefe. Segundo, interrompa com Kick TODO Frostbolt que puder e use Evasion depois de um Kick. Mo |only Rogue
    note-enUS Stealth all the way to the Moonshine Ruins, then swim under the Bridge and prepare for the boss (Use all buffs you have)
    note-ptBR Vá em Furtividade até as Moonshine Ruins, depois nade por baixo da ponte e prepare-se para o chefe (use todos os buffs que tiver)
    note-enUS Loot the Fathom Core, this spawns the boss.
    note-ptBR Saqueie o Fathom Core, isso faz o chefe aparecer.
    note-enUS Loot the Globe from Baron Aquanis. Accept the quest
    note-ptBR Saqueie o Globe de Baron Aquanis. Aceite a missão
    collect 16762 1 |quest 6922
    accept 6922
step
    only Rogue
    hearth
    note-enUS Hearth to Splintertree Post
    note-ptBR Use a pedra de regresso para Splintertree Post
    note-enUS Buy food/water if needed
    note-ptBR Compre comida/água se precisar
step
    only Rogue
    goto 1450 52.53,40.56 |only Druid
    goto 1440 73.2,61.6
    note-enUS Use the spell Teleport to Moonglade |only Druid
    note-ptBR Use a magia Teleport to Moonglade |only Druid
    trainer |only Druid |opt
    note-enUS Go and train your class spells |only Druid
    note-ptBR Vá treinar suas magias de classe |only Druid
    hearth |only !Rogue |opt
    note-enUS Use your hearthstone to Thunder Bluff |only !Rogue
    note-ptBR Use sua pedra de regresso para Thunder Bluff |only !Rogue
    fly 1454
    note-enUS Fly to Orgrimmar
    note-ptBR Voe para Orgrimmar
step
    only Rogue
    goto 1454 44,54.6 |only Rogue
    goto 1454 45.12,63.89
    trainer |only Rogue |opt
    note-enUS Go and train your class spells |only Rogue
    note-ptBR Vá treinar suas magias de classe |only Rogue
    fly 1456
    note-enUS Fly to Thunder Bluff
    note-ptBR Voe para Thunder Bluff
step
    goto 1456 55.2,51.5
    note-enUS Talk to Zangen Stonehoof
    note-ptBR Fale com Zangen Stonehoof
    turnin 1195
    accept 1196
step
    only Hunter
    goto 1456 46.9,45.7
    vendor
    note-enUS Go and buy a Sturdy Recurve if it's in the shop.
    note-ptBR Vá comprar um Sturdy Recurve se estiver na loja.
    collect 11306 1
step
    only Druid
    goto 1456 77,29.9
    trainer
    note-enUS Go and train your class spells
    note-ptBR Vá treinar suas magias de classe
    note-enUS Talk to Turak Runetotem
    note-ptBR Fale com Turak Runetotem
step
    ifonquest 1086
    path seq 1456 59.1,86.9 |only Hunter
    goto 1456 54.1,83.9 |only Hunter
    goto 1456 57.6,85.5 |only Warrior
    goto 1456 22.81,20.89 |only Shaman
    goto 1456 22.8,20.8
    trainer |only Hunter |opt
    note-enUS Go and train your class spells |only Hunter
    note-ptBR Vá treinar suas magias de classe |only Hunter
    trainer |only Hunter |opt
    note-enUS Go and train your pet spells |only Hunter
    note-ptBR Vá treinar as magias do seu pet |only Hunter
    trainer |only Warrior |opt
    note-enUS Go and train your class spells |only Warrior
    note-ptBR Vá treinar suas magias de classe |only Warrior
    trainer |only Shaman |opt
    note-enUS Go and train your class spells |only Shaman
    note-ptBR Vá treinar suas magias de classe |only Shaman
    note-enUS Talk to Apothecary Zamah
    note-ptBR Fale com Apothecary Zamah
    turnin 1086
step
    goto 1456 24.6,22.6 |only Priest
    goto 1456 25.2,20.9 |only Mage
    goto 1456 61,81
    trainer |only Priest |opt
    note-enUS Go and train your class spells |only Priest
    note-ptBR Vá treinar suas magias de classe |only Priest
    trainer |only Mage |opt
    note-enUS Go and train your class spells |only Mage
    note-ptBR Vá treinar suas magias de classe |only Mage
    note-enUS Talk to Melor Stonehoof
    note-ptBR Fale com Melor Stonehoof
    accept 1131
step
    goto 1456 45.81,64.71 |only Rogue
    goto 1456 46.8,50.1
    home |only Rogue |opt
    note-enUS Set your Hearthstone to Thunder Bluff |only Rogue
    note-ptBR Defina sua pedra de regresso em Thunder Bluff |only Rogue
    note-enUS Head up the totem tower
    note-ptBR Suba a torre de totem
    fp
    note-enUS Fly to Camp Taurajo
    note-ptBR Voe para Camp Taurajo
step
    only Shaman
    goto 1413 43.4,77.4
    note-enUS Talk to Brine
    note-ptBR Fale com Brine
    turnin 1534
    accept 220
step
    ifonquest 5881
    goto 1413 44,92
    note-enUS Talk to Grish Longrunner
    note-ptBR Fale com Grish Longrunner
    turnin 5881
step
    goto 1441 32.2,22.2
    note-enUS Head south towards Thousand Needles
    note-ptBR Siga para o sul em direção a Thousand Needles
    note-enUS Talk to Brave Moonhorn
    note-ptBR Fale com Brave Moonhorn
    accept 4542
step
    path seq 1441 47.1,48.3 46.1,50.5
    goto 1441 45.9,50.9
    use 12564 |opt
    note-enUS Keep an eye out for the Galak Messenger. If you see it, kill him, loot the Note, and accept the quest. You can look for him later too if you can't find him.
    note-ptBR Fique de olho no Galak Messenger. Se o vir, mate-o, saqueie a Note e aceite a missão. Você também pode procurá-lo depois se não encontrar.
    collect 12564 1 |quest 4881 |opt
    accept 4881 |opt
    note-enUS Take the lift down, then run to Freewind Post
    note-ptBR Desça pelo elevador e depois corra até Freewind Post
    note-enUS Accept quests around Freewind Post
    note-ptBR Aceite as missões pelos arredores de Freewind Post
    note-enUS Talk to Magistrix Elosai
    note-ptBR Fale com Magistrix Elosai
    accept 9431
    accept 5147
step
    ifonquest 1196
    goto 1441 46.1,51.7
    note-enUS Talk to Rau Cliffrunner
    note-ptBR Fale com Rau Cliffrunner
    turnin 1196
    accept 1197
step
    goto 1441 45.6,50.8
    note-enUS Talk to Cliffwatcher Longhorn
    note-ptBR Fale com Cliffwatcher Longhorn
    turnin 4542
    accept 4841
step
    path seq 1441 44.8,49.1
    goto 1441 44.7,50.2
    note-enUS Talk to Elu
    note-ptBR Fale com Elu
    accept 4767
    note-enUS Talk to Hagar Lightninghoof
    note-ptBR Fale com Hagar Lightninghoof
    accept 4821
step
    goto 1441 44.9,50.7 |only Hunter
    goto 1441 45.1,49.2
    vendor |only Hunter |opt
    note-enUS Go buy Dense Shortbow if it's in the shop. |only Hunter
    note-ptBR Vá comprar o Dense Shortbow se estiver na loja. |only Hunter
    collect 11305 1 |only Hunter |opt
    fp
    note-enUS Get the Freewind Post flight path
    note-ptBR Pegue o ponto de voo de Freewind Post
step
    path seq 1441 44,37.4 41.3,37.7
    goto 1441 42,31.5
    note-enUS Go into the Galak cave. Run along the left side. Kill centaurs en route
    note-ptBR Entre na caverna Galak. Siga pelo lado esquerdo. Mate centauros no caminho
    note-enUS Kill Centaurs in the area
    note-ptBR Mate Centauros na área
    objective 4841/3 |opt
    objective 4841/1 |opt
    objective 4841/2 |opt
    note-enUS Loot the Brazier at the end of the cave system. Take a left once you are at the crossroads of the cave.
    note-ptBR Saqueie o Brazier no fim do sistema de cavernas. Vire à esquerda quando chegar à bifurcação da caverna.
    objective 1197/1
step
    goto 1441 41.3,37.7
    note-enUS Finish killing Centaurs in the area
    note-ptBR Termine de matar Centauros na área
    objective 4841/3
    objective 4841/1
    objective 4841/2
step
    path seq 1441 54.6,44.3
    goto 1441 53.9,41.5
    note-enUS Run up the path here, then go in the cave
    note-ptBR Suba o caminho aqui e depois entre na caverna
    note-enUS Talk to Dorn Plainstalker
    note-ptBR Fale com Dorn Plainstalker
    accept 1149
step
    ifonquest 1149
    goto 1441 26.4,32.6 15
    note-enUS Jump off the end of the wooden platform, you don't die.
    note-ptBR Pule da ponta da plataforma de madeira, você não morre.
step
    goto 1441 53.9,41.7
    note-enUS Talk to Dorn Plainstalker
    note-ptBR Fale com Dorn Plainstalker
    turnin 1149
    accept 1150
step
    path seq 1441 65.74,49.89 67.87,58.33 66.03,62.14 58.95,57.84
    goto 1441 65.74,49.89
    note-enUS Kill all Kobolds you encounter. Loot them for the Ore Sample
    note-ptBR Mate todos os Kobolds que encontrar. Saqueie-os para obter a Ore Sample
    objective 1153/1
step
    goto 1441 65.2,62.4
    note-enUS Kill Thundering Boulderkins. Loot them for Purifying Earth
    note-ptBR Mate Thundering Boulderkins. Saqueie-os para obter Purifying Earth
    objective 9431/1
step
    path seq 1441 56.3,50.4 52.4,55.2 37.7,56.1 56.3,50.4 52.4,55.2
    goto 1441 37.7,56.1
    note-enUS Look for the Alien Egg. It's a lootable object in one of the camps. It looks like spider eggs.
    note-ptBR Procure o Alien Egg. É um objeto saqueável em um dos acampamentos. Parece ovos de aranha.
    objective 4821/1
step
    goto 1441 45.6,50.8
    note-enUS Go back to Freewind Post
    note-ptBR Volte para Freewind Post
    note-enUS Talk to Cliffwatcher Longhorn
    note-ptBR Fale com Cliffwatcher Longhorn
    turnin 4841
    accept 5064
step
    goto 1441 46.1,51.7
    note-enUS Talk to Rau Cliffrunner
    note-ptBR Fale com Rau Cliffrunner
    turnin 1197
step
    goto 1441 44.7,50.3
    note-enUS Talk to Hagar Lightninghoof
    note-ptBR Fale com Hagar Lightninghoof
    turnin 4821
    accept 4865
step
    ifonquest 1150
    goto 1441 27.7,50 20
    note-enUS Make your way down from Freewind Point then run up the path here
    note-ptBR Desça de Freewind Point e depois suba o caminho aqui
step
    ifonquest 1150
    goto 1441 27.3,51.2 20
    note-enUS Enter the cave
    note-ptBR Entre na caverna
    note-enUS Keep in mind the harpies here can do an aoe silence |only Priest Warlock Druid Paladin Mage Shaman
    note-ptBR Lembre-se de que as harpias aqui podem lançar um silêncio em área |only Priest Warlock Druid Paladin Mage Shaman
step
    goto 1441 25.9,54.6
    note-enUS Go to the end of the cave, and open the Crate. Kill Grenka and loot her
    note-ptBR Vá até o fim da caverna e abra o Crate. Mate Grenka e saqueie-a
    objective 1150/1
step
    ifonquest 4767
    goto 1441 13.9,31.7 25
    note-enUS Exit the cave then run up the path here
    note-ptBR Saia da caverna e suba o caminho aqui
step
    ifonquest 4767
    goto 1441 13.2,39.7 20
    note-enUS Loot the eggs on the ground in the area. Loot any you see
    note-ptBR Saqueie os ovos no chão da área. Saqueie todos que encontrar
    objective 4767/1 |opt
    note-enUS Run up the path here
    note-ptBR Suba o caminho correndo aqui
step
    goto 1441 17.8,40.6
    note-enUS This starts an Escort. Start it when ready. Try to have 5-6 eggs before starting so you can finish on the way out.
    note-ptBR Isto inicia uma escolta. Comece quando estiver pronto. Tente ter 5-6 ovos antes de começar para poder terminar na saída.
    note-enUS Talk to Pao'ka Swiftmountain
    note-ptBR Fale com Pao'ka Swiftmountain
    accept 4770
step
    goto 1441 14.6,32.7
    note-enUS Escort Pao'ka down the mountain. 3 wyvern will spawn when he reaches the middle of the area.
    note-ptBR Escolte Pao'ka montanha abaixo. 3 wyverns vão aparecer quando ele chegar ao meio da área.
    objective 4770/1
step
    goto 1441 10.8,34.7
    note-enUS Go back and loot the rest of the Wyvern eggs
    note-ptBR Volte e saqueie o restante dos ovos de Wyvern
    objective 4767/1
step
    goto 1441 21.5,32.3
    note-enUS Talk to Motega Firemane
    note-ptBR Fale com Motega Firemane
    turnin 4865
    accept 5062
    note-enUS Talk to Wizlo Bearingshiner
    note-ptBR Fale com Wizlo Bearingshiner
    turnin 9431
    accept 5151
    accept 9433
    note-enUS A Dip in the Moonwell
    note-ptBR A Dip in the Moonwell
    turnin 4770
step
    path seq 1441 12,18.8 10.7,17.6
    goto 1441 9.5,18.7 10
    goto 1444 89.6,46.3
    note-enUS Keep an eye out for Steelsnap. He patrols around the zone.
    note-ptBR Fique de olho em Steelsnap. Ele patrulha pela zona.
    objective 1131/1 |opt
    use 12564 |opt
    note-enUS Find the Galak Messenger that patrols the zone. Kill him and loot his note.
    note-ptBR Encontre o Galak Messenger que patrulha a zona. Mate-o e saqueie a nota dele.
    collect 12564 1 |quest 4881 |opt
    accept 4881 |opt
    use 23675
    note-enUS Use the Robotron Control Unit hiding in the bushes ontop of the ledge.
    note-ptBR Use o Robotron Control Unit escondido nos arbustos em cima da plataforma.
    note-enUS Once you're in the robot walk over to the moonwell and collect the water using the pet action bar button.
    note-ptBR Dentro do robô, vá até o poço lunar e colete a água usando o botão da barra de ação do ajudante.
    objective 9433/1
step
    goto 1441 18.7,22.2
    level 28
    note-enUS Grind to 25000+/33900xp
    note-ptBR Mate monstros até 25000+/33900xp
step
    path seq 1441 10.9,23.2 17.1,18.4 18.3,26.8 15.2,30.5 18.3,26.8 17.1,18.4 10.9,23.2 17.1,18.4 18.3,26.8
    goto 1441 15.2,30.5
    note-enUS Search for Steelsnap (Hyena). He patrols counter-clockwise
    note-ptBR Procure Steelsnap (Hiena). Ele patrulha no sentido anti-horário
    objective 1131/1
step
    goto 1441 21.5,32.5
    note-enUS Talk to Wizlo Bearingshiner
    note-ptBR Fale com Wizlo Bearingshiner
    turnin 9433
    accept 9434
step
    path seq 1441 18.4,22.2 25.2,33.8 36,29 39.6,33.6 36,29 25.2,33.8 18.4,22.2 25.2,33.8 36,29
    goto 1441 39.6,33.6
    use 12564
    note-enUS Search for the Galak Messenger. He starts at a camp, goes on the road, then goes to the other camp
    note-ptBR Procure o Galak Messenger. Ele começa em um acampamento, vai pela estrada e depois vai ao outro acampamento
    collect 12564 1 |quest 4881
    accept 4881
step
    path seq 1441 37.5,38.4 33.5,32.4 37.5,38.4 33.5,32.4 37.5,38.4 33.5,32.4 37.5,38.4 33.5,32.4 37.5,38.4 33.5,32.4 37.5,38.4 33.5,32.4 37.5,38.4 33.5,32.4 37.5,38.4
    goto 1441 33.5,32.4
    note-enUS Go back and forth in the pool, collecting yellow plants near the edges of the water as well as underwater.
    note-ptBR Vá e volte pelo lago, coletando plantas amarelas perto das margens e também debaixo d'água.
    note-enUS The elementals are immune to frost damage and highly resistant to Fire. Try your best to avoid them |only Mage
    note-ptBR Os elementais são imunes a dano de gelo e altamente resistentes a Fogo. Faça o possível para evitá-los |only Mage
    objective 5062/1
step
    goto 1456 77,29.9 |only Druid
    path seq 1456 59.1,86.9 |only Hunter
    goto 1456 54.1,83.9 |only Hunter
    goto 1456 57.6,85.5 |only Warrior
    goto 1456 22.81,20.89 |only Shaman
    goto 1456 24.6,22.6 |only Priest
    goto 1456 25.2,20.9 |only Mage
    goto 1456 61.4,80.8
    hearth |opt
    note-enUS Hearth to Thunder Bluff
    note-ptBR Use a pedra de regresso para Thunder Bluff
    trainer |only Druid |opt
    note-enUS Go and train your class spells |only Druid
    note-ptBR Vá treinar suas magias de classe |only Druid
    trainer |only Hunter |opt
    note-enUS Go and train your class spells |only Hunter
    note-ptBR Vá treinar suas magias de classe |only Hunter
    trainer |only Hunter |opt
    note-enUS Go and train your pet spells |only Hunter
    note-ptBR Vá treinar as magias do seu pet |only Hunter
    trainer |only Warrior |opt
    note-enUS Go and train your class spells |only Warrior
    note-ptBR Vá treinar suas magias de classe |only Warrior
    trainer |only Shaman |opt
    note-enUS Go and train your class spells |only Shaman
    note-ptBR Vá treinar suas magias de classe |only Shaman
    trainer |only Priest |opt
    note-enUS Go and train your class spells |only Priest
    note-ptBR Vá treinar suas magias de classe |only Priest
    trainer |only Mage |opt
    note-enUS Go and train your class spells |only Mage
    note-ptBR Vá treinar suas magias de classe |only Mage
    note-enUS Talk to Melor Stonehoof
    note-ptBR Fale com Melor Stonehoof
    turnin 1131
step
    goto 1456 60.8,81.5
    note-enUS Talk to Melor Stonehoof
    note-ptBR Fale com Melor Stonehoof
    accept 1136
step
    goto 1456 69.85,30.91
    note-enUS Talk to Magatha Grimtotem
    note-ptBR Fale com Magatha Grimtotem
    turnin 5062
step
    goto 1456 70.1,30.9
    note-enUS Talk to Magatha Grimtotem
    note-ptBR Fale com Magatha Grimtotem
    accept 5088
step
    goto 1456 46.9,49.4
    goto 1413 45.1,57.7
    fp |opt
    note-enUS Fly to Camp Taurajo
    note-ptBR Voe para Camp Taurajo
    note-enUS Talk to Tatternack Steelforge
    note-ptBR Fale com Tatternack Steelforge
    turnin 1153
step
    goto 1413 44.4,59
    path seq 1441 44.8,49
    goto 1441 46.2,50.5
    fp |opt
    note-enUS Fly to Freewind Post
    note-ptBR Voe para Freewind Post
    note-enUS Talk to Elu
    note-ptBR Fale com Elu
    turnin 4767
    note-enUS Talk to Magistrix Elosai
    note-ptBR Fale com Magistrix Elosai
    turnin 9434
step
    goto 1441 46.1,51.5 |only !Warrior
    goto 1441 54,41.4
    home |only !Warrior |opt
    note-enUS Set your Hearthstone to Freewind Post |only !Warrior
    note-ptBR Defina sua pedra de regresso em Freewind Post |only !Warrior
    note-enUS Kill Kobolds you see whilst doing other quests. Loot them for an Unrefined Ore Sample
    note-ptBR Mate os Kobolds que encontrar enquanto faz outras missões. Saqueie-os para obter uma Unrefined Ore Sample
    collect 5842 1 |opt
    note-enUS Head to the northeastern cave
    note-ptBR Vá até a caverna a nordeste
    note-enUS Talk to Dorn Plainstalker
    note-ptBR Fale com Dorn Plainstalker
    turnin 1150
    accept 1151
step
    path seq 1441 29.3,33.6 27.1,28.7 22.5,31.3 17.5,27 12.8,20.9 9.3,21 21.1,40.6 34.3,37.5 33.2,53.5 29.3,33.6 27.1,28.7 22.5,31.3 17.5,27 12.8,20.9 9.3,21 21.1,40.6
    goto 1441 34.3,37.5 40
    note-enUS Kill Rok'Alim The Pounder (Rock Elemental). Loot him for his Fragments. He patrols a large circle around western Thousand Needles.
    note-ptBR Mate Rok'Alim The Pounder (Elemental de Pedra). Saqueie-o para obter os fragmentos dele. Ele patrulha em um grande círculo pelo oeste de Thousand Needles.
    objective 1151/1
step
    ifonquest 5064
    goto 1441 31.2,36.9 30
    note-enUS Run up the path here
    note-ptBR Suba o caminho correndo aqui
step
    goto 1441 32,32.6
    note-enUS Climb up the mountain and cross the bridges to find the notes. Loot the chests
    note-ptBR Suba a montanha e atravesse as pontes para encontrar as anotações. Saqueie os baús
    objective 5064/1
step
    goto 1441 33.9,39.9
    objective 5064/2
step
    goto 1441 39.3,41.6
    objective 5064/3
step
    goto 1441 37.9,35.3
    use 12785
    note-enUS Clear the mobs around the bonfire, then light it, then kill Arikara. Loot her
    note-ptBR Limpe os mobs ao redor da fogueira, acenda-a e mate Arikara. Saqueie-a
    objective 5088/1
    objective 5088/2
step
    goto 1441 38.6,27.4
    note-enUS Kill Arnak Grimtotem. Loot him for his Hoof
    note-ptBR Mate Arnak Grimtotem. Saqueie-o para obter o casco dele
    objective 5147/1
step
    goto 1441 38.1,26.6
    note-enUS Talk to Lakota Windsong
    note-ptBR Fale com Lakota Windsong
    accept 4904
step
    goto 1441 30.7,37.1
    note-enUS Follow Lakota and protect her through the whole escort. Mobs will spawn periodically on the platforms.
    note-ptBR Siga Lakota e proteja-a durante toda a escolta. Mobs vão aparecer periodicamente nas plataformas.
    objective 4904/1
step
    goto 1441 23.3,23.3
    note-enUS Open the panther cage and kill it. Make sure to have your cooldowns/potions available
    note-ptBR Abra a jaula da pantera e mate-a. Tenha suas recargas/poções disponíveis
    objective 5151/1
step
    ifonquest 4881
    goto 1441 21.3,32
    note-enUS Escort will start when you accept next part of the quest.
    note-ptBR A escolta começa quando você aceitar a próxima parte da missão.
    note-enUS Talk to Kanati Greycloud
    note-ptBR Fale com Kanati Greycloud
    turnin 4881
step
    ifturnedin 4881
    goto 1441 21.3,32
    note-enUS Escort will start when you accept next part of the quest.
    note-ptBR A escolta começa quando você aceitar a próxima parte da missão.
    note-enUS Talk to Kanati Greycloud
    note-ptBR Fale com Kanati Greycloud
    accept 4966
step
    ifonquest 4966
    goto 1441 21.4,31.8
    note-enUS 3 mobs will spawn. Let Kanati get aggro, then simply kill them
    note-ptBR 3 mobs vão aparecer. Deixe Kanati pegar o aggro e então simplesmente mate-os
    objective 4966/1
step
    ifcomplete 4966
    goto 1441 21.4,31.8
    note-enUS Talk to Kanati Greycloud
    note-ptBR Fale com Kanati Greycloud
    turnin 4966
step
    goto 1441 21.5,32.3
    note-enUS Talk to Motega Firemane
    note-ptBR Fale com Motega Firemane
    turnin 5088
    note-enUS Talk to Wizlo Bearingshiner
    note-ptBR Fale com Wizlo Bearingshiner
    turnin 5151
step
    goto 1441 9.2,21
    note-enUS Kill Kobolds in the area. Loot them for an Unrefined Ore Sample
    note-ptBR Mate Kobolds na área. Saqueie-os para obter uma Unrefined Ore Sample
    collect 5842 1
step
    path seq 1444 88.9,41.2
    goto 1444 75.4,44.3
    note-enUS Run to Feralas. We're getting the Flight Path for later
    note-ptBR Corra até Feralas. Vamos pegar o caminho de voo para depois
    fp
    note-enUS Get the Camp Mojache flight path
    note-ptBR Pegue o ponto de voo de Camp Mojache
step
    goto 1444 75.4,44.4
    goto 1441 45.7,50.8
    fp |opt
    note-enUS Fly to Freewind Post
    note-ptBR Voe para Freewind Post
    note-enUS Talk to Cliffwatcher Longhorn
    note-ptBR Fale com Cliffwatcher Longhorn
    turnin 5064
    turnin 5147
step
    goto 1441 46,51.5
    note-enUS Talk to Thalia Amberhide
    note-ptBR Fale com Thalia Amberhide
    turnin 4904
step
    goto 1441 53.9,41.4
    note-enUS Talk to Dorn Plainstalker
    note-ptBR Fale com Dorn Plainstalker
    turnin 1151
step
    goto 1441 67.6,64
    level 30
    note-enUS Grind to level 30
    note-ptBR Mate monstros até o nível 30
step
    ifonquest 1146
    goto 1441 67.6,64
    note-enUS Talk to Moktar Krin
    note-ptBR Fale com Moktar Krin
    turnin 1146
    accept 1147
step
    path seq 1441 77.8,77.2 77.9,77.2
    goto 1441 78.1,77.1
    note-enUS Accept quests around the racetrack
    note-ptBR Aceite as missões pelos arredores da pista de corrida
    note-enUS Talk to Kravel Koalbeard
    note-ptBR Fale com Kravel Koalbeard
    accept 1110
    note-enUS Talk to Fizzle Brassbolts
    note-ptBR Fale com Fizzle Brassbolts
    accept 1104
    note-enUS Talk to Wizzle Brassbolts
    note-ptBR Fale com Wizzle Brassbolts
    accept 1105
step
    goto 1441 77.79,77.27
    note-enUS Talk to Kravel Koalbeard
    note-ptBR Fale com Kravel Koalbeard
    accept 1111
    accept 5762
step
    path seq 1441 80.2,75.8
    goto 1441 81.7,78
    note-enUS Talk to Pozzik
    note-ptBR Fale com Pozzik
    accept 1176
    note-enUS Talk to Trackmaster Zherin
    note-ptBR Fale com Trackmaster Zherin
    accept 1175
step
    ifonquest 1175
    goto 1441 78.4,89.1
    note-enUS Save the turtle meat for a quest later.
    note-ptBR Guarde a carne de tartaruga para uma missão mais tarde.
    collect 3712 10 |opt
    note-enUS Kill Gazers in the area. Also kill some Crystalhides that you see
    note-ptBR Mate Gazers na área. Mate também alguns Crystalhides que encontrar
    objective 1175/3
step
    ifonquest 1110
    note-enUS Circle the area killing and collecting for the Shimmering Flats quests
    note-ptBR Circule a área matando e coletando para as missões de Shimmering Flats
    complete 1
    complete 1
    complete 1
    complete 1
    complete 1
    complete 2
step
    ifonquest 1110
    note-enUS Grind the Silithid creatures until you get a Cracked Silithid Carapace. Click it to accept a quest.
    note-ptBR Faça grind das criaturas Silithid até conseguir um Cracked Silithid Carapace. Clique nele para aceitar uma missão.
    collect 5877 1 |quest 1148
    accept 1148
step
    ifturnedin 1146
    goto 1441 67.8,85.7
    complete 1
    complete 2
    complete 3
    complete 1
    complete 3
    complete 2
step
    goto 1441 67.58,63.94
step
    path seq 1441 77.8,77.2 78,77.1
    goto 1441 78.1,77.1
step
    ifturnedin 1104
    note-enUS Talk to Wizzle Brassbolts
    note-ptBR Fale com Wizzle Brassbolts
    accept 1107
    note-enUS Talk to Fizzle Brassbolts
    note-ptBR Fale com Fizzle Brassbolts
    accept 1106
step
    ifonquest 1176
    goto 1441 80.2,75.8
    note-enUS Talk to Pozzik
    note-ptBR Fale com Pozzik
    turnin 1176
    accept 1178
step
    ifonquest 1175
    goto 1441 81.6,78
    note-enUS Talk to Trackmaster Zherin
    note-ptBR Fale com Trackmaster Zherin
    turnin 1175
step
    ifonquest 1152
    goto 1446 51.6,25.4
    abandon 1152
    note-enUS Abandon Test of Lore
    note-ptBR Abandone Test of Lore
step
    goto 1446 51.6,25.4
    fp
    note-enUS Get the Gadgetzan flight path
    note-ptBR Pegue o ponto de voo de Gadgetzan
step
    only !Warrior
    goto 1441 45.1,49.2
    goto 1446 51.6,25.4
    hearth |only !Warrior |opt
    note-enUS Hearth to Freewind Post |only !Warrior
    note-ptBR Use a pedra de regresso para Freewind Post |only !Warrior
    hearth |only Warrior |opt
    note-enUS Hearth or fly to Thunder Bluff |only Warrior
    note-ptBR Use a pedra de regresso ou voe para Thunder Bluff |only Warrior
    fp
    note-enUS Fly to Camp Taurajo
    note-ptBR Voe para Camp Taurajo
step
    only Warrior
    ifonquest 1153
    goto 1441 45.1,49.2 |only Warrior
    goto 1446 51.6,25.4 |only Warrior
    goto 1456 57.4,87.2 |only Warrior
    goto 1456 47,49.83
    fly 1456 |only Warrior |opt
    note-enUS Fly to Thunder Bluff |only Warrior
    note-ptBR Voe para Thunder Bluff |only Warrior
    note-enUS Talk to Torm Ragetotem |only Warrior
    note-ptBR Fale com Torm Ragetotem |only Warrior
    accept 1718 |only Warrior |opt
    trainer |only Warrior |opt
    note-enUS Go and train your class spells |only Warrior
    note-ptBR Vá treinar suas magias de classe |only Warrior
    fp
    note-enUS Fly to Camp Taurajo
    note-ptBR Voe para Camp Taurajo
step
    only !Warrior
    ifonquest 1153
    goto 1413 44.9,59.1
    zone 1413
    note-enUS Arrive in the Barrens
    note-ptBR Chegue em The Barrens
step
    ifonquest 1153
    goto 1413 45.1,57.68
    note-enUS Talk to Tatternack Steelforge
    note-ptBR Fale com Tatternack Steelforge
    turnin 1153
step
    ifnotturnedin 1145
    goto 1413 44.4,59.1
    goto 1456 47,49.83
    goto 1413 51.1,29.7
    fp |opt
    note-enUS Fly to Crossroads
    note-ptBR Voe para Crossroads
    note-enUS Talk to Korran
    note-ptBR Fale com Korran
    accept 1145
step
    only !Shaman !Warrior
    goto 1413 52,29.8
    home
    note-enUS Set your Hearthstone to Crossroads
    note-ptBR Defina sua pedra de regresso em Crossroads
step
    ifonquest 1148
    goto 1413 51.1,29.6
    note-enUS Talk to Korran
    note-ptBR Fale com Korran
    turnin 1148
    accept 1184
step
    path seq 1413 51.5,30.3
    goto 1413 63.3,38.4
    fp |opt
    note-enUS Fly to Ratchet
    note-ptBR Voe para Ratchet
    note-enUS Talk to Wharfmaster Dizzywig
    note-ptBR Fale com Wharfmaster Dizzywig
    turnin 1111
    accept 1112
step
    only Warrior
    ifonquest 874
    goto 1413 65.8,43.8
    note-enUS Talk to Mahren Skyseer
    note-ptBR Fale com Mahren Skyseer
    turnin 874
    accept 873
step
    only Warrior
    ifonquest 873
    path seq 1413 65.6,47.1 63.3,54.2 65.6,47.1 63.3,54.2 65.6,47.1 63.3,54.2 65.6,47.1
    goto 1413 63.3,54.2
    note-enUS Look in the water for Isha Awak (Red Threshadon). Kill and loot it for its heart
    note-ptBR Procure na água por Isha Awak (Red Threshadon). Mate-o e saqueie-o para obter o coração dele
    objective 873/1
step
    only Warrior
    ifonquest 1718
    goto 1413 68.6,49.2
    note-enUS Swim to the island
    note-ptBR Nade até a ilha
    note-enUS Talk to Klannoc Macleod
    note-ptBR Fale com Klannoc Macleod
    turnin 1718
    accept 1719
step
    only Warrior
    ifonquest 1719
    goto 1413 68.6,48.7
    objective 1719/1
    objective 1719/2
step
    only Warrior
    ifonquest 873
    goto 1413 65.8,43.8
    note-enUS Talk to Mahren Skyseer
    note-ptBR Fale com Mahren Skyseer
    turnin 873
step
    only Warrior
    abandon 1838
    note-enUS Abandon Brutal Armor
    note-ptBR Abandone Brutal Armor
step
    goto 1413 63.7,38.6 15
    note-enUS Go to the dock. Take the boat to Stranglethorn Vale
    note-ptBR Vá até o cais. Pegue o barco para Stranglethorn Vale
    zone 1434
    note-enUS Arrive in Stranglethorn Vale
    note-ptBR Chegue em Stranglethorn Vale
step
    goto 1434 28.3,75.5 |only Shaman
    goto 1434 26.4,73.5
    vendor |only Shaman |opt
    note-enUS Go to the vendor and buy Staff of Protection or Big Stick if it's in the shop. |only Shaman
    note-ptBR Vá até o vendedor e compre Staff of Protection ou Big Stick se estiver na loja. |only Shaman
    collect 12252 1 |only Shaman |opt
    collect 12251 1 |only Shaman |opt
    note-enUS Talk to Wharfmaster Lozgil
    note-ptBR Fale com Wharfmaster Lozgil
    turnin 1180
    accept 1181
step
    goto 1434 28.29,77.59
    note-enUS Head to the second level of buildings
    note-ptBR Vá até o segundo nível de construções
    note-enUS Talk to Drizzlik
    note-ptBR Fale com Drizzlik
    accept 575
step
    goto 1434 27,77.2
    note-enUS Head into the inn, this quest is on the bottom floor
    note-ptBR Entre na estalagem, esta missão fica no térreo
    note-enUS Talk to Crank Fizzlebub
    note-ptBR Fale com Crank Fizzlebub
    accept 605
step
    goto 1434 27.1,77.3
    note-enUS These quests are on the top floors of the inn
    note-ptBR Estas missões ficam nos andares de cima da estalagem
    note-enUS Talk to Kebok
    note-ptBR Fale com Kebok
    accept 189
    accept 213
    note-enUS Talk to Krazek
    note-ptBR Fale com Krazek
    accept 201
step
    goto 1434 27.2,76.9
    note-enUS Talk to Baron Revilgaz
    note-ptBR Fale com Baron Revilgaz
    turnin 1181
    accept 1182
step
    goto 1434 26.8,77.2 |only Rogue
    goto 1434 26.9,77
    trainer |only Rogue |opt
    note-enUS Go and train your class spells |only Rogue
    note-ptBR Vá treinar suas magias de classe |only Rogue
    fp
    note-enUS Get the Booty Bay flight path
    note-ptBR Pegue o ponto de voo de Booty Bay
step
    goto 1413 63.7,38.6 15
    note-enUS Go to the dock. Take the boat back to Ratchet.
    note-ptBR Vá até o cais. Pegue o barco de volta para Ratchet.
    zone 1413
    note-enUS Arrive in Ratchet
    note-ptBR Chegue em Ratchet
step
    goto 1440 73.2,61.5
    goto 1413 63.1,37.1
    fly 1454
    note-enUS Fly to Orgrimmar
    note-ptBR Voe para Orgrimmar
step
    only Shaman
    ifonquest 1145
    goto 1454 32.4,35.8 |only Paladin
    goto 1454 38.6,36 |only Shaman
    goto 1454 37.8,37.4
    trainer |only Paladin |opt
    note-enUS Go and train your class spells |only Paladin
    note-ptBR Vá treinar suas magias de classe |only Paladin
    trainer |only Shaman |opt
    note-enUS Go and train your class spells |only Shaman
    note-ptBR Vá treinar suas magias de classe |only Shaman
    note-enUS Talk to Searn Firewarder
    note-ptBR Fale com Searn Firewarder
    accept 1531
step
    only Warlock
    path seq 1454 66.05,18.53 |only Hunter
    goto 1454 66.3,14.8 |only Hunter
    goto 1454 44,54.6 |only Rogue
    goto 1454 48.25,45.27
    trainer |only Hunter |opt
    note-enUS Go and train your class spells |only Hunter
    note-ptBR Vá treinar suas magias de classe |only Hunter
    trainer |only Hunter |opt
    note-enUS Go and train your pet spells |only Hunter
    note-ptBR Vá treinar as magias do seu pet |only Hunter
    trainer |only Rogue |opt
    note-enUS Go and train your class spells |only Rogue
    note-ptBR Vá treinar suas magias de classe |only Rogue
    note-enUS Talk to Gan'rul
    note-ptBR Fale com Gan'rul
    accept 2996
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    ifonquest 1145
    goto 1454 47.5,46.7 |only Warlock
    goto 1454 49.8,47.6
    vendor |only Warlock |opt
    note-enUS Buy your pet books |only Warlock
    note-ptBR Compre seus livros de pet |only Warlock
    collect 16368 1 |only Warlock |opt
    note-enUS Talk to Craven Drok
    note-ptBR Fale com Craven Drok
    accept 1431
step
    ifonquest 1145
    goto 1454 75.23,34.24
    note-enUS Talk to Belgrom Rockmaul
    note-ptBR Fale com Belgrom Rockmaul
    turnin 1145
    accept 1146
step
    ifonquest 1145
    goto 1454 38.8,85.6 |only Mage
    goto 1454 35.6,87.8 |only Priest
    goto 1454 22.4,52.8
    trainer |only Mage |opt
    note-enUS Go and train your class spells |only Mage
    note-ptBR Vá treinar suas magias de classe |only Mage
    trainer |only Priest |opt
    note-enUS Go and train your class spells |only Priest
    note-ptBR Vá treinar suas magias de classe |only Priest
    note-enUS Talk to Keldran
    note-ptBR Fale com Keldran
    turnin 1431
    accept 1432
step
    only Warlock
    goto 1454 45.12,63.88 |only Warlock
    goto 1413 62.63,35.5
    note-enUS Talk to Doras |only Warlock
    note-ptBR Fale com Doras |only Warlock
    fp |only Warlock |opt
    note-enUS Fly to Ratchet |only Warlock
    note-ptBR Voe para Ratchet |only Warlock
    note-enUS Talk to Strahad
    note-ptBR Fale com Strahad
    turnin 2996
    accept 1801
step
    only Warlock
    goto 1413 63.08,37.16
    note-enUS Talk to Bragok
    note-ptBR Fale com Bragok
    fly 1454
    note-enUS Fly to Orgrimmar
    note-ptBR Voe para Orgrimmar
step
    only Shaman
    ifonquest 874
    goto 1454 45.12,63.89 |only Shaman
    goto 1413 65.8,43.8
    fp |only Shaman |opt
    note-enUS Fly to Ratchet |only Shaman
    note-ptBR Voe para Ratchet |only Shaman
    note-enUS Talk to Mahren Skyseer
    note-ptBR Fale com Mahren Skyseer
    turnin 874
    accept 873
step
    only Shaman
    ifonquest 220
    goto 1413 65.8,43.8
    note-enUS Talk to Islen Waterseer
    note-ptBR Fale com Islen Waterseer
    turnin 220
    accept 63
step
    only Shaman
    ifonquest 873
    path seq 1413 65.6,47.1 63.3,54.2 65.6,47.1 63.3,54.2 65.6,47.1 63.3,54.2 65.6,47.1
    goto 1413 63.3,54.2
    note-enUS Look in the water for Isha Awak (Red Threshadon). Kill and loot it for its heart
    note-ptBR Procure na água por Isha Awak (Red Threshadon). Mate-o e saqueie-o para obter o coração dele
    objective 873/1
step
    only Shaman
    ifonquest 873
    goto 1413 65.8,43.8
    note-enUS Talk to Mahren Skyseer
    note-ptBR Fale com Mahren Skyseer
    turnin 873
step
    only Shaman
    ifnotturnedin 1531
    goto 1413 63.1,37.1 |only Warrior Shaman
    goto 1456 47,49.83 |only Warrior Shaman
    goto 1456 47,49.83 |only Tauren
    goto 1454 37.96,37.73
    fly 1454 |only Warrior Shaman |opt
    note-enUS Fly to Orgrimmar |only Warrior Shaman
    note-ptBR Voe para Orgrimmar |only Warrior Shaman
    fly 1454 |only Tauren |opt
    note-enUS Fly to Orgrimmar |only Tauren
    note-ptBR Voe para Orgrimmar |only Tauren
    note-enUS Talk to Searn Firewarder
    note-ptBR Fale com Searn Firewarder
    accept 1531
]==])

register([==[
#format 1
#id forever.x.h.22-25-hillsbrad-foothills-jj
#name 22-25 Hillsbrad Foothills JJ
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Horde
#levels 22-25
#zones 1424
#suffix JJ
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup Experimental (from Classic guides)
#subgroup-ptBR Experimental (adaptado do Classic)
#next forever.x.h.25-27-ashenvale-jj

step
    only Shaman Warrior
    goto 1454 54.1,68.39
    note-enUS Talk to Gryshka
    note-ptBR Fale com Gryshka
    home
    note-enUS Set your Hearthstone to Orgrimmar
    note-ptBR Defina sua pedra de regresso em Orgrimmar
step
    only Shaman Warrior
    path seq 1454 52.26,88.65 49.42,90.9 |only Shaman Warrior
    goto 1454 49.59,94.74 30 |only Shaman Warrior
    goto 1411 50.61,13.27 |only Shaman Warrior
    path seq 1411 50.61,13.27 50.82,13.07 50.83,13.27 50.82,13.07 50.83,13.27 50.82,13.07 50.83,13.27 50.89,14.14
    goto 1411 56.75,15.11
    zone 1411 |only Shaman Warrior |opt
    note-enUS Exit Orgrimmar |only Shaman Warrior
    note-ptBR Saia de Orgrimmar |only Shaman Warrior
    note-enUS Go up the Zeppelin Tower
    note-ptBR Suba a torre do Zepelim
    zone 1420
    note-enUS Take the Zeppelin to Tirisfal
    note-ptBR Pegue o zepelim para Tirisfal
step
    goto 1420 56.3,66.2 30
    path seq 1421 66.34,5.27 48.45,38.18 46.19,41.28
    goto 1421 42.8,40.87 30
    goto 1421 42.9,41.99 |only Warrior Shaman
    zone 1421 |opt
    note-enUS Travel to Silverpine Forest
    note-ptBR Vá até Silverpine Forest
    note-enUS Travel toward Renferrel
    note-ptBR Vá em direção a Renferrel
    note-enUS Talk to Renferrel and Mura |only Warrior Shaman
    note-ptBR Fale com Renferrel e Mura |only Warrior Shaman
    note-enUS Talk to Renferrel |only !Warrior !Shaman
    note-ptBR Fale com Renferrel |only !Warrior !Shaman
    accept 493
    turnin 3301 |only Warrior Shaman
step
    only Warrior Shaman
    goto 1421 44.19,42.67
    note-enUS Click Yuriv's Tombstone on the ground
    note-ptBR Clique na Yuriv's Tombstone no chão
    turnin 264
step
    goto 1421 45.62,42.6
    note-enUS Talk to Karos
    note-ptBR Fale com Karos
    fp
    note-enUS Get the The Sepulcher flight path
    note-ptBR Pegue o ponto de voo de The Sepulcher
step
    path seq 1421 46.33,44.3 61.47,67.47
    goto 1421 67.14,79.06 40
    goto 1424 20.79,47.4 40
    note-enUS Travel toward Lesh
    note-ptBR Vá em direção a Lesh
    note-enUS Be careful of Dalaran Wizards en route as they cast [Frostbolt] which will slow you down
    note-ptBR Cuidado com os Dalaran Wizards no caminho, pois eles lançam [Frostbolt], que deixa você lento
    note-enUS Talk to Lesh
    note-ptBR Fale com Lesh
    accept 494
step
    goto 1424 60.14,18.62
    note-enUS Talk to Zarise
    note-ptBR Fale com Zarise
    fp
    note-enUS Get the Tarren Mill Flight Path
    note-ptBR Pegue o ponto de voo de Tarren Mill
step
    only Shaman Warrior
    path seq 1424 61.51,19.42 61.44,19.06 62.39,20.28 62.65,20.76 62.95,20.59 63.24,20.66 62.95,20.59
    goto 1424 62.57,19.64
    note-enUS Talk to Lydon, Darthalia, the Wanted Poster, Krusk, and the Inn's Wanted Poster
    note-ptBR Fale com Lydon, Darthalia, o Wanted Poster, Krusk e o Wanted Poster da estalagem
    turnin 1065
    accept 1066
    turnin 493
    accept 496
    accept 501
    turnin 494
    accept 527
    accept 549
    accept 498
    accept 567
step
    only !Shaman !Warrior
    path seq 1424 61.51,19.42 61.44,19.06 62.39,20.28 62.65,20.76 62.95,20.59 63.24,20.66 62.95,20.59
    goto 1424 62.57,19.64
    note-enUS Talk to Lydon, Darthalia, the Wanted Poster, Krusk, and the Inn's Wanted Poster
    note-ptBR Fale com Lydon, Darthalia, o Wanted Poster, Krusk e o Wanted Poster da estalagem
    turnin 493
    accept 496
    accept 501
    turnin 494
    accept 527
    accept 549
    accept 498
    accept 567
step
    path seq 1424 62.53,19.58
    goto 1424 62.78,19.05
    note-enUS Talk to Shay
    note-ptBR Fale com Shay
    note-enUS Buy [Melon Juice] from him |only Priest Mage Warlock Druid
    note-ptBR Compre [Melon Juice] dele |only Priest Mage Warlock Druid
    note-enUS Buy [Mutton Chops] from him |only !Priest !Mage !Warlock !Druid !Paladin !Shaman
    note-ptBR Compre [Mutton Chops] dele |only !Priest !Mage !Warlock !Druid !Paladin !Shaman
    note-enUS Buy [Melon Juice] and [Mutton Chops] from him |only Paladin Shaman
    note-ptBR Compre [Melon Juice] e [Mutton Chops] dele |only Paladin Shaman
    collect 1205 20 |quest 1145 |q 1145/1 |only Priest Mage Warlock Druid Paladin Shaman
    collect 3770 20 |quest 1145 |q 1145/1 |only !Priest !Mage !Warlock !Druid !Paladin !Shaman
    collect 3770 10 |quest 1145 |q 1145/1 |only Paladin Shaman
step
    path seq 1424 62.53,19.58
    goto 1424 62.78,19.05
    note-enUS Talk to Shay
    note-ptBR Fale com Shay
    note-enUS Buy [Sweet Nectar] from him |only Priest Mage Warlock Druid
    note-ptBR Compre [Sweet Nectar] dele |only Priest Mage Warlock Druid
    note-enUS Buy [Wild Hog Shanks] from him |only !Priest !Mage !Warlock !Druid !Paladin !Shaman
    note-ptBR Compre [Wild Hog Shanks] dele |only !Priest !Mage !Warlock !Druid !Paladin !Shaman
    note-enUS Buy [Sweet Nectar] and [Wild Hog Shanks] from him |only Paladin Shaman
    note-ptBR Compre [Sweet Nectar] e [Wild Hog Shanks] dele |only Paladin Shaman
    collect 1708 20 |quest 1145 |q 1145/1 |only Priest Mage Warlock Druid Paladin Shaman
    collect 3771 20 |quest 1145 |q 1145/1 |only !Priest !Mage !Warlock !Druid !Paladin !Shaman
    collect 3771 10 |quest 1145 |q 1145/1 |only Paladin Shaman
step
    only Hunter
    ifonquest 498
    goto 1424 62.56,19.91
    note-enUS Talk to Kayren
    note-ptBR Fale com Kayren
    note-enUS Buy [Sharp Arrows] from her
    note-ptBR Compre [Sharp Arrows] dela
    collect 2515 1000 |quest 498 |q 498/1
step
    only Hunter
    ifonquest 498
    goto 1424 62.56,19.91
    note-enUS Talk to Kayren
    note-ptBR Fale com Kayren
    note-enUS Buy [Razor Arrows] from her
    note-ptBR Compre [Razor Arrows] dela
    collect 3030 2000 |quest 498 |q 498/1
step
    only Hunter
    ifonquest 498
    goto 1424 62.56,19.91
    note-enUS Talk to Kayren
    note-ptBR Fale com Kayren
    note-enUS Buy [Razor Arrows] from her
    note-ptBR Compre [Razor Arrows] dela
    collect 3030 1000 |quest 498 |q 498/1
step
    only Rogue
    goto 1424 60.43,26.18
    note-enUS Talk to Ott
    note-ptBR Fale com Ott
    note-enUS Buy the [Longsword] from him
    note-ptBR Compre a [Longsword] dele
    collect 923 1 |quest 885 |q 885/1
step
    only Shaman Warrior
    goto 1424 60.43,26.18
    note-enUS Talk to Ott
    note-ptBR Fale com Ott
    note-enUS Buy the [Merciless Axe] from him if it's up
    note-ptBR Compre o [Merciless Axe] dele se estiver disponível
    vendor
    note-enUS Vendor and Repair
    note-ptBR Venda o lixo e conserte
step
    only Rogue
    goto 1424 60.43,26.18
    note-enUS Equip the [Merciless Axe] |only Shaman Warrior
    note-ptBR Equipe o [Merciless Axe] |only Shaman Warrior
    use 12249 |only Shaman Warrior |opt
    note-enUS Talk to Ott
    note-ptBR Fale com Ott
    note-enUS Buy the [Broad Bladed Knife] from him if it's up
    note-ptBR Compre a [Broad Bladed Knife] dele se estiver disponível
    vendor
    note-enUS Vendor and Repair
    note-ptBR Venda o lixo e conserte
step
    ifonquest 549
    goto 1424 76.72,46.22 60
    note-enUS Equip the [Broad Bladed Knife] |only Rogue
    note-ptBR Equipe a [Broad Bladed Knife] |only Rogue
    use 12247 |only Rogue |opt
    note-enUS Kill Vicious Gray Bears and Gray Bears. Loot them for their Tongues
    note-ptBR Mate Vicious Gray Bears e Gray Bears. Saqueie-os para obter as línguas deles
    note-enUS Avoid Elder Gray Bears as they're not worth killing
    note-ptBR Evite os Elder Gray Bears, pois não vale a pena matá-los
    objective 496/1 |opt
    note-enUS Kill Forest Moss Creepers. Loot them for their Ichor
    note-ptBR Mate Forest Moss Creepers. Saqueie-os para obter o Ichor deles
    note-enUS Avoid Giant Moss Creepers as they're not worth killing yet
    note-ptBR Evite os Giant Moss Creepers, pois ainda não vale a pena matá-los
    objective 496/2 |opt
    note-enUS Travel to Durnholde Keep
    note-ptBR Vá até Durnholde Keep
step
    path seq 1424 79.55,41.85 79.45,40.57 77.99,40.19 79.45,40.57 77.99,40.19 79.45,40.57 77.99,40.19 79.45,40.57
    goto 1424 77.99,40.19
    note-enUS Kill Syndicate Rogues and Syndicate Watchmen |only !Shaman !Warrior
    note-ptBR Mate Syndicate Rogues e Syndicate Watchmen |only !Shaman !Warrior
    note-enUS Kill Syndicate Rogues, Syndicate Watchmen, and Syndicate Shadow Mages. Loot Syndicate Shadow Mages for their Vials of Innocent Blood |only Shaman Warrior
    note-ptBR Mate Syndicate Rogues, Syndicate Watchmen e Syndicate Shadow Mages. Saqueie os Syndicate Shadow Mages para obter os Vials of Innocent Blood deles |only Shaman Warrior
    objective 549/1 |opt
    objective 549/2 |opt
    objective 1066/1 |only Shaman Warrior |opt
    note-enUS Kill Jailor Eston. Loot him for his Iron Key
    note-ptBR Mate Jailor Eston. Saqueie-o para obter a Iron Key dele
    note-enUS He can be found in front of Tog'thar's Barracks
    note-ptBR Ele pode ser encontrado em frente ao Tog'thar's Barracks
    collect 3467 1 |quest 498 |q 498/1 |opt
    note-enUS Kill Jailor Marlgen. Loot him for his Gold Key
    note-ptBR Mate Jailor Marlgen. Saqueie-o para obter a Gold Key dele
    note-enUS He can be found in front of Tog'thar or at the bottom of the tower
    note-ptBR Ele pode ser encontrado em frente a Tog'thar ou na base da torre
    collect 3499 1 |quest 498 |q 498/2
step
    goto 1424 79.79,39.65
    note-enUS Click the Ball and Chain on the ground
    note-ptBR Clique na Ball and Chain no chão
    objective 498/2
step
    only Rogue Hunter Shaman
    goto 1424 80.14,38.89
    note-enUS Talk to Kris
    note-ptBR Fale com Kris
    note-enUS Buy the [Stalking Pants] and [Wolf Bracers] from her if they're up
    note-ptBR Compre as [Stalking Pants] e as [Wolf Bracers] dela se estiverem disponíveis
    vendor
    note-enUS Vendor and Repair
    note-ptBR Venda o lixo e conserte
step
    only Rogue Hunter Shaman
    goto 1424 80.14,38.89
    note-enUS Talk to Kris
    note-ptBR Fale com Kris
    note-enUS Buy the [Stalking Pants] from her if they're up
    note-ptBR Compre as [Stalking Pants] dela se estiverem disponíveis
    vendor
    note-enUS Vendor and Repair
    note-ptBR Venda o lixo e conserte
step
    only Rogue Hunter Shaman
    goto 1424 80.14,38.89
    note-enUS Talk to Kris
    note-ptBR Fale com Kris
    note-enUS Buy the [Wolf Bracers] from her if they're up
    note-ptBR Compre as [Wolf Bracers] dela se estiverem disponíveis
    vendor
    note-enUS Vendor and Repair
    note-ptBR Venda o lixo e conserte
step
    path seq 1424 79.55,41.85 75.31,41.63 79.55,41.85 75.31,41.63 79.55,41.85 75.31,41.63 79.55,41.85 75.31,41.63 79.55,41.85 75.31,41.63 79.55,41.85
    goto 1424 75.31,41.63
    note-enUS Equip the [Stalking Pants] and [Wolf Bracers] |only Rogue Hunter Shaman
    note-ptBR Equipe as [Stalking Pants] e as [Wolf Bracers] |only Rogue Hunter Shaman
    use 4831 |only Rogue Hunter Shaman |opt
    use 4794 |only Rogue Hunter Shaman |opt
    note-enUS Equip the [Stalking Pants] |only Rogue Hunter Shaman
    note-ptBR Equipe as [Stalking Pants] |only Rogue Hunter Shaman
    use 4831 |only Rogue Hunter Shaman |opt
    note-enUS Equip the [Wolf Bracers] |only Rogue Hunter Shaman
    note-ptBR Equipe as [Wolf Bracers] |only Rogue Hunter Shaman
    use 4794 |only Rogue Hunter Shaman |opt
    note-enUS Kill Jailor Eston. Loot him for his Iron Key
    note-ptBR Mate Jailor Eston. Saqueie-o para obter a Iron Key dele
    note-enUS He can be found in front of Tog'thar's Barracks, or in front of Drull
    note-ptBR Ele pode ser encontrado em frente ao Tog'thar's Barracks ou em frente a Drull
    collect 3467 1 |quest 498 |q 498/1
step
    goto 1424 75.33,41.5
    note-enUS Click the Ball and Chain on the ground
    note-ptBR Clique na Ball and Chain no chão
    objective 498/1
step
    path seq 1424 75.29,40.17 76.53,41 77.28,43.55 78.98,45.09 79.58,46.88 80.97,46.77 81.82,45.15 82.24,42.5 80.69,44.07 81.1,43.85 81.92,39.69 83.83,40.78 80.67,42.47 79.7,43.22 79.69,39.76 78.25,41.3 77.58,39.23 78.01,43.37 76.47,46.62
    goto 1424 75.29,40.17
    note-enUS Kill Syndicate Rogues and Syndicate Watchmen |only !Shaman !Warrior
    note-ptBR Mate Syndicate Rogues e Syndicate Watchmen |only !Shaman !Warrior
    note-enUS Kill Syndicate Rogues, Syndicate Watchmen, and Syndicate Shadow Mages. Loot Syndicate Shadow Mages for their Vials of Innocent Blood |only Shaman Warrior
    note-ptBR Mate Syndicate Rogues, Syndicate Watchmen e Syndicate Shadow Mages. Saqueie os Syndicate Shadow Mages para obter os Vials of Innocent Blood deles |only Shaman Warrior
    objective 549/1
    objective 549/2
    objective 1066/1 |only Shaman Warrior
step
    path seq 1424 76.72,46.22 67.06,46.27 66.04,45.78 64.87,47.17 66.13,48.44 67.11,50.53 76.51,46.31 75.29,40.17 76.53,41 77.28,43.55 78.98,45.09 79.58,46.88 80.97,46.77 81.82,45.15 82.24,42.5 80.69,44.07 81.1,43.85 81.92,39.69 83.83,40.78 80.67,42.47 79.7,43.22 79.69,39.76 78.25,41.3 77.58,39.23 78.01,43.37 76.47,46.62
    goto 1424 75.29,40.17
    note-enUS Exit Durnholde Keep
    note-ptBR Saia de Durnholde Keep
    note-enUS Kill Vicious Gray Bears and Gray Bears. Loot them for their Tongues
    note-ptBR Mate Vicious Gray Bears e Gray Bears. Saqueie-os para obter as línguas deles
    note-enUS Avoid Elder Gray Bears as they're not worth killing
    note-ptBR Evite os Elder Gray Bears, pois não vale a pena matá-los
    objective 496/1 |opt
    note-enUS Kill Forest Moss Creepers. Loot them for their Ichor
    note-ptBR Mate Forest Moss Creepers. Saqueie-os para obter o Ichor deles
    note-enUS Avoid Giant Moss Creepers as they're not worth killing yet
    note-ptBR Evite os Giant Moss Creepers, pois ainda não vale a pena matá-los
    objective 496/2 |opt
    note-enUS Kill Syndicate Rogues and Syndicate Watchmen |only !Shaman !Warrior
    note-ptBR Mate Syndicate Rogues e Syndicate Watchmen |only !Shaman !Warrior
    note-enUS Kill Syndicate Rogues, Syndicate Watchmen, and Syndicate Shadow Mages. Loot Syndicate Shadow Mages for their Vials of Innocent Blood |only Shaman Warrior
    note-ptBR Mate Syndicate Rogues, Syndicate Watchmen e Syndicate Shadow Mages. Saqueie os Syndicate Shadow Mages para obter os Vials of Innocent Blood deles |only Shaman Warrior
    objective 549/1
    objective 549/2
    objective 1066/1 |only Shaman Warrior
step
    ifonquest 527
    path seq 1424 62.93,38.53 62.16,39.83 60.92,38.2 59.23,34.19 58.77,28.98 57.15,30.8 54.77,28.72 52.93,29.45 54.29,31.75 51.28,35.37 43.36,39.38 42.56,40.19 40.91,44.23 39.92,45.83 37.97,44.59 39.88,40.56 38.45,38.77 38.7,36.71 39.79,34.43
    goto 1424 36.02,39.19 80
    note-enUS Kill Vicious Gray Bears and Gray Bears. Loot them for their Tongues
    note-ptBR Mate Vicious Gray Bears e Gray Bears. Saqueie-os para obter as línguas deles
    note-enUS Avoid Elder Gray Bears as they're not worth killing
    note-ptBR Evite os Elder Gray Bears, pois não vale a pena matá-los
    objective 496/1 |opt
    note-enUS Kill Forest Moss Creepers. Loot them for their Ichor
    note-ptBR Mate Forest Moss Creepers. Saqueie-os para obter o Ichor deles
    note-enUS Avoid Giant Moss Creepers as they're not worth killing yet
    note-ptBR Evite os Giant Moss Creepers, pois ainda não vale a pena matá-los
    objective 496/2 |opt
    note-enUS Kill Starving Mountain Lions. Loot them for their Blood
    note-ptBR Mate Starving Mountain Lions. Saqueie-os para obter o sangue deles
    objective 501/1 |opt
    note-enUS Travel to the Hillsbrad Fields
    note-ptBR Vá até Hillsbrad Fields
step
    path seq 1424 36.7,39.38 35.28,40.76 35.17,38.18 35.39,37.7 33.7,35.5 33.02,35.1 32.67,34.8 33.21,34.78 33.7,35.5 33.02,35.1 32.67,34.8 33.21,34.78 33.7,35.5 33.02,35.1 32.67,34.8 33.21,34.78 33.7,35.5 33.02,35.1 32.67,34.8
    goto 1424 33.21,34.78
    note-enUS Kill Citizen Wilkes
    note-ptBR Mate Citizen Wilkes
    note-enUS He patrols around the roads of the town
    note-ptBR Ele patrulha pelas estradas da cidade
    objective 567/2 |opt
    note-enUS Kill Hillsbrad Farmers and Hillsbrad Farmhands
    note-ptBR Mate Hillsbrad Farmers e Hillsbrad Farmhands
    objective 527/1 |opt
    objective 527/2 |opt
    note-enUS Kill Farmer Getz
    note-ptBR Mate Farmer Getz
    note-enUS He can be found in the House, in the Field, or in the Barn
    note-ptBR Ele pode ser encontrado na casa, no campo ou no celeiro
    objective 527/4 |opt
    note-enUS Kill Farmer Ray
    note-ptBR Mate Farmer Ray
    note-enUS He can be found in the vineyard, or in the first and second floor of the house
    note-ptBR Ele pode ser encontrado no vinhedo ou no primeiro e segundo andar da casa
    objective 527/3
step
    path seq 1424 36.7,39.38 35.28,40.76 35.17,38.18 35.39,37.7 36.7,39.38 35.28,40.76 35.17,38.18 35.39,37.7 36.7,39.38 35.28,40.76 35.17,38.18 35.39,37.7 36.7,39.38 35.28,40.76 35.17,38.18 35.39,37.7 36.7,39.38 35.28,40.76 35.17,38.18
    goto 1424 35.39,37.7
    note-enUS Kill Farmer Getz
    note-ptBR Mate Farmer Getz
    note-enUS He can be found in the House, in the Field, or in the Barn
    note-ptBR Ele pode ser encontrado na casa, no campo ou no celeiro
    objective 527/4
step
    path closest 1424 35.9,40.63 33.88,41.8 30.19,38.48 30.67,35.21 31.71,36.72 33.67,35.66 35.9,40.63
    note-enUS Kill Hillsbrad Farmers and Hillsbrad Farmhands
    note-ptBR Mate Hillsbrad Farmers e Hillsbrad Farmhands
    objective 527/1
    objective 527/2
step
    path closest 1424 39.79,34.43 38.7,36.71 38.45,38.77 39.88,40.56 37.97,44.59 39.92,45.83 40.91,44.23 42.56,40.19 43.36,39.38 51.28,35.37 54.29,31.75 52.93,29.45 54.77,28.72
    note-enUS Kill Forest Moss Creepers and Giant Moss Creepers. Loot them for their Ichor
    note-ptBR Mate Forest Moss Creepers e Giant Moss Creepers. Saqueie-os para obter o Ichor deles
    objective 496/2 |opt
    note-enUS Kill Vicious Gray Bears and Gray Bears. Loot them for their Tongues
    note-ptBR Mate Vicious Gray Bears e Gray Bears. Saqueie-os para obter as línguas deles
    note-enUS Avoid Elder Gray Bears as they're not worth killing
    note-ptBR Evite os Elder Gray Bears, pois não vale a pena matá-los
    objective 496/1 |opt
    note-enUS Kill Starving Mountain Lions. Loot them for their Blood
    note-ptBR Mate Starving Mountain Lions. Saqueie-os para obter o sangue deles
    objective 501/1
step
    path closest 1424 40.88,33.87 40.86,37.4 40.85,39.42 38.5,38.04 37.68,41.23 38.71,42.66 40.4,44.65 44.39,41.34 45.23,39.62 43.87,37.01 49.75,34.33 52.06,36.86 51.91,32.97 52.39,29.27 57.38,22.85 57.09,25.67 58.08,28.07 56.88,28.85 59.68,30.9 57.71,34.06 59.89,36.74 62.63,37.64 64.73,38.03 66.52,34.52
    note-enUS Kill Vicious Gray Bears and Gray Bears. Loot them for their Tongues
    note-ptBR Mate Vicious Gray Bears e Gray Bears. Saqueie-os para obter as línguas deles
    note-enUS Avoid Elder Gray Bears as they're not worth killing
    note-ptBR Evite os Elder Gray Bears, pois não vale a pena matá-los
    objective 496/1
step
    path closest 1424 62.85,38.74 62.24,39.96 60.92,37.92 59.62,33.33 56.88,29.73 59.8,27.72 57.63,24.16 56.47,16.42 59.36,14.55 60.54,13.67 62.65,12.9 64.43,10.22 65.18,6.93 65.31,5.76 66.9,9.02 70.39,8.89 68.86,10.18 67.35,12.95 71.38,19.81 71.78,21.89 64.85,24.92 66.68,28.15 69.76,31.89 67.62,37.65 62.85,38.74
    note-enUS Kill Forest Moss Creepers and Giant Moss Creepers. Loot them for their Ichor
    note-ptBR Mate Forest Moss Creepers e Giant Moss Creepers. Saqueie-os para obter o Ichor deles
    objective 496/2
step
    path seq 1424 61.51,19.42 61.44,19.06 61.53,19.16 62.39,20.28 62.95,20.59
    goto 1424 63.24,20.66
    note-enUS Talk to Lydon, Umpi, Darthalia, and Krusk
    note-ptBR Fale com Lydon, Umpi, Darthalia e Krusk
    turnin 1066 |only Shaman Warrior
    turnin 496
    accept 499
    turnin 501
    accept 502
    accept 1067 |only Shaman Warrior
    accept 509
    turnin 499
    turnin 527
    accept 528
    turnin 549
    turnin 498
step
    path seq 1424 61.51,19.42 61.44,19.06 61.53,19.16 62.39,20.28 62.95,20.59
    goto 1424 63.24,20.66
    note-enUS Talk to Lydon, Umpi, Darthalia, and Krusk
    note-ptBR Fale com Lydon, Umpi, Darthalia e Krusk
    turnin 1066 |only Shaman Warrior
    turnin 496
    accept 499
    turnin 501
    accept 502
    accept 1067 |only Shaman Warrior
    turnin 499
    turnin 527
    accept 528
    turnin 549
    turnin 498
step
    only Hunter
    goto 1424 62.56,19.91
    note-enUS Talk to Kayren
    note-ptBR Fale com Kayren
    note-enUS Buy [Sharp Arrows] from her
    note-ptBR Compre [Sharp Arrows] dela
    collect 2515 1000 |quest 1145 |q 1145/1
step
    only Hunter
    goto 1424 62.56,19.91
    note-enUS Talk to Kayren
    note-ptBR Fale com Kayren
    note-enUS Buy [Razor Arrows] from her
    note-ptBR Compre [Razor Arrows] dela
    collect 3030 2000 |quest 1145 |q 1145/1
step
    only Hunter
    goto 1424 62.56,19.91
    note-enUS Talk to Kayren
    note-ptBR Fale com Kayren
    note-enUS Buy [Razor Arrows] from her
    note-ptBR Compre [Razor Arrows] dela
    collect 3030 1000 |quest 1145 |q 1145/1
step
    path seq 1424 62.53,19.58
    goto 1424 62.78,19.05
    note-enUS Talk to Shay
    note-ptBR Fale com Shay
    note-enUS Buy [Melon Juice] from him |only Priest Mage Warlock Druid
    note-ptBR Compre [Melon Juice] dele |only Priest Mage Warlock Druid
    note-enUS Buy [Mutton Chops] from him |only !Priest !Mage !Warlock !Druid !Paladin !Shaman
    note-ptBR Compre [Mutton Chops] dele |only !Priest !Mage !Warlock !Druid !Paladin !Shaman
    note-enUS Buy [Melon Juice] and [Mutton Chops] from him |only Paladin Shaman
    note-ptBR Compre [Melon Juice] e [Mutton Chops] dele |only Paladin Shaman
    collect 1205 20 |quest 1145 |q 1145/1 |only Priest Mage Warlock Druid Paladin Shaman
    collect 3770 20 |quest 1145 |q 1145/1 |only !Priest !Mage !Warlock !Druid !Paladin !Shaman
    collect 3770 10 |quest 1145 |q 1145/1 |only Paladin Shaman
step
    path seq 1424 62.53,19.58
    goto 1424 62.78,19.05
    note-enUS Talk to Shay
    note-ptBR Fale com Shay
    note-enUS Buy [Sweet Nectar] from him |only Priest Mage Warlock Druid
    note-ptBR Compre [Sweet Nectar] dele |only Priest Mage Warlock Druid
    note-enUS Buy [Wild Hog Shanks] from him |only !Priest !Mage !Warlock !Druid !Paladin !Shaman
    note-ptBR Compre [Wild Hog Shanks] dele |only !Priest !Mage !Warlock !Druid !Paladin !Shaman
    note-enUS Buy [Sweet Nectar] and [Wild Hog Shanks] from him |only Paladin Shaman
    note-ptBR Compre [Sweet Nectar] e [Wild Hog Shanks] dele |only Paladin Shaman
    collect 1708 20 |quest 1145 |q 1145/1 |only Priest Mage Warlock Druid Paladin Shaman
    collect 3771 20 |quest 1145 |q 1145/1 |only !Priest !Mage !Warlock !Druid !Paladin !Shaman
    collect 3771 10 |quest 1145 |q 1145/1 |only Paladin Shaman
step
    goto 1424 62.11,19.68
    note-enUS Talk to Samsa
    note-ptBR Fale com Samsa
    accept 546
step
    goto 1424 32.67,35.33
    note-enUS Kill Hillsbrad Humans. Loot them for their Skulls
    note-ptBR Mate Hillsbrad Humans. Saqueie-os para obter os crânios deles
    objective 546/1 |opt
    note-enUS Kill Citizen Wilkes
    note-ptBR Mate Citizen Wilkes
    note-enUS He patrols around the roads of the town
    note-ptBR Ele patrulha pelas estradas da cidade
    objective 567/2 |opt
    note-enUS Talk to Stanley
    note-ptBR Fale com Stanley
    note-enUS Wait out the RP, then kill Enraged Stanley
    note-ptBR Espere o RP terminar e depois mate Enraged Stanley
    note-enUS Killing Enraged Stanley gives a full quest's worth of experience
    note-ptBR Matar Enraged Stanley dá a experiência equivalente a uma missão inteira
    turnin 502
step
    goto 1424 36,46.5
    note-enUS Kill Hillsbrad Peasants
    note-ptBR Mate Hillsbrad Peasants
    objective 528/1 |opt
    note-enUS Kill Farmer Kalaba
    note-ptBR Mate Farmer Kalaba
    objective 567/4
step
    path closest 1424 36.64,45.21 36.03,44.4 34.36,44.62 33.82,45.75 33.25,48.54 34.59,48.13 35.29,47.28 36.49,47.49 36.64,45.21
    note-enUS Kill Hillsbrad Peasants
    note-ptBR Mate Hillsbrad Peasants
    objective 528/1
step
    path seq 1424 61.51,19.42
    goto 1424 61.44,19.06
    note-enUS Talk to Lydon
    note-ptBR Fale com Lydon
    accept 509
step
    ifcomplete 546
    path seq 1424 62.11,19.68
    goto 1424 62.39,20.28
    note-enUS Talk to Samsa and Darthalia
    note-ptBR Fale com Samsa e Darthalia
    turnin 546
    turnin 528
    accept 529
step
    goto 1424 62.39,20.28
    note-enUS Talk to Darthalia
    note-ptBR Fale com Darthalia
    turnin 528
    accept 529
step
    path seq 1424 62.53,19.58
    goto 1424 62.78,19.05
    note-enUS Talk to Shay
    note-ptBR Fale com Shay
    note-enUS Buy [Melon Juice] from him |only Priest Mage Warlock Druid
    note-ptBR Compre [Melon Juice] dele |only Priest Mage Warlock Druid
    note-enUS Buy [Mutton Chops] from him |only !Priest !Mage !Warlock !Druid !Paladin !Shaman
    note-ptBR Compre [Mutton Chops] dele |only !Priest !Mage !Warlock !Druid !Paladin !Shaman
    note-enUS Buy [Melon Juice] and [Mutton Chops] from him |only Paladin Shaman
    note-ptBR Compre [Melon Juice] e [Mutton Chops] dele |only Paladin Shaman
    collect 1205 20 |quest 1145 |q 1145/1 |only Priest Mage Warlock Druid Paladin Shaman
    collect 3770 20 |quest 1145 |q 1145/1 |only !Priest !Mage !Warlock !Druid !Paladin !Shaman
    collect 3770 10 |quest 1145 |q 1145/1 |only Paladin Shaman
step
    path seq 1424 62.53,19.58
    goto 1424 62.78,19.05
    note-enUS Talk to Shay
    note-ptBR Fale com Shay
    note-enUS Buy [Sweet Nectar] from him |only Priest Mage Warlock Druid
    note-ptBR Compre [Sweet Nectar] dele |only Priest Mage Warlock Druid
    note-enUS Buy [Wild Hog Shanks] from him |only !Priest !Mage !Warlock !Druid !Paladin !Shaman
    note-ptBR Compre [Wild Hog Shanks] dele |only !Priest !Mage !Warlock !Druid !Paladin !Shaman
    note-enUS Buy [Sweet Nectar] and [Wild Hog Shanks] from him |only Paladin Shaman
    note-ptBR Compre [Sweet Nectar] e [Wild Hog Shanks] dele |only Paladin Shaman
    collect 1708 20 |quest 1145 |q 1145/1 |only Priest Mage Warlock Druid Paladin Shaman
    collect 3771 20 |quest 1145 |q 1145/1 |only !Priest !Mage !Warlock !Druid !Paladin !Shaman
    collect 3771 10 |quest 1145 |q 1145/1 |only Paladin Shaman
step
    only Shaman Warrior
    goto 1424 60.43,26.18
    note-enUS Talk to Ott
    note-ptBR Fale com Ott
    note-enUS Buy the [Merciless Axe] from him if it's up
    note-ptBR Compre o [Merciless Axe] dele se estiver disponível
    vendor
    note-enUS Vendor and Repair
    note-ptBR Venda o lixo e conserte
step
    only Rogue
    goto 1424 60.43,26.18
    note-enUS Equip the [Merciless Axe] |only Shaman Warrior
    note-ptBR Equipe o [Merciless Axe] |only Shaman Warrior
    use 12249 |only Shaman Warrior |opt
    note-enUS Talk to Ott
    note-ptBR Fale com Ott
    note-enUS Buy the [Broad Bladed Knife] from him if it's up
    note-ptBR Compre a [Broad Bladed Knife] dele se estiver disponível
    vendor
    note-enUS Vendor and Repair
    note-ptBR Venda o lixo e conserte
step
    path closest 1424 64.24,59.25 66.03,61.63 64.51,63.41 62.9,62.04 64.24,59.25
    note-enUS Equip the [Broad Bladed Knife] |only Rogue
    note-ptBR Equipe a [Broad Bladed Knife] |only Rogue
    use 12247 |only Rogue |opt
    note-enUS Loot the Mudsnout Blossoms on the ground
    note-ptBR Saqueie as Mudsnout Blossoms no chão
    note-enUS Be careful as Mudsnout Gnolls cast [Sling Mud] (Reduces hit chance by 50% for 15 seconds) |only Rogue Warrior Paladin
    note-ptBR Cuidado, os Mudsnout Gnolls lançam [Sling Mud] (reduz a chance de acerto em 50% por 15 segundos) |only Rogue Warrior Paladin
    objective 509/1
step
    path seq 1424 32.56,45.95
    goto 1424 32.01,45.45
    note-enUS Kill Hillsbrad Humans. Loot them for their Skulls
    note-ptBR Mate Hillsbrad Humans. Saqueie-os para obter os crânios deles
    objective 546/1 |opt
    note-enUS Kill Hillsbrad Apprentice Blacksmiths
    note-ptBR Mate Hillsbrad Apprentice Blacksmiths
    objective 529/2 |opt
    note-enUS Kill Blacksmith Verringtan
    note-ptBR Mate Blacksmith Verringtan
    objective 529/1 |opt
    note-enUS Loot the Shipment of Iron inside on the ground
    note-ptBR Saqueie o Shipment of Iron no chão lá dentro
    objective 529/3
step
    path closest 1424 32.56,45.95 32.2,45.65 32.11,44.43 32.56,45.95 32.2,45.65 32.11,44.33 32.56,45.95
    note-enUS Kill Blacksmith Verringtan
    note-ptBR Mate Blacksmith Verringtan
    objective 529/1
step
    path closest 1424 31.96,45.83 32.69,45.1 31.15,43.91 31.1,46.75 31.89,46.72 31.96,45.83
    note-enUS Kill Hillsbrad Apprentice Blacksmiths
    note-ptBR Mate Hillsbrad Apprentice Blacksmiths
    objective 529/2
step
    path closest 1424 36.64,45.21 36.03,44.4 34.36,44.62 33.82,45.75 33.25,48.54 34.59,48.13 35.29,47.28 36.49,47.49 36.64,45.21
    note-enUS Kill Hillsbrad Humans. Loot them for their Skulls
    note-ptBR Mate Hillsbrad Humans. Saqueie-os para obter os crânios deles
    objective 546/1
step
    ifnotturnedin 546
    path seq 1424 62.39,20.28 62.11,19.68 61.51,19.42
    goto 1424 61.44,19.06
    note-enUS Die and respawn at the Spirit Healer |only !Orc !Warrior
    note-ptBR Morra e renasça no Spirit Healer |only !Orc !Warrior
    note-enUS Talk to Darthalia, Samsa, and Lydon
    note-ptBR Fale com Darthalia, Samsa e Lydon
    turnin 529
    turnin 546
    turnin 509
    accept 513
step
    path seq 1424 62.39,20.28 61.51,19.42
    goto 1424 61.44,19.06
    note-enUS Talk to Darthalia and Lydon
    note-ptBR Fale com Darthalia e Lydon
    turnin 529
    accept 532
    turnin 509
    accept 513
step
    only Shaman Warrior
    goto 1424 60.43,26.18
    note-enUS Talk to Ott
    note-ptBR Fale com Ott
    note-enUS Buy the [Merciless Axe] from him if it's up
    note-ptBR Compre o [Merciless Axe] dele se estiver disponível
    vendor
    note-enUS Vendor and Repair
    note-ptBR Venda o lixo e conserte
step
    only Rogue
    goto 1424 60.43,26.18
    note-enUS Equip the [Merciless Axe] |only Shaman Warrior
    note-ptBR Equipe o [Merciless Axe] |only Shaman Warrior
    use 12249 |only Shaman Warrior |opt
    note-enUS Talk to Ott
    note-ptBR Fale com Ott
    note-enUS Buy the [Broad Bladed Knife] from him if it's up
    note-ptBR Compre a [Broad Bladed Knife] dele se estiver disponível
    vendor
    note-enUS Vendor and Repair
    note-ptBR Venda o lixo e conserte
step
    only Druid
    goto 1450 52.53,40.57
    note-enUS Equip the [Broad Bladed Knife] |only Rogue
    note-ptBR Equipe a [Broad Bladed Knife] |only Rogue
    use 12247 |only Rogue |opt
    note-enUS Cast [Teleport: Moonglade] |only Druid
    note-ptBR Lance [Teleport: Moonglade] |only Druid
    note-enUS Talk to Loganaar
    note-ptBR Fale com Loganaar
    train 1850
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Mage
    path seq 1458 68.25,40.67 66.06,30.63 67.27,23.68 |only Mage
    goto 1458 82.77,15.85 20 |only Mage
    goto 1458 82.77,15.85
    hearth |only !Shaman !Warrior |opt
    note-enUS Hearth to Undercity |only !Shaman !Warrior
    note-ptBR Use a pedra de regresso para Undercity |only !Shaman !Warrior
    train 3563 |only Troll Mage |opt
    note-enUS Cast [Teleport: Undercity] |only Mage
    note-ptBR Lance [Teleport: Undercity] |only Mage
    train 3563 |only Mage |opt
    note-enUS Travel toward Hannah |only Mage
    note-ptBR Vá em direção a Hannah |only Mage
    train 3563 |only Mage |opt
    note-enUS Talk to Hannah
    note-ptBR Fale com Hannah
    note-enUS Buy a [Rune of Teleportation] from her
    note-ptBR Compre uma [Rune of Teleportation] dela
    collect 17031 1 |quest 496 |q 496/1
    train 3563
step
    only Mage
    goto 1458 84.19,15.58
    note-enUS Talk to Mortaim upstairs
    note-ptBR Fale com Mortaim no andar de cima
    train 3563
    note-enUS Train [Teleport: Undercity]
    note-ptBR Treine [Teleport: Undercity]
    train 3563
step
    only !Shaman !Warrior
    path seq 1458 63.77,47.25 65.43,56.36 |only !Mage
    goto 1458 64.78,64.48 30 |only !Mage
    path seq 1458 52.68,77.65 51.15,80.09 49.06,78.17 47.8,75.46 |only !Shaman !Warrior
    goto 1458 48.81,69.28 20 |only !Shaman !Warrior
    goto 1458 48.81,69.28
    note-enUS Travel toward Faranell |only !Shaman !Warrior
    note-ptBR Vá em direção a Faranell |only !Shaman !Warrior
    note-enUS Talk to Faranell
    note-ptBR Fale com Faranell
    turnin 513
step
    only Troll Mage
    note-enUS Cast [Teleport: Orgrimmar] to teleport to Orgrimmar
    note-ptBR Lance [Teleport: Orgrimmar] para se teleportar a Orgrimmar
    train 3567
step
    only !Shaman !Warrior
    goto 1458 66.21,4.9 15
    goto 1420 61.73,64.87
    zone 1420
    note-enUS Exit Undercity
    note-ptBR Saia de Undercity
    train 3567 |only Troll Mage
step
    only !Shaman !Warrior
    path seq 1420 61.06,58.86 61.51,59.01 61.27,59.22 61.13,58.84 61.38,58.71 61.34,59.17 60.51,58.69
    goto 1420 60.94,46.35
    note-enUS Go up the Zeppelin Tower
    note-ptBR Suba a torre do Zepelim
    zone 1411
    note-enUS Take the Zeppelin to Durotar
    note-ptBR Pegue o zepelim para Durotar
    train 3567 |only Troll Mage
]==])

register([==[
#format 1
#id forever.x.h.25-27-ashenvale-jj
#name 25-27 Ashenvale JJ
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Horde
#levels 25-27
#zones 1440
#suffix JJ
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup Experimental (from Classic guides)
#subgroup-ptBR Experimental (adaptado do Classic)
#next forever.x.h.27-28-southern-barrens-jj

step
    only Troll Mage
    goto 1454 38.36,85.56
    hearth |only Shaman Warrior |opt
    note-enUS Hearth to Orgrimmar |only Shaman Warrior
    note-ptBR Use a pedra de regresso para Orgrimmar |only Shaman Warrior
    note-enUS Talk to Pephredo downstairs
    note-ptBR Fale com Pephredo no andar de baixo
    train 120
    note-enUS Train your class spells
    note-ptBR Treine your class spells
    train 3567
step
    only Mage
    path seq 1454 49.59,94.74 49.42,90.9 52.26,88.65 50.93,67.97 49.02,61.46 45.78,57.19 |only Mage
    goto 1454 45.44,56.55 10 |only Mage
    path seq 1454 39.53,75.82 42.68,62.42 45.57,57.46 |only Troll Mage
    goto 1454 45.44,56.55 10 |only Troll Mage
    goto 1454 45.44,56.55
    note-enUS Travel toward Horthus |only Mage
    note-ptBR Vá em direção a Horthus |only Mage
    train 3567 |only Troll Mage |opt
    note-enUS Travel toward Horthus |only Troll Mage
    note-ptBR Vá em direção a Horthus |only Troll Mage
    train 3567 |only Troll Mage |opt
    note-enUS Talk to Horthus
    note-ptBR Fale com Horthus
    note-enUS Buy [Runes of Teleportation] from him
    note-ptBR Compre [Runes of Teleportation] dele
    collect 17031 2 |quest 496 |q 496/1
step
    only !Shaman !Warrior !Troll !Orc
    path seq 1454 41.83,61.66 42.01,60.77 41.73,62.41 38.65,56.58 38.78,54.87 40.94,45.2 42.3,37.44 |only Troll Mage
    goto 1454 39.5,37.17 20 |only Troll Mage
    path seq 1454 47.41,65.07 46.59,64.54 46.75,63.84 46.59,64.54 46.75,63.84 46.59,64.54 46.75,63.84 |only !Troll Mage
    goto 1454 45.12,63.88 10 |only !Troll Mage
    path seq 1454 49.59,94.74 49.42,90.9 52.26,88.65 51.01,68.03 49.72,66.08 47.41,65.07 46.59,64.54 46.75,63.84 46.59,64.54 46.75,63.84 46.59,64.54 46.75,63.84 |only !Shaman !Warrior !Troll !Orc
    goto 1454 45.12,63.88 10 |only !Shaman !Warrior !Troll !Orc
    goto 1454 45.12,63.88
    note-enUS Travel up the tower, then toward Grommash Hold |only Troll Mage
    note-ptBR Suba a torre e depois vá em direção a Grommash Hold |only Troll Mage
    note-enUS Travel up the tower toward Doras |only !Troll Mage
    note-ptBR Suba a torre em direção a Doras |only !Troll Mage
    note-enUS Travel up the tower toward Doras |only !Shaman !Warrior !Troll !Orc
    note-ptBR Suba a torre em direção a Doras |only !Shaman !Warrior !Troll !Orc
    note-enUS Talk to Doras
    note-ptBR Fale com Doras
    fp
    note-enUS Get the Orgrimmar flight path
    note-ptBR Pegue o ponto de voo de Orgrimmar
step
    only !Shaman !Warrior
    ifonquest 9813
    path seq 1454 49.59,94.74 49.42,90.9 52.26,88.65 42.63,61.99 41.83,61.66 42.01,60.77 |only Orc Troll
    goto 1454 41.73,62.41 8 |only Orc Troll
    goto 1454 41.91,64.3 15 |only !Orc !Troll
    path seq 1454 38.65,56.58 38.78,54.87 40.94,45.2 |only !Shaman !Warrior
    goto 1454 42.3,37.44 30 |only !Shaman !Warrior
    goto 1454 39.5,37.17 20 |only Orc Troll
    goto 1454 39.5,37.17 20 |only !Orc !Troll
    goto 1454 31.62,37.82
    note-enUS Travel up the tower, then toward Grommash Hold |only Orc Troll
    note-ptBR Suba a torre e depois vá em direção a Grommash Hold |only Orc Troll
    note-enUS Travel across the bridge, then toward Grommash Hold |only !Orc !Troll
    note-ptBR Atravesse a ponte e depois vá em direção a Grommash Hold |only !Orc !Troll
    note-enUS Talk to Thrall and Dawnsinger
    note-ptBR Fale com Thrall e Dawnsinger
    turnin 9813
step
    only Paladin
    goto 1454 32.29,35.74
    note-enUS Talk to Pyreanor
    note-ptBR Fale com Pyreanor
    train 5599
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Paladin
    goto 1454 32.29,35.74
    note-enUS Talk to Pyreanor
    note-ptBR Fale com Pyreanor
    train 10298
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Shaman
    path seq 1454 42.63,61.99 41.83,61.66 42.01,60.77 |only Orc Troll
    goto 1454 41.73,62.41 8 |only Orc Troll
    goto 1454 41.91,64.3 15 |only !Orc !Troll
    path seq 1454 38.65,56.58 38.78,54.87 40.94,45.2 |only Shaman
    goto 1454 42.3,37.44 30 |only Shaman
    goto 1454 38.81,36.38 20 |only Orc Troll
    goto 1454 38.81,36.38
    note-enUS Travel toward Kardris |only Orc Troll
    note-ptBR Vá em direção a Kardris |only Orc Troll
    note-enUS Talk to Kardris
    note-ptBR Fale com Kardris
    train 8046
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Shaman
    goto 1454 38.81,36.38
    note-enUS Talk to Kardris
    note-ptBR Fale com Kardris
    train 8030
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Mage
    path seq 1454 42.3,37.44 |only Mage Priest Rogue Warlock
    goto 1454 40.96,45.16 20 |only Mage Priest Rogue Warlock
    path seq 1454 40.01,51.88 42.29,56.98 |only Rogue Warlock
    goto 1454 43.82,56.28 20 |only Rogue Warlock
    goto 1454 43.61,53.4 15 |only Rogue
    path seq 1454 38.66,56.48 |only Mage Priest
    goto 1454 41.17,67.04 20 |only Mage Priest
    path seq 1454 38.78,77.83 38.72,83.38 |only Mage
    goto 1454 38.36,85.56 15 |only Mage
    goto 1454 35.59,87.8 15 |only Priest
    goto 1454 43.05,53.73 10 |only Rogue
    goto 1454 48.25,45.27 15 |only Warlock
    goto 1454 38.36,85.56
    note-enUS Cast [Teleport: Orgrimmar], then go downstairs |only Troll Mage
    note-ptBR Lance [Teleport: Orgrimmar] e depois desça as escadas |only Troll Mage
    note-enUS Travel toward Pephredo |only Mage
    note-ptBR Vá em direção a Pephredo |only Mage
    note-enUS Travel toward Ur'kyo |only Priest
    note-ptBR Vá em direção a Ur'kyo |only Priest
    note-enUS Travel toward Shenthul |only Rogue
    note-ptBR Vá em direção a Shenthul |only Rogue
    note-enUS Travel toward Grol'dar |only Warlock
    note-ptBR Vá em direção a Grol'dar |only Warlock
    note-enUS Talk to Pephredo
    note-ptBR Fale com Pephredo
    train 2139
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Mage
    goto 1454 38.36,85.56
    note-enUS Talk to Pephredo
    note-ptBR Fale com Pephredo
    train 120
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Priest
    goto 1454 35.59,87.8
    note-enUS Talk to Ur'kyo
    note-ptBR Fale com Ur'kyo
    train 1245
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Rogue
    goto 1454 43.05,53.73
    note-enUS Talk to Shenthul
    note-ptBR Fale com Shenthul
    turnin 10794
    accept 2460
    train 6762
    note-enUS Train your class spells
    note-ptBR Treine your class spells
    train 6762
step
    only Rogue
    goto 1454 43.05,53.73
    note-enUS Talk to Shenthul
    note-ptBR Fale com Shenthul
    turnin 10794
    accept 2460
step
    only Rogue
    goto 1454 43.05,53.73
    note-enUS Target Shenthul to Salute him
    note-ptBR Selecione Shenthul como alvo para saudá-lo
    objective 2460/1
step
    only Rogue
    goto 1454 43.05,53.73
    note-enUS Talk to Shenthul
    note-ptBR Fale com Shenthul
    turnin 2460
    accept 2458
step
    only Warlock
    goto 1454 47.99,45.93
    note-enUS Talk to Grol'dar
    note-ptBR Fale com Grol'dar
    train 6223
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warlock
    goto 1454 47.99,45.93
    note-enUS Talk to Grol'dar
    note-ptBR Fale com Grol'dar
    train 1456
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warlock
    goto 1454 48.25,45.27
    abandon 10605
    note-enUS Abandon Carendin Summons
    note-ptBR Abandone Carendin Summons
step
    only Warlock
    path seq 1454 48.25,45.27
    goto 1454 47.05,46.43
    note-enUS Talk to Gan'rul and Cazul
    note-ptBR Fale com Gan'rul e Cazul
    accept 1507
    turnin 1507
    accept 1508
    accept 65601
step
    only Warlock
    path seq 1454 45.37,51.02 44.07,53.5 43.82,56.28 39.24,54.35 38.14,60.48 |only Warlock
    goto 1454 37.04,59.45 10 |only Warlock
    goto 1454 37.04,59.45
    note-enUS Travel toward Zankaja |only Warlock
    note-ptBR Vá em direção a Zankaja |only Warlock
    note-enUS Talk to Zankaja
    note-ptBR Fale com Zankaja
    turnin 1508
    accept 1509
step
    only Warlock
    path seq 1454 42.01,63.34 52.99,57.59 55.88,56.81 61.49,50.55 |only Warlock
    goto 1454 63.65,49.93 15 |only Warlock
    goto 1454 63.65,49.93
    note-enUS Travel toward Magar |only Warlock
    note-ptBR Vá em direção a Magar |only Warlock
    note-enUS Talk to Magar
    note-ptBR Fale com Magar
    turnin 65601
    accept 65610
step
    only Mage
    path seq 1454 37.22,87.73 37.74,88.56 |only Mage
    goto 1454 38.64,85.42 10 |only Mage
    goto 1454 38.64,85.42
    note-enUS Travel upstairs toward Thuul |only Mage
    note-ptBR Suba as escadas em direção a Thuul |only Mage
    note-enUS Talk to Thuul
    note-ptBR Fale com Thuul
    train 3567
    note-enUS Train [Teleport: Orgrimmar]
    note-ptBR Treine [Teleport: Orgrimmar]
step
    only Warrior
    path seq 1454 63.08,39.25 64.31,38.12 |only Hunter Warrior
    goto 1454 66.07,40.04 30 |only Hunter Warrior
    path seq 1454 76.76,33.04 79.13,32.8 |only Warrior
    goto 1454 80.39,32.38 20 |only Warrior
    path seq 1454 72.25,21.42 67.6,14.89 |only Hunter
    goto 1454 66.05,18.52 20 |only Hunter
    goto 1454 80.39,32.38
    note-enUS Travel toward Sorek |only Warrior
    note-ptBR Vá em direção a Sorek |only Warrior
    note-enUS Travel toward Ormak |only Hunter
    note-ptBR Vá em direção a Ormak |only Hunter
    train 580 |only Orc Hunter Orc Warrior |opt
    train 6653 |only Orc Hunter Orc Warrior |opt
    train 6654 |only Orc Hunter Orc Warrior |opt
    train 64658 |only Orc Hunter Orc Warrior |opt
    note-enUS Talk to Sorek
    note-ptBR Fale com Sorek
    train 6574
    note-enUS Train your class spells
    note-ptBR Treine your class spells
    train 6574
step
    only Warrior
    goto 1454 80.39,32.38
    note-enUS Talk to Sorek
    note-ptBR Fale com Sorek
    train 6178
    note-enUS Train your class spells
    note-ptBR Treine your class spells
    train 6178
step
    only Warrior
    goto 1454 80.39,32.38
    note-enUS Talk to Sorek
    note-ptBR Fale com Sorek
    accept 1823
step
    only Hunter
    goto 1454 66.05,18.52
    note-enUS Talk to Ormak
    note-ptBR Fale com Ormak
    train 14323
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Hunter
    goto 1454 66.05,18.52
    note-enUS Talk to Ormak
    note-ptBR Fale com Ormak
    train 3045
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Shaman
    path seq 1454 63.08,39.25 64.31,38.12 66.07,40.04 |only Paladin
    goto 1454 74.19,25.89 30 |only Paladin
    goto 1454 76.76,22.12 30 |only Paladin Shaman Warrior
    goto 1454 81.53,19.64 10 |only Shaman Warrior Paladin
    goto 1454 81.53,19.64
    note-enUS Travel toward Hanashi |only Shaman Warrior Paladin
    note-ptBR Vá em direção a Hanashi |only Shaman Warrior Paladin
    note-enUS Talk to Hanashi
    note-ptBR Fale com Hanashi
    train 196
    note-enUS Train 1h Axes
    note-ptBR Treine 1h Axes
    train 197
    note-enUS Train 2h Axes
    note-ptBR Treine 2h Axes
    train 196
    train 197
step
    only Shaman
    goto 1454 81.53,19.64
    note-enUS Talk to Hanashi
    note-ptBR Fale com Hanashi
    train 196
    note-enUS Train 1h Axes
    note-ptBR Treine 1h Axes
step
    only Warrior Paladin
    goto 1454 81.53,19.64
    note-enUS Talk to Hanashi
    note-ptBR Fale com Hanashi
    train 197
    note-enUS Train 2h Axes
    note-ptBR Treine 2h Axes
step
    path seq 1454 52.26,88.65
    goto 1454 49.42,90.9 30
    goto 1454 48.5,95.12 30 |only !Troll
    path seq 1454 47.41,65.07 46.59,64.54 46.75,63.84 46.59,64.54 46.75,63.84 46.59,64.54 46.75,63.84 |only Warrior Shaman
    goto 1454 45.12,63.88 10 |only Warrior Shaman
    path seq 1411 46.94,69.1 46.02,69.32 41.38,73.54 |only Troll
    goto 1411 66.29,35.94 30 |only Troll
    goto 1413 63.08,37.16 30 |only Troll
    goto 1413 63.08,37.16
    zone 1411 |only !Troll |opt
    note-enUS Exit Orgrimmar |only !Troll
    note-ptBR Saia de Orgrimmar |only !Troll
    note-enUS Travel up the tower toward Doras |only Warrior Shaman
    note-ptBR Suba a torre em direção a Doras |only Warrior Shaman
    note-enUS Talk to Doras |only Warrior Shaman
    note-ptBR Fale com Doras |only Warrior Shaman
    fp |only Warrior |opt
    note-enUS Fly to Crossroads |only Warrior
    note-ptBR Voe para Crossroads |only Warrior
    fp |only Shaman |opt
    note-enUS Fly to Camp Taurajo |only Shaman
    note-ptBR Voe para Camp Taurajo |only Shaman
    note-enUS Travel toward Bragok |only Troll
    note-ptBR Vá em direção a Bragok |only Troll
    note-enUS Talk to Bragok
    note-ptBR Fale com Bragok
    fp |only !Shaman !Warrior
    note-enUS Get the Ratchet flight path |only !Shaman !Warrior
    note-ptBR Pegue o ponto de voo de Ratchet |only !Shaman !Warrior
step
    only Shaman
    path seq 1413 44.33,61.78 44.06,62.18 45.57,62.95 45.75,62.52 44.76,74.79 43.84,77.28 43.62,77.29 |only Shaman
    goto 1413 43.42,77.41 15 |only Shaman
    goto 1413 43.42,77.41
    note-enUS Kill Owatanka. Loot him for [Owatanka's Tailspike] |only Shaman
    note-ptBR Mate Owatanka. Saqueie-o para obter [Owatanka's Tailspike] |only Shaman
    note-enUS Use [Owatanka's Tailspike] to start the quest |only Shaman
    note-ptBR Use [Owatanka's Tailspike] para iniciar a missão |only Shaman
    collect 5102 1 |quest 884 |q 884/1 |only Shaman |opt
    accept 884 |only Shaman |opt
    use 5102 |only Shaman |opt
    note-enUS Kill Washte Pawne. Loot him for [Washte Pawne's Feather] |only Shaman
    note-ptBR Mate Washte Pawne. Saqueie-o para obter a [Washte Pawne's Feather] |only Shaman
    note-enUS Use [Washte Pawne's Feather] to start the quest |only Shaman
    note-ptBR Use [Washte Pawne's Feather] para iniciar a missão |only Shaman
    collect 5103 1 |quest 885 |q 885/1 |only Shaman |opt
    accept 885 |only Shaman |opt
    use 5103 |only Shaman |opt
    note-enUS Travel toward Brine |only Shaman
    note-ptBR Vá em direção a Brine |only Shaman
    note-enUS Talk to Brine
    note-ptBR Fale com Brine
    turnin 1535
    accept 1536
step
    only Shaman
    ifonquest 884
    goto 1413 44.86,59.13 70
    note-enUS Travel toward Jorn
    note-ptBR Vá em direção a Jorn
step
    only Shaman
    ifonquest 885
    goto 1413 44.86,59.13 70
    note-enUS Travel toward Jorn
    note-ptBR Vá em direção a Jorn
step
    only Shaman
    ifonquest 884
    ifonquest 885
    goto 1413 44.86,59.13
    note-enUS Talk to Jorn
    note-ptBR Fale com Jorn
    turnin 884
    turnin 885
step
    only Shaman
    ifonquest 884
    goto 1413 44.86,59.13
    note-enUS Talk to Jorn
    note-ptBR Fale com Jorn
    turnin 884
step
    only Shaman
    ifonquest 885
    goto 1413 44.86,59.13
    note-enUS Talk to Jorn
    note-ptBR Fale com Jorn
    turnin 885
step
    only Shaman
    goto 1413 44.44,59.16
    note-enUS Talk to Omusa
    note-ptBR Fale com Omusa
    fp
    note-enUS Fly to Crossroads
    note-ptBR Voe para Crossroads
step
    only Warlock
    goto 1413 51.95,31.58
    note-enUS Talk to Mankrik
    note-ptBR Fale com Mankrik
    accept 4921
step
    only Warrior Shaman Warlock
    path seq 1413 52.02,30.14 |only Warrior
    goto 1413 51.99,29.89 15 |only Warrior
    goto 1413 51.99,29.89
    note-enUS Travel toward Boorand |only Warrior
    note-ptBR Vá em direção a Boorand |only Warrior
    note-enUS Talk to Boorand
    note-ptBR Fale com Boorand
    home
    note-enUS Set your Hearthstone to Crossroads
    note-ptBR Defina sua pedra de regresso em Crossroads
step
    only Warlock
    goto 1413 51.93,30.32
    note-enUS Talk to Gazrog
    note-ptBR Fale com Gazrog
    turnin 1509
    accept 1510
step
    only Warlock
    goto 1413 51.5,30.33
    note-enUS Talk to Devrak
    note-ptBR Fale com Devrak
    fp
    note-enUS Get the The Crossroads flight path
    note-ptBR Pegue o ponto de voo de The Crossroads
step
    only !Shaman !Warrior
    goto 1413 51.07,29.63
    note-enUS Talk to Korran
    note-ptBR Fale com Korran
    accept 868
step
    only Warlock
    goto 1413 39.22,29.56 90 |only Warlock
    path seq 1442 82.17,98.27 79.92,98.27 77.14,98.63 75.03,97.1 |only Warlock
    goto 1442 73.25,95.13 20 |only Warlock
    goto 1442 73.25,95.13
    zone 1442 |only Warlock |opt
    note-enUS Travel to Stonetalon Mountains |only Warlock
    note-ptBR Vá até Stonetalon Mountains |only Warlock
    note-enUS Travel toward Ken'zigla |only Warlock
    note-ptBR Vá em direção a Ken'zigla |only Warlock
    note-enUS Talk to Ken'zigla
    note-ptBR Fale com Ken'zigla
    turnin 1510
    accept 1511
step
    only !Shaman !Warrior !Warlock
    path seq 1442 73.02,93.82 75.23,95.36 76.23,97.68 77.14,98.63 79.92,98.27 |only Warlock
    goto 1442 82.87,98.65 30 |only Warlock
    path seq 1413 39.22,29.56 37.62,28.45 39.13,30.35 41.77,33.27 |only Warlock
    goto 1413 49.33,50.32 20 |only Warlock
    goto 1413 51.5,30.33
    hearth |only Warlock |opt
    note-enUS Hearth to Crossroads |only Warlock
    note-ptBR Use a pedra de regresso para Crossroads |only Warlock
    zone 1413 |only Warlock |opt
    note-enUS Travel to The Barrens |only Warlock
    note-ptBR Vá até The Barrens |only Warlock
    note-enUS Travel toward the Beaten Corpse |only Warlock
    note-ptBR Vá em direção a Beaten Corpse |only Warlock
    note-enUS Talk to Devrak
    note-ptBR Fale com Devrak
    fp
    note-enUS Get the The Crossroads flight path
    note-ptBR Pegue o ponto de voo de The Crossroads
step
    only !Shaman !Warrior !Warlock
    goto 1413 51.95,31.58
    note-enUS Talk to Mankrik
    note-ptBR Fale com Mankrik
    accept 4921
step
    only !Shaman !Warrior
    goto 1413 49.33,50.32
    note-enUS Talk to the Beaten Corpse on the ground
    note-ptBR Fale com o Beaten Corpse no chão
    objective 4921/1
step
    only !Shaman !Warrior
    path seq 1413 50.07,52.96 49.99,53.44 46.07,49.11 46.2,49.74 45.39,52.31 45.14,52.37 |only !Shaman !Warrior
    goto 1413 45.12,52.73 45 |only !Shaman !Warrior
    goto 1413 45.1,57.68
    note-enUS Kill Aean Swiftriver. She patrols in a pack of mobs in a large area in southern Barrens. Loot her for her [Runed Scroll] |only !Shaman !Warrior
    note-ptBR Mate Aean Swiftriver. Ela patrulha com um grupo de mobs em uma grande área no sul de Barrens. Saqueie-a para obter o [Runed Scroll] dela |only !Shaman !Warrior
    note-enUS Use the [Runed Scroll] to start the quest |only !Shaman !Warrior
    note-ptBR Use o [Runed Scroll] para iniciar a missão |only !Shaman !Warrior
    note-enUS Try to split pull her. Kite her toward the Camp Taurajo guards if possible |only !Shaman !Warrior
    note-ptBR Tente puxá-la separada. Se possível, faça kite com ela em direção aos guardas de Camp Taurajo |only !Shaman !Warrior
    note-enUS Skip this step if you cannot find her or kill her |only !Shaman !Warrior
    note-ptBR Pule este passo se não conseguir encontrá-la ou matá-la |only !Shaman !Warrior
    collect 10621 1 |quest 3513 |q 3513/1 |only !Shaman !Warrior |opt
    accept 3513 |only !Shaman !Warrior |opt
    use 5099 |only !Shaman !Warrior |opt
    note-enUS Kill Lakota'mani. Loot him for the [Hoof of Lakota'mani] |only !Shaman !Warrior
    note-ptBR Mate Lakota'mani. Saqueie-o para obter o [Hoof of Lakota'mani] |only !Shaman !Warrior
    note-enUS Use the [Hoof of Lakota'mani] to start the quest |only !Shaman !Warrior
    note-ptBR Use o [Hoof of Lakota'mani] para iniciar a missão |only !Shaman !Warrior
    collect 5099 1 |quest 883 |q 883/1 |only !Shaman !Warrior |opt
    accept 883 |only !Shaman !Warrior |opt
    use 5099 |only !Shaman !Warrior |opt
    note-enUS Talk to Tatternack
    note-ptBR Fale com Tatternack
    accept 893
step
    only !Shaman !Warrior
    ifonquest 883
    goto 1413 44.86,59.13
    goto 1413 44.62,59.27 |only Warlock
    note-enUS Talk to Jorn and Logmar |only Warlock
    note-ptBR Fale com Jorn e Logmar |only Warlock
    note-enUS Talk to Jorn |only !Warlock
    note-ptBR Fale com Jorn |only !Warlock
    turnin 883
    accept 1130
    turnin 1511 |only Warlock
    accept 1515 |only Warlock
step
    only !Shaman !Warrior
    goto 1413 44.86,59.13
    goto 1413 44.62,59.27 |only Warlock
    note-enUS Talk to Jorn and Logmar |only Warlock
    note-ptBR Fale com Jorn e Logmar |only Warlock
    note-enUS Talk to Jorn |only !Warlock
    note-ptBR Fale com Jorn |only !Warlock
    accept 1130
    turnin 1511 |only Warlock
    accept 1515 |only Warlock
step
    only !Shaman !Warrior
    goto 1413 44.44,59.16
    note-enUS Talk to Omusa
    note-ptBR Fale com Omusa
    fp
    note-enUS Get the Camp Taurajo flight path
    note-ptBR Pegue o ponto de voo de Camp Taurajo
step
    only Warlock
    goto 1413 43.3,47.89
    note-enUS Talk to Dogran
    note-ptBR Fale com Dogran
    turnin 1515
    accept 1512
step
    only !Shaman !Warrior
    ifonquest 868
    path seq 1413 44.33,61.78 44.06,62.18 45.57,62.95 45.75,62.52 49.67,59.54 49.42,61.04 |only !Shaman !Warrior
    goto 1413 49.18,61.45 40 |only !Shaman !Warrior
    goto 1413 45.05,69.93 50
    note-enUS Kill Owatanka. Loot him for [Owatanka's Tailspike] |only !Shaman !Warrior
    note-ptBR Mate Owatanka. Saqueie-o para obter [Owatanka's Tailspike] |only !Shaman !Warrior
    note-enUS Use [Owatanka's Tailspike] to start the quest |only !Shaman !Warrior
    note-ptBR Use [Owatanka's Tailspike] para iniciar a missão |only !Shaman !Warrior
    collect 5102 1 |quest 884 |q 884/1 |only !Shaman !Warrior |opt
    accept 884 |only !Shaman !Warrior |opt
    use 5102 |only !Shaman !Warrior |opt
    note-enUS Travel toward the Field of Giants
    note-ptBR Vá em direção a Field of Giants
step
    only !Shaman !Warrior
    path seq 1413 45.05,69.93 43.48,69.94 42.6,69.67 42.83,70.07 42.69,71.25 42.91,71.5 43.37,70.61 44.12,71.3 44.06,72.51 45.29,72.01 47.41,70.07 47.86,70.86 47.83,71.14 48.54,70.11
    goto 1413 45.05,69.93
    note-enUS Kill the Silithid Harvester. Loot it for the [Harvester's Head] |only !Shaman !Warrior
    note-ptBR Mate o Silithid Harvester. Saqueie-o para obter a [Harvester's Head] |only !Shaman !Warrior
    note-enUS Use the [Harvester's Head] to start the quest |only !Shaman !Warrior
    note-ptBR Use o [Harvester's Head] para iniciar a missão |only !Shaman !Warrior
    note-enUS Skip this quest if you can't find him |only !Shaman !Warrior
    note-ptBR Pule esta missão se não conseguir encontrá-lo |only !Shaman !Warrior
    collect 5138 1 |quest 897 |q 897/1 |only !Shaman !Warrior |opt
    accept 897 |only !Shaman !Warrior |opt
    use 5138 |only !Shaman !Warrior |opt
    note-enUS Open the Silithid Mounds on the ground. Loot them for the Silithid Eggs
    note-ptBR Abra os Silithid Mounds no chão. Saqueie-os para obter os Silithid Eggs
    note-enUS Try to avoid fighting the nearby Silithid as much as possible
    note-ptBR Tente evitar ao máximo lutar contra os Silithid próximos
    objective 868/1
step
    only !Shaman !Warrior
    ifonquest 897
    path seq 1413 48.79,70 44.33,61.78 44.06,62.18 45.57,62.95 45.75,62.52 49.67,59.54 49.42,61.04 |only !Shaman !Warrior
    goto 1413 49.18,61.45 40 |only !Shaman !Warrior
    goto 1413 44.86,59.13 70
    note-enUS Kill the Silithid Harvester. Loot it for the [Harvester's Head] |only !Shaman !Warrior
    note-ptBR Mate o Silithid Harvester. Saqueie-o para obter a [Harvester's Head] |only !Shaman !Warrior
    note-enUS Use the [Harvester's Head] to start the quest |only !Shaman !Warrior
    note-ptBR Use o [Harvester's Head] para iniciar a missão |only !Shaman !Warrior
    note-enUS Skip this quest if you can't find him |only !Shaman !Warrior
    note-ptBR Pule esta missão se não conseguir encontrá-lo |only !Shaman !Warrior
    collect 5138 1 |quest 897 |q 897/1 |only !Shaman !Warrior |opt
    accept 897 |only !Shaman !Warrior |opt
    use 5138 |only !Shaman !Warrior |opt
    note-enUS Kill Aean Swiftriver. She patrolls in a pack of mobs in a large area in southern Barrens. Loot her for her [Runed Scroll] |only !Shaman !Warrior
    note-ptBR Mate Aean Swiftriver. Ela patrulha com um grupo de mobs em uma grande área no sul de Barrens. Saqueie-a para obter o [Runed Scroll] dela |only !Shaman !Warrior
    note-enUS Use the [Runed Scroll] to start the quest |only !Shaman !Warrior
    note-ptBR Use o [Runed Scroll] para iniciar a missão |only !Shaman !Warrior
    note-enUS Try to split pull her. Kite her toward the Camp Taurajo guards if possible |only !Shaman !Warrior
    note-ptBR Tente puxá-la separada. Se possível, faça kite com ela em direção aos guardas de Camp Taurajo |only !Shaman !Warrior
    note-enUS Skip this step if you cannot find her or kill her |only !Shaman !Warrior
    note-ptBR Pule este passo se não conseguir encontrá-la ou matá-la |only !Shaman !Warrior
    collect 10621 1 |quest 3513 |q 3513/1 |only !Shaman !Warrior |opt
    accept 3513 |only !Shaman !Warrior |opt
    use 5099 |only !Shaman !Warrior |opt
    note-enUS Kill Owatanka. Loot him for [Owatanka's Tailspike] |only !Shaman !Warrior
    note-ptBR Mate Owatanka. Saqueie-o para obter [Owatanka's Tailspike] |only !Shaman !Warrior
    note-enUS Use [Owatanka's Tailspike] to start the quest |only !Shaman !Warrior
    note-ptBR Use [Owatanka's Tailspike] para iniciar a missão |only !Shaman !Warrior
    collect 5102 1 |quest 884 |q 884/1 |only !Shaman !Warrior |opt
    accept 884 |only !Shaman !Warrior |opt
    use 5102 |only !Shaman !Warrior |opt
    note-enUS Travel toward Jorn
    note-ptBR Vá em direção a Jorn
step
    only !Shaman !Warrior
    ifonquest 884
    goto 1413 44.86,59.13 70
    note-enUS Travel toward Jorn
    note-ptBR Vá em direção a Jorn
step
    only !Shaman !Warrior
    ifonquest 884
    ifonquest 897
    goto 1413 44.86,59.13
    note-enUS Talk to Jorn
    note-ptBR Fale com Jorn
    turnin 884
    turnin 897
step
    only !Shaman !Warrior
    ifonquest 884
    goto 1413 44.86,59.13
    note-enUS Talk to Jorn
    note-ptBR Fale com Jorn
    turnin 884
step
    only !Shaman !Warrior
    ifonquest 897
    goto 1413 44.86,59.13
    note-enUS Talk to Jorn
    note-ptBR Fale com Jorn
    turnin 897
step
    only !Shaman !Warrior
    goto 1412 67.45,59.23
    zone 1412
    note-enUS Travel to Mulgore
    note-ptBR Vá até Mulgore
step
    only !Shaman !Warrior
    goto 1412 41.35,36.94 40 |only !Shaman !Warrior
    goto 1456 31.81,66.06 20 |only !Shaman !Warrior
    path seq 1456 36.57,63.35 |only !Rogue
    goto 1456 41.89,61.84 30 |only !Rogue
    path seq 1456 45.05,62.49 |only Warlock !Shaman !Warrior
    goto 1456 45.81,64.71 15 |only Warlock !Shaman !Warrior
    goto 1456 45.81,64.71
    note-enUS Travel to the Thunder Bluff Elevators |only !Shaman !Warrior
    note-ptBR Vá até Thunder Bluff Elevators |only !Shaman !Warrior
    note-enUS Travel toward Pala |only Warlock !Shaman !Warrior
    note-ptBR Vá em direção a Pala |only Warlock !Shaman !Warrior
    note-enUS Talk to Pala
    note-ptBR Fale com Pala
    note-enUS Buy [Sweet Nectar] from her |only Priest Mage Warlock Druid
    note-ptBR Compre [Sweet Nectar] dela |only Priest Mage Warlock Druid
    note-enUS Buy [Stormwind Brie] from her |only !Priest !Mage !Warlock !Druid !Paladin
    note-ptBR Compre [Stormwind Brie] dela |only !Priest !Mage !Warlock !Druid !Paladin
    note-enUS Buy [Sweet Nectar] and [Stormwind Brie] from her |only Paladin
    note-ptBR Compre [Sweet Nectar] e [Stormwind Brie] dela |only Paladin
    collect 1708 20 |quest 1145 |q 1145/1 |only Priest Mage Warlock Druid Paladin
    collect 1707 20 |quest 1145 |q 1145/1 |only !Priest !Mage !Warlock !Druid !Paladin
    collect 1707 10 |quest 1145 |q 1145/1 |only Paladin
step
    only !Shaman !Warrior
    ifnotturnedin 1195
    goto 1456 45.81,64.71
    note-enUS Talk to Pala
    note-ptBR Fale com Pala
    home
    note-enUS Set your Hearthstone to Thunder Bluff
    note-ptBR Defina sua pedra de regresso em Thunder Bluff
step
    only !Shaman !Warrior
    path seq 1456 46.85,66.08 46.84,67.98 54.27,76.87 |only !Shaman !Warrior
    goto 1456 61.54,80.92 15 |only !Shaman !Warrior
    goto 1456 61.54,80.92
    note-enUS Travel toward Melor |only !Shaman !Warrior
    note-ptBR Vá em direção a Melor |only !Shaman !Warrior
    note-enUS Talk to Melor
    note-ptBR Fale com Melor
    turnin 1130
    accept 1131
step
    only !Shaman !Warrior
    path seq 1456 61.85,75.43 |only !Shaman !Warrior
    goto 1456 54.97,51.39 15 |only !Shaman !Warrior
    goto 1456 54.97,51.39
    note-enUS Travel toward Zangen |only !Shaman !Warrior
    note-ptBR Vá em direção a Zangen |only !Shaman !Warrior
    note-enUS Talk to Zangen
    note-ptBR Fale com Zangen
    accept 1195
step
    only Druid
    path seq 1456 58.8,46.32 59.61,43.59 60.12,42.51 61.28,41.66 61.5,40.33 74.32,30.21 |only Druid
    goto 1456 76.79,31.79 15 |only Druid
    goto 1456 76.79,31.79
    note-enUS Travel toward Kym |only Druid
    note-ptBR Vá em direção a Kym |only Druid
    note-enUS Talk to Kym
    note-ptBR Fale com Kym
    train 1850
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only !Shaman !Warrior
    path seq 1456 47.22,49.54 46.22,49.14 46.01,49.9 |only !Shaman !Warrior
    goto 1456 47,49.83 |only !Shaman !Warrior
    path seq 1413 51.95,31.58
    goto 1413 51.07,29.63
    note-enUS Go up the tower |only !Shaman !Warrior
    note-ptBR Suba a torre |only !Shaman !Warrior
    note-enUS Talk to Tal |only !Shaman !Warrior
    note-ptBR Fale com Tal |only !Shaman !Warrior
    fp |only !Tauren |opt
    note-enUS Get the Thunder Bluff Flight Path |only !Tauren
    note-ptBR Pegue o ponto de voo de Thunder Bluff |only !Tauren
    fp |only !Shaman !Warrior |opt
    note-enUS Fly to the Crossroads |only !Shaman !Warrior
    note-ptBR Voe para Crossroads |only !Shaman !Warrior
    note-enUS Talk to Mankrik and Korran
    note-ptBR Fale com Mankrik e Korran
    turnin 4921
    turnin 868
step
    only !Shaman !Warrior
    goto 1440 68.34,75.3 |only !Rogue
    goto 1413 55.44,5.56 |only Rogue
    note-enUS Delete the [Silithid Eggs] from your bags, as they're no longer needed
    note-ptBR Apague os [Silithid Eggs] das suas bolsas, pois não são mais necessários
step
    only Rogue
    ifonquest 2458
    goto 1413 55.38,5.36 60
    note-enUS Travel toward Fizzule
    note-ptBR Vá em direção a Fizzule
    note-enUS Do NOT aggro or attack him. Run away if you do
    note-ptBR NÃO chame a atenção dele nem o ataque. Fuja se fizer isso
step
    only Rogue
    ifonquest 2458
    goto 1413 55.44,5.56
    note-enUS Use the [Flare Gun]
    note-ptBR Use a [Flare Gun]
    note-enUS It has a 60 yard range
    note-ptBR Tem alcance de 60 metros
    note-enUS Do NOT aggro or attack him. Run away if you do
    note-ptBR NÃO chame a atenção dele nem o ataque. Fuja se fizer isso
    use 8051
step
    only Rogue
    goto 1413 55.44,5.56
    note-enUS Target Fizzule to salute him within a 40 yard range to turn him friendly
    note-ptBR Selecione Fizzule como alvo e faça a saudação a até 40 jardas para torná-lo amigável
    note-enUS Talk to Fizzule
    note-ptBR Fale com Fizzule
    turnin 2458
    use 8051
step
    only Rogue
    path seq 1413 49.16,12.48
    goto 1413 48.12,5.42 100
    note-enUS Travel toward Kadrak
    note-ptBR Vá em direção a Kadrak
step
    ifonquest 3513
    path seq 1413 48.16,5.33 48.11,5.24
    goto 1413 48.12,5.42
    note-enUS Travel up the tower
    note-ptBR Suba a torre
    note-enUS Talk to Kadrak
    note-ptBR Fale com Kadrak
    turnin 3513
step
    only Warlock
    path closest 1440 67.36,82.59 67.3,80.85 66.61,79.75 65.53,79.62 65.16,80.23 65.74,81.65 65.66,82.72 66.61,84.1 67.03,83.39 67.36,82.59
    zone 1440 |opt
    note-enUS Travel to Ashenvale
    note-ptBR Vá até Ashenvale
    note-enUS Kill Shadethicket Stone Movers and Shadethicket Bark Rippers. Loot them for the Withered Scarf
    note-ptBR Mate Shadethicket Stone Movers e Shadethicket Bark Rippers. Saqueie-os para obter o Withered Scarf
    objective 65610/1
step
    goto 1440 68.34,75.3
    note-enUS Talk to Torek to start the escort
    note-ptBR Fale com Torek para iniciar a escolta
    note-enUS If he's not up, skip this step
    note-ptBR Se ele não estiver disponível, pule esta etapa
    note-enUS Cast [Summon Voidwalker] before accepting the quest if you don't already have a Voidwalker out |only Warlock
    note-ptBR Lance [Summon Voidwalker] antes de aceitar a missão se ainda não tiver um Voidwalker invocado |only Warlock
    accept 6544
step
    ifonquest 6544
    path seq 1440 66.08,74.5 65.07,75.36 64.28,75.33
    goto 1440 64.81,75.34
    note-enUS Follow Torek
    note-ptBR Siga Torek
    note-enUS Let Torek and his Splintertree Raiders tank the Silverwing Warriors and Silverwing Sentinels
    note-ptBR Deixe Torek e seus Splintertree Raiders tanquearem os Silverwing Warriors e Silverwing Sentinels
    note-enUS When you clear the building, run toward the Balcony. When Duriel comes, let Torek and his Splintertree Raiders take aggro before you deal damage
    note-ptBR Quando limpar o prédio, corra em direção à sacada. Quando Duriel chegar, deixe Torek e seus Splintertree Raiders pegarem o aggro antes de causar dano
    note-enUS Skip this step if you die
    note-ptBR Pule este passo se você morrer
    objective 6544/1
step
    goto 1440 71.1,68.12
    note-enUS Talk to Kuray'bin
    note-ptBR Fale com Kuray'bin
    accept 6503
step
    path seq 1440 73.45,63.56 73.78,61.46 73.55,60.58
    goto 1440 73.67,60.01
    goto 1440 73.06,61.48 |only !Shaman !Warrior
    note-enUS Talk to Senani, Mastok, and Pixel |only !Shaman !Warrior
    note-ptBR Fale com Senani, Mastok e Pixel |only !Shaman !Warrior
    note-enUS Talk to Senani and Mastok |only Shaman Warrior
    note-ptBR Fale com Senani e Mastok |only Shaman Warrior
    turnin 6382 |only Shaman Warrior
    turnin 6383
    accept 25
    accept 6441 |only !Shaman !Warrior
step
    goto 1440 73.18,61.59
    note-enUS Talk to Vhulgra
    note-ptBR Fale com Vhulgra
    fp
    note-enUS Get the Splintertree Post flight path
    note-ptBR Pegue o ponto de voo de Splintertree Post
step
    ifcomplete 6544
    goto 1440 73.03,62.47
    note-enUS Talk to Ertog
    note-ptBR Fale com Ertog
    turnin 6544
step
    abandon 6544
    note-enUS Abandon Torek's Assault
    note-ptBR Abandone Torek's Assault
step
    path seq 1440 75.25,71.86 76.15,67.6 76.03,69.02 76.25,70.62 75.76,71.61 75.57,70.33 75.2,70.62 74.37,69.31 73.61,70.91 72.96,70.34 72.66,69.46 72.09,70.17 71.07,72.6 71.92,73.64 72.53,72.58 72.32,74.64 73.36,74.43 73.85,75.03
    goto 1440 76.15,67.6
    note-enUS Kill Sharptalon. Loot him for [Sharptalon's Claw]
    note-ptBR Mate Sharptalon. Saqueie-o para obter a [Sharptalon's Claw]
    note-enUS Use [Sharptalon's Claw] to start the quest
    note-ptBR Use [Sharptalon's Claw] para iniciar a missão
    note-enUS Sharptalon patrols around slightly
    note-ptBR Sharptalon patrulha um pouco pela área
    note-enUS Kite Sharptalon back to Splintertree Post or the Forsaken Camp if you're struggling to kill him. If you do this, make sure you do 50%+ damage to get credit
    note-ptBR Leve Sharptalon (kite) de volta a Splintertree Post ou ao Forsaken Camp se estiver com dificuldade para matá-lo. Se fizer isso, garanta causar 50%+ do dano para receber o crédito
    collect 16305 1 |quest 2 |q 2/1 |opt
    accept 2 |opt
    use 16305 |opt
    note-enUS Kill Ashenvale Outrunners
    note-ptBR Mate Ashenvale Outrunners
    note-enUS They are stealthed
    note-ptBR Eles estão em furtividade
    objective 6503/1
step
    path seq 1440 78.24,65.72 77.93,65.93 77.6,66.33 77.35,66.96 76.93,68.04 76.11,68.95 75.94,69.8 75.26,69.96 74.86,70.06 74.36,70.1 73.33,70.61 72.94,70.67 72.5,70.6 72.08,70.47 71.46,70.1
    goto 1440 78.24,65.72
    note-enUS Kill Sharptalon. Loot him for [Sharptalon's Claw]
    note-ptBR Mate Sharptalon. Saqueie-o para obter a [Sharptalon's Claw]
    note-enUS Use [Sharptalon's Claw] to start the quest
    note-ptBR Use [Sharptalon's Claw] para iniciar a missão
    note-enUS Sharptalon patrols around slightly
    note-ptBR Sharptalon patrulha um pouco pela área
    note-enUS Kite Sharptalon back to Splintertree Post or the Forsaken Camp if you're struggling to kill him. If you do this, make sure you do 50%+ damage to get credit
    note-ptBR Leve Sharptalon (kite) de volta a Splintertree Post ou ao Forsaken Camp se estiver com dificuldade para matá-lo. Se fizer isso, garanta causar 50%+ do dano para receber o crédito
    collect 16305 1 |quest 2 |q 2/1
    accept 2
    use 16305
step
    only !Shaman !Warrior
    path closest 1440 72.54,50.48 71.9,49.6 |only !Shaman !Warrior
    path closest 1440 68.84,53.16 67.41,55.32 66.7,57.09 66.23,55.16 66.58,51.68 66.62,54.28 67.15,54.63 67.96,54.2 68.84,53.16
    note-enUS Travel toward Night Run |only !Shaman !Warrior
    note-ptBR Vá em direção a Night Run |only !Shaman !Warrior
    note-enUS Kill Felmusk Shadowstalkers, Felmusk Satyrs, and Felmusk Felsworns. Loot them for their Satyr Horns
    note-ptBR Mate Felmusk Shadowstalkers, Felmusk Satyrs e Felmusk Felsworns. Saqueie-os para obter os Satyr Horns
    note-enUS Be careful as Felmusk Shadowstalkers cast [Shadowstalker Slash] (Cheap Shot) and are stealthed
    note-ptBR Cuidado, os Felmusk Shadowstalkers lançam [Shadowstalker Slash] (Cheap Shot) e ficam em furtividade
    note-enUS Be VERY careful as all the Felmusk cast [Overwhelming Stench], an instant-cast 6 second silence
    note-ptBR Tenha MUITO cuidado, pois todos os Felmusk lançam [Overwhelming Stench], um silêncio instantâneo de 6 segundos
    objective 6441/1
step
    path seq 1440 62.24,49.5 61.58,50.2 61.39,51.4 61.53,52.59 60.86,52.57 60.42,53.1 59.92,53.53 59.84,54.42 60.42,55.23 60.34,56.01 59.84,55.6 59.83,56.26 59.29,56.97 59.11,56.29 58.62,56.8 58.67,56.11 58.1,56.16 58.65,55.37 58.65,54.51
    goto 1440 62.24,49.5
    note-enUS Kill Shadumbra. Loot her for [Shadumbra's Head]
    note-ptBR Mate Shadumbra. Saqueie-a para obter a [Shadumbra's Head]
    note-enUS Use [Shadumbra's Head] to start the quest
    note-ptBR Use [Shadumbra's Head] para iniciar a missão
    note-enUS Shadumbra patrols around slightly
    note-ptBR Shadumbra patrulha um pouco pela área
    collect 16304 1 |quest 24 |q 24/1 |opt
    accept 24 |opt
    use 16304 |opt
    note-enUS Kill Laughing Sisters. Loot them for the [Etched Phial]
    note-ptBR Mate Laughing Sisters. Saqueie-as para obter o [Etched Phial]
    collect 5867 1 |quest 1195 |q 1195/1
step
    path seq 1440 60.94,51.53 60.49,52.41 59.83,53.4 59.55,53.71 59.26,54.25 59.1,54.76 58.8,55.24 58.17,55.57 57.91,55.9 57.54,56.03 56.93,56.06 56.37,55.9 56.16,55.46 55.62,55.41 54.8,55.09 54.06,54.91 53.01,54.54 52.68,54.42 52.24,54.38
    goto 1440 62.39,49.8
    note-enUS Kill Shadumbra. Loot her for [Shadumbra's Head]
    note-ptBR Mate Shadumbra. Saqueie-a para obter a [Shadumbra's Head]
    note-enUS Use [Shadumbra's Head] to start the quest
    note-ptBR Use [Shadumbra's Head] para iniciar a missão
    note-enUS Shadumbra patrols around slightly
    note-ptBR Shadumbra patrulha um pouco pela área
    collect 16304 1 |quest 24 |q 24/1
    accept 24
    use 16304
step
    only Shaman
    goto 1440 33.55,67.47
    note-enUS Use the [Empty Blue Waterskin] under the Gazebo
    note-ptBR Use o [Empty Blue Waterskin] embaixo do Gazebo
    objective 1534/1
    use 7767
step
    path closest 1440 41.46,67.44 39.81,62.94 39.65,63.74 39.77,65.4 40.22,66.23 41.41,66.56 41.46,67.44 41.55,67.71 41.79,68.28 42.08,68.71 42.46,68.39 43.33,68.09 43.78,68.86 39.81,62.94
    note-enUS Kill Ursangous. Loot him for [Ursangous's Paw]
    note-ptBR Mate Ursangous. Saqueie-o para obter a [Ursangous's Paw]
    note-enUS Use [Ursangous's Paw] to start the quest
    note-ptBR Use [Ursangous's Paw] para iniciar a missão
    note-enUS Ursangous patrols around slightly
    note-ptBR Ursangous patrulha um pouco pela área
    collect 16303 1 |quest 23 |q 23/1
    accept 23
    use 16303
step
    path seq 1440 45.84,70.67 46.07,70.83 46.53,70.8 46.72,70.63 47.22,70.44 47.57,70.42 47.79,69.9 48.04,69.67 48.71,69.54
    goto 1440 48.93,69.56
    note-enUS Use the [Swim Speed Potion] in the water to swim across it faster |only !Warrior !Shaman
    note-ptBR Use a [Swim Speed Potion] na água para atravessá-la nadando mais rápido |only !Warrior !Shaman
    use 6372 |only !Warrior !Shaman |opt
    note-enUS Kill Befouled Water Elementals
    note-ptBR Mate Befouled Water Elementals
    objective 25/1 |opt
    note-enUS Kill Tideress. Loot her for the [Befouled Water Globe]
    note-ptBR Mate Tideress. Saqueie-a para obter o [Befouled Water Globe]
    note-enUS Use the [Befouled Water Globe] to start the quest
    note-ptBR Use o [Befouled Water Globe] para iniciar a missão
    note-enUS Tideress patrols around the island and underwater
    note-ptBR Tideress patrulha ao redor da ilha e debaixo d'água
    collect 16408 1 |quest 1918 |q 1918/1 |opt
    accept 1918 |opt
    use 16408 |opt
    note-enUS Go under the Gazebo
    note-ptBR Vá para baixo do Gazebo
    objective 25/2
step
    path seq 1440 48.36,69.74 48.43,70.14 48.93,70.82 49.49,70.76 50.21,70.36 50.47,70.43 50.54,71.08 50.74,71.31 51.42,70.86 52.13,71.14 52.18,71.6 52.08,72.1
    goto 1440 45.84,70.67
    note-enUS Kill Tideress. Loot her for the [Befouled Water Globe]
    note-ptBR Mate Tideress. Saqueie-a para obter o [Befouled Water Globe]
    note-enUS Use the [Befouled Water Globe] to start the quest
    note-ptBR Use o [Befouled Water Globe] para iniciar a missão
    note-enUS Tideress patrols around the island and underwater
    note-ptBR Tideress patrulha ao redor da ilha e debaixo d'água
    collect 16408 1 |quest 1918 |q 1918/1
    accept 1918
    use 16408
step
    path closest 1440 48.36,69.74 48.43,70.14 48.93,70.82 49.49,70.76 50.21,70.36 50.47,70.43 50.54,71.08 50.74,71.31 51.42,70.86 52.13,71.14 52.18,71.6 52.08,72.1 45.84,70.67 48.36,69.74
    note-enUS Kill Befouled Water Elementals
    note-ptBR Mate Befouled Water Elementals
    objective 25/1
step
    goto 1440 60.2,72.9
    note-enUS Use the [Etched Phial] in the Moonwell
    note-ptBR Use o [Etched Phial] no Moonwell
    objective 1195/1
    use 5867
step
    goto 1440 68.34,75.3
    note-enUS Talk to Torek to start the escort
    note-ptBR Fale com Torek para iniciar a escolta
    note-enUS Cast [Summon Voidwalker] before accepting the quest if you don't already have a Voidwalker out |only Warlock
    note-ptBR Lance [Summon Voidwalker] antes de aceitar a missão se ainda não tiver um Voidwalker invocado |only Warlock
    note-enUS Torek has a 5 minute respawn time
    note-ptBR Torek leva 5 minutos para reaparecer
    accept 6544
step
    path seq 1440 66.08,74.5 65.07,75.36 64.28,75.33
    goto 1440 64.81,75.34
    note-enUS Follow Torek
    note-ptBR Siga Torek
    note-enUS Let Torek and his Splintertree Raiders tank the Silverwing Warriors and Silverwing Sentinels
    note-ptBR Deixe Torek e seus Splintertree Raiders tanquearem os Silverwing Warriors e Silverwing Sentinels
    note-enUS When you clear the building, run toward the Balcony. When Duriel Moonfire comes, let Torek and his Splintertree Raiders take aggro before you deal damage
    note-ptBR Depois de limpar o prédio, corra até a sacada. Quando Duriel Moonfire chegar, deixe Torek e seus Splintertree Raiders pegarem o aggro antes de causar dano
    objective 6544/1
step
    path seq 1440 61.06,71.96 61.38,72.48
    goto 1440 71.1,68.12 20
    note-enUS Travel toward Kuray'bin
    note-ptBR Vá em direção a Kuray'bin
    note-enUS Talk to Kuray'bin
    note-ptBR Fale com Kuray'bin
    turnin 6503
step
    ifonquest 6544
    path seq 1440 73.45,63.56 73.78,61.46 73.55,60.58
    goto 1440 73.67,60.01
    goto 1440 73.06,61.48 |only !Shaman !Warrior
    goto 1440 73.03,62.47
    note-enUS Talk to Senani, Mastok, Pixel, and Ertog |only !Shaman !Warrior
    note-ptBR Fale com Senani, Mastok, Pixel e Ertog |only !Shaman !Warrior
    note-enUS Talk to Senani, Mastok, and Ertog |only Shaman Warrior
    note-ptBR Fale com Senani, Mastok e Ertog |only Shaman Warrior
    turnin 2
    turnin 23
    turnin 24
    turnin 247
    turnin 25
    turnin 1918
    turnin 6441 |only !Shaman !Warrior
    turnin 6544
step
    path seq 1440 73.45,63.56 73.78,61.46 73.55,60.58
    goto 1440 73.67,60.01
    goto 1440 73.06,61.48 |only !Shaman !Warrior
    note-enUS Talk to Senani, Mastok, and Pixel |only !Shaman !Warrior
    note-ptBR Fale com Senani, Mastok e Pixel |only !Shaman !Warrior
    note-enUS Talk to Senani and Mastok |only Shaman Warrior
    note-ptBR Fale com Senani e Mastok |only Shaman Warrior
    turnin 2
    turnin 23
    turnin 24
    turnin 247
    turnin 25
    turnin 1918
    turnin 6441 |only !Shaman !Warrior
step
    only Druid
    goto 1450 52.53,40.57
    note-enUS Cast [Teleport: Moonglade] |only Druid
    note-ptBR Lance [Teleport: Moonglade] |only Druid
    note-enUS Talk to Loganaar
    note-ptBR Fale com Loganaar
    train 2091
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Mage
    goto 1458 85.14,10.05
    note-enUS Cast [Teleport: Undercity] |only Mage
    note-ptBR Lance [Teleport: Undercity] |only Mage
    train 3563 |only Mage |opt
    note-enUS Talk to Anastasia
    note-ptBR Fale com Anastasia
    train 759
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Mage
    goto 1458 82.77,15.85
    note-enUS Talk to Hannah
    note-ptBR Fale com Hannah
    vendor
    note-enUS Buy up to 20 [Runes of Teleportation] from her
    note-ptBR Compre até 20 [Runes of Teleportation] dela
step
    abandon 1918 |opt
    note-enUS Abandon The Befouled Element
    note-ptBR Abandone The Befouled Element
    note-enUS Delete the [Befouled Water Globe] from your bags, as it's no longer needed
    note-ptBR Apague o [Befouled Water Globe] das suas bolsas, pois não é mais necessário
    hearth |only Shaman Warrior
    note-enUS Hearth to Crossroads |only Shaman Warrior
    note-ptBR Use a pedra de regresso para Crossroads |only Shaman Warrior
    hearth |only !Shaman !Warrior
    note-enUS Hearth to Thunder Bluff |only !Shaman !Warrior
    note-ptBR Use a pedra de regresso para Thunder Bluff |only !Shaman !Warrior
step
    only !Shaman !Warrior
    goto 1440 73.18,61.59 |only !Shaman !Warrior
    goto 1456 45.81,64.71
    note-enUS Talk to Vhulgra |only !Shaman !Warrior
    note-ptBR Fale com Vhulgra |only !Shaman !Warrior
    fly 1456 |only !Shaman !Warrior |opt
    note-enUS Fly to Thunder Bluff |only !Shaman !Warrior
    note-ptBR Voe para Thunder Bluff |only !Shaman !Warrior
    note-enUS Talk to Pala
    note-ptBR Fale com Pala
    note-enUS Buy [Sweet Nectar] from her |only Priest Mage Warlock Druid
    note-ptBR Compre [Sweet Nectar] dela |only Priest Mage Warlock Druid
    note-enUS Buy [Stormwind Brie] from her |only !Priest !Mage !Warlock !Druid !Paladin !Shaman
    note-ptBR Compre [Stormwind Brie] dela |only !Priest !Mage !Warlock !Druid !Paladin !Shaman
    note-enUS Buy [Sweet Nectar] and [Stormwind Brie] from her |only Paladin Shaman
    note-ptBR Compre [Sweet Nectar] e [Stormwind Brie] dela |only Paladin Shaman
    collect 1708 20 |quest 1145 |q 1145/1 |only Priest Mage Warlock Druid Paladin
    collect 1707 20 |quest 1145 |q 1145/1 |only !Priest !Mage !Warlock !Druid !Paladin
    collect 1707 10 |quest 1145 |q 1145/1 |only Paladin
step
    only Shaman Warrior
    goto 1413 51.99,29.89
    note-enUS Talk to Boorand
    note-ptBR Fale com Boorand
    note-enUS Buy [Sweet Nectar] from him |only Priest Mage Warlock Druid
    note-ptBR Compre [Sweet Nectar] dele |only Priest Mage Warlock Druid
    note-enUS Buy [Goldenbark Apples] from him |only !Priest !Mage !Warlock !Druid !Paladin !Shaman
    note-ptBR Compre [Goldenbark Apples] dele |only !Priest !Mage !Warlock !Druid !Paladin !Shaman
    note-enUS Buy [Sweet Nectar] and [Goldenbark Apples] from him |only Paladin Shaman
    note-ptBR Compre [Sweet Nectar] e [Goldenbark Apples] dele |only Paladin Shaman
    collect 1708 20 |quest 1145 |q 1145/1 |only Priest Mage Warlock Druid Paladin Shaman
    collect 4539 20 |quest 1145 |q 1145/1 |only !Priest !Mage !Warlock !Druid !Paladin !Shaman
    collect 4539 10 |quest 1145 |q 1145/1 |only Paladin Shaman
step
    only Warrior Shaman
    goto 1413 51.07,29.63
    note-enUS Talk to Korran
    note-ptBR Fale com Korran
    accept 1145
step
    goto 1413 51.5,30.33 |only Warrior Shaman
    goto 1456 45.81,64.71 |only Shaman Warrior
    goto 1456 54.97,51.39
    note-enUS Talk to Devrak |only Warrior Shaman
    note-ptBR Fale com Devrak |only Warrior Shaman
    fly 1456 |only Warrior Shaman |opt
    note-enUS Fly to Thunder Bluff |only Warrior Shaman
    note-ptBR Voe para Thunder Bluff |only Warrior Shaman
    note-enUS Talk to Pala |only Shaman Warrior
    note-ptBR Fale com Pala |only Shaman Warrior
    home |only Shaman Warrior |opt
    note-enUS Set your Hearthstone to Thunder Bluff |only Shaman Warrior
    note-ptBR Defina sua pedra de regresso em Thunder Bluff |only Shaman Warrior
    note-enUS Talk to Zangen
    note-ptBR Fale com Zangen
    turnin 1195
    accept 1196
step
    only Shaman Warrior
    path seq 1456 29.51,29.81 28.39,25.55 |only Shaman Warrior
    goto 1456 22.83,20.88 20 |only Shaman Warrior
    goto 1456 22.83,20.88
    note-enUS Travel toward Zamah inside the cave |only Shaman Warrior
    note-ptBR Vá em direção a Zamah dentro da caverna |only Shaman Warrior
    note-enUS Talk to Zamah
    note-ptBR Fale com Zamah
    turnin 1067
]==])

register([==[
#format 1
#id forever.x.h.27-28-southern-barrens-jj
#name 27-28 Southern Barrens JJ
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Horde
#levels 27-28
#zones 1413
#suffix JJ
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup Experimental (from Classic guides)
#subgroup-ptBR Experimental (adaptado do Classic)
#next forever.x.h.28-30-thousand-needles-jj

step
    only Hunter
    goto 1456 59.14,86.87
    note-enUS Talk to Urek
    note-ptBR Fale com Urek
    train 14319
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warrior
    goto 1456 57.57,85.49
    note-enUS Talk to Ker
    note-ptBR Fale com Ker
    train 871
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Shaman
    path seq 1456 29.81,29.96 |only Shaman
    goto 1456 25.35,30.97 20 |only Shaman
    path seq 1456 22.83,21.13
    goto 1456 23.63,18.8
    note-enUS Travel toward Siln and Tigor |only Shaman
    note-ptBR Vá em direção a Siln e Tigor |only Shaman
    note-enUS Talk to Siln or Tigor
    note-ptBR Fale com Siln ou Tigor
step
    only Priest
    path seq 1456 29.51,29.81 28.39,25.55 |only Priest
    goto 1456 25.65,20.69 20 |only Priest
    goto 1456 25.65,20.69
    note-enUS Go inside the cave toward Cobb |only Priest
    note-ptBR Entre na caverna em direção a Cobb |only Priest
    note-enUS Talk to Cobb
    note-ptBR Fale com Cobb
    train 15430
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    path seq 1456 46.22,49.14 46.01,49.9
    goto 1456 47,49.83
    note-enUS Go up the tower
    note-ptBR Suba a torre
    note-enUS Talk to Tal
    note-ptBR Fale com Tal
    fp
    note-enUS Fly to Camp Taurajo
    note-ptBR Voe para Camp Taurajo
step
    path closest 1413 50.07,52.96 49.99,53.44 46.07,49.11 46.2,49.74 45.39,52.31 45.14,52.37 45.12,52.73 50.07,52.96
    note-enUS Kill Lakota'mani. Loot him for the [Hoof of Lakota'mani]
    note-ptBR Mate Lakota'mani. Saqueie-o para obter o [Hoof of Lakota'mani]
    note-enUS Use the [Hoof of Lakota'mani] to start the quest
    note-ptBR Use o [Hoof of Lakota'mani] para iniciar a missão
    collect 5099 1 |quest 883 |q 883/1
    accept 883
    use 5099
step
    goto 1413 44.86,59.13
    path seq 1413 44.8,59.22 |only Warrior
    goto 1413 44.67,59.42 |only Warrior
    note-enUS Talk to Jorn
    note-ptBR Fale com Jorn
    note-enUS Talk to Jorn and Ruga |only Warrior
    note-ptBR Fale com Jorn e Ruga |only Warrior
    turnin 883
    turnin 1823 |only Warrior
step
    only Warrior
    path seq 1413 44.8,59.22
    goto 1413 44.67,59.42
    note-enUS Talk to Ruga
    note-ptBR Fale com Ruga
    turnin 1823
step
    path closest 1413 44.33,61.78 44.06,62.18 45.57,62.95 45.75,62.52 49.67,59.54 49.42,61.04 49.18,61.45 44.33,61.78
    note-enUS Kill Owatanka. Loot him for [Owatanka's Tailspike]
    note-ptBR Mate Owatanka. Saqueie-o para obter [Owatanka's Tailspike]
    note-enUS Use [Owatanka's Tailspike] to start the quest
    note-ptBR Use [Owatanka's Tailspike] para iniciar a missão
    collect 5102 1 |quest 884 |q 884/1
    accept 884
    use 5102
step
    only Shaman
    path seq 1413 45.19,69.55 42.74,69.72 43.47,71.19 44.69,72.32
    goto 1413 48.87,69.96 45
    path seq 1413 44.76,74.79 43.84,77.28 43.62,77.29 |only Shaman
    goto 1413 43.42,77.41 15 |only Shaman
    goto 1413 43.42,77.41
    note-enUS Kill the Silithid Harvester. Loot it for the [Harvester's Head]
    note-ptBR Mate o Silithid Harvester. Saqueie-o para obter a [Harvester's Head]
    note-enUS Use the [Harvester's Head] to start the quest
    note-ptBR Use o [Harvester's Head] para iniciar a missão
    note-enUS Skip this quest if you can't find him
    note-ptBR Pule esta missão se não conseguir encontrá-lo
    collect 5138 1 |quest 897 |q 897/1 |opt
    accept 897 |opt
    use 5138 |opt
    note-enUS Kill Washte Pawne. Loot him for [Washte Pawne's Feather] |only Shaman
    note-ptBR Mate Washte Pawne. Saqueie-o para obter a [Washte Pawne's Feather] |only Shaman
    note-enUS Use [Washte Pawne's Feather] to start the quest |only Shaman
    note-ptBR Use [Washte Pawne's Feather] para iniciar a missão |only Shaman
    collect 5103 1 |quest 885 |q 885/1 |only Shaman |opt
    accept 885 |only Shaman |opt
    use 5103 |only Shaman |opt
    note-enUS Travel toward Brine |only Shaman
    note-ptBR Vá em direção a Brine |only Shaman
    note-enUS Talk to Brine
    note-ptBR Fale com Brine
    turnin 1534
    accept 220
step
    goto 1413 44.76,74.79 45 |only !Shaman
    path seq 1413 46.14,75.4 46.08,76.33 46.02,76.71 45.91,76.97 45.83,77.21 45.79,78.47 45.86,78.77 46.07,79 46.14,79.37 46.16,79.66 46.09,80.54 46.12,81.25
    goto 1413 46.14,75.4
    note-enUS Kill Washte Pawne. Loot him for [Washte Pawne's Feather]
    note-ptBR Mate Washte Pawne. Saqueie-o para obter a [Washte Pawne's Feather]
    note-enUS Use [Washte Pawne's Feather] to start the quest
    note-ptBR Use [Washte Pawne's Feather] para iniciar a missão
    collect 5103 1 |quest 885 |q 885/1 |opt
    accept 885 |opt
    use 5103 |opt
    note-enUS Talk to Gann
    note-ptBR Fale com Gann
    accept 843
step
    only Shaman Warrior
    path closest 1413 44.85,78.81 44.44,78.97 |only Shaman Warrior
    path closest 1413 44.06,80.02 43.91,80.46 44.03,80.38 44.16,80.46 44.31,80.79 44.66,80.49 45.1,80.3 45.52,80.47 45.46,80.91 44.83,80.95 44.15,81.44 43.79,81.4 43.63,80.97 43.49,80.48 43.24,80.49 42.82,80.23 42.65,79.87 43.07,78.98 43.48,78.95 43.66,79.12 43.8,79.46 44.43,78.71 44.89,78.87 45.12,79.2 45.05,79.75 44.83,79.87 44.37,79.85 44.83,79.87 45.05,79.75 45.12,79.2 44.89,78.87 44.43,78.71 43.8,79.46 43.66,79.12 43.48,78.95 43.07,78.98 42.65,79.87 42.82,80.23 43.24,80.49 43.49,80.48 43.63,80.97 43.79,81.4 44.15,81.44 44.83,80.95 45.46,80.91 45.52,80.47 45.1,80.3 44.66,80.49 44.31,80.79 44.16,80.46 44.03,80.38 43.91,80.46 44.06,80.02 44.37,79.85
    note-enUS Kill Razormane Stalkers and Razormane Pathfinders. Loot them for the [Razormane Backstabber] |only Shaman Warrior
    note-ptBR Mate Razormane Stalkers e Razormane Pathfinders. Saqueie-os para obter o [Razormane Backstabber] |only Shaman Warrior
    note-enUS The Razormane Stalkers are stealthed |only Shaman Warrior
    note-ptBR Os Razormane Stalkers estão em furtividade |only Shaman Warrior
    note-enUS Kill Razormane Seers. Loot them for the [Charred Razormane Wand] |only Shaman Warrior
    note-ptBR Mate Razormane Seers. Saqueie-os para obter a [Charred Razormane Wand] |only Shaman Warrior
    note-enUS Kill Razormane Warfrenzies. Loot them for the [Razormane War Shield] |only Shaman Warrior
    note-ptBR Mate Razormane Warfrenzies. Saqueie-os para obter o [Razormane War Shield] |only Shaman Warrior
    objective 893/1 |only Shaman Warrior |opt
    objective 893/2 |only Shaman Warrior |opt
    objective 893/3 |only Shaman Warrior |opt
    note-enUS Kill Washte Pawne. Loot him for [Washte Pawne's Feather] |only Shaman Warrior
    note-ptBR Mate Washte Pawne. Saqueie-o para obter a [Washte Pawne's Feather] |only Shaman Warrior
    note-enUS Use [Washte Pawne's Feather] to start the quest |only Shaman Warrior
    note-ptBR Use [Washte Pawne's Feather] para iniciar a missão |only Shaman Warrior
    collect 5103 1 |quest 885 |q 885/1 |only Shaman Warrior |opt
    accept 885 |only Shaman Warrior |opt
    use 5103 |only Shaman Warrior |opt
    note-enUS Kill Kuz. Loot him for Kuz's Skull
    note-ptBR Mate Kuz. Saqueie-o para obter o Kuz's Skull
    note-enUS Kuz patrols around slightly
    note-ptBR Kuz patrulha um pouco ao redor
    objective 879/1
step
    only Shaman Warrior
    path seq 1413 43.14,80.75 |only Shaman Warrior
    goto 1413 43.35,81.16 45 |only Shaman Warrior
    path seq 1413 40.31,80.7
    goto 1413 40.14,80.56
    note-enUS Kill Washte Pawne. Loot him for [Washte Pawne's Feather] |only Shaman Warrior
    note-ptBR Mate Washte Pawne. Saqueie-o para obter a [Washte Pawne's Feather] |only Shaman Warrior
    note-enUS Use [Washte Pawne's Feather] to start the quest |only Shaman Warrior
    note-ptBR Use [Washte Pawne's Feather] para iniciar a missão |only Shaman Warrior
    collect 5103 1 |quest 885 |q 885/1 |only Shaman Warrior |opt
    accept 885 |only Shaman Warrior |opt
    use 5103 |only Shaman Warrior |opt
    note-enUS Kill Lok Orcbane. Loot him for Lok's Skull
    note-ptBR Mate Lok Orcbane. Saqueie-o para obter o Lok's Skull
    objective 879/3
step
    path closest 1413 44.85,78.81 44.44,78.97 43.14,80.75 43.35,81.16 |only !Shaman !Warrior
    path closest 1413 42.57,78.81 42.12,78.48 41.49,78.69 41.22,79.72 40.91,80.6 40.55,80.84 41.62,80.92 41.54,82.28 42.48,82.28 42.57,78.81
    note-enUS Kill Washte Pawne. Loot him for [Washte Pawne's Feather] |only !Shaman !Warrior
    note-ptBR Mate Washte Pawne. Saqueie-o para obter a [Washte Pawne's Feather] |only !Shaman !Warrior
    note-enUS Use [Washte Pawne's Feather] to start the quest |only !Shaman !Warrior
    note-ptBR Use [Washte Pawne's Feather] para iniciar a missão |only !Shaman !Warrior
    collect 5103 1 |quest 885 |q 885/1 |only !Shaman !Warrior |opt
    accept 885 |only !Shaman !Warrior |opt
    use 5103 |only !Shaman !Warrior |opt
    note-enUS Kill Razormane Stalkers and Razormane Pathfinders. Loot them for the [Razormane Backstabber]
    note-ptBR Mate Razormane Stalkers e Razormane Pathfinders. Saqueie-os para obter o [Razormane Backstabber]
    note-enUS The Razormane Stalkers are stealthed
    note-ptBR Os Razormane Stalkers estão em furtividade
    objective 893/1 |opt
    note-enUS Kill Razormane Seers. Loot them for the [Charred Razormane Wand]
    note-ptBR Mate Razormane Seers. Saqueie-os para obter a [Charred Razormane Wand]
    note-enUS Kill Razormane Warfrenzies. Loot them for the [Razormane War Shield]
    note-ptBR Mate Razormane Warfrenzies. Saqueie-os para obter o [Razormane War Shield]
    objective 893/2
    objective 893/3
step
    only Shaman Warrior
    path closest 1413 44.07,83.34 43.54,83.14 43.6,83.69 44.07,83.34
    note-enUS Kill Nak. Loot him for Nak's Skull
    note-ptBR Mate Nak. Saqueie-o para obter o Nak's Skull
    objective 879/2
step
    path seq 1413 44.09,83.7 44.15,83.34 44.38,83.05 44.22,82.67 44.1,82.38 43.85,82.25 43.76,80.84 44.14,80.03 44.17,81.02 44.66,81.18 45.08,80.34 45.48,79.89 44.09,83.7 44.15,83.34 44.38,83.05 44.22,82.67 44.1,82.38 43.85,82.25 43.76,80.84 44.14,80.03 44.17,81.02 44.66,81.18 45.08,80.34
    goto 1413 45.48,79.89
    note-enUS Kill Razormane Stalkers and Razormane Pathfinders. Loot them for the [Razormane Backstabber]
    note-ptBR Mate Razormane Stalkers e Razormane Pathfinders. Saqueie-os para obter o [Razormane Backstabber]
    note-enUS The Razormane Stalkers are stealthed
    note-ptBR Os Razormane Stalkers estão em furtividade
    objective 893/1
step
    path seq 1413 47.51,85.04 47.44,85.71 47.94,85.68 48.34,86.19 47.51,85.04 47.44,85.71 47.94,85.68 48.34,86.19 47.51,85.04 47.44,85.71 47.94,85.68 48.34,86.19 47.51,85.04 47.44,85.71 47.94,85.68
    goto 1413 48.34,86.19
    note-enUS Kill Bael'dun Excavators and Bael'dun Foremen
    note-ptBR Mate Bael'dun Excavators e Bael'dun Foremen
    objective 843/1 |opt
    objective 843/2 |opt
    note-enUS Kill Prospector Khazgorm. Loot him for Khazgorm's Journal
    note-ptBR Mate Prospector Khazgorm. Saqueie-o para obter o Khazgorm's Journal
    objective 843/3
step
    path closest 1413 47.22,84.98 47.28,85.74 47.6,85.66 48.43,86.34 48.03,85.46 47.94,84.86 47.37,84.01 46.92,84.22 46.99,85.82 47.22,84.98
    note-enUS Kill Bael'dun Excavators and Bael'dun Foremen
    note-ptBR Mate Bael'dun Excavators e Bael'dun Foremen
    objective 843/1
    objective 843/2
step
    path closest 1413 47.22,84.98 47.28,85.74 47.6,85.66 48.43,86.34 48.03,85.46 47.94,84.86 47.37,84.01 46.92,84.22 46.99,85.82 47.22,84.98
    level 27
    note-enUS Grind to 15500+/32200xp
    note-ptBR Mate monstros até 15500+/32200xp
step
    path seq 1413 46.12,81.25 46.09,80.54 46.16,79.66 46.14,79.37 46.07,79 45.86,78.77 45.79,78.47 45.83,77.21 45.91,76.97 46.02,76.71 46.08,76.33 46.14,75.4
    goto 1413 46.12,81.25
    note-enUS Talk to Gann
    note-ptBR Fale com Gann
    turnin 843
    accept 846
step
    ifonquest 846
    path seq 1413 47.21,79.35 47.22,79.72
    goto 1413 48.63,84.49 110
    note-enUS Kill Washte Pawne. Loot him for [Washte Pawne's Feather]
    note-ptBR Mate Washte Pawne. Saqueie-o para obter a [Washte Pawne's Feather]
    note-enUS Use [Washte Pawne's Feather] to start the quest
    note-ptBR Use [Washte Pawne's Feather] para iniciar a missão
    collect 5103 1 |quest 885 |q 885/1 |opt
    accept 885 |opt
    use 5103 |opt
    note-enUS Travel to Bael Modan
    note-ptBR Vá até Bael Modan
step
    path seq 1413 48.63,84.49
    goto 1413 48.94,86.31
    note-enUS Kill Bael'dun Dwarves. Loot them for their Nitroglycerin, Wood Pulp, and Sodium Nitrate
    note-ptBR Mate Bael'dun Dwarves. Saqueie-os para obter Nitroglycerin, Wood Pulp e Sodium Nitrate
    objective 846/1 |opt
    objective 846/2 |opt
    objective 846/3 |opt
    note-enUS Talk to Feegly
    note-ptBR Fale com Feegly
    accept 857
step
    path seq 1413 48.87,85.62 49.09,85.37 48.85,84.88 49.01,84.48 49.06,84.59 49.38,84.48 49.53,84.42 49.43,84.28
    goto 1413 49.13,84.25
    note-enUS Travel to Bael Modan
    note-ptBR Vá até Bael Modan
    note-enUS Go down to the bottom floor of Bael'dun
    note-ptBR Desça até o andar de baixo de Bael'dun
    note-enUS Open General Twinbraid's Strongbox. Loot it for the Tear of the Moons
    note-ptBR Abra o General Twinbraid's Strongbox. Saqueie-o para obter a Tear of the Moons
    note-enUS Be careful as it is very easy overpull in General Twinbraid's room
    note-ptBR Cuidado, é muito fácil puxar mobs demais na sala do General Twinbraid
    note-enUS Directly pull any mob other than General Twinbraid
    note-ptBR Puxe diretamente qualquer mob que não seja o General Twinbraid
    note-enUS Make sure your cooldowns are available
    note-ptBR Garanta que suas recargas estejam disponíveis
    objective 857/1
step
    path seq 1413 49.43,84.28 49.53,84.42 49.38,84.48 49.06,84.59 49.01,84.48 48.75,84.63
    goto 1413 48.94,86.31
    note-enUS Exit Bael'dun's Keep
    note-ptBR Saia de Bael'dun's Keep
    note-enUS Talk to Feegly
    note-ptBR Fale com Feegly
    turnin 857
step
    path closest 1413 48.96,84.36 48.88,84.02 49.28,83.76 49.22,84.21 49.47,84.41 49.09,84.67 48.96,84.36
    note-enUS Kill Bael'dun Dwarves. Loot them for their Nitroglycerin, Wood Pulp, and Sodium Nitrate
    note-ptBR Mate Bael'dun Dwarves. Saqueie-os para obter Nitroglycerin, Wood Pulp e Sodium Nitrate
    objective 846/1
    objective 846/2
    objective 846/3
step
    path closest 1413 44.85,78.81 44.44,78.97 43.14,80.75 43.35,81.16 47.22,79.72 47.21,79.35 44.76,74.79 44.85,78.81
    note-enUS Talk to Gann
    note-ptBR Fale com Gann
    turnin 846 |opt
    accept 849 |opt
    note-enUS Kill Washte Pawne. Loot him for [Washte Pawne's Feather]
    note-ptBR Mate Washte Pawne. Saqueie-o para obter a [Washte Pawne's Feather]
    note-enUS Use [Washte Pawne's Feather] to start the quest
    note-ptBR Use [Washte Pawne's Feather] para iniciar a missão
    collect 5103 1 |quest 885 |q 885/1
    accept 885
    use 5103
step
    ifonquest 884
    ifonquest 885
    ifonquest 897
    path seq 1413 45.1,57.68
    goto 1413 44.86,59.13
    goto 1413 44.54,59.27 |only Shaman Warrior
    note-enUS Talk to Tatternack, Jorn, and Mangletooth |only Shaman Warrior
    note-ptBR Fale com Tatternack, Jorn e Mangletooth |only Shaman Warrior
    note-enUS Talk to Tatternack and Jorn |only !Shaman !Warrior
    note-ptBR Fale com Tatternack e Jorn |only !Shaman !Warrior
    turnin 893
    accept 1153
    turnin 884
    turnin 885
    turnin 897
    turnin 879 |only Shaman Warrior
    accept 906 |only Shaman Warrior
step
    ifonquest 885
    ifonquest 897
    path seq 1413 45.1,57.68
    goto 1413 44.86,59.13
    goto 1413 44.54,59.27 |only Shaman Warrior
    note-enUS Talk to Tatternack, Jorn, and Mangletooth |only Shaman Warrior
    note-ptBR Fale com Tatternack, Jorn e Mangletooth |only Shaman Warrior
    note-enUS Talk to Tatternack and Jorn |only !Shaman !Warrior
    note-ptBR Fale com Tatternack e Jorn |only !Shaman !Warrior
    turnin 893
    accept 1153
    turnin 885
    turnin 897
    turnin 879 |only Shaman Warrior
    accept 906 |only Shaman Warrior
step
    ifonquest 884
    ifonquest 897
    path seq 1413 45.1,57.68
    goto 1413 44.86,59.13
    goto 1413 44.54,59.27 |only Shaman Warrior
    note-enUS Talk to Tatternack, Jorn, and Mangletooth |only Shaman Warrior
    note-ptBR Fale com Tatternack, Jorn e Mangletooth |only Shaman Warrior
    note-enUS Talk to Tatternack and Jorn |only !Shaman !Warrior
    note-ptBR Fale com Tatternack e Jorn |only !Shaman !Warrior
    turnin 893
    accept 1153
    turnin 884
    turnin 897
    turnin 879 |only Shaman Warrior
    accept 906 |only Shaman Warrior
step
    ifonquest 884
    ifonquest 885
    path seq 1413 45.1,57.68
    goto 1413 44.86,59.13
    goto 1413 44.54,59.27 |only Shaman Warrior
    note-enUS Talk to Tatternack, Jorn, and Mangletooth |only Shaman Warrior
    note-ptBR Fale com Tatternack, Jorn e Mangletooth |only Shaman Warrior
    note-enUS Talk to Tatternack and Jorn |only !Shaman !Warrior
    note-ptBR Fale com Tatternack e Jorn |only !Shaman !Warrior
    turnin 893
    accept 1153
    turnin 884
    turnin 885
    turnin 879 |only Shaman Warrior
    accept 906 |only Shaman Warrior
step
    ifonquest 884
    path seq 1413 45.1,57.68
    goto 1413 44.86,59.13
    goto 1413 44.54,59.27 |only Shaman Warrior
    note-enUS Talk to Tatternack, Jorn, and Mangletooth |only Shaman Warrior
    note-ptBR Fale com Tatternack, Jorn e Mangletooth |only Shaman Warrior
    note-enUS Talk to Tatternack and Jorn |only !Shaman !Warrior
    note-ptBR Fale com Tatternack e Jorn |only !Shaman !Warrior
    turnin 893
    accept 1153
    turnin 884
    turnin 879 |only Shaman Warrior
    accept 906 |only Shaman Warrior
step
    ifonquest 885
    path seq 1413 45.1,57.68
    goto 1413 44.86,59.13
    goto 1413 44.54,59.27 |only Shaman Warrior
    note-enUS Talk to Tatternack, Jorn, and Mangletooth |only Shaman Warrior
    note-ptBR Fale com Tatternack, Jorn e Mangletooth |only Shaman Warrior
    note-enUS Talk to Tatternack and Jorn |only !Shaman !Warrior
    note-ptBR Fale com Tatternack e Jorn |only !Shaman !Warrior
    turnin 893
    accept 1153
    turnin 885
    turnin 879 |only Shaman Warrior
    accept 906 |only Shaman Warrior
step
    ifonquest 897
    path seq 1413 45.1,57.68
    goto 1413 44.86,59.13
    goto 1413 44.54,59.27 |only Shaman Warrior
    note-enUS Talk to Tatternack, Jorn, and Mangletooth |only Shaman Warrior
    note-ptBR Fale com Tatternack, Jorn e Mangletooth |only Shaman Warrior
    note-enUS Talk to Tatternack and Jorn |only !Shaman !Warrior
    note-ptBR Fale com Tatternack e Jorn |only !Shaman !Warrior
    turnin 893
    accept 1153
    turnin 897
    turnin 879 |only Shaman Warrior
    accept 906 |only Shaman Warrior
step
    goto 1413 45.1,57.68
    goto 1413 44.54,59.27 |only Shaman Warrior
    note-enUS Talk to Tatternack and Mangletooth |only Shaman Warrior
    note-ptBR Fale com Tatternack e Mangletooth |only Shaman Warrior
    note-enUS Talk to Tatternack |only !Shaman !Warrior
    note-ptBR Fale com Tatternack |only !Shaman !Warrior
    turnin 893
    accept 1153
    turnin 879 |only Shaman Warrior
    accept 906 |only Shaman Warrior
step
    path seq 1413 46.12,81.25 46.09,80.54 46.16,79.66 46.14,79.37 46.07,79 45.86,78.77 45.79,78.47 45.83,77.21 45.91,76.97 46.02,76.71 46.08,76.33 46.14,75.4
    goto 1413 46.12,81.25
    note-enUS Talk to Gann
    note-ptBR Fale com Gann
    turnin 846
    accept 849
step
    goto 1413 46.97,85.63
    note-enUS Click the Bael Modan Flying Machine atop the platform
    note-ptBR Clique na Bael Modan Flying Machine no topo da plataforma
    note-enUS This has a 50 yard range
    note-ptBR Isto tem alcance de 50 jardas
    objective 849/1
step
    path seq 1413 46.12,81.25 46.09,80.54 46.16,79.66 46.14,79.37 46.07,79 45.86,78.77 45.79,78.47 45.83,77.21 45.91,76.97 46.02,76.71 46.08,76.33 46.14,75.4
    goto 1413 46.12,81.25
    note-enUS Talk to Gann
    note-ptBR Fale com Gann
    turnin 849
]==])

register([==[
#format 1
#id forever.x.h.28-30-thousand-needles-jj
#name 28-30 Thousand Needles JJ
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Horde
#levels 28-30
#zones 1441
#suffix JJ
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup Experimental (from Classic guides)
#subgroup-ptBR Experimental (adaptado do Classic)

step
    goto 1441 32.24,22.18
    note-enUS Talk to Moonhorn
    note-ptBR Fale com Moonhorn
    accept 4542
step
    path seq 1441 38.46,32.6
    goto 1441 38.61,31.49 50
    goto 1441 34.17,26.08 45 |only !Mage !Paladin
    goto 1441 34.17,26.08 45 |only Mage
    goto 1441 34.17,26.08 45 |only Paladin
    path seq 1441 46.73,48.27
    goto 1441 45.91,49.91 25
    note-enUS Kill the Galak Messenger. Loot him for the [Assassination Note]
    note-ptBR Mate o Galak Messenger. Saqueie-o para obter a [Assassination Note]
    note-enUS Use the [Assassination Note] to start the quest
    note-ptBR Use o [Assassination Note] para iniciar a missão
    note-enUS He spawns at Splithoof Crag (the eastern Centaur camp)
    note-ptBR Ele surge em Splithoof Crag (o acampamento centauro a leste)
    collect 12564 1 |quest 4881 |q 4881/1 |opt
    accept 4881 |opt
    use 12564 |opt
    note-enUS Take the lift down to Thousand Needles |only !Mage !Paladin
    note-ptBR Pegue o elevador descendo até Thousand Needles |only !Mage !Paladin
    note-enUS Jump down. Cast [Blink] just before hitting the bottom to avoid taking fall damage |only Mage
    note-ptBR Pule. Lance [Blink] logo antes de chegar ao chão para não sofrer dano de queda |only Mage
    note-enUS Jump down. Cast [Blessing of Protection] just before hitting the bottom to avoid taking fall damage |only Paladin
    note-ptBR Pule. Lance [Blessing of Protection] logo antes de chegar ao chão para não sofrer dano de queda |only Paladin
    note-enUS Travel to Freewind Post's Elevators
    note-ptBR Vá até Freewind Post's Elevators
    note-enUS Take the Elevator up to Freewind
    note-ptBR Pegue o elevador subindo até Freewind
step
    path seq 1441 46.21,50.39 46,50.86 45.97,51.1 46.14,51.72 45.7,50.63 45.65,50.8 44.64,50.29 44.83,48.95
    goto 1441 45.05,48.9
    note-enUS Talk to Elosai, the Wanted Poster, Rau, Longhorn, Hagar, and Elu
    note-ptBR Fale com Elosai, o Wanted Poster, Rau, Longhorn, Hagar e Elu
    accept 9431
    accept 5147
    turnin 1196
    accept 1197
    turnin 4542
    accept 4841
    accept 4821
    accept 4767
step
    only Hunter
    path seq 1441 46.21,50.39 46,50.86 45.97,51.1 46.14,51.72 45.7,50.63 45.65,50.8 44.64,50.29 44.83,48.95
    goto 1441 45.05,48.9
    note-enUS Talk to Elosai, the Wanted Poster, Rau, and Longhorn
    note-ptBR Fale com Elosai, o Wanted Poster, Rau e Longhorn
    accept 9431
    accept 5147
    turnin 1196
    accept 1197
    turnin 4542
    accept 4841
    accept 4821
    accept 4767
step
    only Hunter
    goto 1441 44.89,50.68
    note-enUS Talk to Starn
    note-ptBR Fale com Starn
    vendor
    note-enUS Buy the [Dense Shortbow] if it's up and [Razor Arrows] from him
    note-ptBR Compre o [Dense Shortbow] se estiver disponível e [Razor Arrows] dele
    collect 3030 2000 |quest 4767 |q 4767/1
step
    only Hunter
    goto 1441 44.89,50.68
    note-enUS Talk to Starn
    note-ptBR Fale com Starn
    vendor
    note-enUS Buy the [Dense Shortbow] from him if it's up
    note-ptBR Compre o [Dense Shortbow] dele, se estiver disponível
step
    only Hunter
    goto 1441 44.89,50.68
    note-enUS Talk to Starn
    note-ptBR Fale com Starn
    note-enUS Buy [Razor Arrows] from him
    note-ptBR Compre [Razor Arrows] dele
    collect 3030 2000 |quest 4767 |q 4767/1
step
    only Hunter
    path seq 1441 44.64,50.29 44.83,48.95
    goto 1441 45.05,48.9
    note-enUS Remember to equip the [Dense Shortbow] when you reach Level 30 |only Hunter
    note-ptBR Lembre-se de equipar o [Dense Shortbow] quando chegar ao nível 30 |only Hunter
    use 11305 |only Hunter |opt
    note-enUS Equip the [Dense Shortbow] |only Hunter
    note-ptBR Equipe o [Dense Shortbow] |only Hunter
    use 11305 |only Hunter |opt
    note-enUS Talk to Hagar and Elu
    note-ptBR Fale com Hagar e Elu
    accept 4821
    accept 4767
step
    goto 1441 45.14,49.11
    note-enUS Talk to Nyse
    note-ptBR Fale com Nyse
    fp
    note-enUS Get the Freewind Post flight path
    note-ptBR Pegue o ponto de voo de Freewind Post
step
    path seq 1441 44.12,37.22 44.44,36.32 43.14,35.19 42.11,34.54
    goto 1441 42.01,31.47 20
    note-enUS Kill Galak Scouts, Galak Wranglers, and Galak Windchasers
    note-ptBR Mate Galak Scouts, Galak Wranglers e Galak Windchasers
    note-enUS Kill every Galak Scout that you see
    note-ptBR Mate todo Galak Scout que encontrar
    objective 4841/1 |opt
    objective 4841/2 |opt
    objective 4841/3 |opt
    note-enUS Enter the cave
    note-ptBR Entre na caverna
    note-enUS Travel toward the Ancient Brazier
    note-ptBR Vá em direção a Ancient Brazier
    note-enUS Open the Ancient Brazier. Loot it for the Cloven Hoof
    note-ptBR Abra o Ancient Brazier. Saqueie-o para obter o Cloven Hoof
    objective 1197/1
step
    path closest 1441 38.46,32.6 43.12,36.86 41.18,34.83 40.42,34.45 39,32.56 39.68,34.93 39.76,35.82 39.32,36.93 40.43,37.96 41.04,39.03 41.12,41.34 42.33,40.54 42.84,39.09 44.15,40.72 44.98,41.03 45.66,43.81 47.23,41.98 48.57,43.53 49.39,41.24 48.14,40.43 47.11,40.29 45.89,40.32 44.43,38.36 43.12,36.86
    note-enUS Kill the Galak Messenger. Loot him for the [Assassination Note]
    note-ptBR Mate o Galak Messenger. Saqueie-o para obter a [Assassination Note]
    note-enUS Use the [Assassination Note] to start the quest
    note-ptBR Use o [Assassination Note] para iniciar a missão
    note-enUS He spawns at Splithoof Crag (the eastern Centaur camp)
    note-ptBR Ele surge em Splithoof Crag (o acampamento centauro a leste)
    collect 12564 1 |quest 4881 |q 4881/1 |opt
    accept 4881 |opt
    use 12564 |opt
    note-enUS Kill Galak Scouts, Galak Wranglers, and Galak Windchasers
    note-ptBR Mate Galak Scouts, Galak Wranglers e Galak Windchasers
    objective 4841/1
    objective 4841/2
    objective 4841/3
step
    path seq 1441 54.57,44.36 53.71,42.59
    goto 1441 53.95,41.49 10
    note-enUS Kill Gravelsnout Surveyors, Gravelsnout Diggers, and Gibblesnik (if he's up). Loot them for an Ore Sample
    note-ptBR Mate Gravelsnout Surveyors, Gravelsnout Diggers e Gibblesnik (se estiver disponível). Saqueie-os para obter uma Ore Sample
    objective 1153/1 |opt
    note-enUS Travel toward Dorn
    note-ptBR Vá em direção a Dorn
    note-enUS Talk to Dorn
    note-ptBR Fale com Dorn
    accept 1149
step
    goto 1441 26.63,34.23
    note-enUS Wait out the RP
    note-ptBR Espere o RP terminar
    note-enUS Jump off the end of the wooden platform. You'll get teleported instead of dying from fall damage
    note-ptBR Pule da ponta da plataforma de madeira. Você será teleportado em vez de morrer pelo dano de queda
    objective 1149/1
step
    goto 1441 53.95,41.49
    note-enUS Talk to Dorn
    note-ptBR Fale com Dorn
    turnin 1149
    accept 1150
step
    path seq 1441 52.65,48.02 56.36,50.39 59.92,54.32 60.42,58.75 63.8,57.08 64.02,60.43 65.36,61.78 68.14,60.31 65.63,50.6 64.09,48.19 59.92,54.32 60.42,58.75 63.8,57.08 64.02,60.43 65.36,61.78 68.14,60.31 65.63,50.6
    goto 1441 64.09,48.19
    note-enUS Kill Gravelsnout Surveyors, Gravelsnout Diggers, and Gibblesnik (if he's up). Loot them for an Ore Sample
    note-ptBR Mate Gravelsnout Surveyors, Gravelsnout Diggers e Gibblesnik (se estiver disponível). Saqueie-os para obter uma Ore Sample
    objective 1153/1 |opt
    note-enUS Loot the Alien Egg on the ground
    note-ptBR Saqueie o Alien Egg no chão
    objective 4821/1 |opt
    note-enUS Kill Thundering Boulderkins. Loot them for their Purifying Earth
    note-ptBR Mate Thundering Boulderkins. Saqueie-os para obter a Purifying Earth deles
    objective 9431/1
step
    path seq 1441 51.89,43.02 53.41,46.19 54.05,44.96 53.47,46.65 52.61,48.28 53.64,48.5 51.48,48.06 59.69,47.76 62.21,47.76 62.63,48.38 64.01,47.52 63.92,46.63 63.1,45.53 65.83,51.44 65.44,50.11 64.91,50.3 66.11,49.91 66.32,49.13 59.79,58.16 58.87,58.69 57.66,57.7 58.93,57.68 58.94,56.55 58.97,54.98 59.32,53.69
    goto 1441 59.79,58.16
    note-enUS Kill Gravelsnout Surveyors, Gravelsnout Diggers, and Gibblesnik (if he's up). Loot them for an Ore Sample
    note-ptBR Mate Gravelsnout Surveyors, Gravelsnout Diggers e Gibblesnik (se estiver disponível). Saqueie-os para obter uma Ore Sample
    objective 1153/1
step
    path seq 1441 52.34,55.24 37.63,56.11 56.36,50.39 52.34,55.24 37.63,56.11 56.36,50.39 52.34,55.24 37.63,56.11 56.36,50.39 52.34,55.24 37.63,56.11 56.36,50.39 52.34,55.24 37.63,56.11
    goto 1441 56.36,50.39
    note-enUS Loot the Alien Egg on the ground
    note-ptBR Saqueie o Alien Egg no chão
    objective 4821/1
step
    path seq 1441 46.73,48.27 45.97,51.1 46.14,51.72 45.7,50.63 45.65,50.8
    goto 1441 44.64,50.29
    note-enUS Travel to Freewind Post's Elevators
    note-ptBR Vá até Freewind Post's Elevators
    note-enUS Talk to Rau, Longhorn, and Hagar
    note-ptBR Fale com Rau, Longhorn e Hagar
    turnin 1197
    turnin 4841
    accept 5064
    turnin 4821
    accept 4865
step
    path seq 1441 45.97,51.1 46.14,51.72 45.7,50.63
    goto 1441 45.65,50.8
    note-enUS Talk to Rau and Longhorn
    note-ptBR Fale com Rau e Longhorn
    turnin 1197
    turnin 4841
    accept 5064
step
    only Hunter
    goto 1441 44.89,50.68
    note-enUS Talk to Starn
    note-ptBR Fale com Starn
    vendor
    note-enUS Buy the [Dense Shortbow] if it's up and [Razor Arrows] from him
    note-ptBR Compre o [Dense Shortbow] se estiver disponível e [Razor Arrows] dele
    collect 3030 2000 |quest 4767 |q 4767/1
step
    only Hunter
    goto 1441 44.89,50.68
    note-enUS Talk to Starn
    note-ptBR Fale com Starn
    vendor
    note-enUS Buy the [Dense Shortbow] from him if it's up
    note-ptBR Compre o [Dense Shortbow] dele, se estiver disponível
step
    only Hunter
    goto 1441 44.89,50.68
    note-enUS Talk to Starn
    note-ptBR Fale com Starn
    note-enUS Buy [Razor Arrows] from him
    note-ptBR Compre [Razor Arrows] dele
    collect 3030 2000 |quest 4767 |q 4767/1
step
    only Hunter
    goto 1441 44.64,50.29
    note-enUS Remember to equip the [Dense Shortbow] when you reach Level 30 |only Hunter
    note-ptBR Lembre-se de equipar o [Dense Shortbow] quando chegar ao nível 30 |only Hunter
    use 11305 |only Hunter |opt
    note-enUS Equip the [Dense Shortbow] |only Hunter
    note-ptBR Equipe o [Dense Shortbow] |only Hunter
    use 11305 |only Hunter |opt
    note-enUS Talk to Hagar
    note-ptBR Fale com Hagar
    turnin 4821
    accept 4865
step
    path seq 1441 27.59,49.86 28.65,51.3 27.29,51.3 26.89,52.07 26.34,52.68 26.66,53.55 27.14,54.07 26.97,55.09 25.84,54.78 26.16,55.89 26.69,55.62
    goto 1441 25.9,55.23
    note-enUS Travel toward Grenka's Cave
    note-ptBR Vá em direção a Grenka's Cave
    note-enUS Be careful as Screeching Windcallers cast [Gust of Wind], a 4-second AoE stun within 10 yards of the Screeching Windcaller, and Screeching Harpies cast [Deafening Screech], an 8 second silence
    note-ptBR Cuidado, os Screeching Windcallers lançam [Gust of Wind], um atordoamento em área de 4 segundos num raio de 10 metros do Screeching Windcaller, e os Screeching Harpies lançam [Deafening Screech], um silêncio de 8 segundos
    note-enUS Travel toward the Harpy Foodstuffs
    note-ptBR Vá em direção a Harpy Foodstuffs
    note-enUS Open the Harpy Foodstuffs on the ground to summon Grenka
    note-ptBR Abra os Harpy Foodstuffs no chão para invocar Grenka
    note-enUS Kill Grenka Bloodscreech. Loot her for Grenka's Claw
    note-ptBR Mate Grenka Bloodscreech. Saqueie-a para obter a Grenka's Claw
    objective 1150/1
step
    level 29
    note-enUS Grind to level 29
    note-ptBR Mate monstros até o nível 29
step
    path seq 1441 14.41,32.44 14.04,32.37 11.31,33.07 9.57,34.9 10.68,40.95 11.98,36.72 13.91,39.11 11.31,33.07 9.57,34.9 10.68,40.95 11.98,36.72
    goto 1441 13.91,39.11 50
    note-enUS Kill Steelsnap. Loot him for Steelsnap's Rib
    note-ptBR Mate Steelsnap. Saqueie-o para obter a Steelsnap's Rib
    objective 1131/1 |opt
    note-enUS Travel toward Highperch
    note-ptBR Vá em direção a Highperch
    note-enUS Loot Highperch Wyvern Eggs on the ground
    note-ptBR Saqueie Highperch Wyvern Eggs no chão
    objective 4767/1
step
    path seq 1441 13.18,39.55 13.52,40.27 14.01,40.27 14.92,39.63 16.46,41.09
    goto 1441 17.89,40.57 20
    note-enUS Loot Highperch Wyvern Eggs on the ground
    note-ptBR Saqueie Highperch Wyvern Eggs no chão
    objective 4767/1 |opt
    note-enUS Run up the path. Travel toward Pao'ka
    note-ptBR Suba o caminho correndo. Vá em direção a Pao'ka
    note-enUS Talk to Pao'ka to begin the escort
    note-ptBR Fale com Pao'ka para iniciar a escolta
    accept 4770
step
    path seq 1441 11.06,34.95
    goto 1441 15.17,32.66
    note-enUS Loot Highperch Wyvern Eggs on the ground
    note-ptBR Saqueie Highperch Wyvern Eggs no chão
    note-enUS Make sure you're doing this as you're escorting Pao'ka
    note-ptBR Faça isso enquanto escolta Pao'ka
    objective 4767/1 |opt
    note-enUS Escort Pao'ka
    note-ptBR Escolte Pao'ka
    note-enUS Three Highperch Wyverns will spawn once Pao'ka reaches the middle of Highperch. You only need to aggro the eastern one and the others will disappear
    note-ptBR Três Highperch Wyverns surgirão quando Pao'ka chegar ao meio de Highperch. Você só precisa puxar a atenção da que está a leste e as outras desaparecerão
    objective 4770/1
step
    path seq 1441 14.41,32.44 14.04,32.37 11.31,33.07 9.57,34.9 10.68,40.95 11.98,36.72 13.91,39.11 11.31,33.07 9.57,34.9 10.68,40.95 11.98,36.72
    goto 1441 13.91,39.11 50
    note-enUS Travel toward Highperch
    note-ptBR Vá em direção a Highperch
    note-enUS Loot Highperch Wyvern Eggs on the ground
    note-ptBR Saqueie Highperch Wyvern Eggs no chão
    objective 4767/1
step
    goto 1441 21.06,31.87
    note-enUS Kill Steelsnap. Loot him for Steelsnap's Rib
    note-ptBR Mate Steelsnap. Saqueie-o para obter a Steelsnap's Rib
    objective 1131/1 |opt
    note-enUS Talk to Laer
    note-ptBR Fale com Laer
    note-enUS Buy [Sweet Nectar] from him |only Priest Mage Warlock Druid
    note-ptBR Compre [Sweet Nectar] dele |only Priest Mage Warlock Druid
    note-enUS Buy [Mulgore Spice Bread] from him |only !Priest !Mage !Warlock !Druid !Paladin
    note-ptBR Compre [Mulgore Spice Bread] dele |only !Priest !Mage !Warlock !Druid !Paladin
    note-enUS Buy [Sweet Nectar] and [Mulgore Spice Bread] from him |only Paladin
    note-ptBR Compre [Sweet Nectar] e [Mulgore Spice Bread] dele |only Paladin
    collect 1708 20 |quest 1145 |q 1145/1 |only Priest Mage Warlock Druid Paladin
    collect 4544 20 |quest 1145 |q 1145/1 |only !Priest !Mage !Warlock !Druid !Paladin
    collect 4544 10 |quest 1145 |q 1145/1 |only Paladin
step
    ifonquest 4881
    path seq 1441 21.25,32.05 21.43,32.35 21.54,32.35
    goto 1441 21.43,32.55
    note-enUS Talk to Kanati, Motega, and Wizlo
    note-ptBR Fale com Kanati, Motega e Wizlo
    note-enUS Turn in quickly, as turning in "Assassination Plot" will summon three Galak Assassins that you have to protect Kanati from
    note-ptBR Entregue rápido, pois entregar "Assassination Plot" invoca três Galak Assassins dos quais você terá que proteger Kanati
    turnin 4881
    accept 4966
    turnin 4865
    accept 5062
    turnin 4770
    turnin 9431
    accept 9433
    note-enUS A Dip in the Moonwell
    note-ptBR A Dip in the Moonwell
    accept 5151
step
    ifturnedin 4881
    path seq 1441 21.25,32.05 21.43,32.35 21.54,32.35
    goto 1441 21.43,32.55
    note-enUS Talk to Kanati, Motega, and Wizlo
    note-ptBR Fale com Kanati, Motega e Wizlo
    note-enUS Turn in quickly, as turning in "Assassination Plot" will summon three Galak Assassins that you have to protect Kanati from
    note-ptBR Entregue rápido, pois entregar "Assassination Plot" invoca três Galak Assassins dos quais você terá que proteger Kanati
    accept 4966
    turnin 4865
    accept 5062
    turnin 4770
    turnin 9431
    accept 9433
    note-enUS A Dip in the Moonwell
    note-ptBR A Dip in the Moonwell
    accept 5151
step
    path seq 1441 21.43,32.35 21.54,32.35
    goto 1441 21.43,32.55
    note-enUS Talk to Motega and Wizlo
    note-ptBR Fale com Motega e Wizlo
    turnin 4865
    accept 5062
    turnin 4770
    turnin 9431
    accept 9433
    note-enUS A Dip in the Moonwell
    note-ptBR A Dip in the Moonwell
    accept 5151
step
    ifonquest 4966
    goto 1441 21.25,32.05
    note-enUS Kill the Galak Assassins to protect Kanati
    note-ptBR Mate os Galak Assassins para proteger Kanati
    objective 4966/1
step
    ifcomplete 4966
    goto 1441 21.25,32.05
    note-enUS Talk to Kanati
    note-ptBR Fale com Kanati
    turnin 4966
step
    ifonquest 9433
    path seq 1441 38.46,32.6 11.99,18.89 11.53,18.1 10.62,17.87
    goto 1441 9.44,18.69 8
    note-enUS Kill the Galak Messenger. Loot him for the [Assassination Note]
    note-ptBR Mate o Galak Messenger. Saqueie-o para obter a [Assassination Note]
    note-enUS Use the [Assassination Note] to start the quest
    note-ptBR Use o [Assassination Note] para iniciar a missão
    note-enUS He spawns at Splithoof Crag (the eastern Centaur camp)
    note-ptBR Ele surge em Splithoof Crag (o acampamento centauro a leste)
    collect 12564 1 |quest 4881 |q 4881/1 |opt
    accept 4881 |opt
    use 12564 |opt
    note-enUS Travel toward the Concealed Control Panel
    note-ptBR Vá em direção a Concealed Control Panel
step
    goto 1441 9.44,18.69
    goto 1444 89.55,46.3
    note-enUS Use the [Robotron Control Unit] next to the Concealed Control Panel to summon the Robotron
    note-ptBR Use o [Robotron Control Unit] ao lado do Concealed Control Panel para invocar o Robotron
    note-enUS Use "Gather Water" (4) when inside the Moonwell to loot the Thalanaar Moonwell Water
    note-ptBR Use "Gather Water" (4) dentro do Moonwell para saquear a Thalanaar Moonwell Water
    note-enUS Dismiss the Robotron after looting the Thalanaar Moonwell Water
    note-ptBR Dispense o Robotron depois de saquear a Thalanaar Moonwell Water
    objective 9433/1
    use 23675
step
    path seq 1441 38.46,32.6 11.5,21.61 11.88,20.9 12.89,19.97 14.49,20.04 15.69,18.65 16.2,18.53 16.7,18.61 17.28,18.93 17.66,19.46 17.96,20.18 17.87,20.78 17.54,21.49 17.24,22.32 17.66,22.98 18.11,23.65 18.57,24.07 18.68,24.68 18.64,25.9 18.48,26.74 17.82,27.5 17.19,29.6 15.67,31.56 15.08,31.63 14.34,30.13 13.75,28.54 13.36,26.97 13.01,26.31 11.91,25.02 11.55,24.44 11.49,24.07 11.16,23.21 11.2,22.29
    goto 1441 11.5,21.61
    note-enUS Kill the Galak Messenger. Loot him for the [Assassination Note]
    note-ptBR Mate o Galak Messenger. Saqueie-o para obter a [Assassination Note]
    note-enUS Use the [Assassination Note] to start the quest
    note-ptBR Use o [Assassination Note] para iniciar a missão
    note-enUS He spawns at Splithoof Crag (the eastern Centaur camp)
    note-ptBR Ele surge em Splithoof Crag (o acampamento centauro a leste)
    collect 12564 1 |quest 4881 |q 4881/1 |opt
    accept 4881 |opt
    use 12564 |opt
    note-enUS Kill Steelsnap. Loot him for Steelsnap's Rib
    note-ptBR Mate Steelsnap. Saqueie-o para obter a Steelsnap's Rib
    note-enUS He patrols counter-clockwise
    note-ptBR Ele patrulha em sentido anti-horário
    objective 1131/1
step
    ifonquest 4881
    path seq 1441 21.25,32.05
    goto 1441 21.43,32.55
    note-enUS Talk to Kanati and Wizlo
    note-ptBR Fale com Kanati e Wizlo
    note-enUS Turn in quickly, as turning in "Assassination Plot" will summon three Galak Assassins that you have to protect Kanati from
    note-ptBR Entregue rápido, pois entregar "Assassination Plot" invoca três Galak Assassins dos quais você terá que proteger Kanati
    turnin 4881
    accept 4966
    turnin 9433
    accept 9434
step
    ifturnedin 4881
    ifnotturnedin 4966
    path seq 1441 21.25,32.05
    goto 1441 21.43,32.55
    note-enUS Talk to Kanati and Wizlo
    note-ptBR Fale com Kanati e Wizlo
    note-enUS Turn in quickly, as turning in "Assassination Plot" will summon three Galak Assassins that you have to protect Kanati from
    note-ptBR Entregue rápido, pois entregar "Assassination Plot" invoca três Galak Assassins dos quais você terá que proteger Kanati
    accept 4966
    turnin 9433
    accept 9434
step
    goto 1441 21.43,32.55
    note-enUS Talk to Wizlo
    note-ptBR Fale com Wizlo
    turnin 9433
    accept 9434
step
    ifonquest 4881
    goto 1441 21.25,32.05
    note-enUS Talk to Kanati
    note-ptBR Fale com Kanati
    turnin 4881
    accept 4966
step
    ifturnedin 4881
    goto 1441 21.25,32.05
    note-enUS Talk to Kanati
    note-ptBR Fale com Kanati
    accept 4966
step
    ifonquest 4966
    goto 1441 21.25,32.05
    note-enUS Kill the Galak Assassins to protect Kanati
    note-ptBR Mate os Galak Assassins para proteger Kanati
    objective 4966/1
step
    ifcomplete 4966
    goto 1441 21.25,32.05
    note-enUS Talk to Kanati
    note-ptBR Fale com Kanati
    turnin 4966
step
    path seq 1441 38.46,32.6 18.32,22.1 18.72,22.53 18.47,23.06 18.7,24.42 18.63,26.19 18.98,26.71 19.46,27.04 19.96,27.67 20.45,27.87 20.83,28.26 22.05,30.61 24.56,32.76 25.29,34.23 27.34,34.02 28.24,33.37 28.64,33.43 29.24,33.96 29.51,33.89 30.69,32.43 31.55,30.61 32.29,30.52 33.27,30.86 33.81,30.12 34.25,29.49 35.19,28.11 35.84,28.59 36.57,29.47 37.34,29.29 38.81,31.73
    goto 1441 39.51,33.43
    note-enUS Kill the Galak Messenger. Loot him for the [Assassination Note]
    note-ptBR Mate o Galak Messenger. Saqueie-o para obter a [Assassination Note]
    note-enUS Use the [Assassination Note] to start the quest
    note-ptBR Use o [Assassination Note] para iniciar a missão
    note-enUS He spawns at Splithoof Crag (the eastern Centaur camp)
    note-ptBR Ele surge em Splithoof Crag (o acampamento centauro a leste)
    collect 12564 1 |quest 4881 |q 4881/1
    accept 4881
    use 12564
step
    ifonquest 4881
    goto 1441 21.25,32.05
    note-enUS Talk to Kanati
    note-ptBR Fale com Kanati
    turnin 4881
    accept 4966
step
    ifturnedin 4881
    goto 1441 21.25,32.05
    note-enUS Talk to Kanati
    note-ptBR Fale com Kanati
    accept 4966
step
    ifonquest 4966
    goto 1441 21.25,32.05
    note-enUS Kill the Galak Assassins to protect Kanati
    note-ptBR Mate os Galak Assassins para proteger Kanati
    objective 4966/1
step
    ifcomplete 4966
    goto 1441 21.25,32.05
    note-enUS Talk to Kanati
    note-ptBR Fale com Kanati
    turnin 4966
step
    path closest 1441 36.58,38.77 37.77,38.17 36.63,36.23 34.96,33.22 33.37,32.85 33.67,34.09 34.88,34.82 35.62,36.2 36.05,37.41 36.58,38.77
    note-enUS Loot the Incendia Agave Plants on the ground and underwater
    note-ptBR Saqueie as Incendia Agave Plants no chão e debaixo d'água
    note-enUS Scalding Elementals and Boiling Elementals are immune to frost damage, and highly resistant to fire. Try to avoid them/use Arcane spells |only Mage
    note-ptBR Scalding Elementals e Boiling Elementals são imunes a dano de gelo e altamente resistentes a fogo. Tente evitá-los ou use feitiços Arcanos |only Mage
    note-enUS Be careful as Boiling Elementals cast [Steam Jet], reducing your chance to hit by 30% for 10 seconds |only Warrior Rogue Paladin
    note-ptBR Cuidado, os Boiling Elementals lançam [Steam Jet], reduzindo sua chance de acerto em 30% por 10 segundos |only Warrior Rogue Paladin
    note-enUS Be careful as Scalding Elementals cast [Scald], instantly dealing 150 fire damage and stunning you for 4 seconds
    note-ptBR Cuidado, os Scalding Elementals lançam [Scald], causando instantaneamente 150 de dano de fogo e atordoando você por 4 segundos
    objective 5062/1
step
    path seq 1456 46.85,66.08 46.84,67.98 54.27,76.87
    goto 1456 61.54,80.92 15
    hearth |opt
    note-enUS Hearth to Thunder Bluff
    note-ptBR Use a pedra de regresso para Thunder Bluff
    note-enUS Travel toward Melor
    note-ptBR Vá em direção a Melor
    note-enUS Talk to Melor
    note-ptBR Fale com Melor
    turnin 1131
    accept 1136
step
    only Hunter
    goto 1456 54.97,51.39
    note-enUS Talk to Urek
    note-ptBR Fale com Urek
    train 5384
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warrior
    goto 1456 57.23,87.36
    note-enUS Talk to Torm
    note-ptBR Fale com Torm
    accept 1718
    train 7369
    note-enUS Train your class spells
    note-ptBR Treine your class spells
    train 7369
step
    only Warrior
    goto 1456 57.23,87.36
    note-enUS Talk to Torm
    note-ptBR Fale com Torm
    accept 1718
step
    path seq 1456 61.92,75.32 60.98,62.92 58.88,46.58 60.12,42.63 61.27,41.59 61.45,40.15 68.96,33.92
    goto 1456 69.86,30.91 10
    note-enUS Travel toward Magatha
    note-ptBR Vá em direção a Magatha
    note-enUS Talk to Magatha
    note-ptBR Fale com Magatha
    turnin 5062
    accept 5088
step
    only Druid
    goto 1456 76.79,31.79
    note-enUS Talk to Kym
    note-ptBR Fale com Kym
    train 5234
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Mage
    path seq 1456 67.69,28.87 55.85,34.51 42.83,39.15 39.72,38.4 38.7,36.98 37.68,37.26 29.51,29.81 28.39,25.55 |only Mage
    goto 1456 22.5,16.9 20 |only Mage
    goto 1456 22.5,16.9
    note-enUS Travel toward Birgitte |only Mage
    note-ptBR Vá em direção a Birgitte |only Mage
    note-enUS Talk to Birgitte
    note-ptBR Fale com Birgitte
    train 3566
    note-enUS Train [Teleport: Thunder Bluff]
    note-ptBR Treine [Teleport: Thunder Bluff]
step
    only Mage
    goto 1456 22.77,14.5
    note-enUS Talk to Shymm
    note-ptBR Fale com Shymm
    train 7302
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    ifonquest 1145
    path seq 1456 46.22,49.14 46.01,49.9
    goto 1456 47,49.83
    note-enUS Go up the tower
    note-ptBR Suba a torre
    note-enUS Talk to Tal
    note-ptBR Fale com Tal
    fly 1454
    note-enUS Fly to Orgrimmar
    note-ptBR Voe para Orgrimmar
step
    only Tauren
    path seq 1456 46.22,49.14 46.01,49.9
    goto 1456 47,49.83
    goto 1412 47.65,58.47
    note-enUS Go up the tower
    note-ptBR Suba a torre
    note-enUS Talk to Tal
    note-ptBR Fale com Tal
    fp |opt
    note-enUS Fly to Crossroads
    note-ptBR Voe para Crossroads
    note-enUS Talk to Kar
    note-ptBR Fale com Kar
    note-enUS Train [Apprentice Riding] from him
    note-ptBR Treine [Apprentice Riding] com ele
step
    only Tauren
    goto 1412 47.49,58.6
    note-enUS Talk to Harb
    note-ptBR Fale com Harb
    note-enUS Buy any [Kodo] that you like from him
    note-ptBR Compre qualquer [Kodo] que quiser dele
step
    only Tauren
    note-enUS Use the [Gray Kodo] to learn it
    note-ptBR Use o [Gray Kodo] para aprender
    use 15277
step
    only Tauren
    note-enUS Use the [Brown Kodo] to learn it
    note-ptBR Use o [Brown Kodo] para aprender
    use 15290
step
    only Tauren
    note-enUS Press "Shift+P" to open your Mount tab
    note-ptBR Pressione "Shift+P" para abrir sua aba de Montarias
    note-enUS Drag the [Gray Kodo] onto your Action Bars
    note-ptBR Arraste o [Gray Kodo] para suas barras de ação
    note-enUS Mount your [Gray Kodo]
    note-ptBR Monte seu [Gray Kodo]
    train 18989
step
    only Tauren
    note-enUS Press "Shift+P" to open your Mount tab
    note-ptBR Pressione "Shift+P" para abrir sua aba de Montarias
    note-enUS Drag the [Brown Kodo] onto your Action Bars
    note-ptBR Arraste o [Brown Kodo] para suas barras de ação
    note-enUS Mount your [Brown Kodo]
    note-ptBR Monte seu [Brown Kodo]
    train 18990
step
    only Tauren
    goto 1413 41.4,58.55 |only Tauren
    goto 1413 45.1,57.68
    zone 1413 |only Tauren |opt
    note-enUS Travel to The Barrens |only Tauren
    note-ptBR Vá até The Barrens |only Tauren
    note-enUS Talk to Tatternack
    note-ptBR Fale com Tatternack
    turnin 1153
step
    only Tauren
    ifonquest 1145
    goto 1413 44.44,59.16
    note-enUS Talk to Omusa
    note-ptBR Fale com Omusa
    fly 1454
    note-enUS Fly to Orgrimmar
    note-ptBR Voe para Orgrimmar
step
    goto 1413 44.44,59.16 |only Tauren
    goto 1413 51.07,29.63
    goto 1413 51.5,30.87 |only Warrior Shaman
    note-enUS Talk to Omusa |only Tauren
    note-ptBR Fale com Omusa |only Tauren
    fp |only Tauren |opt
    note-enUS Fly to Crossroads |only Tauren
    note-ptBR Voe para Crossroads |only Tauren
    note-enUS Talk to Korran and Thork |only Warrior Shaman
    note-ptBR Fale com Korran e Thork |only Warrior Shaman
    note-enUS Talk to Korran |only !Warrior !Shaman
    note-ptBR Fale com Korran |only !Warrior !Shaman
    accept 1145
    turnin 906 |only Warrior Shaman
step
    only Shaman
    path closest 1413 51.5,30.33 |only Shaman
    path closest 1413 65.51,47.32 64.21,50.7 63.63,53.85 65.51,47.32 64.21,50.7 63.63,53.85
    note-enUS Cast [Teleport: Orgrimmar] |only Mage
    note-ptBR Lance [Teleport: Orgrimmar] |only Mage
    train 3567 |only Mage |opt
    note-enUS Talk to Devrak |only Shaman
    note-ptBR Fale com Devrak |only Shaman
    fp |only Shaman |opt
    note-enUS Fly to Ratchet |only Shaman
    note-ptBR Voe para Ratchet |only Shaman
    note-enUS Kill Isha Awak. Loot him for the Heart of Isha Awak
    note-ptBR Mate Isha Awak. Saqueie-o para obter o Heart of Isha Awak
    objective 873/1
step
    only Shaman
    path seq 1413 65.84,43.86
    goto 1413 65.83,43.77
    note-enUS Talk to Mahreen and Islen
    note-ptBR Fale com Mahreen e Islen
    turnin 873
    turnin 220
    accept 63
step
    only Mage
    goto 1413 63.08,37.16 |only Shaman
    path seq 1454 41.89,64.39 37.22,87.73 37.74,88.56 |only Mage
    goto 1454 38.64,85.42 10 |only Mage
    goto 1454 38.64,85.42
    note-enUS Talk to Bragok |only Shaman
    note-ptBR Fale com Bragok |only Shaman
    fly 1454 |only Shaman |opt
    note-enUS Fly to Orgrimmar |only Shaman
    note-ptBR Voe para Orgrimmar |only Shaman
    note-enUS Travel upstairs toward Thuul |only Mage
    note-ptBR Suba as escadas em direção a Thuul |only Mage
    note-enUS Talk to Thuul
    note-ptBR Fale com Thuul
    train 3567
    note-enUS Train [Teleport: Orgrimmar]
    note-ptBR Treine [Teleport: Orgrimmar]
step
    only Priest
    path seq 1454 41.89,64.39 38.99,57.73 39.78,54.65 42.33,56.99 43.78,56.45 |only Rogue
    goto 1454 43.9,54.63 15 |only Rogue
    goto 1454 35.59,87.8
    note-enUS Travel toward Ormok |only Rogue
    note-ptBR Vá em direção a Ormok |only Rogue
    note-enUS Talk to Ur'kyo
    note-ptBR Fale com Ur'kyo
    train 602
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Shaman
    goto 1454 38.81,36.38
    note-enUS Talk to Kardris
    note-ptBR Fale com Kardris
    train 556
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Shaman
    goto 1454 37.97,37.72
    note-enUS Talk to Searn Firewarder
    note-ptBR Fale com Searn Firewarder
    accept 1531
step
    only Paladin
    goto 1454 32.29,35.74
    note-enUS Talk to Pyreanor
    note-ptBR Fale com Pyreanor
    train 10298
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Rogue
    goto 1454 43.9,54.63
    note-enUS Talk to Ormok
    note-ptBR Fale com Ormok
    train 1760
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warlock
    goto 1454 47.99,45.93
    note-enUS Talk to Grol'dar
    note-ptBR Fale com Grol'dar
step
    only Warlock
    goto 1454 48.25,45.27
    note-enUS Talk to Gan'rul
    note-ptBR Fale com Gan'rul
    turnin 1512
    accept 1513
    accept 2996
    turnin 65610
    accept 65604
step
    only Warlock
    goto 1454 49.43,50 |only Warlock
    goto 1454 49.43,50
    note-enUS Use [Dogran's Pendant] to summon a Summoned Succubus |only Warlock
    note-ptBR Use [Dogran's Pendant] para invocar uma Summoned Succubus |only Warlock
    use 6626 |only Warlock |opt
    note-enUS Use the [Withered Scarf] to summon a Summoned Incubus |only Warlock
    note-ptBR Use o [Withered Scarf] para invocar um Summoned Incubus |only Warlock
    use 190187 |only Warlock |opt
    note-enUS Kill the Summoned Succubus
    note-ptBR Mate a Summoned Succubus
    objective 1513/1
step
    only Warlock
    goto 1454 49.43,50
    note-enUS Kill the Summoned Incubus
    note-ptBR Mate o Summoned Incubus
    objective 65604/1
step
    only Warlock
    goto 1454 48.25,45.27
    note-enUS Talk to Gan'rul
    note-ptBR Fale com Gan'rul
    turnin 1513
    turnin 65604
step
    only Mage
    goto 1454 45.44,56.55
    note-enUS Talk to Horthus
    note-ptBR Fale com Horthus
    note-enUS Buy [Runes of Teleportation] from him
    note-ptBR Compre [Runes of Teleportation] dele
    collect 17031 2 |quest 25 |q 25/1
step
    goto 1454 62.56,38.52 20 |only Paladin Shaman
    goto 1454 62.98,39.35 20 |only !Paladin !Shaman
    path seq 1454 64.34,38.17
    goto 1454 75.23,34.24 20
    note-enUS Travel toward Belgrom
    note-ptBR Vá em direção a Belgrom
    note-enUS Talk to Belgrom
    note-ptBR Fale com Belgrom
    turnin 1145
    accept 1146
step
    only Orc !Warlock
    goto 1454 69.41,13.11
    note-enUS Talk to Kildar
    note-ptBR Fale com Kildar
    note-enUS Train [Apprentice Riding] from him
    note-ptBR Treine [Apprentice Riding] com ele
step
    only Orc !Warlock
    goto 1454 69.38,12.25
    note-enUS Talk to Ogunaro
    note-ptBR Fale com Ogunaro
    note-enUS Buy any [Wolf] that you like from him
    note-ptBR Compre qualquer [Wolf] que quiser dele
step
    only Orc !Warlock
    note-enUS Use the [Horn of the Timber Wolf] to learn it
    note-ptBR Use a [Horn of the Timber Wolf] para aprender
    use 1132
step
    only Orc !Warlock
    note-enUS Use the [Horn of the Dire Wolf] to learn it
    note-ptBR Use a [Horn of the Dire Wolf] para aprender
    use 5665
step
    only Orc !Warlock
    note-enUS Use the [Horn of the Brown Wolf] to learn it
    note-ptBR Use a [Horn of the Brown Wolf] para aprender
    use 5668
step
    only Orc !Warlock
    note-enUS Use the [Horn of the Black Wolf] to learn it
    note-ptBR Use a [Horn of the Black Wolf] para aprender
    use 46099
step
    goto 1454 54.1,68.39
    note-enUS Press "Shift+P" to open your Mount tab |only Orc !Warlock
    note-ptBR Pressione "Shift+P" para abrir sua aba de Montarias |only Orc !Warlock
    note-enUS Drag the [Timber Wolf] onto your Action Bars |only Orc !Warlock
    note-ptBR Arraste o [Timber Wolf] para suas barras de ação |only Orc !Warlock
    note-enUS Mount your [Timber Wolf] |only Orc !Warlock
    note-ptBR Monte seu [Timber Wolf] |only Orc !Warlock
    train 580 |only Orc !Warlock |opt
    note-enUS Press "Shift+P" to open your Mount tab |only Orc !Warlock
    note-ptBR Pressione "Shift+P" para abrir sua aba de Montarias |only Orc !Warlock
    note-enUS Drag the [Dire Wolf] onto your Action Bars |only Orc !Warlock
    note-ptBR Arraste o [Dire Wolf] para suas barras de ação |only Orc !Warlock
    note-enUS Mount your [Dire Wolf] |only Orc !Warlock
    note-ptBR Monte seu [Dire Wolf] |only Orc !Warlock
    train 6653 |only Orc !Warlock |opt
    note-enUS Press "Shift+P" to open your Mount tab |only Orc !Warlock
    note-ptBR Pressione "Shift+P" para abrir sua aba de Montarias |only Orc !Warlock
    note-enUS Drag the [Brown Wolf] onto your Action Bars |only Orc !Warlock
    note-ptBR Arraste o [Brown Wolf] para suas barras de ação |only Orc !Warlock
    note-enUS Mount your [Brown Wolf] |only Orc !Warlock
    note-ptBR Monte seu [Brown Wolf] |only Orc !Warlock
    train 6654 |only Orc !Warlock |opt
    note-enUS Talk to Gryshka
    note-ptBR Fale com Gryshka
    home
    note-enUS Set your Hearthstone to Orgrimmar
    note-ptBR Defina sua pedra de regresso em Orgrimmar
step
    only Warlock
    path seq 1454 47.41,65.07 46.59,64.54 46.75,63.84 46.59,64.54 46.75,63.84 46.59,64.54 46.75,63.84 |only Warlock
    goto 1454 45.12,63.88 10 |only Warlock
    goto 1413 62.63,35.5
    note-enUS Travel up the tower toward Doras |only Warlock
    note-ptBR Suba a torre em direção a Doras |only Warlock
    note-enUS Talk to Doras |only Warlock
    note-ptBR Fale com Doras |only Warlock
    fp |only Warlock |opt
    note-enUS Fly to Ratchet |only Warlock
    note-ptBR Voe para Ratchet |only Warlock
    note-enUS Talk to Strahad
    note-ptBR Fale com Strahad
    turnin 2996
    accept 1801
step
    only Warlock
    hearth
    note-enUS Hearth to Orgrimmar
    note-ptBR Use a pedra de regresso para Orgrimmar
step
    only Warlock
    goto 1413 63.08,37.16
    note-enUS Talk to Bragok
    note-ptBR Fale com Bragok
    fly 1454
    note-enUS Fly to Orgrimmar
    note-ptBR Voe para Orgrimmar
step
    only Scourge Mage
    note-enUS Cast [Teleport: Undercity]
    note-ptBR Lance [Teleport: Undercity]
    train 3563
step
    only Scourge Mage
    goto 1458 82.77,15.85
    note-enUS Talk to Hannah
    note-ptBR Fale com Hannah
    vendor
    note-enUS Buy up to 20 [Runes of Teleportation] from her
    note-ptBR Compre até 20 [Runes of Teleportation] dela
    train 3563
step
    only Scourge Mage
    goto 1458 66.21,4.9 15
    goto 1420 61.73,64.87
    zone 1420
    note-enUS Exit Undercity
    note-ptBR Saia de Undercity
    train 3563
step
    only Scourge !Warlock
    path seq 1454 52.26,88.65 49.42,90.9 |only Scourge !Warlock
    goto 1454 49.59,94.74 30 |only Scourge !Warlock
    goto 1411 50.61,13.27 |only Scourge !Warlock
    path seq 1411 50.61,13.27 50.82,13.07 50.83,13.27 50.82,13.07 50.83,13.27 50.82,13.07 50.83,13.27 50.89,14.14
    goto 1411 56.75,15.11
    zone 1411 |only Scourge !Warlock |opt
    note-enUS Exit Orgrimmar |only Scourge !Warlock
    note-ptBR Saia de Orgrimmar |only Scourge !Warlock
    note-enUS Go up the Zeppelin Tower
    note-ptBR Suba a torre do Zepelim
    zone 1420
    note-enUS Take the Zeppelin to Tirisfal
    note-ptBR Pegue o zepelim para Tirisfal
step
    only Scourge !Warlock
    goto 1420 60.08,52.54
    note-enUS Talk to Velma
    note-ptBR Fale com Velma
    note-enUS Train [Apprentice Riding] from her
    note-ptBR Treine [Apprentice Riding] com ela
step
    only Scourge !Warlock
    goto 1420 59.87,52.69
    note-enUS Talk to Zachariah
    note-ptBR Fale com Zachariah
    note-enUS Buy any [Skeletal Horse] that you like from him
    note-ptBR Compre qualquer [Skeletal Horse] que quiser dele
step
    only Scourge !Warlock
    note-enUS Use the [Red Skeletal Horse] to learn it
    note-ptBR Use o [Red Skeletal Horse] para aprender
    use 13331
step
    only Scourge !Warlock
    note-enUS Use the [Blue Skeletal Horse] to learn it
    note-ptBR Use o [Blue Skeletal Horse] para aprender
    use 13332
step
    only Scourge !Warlock
    note-enUS Use the [Brown Skeletal Horse] to learn it
    note-ptBR Use o [Brown Skeletal Horse] para aprender
    use 13333
step
    only Scourge !Warlock
    note-enUS Use the [Black Skeletal Horse] to learn it
    note-ptBR Use o [Black Skeletal Horse] para aprender
    use 46308
step
    only Scourge !Warlock
    note-enUS Press "Shift+P" to open your Mount tab
    note-ptBR Pressione "Shift+P" para abrir sua aba de Montarias
    note-enUS Drag the [Red Skeletal Horse] onto your Action Bars
    note-ptBR Arraste o [Red Skeletal Horse] para suas barras de ação
    note-enUS Mount your [Red Skeletal Horse]
    note-ptBR Monte seu [Red Skeletal Horse]
    train 17462
step
    only Scourge !Warlock
    note-enUS Press "Shift+P" to open your Mount tab
    note-ptBR Pressione "Shift+P" para abrir sua aba de Montarias
    note-enUS Drag the [Blue Skeletal Horse] onto your Action Bars
    note-ptBR Arraste o [Blue Skeletal Horse] para suas barras de ação
    note-enUS Mount your [Blue Skeletal Horse]
    note-ptBR Monte seu [Blue Skeletal Horse]
    train 17463
step
    only Scourge !Warlock
    note-enUS Press "Shift+P" to open your Mount tab
    note-ptBR Pressione "Shift+P" para abrir sua aba de Montarias
    note-enUS Drag the [Brown Skeletal Horse] onto your Action Bars
    note-ptBR Arraste o [Brown Skeletal Horse] para suas barras de ação
    note-enUS Mount your [Brown Skeletal Horse]
    note-ptBR Monte seu [Brown Skeletal Horse]
    train 17464
]==])
