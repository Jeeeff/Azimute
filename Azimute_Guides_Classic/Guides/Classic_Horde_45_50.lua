-- Convertido automaticamente de Guidelime_Zarant (Horde/45-50.lua).
-- (c) Zarant - GNU GPL v3 (ver LICENSE.txt). Gerado por tools/guidelime2azimute.py.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id classic.h.45-46-swamp-of-sorrows
#name 45-46 Swamp of Sorrows
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Horde
#levels 45-46
#zones 1435
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    goto 1435 34.3,66
    accept 2784
step
    complete 2784
    note-enUS Go through the whole dialogue
    note-ptBR Passe por todo o diálogo
step
    turnin 2784
step
    accept 2621
step
    goto 1435 47.9,55
    accept 1429
step
    turnin 2621
step
    accept 2622
step
    goto 1435 44.7,57.1
    accept 1430
step
    goto 1435 44.7,57.1
    turnin 2622
step
    accept 2623
step
    accept 699
step
    objective 699/1 |opt
    note-enUS Collect Sawtooth Snapper Claw (x6)
    note-ptBR Colete Sawtooth Snapper Claw (x6)
step
    objective 1383/1 |opt
    note-enUS Collect Shadow Panther Heart (x5)
    note-ptBR Colete Shadow Panther Heart (x5)
step
    goto 1435 77,4
    objective 1430/1
    note-enUS Collect Monstrous Crawler Leg (x10)
    note-ptBR Colete Monstrous Crawler Leg (x10)
step
    goto 1435 81.4,80.8
    turnin 699
step
    accept 1422
step
    goto 1435 83.7,80.5
    turnin 1422
step
    accept 1426
step
    complete 1426
step
    goto 1435 83.7,80.5
    turnin 1426
step
    accept 1427
step
    goto 1435 81.4,80.8
    turnin 1427
step
    accept 1428
step
    goto 1435 62.9,87.4
    objective 2623/1
step
    complete 1428
step
    goto 1435 83.7,80.4
    turnin 1428
step
    goto 1435 44.7,57.1
    note-enUS Die on purpose and spirit rez
    note-ptBR Morra de propósito e ressuscite com o Spirit Healer
    turnin 1430
step
    goto 1435 34.3,66
    turnin 2623
step
    accept 2801
step
    objective 2801/1
    note-enUS Go through the whole dialogue
    note-ptBR Passe por todo o diálogo
step
    turnin 2801
step
    goto 1435 22.9,48.3
    turnin 624
step
    accept 624
step
    goto 1430 27.8,29.1
    turnin 1383
step
    accept 1388
step
    turnin 1388
step
    hearth
    note-enUS Hearth to Camp Mojache
    note-ptBR Use a Pedra de Regresso para Camp Mojache
step
    goto 1444 74.5,43.4
    turnin 3122
    accept 3123
    accept 3380
step
    fly 1446
]==])

register([==[
#format 1
#id classic.h.46-48-tanaris
#name 46-48 Tanaris
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Horde
#levels 46-48
#zones 1446
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    goto 1446 52.7,7.8
    turnin 1119
step
    goto 1446 54.3,7.1
    turnin 1187
step
    accept 1188
step
    goto 1446 52.7,7.8
    accept 1120
step
    goto 1446 52.6,7.6
    turnin 1120
step
    goto 1446 52.7,7.8
    accept 1122
step
    vendor |opt
    note-enUS Withdraw the following items from your bank: Hippogryph Egg Yeh'kinya's Bramble
    note-ptBR Retire os seguintes itens do seu banco: Hippogryph Egg Yeh'kinya's Bramble
step
    vendor |opt
    note-enUS Deposit the following items in your bank: Fool's Stout Report Bundle of Atal'ai Artifacts Wildkin Muisek Vessel
    note-ptBR Guarde os seguintes itens no seu banco: Fool's Stout Report Bundle of Atal'ai Artifacts Wildkin Muisek Vessel
step
    goto 1446 51.9,27
    accept 2875
step
    accept 3362
step
    goto 1446 51,27.3
    turnin 1188
step
    goto 1446 50.2,27.5
    accept 992
step
    goto 1446 51.8,28.6
    accept 2605
step
    home
    note-enUS Set your HS to Gadgetzan
    note-ptBR Defina sua Pedra de Regresso em Gadgetzan
step
    goto 1446 52.8,27.4
    accept 5863
step
    goto 1446 52.3,27 1
    accept 2741
    turnin 2741
    note-enUS Click on the Egg-O-Matic and turn in your Hippogryph Egg ( ) It's a small metal console sitting next to the teleporter looking thing
    note-ptBR Clique no Egg-O-Matic e entregue seu Hippogryph Egg ( ) É um pequeno console de metal ao lado da coisa que parece um teletransportador
step
    goto 1446 66.6,22.3
    accept 8365
step
    goto 1446 67,22.4
    turnin 3520
step
    goto 1446 67.1,23.9
    accept 8366
step
    goto 1446 67.1,23.9
    accept 2873
step
    path seq 1446 68.85,41.55
    goto 1446 73.2,47.1 140
    note-enUS Head to Lost Rigger Cove
    note-ptBR Vá até Lost Rigger Cove
step
    complete 2875 |opt
    note-enUS Kill Andre Firebeard by the campfire
    note-ptBR Mate Andre Firebeard perto da fogueira
step
    complete 8365 |opt
    complete 8366 |opt
    complete 2873
step
    complete 8365
    complete 8366
step
    accept 351 |opt
    note-enUS Grind pirates until you find a distress beacon Accept Skip this step and grind an extra 5% xp if you don't find it
    note-ptBR Faça grind de piratas até encontrar um distress beacon Aceite Pule esta etapa e faça grind de 5% de XP extra se não encontrá-lo
step
    note-enUS Make sure you have enough mageweave to do the Thunder Bluff+Orgrimmar+Darkspear cloth turn ins (9 stacks)
    note-ptBR Certifique-se de ter mageweave suficiente para as entregas de tecido de Thunder Bluff+Orgrimmar+Darkspear (9 pilhas)
step
    hearth
    note-enUS Grind until your HS is off cooldown Hearth back to Gadgetzan
    note-ptBR Faça grind até sua Pedra de Regresso sair da recarga Use a Pedra de Regresso para voltar a Gadgetzan
step
    goto 1446 39.1,29.3
    objective 992/1
step
    turnin 992
step
    accept 82
step
    goto 1446 52.7,45.9
    turnin 3380 |opt
    accept 3161
step
    goto 1446 34.8,44.3 120
    objective 82/1
    note-enUS Collect Centipaar Insect Parts (x5)
    note-ptBR Colete Centipaar Insect Parts (x5)
step
    goto 1446 41.5,57.8
    objective 5863/3
step
    complete 5863
step
    complete 2605 |opt
    complete 3362
step
    complete 2605
step
    accept 1560
    note-enUS Start the escort quest Accept
    note-ptBR Inicie a missão de escolta. Aceite
step
    path seq 1446 47.31,65.14
    goto 1446 40.68,72.98
    complete 3161
step
    goto 1446 60.2,64.7
    turnin 351
step
    accept 648
    note-enUS Start the escort quest Accept
    note-ptBR Inicie a missão de escolta. Aceite
step
    complete 648 |opt
    note-enUS Escort the robot chicken
    note-ptBR Escolte a galinha robô
step
    goto 1446 66.6,25.7
    turnin 1560
step
    goto 1446 67,23.9
    turnin 2875
step
    turnin 8366
step
    goto 1446 67.1,23.9
    turnin 2873
step
    accept 2874
step
    goto 1446 66.6,22.3
    turnin 8365
step
    hearth |opt
    note-enUS Hearth back to Gadgetzan
    note-ptBR Use a Pedra de Regresso para voltar a Gadgetzan
    vendor |opt
    note-enUS Deposit Stoley's Bottle in your bank
    note-ptBR Guarde a Stoley's Bottle no seu banco
step
    goto 1446 51.8,28.6
    turnin 2605
step
    accept 2606
step
    goto 1446 50.9,27
    turnin 82
step
    goto 1446 51.1,26.9
    turnin 2606
step
    accept 2641
step
    goto 1446 50.2,27.5
    accept 10
step
    goto 1446 51.5,26.8
    turnin 3362
step
    goto 1446 52.8,27.4
    turnin 5863
step
    goto 1446 52.7,45.9
    turnin 3380
step
    goto 1446 52.7,45.9
    turnin 3161
step
    path seq 1446 54.63,70.75
    goto 1446 55.97,71.18
    complete 10
    note-enUS Enter the eastern bug hole Loot the machine console looking thing
    note-ptBR Entre no buraco de insetos do leste Saqueie a coisa que parece um console de máquina
step
    note-enUS Die on purpose and spirit rez at Gadgetzan |only Hunter
    note-ptBR Morra de propósito e ressuscite com o Spirit Healer em Gadgetzan |only Hunter
    turnin 10
step
    accept 110
step
    goto 1446 50.9,27
    turnin 110
step
    accept 113
step
    goto 1446 50.2,27.5
    turnin 113
step
    accept 32
step
    goto 1445 31.1,66.1
    fly 1445 |opt
    turnin 625
step
    goto 1445 31.1,66.1
    accept 626
step
    note-enUS Die and spirit rez
    note-ptBR Morra e ressuscite com o Spirit Healer
    fly 1456
step
    vendor |opt
    note-enUS Withdraw the following items from your bank: Deadmire's Tooth Sealed Field Testing Kit Bundle of Atal'ai Artifacts Wildkin Muisek Vessel Long Elegant Feather
    note-ptBR Retire os seguintes itens do seu banco: Deadmire's Tooth Sealed Field Testing Kit Bundle of Atal'ai Artifacts Wildkin Muisek Vessel Long Elegant Feather
step
    goto 1456 43.1,43
    note-enUS Do the Thunder Bluff cloth hand ins:
    note-ptBR Faça as entregas de tecido de Thunder Bluff:
step
    accept 7820 |opt
    turnin 7820 |opt
step
    accept 7821 |opt
    turnin 7821 |opt
step
    accept 7822 |opt
    turnin 7822 |opt
step
    goto 1456 61.5,80.9
    turnin 1205
step
    fly 1454 |opt
step
    goto 1454 37.8,87.8
    accept 7833 |opt
    turnin 7833 |opt
    accept 7834 |opt
    turnin 7834 |opt
    accept 7835 |opt
    turnin 7835 |opt
    note-enUS Do the Darkspear cloth turn ins: Wool Silk Mageweave
    note-ptBR Faça as entregas de tecido de Darkspear: Wool Silk Mageweave
step
    goto 1454 63.4,51
    accept 7826 |opt
    turnin 7826 |opt
    accept 7827 |opt
    turnin 7827 |opt
    accept 7831 |opt
    turnin 7831 |opt
    note-enUS Do the Orgrimmar cloth turn-ins: Wool Silk Mageweave
    note-ptBR Faça as entregas de tecido de Orgrimmar: Wool Silk Mageweave
step
    goto 1454 56.4,46.5
    turnin 32
step
    goto 1454 59.4,36.7
    accept 649
step
    goto 1454 59.5,36.8
    turnin 649
step
    accept 650
step
    accept 4300
step
    note-enUS Take the Zeppelin to Undercity
    note-ptBR Pegue o zepelim para Undercity
]==])

register([==[
#format 1
#id classic.h.48-49-the-hinterlands
#name 48-49 The Hinterlands
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Horde
#levels 48-49
#zones 1425
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    goto 1458 73.2,32.8
    accept 2995
step
    goto 1458 48.5,71.9
    accept 3568
step
    goto 1458 50,68.2
    turnin 864
step
    vendor |opt
    note-enUS Deposit Box of Empty Vials in your bank
    note-ptBR Guarde a Box of Empty Vials no seu banco
step
    fp
step
    vendor |opt
    note-enUS Collect Long Elegant Feather (x10)
    note-ptBR Colete Long Elegant Feather (x10)
step
    objective 3123/1 |opt
step
    goto 1425 23.5,58.8
    accept 2933
step
    goto 1425 26.7,48.6
    turnin 650
step
    accept 77
step
    goto 1425 72.5,66.2 50
    note-enUS Head to Revantusk Village
    note-ptBR Vá até Revantusk Village
step
    goto 1425 77.1,80
    accept 7839
step
    goto 1425 78.2,81.3
    accept 7840
step
    goto 1425 80.4,81.5
    accept 7815
step
    accept 7816
step
    goto 1425 81.7,81.8
    fp
    note-enUS Get The Hinterlands FP
    note-ptBR Pegue o caminho de voo de The Hinterlands
step
    objective 580/1 |opt
step
    objective 7816/1 |opt
step
    objective 7815/1 |opt
step
    goto 1425 80.8,46.8
    turnin 626
step
    goto 1425 84.4,41.3
    objective 7840/1
step
    goto 1425 80.3,81.4
    turnin 7815
step
    turnin 7816
step
    goto 1425 78.2,81.3
    turnin 7840
step
    goto 1425 78.8,78.4
    accept 7844
step
    goto 1425 79.4,79.1
    accept 7841
step
    goto 1425 79.1,79.5
    accept 7828
step
    accept 7829
step
    accept 7830
step
    objective 7839/1 |opt
    note-enUS Collect Slagtree's Lost Tools It has 5 different possible spawn locations
    note-ptBR Colete Slagtree's Lost Tools Ele tem 5 locais de surgimento possíveis
step
    goto 1425 57.5,39.5
    objective 77/1
    note-enUS Collect Hinterlands Honey Ripple (x10)
    note-ptBR Colete Hinterlands Honey Ripple (x10)
step
    goto 1425 26.7,48.6
    turnin 77
step
    accept 81
step
    goto 1425 29.6,48.7
    objective 2995/2
    note-enUS Burn the Highvale Notes
    note-ptBR Queime as Highvale Notes
step
    goto 1425 28.6,46.1
    objective 2995/3
    note-enUS Burn the Highvale Report
    note-ptBR Queime o Highvale Report
step
    goto 1425 32,46.9
    objective 2995/1
    note-enUS Burn the Highvale Records
    note-ptBR Queime os Highvale Records
step
    accept 2742 |opt
    complete 2742 |opt
    note-enUS Start the escort quest Accept Escort Rin'ji
    note-ptBR Inicie a missão de escolta. Aceite. Escolte Rin'ji
step
    complete 7841
step
    goto 1425 33.7,75.1
    turnin 1429
    accept 1444
step
    goto 1425 40,59.9
    objective 2641/1
step
    goto 1425 79.3,79.1
    turnin 7841
step
    accept 7842
step
    turnin 7842
step
    accept 7843
step
    goto 1425 14.4,48.1
    objective 7843/1
    note-enUS Message to the Wildhammer Delivered
    note-ptBR Message to the Wildhammer entregue
step
    objective 7829/1 |opt
step
    objective 7830/1 |opt
step
    goto 1425 45.2,66.4
    complete 7844 |opt
step
    objective 7828/2
step
    goto 1425 70.9,62.4
    objective 7828/1 |opt
step
    goto 1425 49.3,37.7
    accept 485
    turnin 485
    note-enUS Turn in Skip this step if you haven't found the Distress Beacon
    note-ptBR Entregue. Pule esta etapa se não tiver encontrado o Distress Beacon
step
    accept 836
    note-enUS Start the chicken escort Accept
    note-ptBR Inicie a escolta da galinha. Aceite
step
    complete 836
    note-enUS Escort the robot chicken
    note-ptBR Escolte a galinha robô
step
    goto 1425 86.3,59
    turnin 2742
step
    accept 2782
step
    goto 1425 77.2,80.2
    turnin 7839
step
    goto 1425 78.8,78.4
    turnin 7844
step
    goto 1425 79.1,79.5
    turnin 7828
step
    turnin 7829
step
    turnin 7830
step
    goto 1425 79.4,79.1
    turnin 7843
step
    goto 1424 61.5,19.2
    fp |opt
    turnin 2933
step
    fly 1458
step
    goto 1458 71.7,29.2
    accept 7813 |opt
    turnin 7813 |opt
    accept 7814 |opt
    turnin 7814 |opt
    accept 7817 |opt
    turnin 7817 |opt
    note-enUS Do the Undercity cloth turn ins: Wool Silk Mageweave
    note-ptBR Faça as entregas de tecido de Undercity: Wool Silk Mageweave
step
    goto 1458 73.5,32.7
    turnin 2995
step
    turnin 2782
    accept 8273
    turnin 8273
step
    goto 1458 47.4,73.1
    accept 4293
step
    hearth
step
    vendor |opt
    note-enUS Deposit the following items: Pupellyverbos Port Dran's Ripple Delivery
    note-ptBR Guarde os seguintes itens: Pupellyverbos Port Dran's Ripple Delivery
step
    goto 1446 51.1,26.9
    turnin 2641
step
    accept 2661
step
    goto 1446 51.8,28.6
    turnin 2661
step
    accept 2662
step
    turnin 2662
step
    note-enUS Make sure you have 3 stacks of Noggenfogger and then deposit it in your bank, you will need it for later
    note-ptBR Certifique-se de ter 3 pilhas de Noggenfogger e depois guarde-as no banco, você vai precisar delas mais tarde
step
    fly 1444
]==])

register([==[
#format 1
#id classic.h.49-50-feralas
#name 49-50 Feralas
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Horde
#levels 49-50
#zones 1444
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    goto 1444 76.2,43.8
    accept 3062
step
    accept 3063
step
    accept 4120
step
    goto 1444 74.5,42.9
    accept 7734
step
    goto 1444 74.5,43.4
    turnin 3123
step
    accept 3124
step
    goto 1444 74.5,43.4
    accept 3128
step
    goto 1444 74.8,45.1
    home
    note-enUS Set your HS to Camp Mojache
    note-ptBR Defina sua Pedra de Regresso em Camp Mojache
step
    goto 1444 55.9,63.8
    objective 3124/1
step
    objective 3128/3
step
    goto 1444 74.5,43.4
    turnin 3124
step
    accept 3125
step
    objective 3128/2 |opt
step
    goto 1444 68.8,48.1
    objective 3125/1
    note-enUS Collect Faerie Dragon Muisek (x8)
    note-ptBR Colete Faerie Dragon Muisek (x8)
step
    turnin 3125
step
    accept 3126
step
    objective 3128/1 |opt
step
    objective 3126/1
step
    turnin 3126
step
    goto 1444 55.9,63.8
    complete 3128
step
    goto 1444 53.4,55.7
    accept 2766
    turnin 2766
    note-enUS Turn in Skip this step if you haven't found the distress beacon
    note-ptBR Entregue. Pule esta etapa se não tiver encontrado o distress beacon
step
    accept 2767
step
    complete 2767
    note-enUS Escort the chicken to the shore
    note-ptBR Escolte a galinha até a costa
step
    goto 1444 44.8,43.4
    accept 7003
step
    accept 7721
step
    complete 7003
    complete 7721
step
    goto 1444 44.8,43.4
    turnin 7003
step
    turnin 7721
step
    goto 1444 52.6,31.8
    objective 7734/1
    note-enUS Collect Rage Scar Yeti Hide (x10)
    note-ptBR Colete Rage Scar Yeti Hide (x10)
step
    goto 1444 40.3,23.4
    objective 3127/1
    note-enUS Collect Mountain Giant Muisek (x7) Remember to use the Ultra-Shrinker on them
    note-ptBR Colete Mountain Giant Muisek (x7) Lembre-se de usar o Ultra-Shrinker neles
step
    goto 1444 40.5,8.6
    note-enUS Kill Harpies until you get the Horn of Hatetalon
    note-ptBR Mate Harpias até conseguir o Horn of Hatetalon
    objective 3062/1
step
    complete 3063
step
    goto 1444 74.4,43.4
    hearth |opt
    note-enUS Hearth back to Camp Mojache
    note-ptBR Use a Pedra de Regresso para voltar a Camp Mojache
    turnin 3127
step
    turnin 3128
step
    accept 3129
step
    goto 1444 74.5,42.9
    accept 7738 |opt
    turnin 7738 |opt
    turnin 7734
step
    goto 1444 74.4,43.4
    turnin 3129
step
    goto 1444 74.4,43.4
    accept 3380
step
    goto 1444 76.2,43.8
    turnin 3063
step
    turnin 3062
step
    fly 1446
]==])

register([==[
#format 1
#id classic.h.49-50-ungoro
#name 49-50 Un'Goro
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Horde
#levels 49-50
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    home
    note-enUS Set your HS to Tanaris
    note-ptBR Defina sua Pedra de Regresso em Tanaris
step
    goto 1446 52.7,45.9
    turnin 3380
step
    accept 3444
step
    accept 4289
    accept 4290
    note-enUS Run to Un'goro Crater Accept Accept
    note-ptBR Corra até Un'goro Crater. Aceite. Aceite
step
    note-enUS Save Un'Goro Soil, you will need 25 later
    note-ptBR Guarde o Un'Goro Soil, você vai precisar de 25 mais tarde
    note-enUS As you quest through Un'Goro, loot 7 crystals of each color
    note-ptBR Enquanto faz as missões em Un'Goro, saqueie 7 cristais de cada cor
step
    goto 1446 27.5,42.8
    accept 4289
step
    accept 4290
step
    goto 1449 63.1,68.6
    accept 3844
step
    goto 1449 63.1,69
    turnin 3844
step
    accept 3845
step
    goto 1449 68.8,56.8
    objective 4290/1
    note-enUS Collect Piece of Threshadon Carcass
    note-ptBR Colete Piece of Threshadon Carcass
step
    goto 1449 71.6,76
    turnin 4290
step
    accept 4291
step
    path seq 1449 67.3,73.1
    goto 1449 66.6,66.7
    complete 4291
    note-enUS Do by stepping on a raptor nest
    note-ptBR Faça pisando em um ninho de raptor
step
    turnin 4291
step
    accept 4292
step
    complete 4300
step
    goto 1449 44.7,8.1
    complete 3845 |opt
    note-enUS Open the small pack in your inventory
    note-ptBR Abra a pequena mochila no seu inventário
    turnin 3845
step
    accept 3908
step
    goto 1449 45.5,8.7
    accept 4145
step
    goto 1449 39.8,24
    objective 4145/2
step
    complete 4145
step
    turnin 4145
step
    accept 4147
step
    goto 1449 41.9,2.7
    accept 4284
    turnin 4284
step
    home
    note-enUS Fly to Crossroads and set your HS to crossroads OR Use the website unstuck request and set your HS to Orgrimmar
    note-ptBR Voe até Crossroads e defina sua Pedra de Regresso em crossroads OU use o pedido de unstuck do site e defina sua Pedra de Regresso em Orgrimmar
step
    turnin 4300
step
    fp
]==])
