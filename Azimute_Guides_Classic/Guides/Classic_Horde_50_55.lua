-- Convertido automaticamente de Guidelime_Zarant (Horde/50-55.lua).
-- (c) Zarant - GNU GPL v3 (ver LICENSE.txt). Gerado por tools/guidelime2azimute.py.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id classic.h.50-51-stv-blasted-lands
#name 50-51 STV/Blasted Lands
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Horde
#levels 50-51
#zones 1434 1419
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    note-enUS Make sure you have 15 silk cloth for the upcoming segment
    note-ptBR Certifique-se de ter 15 silk cloth para o próximo segmento
step
    vendor |opt
    note-enUS Deposit the following items: Torwa's Pouch Linken's Training Sword Stone Circle
    note-ptBR Guarde os seguintes itens: Torwa's Pouch Linken's Training Sword Stone Circle
step
    vendor |opt
    note-enUS Withdraw the follow items: Fool's Stout Report Stoley's Bottle Pupellyverbos Port
    note-ptBR Retire os seguintes itens: Fool's Stout Report Stoley's Bottle Pupellyverbos Port
step
    home
    note-enUS Set your HS to Ratchet
    note-ptBR Defina sua Pedra de Regresso em Ratchet
step
    goto 1413 62.5,38.7
    turnin 4147
step
    goto 1413 62.5,38.7
    accept 4502
step
    goto 1413 62.5,38.6
    objective 3444/1
step
    goto 1434 23.2,72.1
    note-enUS Take the boat to Booty Bay
    note-ptBR Pegue o barco para Booty Bay
    accept 8552 |opt
    note-enUS Kill and loot the elite giant at the goblin statue Right click
    note-ptBR Mate e saqueie o gigante elite na estátua do goblin. Clique com o botão direito
step
    goto 1434 28.4,76.3
    turnin 648
step
    goto 1434 28.4,76.3
    turnin 836
step
    goto 1434 28.4,76.3
    turnin 2767
step
    accept 3721
    turnin 3721
step
    goto 1434 26.7,73.6
    turnin 8552
step
    accept 615
step
    goto 1434 26.7,73.6
    turnin 615
    note-enUS Turn in Skip this step if you don't have The Monogrammed Sash quest
    note-ptBR Entregue. Pule esta etapa se não tiver a missão The Monogrammed Sash
step
    goto 1434 27.7,77.1
    turnin 2874
step
    goto 1434 27.1,77.5
    turnin 580
step
    goto 1434 27.1,77.3
    turnin 1122
step
    fp
step
    goto 1435 47.9,55
    turnin 1444
step
    goto 1419 51.98,35.65
    accept 3501 |opt
    turnin 3501 |opt
    note-enUS Turn in if you find an Imperfect Draenethyst Fragment
    note-ptBR Entregue se encontrar um Imperfect Draenethyst Fragment
step
    note-enUS Collect the following items: 14 Vulture Gizzard 11 Basilisk Brain 6 Scorpok Pincer 6 Blasted Boar Lung 5 Snickerfang Jowl
    note-ptBR Colete os seguintes itens: 14 Vulture Gizzard 11 Basilisk Brain 6 Scorpok Pincer 6 Blasted Boar Lung 5 Snickerfang Jowl
    accept 2585
    turnin 2585
    note-enUS Turn in once you have: 3 Scorpok Pincer 2 Vulture Gizzard 1 Blasted Boar Lung
    note-ptBR Entregue quando tiver: 3 Scorpok Pincer 2 Vulture Gizzard 1 Blasted Boar Lung
step
    note-enUS Collect the following items: 12 Vulture Gizzard 11 Basilisk Brain 3 Scorpok Pincer 5 Blasted Boar Lung 5 Snickerfang Jowl
    note-ptBR Colete os seguintes itens: 12 Vulture Gizzard 11 Basilisk Brain 3 Scorpok Pincer 5 Blasted Boar Lung 5 Snickerfang Jowl
    accept 2583
    turnin 2583
    accept 2581
    turnin 2581
    accept 2601
    turnin 2601
    accept 2603
    turnin 2603
step
    goto 1435 46.1,54.8
    fly 1418
]==])

register([==[
#format 1
#id classic.h.51-52-searing-gorge-burning-steppes
#name 51-52 Searing Gorge/Burning Steppes
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Horde
#levels 51-52
#zones 1427 1428
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    goto 1418 3.4,48.1
    accept 3821
    note-enUS Accept Skip this quest if the NPC is not there
    note-ptBR Aceite Pule esta missão se o NPC não estiver lá
step
    goto 1427 65.5,62.2
    accept 4449
step
    path seq 1427 63.2,60.7
    goto 1427 69.1,34.1
    objective 4449/1
    note-enUS Kill Dark Iron Geologist (x8)
    note-ptBR Mate Dark Iron Geologist (x8)
step
    goto 1427 39.1,39
    accept 3441
step
    complete 3441
    note-enUS Talk to Kalaran Windblade Go through his whole dialogue
    note-ptBR Fale com Kalaran Windblade. Passe por todo o diálogo dele
step
    turnin 3441
    accept 3442
step
    goto 1427 34.8,30.9
    fp
    note-enUS Get the Searing Gorge FP
    note-ptBR Pegue o caminho de voo de Searing Gorge
step
    accept 7723
    accept 7724
    note-enUS Talk to Hansel Heavyhands Accept Accept
    note-ptBR Fale com Hansel Heavyhands. Aceite. Aceite
step
    accept 7728
    accept 7729
    note-enUS Click on the wanted board Accept Accept
    note-ptBR Clique no quadro de procurados Aceite Aceite
step
    complete 3442 |opt
    note-enUS Make sure you prioritize Fire Elementals/Golems
    note-ptBR Priorize Fire Elementals/Golems
step
    goto 1427 34.08,53.99
    objective 7728/2 |opt
    note-enUS Kill Dark Iron Lookouts around the tower They respawn roughly every 7 minutes
    note-ptBR Mate Dark Iron Lookouts ao redor da torre Eles ressurgem mais ou menos a cada 7 minutos
step
    goto 1427 40.9,50.31 40
    objective 7728/1 |opt
    note-enUS Kill Steamsmiths around the cauldron
    note-ptBR Mate os Steamsmiths ao redor do caldeirão
step
    complete 7724 |opt
    note-enUS Kill Lava Spiders along the western edge of the map
    note-ptBR Mate Lava Spiders ao longo da borda oeste do mapa
step
    complete 7723 |opt
step
    turnin 3442
    accept 3443
step
    turnin 7723
    turnin 7724
    turnin 7728
step
    accept 7727
    accept 7722
step
    goto 1427 35.27,42.61 25
    note-enUS Jump down into the square hole just outside Thorium Point
    note-ptBR Pule no buraco quadrado logo do lado de fora de Thorium Point
step
    goto 1427 40.44,35.73
    complete 7722 |opt
    note-enUS Find the steel ramp that leads to the 2nd floor Pull mobs away with your pet Loot the plans laying on top of the bench
    note-ptBR Encontre a rampa de aço que leva ao 2º andar Afaste os mobs com seu pet Saqueie os planos em cima da bancada
step
    complete 7729
    complete 3443
    note-enUS Finish off Loot 8 Thorium Plated Daggers
    note-ptBR Termine Saqueie 8 Thorium Plated Daggers
step
    accept 4451
    note-enUS Keep grinding dwarves until you get the Grimesilt Outhouse Key Accept
    note-ptBR Continue o grind de anões até conseguir a Grimesilt Outhouse Key Aceite
step
    complete 7727
step
    turnin 3443
    accept 3452
step
    complete 3452 |opt
    turnin 3452
    note-enUS Turn in Skip this step if you are having trouble soloing the elite mobs
    note-ptBR Entregue. Pule esta etapa se estiver com dificuldade para solar os mobs elite
step
    accept 3453
    turnin 3453
    accept 3454
    note-enUS Accept Turn in Stay next to the NPC while the RP event is going Accept
    note-ptBR Aceite Entregue Fique ao lado do NPC enquanto o evento de RP acontece Aceite
step
    turnin 3454
    note-enUS Click on the Torch of Retribution Turn in
    note-ptBR Clique na Torch of Retribution Entregue
step
    accept 3462
    turnin 3462
    accept 3463
step
    objective 3463/4
    note-enUS Set the first tower ablaze by equipping the Torch of Retribution and clicking on the brazier at the top of the tower
    note-ptBR Incendeie a primeira torre equipando a Torch of Retribution e clicando no braseiro no topo da torre
step
    objective 3463/1
    note-enUS Set the western tower on fire
    note-ptBR Incendeie a torre oeste
step
    objective 3463/2
    note-enUS Set the third tower on fire
    note-ptBR Incendeie a terceira torre
step
    turnin 4449
step
    turnin 4451
step
    goto 1427 50.1,54.7
    objective 3463/3 |opt
    note-enUS Set the fourth tower on fire
    note-ptBR Incendeie a quarta torre
step
    goto 1427 38.9,39
    turnin 3463 |opt
    accept 3481 |opt
    note-enUS Turn in Accept Open the Hoard of the Black Dragonflight and keep the Black Dragonflight Molt
    note-ptBR Entregue. Aceite. Abra o Hoard of the Black Dragonflight e guarde o Black Dragonflight Molt
step
    turnin 7727
    turnin 7729
    turnin 7722
step
    path seq 1427 53.8,76.9
    goto 1427 56.5,84.8 20
    goto 1428 65.7,24.2 60
    note-enUS Head to Burning Steppes
    note-ptBR Vá até Burning Steppes
step
    goto 1428 65.7,24.2
    fp
    note-enUS Get the Burning Steppes FP
    note-ptBR Pegue o caminho de voo de Burning Steppes
step
    goto 1428 65.3,23.8
    accept 4726
step
    goto 1428 65.3,23.8
    accept 4296
step
    complete 4726 |opt
    note-enUS Use the quest item on whelps and kill them
    note-ptBR Use o item de missão nos whelps e mate-os
step
    goto 1428 54.1,40.7
    objective 4296/1
step
    goto 1428 79.8,45.6
    turnin 3821
step
    accept 3822
step
    complete 3822
    note-enUS Do He has a random spawn location
    note-ptBR Faça Ele tem um local de surgimento aleatório
step
    goto 1428 95.09,31.56
    accept 4022 |opt
    turnin 4022 |opt
    note-enUS Turn in Skip this step if you don't have the Black Dragonflight Molt
    note-ptBR Entregue. Pule esta etapa se não tiver o Black Dragonflight Molt
step
    goto 1428 65.3,23.8
    turnin 4726
step
    accept 4808
step
    turnin 4296
step
    goto 1418 3.4,48.1
    turnin 3822
step
    hearth |opt
    fly 1454
]==])

register([==[
#format 1
#id classic.h.52-53-azshara
#name 52-53 Azshara
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Horde
#levels 52-53
#zones 1447
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    vendor |opt
    note-enUS Withdraw the following items: Dran's Ripple Delivery Linken's Training Sword Box of Empty Vials
    note-ptBR Retire os seguintes itens: Dran's Ripple Delivery Linken's Training Sword Box of Empty Vials
step
    vendor |opt
    note-enUS Deposit Tinkee's Letter in your bank
    note-ptBR Guarde a Tinkee's Letter no seu banco
step
    home
    note-enUS Set your HS to Orgrimmar
    note-ptBR Defina sua Pedra de Regresso em Orgrimmar
step
    goto 1454 56.4,46.5
    accept 4494
step
    goto 1454 59.4,36.9
    turnin 81
step
    goto 1454 55.6,34.2
    turnin 4300
step
    goto 1454 75,34.3
    accept 3504
step
    only Hunter
    trainer |opt
    note-enUS Make you have fire resistance maxed out on your pet
    note-ptBR Certifique-se de que seu mascote esteja com a resistência a fogo no máximo
step
    only Hunter
    goto 1454 66,18.6
    accept 8151
step
    fp
step
    goto 1447 10.4,74.9 20
step
    goto 1447 11.4,78.1
    accept 5535
step
    accept 5536
step
    complete 5536
step
    complete 5535
step
    turnin 5535
    turnin 5536
step
    goto 1447 22,49.7
    fp
    note-enUS Get the Azshara FP
    note-ptBR Pegue o caminho de voo de Azshara
step
    goto 1447 22.2,51.5
    turnin 3504
step
    accept 3505
step
    goto 1447 22.5,51.4
    accept 3517
step
    only Hunter
    goto 1447 42.37,42.61
    turnin 8151
    accept 8153
step
    only Hunter
    complete 8153 |opt
    note-enUS Kill mosshoof coursers as you quest
    note-ptBR Mate mosshoof coursers enquanto faz missões
step
    accept 3601
step
    goto 1447 57.02,29.45 170
    complete 3601 |opt
    note-enUS Loot the boxes scattered around the camp
    note-ptBR Saqueie as caixas espalhadas pelo acampamento
step
    goto 1447 57.02,29.45 170
    objective 3505/2
    objective 3505/3
step
    goto 1447 59.4,31.2
    objective 3505/1
    note-enUS Find Magus Rimtori's camp
    note-ptBR Encontre o acampamento de Magus Rimtori
step
    goto 1447 59.5,31.2
    turnin 3505
step
    accept 3506
step
    goto 1447 59.5,31.4
    objective 3506/1
    note-enUS Collect Head of Magus Rimtori Click on the crystals nearby to summon her
    note-ptBR Colete Head of Magus Rimtori Clique nos cristais próximos para invocá-la
step
    turnin 3601
    accept 5534
step
    complete 5534 |opt
step
    complete 3517
step
    goto 1447 47.8,60.8
    objective 3568/1
    note-enUS Collect Filled Vial Labeled #1
    note-ptBR Colete Filled Vial Labeled #1
step
    goto 1447 47.8,51.3
    objective 3568/2
    note-enUS Collect Filled Vial Labeled #2
    note-ptBR Colete Filled Vial Labeled #2
step
    goto 1447 48.7,48.5
    objective 3568/3
    note-enUS Collect Filled Vial Labeled #3
    note-ptBR Colete Filled Vial Labeled #3
step
    goto 1447 47.5,46.2
    objective 3568/4
    note-enUS Collect Filled Vial Labeled #4
    note-ptBR Colete Filled Vial Labeled #4
step
    turnin 5534
step
    only Hunter
    turnin 8153
step
    goto 1447 22.6,51.4
    turnin 3517
step
    accept 3561
step
    accept 3518
step
    accept 3541
step
    note-enUS Skip the other quest for now
    note-ptBR Pule a outra missão por enquanto
step
    goto 1447 22.3,51.6
    turnin 3506
    accept 3507
step
    goto 1447 28.1,50.1
    note-enUS Speak with the npc to send you to Xylem's tower
    note-ptBR Fale com o NPC para ser enviado à torre de Xylem
step
    goto 1447 29.7,40.5
    turnin 3561
step
    accept 3565
step
    goto 1447 22.5,51.4
    turnin 3565
step
    fp
]==])

register([==[
#format 1
#id classic.h.53-53-felwood
#name 53-53 Felwood
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Horde
#levels 53-53
#zones 1448
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    goto 1448 51,85
    accept 8460
step
    goto 1448 50.9,81.7
    accept 5156
step
    goto 1448 51.2,82.1
    accept 5155
step
    goto 1448 46.7,83.3
    accept 4102
step
    note-enUS Collect Felwood Slime Sample (x30)
    note-ptBR Colete Felwood Slime Sample (x30)
step
    complete 5155
step
    goto 1448 34.8,52.7
    accept 6162
step
    goto 1448 34.2,52.3
    accept 4505
step
    goto 1448 34.4,53.9
    fp
    note-enUS Get the Felwood FP
    note-ptBR Pegue o caminho de voo de Felwood
step
    goto 1448 32.3,66.6
    objective 4505/1
step
    goto 1448 48.2,94.3
    objective 6162/1
step
    complete 8460
step
    goto 1448 51,85
    turnin 8460
step
    accept 8462
step
    goto 1448 51.2,82.2
    turnin 5155
step
    accept 5157
step
    goto 1448 35.2,59.8
    objective 5157/1
step
    complete 5156
step
    goto 1448 56,17.5
    objective 4102/1
step
    complete 4120
step
    goto 1448 64.7,8.2
    turnin 8462
step
    goto 1452 31.3,45.1
    accept 5082
step
    goto 1452 31.3,45.1
    turnin 3908
step
    accept 5083 |opt
    note-enUS Kill fulborgs until you get an empty firewater flask Accept
    note-ptBR Mate fulborgs até conseguir um empty firewater flask. Aceite
step
    goto 1452 30.8,36.2
    complete 5082
step
    goto 1452 31.3,45.2
    turnin 5082
step
    turnin 5083
step
    accept 5084
step
    accept 3909
step
    note-enUS Death skip to Everlook
    note-ptBR Faça death skip até Everlook
    note-enUS Withdraw the following items: Tinkee's Letter Stone Circle Torwa's Pouch
    note-ptBR Retire os seguintes itens: Tinkee's Letter Stone Circle Torwa's Pouch
step
    goto 1452 61.6,38.6
    turnin 4808
step
    fly 1448
step
    goto 1448 34.2,52.3
    turnin 4505
step
    goto 1448 34.8,52.7
    turnin 6162
step
    path seq 1448 41.3,67.1
    goto 1448 51.2,82.1
    note-enUS Head towards the slime pond south of jaedenar and then death skip to southern felwood
    note-ptBR Siga em direção ao lago de gosma ao sul de jaedenar e depois faça death skip para o sul de felwood
    turnin 5157
step
    accept 5158
step
    goto 1448 50.9,81.7
    turnin 5156
step
    goto 1448 46.6,83
    turnin 4102
step
    goto 1448 46.6,83
    note-enUS Make sure you have a Cenarion Beacon
    note-ptBR Certifique-se de ter um Cenarion Beacon
step
    hearth
    note-enUS Hearth back to Org
    note-ptBR Use a Pedra de Regresso para voltar a Org
step
    note-enUS Deposit the following items: Filled Vial Labeled #1-4 Cenarion Beacon Corrupt Moonwell Water Felwood Slime Sample
    note-ptBR Guarde os seguintes itens: Filled Vial Labeled #1-4 Cenarion Beacon Corrupt Moonwell Water Felwood Slime Sample
step
    turnin 3541
step
    accept 3563
step
    accept 4300
step
    goto 1454 75.2,34
    turnin 3507
step
    fp
]==])

register([==[
#format 1
#id classic.h.53-54-ungoro-crater
#name 53-54 Un'Goro Crater
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Horde
#levels 53-54
#zones 1449
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    home
    note-enUS Set your HS to Camp Taurajo
    note-ptBR Defina sua Pedra de Regresso em Camp Taurajo
step
    fly 1446
step
    goto 1446 50.9,27
    turnin 4494
step
    accept 4496
step
    goto 1446 52.7,45.9
    turnin 3444
step
    fly 1449
step
    goto 1446 12.7,5.9
    accept 3881
step
    goto 1446 12.7,5.9
    accept 3883
step
    goto 1446 12.5,6
    accept 3882
step
    goto 1449 41.9,2.7
    accept 4288
step
    accept 4285
step
    goto 1446 12.5,6.5
    accept 4492
step
    accept 4501
step
    goto 1446 12.8,8.1
    accept 4503
step
    accept 4145
step
    objective 4145/1 |opt
    objective 4145/4 |opt
step
    objective 3882/1 |opt
    objective 4503/1 |opt
step
    path seq 1449 56.9,9.2 56.4,90.4
    goto 1449 44.2,90.3
    complete 4501 |opt
    objective 4503/2 |opt
step
    goto 1449 56.5,12.7
    objective 4285/1
    note-enUS Click the Northern Crystal Pylon
    note-ptBR Clique no Northern Crystal Pylon
step
    complete 4289
step
    goto 1449 68.5,36.6
    objective 3881/1
step
    objective 4300/1 |opt
step
    goto 1449 79.5,49.8
    objective 4292/1
step
    goto 1449 71.6,76
    turnin 4289
step
    accept 4301
step
    turnin 4292
step
    objective 4145/3 |opt
    note-enUS Kill Flayers south of the volcano
    note-ptBR Mate Flayers ao sul do vulcão
step
    goto 1449 48.7,85.2
    objective 3883/1
step
    complete 4496
step
    goto 1449 38.5,66.1
    objective 3881/2
step
    objective 4145/2 |opt
step
    goto 1449 23.8,59.1
    objective 4288/1
    note-enUS Click the western Pylon
    note-ptBR Clique no western Pylon
step
    goto 1449 30.9,50.4
    accept 974
step
    goto 1449 49.6,45.7
    objective 974/1
    note-enUS Climb the volcano and use the quest item
    note-ptBR Suba o vulcão e use o item de missão
step
    complete 4502
step
    goto 1449 30.9,50.4
    turnin 974
step
    accept 980
step
    objective 4501/2
step
    goto 1449 51.9,50
    turnin 4492
step
    accept 4491
    note-enUS Start the escort quest Accept
    note-ptBR Inicie a missão de escolta. Aceite
step
    complete 4491 |opt
step
    goto 1449 43.7,8.6
    turnin 4491
    turnin 4501
step
    goto 1449 43.6,7.5
    turnin 3882
step
    accept 3884 |opt
    turnin 3884 |opt
    note-enUS Turn in if you managed to find the mangled journal
    note-ptBR Entregue se tiver conseguido encontrar o mangled journal
step
    goto 1449 43.9,7.3
    turnin 3883
    turnin 3881
step
    goto 1449 41.9,2.7
    turnin 4288
step
    turnin 4285
step
    accept 4287
step
    goto 1449 45.5,8.7
    turnin 4145
step
    accept 4147
step
    goto 1449 44.2,11.6
    turnin 4503
step
    goto 1449 46.3,13.5
    accept 4243
step
    goto 1449 56.5,12.7
    objective 4285/1
    note-enUS Click the Northern Crystal Pylon
    note-ptBR Clique no Northern Crystal Pylon
step
    goto 1449 67.6,16.7
    turnin 4243
step
    goto 1449 68.2,12.6
    objective 4301/1
step
    goto 1449 77.1,49.9
    objective 4287/1
    note-enUS Click the Eastern Crystal Pylon
    note-ptBR Clique no Eastern Crystal Pylon
step
    goto 1449 71.6,76
    turnin 4301
step
    goto 1446 50.9,27
    note-enUS Head to tanaris, die and spirit rez at Gadgetzan
    note-ptBR Vá até tanaris, morra e ressuscite com o Spirit Healer em Gadgetzan
    turnin 4496
step
    fly 1444
step
    turnin 4120
step
    goto 1444 77.4,36.9
    note-enUS Pull mobs and die on purpose to go through the DM East back entrance as a ghost
    note-ptBR Puxe mobs e morra de propósito para passar pela entrada dos fundos de DM East como fantasma
step
    goto 1444 76.4,35.9
    note-enUS Zone into dire maul and then zone out, this is a pre requisite for a quest later
    note-ptBR Entre em dire maul e depois saia, isso é pré-requisito para uma missão mais adiante
step
    goto 1444 45.12,25.56
    note-enUS Buy some bait from Gregan
    note-ptBR Compre um pouco de isca de Gregan
step
    goto 1444 44.64,10.59
    note-enUS Give some bait to the gnoll guarding the Evoroot
    note-ptBR Dê um pouco de isca ao gnoll que guarda a Evoroot
step
    goto 1444 45.12,25.56
    complete 3909
    note-enUS Talk to Gregan and trade in the Evoroot
    note-ptBR Fale com Gregan e troque a Evoroot
step
    hearth
    note-enUS Hearth to Camp T
    note-ptBR Use a Pedra de Regresso para Camp T
step
    fly 1456
step
    accept 1000 |opt
step
    goto 1456 45.8,64.7
    accept 3762
step
    goto 1456 78.5,28.6
    turnin 1000
step
    accept 1123
step
    turnin 3762
step
    accept 3761
step
    goto 1456 77.3,22.2
    turnin 3761
step
    goto 1456 78.4,28.8
    accept 3782
step
    goto 1456 70.2,30.7
    turnin 3518
step
    goto 1456 70.2,30.7
    accept 3562
step
    goto 1456 71,33.8
    turnin 3782
step
    fp
]==])

register([==[
#format 1
#id classic.h.54-56-felwood-winterspring
#name 54-56 Felwood/Winterspring
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Horde
#levels 54-56
#zones 1448 1452
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    vendor |opt
    note-enUS Deposit the following items: Un'Goro Slime Sample
    note-ptBR Guarde os seguintes itens: Un'Goro Slime Sample
step
    vendor |opt
    note-enUS Withdraw the following items: Cenarion Beacon Corrupt Moonwell Water
    note-ptBR Retire os seguintes itens: Cenarion Beacon Corrupt Moonwell Water
step
    goto 1413 62.5,38.7
    turnin 4502
step
    goto 1413 62.5,38.7
    turnin 4147
step
    goto 1413 65.8,43.8
    turnin 5158
step
    accept 5159
step
    fly 1454
step
    goto 1454 55.6,34
    turnin 4300
step
    fly 1447
step
    goto 1447 22.5,51.4
    turnin 3562
step
    turnin 3563
step
    accept 3542
step
    fly 1448
step
    goto 1448 34.3,52.3
    accept 4506
step
    goto 1448 34.8,52.8
    accept 4521
step
    note-enUS Collect 6 Corrupted Soul Shards-OnStepActivation,
    note-ptBR Colete 6 Corrupted Soul Shards-OnStepActivation,
step
    goto 1448 51.2,82.1
    turnin 5159
step
    accept 5165
step
    goto 1448 32.4,66.6
    vendor
    note-enUS Use Winna's Kitten Carrier at the corrupted moonwell
    note-ptBR Use o Winna's Kitten Carrier no moonwell corrompido
step
    objective 5165/1
    note-enUS Run to Jaedenar Douse the first flame
    note-ptBR Corra até Jaedenar. Apague a primeira chama
step
    accept 5202 |opt
    note-enUS Keep grinding mobs until you get the Blood Red Key Accept
    note-ptBR Continue o grind de mobs até conseguir a Blood Red Key Aceite
step
    objective 5165/4
    note-enUS Douse the second flame
    note-ptBR Apague a segunda chama
step
    objective 5165/3
    note-enUS Douse the third flame
    note-ptBR Apague a terceira chama
step
    objective 5165/2
    note-enUS Douse the fourth flame
    note-ptBR Apague a quarta chama
step
    turnin 5202
    accept 5203
    note-enUS Start the escort quest Turn in Accept
    note-ptBR Inicie a missão de escolta. Entregue. Aceite
step
    complete 5203
step
    goto 1448 34.2,52.3
    turnin 4506
step
    goto 1448 64.7,8.1
    accept 8461
step
    complete 8461 |opt
step
    goto 1448 60.2,5.9
    turnin 5084
step
    goto 1448 60.2,5.9
    accept 5085
step
    goto 1448 64.7,8.2
    turnin 8461
step
    accept 8465
step
    goto 1448 68.3,6.1
    turnin 8465
step
    accept 8464
step
    goto 1452 31.3,45.1
    turnin 980
step
    accept 4842
step
    turnin 3909
step
    accept 3912
step
    turnin 5085
step
    accept 5086
step
    objective 4521/2 |opt
step
    accept 3783
step
    accept 5054
step
    goto 1452 61.3,38.9
    home
    note-enUS Set your HS to Winterspring
    note-ptBR Defina sua Pedra de Regresso em Winterspring
step
    objective 5054/1
step
    complete 4521
step
    goto 1452 61.9,38.4
    turnin 5054
step
    accept 5055
step
    accept 969
step
    objective 3783/1
    note-enUS Collect Thick Yeti Fur (x10)
    note-ptBR Colete Thick Yeti Fur (x10)
step
    objective 5055/1 |opt
step
    complete 969 |opt
    note-enUS Loot the blue crystals around the outer perimeter of the canyon Use your pet to bait the giants away from the crystals
    note-ptBR Saqueie os cristais azuis ao redor do perímetro externo do cânion. Use seu mascote para atrair os gigantes para longe dos cristais
step
    objective 4842/1
    note-enUS Head to Darkwhisper Gorge
    note-ptBR Vá até Darkwhisper Gorge
step
    goto 1452 61.9,38.4
    note-enUS Once you finish all quests, die on purpose and respawn at Everlook
    note-ptBR Depois de terminar todas as missões, morra de propósito e ressuscite em Everlook
    turnin 969 |opt
step
    goto 1452 61.9,38.4
    turnin 5055
step
    turnin 3783
step
    fly 1446
step
    note-enUS Use the videre elixir at the tanaris GY
    note-ptBR Use o videre elixir no cemitério de tanaris
step
    goto 1446 53.9,23.4
    turnin 3912
step
    accept 3913
step
    goto 1446 53.8,29.1
    turnin 3913
step
    accept 3914
step
    goto 1446 51.6,26.8
    accept 4504
step
    fly 1449
step
    goto 1446 13.1,6.4
    turnin 3914
step
    accept 3941
step
    goto 1446 11.6,3.4
    turnin 4285
step
    turnin 4287
step
    goto 1446 11.6,3.4
    turnin 3941
step
    accept 3942
step
    accept 4321
step
    turnin 4321
step
    objective 4504/1
    note-enUS Collect Super Sticky Tar (x12)
    note-ptBR Colete Super Sticky Tar (x12)
step
    fly 1446
step
    goto 1446 51.6,26.8
    turnin 4504
step
    hearth |opt
    accept 6029
    accept 6030
    accept 5061
step
    fly 1448
step
    goto 1448 34.7,52.7
    turnin 4521
step
    accept 4741
step
    goto 1448 51.2,82.1
    turnin 5165
step
    accept 5242
step
    goto 1448 51.3,82
    turnin 5203
step
    accept 5204
step
    goto 1448 51.3,81.5
    turnin 3942
step
    accept 4084
step
    objective 4084/1 |opt
step
    goto 1448 38.3,50.5
    objective 5204/1
    note-enUS Go deep into Jaedenar Kill Rakaiah
    note-ptBR Vá bem fundo em Jaedenar Mate Rakaiah
step
    goto 1448 38.5,50.4
    turnin 5204
step
    accept 5385
step
    goto 1448 38.9,46.8
    complete 5242
step
    objective 4084/2 |opt
step
    objective 5086/1
    note-enUS Collect Toxic Horror Droplet (x3)
    note-ptBR Colete Toxic Horror Droplet (x3)
step
    goto 1452 31.3,45.2
    turnin 4842
step
    goto 1452 31.3,45.2
    turnin 5086
step
    accept 5087
step
    complete 5087 |opt
    note-enUS Look for winterfall runners
    note-ptBR Procure winterfall runners
step
    goto 1452 31.3,45.2
    turnin 5087
step
    accept 5121
step
    note-enUS Death skip back to everlook
    note-ptBR Faça death skip de volta para everlook
    fly 1454
]==])
