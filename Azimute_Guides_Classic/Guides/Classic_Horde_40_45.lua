-- Convertido automaticamente de Guidelime_Zarant (Horde/40-45.lua).
-- (c) Zarant - GNU GPL v3 (ver LICENSE.txt). Gerado por tools/guidelime2azimute.py.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id classic.h.40-41-stv-swamp-of-sorrows
#name 40-41 STV/Swamp of Sorrows
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Horde
#levels 40-41
#zones 1434 1435
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    goto 1434 32.1,27.8
    accept 584
step
    goto 1434 32.2,27.7
    accept 598
step
    objective 628/1 |opt
step
    goto 1434 32.2,17.3
    objective 188/1 |opt
step
    goto 1434 23.4,8
    objective 584/1
step
    goto 1434 23.5,9.5
    objective 584/2
step
    complete 188
step
    goto 1434 32.2,27.6
    turnin 584
    note-enUS Click on the Bubbling Cauldron Turn in
    note-ptBR Clique no Bubbling Cauldron Entregue
step
    accept 585
step
    goto 1434 32.1,29.2
    accept 572
step
    goto 1434 31,42.5
    objective 196/1
    complete 572
step
    goto 1434 41.6,43.6
    objective 600/1
    note-enUS Collect Singing Blue Crystal (x10)
    note-ptBR Colete Singing Blue Crystal (x10)
step
    objective 209/1 |opt
step
    objective 598/1 |opt
    note-enUS Collect Split Bone Necklace (x25)
    note-ptBR Colete Split Bone Necklace (x25)
step
    goto 1434 47.6,39.6
    objective 585/3
step
    goto 1434 42.2,36.1
    objective 585/2
step
    goto 1434 46.1,32.3
    objective 585/1
step
    goto 1434 49.6,24.02 30
    complete 193
    note-enUS Look for Bhag'thera with eagle eye You can found it either north or west of the ogre mound
    note-ptBR Procure Bhag'thera com o eagle eye. Você pode encontrá-lo ao norte ou a oeste do monte dos ogros
step
    hearth
step
    goto 1434 32.2,27.8
    turnin 598
step
    turnin 585
    accept 1261
step
    goto 1434 32.1,29.2
    turnin 572
step
    goto 1434 35.6,10.6
    turnin 196
step
    accept 197
step
    turnin 188
step
    turnin 193
step
    goto 1434 40.7,3 30
step
    goto 1430 28.1,29.6 30
    note-enUS Run to Deadwind Pass
    note-ptBR Corra até Deadwind Pass
step
    goto 1430 28.1,29.6
    accept 1372
step
    turnin 1372
step
    accept 1383
step
    path seq 1435 13.96,61.67 46.1,54.7
    goto 1435 44.7,57.1
    complete 1116 |opt
    note-enUS Start by grinding whelps You won't find enough whelps to finish this quest in 1 pass Head to stonard
    note-ptBR Comece farmando whelps. Você não encontrará whelps suficientes para concluir esta missão em 1 passada. Vá para stonard
    accept 698
step
    accept 1430
step
    goto 1435 46.1,54.7
    fp
    note-enUS Get the Flight Path
    note-ptBR Pegue o caminho de voo
step
    goto 1435 47.8,55.2
    turnin 1420
step
    goto 1435 48,55
    accept 1424
step
    objective 698/1 |opt
step
    accept 1392 |opt
    note-enUS Kill Noboru, click the quest item Accept
    note-ptBR Mate Noboru, clique no item de missão Aceite
step
    goto 1435 26,31.4
    accept 1389
step
    complete 1373 |opt
step
    complete 1389 |opt
    note-enUS Loot 6 blue crystals around the wooden huts
    note-ptBR Saqueie 6 cristais azuis ao redor das cabanas de madeira
step
    accept 1393
step
    complete 1393
step
    complete 1389
step
    turnin 1393
    note-enUS Click on Galen's Strongbox Turn in
    note-ptBR Clique em Galen's Strongbox Entregue
step
    goto 1435 81.4,81
    turnin 698
step
    accept 699
step
    complete 1116 |opt
    note-enUS Kill green dragons around the lake
    note-ptBR Mate dragões verdes ao redor do lago
step
    complete 1424
step
    goto 1435 48,54.9
    turnin 1424
step
    goto 1435 25.9,31.5
    turnin 1392
step
    turnin 1389
step
    goto 1435 5.6,31.4
    objective 1383/2
step
    complete 1116
step
    hearth
    note-enUS Hearth back to STV
    note-ptBR Use a Pedra de Regresso para voltar a STV
step
    fp
step
    goto 1434 27,77.2
    turnin 1116
step
    goto 1434 27,77.1
    turnin 209
step
    goto 1434 27.1,77
    turnin 669
step
    goto 1434 27.2,76.9
    accept 1183
step
    goto 1434 27,77.2
    accept 1117
    accept 2864
step
    goto 1434 27.1,77.3
    turnin 600
step
    goto 1434 27.7,77.1
    accept 2872
step
    goto 1434 28.3,77.5
    turnin 628
step
    goto 1413 62.4,37.6
    note-enUS Take the Boat to Ratchet
    note-ptBR Pegue o barco para Ratchet
    turnin 1270
step
    fp
]==])

register([==[
#format 1
#id classic.h.41-42-desolace-part-2
#name 41-42 Desolace part 2
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Horde
#levels 41-42
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    home
    note-enUS Set your HS to Camp Taurajo
    note-ptBR Defina sua Pedra de Regresso em Camp Taurajo
step
    fly 1456
step
    vendor |opt
    note-enUS Withdraw the following items from your bank: Blackened Iron Shield Crate of Ghost Magnets
    note-ptBR Retire os seguintes itens do seu banco: Blackened Iron Shield Crate of Ghost Magnets
step
    vendor |opt
    note-enUS Deposit the following items in your bank: Mire Lord Fungus Goblin Rumors
    note-ptBR Guarde os seguintes itens no seu banco: Mire Lord Fungus Goblin Rumors
step
    goto 1456 54,80.9
    turnin 1276
step
    goto 1456 61.4,80.7
    accept 1205
step
    fly 1443
step
    goto 1443 25.8,68.2
    accept 5581
step
    objective 1383/3 |opt
    note-enUS Kill one of the sea giants that roam desolace Abandon this quest if you can't find any giants by the time you finish desolace
    note-ptBR Mate um dos gigantes marinhos que vagam por desolace. Abandone esta missão se não encontrar nenhum gigante até terminar desolace
step
    goto 1443 36.3,79.2
    turnin 1373
step
    accept 1374
step
    goto 1443 47.8,61.8
    accept 6134
step
    goto 1443 52.2,53.5
    accept 1484
step
    goto 1443 52.6,54.3
    turnin 1484
step
    goto 1443 52.6,54.3
    accept 1488
step
    complete 5581 |opt
step
    objective 1488/1 |opt
step
    goto 1443 55.9,77.8
    objective 1488/2
step
    goto 1443 66.3,80.1
    objective 1374/1
step
    goto 1443 64,91.7
    objective 6134/1
step
    complete 5581
step
    goto 1443 36.3,79.3
    turnin 1374
step
    accept 1380
step
    turnin 5581
step
    goto 1443 29.7,53.5
    note-enUS Kill Centaurs at the Valley of Spears until the Horn Mouthpiece drops
    note-ptBR Mate Centauros em Valley of Spears até cair o Horn Mouthpiece
    objective 1380/1
    note-enUS Use the mouthpiece to summon Khan Hratha You'll have to fight 2 waves of mobs before getting to him, he comes with 3 extra adds
    note-ptBR Use o mouthpiece para invocar Khan Hratha. Você terá de enfrentar 2 ondas de mobs antes de chegar até ele, e ele vem com 3 adds extras
step
    goto 1443 33.9,53.6
    accept 6132
    note-enUS Start the escort quest Accept
    note-ptBR Inicie a missão de escolta. Aceite
step
    complete 6132
    note-enUS Finish the escort quest
    note-ptBR Termine a missão de escolta
step
    goto 1443 47.8,61.8
    turnin 6132
step
    turnin 6134
step
    goto 1443 52.6,54.4
    turnin 1488
step
    hearth
    note-enUS Hearth back to Camp Taurajo
    note-ptBR Use a Pedra de Regresso para voltar a Camp Taurajo
step
    fly 1446
]==])

register([==[
#format 1
#id classic.h.42-43-tanaris-dustwallow
#name 42-43 Tanaris/Dustwallow
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Horde
#levels 42-43
#zones 1446 1445
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    vendor |opt
    note-enUS Withdraw the following items from your bank: Goblin Rumors Field Testing Kit Fuel Regulator Blueprints
    note-ptBR Retire os seguintes itens do seu banco: Goblin Rumors Field Testing Kit Fuel Regulator Blueprints
step
    vendor |opt
    note-enUS Deposit the following items in your bank: Deepstrider Tumor
    note-ptBR Guarde os seguintes itens no seu banco: Deepstrider Tumor
step
    goto 1446 51.6,26.8
    turnin 2864
step
    goto 1446 51.8,26.9
    accept 2781
step
    goto 1446 52.5,27.9
    home
    note-enUS Set your HS to Gadgetzan
    note-ptBR Defina sua Pedra de Regresso em Gadgetzan
step
    goto 1446 52.4,28.5
    turnin 243
step
    accept 379
step
    accept 1690
step
    accept 1707
step
    complete 1690 |opt
step
    goto 1446 67,22.4
    accept 3520
step
    goto 1446 67.1,24
    turnin 2872
step
    note-enUS Make sure you have 10 Water Pouches before heading back to town
    note-ptBR Certifique-se de ter 10 Water Pouches antes de voltar para a cidade
step
    goto 1446 52.5,28.5
    turnin 1707
step
    turnin 379
step
    turnin 1690
    accept 1691
step
    goto 1446 52.7,7.8
    turnin 1117
    note-enUS Head to Shimmering Flats Turn in
    note-ptBR Vá até Shimmering Flats Entregue
step
    goto 1446 52.9,7.7
    turnin 1137
step
    goto 1446 54.2,6.9
    turnin 1183
step
    accept 1186
step
    accept 1190
step
    goto 1446 54.3,7
    turnin 1186
step
    accept 1187
step
    path seq 1446 54,7.63
    goto 1446 52.36,7.88
    accept 1191 |opt
    turnin 1191 |opt
    note-enUS Talk with Zamek to create a diversion Click on the unguarded plans inside the metal hut
    note-ptBR Fale com Zamek para criar uma distração. Clique nos planos desprotegidos dentro da cabana de metal
    turnin 1190
    accept 1194
step
    goto 1446 52.7,7.8
    accept 1118
step
    goto 1446 54.2,6.9
    turnin 1194
step
    goto 1446 51.6,25.5
    fly 1445
step
    goto 1445 36.3,31.4
    accept 1166
step
    goto 1445 37.1,33
    accept 1169
step
    goto 1445 37.3,31.4
    accept 1168
step
    objective 1205/1 |opt
step
    goto 1445 54.1,56.5
    objective 1187/1
step
    goto 1445 55.4,63.1 50
    objective 1261/1
step
    goto 1445 44.5,66
    objective 1166/1
step
    goto 1445 38.7,65.6
    objective 1166/2
step
    goto 1445 36.6,69.5
    objective 1166/3
step
    complete 1168
    complete 1169
step
    goto 1445 37.1,33
    turnin 1169
step
    goto 1445 36.3,31.5
    turnin 1166
step
    goto 1445 37.3,31.4
    turnin 1168
step
    goto 1445 37.1,33
    accept 1170
step
    goto 1445 36.3,31.4
    turnin 1170
step
    accept 1171
step
    goto 1445 37.1,33
    turnin 1171
step
    accept 1172
step
    goto 1445 35.3,30.6
    turnin 1261
step
    accept 1262
step
    goto 1445 48.5,75.3
    complete 1172
step
    turnin 1172
step
    goto 1445 36.3,31.5
    accept 1173
step
    complete 1173
step
    goto 1445 37.1,33
    turnin 1173
step
    hearth
step
    goto 1446 51.8,26.9
    accept 2781
step
    accept 654
    note-enUS Click on the Power Source in your bags Accept
    note-ptBR Clique na Power Source nas suas bolsas Aceite
step
    complete 654 |opt
step
    objective 2781/1 |opt
step
    complete 1691
step
    only Hunter
    accept 3161
step
    only Hunter
    path seq 1446 47.31,65.14
    goto 1446 40.68,72.98
    complete 3161
step
    only Hunter
    turnin 3161
step
    goto 1446 52.4,28.5
    turnin 654
step
    accept 864
step
    turnin 1691
step
    turnin 2781
step
    vendor |opt
    note-enUS Deposit the following items in your bank: Kravel's Scheme Sealed Field Testing Kit Seaforium Booster Deadmire's Tooth
    note-ptBR Guarde os seguintes itens no seu banco: Kravel's Scheme Sealed Field Testing Kit Seaforium Booster Deadmire's Tooth
step
    fly 1444
]==])

register([==[
#format 1
#id classic.h.43-44-feralas
#name 43-44 Feralas
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Horde
#levels 43-44
#zones 1444
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    goto 1444 75.7,44.3
    accept 2987
step
    accept 2975 |opt
step
    goto 1444 76,42.7
    accept 2973
step
    goto 1444 74.9,42.5
    accept 2862
step
    goto 1444 74.5,42.9
    accept 2822
step
    objective 2862/1 |opt
    note-enUS Collect Woodpaw Gnoll Mane (x10)
    note-ptBR Colete Woodpaw Gnoll Mane (x10)
step
    objective 2987/1 |opt
step
    accept 2978 |opt
    note-enUS Accept It's a small parchment that can spawn anywhere in the camp
    note-ptBR Aceite É um pequeno pergaminho que pode surgir em qualquer lugar do acampamento
step
    goto 1444 76.1,33.2
    complete 2975
step
    goto 1444 72.7,38.3 60
    complete 2862
step
    turnin 2862
step
    accept 2863
step
    turnin 2975 |opt
    accept 2980 |opt
    turnin 2978 |opt
    accept 2979 |opt
step
    goto 1444 75.7,44.3
    turnin 2987
step
    goto 1444 74.8,45.2
    home
    note-enUS Set your HS to Feralas
    note-ptBR Defina sua Pedra de Regresso em Feralas
step
    goto 1444 68.8,48
    objective 2973/1
    note-enUS Collect Iridescent Sprite Darter Wing (x10)
    note-ptBR Colete Iridescent Sprite Darter Wing (x10)
step
    goto 1444 67.5,55.6
    objective 2863/1
step
    goto 1444 76,42.8
    hearth |opt
    note-enUS Hearth back to Camp Mojache
    note-ptBR Use a Pedra de Regresso para voltar a Camp Mojache
    turnin 2973
step
    accept 2974
step
    goto 1444 74.9,42.5
    turnin 2863
step
    accept 2902
step
    goto 1444 67.1,46.4
    objective 2974/1
step
    note-enUS Click on the map sitting on top of a box
    note-ptBR Clique no mapa em cima de uma caixa
step
    goto 1444 71.6,55.9
    turnin 2902
step
    goto 1444 71.6,55.9
    accept 2903
step
    goto 1444 76,42.8
    turnin 2974
step
    accept 2976
step
    goto 1444 74.9,42.4
    turnin 2903
step
    accept 7730
step
    accept 7731
step
    goto 1444 76.9,61.6
    objective 7731/1
step
    objective 7730/1
step
    objective 3520/1 |opt
step
    complete 2979 |opt
step
    goto 1444 56.64,75.89
    complete 2980 |opt
    vendor
    note-enUS Head south and look for Hippogryph nests by the mountains Loot an Hyppogryph Egg-OnStepActivation,
    note-ptBR Siga para o sul e procure ninhos de Hipogrifo perto das montanhas Saqueie um Hyppogryph Egg-OnStepActivation,
step
    note-enUS Kill Frayfeather Hippogryphs Collect Long Elegant Feather (x10)
    note-ptBR Mate Frayfeather Hippogryphs Colete Long Elegant Feather (x10)
step
    complete 2980
step
    goto 1444 53.35,55.7
    accept 2766 |opt
    turnin 2766 |opt
    note-enUS Turn in Skip this step if you can't find the Distress Beacon
    note-ptBR Entregue. Pule esta etapa se não conseguir encontrar o Distress Beacon
step
    goto 1444 54.4,55.8
    objective 2822/1
    note-enUS Collect Thick Yeti Hide (x10)
    note-ptBR Colete Thick Yeti Hide (x10)
step
    accept 2767
    note-enUS Start the chicken escort Accept
    note-ptBR Inicie a escolta da galinha. Aceite
step
    hearth |opt
    note-enUS Hearth back to Camp Mojache
    note-ptBR Use a Pedra de Regresso para voltar a Camp Mojache
    turnin 2980 |opt
    turnin 2979 |opt
    accept 3002 |opt
step
    goto 1444 74.4,43.4
    accept 3121
step
    goto 1444 74.4,42.9
    turnin 2822
step
    goto 1444 74.9,42.5
    turnin 7730
step
    turnin 7731
step
    accept 7732
step
    fly 1454
step
    goto 1454 39.2,86.3
    turnin 3002
step
    goto 1454 39,38.1
    turnin 1262
    accept 7541
    turnin 7541
step
    goto 1454 56.5,46.6
    turnin 7732
step
    goto 1454 75.2,34.2
    turnin 2976
step
    goto 1454 49.6,50.4
    turnin 3121
step
    accept 3122
step
    vendor |opt
    note-enUS Deposit the following items in your bank: Neeru's Herb Pouch Hippogryph Egg Yeh'kinya's Bramble Long Elegant Feather
    note-ptBR Guarde os seguintes itens no seu banco: Neeru's Herb Pouch Hippogryph Egg Yeh'kinya's Bramble Long Elegant Feather
step
    note-enUS Take the zeppelin to STV
    note-ptBR Pegue o zepelim para STV
]==])

register([==[
#format 1
#id classic.h.44-45-southern-stv
#name 44-45 Southern STV
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Horde
#levels 44-45
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    goto 1434 32.2,27.6
    accept 586
step
    goto 1434 32.1,29.2
    accept 571
step
    goto 1434 28.8,44.8
    objective 197/1
step
    path seq 1434 43.3,39.2
    goto 1434 46.7,43.2 100
step
    goto 1434 35.7,10.8
    turnin 197
step
    accept 208
step
    goto 1434 32.2,27.7
    turnin 586
    note-enUS Click on the cauldron Turn in
    note-ptBR Clique no caldeirão Entregue
step
    accept 588
step
    goto 1434 32.2,27.7
    turnin 588
step
    accept 589
step
    fp
step
    vendor |opt
    note-enUS Withdrwa Kravel's Scheme from your bank
    note-ptBR Retire o Kravel's Scheme do seu banco
step
    goto 1434 26.7,76.4
    accept 617
step
    goto 1434 27.1,77.3
    accept 621
step
    turnin 1118
step
    goto 1434 27.7,77.1
    accept 606
step
    goto 1434 27.7,76.8
    accept 348
step
    goto 1434 28.1,76.2
    accept 595
step
    goto 1434 26.7,73.6
    accept 8551
step
    turnin 595
    accept 597
step
    turnin 597
    accept 599
step
    accept 587
step
    turnin 599
    accept 604
step
    turnin 2767
step
    accept 576
step
    goto 1434 28,82.4
    complete 604
step
    goto 1434 32.8,65.8
    objective 606/1
step
    goto 1434 32.8,65.8
    objective 571/1
step
    goto 1434 35.2,60.6
    note-enUS Keep grinding gorillas until you get 10 Gorilla fangs
    note-ptBR Continue o grind de gorilas até conseguir 10 Gorilla fangs
    objective 348/1
step
    goto 1434 26.9,73.7
    turnin 606
step
    accept 607
step
    goto 1434 27.6,76.7
    turnin 348
step
    goto 1434 27.7,77.1
    turnin 607
step
    accept 609
step
    goto 1434 27.2,77
    turnin 604
step
    accept 608
step
    fp
step
    goto 1434 32.1,29.2
    turnin 571
step
    accept 573
step
    goto 1434 38.2,35.5
    objective 208/1 |opt
step
    goto 1434 41.1,50.2
    objective 589/1
    note-enUS Collect Pulsing Blue Shard (x3)
    note-ptBR Colete Pulsing Blue Shard (x3)
step
    objective 621/1 |opt
step
    goto 1434 35.3,51.3
    objective 609/1
step
    goto 1434 34.9,51.8
    objective 609/2
step
    goto 1434 40,58.3
    objective 609/3
step
    goto 1434 37,69.5
    objective 8551/1
step
    accept 624 |opt
    note-enUS Look for it's a small scroll that can spawn in any of the 3 ships
    note-ptBR Procure. É um pequeno pergaminho que pode surgir em qualquer um dos 3 navios
step
    goto 1434 32.9,88.2
    objective 608/1
step
    goto 1434 30.6,90.6
    objective 608/3
step
    goto 1434 29.3,88.3
    objective 608/2
step
    objective 576/1
    objective 587/1
step
    objective 617/1 |opt
step
    goto 1434 28.9,62
    objective 573/2
step
    objective 573/1
step
    goto 1434 26.7,73.6
    turnin 8551
step
    goto 1434 28.6,75.9
    turnin 576
step
    goto 1434 27.8,77.1
    turnin 609
step
    vendor |opt
    note-enUS Withdraw the following items from your bank: Deepstrider Tumor Mire Lord Fungus Neeru's Herb Pouch Seaforium Booster
    note-ptBR Retire os seguintes itens do seu banco: Deepstrider Tumor Mire Lord Fungus Neeru's Herb Pouch Seaforium Booster
step
    goto 1434 26.7,76.4
    turnin 617
step
    turnin 621
step
    accept 580
step
    accept 1119
step
    note-enUS Withdraw all Green Hills pages from your bank
    note-ptBR Retire todas as páginas de Green Hills do seu banco
step
    goto 1434 27,77.3
    turnin 587
step
    goto 1434 27.1,77
    turnin 608
step
    fp
step
    goto 1434 32.1,29.2
    turnin 573
step
    goto 1434 32.2,27.8
    turnin 589
step
    goto 1434 35.7,10.8
    turnin 208
step
    fp
]==])
