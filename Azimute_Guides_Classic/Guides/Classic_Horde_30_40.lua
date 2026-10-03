-- Convertido automaticamente de Guidelime_Zarant (Horde/30-40.lua).
-- (c) Zarant - GNU GPL v3 (ver LICENSE.txt). Gerado por tools/guidelime2azimute.py.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id classic.h.30-32-hillsbrad-arathi
#name 30-32 Hillsbrad/Arathi
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Horde
#levels 30-32
#zones 1424 1417
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    vendor |opt
    note-enUS Withdraw Hillsbrad Human Skull from your bank
    note-ptBR Retire o Hillsbrad Human Skull do seu banco
step
    vendor |opt
    note-enUS Deposit the following items in your bank: Belgrom's Sealed Note Kodo Skin Scroll Kravel's Parts Fragments of Rok'Alim
    note-ptBR Guarde os seguintes itens no seu banco: Belgrom's Sealed Note Kodo Skin Scroll Kravel's Parts Fragments of Rok'Alim
step
    only Hunter
    goto 1458 58.1,32.7
    note-enUS Take the Zeppelin to Undercity
    note-ptBR Pegue o zepelim para Undercity
    note-enUS Buy a level 30 quiver and a level 29 crossbow from the weapon vendor in the middle
    note-ptBR Compre uma aljava de nível 30 e uma besta de nível 29 do vendedor de armas no meio
step
    goto 1458 64.2,49.6
    accept 1164
step
    fp
step
    goto 1424 61.6,20.8
    accept 544
step
    accept 556
step
    goto 1424 62.3,20.4
    accept 532
step
    goto 1424 63.9,19.6
    accept 552
step
    goto 1424 44.8,30.2 50
    objective 552/1
step
    goto 1424 29.7,41.9
    objective 567/1 |opt
step
    goto 1424 29.7,41.9
    objective 532/4
step
    goto 1424 29.7,41.9 60
    complete 532
step
    goto 1424 26.6,22.1
    objective 544/2 |opt
step
    goto 1424 26.7,23.9
    objective 544/3 |opt
step
    goto 1424 26.4,23.7
    objective 544/1 |opt
step
    goto 1424 24.4,21.2
    objective 544/4 |opt
step
    goto 1424 26.9,22.2 80
    objective 556/1 |opt
    note-enUS Collect Worn Stone Token (x10)
    note-ptBR Colete Worn Stone Token (x10)
step
    goto 1424 61.6,20.8
    turnin 544
step
    accept 545
step
    turnin 556
step
    accept 557
step
    goto 1424 62.3,20.4
    turnin 532
step
    accept 539
step
    goto 1416 62.1,82.5
    accept 533
step
    goto 1424 63.8,19.6
    turnin 552
step
    accept 553
step
    goto 1424 44,28.1
    objective 553/1
    note-enUS Flame of Azel charged
    note-ptBR Flame of Azel carregada
step
    goto 1424 44,26.7
    objective 553/2
    note-enUS Flame of Veraz charged
    note-ptBR Flame of Veraz carregada
step
    goto 1424 31.1,58.6
    note-enUS Enter the mine from the bottom entrance
    note-ptBR Entre na mina pela entrada de baixo
    objective 567/3 |opt
step
    goto 1424 31.2,56.1
    objective 539/1
step
    goto 1424 31.2,56.1 70
    objective 539/2
step
    goto 1424 31.2,56.1 70
    complete 546
step
    goto 1416 20.1,60.5 110
    objective 557/1
    note-enUS Collect Bracers of Earth Binding (x4)
    note-ptBR Colete Bracers of Earth Binding (x4)
step
    complete 545
step
    goto 1416 37.5,66.3
    objective 553/3
    note-enUS Flame of Uzel charged
    note-ptBR Flame of Uzel carregada
step
    goto 1416 37.5,66.3
    objective 1136/1
    note-enUS Use the fresh carcass to summon Frostmaw Collect Frostmaw's Mane
    note-ptBR Use a fresh carcass para invocar Frostmaw. Colete Frostmaw's Mane
step
    goto 1416 57.2,69.3
    note-enUS Kill Syndicate mobs until you get either the Syndicate Missive or a Southshore Stout
    note-ptBR Mate mobs do Syndicate até conseguir o Syndicate Missive ou um Southshore Stout
    objective 533/1
    note-enUS Talk to Henchman Valik and hand in a Southshore Stout Collect Syndicate Missive
    note-ptBR Fale com Henchman Valik e entregue um Southshore Stout. Colete o Syndicate Missive
step
    goto 1416 60.7,81.3
    turnin 546
step
    goto 1424 61.6,20.8
    turnin 545
step
    turnin 557
step
    goto 1416 60.6,81.2
    accept 676
step
    goto 1416 61.2,82.2
    turnin 567
step
    turnin 539
step
    goto 1416 62,82.5
    turnin 533
step
    goto 1424 61.5,19.1
    accept 509
step
    turnin 553
step
    goto 1424 64.2,61.6 80
    objective 509/1
step
    note-enUS Head to Arathi Highlands
    note-ptBR Vá até Arathi Highlands
step
    goto 1417 33.9,44.6 90
    complete 676
step
    goto 1417 54.2,38.2
    objective 1164/2
step
    goto 1417 56.4,36.1
    objective 1164/1
step
    goto 1417 56.5,38.7
    objective 1164/3
step
    goto 1417 62.5,33.8
    accept 642
step
    path seq 1417 73.1,32.7
    goto 1417 74.2,33.9
    fp |opt
    note-enUS Get the Hammerfall FP
    note-ptBR Pegue o caminho de voo de Hammerfall
    turnin 676
step
    accept 677
step
    goto 1417 72.9,34.2
    accept 655
step
    goto 1417 74.6,36.3
    turnin 655
step
    accept 672
step
    accept 671
step
    complete 677
step
    complete 672 |opt
step
    goto 1417 32.3,28.3 130
    objective 671/1
step
    goto 1417 74.2,33.8
    turnin 677
step
    goto 1417 74.7,36.3
    turnin 671
    turnin 672
    accept 674
step
    goto 1417 72.6,34.1
    turnin 674
step
    fp
step
    goto 1424 61.5,19.2
    turnin 509
step
    accept 513
step
    goto 1424 62.4,20.4
    turnin 541
step
    accept 550
step
    goto 1424 62.7,20.2
    turnin 547
step
    fly 1458
step
    vendor |opt
    note-enUS Withdraw the following items from your bank: Belgrom's Sealed Note Kravel's Parts Fragments of Rok'Alim
    note-ptBR Retire os seguintes itens do seu banco: Belgrom's Sealed Note Kravel's Parts Fragments of Rok'Alim
step
    vendor |opt
    note-enUS Deposit Frostmaw's Mane in your bank
    note-ptBR Guarde a Frostmaw's Mane no seu banco
step
    goto 1458 64.1,49.3
    turnin 1164
step
    goto 1458 48.7,69.2
    turnin 513
step
    goto 1458 56.3,92.1
    turnin 550
step
    hearth
    note-enUS Hearth back to Camp Taurajo
    note-ptBR Use a Pedra de Regresso para voltar a Camp Taurajo
step
    fp
]==])

register([==[
#format 1
#id classic.h.32-34-shimmering-flats
#name 32-34 Shimmering Flats
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Horde
#levels 32-34
#zones 1441
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    goto 1441 45.7,50.7
    accept 5361
step
    turnin 1151
step
    goto 1441 67.6,63.9
    turnin 1146
step
    accept 1147
step
    accept 1110
    note-enUS Talk to Kravel Koalbeard Accept
    note-ptBR Fale com Kravel Koalbeard. Aceite
step
    accept 1104
    accept 1105
    note-enUS Talk with the gnome brothers Accept Accept
    note-ptBR Fale com os irmãos gnomos. Aceite. Aceite
step
    accept 1176
step
    accept 1175
step
    complete 1175 |opt
    note-enUS Kill basilisks as you go around
    note-ptBR Mate basiliscos enquanto circula pela área
step
    goto 1441 68.6,85.3 90
    note-enUS Kill mobs around the race track, make sure to prioritize vultures/scorpids
    note-ptBR Mate mobs ao redor da pista de corrida, priorize vultures/scorpids
    accept 1148 |opt
    note-enUS Kill bugs until you get a Silithid Carapace Accept
    note-ptBR Mate insetos até conseguir um Silithid Carapace. Aceite
    complete 1147
step
    complete 1148
step
    goto 1441 67.6,64
    turnin 1147 |opt
step
    goto 1446 58.91,0.27
    complete 1110
    complete 1104
    complete 1105
    complete 1176
    note-enUS Run clockwise around the race track until you complete all quests, make sure to prioritize vultures/scorpids
    note-ptBR Corra no sentido horário ao redor da pista de corrida até concluir todas as missões, priorize vultures/scorpids
step
    turnin 1175
step
    turnin 1110
    accept 5762
step
    goto 1441 77.8,77.2
    turnin 1112
step
    turnin 1105
    turnin 1104
    accept 1106
step
    turnin 1176
    accept 1178
step
    accept 1114
step
    goto 1441 78,77
    turnin 1114
step
    goto 1441 77.8,77.2
    accept 1115
step
    note-enUS Use the Battle.net website unstuck request to port you to Orgrimmar Skip this step if the website unstuck is on cooldown
    note-ptBR Use a solicitação de unstuck do site Battle.net para ir a Orgrimmar. Pule esta etapa se o unstuck do site estiver em recarga
step
    fp
step
    goto 1413 51.1,29.6
    turnin 1148
step
    accept 1184
step
    fp
step
    goto 1413 62.7,36.3
    turnin 1178
step
    accept 1180
step
    goto 1413 63.3,38.5
    turnin 1111
step
    accept 1112
step
    goto 1434 26.3,73.5
    note-enUS Take the boat to STV
    note-ptBR Pegue o barco para STV
    turnin 1180
step
    accept 1181
step
    goto 1434 27.1,77.3
    accept 605
step
    accept 201
step
    turnin 1115
step
    accept 1116
step
    accept 189
step
    accept 213
step
    goto 1434 27.2,76.9
    turnin 1181
step
    accept 1182
step
    goto 1434 26.9,77.1
    fp
    note-enUS Get the Booty Bay FP
    note-ptBR Pegue o caminho de voo de Booty Bay
step
    goto 1434 28.3,77.6
    accept 575
step
    hearth
    note-enUS Hearth back to Camp Taurajo
    note-ptBR Use a Pedra de Regresso para voltar a Camp Taurajo
step
    fly 1456
step
    vendor |opt
    note-enUS Deposit the following items in your bank: Kravel's Crate Fizzle Brassbolts' Letter
    note-ptBR Guarde os seguintes itens no seu banco: Kravel's Crate Fizzle Brassbolts' Letter
step
    vendor |opt
    note-enUS Withdraw the following items from your bank: Ordanus' Head Frostmaw's Mane Kodo Skin Scroll
    note-ptBR Retire os seguintes itens do seu banco: Ordanus' Head Frostmaw's Mane Kodo Skin Scroll
step
    goto 1456 45.8,64.6
    home
    note-enUS Set your HS to Thunder Bluff
    note-ptBR Defina sua Pedra de Regresso em Thunder Bluff
step
    goto 1456 61.3,80.8
    turnin 1136
step
    vendor |opt
    note-enUS Throw away the Kodo Skin Scroll
    note-ptBR Jogue fora o Kodo Skin Scroll
step
    fly 1442
]==])

register([==[
#format 1
#id classic.h.34-35-desolace
#name 34-35 Desolace
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Horde
#levels 34-35
#zones 1443
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    goto 1442 46,60.5
    turnin 1088
step
    goto 1443 55.8,30.1 90
    accept 1480
    note-enUS Grind Burning Blade mobs until you get a Flayed Demon Skin Accept
    note-ptBR Faça grind de mobs Burning Blade até conseguir uma Flayed Demon Skin Aceite
step
    goto 1443 38.9,27.2
    accept 5741
step
    goto 1443 56.2,59.6
    accept 1365
step
    accept 1368
step
    goto 1443 55.4,55.7
    turnin 5361
step
    goto 1443 52.6,54.4
    turnin 1432
step
    accept 1433
step
    accept 1434
step
    goto 1443 52.2,53.5
    turnin 1433
step
    accept 1435
step
    turnin 1480
step
    accept 1481
step
    goto 1443 73.4,41.6
    objective 1365/1
    note-enUS Kill Khan Dez'hepah, he has 3 different spawn loacations
    note-ptBR Mate Khan Dez'hepah, ele tem 3 locais de surgimento diferentes
step
    objective 1481/1 |opt
step
    objective 1434/1 |opt
step
    goto 1443 76.7,19.4 200
    complete 1434
step
    goto 1443 62.3,39
    accept 5501
step
    goto 1443 52.6,54.4
    turnin 1434
step
    goto 1443 52.2,53.4
    turnin 1481
step
    accept 1482
step
    goto 1443 56.2,59.5
    turnin 1365
step
    accept 1366
step
    goto 1443 60.8,61.9
    accept 5561
step
    goto 1443 69.9,75.1 200
    objective 1366/1 |opt
step
    note-enUS Grind Centaurs until you are friendly with the Gelkis Centaur
    note-ptBR Faça grind de Centauros até ficar amigável com Gelkis Centaur
step
    goto 1443 56.2,59.6
    turnin 1366
step
    goto 1443 52.5,59 150
    objective 5501/1
step
    goto 1443 60.8,61.9
    turnin 5561
step
    goto 1443 36.3,79.2
    turnin 1368
step
    accept 1370
step
    goto 1443 25.1,72.2
    accept 5763
step
    goto 1443 25.8,68.2
    accept 5381
step
    goto 1443 24.1,68.2
    home
    note-enUS Set your HS to Desolace
    note-ptBR Defina sua Pedra de Regresso em Desolace
step
    goto 1443 22.7,72.1
    accept 6142
step
    path seq 1443 21.6,74.1
    goto 1443 23.3,72.9
    fp |opt
    note-enUS Get the Desolace FP
    note-ptBR Pegue o caminho de voo de Desolace
    accept 6143
step
    goto 1443 47.8,61.8
    accept 6134
step
    goto 1443 62.3,39
    turnin 5501
step
    complete 1435 |opt
    note-enUS Kill Burning Blade mobs using the Burning Gem
    note-ptBR Mate mobs Burning Blade usando a Burning Gem
step
    goto 1443 55.2,30.1
    objective 5741/1
step
    goto 1443 54.9,26.7
    objective 5381/1
step
    goto 1443 38.9,27.1
    turnin 5741
step
    accept 6027
step
    goto 1443 36,30.4
    accept 6161
step
    objective 1482/1 |opt
    note-enUS Kill Slitherblade Oracles Drop rate is low, skip this quest if needed
    note-ptBR Mate Slitherblade Oracles A taxa de drop é baixa, pule esta missão se necessário
step
    objective 6161/2 |opt
    note-enUS Kill Nagas of any kind
    note-ptBR Mate Nagas de qualquer tipo
step
    objective 6142/1 |opt
    note-enUS Look for clams underwater
    note-ptBR Procure mariscos debaixo d'água
step
    goto 1443 32.4,29.2 60
    objective 6161/1
step
    goto 1443 28.2,6.6
    objective 6027/1
    note-enUS Click on the statue and kill the level 38 naga
    note-ptBR Clique na estátua e mate a naga de nível 38
step
    goto 1443 30,8.8
    turnin 6161
step
    complete 6143
step
    turnin 6027
step
    turnin 1435
    turnin 1482
step
    accept 1436
step
    accept 1484
step
    goto 1443 69.9,75.1 200
    objective 1370/1
    note-enUS Collect Crudely Dried Meat (x6)
    note-ptBR Colete Crudely Dried Meat (x6)
step
    hearth
    note-enUS Hearth back to Shadowprey Village
    note-ptBR Use a Pedra de Regresso para voltar a Shadowprey Village
step
    only Hunter
    note-enUS Stable your pet, tame a Scorpashi Lasher, learn Claw 5
    note-ptBR Coloque seu mascote no estábulo, dome um Scorpashi Lasher, aprenda Claw 5
step
    goto 1443 25.8,68.2
    turnin 5381
step
    turnin 1370
    accept 1373
step
    goto 1443 23.4,72.8
    turnin 6143
step
    goto 1443 22.7,72.1
    turnin 6142
step
    fly 1456
step
    vendor |opt
    note-enUS Withdraw Kravel's Crate from your bank
    note-ptBR Retire o Kravel's Crate do seu banco
step
    vendor |opt
    note-enUS Deposit Crate of Ghost Magnets in your bank
    note-ptBR Guarde a Crate of Ghost Magnets no seu banco
step
    fly 1454
step
    goto 1454 22.4,52.8
    turnin 1436
step
    goto 1454 75.2,34.3
    turnin 1184
step
    note-enUS Take the Zeppelin to STV
    note-ptBR Pegue o zepelim para STV
]==])

register([==[
#format 1
#id classic.h.35-37-northern-stv
#name 35-37 Northern STV
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Horde
#levels 35-37
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    goto 1434 31.5,29.7
    home
    note-enUS Set your HS to Grom'gol Base Camp
    note-ptBR Defina sua Pedra de Regresso em Grom'gol Base Camp
step
    goto 1434 32.1,29.2
    accept 570
step
    goto 1434 32.2,28.9
    accept 568
step
    goto 1434 32.2,27.8
    accept 596
step
    accept 629
step
    goto 1434 32.2,27.8
    accept 581
step
    complete 581 |opt
step
    complete 575 |opt
    note-enUS Kill crocolisks along the river bank
    note-ptBR Mate crocoliscos ao longo da margem do rio
step
    turnin 5762
    turnin 5763
step
    accept 583
step
    turnin 583
    accept 194
    accept 185
    accept 190
step
    objective 185/1 |opt
    note-enUS Kill Young Stranglethorn Tiger (x10)
    note-ptBR Mate Young Stranglethorn Tiger (x10)
step
    complete 190
step
    turnin 185
    turnin 190
    accept 186
    accept 191
step
    complete 191 |opt
step
    complete 186 |opt
step
    complete 605 |opt
step
    goto 1434 25,15.8 80
    objective 194/1
step
    turnin 191
step
    accept 192
step
    goto 1434 35.6,10.6
    turnin 186
step
    accept 187
step
    goto 1434 35.6,10.8
    turnin 194
step
    accept 195
step
    complete 187 |opt
step
    complete 581
step
    complete 195
step
    complete 568
step
    goto 1434 32.1,27.7
    turnin 581
step
    accept 582
step
    turnin 568
    accept 569
step
    fp
step
    goto 1434 27,77.2
    turnin 201
step
    goto 1434 28.3,77.5
    turnin 575
step
    accept 577
step
    hearth
    note-enUS Hearth back to Grom'gol
    note-ptBR Use a Pedra de Regresso para voltar a Grom'gol
step
    goto 1434 24.8,23
    objective 629/1
step
    goto 1434 25,17.5
    complete 605
step
    goto 1434 20.2,12.3 80
    objective 582/1
step
    complete 596
    complete 189
step
    turnin 629
    turnin 596
    turnin 582
    accept 638
step
    objective 577/1 |opt
    note-enUS Collect Snapjaw Crocolisk Skin (x5)
    note-ptBR Colete Snapjaw Crocolisk Skin (x5)
step
    goto 1434 36.9,30.7 80
    complete 569
step
    goto 1434 49,22.3 100
    complete 570
step
    complete 192
step
    path seq 1434 42.6,18.4
    goto 1434 43.4,20.4
    note-enUS Get Cozzle's Key by killing the named goblin on top of the oil rig
    note-ptBR Pegue a Cozzle's Key matando o goblin nomeado no topo da plataforma de petróleo
    objective 1182/1
step
    goto 1434 44.1,19.6 120
    objective 213/1
step
    goto 1434 35.7,10.8
    note-enUS Die on purpose and spirit rez
    note-ptBR Morra de propósito e ressuscite com o Spirit Healer
    turnin 195
step
    accept 196
step
    goto 1434 35.6,10.7
    turnin 187
step
    accept 188
step
    goto 1434 35.6,10.6
    turnin 192
step
    accept 193
step
    goto 1434 32.2,28.9
    hearth |opt
    turnin 569
step
    goto 1434 32.1,29.2
    turnin 570
step
    fp
step
    goto 1434 27.2,76.9
    turnin 1182
step
    goto 1434 27,77.1
    turnin 189
step
    accept 209
step
    turnin 213
step
    goto 1434 27.1,77.2
    turnin 605
step
    accept 600
step
    goto 1434 28.2,77.6
    turnin 577
step
    accept 628
step
    goto 1434 28.2,74.4
    vendor |opt
    note-enUS Buy Soothing Spices (x3)
    note-ptBR Compre Soothing Spices (x3)
step
    note-enUS Take the boat to Ratchet
    note-ptBR Pegue o barco para Ratchet
]==])

register([==[
#format 1
#id classic.h.37-38-dustwallow-marsh
#name 37-38 Dustwallow Marsh
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Horde
#levels 37-38
#zones 1445
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    vendor |opt
    note-enUS Deposit the Fuel Regulator Blueprints in your bank
    note-ptBR Guarde os Fuel Regulator Blueprints no seu banco
step
    fly 1445
step
    goto 1413 53.8,69.9
    accept 1201
step
    objective 1201/1 |opt
step
    goto 1445 35.1,38.2
    accept 1177
step
    goto 1445 29.7,47.64 1
    accept 1268 |opt
step
    goto 1445 29.83,48.24 1
    accept 1269 |opt
step
    goto 1445 29.64,48.61 1
    accept 1251
step
    turnin 1268
step
    turnin 1269
step
    turnin 1251
    accept 1321
step
    goto 1445 36.5,30.8
    turnin 1321
step
    accept 1322
step
    goto 1445 41,36.7
    accept 1273
    note-enUS Start the escort quest Accept
    note-ptBR Inicie a missão de escolta. Aceite
step
    goto 1445 42.5,38
    objective 1273/1
    note-enUS Question Reethe with Ogron Make sure to stay next to Ogron as he reaches the tent otherwise the quest will not complete after killing the 4 adds
    note-ptBR Interrogue Reethe com Ogron. Fique ao lado de Ogron quando ele chegar à tenda, senão a missão não será concluída depois de matar os 4 adds
step
    goto 1445 46.9,17.5
    accept 1270
    note-enUS Start the escort quest Accept
    note-ptBR Inicie a missão de escolta. Aceite
step
    complete 1270
step
    accept 1238
    note-enUS Click on the dirt mound Accept
    note-ptBR Clique no monte de terra Aceite
step
    accept 1218
    turnin 1218
    accept 1206
step
    goto 1445 57.1,21.9 90
    objective 1177/1
step
    goto 1445 34.3,22.6 100
    objective 1206/1
    note-enUS Collect Unpopped Darkmist Eye (x20)
    note-ptBR Colete Unpopped Darkmist Eye (x20)
step
    complete 1322
step
    complete 1201
step
    goto 1445 35.3,30.7
    turnin 1201
step
    accept 1202
step
    turnin 1238
step
    goto 1445 36.5,30.8
    turnin 1322
step
    accept 1323
step
    goto 1445 36.5,31.8
    turnin 1323
step
    turnin 1273
step
    accept 1276
step
    goto 1445 35.2,38.3
    turnin 1177
step
    goto 1445 55.4,25.9
    accept 1239
step
    turnin 1206
step
    goto 1445 71.5,51.3
    objective 1202/1
step
    goto 1445 35.3,30.7
    note-enUS Die on purpose and spirit rez
    note-ptBR Morra de propósito e ressuscite com o Spirit Healer
    turnin 1202
step
    turnin 1239
step
    accept 1240
step
    hearth
    note-enUS Hearth to Grom'gol Base Camp
    note-ptBR Use a Pedra de Regresso para Grom'gol Base Camp
step
    goto 1434 32.2,27.8
    turnin 1240
step
    accept 1261
    note-enUS Click on the cauldron Accept
    note-ptBR Clique no caldeirão Aceite
step
    note-enUS Take the Zeppelin to Undercity
    note-ptBR Pegue o zepelim para Undercity
]==])

register([==[
#format 1
#id classic.h.38-39-alterac-arathi
#name 38-39 Alterac/Arathi
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Horde
#levels 38-39
#zones 1416 1417
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    goto 1458 49.9,68.2
    accept 232
step
    goto 1458 58.7,55.1
    turnin 232
step
    accept 238
step
    goto 1458 49.9,68.2
    turnin 238
step
    accept 243
step
    vendor |opt
    note-enUS Deposit the followin items in your bank: Blackened Iron Shield Field Testing Kit
    note-ptBR Guarde os seguintes itens no seu banco: Blackened Iron Shield Field Testing Kit
step
    vendor |opt
    note-enUS Withdraw Fizzle Brassbolts' Letter from your bank
    note-ptBR Retire a Fizzle Brassbolts' Letter do seu banco
step
    fp
step
    goto 1424 62.6,20.7
    accept 566
step
    goto 1424 63.2,20.7
    accept 503
step
    goto 1416 63.2,43.9 60
    objective 503/2
step
    goto 1416 60,43.8
    turnin 503
step
    accept 506
step
    goto 1416 62.1,82.5
    turnin 506
step
    accept 507
step
    path seq 1416 47.8,17.3 53.5,20.8 56.1,26.8
    goto 1416 58.6,29.9
    objective 566/1 |opt
step
    goto 1416 39.3,14.5
    objective 507/1
step
    goto 1416 39.3,14.5
    turnin 507
step
    accept 508
step
    goto 1416 61.1,82.4
    turnin 566
step
    goto 1416 62.1,82.5
    turnin 508
step
    fp
step
    goto 1417 73.8,33.9
    turnin 638
step
    goto 1417 74.3,33.8
    accept 678
step
    goto 1417 72.7,34.2
    accept 675
step
    goto 1417 74.7,36.4
    turnin 675
step
    accept 701
step
    accept 673
step
    goto 1417 62.5,33.8
    accept 642
step
    goto 1417 83.7,33.5 175
    objective 642/1
    note-enUS Collect Mote of Myzrael (x12)
    note-ptBR Colete Mote of Myzrael (x12)
step
    goto 1417 84.3,31
    turnin 642
step
    accept 651
step
    goto 1417 66.7,29.8
    objective 651/2
step
    goto 1417 52,50.8
    objective 651/3
step
    goto 1417 25.5,30.1
    objective 651/1
step
    goto 1417 29.7,63
    objective 673/1
step
    goto 1417 36.2,57.3
    turnin 651
step
    accept 652
step
    complete 652 |opt
    note-enUS Find and kill Fozruk but don't go out of your way to finish this step, he patrols the whole zone This is a difficult elite to solo, consider skipping this step
    note-ptBR Encontre e mate Fozruk, mas não se desvie do caminho para concluir esta etapa, ele patrulha a zona inteira É um elite difícil de solar, considere pular esta etapa
step
    complete 701
step
    complete 678
step
    goto 1417 36,58.1
    turnin 652
step
    accept 688
step
    goto 1417 74.7,36.4
    turnin 701
step
    accept 702
step
    turnin 673
step
    goto 1417 74.5,35.5
    turnin 688
step
    accept 687
step
    goto 1417 72.7,34.2
    turnin 702
step
    goto 1417 74.2,33.9
    turnin 678
step
    goto 1417 72.8,34.1
    accept 847
step
    goto 1417 74.7,36.4
    turnin 847
step
    goto 1417 21.5,72.6 20
    note-enUS Head to Faldir's Cove, follow the path between the mountains and Stromgarde's southeastern wall
    note-ptBR Vá até Faldir's Cove, siga o caminho entre as montanhas e a muralha sudeste de Stromgarde
step
    accept 663
step
    turnin 663
step
    accept 662
step
    accept 664 |opt
step
    accept 665
step
    complete 665
    note-enUS Do the escort quest
    note-ptBR Faça a missão de escolta
step
    turnin 665
    accept 666
step
    complete 664 |opt
step
    complete 666 |opt
    note-enUS Look for Elven Gems underwater, use the goggles provided to track them on your minimap
    note-ptBR Procure Elven Gems debaixo d'água, use os óculos fornecidos para rastreá-las no minimapa
step
    goto 1417 23.39,85.09 1
    objective 662/2
    note-enUS Enter the ship through the stairs at the front side of the deck Loot the book inside the cauldron next to the stairs
    note-ptBR Entre no navio pela escada na parte da frente do convés Saqueie o livro dentro do caldeirão ao lado da escada
step
    goto 1417 23.05,84.52 1
    objective 662/1
    note-enUS Move towards the back of the ship Loot the chart hanging on the ledge of the wooden ring that supports the ship's mast
    note-ptBR Vá para a parte de trás do navio. Saqueie o mapa pendurado na borda do anel de madeira que sustenta o mastro do navio
step
    goto 1417 20.46,85.62 1
    objective 662/3
    note-enUS Enter the ship through the opening on the front side of the deck Loot the chart on top of a box next to a cannon
    note-ptBR Entre no navio pela abertura na parte da frente do convés Saqueie a carta náutica em cima de uma caixa ao lado de um canhão
step
    goto 1417 20.65,85.1 1
    objective 662/4
    note-enUS Exit the ship and enter it from the hole on the hull Loot the ledger on the floor
    note-ptBR Saia do navio e entre pelo buraco no casco Saqueie o livro-razão no chão
step
    complete 664
step
    complete 666
step
    turnin 662
step
    turnin 664
    turnin 666
    accept 668
step
    turnin 668
    accept 669
step
    goto 1437 33.3,13 30
step
    path seq 1437 53.9,70.3
    goto 1437 55.9,91.9 40
    note-enUS Run to Loch Modan
    note-ptBR Corra até Loch Modan
step
    goto 1432 25.7,74.6
    note-enUS Head towards the mountain shortcut
    note-ptBR Siga em direção ao atalho da montanha
]==])

register([==[
#format 1
#id classic.h.39-40-badlands
#name 39-40 Badlands
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Horde
#levels 39-40
#zones 1418
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    goto 1418 4,44.8
    fp
    note-enUS Get the Badlands FP
    note-ptBR Pegue o caminho de voo de Badlands
step
    goto 1418 2.6,46.2
    accept 2258
step
    goto 1418 6.5,47
    accept 1419
step
    complete 2258 |opt
    note-enUS Do as you quest//Make sure to prioritize Buzzards
    note-ptBR Faça enquanto faz as missões//Priorize os Buzzards
step
    complete 1419 |opt
step
    vendor |opt
step
    goto 1418 25.9,45
    accept 710
step
    goto 1418 19.6,42.5 60
    objective 710/1
    note-enUS Collect Small Stone Shard (x10)
    note-ptBR Colete Small Stone Shard (x10)
step
    turnin 710
step
    accept 711
step
    goto 1418 14.1,36.7
    objective 711/1
    note-enUS Collect Large Stone Slab (x3)
    note-ptBR Colete Large Stone Slab (x3)
step
    objective 2258/3
    note-enUS Collect Rock Elemental Shard (x5)
    note-ptBR Colete Rock Elemental Shard (x5)
step
    turnin 711
step
    goto 1418 42.4,52.8
    accept 703
step
    goto 1418 42.3,52.6
    turnin 703 |opt
    turnin 1106
step
    accept 1108
step
    goto 1418 50.5,69 60
    objective 1108/1 |opt
step
    goto 1418 51.4,76.8
    turnin 687
step
    accept 692
step
    complete 692
step
    turnin 692
step
    goto 1418 42.2,53
    turnin 1108
step
    goto 1418 42.2,53
    turnin 703
step
    goto 1418 42.2,53
    accept 1137
step
    goto 1418 6.5,47.2
    turnin 1419
step
    accept 1420
step
    turnin 2258
step
    hearth
    note-enUS Hearth to Grom'gol Base camp
    note-ptBR Use a Pedra de Regresso para Grom'gol Base camp
]==])
