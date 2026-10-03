-- Convertido automaticamente de Guidelime_Zarant (Alliance/43-48_Feralas.lua).
-- (c) Zarant - GNU GPL v3 (ver LICENSE.txt). Gerado por tools/guidelime2azimute.py.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id classic.a.43-44-tanaris
#name 43-44 Tanaris
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 43-44
#zones 1446
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    fp
step
    goto 1445 67.76,48.97
    accept 6624 |opt
    turnin 6624 |opt
    note-enUS Do the First Aid quest if applicable (Requires 225 First Aid)
    note-ptBR Faça a missão de Primeiros Socorros, se for o caso (requer 225 em Primeiros Socorros)
step
    turnin 623
step
    turnin 1258
step
    home
    note-enUS Set your HS to theramore
    note-ptBR Defina sua Pedra de Regresso em theramore
step
    path seq 1445 55.62,50.11
    goto 1445 31.1,66.14
    turnin 625
    accept 626
    note-enUS Swim to the hill west Turn in Accept
    note-ptBR Nade até a colina a oeste. Entregue. Aceite
step
    hearth |opt
    fly 1446 |opt
    accept 1690
    accept 1707
step
    accept 3022
step
    turnin 2864
step
    turnin 1188
    accept 1189
step
    trainer |only Hunter |opt
    note-enUS Tame a Starving Blisterpaw Keep using Dash 2 as you travel to the next step |only Hunter
    note-ptBR Dome um Starving Blisterpaw. Continue usando Dash 2 enquanto viaja para a próxima etapa |only Hunter
    turnin 1137
    note-enUS Run to Shimmering Flats Turn in
    note-ptBR Corra até Shimmering Flats. Entregue
step
    turnin 1119
step
    accept 1120
step
    turnin 1120
step
    accept 1122
step
    turnin 1189
step
    accept 1190
step
    path seq 1446 54,7.63
    goto 1446 52.36,7.88
    turnin 1190
    accept 1194
    note-enUS Talk with Zamek to create a diversion Click on the unguarded plans inside the metal hut Turn in Accept
    note-ptBR Fale com Zamek para criar uma distração. Clique nos planos desprotegidos dentro da cabana de metal. Entregue. Aceite
step
    turnin 1194
step
    goto 1446 50.5,18.52 40
    note-enUS Throw away the Sample of Indurium Ore
    note-ptBR Jogue fora o Sample of Indurium Ore
    note-enUS Run back to Tanaris
    note-ptBR Volte correndo para Tanaris
step
    note-enUS Withdraw your pet from the stable |only Hunter
    note-ptBR Retire seu mascote do estábulo |only Hunter
    objective 1452/1 |opt
    note-enUS Kill vultures as you quest through tanaris
    note-ptBR Mate vultures enquanto faz missões por tanaris
step
    complete 1690 |opt
step
    complete 1707 |opt
step
    accept 8365
step
    accept 3520
step
    accept 8366
    turnin 2872
    accept 2873
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
    vendor |opt
    note-enUS Deposit the following items in your bank: Fool's Stout Report Roc Gizzard-BANKFRAME_OPENED,
    note-ptBR Guarde os seguintes itens no seu banco: Fool's Stout Report Roc Gizzard-BANKFRAME_OPENED,
step
    turnin 1690
    turnin 1707
step
    fp
]==])

register([==[
#format 1
#id classic.a.43-44-tanaris-dustwallow
#name 43-44 Tanaris/Dustwallow
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 43-44
#zones 1446 1445
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    fp
step
    goto 1445 67.76,48.97
    accept 6624 |opt
    turnin 6624 |opt
    note-enUS Do the First Aid quest if applicable (Requires 225 First Aid)
    note-ptBR Faça a missão de Primeiros Socorros, se for o caso (requer 225 em Primeiros Socorros)
step
    turnin 623
step
    turnin 1258
step
    home
    note-enUS Set your HS to Theramore
    note-ptBR Defina sua Pedra de Regresso em Theramore
step
    fly 1446
step
    accept 1690
    accept 1707
step
    accept 3022
step
    turnin 2864
step
    turnin 1188
    accept 1189
step
    objective 1452/1 |opt
    note-enUS Kill vultures as you quest through tanaris
    note-ptBR Mate vultures enquanto faz missões por tanaris
step
    complete 1690
step
    complete 1707
step
    accept 8365
step
    accept 3520
step
    accept 8366
    turnin 2872
    accept 2873
step
    turnin 1690
    turnin 1707
step
    turnin 1137
    note-enUS Run to Shimmering Flats Turn in
    note-ptBR Corra até Shimmering Flats. Entregue
step
    turnin 1119
step
    accept 1120
step
    turnin 1120
step
    accept 1122
step
    turnin 1189
step
    accept 1190
step
    path seq 1446 54,7.63
    goto 1446 52.36,7.88
    turnin 1190
    accept 1194
    note-enUS Talk with Zamek to create a diversion Click on the unguarded plans inside the metal hut Turn in Accept
    note-ptBR Fale com Zamek para criar uma distração. Clique nos planos desprotegidos dentro da cabana de metal. Entregue. Aceite
step
    turnin 1194
step
    note-enUS Throw away the Sample of Indurium Ore
    note-ptBR Jogue fora o Sample of Indurium Ore
    hearth
    note-enUS Hearth back to Theramore
    note-ptBR Use a Pedra de Regresso para voltar a Theramore
step
    path seq 1445 55.62,50.11
    goto 1445 46,57
    turnin 1799
    note-enUS Swim to the hill west Turn in
    note-ptBR Nade até a colina a oeste. Entregue
step
    accept 4961
step
    complete 4961
step
    turnin 4961
    accept 4976
step
    goto 1445 31.1,66.14
    turnin 625
    accept 626
step
    note-enUS Die and spirit rez at Theramore
    note-ptBR Morra e ressuscite com o Spirit Healer em Theramore
    fp
step
    turnin 4962
    turnin 4976
step
    accept 4964
    turnin 4964
    note-enUS Accept Wait for the RP sequence to end Turn in
    note-ptBR Aceite Espere a sequência de RP terminar Entregue
step
    fp
]==])

register([==[
#format 1
#id classic.a.44-48-feralas
#name 44-48 Feralas
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 44-48
#zones 1444
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    note-enUS There is A LOT of grinding required in this segment, you can substitute some of that for ZF/Maraudon or even Uldaman runs
    note-ptBR Há MUITO farm necessário neste segmento, você pode substituir parte dele por runs de ZF/Maraudon ou até de Uldaman
step
    only Human Dwarf Gnome
    note-enUS Once you get to 100g, use the battle.net website unstuck service to teleport to SW, buy a mount and then hearth back
    note-ptBR Quando chegar a 100g, use o serviço de unstuck do site battle.net para teleportar para SW, compre uma montaria e volte com a Pedra de Regresso
step
    only Hunter
    goto 1444 31.6,43.2 |only Hunter
    note-enUS Tame a wolf south of Feathermoon Stronghold and learn Bite 6
    note-ptBR Dome um lobo ao sul de Feathermoon Stronghold e aprenda Bite 6
step
    vendor |opt
    note-enUS Restock on supplies, very long grinding session ahead Buy 5 stacks of food/water Make sure you have 25 stacks of ammo -MERCHANT_SHOW,MERCHANT_CLOSED,
    note-ptBR Reabasteça seus suprimentos, vem aí uma sessão de farm muito longa. Compre 5 pilhas de comida/água. Certifique-se de ter 25 pilhas de munição -MERCHANT_SHOW,MERCHANT_CLOSED,
step
    accept 2821
step
    home
    note-enUS Set your Hearthstone to Feralas
    note-ptBR Defina sua Pedra de Regresso em Feralas
step
    accept 4124
    accept 2866
step
    accept 2939
    accept 2982
step
    turnin 4124
    accept 4125
step
    turnin 2866
    accept 2867
    note-enUS Click on the gazebo Turn in Accept
    note-ptBR Clique no gazebo Entregue Aceite
step
    turnin 2867
    accept 3130
    turnin 3130
    accept 2869
step
    complete 2869
step
    turnin 2869
    accept 2870
step
    complete 2870
    note-enUS Enter the naga cave and do
    note-ptBR Entre na caverna naga e faça
step
    accept 2766
    note-enUS Grind mobs until you find a Distress Beacon Accept
    note-ptBR Faça grind de mobs até encontrar um Distress Beacon Aceite
step
    goto 1444 38.72,75.07 20
    note-enUS Exit the naga cave and head towards the ocean
    note-ptBR Saia da caverna naga e siga em direção ao oceano
step
    goto 1444 41.24,74.54 20
step
    turnin 4125
    accept 4127
    note-enUS Click on the Wrecked Row Boat Turn in Accept
    note-ptBR Clique no Wrecked Row Boat Entregue Aceite
step
    hearth
    note-enUS Hearth back to Feathermoon
    note-ptBR Use a Pedra de Regresso para voltar a Feathermoon
step
    turnin 4127
    accept 4129
step
    turnin 4129
    accept 4130
step
    turnin 4130
    accept 4131
step
    turnin 2870
    accept 2871
step
    turnin 2871
step
    note-enUS Swim to the mainland
    note-ptBR Nade até o continente
    complete 3520 |opt
    note-enUS Kill wind serpents, use the quest item on their corpse
    note-ptBR Mate wind serpents, use o item de missão no cadáver deles
step
    objective 1452/2 |opt
    objective 1452/3 |opt
    note-enUS Kill and as you quest through Feralas
    note-ptBR Mate e enquanto faz missões por Feralas
step
    goto 1413 7.47,99.05 145
    complete 2821
step
    goto 1413 8.77,97.09 20
    accept 2766
    turnin 2766
    accept 2767
    note-enUS Do the chicken escort Turn in Accept
    note-ptBR Faça a escolta da galinha Entregue Aceite
step
    complete 2767
    note-enUS Escort the robot chicken
    note-ptBR Escolte a galinha robô
step
    goto 1444 56.64,75.89
    complete 2982 |opt
    vendor
    note-enUS Head south and look for Hippogryph nests by the mountains Loot an Hyppogryph Egg-OnStepActivation,
    note-ptBR Siga para o sul e procure ninhos de Hipogrifo perto das montanhas Saqueie um Hyppogryph Egg-OnStepActivation,
step
    complete 2982
step
    complete 3520
step
    accept 2969
    note-enUS Do Clear some mobs around the wooden cage before accepting the escort
    note-ptBR Faça Limpe alguns mobs ao redor da jaula de madeira antes de aceitar a escolta
step
    complete 2969
    note-enUS Open the bamboo cage and protect the faerie dragons trying to escape
    note-ptBR Abra a jaula de bambu e proteja os faerie dragons que tentam fugir
step
    turnin 2969
    accept 2970
step
    goto 1413 19.7,85.85 150
    complete 2970
step
    turnin 2970
    accept 2972
step
    turnin 4131
    accept 4135
    note-enUS Click on the 2 pouches hanging on the tree Turn in Accept
    note-ptBR Clique nas 2 bolsas penduradas na árvore Entregue Aceite
step
    accept 4281 |opt
    note-enUS Click on the Undelivered Parcel in your bags Accept
    note-ptBR Clique no Undelivered Parcel nas suas bolsas Aceite
step
    turnin 4135
    accept 4265
step
    complete 4265
    note-enUS Wait for the RP sequence to end
    note-ptBR Espere a sequência de RP terminar
step
    hearth
    note-enUS Grind mobs until your HS is off cooldown Hearth to Feathermoon
    note-ptBR Faça grind de mobs até sua Pedra de Regresso sair da recarga Use a Pedra de Regresso para Feathermoon
step
    turnin 4265
    accept 4266
step
    turnin 4266
    accept 4267
step
    goto 1444 26.19,67.51
    vendor |opt
    note-enUS Buy 5 stacks of food/water and 25 stacks of ammo -MERCHANT_SHOW,MERCHANT_CLOSED,
    note-ptBR Compre 5 pilhas de comida/água e 25 pilhas de munição -MERCHANT_SHOW,MERCHANT_CLOSED,
    fly 1438
    note-enUS Head back to the naga cave and keep grinding mobs until HS cooldown is <10min Death warp back to Feathermoon once you have 100 gold to buy skills and a mount Fly to
    note-ptBR Volte para a caverna naga e continue o grind até a recarga da Pedra de Regresso ficar <10min Faça death warp de volta a Feathermoon quando tiver 100 de ouro para comprar habilidades e uma montaria Voe até
step
    accept 3661
step
    turnin 3022
step
    turnin 2939
step
    accept 2940
    note-enUS Click on the green book on the ground Accept
    note-ptBR Clique no livro verde no chão Aceite
step
    turnin 2940
    accept 2941
step
    turnin 4267
    note-enUS Head to the temple of the mooon Turn in
    note-ptBR Vá até o templo da lua Entregue
step
    turnin 2972
step
    trainer |only Nightelf |opt
    note-enUS Train skills in Darnassus |only Nightelf
    note-ptBR Treine habilidades em Darnassus |only Nightelf
    hearth
    note-enUS Hearth back to Feralas
    note-ptBR Use a Pedra de Regresso para voltar a Feralas
step
    goto 1444 26.19,67.51
    note-enUS Head back to the naga cave and grind to
    note-ptBR Volte para a caverna naga e faça grind até
step
    hearth
    note-enUS Hearth back to feathermoon
    note-ptBR Use a Pedra de Regresso para voltar a feathermoon
step
    turnin 2982
    accept 3445
step
    turnin 2821
step
    vendor
    note-enUS Restock/resupply Make sure to buy some extra stacks of ammo for the next segment-MERCHANT_SHOW,MERCHANT_CLOSED,
    note-ptBR Reabasteça os suprimentos. Compre algumas pilhas extras de munição para o próximo segmento-MERCHANT_SHOW,MERCHANT_CLOSED,
step
    fp
step
    accept 4281
    turnin 4281
step
    fly 1446
]==])
