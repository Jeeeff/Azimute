-- Convertido automaticamente de RXPGuides (Extra RestedXP Alliance 23-30.lua)
-- (c) RestedXP - CC BY-NC-SA 4.0 (ver LICENSE.txt). Não edite à mão:
-- rode tools/rxp2azimute.py de novo.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id forever.x.a.23-24-wetlands
#name 23-24 Wetlands
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#levels 23-24
#zone 1437
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup Experimental (from Classic guides)
#subgroup-ptBR Experimental (adaptado do Classic)
#next forever.x.a.24-27-redridge-duskwood

step
    only !Human
    goto 1453 66.4,62.1
    fp
step
    only Rogue
    goto 1453 78.3,57
    train 1804
step
    only Hunter Warrior Paladin Shaman Rogue
    goto 1455 61.34,89.25
    train 197 |only !Rogue
    train 266 |only Hunter Warrior Rogue
    train 199 |only Warrior Shaman
step
    goto 1437 8.31,58.53
    note-enUS Talk to Karl Boran
    note-ptBR Fale com Karl Boran
    accept 279
step
    goto 1437 8.6,55.8
    note-enUS Talk to James Halloran
    note-ptBR Fale com James Halloran
    accept 484
step
    goto 1437 10.8,59.6
    note-enUS Talk to First Mate Fitzsimmons
    note-ptBR Fale com First Mate Fitzsimmons
    accept 288
    accept 463
step
    goto 1437 10.7,60.9
    note-enUS Buy a Flagon of Mead from the Innkeeper
    note-ptBR Compre um Flagon of Mead com o Taverneiro
    objective 288/1
step
    ifturnedin 741
    goto 1437 10.84,60.43
    note-enUS Go upstairs and talk to Archaeologist Flagongut
    note-ptBR Suba as escadas e fale com Archaeologist Flagongut
    note-enUS Talk to Archaeologist Flagongut
    note-ptBR Fale com Archaeologist Flagongut
    turnin 942
    accept 943
step
    goto 1437 10.8,59.7
    note-enUS Talk to First Mate Fitzsimmons
    note-ptBR Fale com First Mate Fitzsimmons
    turnin 288
step
    only Hunter
    goto 1437 11.1,58.3
    vendor
step
    goto 1437 11.7,58
    note-enUS Talk to Sida
    note-ptBR Fale com Sida
    accept 470
step
    path seq 1437 10.6,56.8
    goto 1437 9.9,57.4
    vendor |opt
    collect 4371 1 |quest 175 |q 175/1 |opt
    note-enUS Go upstairs inside the keep
    note-ptBR Suba as escadas dentro da fortaleza
    note-enUS Talk to Captain Stoutfist
    note-ptBR Fale com Captain Stoutfist
    accept 464
step
    goto 1437 11.5,52.13
    note-enUS Talk to Tarrel Rockweaver
    note-ptBR Fale com Tarrel Rockweaver
    accept 305
step
    path seq 1437 14.1,41.5 16.7,39.7
    goto 1437 18.8,40
    note-enUS Kill Young Wetlands Crocolisks between quests. Loot them for their Skin
    note-ptBR Mate Young Wetlands Crocolisks entre as missões. Saqueie-os para obter a pele deles
    objective 484/1 |opt
    note-enUS Kill Gobbler, he patrols around the southern murloc camps
    note-ptBR Mate Gobbler, ele patrulha pelos acampamentos murloc do sul
    objective 279/2
    objective 279/1
step
    path seq 1437 26.4,25.8 34.3,41.2
    goto 1437 38.18,50.89
    vendor |opt
    collect 4371 1 |quest 175 |q 175/1 |opt
    note-enUS Talk to Ormer Ironbraid
    note-ptBR Fale com Ormer Ironbraid
    accept 294
step
    goto 1437 38.8,52.3
    note-enUS Talk to Merrin Rockweaver
    note-ptBR Fale com Merrin Rockweaver
    turnin 305
    accept 306
step
    only Hunter Warlock
    goto 1437 24.7,48.6
    note-enUS Kill raptors in the area
    note-ptBR Mate raptores na área
    objective 294/1
    objective 294/2
step
    only Hunter Warlock
    path seq 1437 34.3,41.4
    goto 1437 38.18,50.89
    note-enUS Talk to Ormer Ironbraid
    note-ptBR Fale com Ormer Ironbraid
    turnin 294
    accept 295
step
    only Hunter Warlock
    path seq 1437 34.3,41.4
    goto 1437 34.6,48
    note-enUS Kill raptors in the area
    note-ptBR Mate raptores na área
    objective 295/1
    objective 295/2
step
    only Hunter Warlock
    goto 1437 38.18,50.89
    note-enUS Talk to Ormer Ironbraid
    note-ptBR Fale com Ormer Ironbraid
    turnin 295
    accept 296
step
    only Hunter Warlock
    path seq 1437 31.5,48.9
    goto 1437 33.3,51.5
    note-enUS Kill Sarltooth atop the hill. Loot him for his Talon. Be careful as he Thrashes and has a 6 minute respawn.
    note-ptBR Mate Sarltooth no topo da colina. Saqueie-o para obter a garra dele. Cuidado, ele usa thrash e ressurge a cada 6 minutos.
    objective 296/1
step
    only Hunter Warlock
    goto 1437 38.18,50.89
    note-enUS Talk to Ormer Ironbraid
    note-ptBR Fale com Ormer Ironbraid
    turnin 296
step
    path seq 1437 34.3,41.2
    goto 1437 44.8,43.9
    note-enUS Kill Dragonmaw Orcs
    note-ptBR Mate Dragonmaw Orcs
    objective 464/1
step
    goto 1437 49.91,39.37
    note-enUS Talk to Einar Stonegrip
    note-ptBR Fale com Einar Stonegrip
    accept 469
step
    goto 1437 50.2,37.8 |only Warrior
    goto 1437 56.37,40.4
    vendor |only Warrior |opt
    collect 3357 8 |only Warrior |opt
    note-enUS Talk to Rethiel the Greenwarden
    note-ptBR Fale com Rethiel the Greenwarden
    turnin 463
step
    goto 1437 56.37,40.4
    note-enUS Talk to Rethiel the Greenwarden
    note-ptBR Fale com Rethiel the Greenwarden
    accept 276
step
    ifonquest 276
    path seq 1437 63.9,62.7 62.4,69.5 61.5,72.2
    goto 1437 55.7,75.1
    note-enUS Kill Mosshide Gnolls and Mongrels in the area. The gnolls are more commonly found outside the camps
    note-ptBR Mate Mosshide Gnolls e Mongrels na área. Os gnolls são mais comuns fora dos acampamentos
    objective 276/1
    objective 276/2
step
    ifcomplete 276
    goto 1437 56.4,40.3
    note-enUS Talk to Rethiel the Greenwarden
    note-ptBR Fale com Rethiel the Greenwarden
    turnin 276
step
    ifturnedin 276
    goto 1437 56.4,40.3
    note-enUS Talk to Rethiel the Greenwarden
    note-ptBR Fale com Rethiel the Greenwarden
    accept 277
step
    goto 1437 8.4,58.5
    note-enUS Talk to Karl Boran
    note-ptBR Fale com Karl Boran
    turnin 279
    accept 281
step
    ifonquest 469
    goto 1437 8.6,55.8
    note-enUS Talk to James Halloran
    note-ptBR Fale com James Halloran
    turnin 469
step
    ifonquest 484
    goto 1437 8.6,55.8
    note-enUS Talk to James Halloran
    note-ptBR Fale com James Halloran
    turnin 484
step
    ifturnedin 484
    goto 1437 8.6,55.8
    note-enUS Talk to James Halloran
    note-ptBR Fale com James Halloran
    accept 471
step
    goto 1437 9.5,59.7
    note-enUS Hearth if your hearthstone is set to Stormwind
    note-ptBR Use a Pedra de Regresso se ela estiver marcada em Stormwind
    fly 1453
]==])

register([==[
#format 1
#id forever.x.a.24-27-redridge-duskwood
#name 24-27 Redridge/Duskwood
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#levels 24-27
#zones 1433 1431
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup Experimental (from Classic guides)
#subgroup-ptBR Experimental (adaptado do Classic)
#next forever.x.a.27-30-wetlands-hillsbrad

step
    only Paladin
    path seq 1453 64.1,61.2 |only Warrior
    goto 1453 46.7,79 |only Warrior
    goto 1453 38.6,32.8
    note-enUS Check the the AH, the flower shop at the trade district and the alchemy shop at the mage district and buy some Liferoot, you will need 8 for a quest later, skip this step if you already have it |only Warrior
    note-ptBR Verifique a Casa de Leilões, a floricultura no distrito comercial e a loja de alquimia no distrito dos magos e compre um pouco de Liferoot, você vai precisar de 8 para uma missão depois. Pule esta etapa se já tiver |only Warrior
    collect 3357 8 |only Warrior |opt
    trainer
step
    only Priest
    goto 1453 38.5,26.8
    trainer
step
    only Paladin
    goto 1453 40.1,30
    note-enUS Speak to Duthorian Rall and right click on the Tome of Valor provided
    note-ptBR Fale com Duthorian Rall e clique com o botão direito no Tome of Valor fornecido
    accept 1649
    note-enUS Talk to Duthorian Rall
    note-ptBR Fale com Duthorian Rall
    turnin 1649
    accept 1650
step
    only Warlock
    goto 1453 25.3,78.7
    trainer
step
    only Warlock
    ifonquest 1738
    goto 1453 25.3,78.7
    note-enUS Talk to Gakin the Darkbinder
    note-ptBR Fale com Gakin the Darkbinder
    turnin 1738
    accept 1739
step
    only Warlock
    ifonquest 1739
    goto 1453 25.2,77.5
    note-enUS Go down into the crypt and use the quest item provided at the summoning circle
    note-ptBR Desça até a cripta e use o item de missão fornecido no círculo de invocação
    objective 1739/1
step
    only Warlock
    ifcomplete 1739
    goto 1453 25.4,78.7
    note-enUS Talk to Gakin the Darkbinder
    note-ptBR Fale com Gakin the Darkbinder
    turnin 1739
step
    only Mage
    goto 1453 39.6,79.6
    train 3561
    trainer
step
    only Rogue
    goto 1453 74.6,52.8
    note-enUS Make sure you train lockpicking and pickpocketing
    note-ptBR Não deixe de treinar arrombamento (lockpicking) e punguista (pickpocketing)
    trainer
step
    only Warrior
    goto 1453 78.6,45.8
    trainer
step
    only Hunter
    goto 1453 61.7,15.4
    train 14323
step
    path seq 1453 53.62,59.76
    goto 1453 55.25,7.08
    vendor
    collect 4371 1 |quest 175 |q 175/1
step
    only Shaman
    goto 1453 61.9,84
    trainer
step
    only Human Paladin Human Warlock
    path seq 1453 62.5,62.3
    goto 1453 66.3,62.1
    fp
step
    only !Human
    goto 1429 65.2,69.8
    note-enUS Head to the top of the Tower of Azora. You do NOT need to get the Stormwind Flight Path. We will get it later.
    note-ptBR Vá até o topo da Tower of Azora. Você NÃO precisa pegar o caminho de voo de Stormwind. Vamos pegá-lo depois.
    note-enUS Talk to Theocritus
    note-ptBR Fale com Theocritus
    accept 94
step
    goto 1433 17.4,69.6
    note-enUS Talk to Guard Parker in Redridge Mountains
    note-ptBR Fale com Guard Parker em Redridge Mountains
    note-enUS Talk to Guard Parker
    note-ptBR Fale com Guard Parker
    accept 244
step
    goto 1433 30.5,59.4
    fp
step
    goto 1433 30.8,60.1
    note-enUS Talk to Deputy Feldon
    note-ptBR Fale com Deputy Feldon
    turnin 244
step
    goto 1433 33.4,49.1
    note-enUS Talk to Marshal Marris
    note-ptBR Fale com Marshal Marris
    accept 20
step
    only !Warlock
    goto 1433 29.6,44.3
    note-enUS Head into the town hall
    note-ptBR Entre na prefeitura
    note-enUS Talk to Bailiff Conacher
    note-ptBR Fale com Bailiff Conacher
    accept 91
step
    only Hunter
    goto 1433 28.8,47.3
    vendor
step
    goto 1433 27.72,47.38
    note-enUS Talk to Dockmaster Baren
    note-ptBR Fale com Dockmaster Baren
    accept 127
    accept 150
step
    goto 1433 61,43.1
    note-enUS Kill Blackrock orcs
    note-ptBR Mate orcs Blackrock
    objective 20/1
step
    goto 1433 57.3,52.4
    note-enUS Kill murlocs. Loot them for their Sunfish and Fins
    note-ptBR Mate murlocs. Saqueie-os para obter o Sunfish e as barbatanas deles
    objective 127/1
    collect 1468 8 |quest 150 |q 150/1
step
    goto 1433 33.6,48.7
    note-enUS Talk to Marshal Marris
    note-ptBR Fale com Marshal Marris
    turnin 20
step
    goto 1433 27.8,47.4
    note-enUS Talk to Dockmaster Baren
    note-ptBR Fale com Dockmaster Baren
    turnin 127
    turnin 150
step
    goto 1433 26.7,46.5
    note-enUS Click on the wanted poster outside the inn
    note-ptBR Clique no cartaz de procurado do lado de fora da estalagem
    accept 180
step
    goto 1433 21.86,46.33
    note-enUS Talk to Martie Jainrose
    note-ptBR Fale com Martie Jainrose
    accept 34
step
    goto 1433 15.7,49.4
    note-enUS Kill Bellygrub and loot her for her tusk
    note-ptBR Mate Bellygrub e saqueie-a para obter a presa dela
    objective 34/1
step
    goto 1433 21.8,46.4
    note-enUS Talk to Martie Jainrose
    note-ptBR Fale com Martie Jainrose
    turnin 34
step
    goto 1431 75.7,45.3
    note-enUS Run to Duskwood
    note-ptBR Corra até Duskwood
    note-enUS Talk to Madame Eva
    note-ptBR Fale com Madame Eva
    accept 66
    accept 101
step
    goto 1431 73.6,46.8
    note-enUS Talk to Commander Althea Ebonlocke
    note-ptBR Fale com Commander Althea Ebonlocke
    accept 56
step
    goto 1431 72.6,46.9
    note-enUS Talk to Clerk Daltry
    note-ptBR Fale com Clerk Daltry
    turnin 66
    accept 67
step
    goto 1431 75.3,48.6
    note-enUS Talk to Elaine Carevin
    note-ptBR Fale com Elaine Carevin
    accept 163
    accept 164
    accept 165
step
    goto 1431 75.4,48
    note-enUS Talk to Calor
    note-ptBR Fale com Calor
    accept 173
step
    goto 1431 77.8,48.2
    vendor
step
    goto 1431 79.8,47.9
    note-enUS Talk to Viktori Prism'Antras
    note-ptBR Fale com Viktori Prism'Antras
    accept 174
    turnin 174
step
    only Rogue
    goto 1431 77.5,44.4
    fp
step
    ifturnedin 174
    goto 1431 79.8,47.9
    note-enUS Talk to Viktori Prism'Antras
    note-ptBR Fale com Viktori Prism'Antras
    accept 175
step
    ifturnedin 174
    goto 1431 82,59
    use 2794 |opt
    collect 2794 1 |quest 337 |opt
    accept 337 |opt
    note-enUS Talk to Blind Mary
    note-ptBR Fale com Blind Mary
    turnin 175
    accept 177
step
    ifturnedin 174
    goto 1431 80.9,71.8
    note-enUS Kill the Insane Ghoul at the chapel. He can patrol outside as well.
    note-ptBR Mate o Insane Ghoul na capela. Ele também pode patrulhar do lado de fora.
    objective 177/1
step
    goto 1431 79.3,70.3
    note-enUS Kill skeletal mobs in the area
    note-ptBR Mate mobs esqueléticos na área
    objective 56/1
    objective 56/2
step
    goto 1431 18.4,56.6
    note-enUS Talk to Jitters
    note-ptBR Fale com Jitters
    turnin 163
    accept 5
step
    goto 1431 7.78,34.07
    note-enUS Talk to Sven Yorgen
    note-ptBR Fale com Sven Yorgen
    turnin 164
    accept 95
step
    goto 1431 7.7,33.3
    note-enUS Talk to Lars
    note-ptBR Fale com Lars
    accept 226
step
    goto 1431 28,31.5
    note-enUS Talk to Abercrombie
    note-ptBR Fale com Abercrombie
    turnin 165
    accept 148
step
    ifonquest 226
    goto 1431 17.6,24.6
    note-enUS Run up the coast killing wolves
    note-ptBR Suba a costa matando lobos
    objective 226/1
    objective 226/2
step
    only Rogue Druid
    goto 1431 17.7,29.1
    accept 225
step
    only !Rogue !Druid
    goto 1431 17.7,29.1
    accept 225
step
    only Rogue Druid
    goto 1436 56.6,52.6
    fp
step
    only Rogue Druid
    goto 1436 41.5,66.8
    turnin 67
    accept 68
step
    only !Rogue !Druid !Priest !Warlock
    goto 1431 60.8,29.7
    hearth |only Rogue Druid |opt
    note-enUS Grind your way back to eastern Duskwood. If killing Shadow Weavers is too difficult right now skip this step, you will complete it later
    note-ptBR Faça grind no caminho de volta para o leste de Duskwood. Se matar Shadow Weavers estiver difícil demais agora, pule esta etapa, você vai completá-la depois
    objective 173/1
step
    goto 1431 73.8,43.3
    note-enUS Talk to Chef Grual
    note-ptBR Fale com Chef Grual
    turnin 5
    accept 93
step
    goto 1431 73.6,46.8
    note-enUS Talk to Commander Althea Ebonlocke
    note-ptBR Fale com Commander Althea Ebonlocke
    turnin 56
    accept 57
step
    ifonquest 225
    goto 1431 72.64,47.61
    note-enUS Talk to Sirra Von'Indi
    note-ptBR Fale com Sirra Von'Indi
    turnin 225
step
    ifturnedin 225
    path seq 1431 72.64,47.61
    goto 1431 73.5,46.9
    note-enUS Talk to Sirra Von'Indi
    note-ptBR Fale com Sirra Von'Indi
    accept 227
    note-enUS Talk to Commander Althea Ebonlocke
    note-ptBR Fale com Commander Althea Ebonlocke
    turnin 227
    accept 228
step
    goto 1431 75.7,45.3
    note-enUS Talk to Madame Eva
    note-ptBR Fale com Madame Eva
    turnin 148
    accept 149
step
    ifcomplete 173
    goto 1431 75.3,47.9
    note-enUS Talk to Calor
    note-ptBR Fale com Calor
    turnin 173
    accept 221
step
    ifturnedin 174
    goto 1431 79.8,47.8
    note-enUS Talk to Viktori Prism'Antras
    note-ptBR Fale com Viktori Prism'Antras
    turnin 177
    accept 181
step
    goto 1431 81.9,59.1
    note-enUS Keep an eye out for Old History book (zone-wide drop). You'll need this for later
    note-ptBR Fique de olho no Old History book (drop em toda a zona). Você vai precisar dele depois
    collect 2794 1 |quest 337 |opt
    accept 337 |opt
    note-enUS Talk to Blind Mary
    note-ptBR Fale com Blind Mary
    turnin 149
    accept 154
step
    goto 1431 75.7,45.3
    note-enUS Talk to Madame Eva
    note-ptBR Fale com Madame Eva
    turnin 154
    accept 157
step
    goto 1431 49.9,77.8
    turnin 95
    accept 230
step
    goto 1431 17.7,29.1
    note-enUS Kill spiders in duskwood
    note-ptBR Mate aranhas em Duskwood
    objective 93/1 |opt
    accept 225
step
    goto 1431 28,31.5
    note-enUS Talk to Abercrombie
    note-ptBR Fale com Abercrombie
    turnin 157
    accept 158
step
    ifonquest 226
    goto 1431 17.6,24.6
    objective 226/1
    objective 226/2
step
    only Hunter Paladin
    ifonquest 228
    goto 1431 19.7,39.7
    note-enUS Kill the level 30 elite roaming the cemetery. Kite him around the big trees in the area.
    note-ptBR Mate o elite nível 30 que vaga pelo cemitério. Faça kite dele ao redor das árvores grandes da área.
    note-enUS Run away and heal when he enrages, use the big trees to make space. Don't try to tank him during the enrage |only Paladin
    note-ptBR Fuja e se cure quando ele ficar enfurecido, use as árvores grandes para abrir espaço. Não tente tanqueá-lo durante o enfurecimento |only Paladin
    objective 228/1
step
    goto 1431 7.78,34.07
    note-enUS Talk to Sven Yorgen
    note-ptBR Fale com Sven Yorgen
    turnin 230
    accept 262
step
    ifonquest 226
    goto 1431 7.7,33.3
    note-enUS Talk to Lars
    note-ptBR Fale com Lars
    turnin 226
step
    only !Rogue !Druid
    goto 1436 56.6,52.6
    fp
step
    only !Rogue !Druid
    goto 1436 41.5,66.8
    turnin 67
    accept 68
step
    only Paladin
    goto 1436 42.5,88.6
    note-enUS Talk to Daphne Stilwell
    note-ptBR Fale com Daphne Stilwell
    turnin 1650
    accept 1651
step
    only Paladin
    goto 1436 42.5,88.6
    objective 1651/1
    note-enUS Talk to Daphne Stilwell
    note-ptBR Fale com Daphne Stilwell
    turnin 1651
    accept 1652
step
    only Rogue Druid
    goto 1431 60.8,29.7
    hearth |only !Rogue !Druid |opt
    note-enUS Grind your way back to eastern Duskwood
    note-ptBR Faça grind no caminho de volta para o leste de Duskwood
    objective 173/1
step
    goto 1431 75.7,45.3
    note-enUS Talk to Madame Eva
    note-ptBR Fale com Madame Eva
    turnin 262
    accept 265
step
    goto 1431 72.6,46.9
    note-enUS Talk to Clerk Daltry
    note-ptBR Fale com Clerk Daltry
    turnin 265
    accept 266
    turnin 68
    accept 69
step
    ifonquest 225
    goto 1431 72.64,47.61
    note-enUS Talk to Sirra Von'Indi
    note-ptBR Fale com Sirra Von'Indi
    turnin 225
step
    ifturnedin 225
    path seq 1431 72.64,47.61
    goto 1431 73.5,46.9
    note-enUS Talk to Sirra Von'Indi
    note-ptBR Fale com Sirra Von'Indi
    accept 227
    note-enUS Talk to Commander Althea Ebonlocke
    note-ptBR Fale com Commander Althea Ebonlocke
    turnin 227
    accept 228
step
    goto 1431 73.9,44.4
    vendor |opt
    note-enUS Talk to Tavernkeep Smitts
    note-ptBR Fale com Tavernkeep Smitts
    turnin 158
    accept 156
    turnin 266
    accept 453
step
    ifcomplete 93
    goto 1431 73.9,43.9
    note-enUS Talk to Chef Grual
    note-ptBR Fale com Chef Grual
    turnin 93
step
    ifturnedin 93
    goto 1431 73.9,43.9
    note-enUS Talk to Chef Grual
    note-ptBR Fale com Chef Grual
    accept 240
step
    only Hunter Paladin
    goto 1431 73.7,46.8
    note-enUS Talk to Commander Althea Ebonlocke
    note-ptBR Fale com Commander Althea Ebonlocke
    turnin 228
    accept 229
step
    only Hunter Paladin
    goto 1431 74.54,46.09
    note-enUS Talk to Watcher Ladimore
    note-ptBR Fale com Watcher Ladimore
    turnin 229
    accept 231
step
    only !Rogue !Druid
    ifonquest 173
    goto 1431 60.8,29.7
    note-enUS Kill Shadow Weavers above Darkshire
    note-ptBR Mate Shadow Weavers acima de Darkshire
    objective 173/1
step
    ifcomplete 173
    goto 1431 75.3,47.9
    note-enUS Talk to Calor
    note-ptBR Fale com Calor
    turnin 173
    accept 221
step
    goto 1431 77.5,44.3
    fp
step
    goto 1433 31.54,57.85
    note-enUS Talk to Guard Howe
    note-ptBR Fale com Guard Howe
    accept 128
step
    goto 1433 33.5,49.2
    note-enUS Talk to Marshal Marris
    note-ptBR Fale com Marshal Marris
    accept 19
    accept 115
step
    goto 1433 80.3,37.2
    note-enUS Kill Fangore, and loot him for his Paw. Be careful as lots of gnolls patrol around him, he is shadow immune, and can social aggro all gnolls at any time within 40 yards.
    note-ptBR Mate Fangore e saqueie-o para obter a pata dele. Cuidado, muitos gnolls patrulham ao redor dele, ele é imune a sombra e pode puxar todos os gnolls num raio de 40 metros a qualquer momento.
    objective 180/1
step
    ifonquest 94
    goto 1433 84.3,46.9
    turnin 94
step
    ifturnedin 94
    goto 1433 84.3,46.9
    accept 248
step
    only !Warlock
    goto 1433 74.2,42.1
    note-enUS Kill gnolls in the area
    note-ptBR Mate gnolls na área
    objective 91/1
step
    goto 1433 69.2,59.8
    note-enUS Kill Tharil'zun and loot his head.
    note-ptBR Mate Tharil'zun e saqueie a cabeça dele.
    objective 19/1
step
    goto 1433 66.6,55.4
    note-enUS Kill Blackrock Shadowcasters. Loot them for Midnight Orbs
    note-ptBR Mate Blackrock Shadowcasters. Saqueie-os para obter Midnight Orbs
    objective 115/1
step
    ifonquest 248
    goto 1433 63.2,49.7
    note-enUS Climb to the top of the tower
    note-ptBR Suba até o topo da torre
    turnin 248
step
    ifonquest 128
    goto 1433 32.8,6.8
    objective 128/1
step
    ifcomplete 19
    goto 1433 33.5,48.97
    note-enUS Talk to Marshal Marris
    note-ptBR Fale com Marshal Marris
    turnin 19
step
    goto 1433 33.5,48.97
    note-enUS Talk to Marshal Marris
    note-ptBR Fale com Marshal Marris
    turnin 115
step
    only !Warlock
    goto 1433 29.6,44.3
    note-enUS Talk to Bailiff Conacher
    note-ptBR Fale com Bailiff Conacher
    turnin 91
step
    goto 1433 29.8,44.5
    note-enUS Talk to Magistrate Solomon
    note-ptBR Fale com Magistrate Solomon
    turnin 180
step
    ifcomplete 128
    goto 1433 31.6,58
    note-enUS Talk to Guard Howe
    note-ptBR Fale com Guard Howe
    turnin 128
step
    ifonquest 240
    goto 1433 30.5,59.3
    goto 1431 18.4,56.5
    fly 1436 |opt
    use 2794 |opt
    collect 2794 1 |quest 337 |opt
    accept 337 |opt
    note-enUS Talk to Jitters
    note-ptBR Fale com Jitters
    turnin 453 |opt
    accept 268 |opt
    note-enUS Talk to Jitters
    note-ptBR Fale com Jitters
    turnin 240
step
    goto 1431 7.7,34.1
    note-enUS Talk to Sven Yorgen
    note-ptBR Fale com Sven Yorgen
    turnin 268
    accept 323
step
    only !Hunter !Paladin
    path seq 1431 16.2,38.8
    goto 1431 21.6,45.1
    note-enUS Kill Skeletal Raiders around the crypt and house on the hill as you complete other quests. You typically cannot get all 15 in one go and want to keep them respawning.
    note-ptBR Mate Skeletal Raiders pela cripta e pela casa na colina enquanto completa outras missões. Normalmente não dá para pegar os 15 de uma vez, e é bom deixá-los ressurgindo.
    objective 323/1 |opt
    note-enUS Kill undead in the area and loot them
    note-ptBR Mate mortos-vivos na área e saqueie-os
    objective 57/1
    objective 57/2
    objective 156/1
    objective 101/3
step
    only Hunter Paladin
    goto 1431 17.7,29.2
    note-enUS Click on the gravestone
    note-ptBR Clique na lápide
    turnin 231
step
    only Hunter Paladin
    goto 1431 21.6,45.1
    note-enUS Kill undead in the area and loot them
    note-ptBR Mate mortos-vivos na área e saqueie-os
    objective 57/1
    objective 57/2
    objective 156/1
    objective 101/3
step
    goto 1431 16.2,38.8
    note-enUS Kill mobs around the crypt, you might need to go inside it to kill the 3 warders you need
    note-ptBR Mate mobs ao redor da cripta, talvez seja preciso entrar nela para matar os 3 warders necessários
    objective 323/1
    objective 323/2
    objective 323/3
step
    goto 1431 23.8,35
    level 27
step
    goto 1431 19.7,39.7
    note-enUS Kill the level 30 elite roaming the cemetery. Skip this step if you cannot solo her or find a group.
    note-ptBR Mate a elite nível 30 que vaga pelo cemitério. Pule esta etapa se não conseguir matá-la sozinho ou encontrar um grupo.
    note-enUS Run away when he enrages, use the big trees to kite and make space. Don't try to tank him during the enrage
    note-ptBR Fuja quando ele ficar enfurecido, use as árvores grandes para fazer kite e abrir espaço. Não tente tanqueá-lo durante o enfurecimento
    objective 228/1
step
    goto 1431 7.9,34.1
    note-enUS Talk to Sven Yorgen
    note-ptBR Fale com Sven Yorgen
    turnin 323
    accept 269
step
    goto 1429 43.7,65.9
    note-enUS Run to Goldshire
    note-ptBR Corra até Goldshire
    note-enUS Talk to Innkeeper Farley
    note-ptBR Fale com Innkeeper Farley
    turnin 69
    accept 70
step
    goto 1429 44.2,65.9
    note-enUS Go upstairs in the room behind the rogue trainer. Loot the chest
    note-ptBR Suba as escadas na sala atrás do instrutor de ladinos. Saqueie o baú
    objective 70/1
step
    only Shaman
    goto 1453 61.9,84
    trainer
step
    only Warrior
    goto 1429 41.09,65.77
    trainer
step
    only Mage
    goto 1453 39.6,79.6
    note-enUS Teleport to stormwind
    note-ptBR Teleporte-se para Stormwind
    trainer
step
    goto 1453 26.4,78.4
    note-enUS Talk to Zardeth of the Black Claw
    note-ptBR Fale com Zardeth of the Black Claw
    accept 335
step
    only Warlock
    goto 1453 26.4,78.4
    trainer
step
    goto 1453 29.8,61.8
    note-enUS Talk to Caretaker Folsom
    note-ptBR Fale com Caretaker Folsom
    turnin 70
    accept 72
step
    goto 1453 29.6,61.7
    turnin 72
    accept 74
step
    goto 1453 40.8,30.8
    note-enUS Talk to Brother Sarno
    note-ptBR Fale com Brother Sarno
    accept 2923
step
    only Paladin
    goto 1453 40,29.9
    note-enUS Talk to Duthorian Rall
    note-ptBR Fale com Duthorian Rall
    turnin 1652
    accept 1653
step
    goto 1453 39.3,28
    note-enUS Talk to Bishop Farthing
    note-ptBR Fale com Bishop Farthing
    turnin 269
    accept 270
step
    only Paladin
    goto 1453 38.6,32.8
    trainer
step
    only Priest
    goto 1453 38.5,26.8
    trainer
step
    only Hunter
    goto 1453 61.7,15.4
    trainer
]==])

register([==[
#format 1
#id forever.x.a.27-30-wetlands-hillsbrad
#name 27-30 Wetlands/Hillsbrad
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#levels 27-30
#zones 1437 1424
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup Experimental (from Classic guides)
#subgroup-ptBR Experimental (adaptado do Classic)
#next forever.x.a.30-32-duskwood-stv

step
    goto 1455 69.8,50.1
    note-enUS Talk to Tinkmaster Overspark
    note-ptBR Fale com Tinkmaster Overspark
    turnin 2923
step
    only Rogue
    goto 1455 45.2,6.6
    trainer |only Rogue |opt
    note-enUS Buy the level 31 weapon upgrades (17dps)
    note-ptBR Compre as melhorias de arma de nível 31 (17 DPS)
    collect 2520 1
    collect 2526 1
    note-enUS Skip this step if you can find a better weapon at the Auction House
    note-ptBR Pule este passo se conseguir encontrar uma arma melhor na Casa de Leilões
step
    only Hunter Warrior Paladin Shaman Rogue
    goto 1455 61.34,89.25
    zone 1455 |only Mage |opt
    train 197 |only !Rogue
    train 266 |only Hunter Warrior Rogue
    train 199 |only Warrior Shaman
step
    only Paladin
    goto 1426 52.5,36.8
    note-enUS Head to the gates of Ironforge
    note-ptBR Vá até os portões de Ironforge
    note-enUS Talk to Jordan Stilwell
    note-ptBR Fale com Jordan Stilwell
    turnin 1653
step
    goto 1455 56.2,46.8
    fly 1437
step
    goto 1437 8.4,58.5
    note-enUS Talk to Karl Boran
    note-ptBR Fale com Karl Boran
    turnin 279
    accept 281
step
    ifonquest 469
    goto 1437 8.6,55.8
    note-enUS Talk to James Halloran
    note-ptBR Fale com James Halloran
    turnin 469
step
    ifonquest 484
    goto 1437 8.6,55.8
    note-enUS Talk to James Halloran
    note-ptBR Fale com James Halloran
    turnin 484
step
    ifturnedin 484
    goto 1437 8.6,55.8
    note-enUS Talk to James Halloran
    note-ptBR Fale com James Halloran
    accept 471
step
    goto 1437 10.8,59.6
    note-enUS Talk to First Mate Fitzsimmons
    note-ptBR Fale com First Mate Fitzsimmons
    accept 289
step
    goto 1437 10.6,60.5
    note-enUS Talk to Glorin Steelbrow
    note-ptBR Fale com Glorin Steelbrow
    turnin 270
    accept 321
step
    goto 1437 10.7,60.9
    note-enUS Restock on food/water if needed.
    note-ptBR Reabasteça comida/água se necessário.
    home
step
    goto 1437 10.9,55.9
    note-enUS Talk to Harlo Barnaby
    note-ptBR Fale com Harlo Barnaby
    accept 472
step
    goto 1437 9.9,57.4
    note-enUS Talk to Captain Stoutfist
    note-ptBR Fale com Captain Stoutfist
    turnin 464
    accept 465
step
    goto 1437 11.7,58
    note-enUS Talk to Sida
    note-ptBR Fale com Sida
    accept 470
step
    goto 1437 11.5,52.17
    note-enUS Talk to Tarrel Rockweaver
    note-ptBR Fale com Tarrel Rockweaver
    turnin 306
step
    goto 1437 13.5,41.5
    turnin 281
    accept 284
step
    goto 1437 13.5,38.4
    turnin 284
    accept 285
step
    goto 1437 13.9,34.8
    turnin 285
    accept 286
step
    goto 1437 13.9,30.4
    note-enUS To find Snellig, enter the ship by the hole on the hull close to the shore
    note-ptBR Para encontrar Snellig, entre no navio pelo buraco no casco perto da margem
    note-enUS The ship to the north usually has more Marines if you're having trouble finding some.
    note-ptBR O navio ao norte costuma ter mais Marines se você estiver com dificuldade para encontrá-los.
    objective 289/3
    objective 289/1
    objective 289/2
step
    ifturnedin 484
    goto 1437 17.8,26.3
    note-enUS Kill Giant Crocolisks along the coast and loot them for skins
    note-ptBR Mate Giant Crocolisks ao longo da costa e saqueie-os para obter as peles
    objective 471/1
step
    goto 1437 38.18,50.89
    note-enUS Talk to Ormer Ironbraid
    note-ptBR Fale com Ormer Ironbraid
    accept 294
step
    goto 1437 24.7,48.6
    note-enUS Kill raptors in Wetlands
    note-ptBR Mate raptores em Wetlands
    objective 943/1 |opt
    objective 294/1
    objective 294/2
step
    goto 1437 38.18,50.89
    note-enUS Talk to Ormer Ironbraid
    note-ptBR Fale com Ormer Ironbraid
    turnin 294
    accept 295
step
    goto 1437 38.8,52.3
    note-enUS Talk to Merrin Rockweaver
    note-ptBR Fale com Merrin Rockweaver
    turnin 305
step
    goto 1437 38.81,52.39
    note-enUS Talk to Prospector Whelgar
    note-ptBR Fale com Prospector Whelgar
    accept 299
step
    goto 1437 34.3,49.5
    note-enUS Loot the 4 relics around the dig site
    note-ptBR Saqueie as 4 relíquias pelo sítio de escavação
    objective 299/1
    objective 299/2
    objective 299/3
    objective 299/4
step
    goto 1437 34.6,48
    objective 295/1
    objective 295/2
step
    goto 1437 38.18,50.89
    note-enUS Talk to Ormer Ironbraid
    note-ptBR Fale com Ormer Ironbraid
    turnin 295
    accept 296
step
    path seq 1437 31.5,48.9
    goto 1437 33.3,51.5
    note-enUS Kill Sarltooth atop the hill. Loot him for his Talon. Be careful as he Thrashes and has a 6 minute respawn
    note-ptBR Mate Sarltooth no topo da colina. Saqueie-o para obter a garra dele. Cuidado, ele usa thrash e ressurge a cada 6 minutos
    objective 296/1
step
    goto 1437 38.18,50.89
    note-enUS Talk to Ormer Ironbraid
    note-ptBR Fale com Ormer Ironbraid
    turnin 296
step
    goto 1437 38.81,52.39
    note-enUS Talk to Prospector Whelgar
    note-ptBR Fale com Prospector Whelgar
    turnin 299
step
    ifonquest 943
    goto 1437 38.81,52.39
    note-enUS Loot the fossil on the ground
    note-ptBR Saqueie o fóssil no chão
    objective 943/2
step
    ifonquest 943
    goto 1437 34.6,48
    note-enUS Keep killing raptors until you loot the Stone of Relu
    note-ptBR Continue matando raptores até saquear a Stone of Relu
    objective 943/1
step
    goto 1437 44.2,25.8
    note-enUS Kill slimes around the crypt
    note-ptBR Mate gosmas ao redor da cripta
    objective 470/1
step
    ifturnedin 276
    goto 1437 44.2,33.9
    note-enUS Kill gnolls
    note-ptBR Mate gnolls
    objective 277/1
step
    ifturnedin 276
    goto 1437 56.3,40.5
    note-enUS Talk to Rethiel the Greenwarden
    note-ptBR Fale com Rethiel the Greenwarden
    turnin 277
    accept 275
step
    ifonquest 465
    goto 1437 47.3,46.9
    turnin 465
    accept 474
step
    ifonquest 474
    goto 1437 53.5,54.6
    note-enUS Kill Nek'rosh and loot him for his head
    note-ptBR Mate Nek'rosh e saqueie-o para obter a cabeça dele
    objective 474/1
step
    ifonquest 335
    goto 1437 64.8,75.3
    note-enUS Loot the tree root at the base of the waterfall
    note-ptBR Saqueie a raiz de árvore na base da cachoeira
    objective 335/2
step
    goto 1450 52.4,40.6 |only Druid
    note-enUS Teleport to Moonglade |only Druid
    note-ptBR Teleporte-se para Moonglade |only Druid
    trainer |only Druid |opt
    hearth
step
    goto 1437 10.8,59.6
    note-enUS Talk to First Mate Fitzsimmons
    note-ptBR Fale com First Mate Fitzsimmons
    turnin 289
    accept 290
step
    ifonquest 943
    goto 1437 10.83,60.4
    note-enUS Go upstairs and talk to Archaeologist Flagongut
    note-ptBR Suba as escadas e fale com Archaeologist Flagongut
    note-enUS Talk to Archaeologist Flagongut
    note-ptBR Fale com Archaeologist Flagongut
    turnin 943
step
    ifcomplete 470
    goto 1437 11.7,58.1
    note-enUS Talk to Sida
    note-ptBR Fale com Sida
    turnin 470
step
    goto 1437 8.31,58.53
    note-enUS Talk to Karl Boran
    note-ptBR Fale com Karl Boran
    turnin 286
step
    ifturnedin 484
    goto 1437 8.6,55.8
    note-enUS Talk to James Halloran
    note-ptBR Fale com James Halloran
    turnin 471
step
    goto 1437 15.5,23.5
    note-enUS Kill Captain Halyndor by entering the ship through the broken mast
    note-ptBR Mate Captain Halyndor entrando no navio pelo mastro quebrado
    note-enUS Be careful he can cast [Ward of the Eye] making him REFLECT SPELLS for 6 seconds
    note-ptBR Cuidado, ele pode lançar [Ward of the Eye], fazendo-o REFLETIR FEITIÇOS por 6 segundos
    objective 290/1
step
    goto 1437 14.4,24
    note-enUS Dive underwater. Theres a hole in the hull of the north side of the ship. Do NOT delete the Cursed Eye of Paleth, it's used for a later quest.
    note-ptBR Mergulhe. Há um buraco no casco do lado norte do navio. NÃO destrua o Cursed Eye of Paleth, ele é usado em uma missão posterior.
    turnin 290
    accept 292
step
    goto 1437 47.3,46.9
    note-enUS Kill Fen Creepers, they are stealth mobs lurking along the river stream
    note-ptBR Mate Fen Creepers, são mobs furtivos que ficam à espreita ao longo do riacho
    objective 275/1 |opt
    turnin 465
    accept 474
step
    goto 1437 53.5,54.6
    note-enUS Kill Nek'rosh and loot him for his head
    note-ptBR Mate Nek'rosh e saqueie-o para obter a cabeça dele
    objective 474/1
step
    ifonquest 275
    goto 1437 56.4,40.5
    note-enUS Finish off Fen Creepers in the rivers
    note-ptBR Termine de matar os Fen Creepers nos rios
    objective 275/1
step
    ifonquest 275
    goto 1437 56.4,40.5
    note-enUS Talk to Rethiel the Greenwarden
    note-ptBR Fale com Rethiel the Greenwarden
    turnin 275
step
    goto 1437 49.9,18.3
    note-enUS Talk to Rhag Garmason
    note-ptBR Fale com Rhag Garmason
    accept 631
    note-enUS Talk to Longbraid the Grim
    note-ptBR Fale com Longbraid the Grim
    accept 304
    note-enUS Talk to Motley Garmason
    note-ptBR Fale com Motley Garmason
    accept 303
step
    path seq 1437 47.4,15.4 61.8,31 46.8,16
    goto 1437 47.3,16.6
    note-enUS Kill Balgaras the Foul, he can spawn in the camp far to the east or inside one of the houses in Dun Modr. Head east after checking Dun Modir. Loot him for his ear.
    note-ptBR Mate Balgaras the Foul, ele pode surgir no acampamento bem a leste ou dentro de uma das casas em Dun Modr. Siga para o leste depois de verificar Dun Modir. Saqueie-o para obter a orelha dele.
    objective 304/1
    note-enUS Kill Dark Iron dwarves in the area
    note-ptBR Mate anões Dark Iron na área
    objective 303/1
    objective 303/2
    objective 303/3
    objective 303/4
step
    goto 1437 49.7,18.3
    note-enUS Talk to Motley Garmason
    note-ptBR Fale com Motley Garmason
    turnin 303
    note-enUS Talk to Longbraid the Grim
    note-ptBR Fale com Longbraid the Grim
    turnin 304
step
    goto 1437 51.2,8
    note-enUS Go downstairs and click on the dwarf corpse. Ignore all the mobs.
    note-ptBR Desça as escadas e clique no cadáver do anão. Ignore todos os mobs.
    turnin 631
    accept 632
step
    goto 1437 49.9,18.3
    note-enUS Talk to Rhag Garmason
    note-ptBR Fale com Rhag Garmason
    turnin 632
    accept 633
step
    goto 1417 43.3,92.6
    note-enUS Talk to Foggy MacKreel
    note-ptBR Fale com Foggy MacKreel
    accept 647
    note-enUS You can still get this quest if you don't have any kind of speed increase or slow fall
    note-ptBR Você ainda pode pegar esta missão mesmo sem nenhum tipo de aumento de velocidade ou queda lenta
step
    goto 1417 44.3,93
    use 4433
    accept 637
step
    path seq 1417 52.5,90.4
    goto 1417 48.7,87.9
    objective 633/1
step
    goto 1437 49.9,18.3
    note-enUS Talk to Rhag Garmason
    note-ptBR Fale com Rhag Garmason
    turnin 633
    accept 634
step
    goto 1417 45.9,47.5
    note-enUS Talk to Captain Nials
    note-ptBR Fale com Captain Nials
    turnin 634
step
    goto 1417 45.8,46.1
    fp
step
    ifonquest 647
    goto 1424 52.2,58.6
    note-enUS Run to Southshore and go downstairs in the inn. Turn in before the timer is up. Watch out for the courier on the road.
    note-ptBR Corra até Southshore e desça as escadas da estalagem. Entregue antes que o tempo acabe. Cuidado com o mensageiro na estrada.
    note-enUS Talk to Brewmeister Bilger
    note-ptBR Fale com Brewmeister Bilger
    turnin 647
step
    ifonquest 538
    goto 1424 50.5,57.2
    note-enUS Talk to Loremaster Dibbs
    note-ptBR Fale com Loremaster Dibbs
    turnin 538
step
    goto 1424 51.4,58.5
    note-enUS Talk to Lieutenant Farren Orinelle
    note-ptBR Fale com Lieutenant Farren Orinelle
    accept 536
step
    goto 1424 50.9,58.8
    note-enUS Talk to Huraan
    note-ptBR Fale com Huraan
    accept 9435
step
    goto 1424 44,67.6
    note-enUS Kill murlocs in the area
    note-ptBR Mate murlocs na área
    objective 536/1
    objective 536/2
step
    goto 1424 51.4,58.5
    note-enUS Talk to Lieutenant Farren Orinelle
    note-ptBR Fale com Lieutenant Farren Orinelle
    turnin 536
    accept 559
step
    goto 1424 42.3,68.3
    note-enUS Kill murlocs and loot them for their head
    note-ptBR Mate murlocs e saqueie-os para obter a cabeça deles
    objective 559/1
step
    goto 1424 51.4,58.5
    note-enUS Talk to Lieutenant Farren Orinelle
    note-ptBR Fale com Lieutenant Farren Orinelle
    turnin 559
    accept 560
step
    goto 1424 49.5,58.8
    note-enUS Talk to Marshal Redpath
    note-ptBR Fale com Marshal Redpath
    turnin 560
    accept 561
step
    goto 1424 51.4,58.4
    note-enUS Talk to Lieutenant Farren Orinelle
    note-ptBR Fale com Lieutenant Farren Orinelle
    turnin 561
    accept 562
step
    goto 1424 57.1,67.4
    note-enUS Kill naga in the area, you may need to go in the water if you get unlucky spawns
    note-ptBR Mate nagas na área, talvez seja preciso entrar na água se os ressurgimentos forem azarados
    objective 562/1
    objective 562/2
step
    goto 1424 51.4,58.5
    note-enUS Talk to Lieutenant Farren Orinelle
    note-ptBR Fale com Lieutenant Farren Orinelle
    turnin 562
    accept 563
step
    goto 1424 49.3,52.3
    fp
step
    goto 1422 42.9,85
    note-enUS Head north farming turtle meat along the river, once you get at the end of the river, head northwest into WPL. You don't need all 10 meat yet.
    note-ptBR Siga para o norte coletando carne de tartaruga ao longo do rio. Ao chegar ao fim do rio, siga para noroeste até WPL. Você ainda não precisa das 10 carnes.
    fp
step
    goto 1422 42.9,85
    goto 1424 49.3,52.3
    fly 1437
step
    goto 1437 10.6,60.5
    note-enUS Talk to Glorin Steelbrow
    note-ptBR Fale com Glorin Steelbrow
    turnin 292
    accept 293
step
    goto 1437 12.1,64.1
    turnin 321
    accept 324
step
    goto 1437 10.1,69.5
    note-enUS Kill murlocs and loot them for ingots. The droprate can be very low.
    note-ptBR Mate murlocs e saqueie-os para obter lingotes. A taxa de drop pode ser muito baixa.
    objective 324/1
step
    goto 1437 10.6,60.4
    note-enUS Talk to Glorin Steelbrow
    note-ptBR Fale com Glorin Steelbrow
    turnin 324
    accept 322
step
    goto 1437 9.9,57.4
    note-enUS Talk to Captain Stoutfist
    note-ptBR Fale com Captain Stoutfist
    turnin 474
step
    only !Mage
    goto 1437 9.3,59.4
    fly 1455
step
    only Mage
    zone 1455
step
    goto 1455 63.8,67.8
    note-enUS Talk to Sara Balloo
    note-ptBR Fale com Sara Balloo
    turnin 637
    accept 683
step
    goto 1455 39.3,55.9
    note-enUS Talk to King Magni Bronzebeard
    note-ptBR Fale com King Magni Bronzebeard
    turnin 683
    accept 686
step
    goto 1455 38.7,87.2
    note-enUS Talk to Grand Mason Marblesten
    note-ptBR Fale com Grand Mason Marblesten
    turnin 686
    accept 689
]==])

register([==[
#format 1
#id forever.x.a.30-32-duskwood-stv
#name 30-32 Duskwood/STV
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#levels 30-32
#zones 1431 1434
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup Experimental (from Classic guides)
#subgroup-ptBR Experimental (adaptado do Classic)

step
    only Mage
    goto 1453 39.6,79.6
    note-enUS Teleport to stormwind
    note-ptBR Teleporte-se para Stormwind
    trainer
step
    only Hunter
    goto 1453 61.7,15.4
    trainer
step
    only Paladin
    goto 1453 40,29.9
    note-enUS Buy a Bronze Tube from the Auction House
    note-ptBR Compre um Bronze Tube na Casa de Leilões
    objective 174/1 |opt
    note-enUS Buy 10 linen cloth at the Auction House if you don't have it already |only Human Paladin
    note-ptBR Compre 10 linen cloth na Casa de Leilões se ainda não tiver |only Human Paladin
    collect 2589 10 |quest 1644 |only Human Paladin |opt
    note-enUS Talk to Duthorian Rall
    note-ptBR Fale com Duthorian Rall
    turnin 1652
    accept 1653
step
    only Paladin
    goto 1453 38.6,32.8
    trainer
step
    only Priest
    goto 1453 38.5,26.8
    trainer
step
    ifonquest 322
    goto 1453 51.7,12.3
    note-enUS Talk to Grimand Elmore
    note-ptBR Fale com Grimand Elmore
    turnin 322
    accept 325
step
    path seq 1453 41.5,31.7
    goto 1453 39.7,27.6
    note-enUS Talk to Thomas, the patrolling kid
    note-ptBR Fale com Thomas, o garoto que patrulha
    note-enUS Talk to Thomas
    note-ptBR Fale com Thomas
    accept 1274 |opt
step
    zone 1453
step
    only Human Paladin
    goto 1453 39.8,30.1
    note-enUS Speak to Duthorian Rall and click on the Tome of Divinity provided
    note-ptBR Fale com Duthorian Rall e clique no Tome of Divinity fornecido
    accept 1642
    note-enUS Talk to Duthorian Rall
    note-ptBR Fale com Duthorian Rall
    turnin 1642
    accept 1643
step
    only Warlock
    goto 1453 25.3,78.7
    trainer
step
    goto 1453 74.1,7.6
    note-enUS Head into Stormwind Keep
    note-ptBR Entre em Stormwind Keep
    accept 337
    note-enUS Talk to Milton Sheaf
    note-ptBR Fale com Milton Sheaf
    turnin 337
step
    ifturnedin 337
    goto 1453 74.1,7.6
    note-enUS Talk to Milton Sheaf
    note-ptBR Fale com Milton Sheaf
    accept 538
step
    ifonquest 1274
    goto 1453 78.1,25.1
    note-enUS Talk to Bishop DeLavey
    note-ptBR Fale com Bishop DeLavey
    turnin 1274
    accept 1241
step
    only Hunter
    ifonquest 563
    goto 1453 72.8,16.1
    note-enUS Talk to Major Samuelson
    note-ptBR Fale com Major Samuelson
    turnin 563
step
    only Human Paladin
    goto 1453 56.9,61.9
    note-enUS Talk to Stephanie Turner
    note-ptBR Fale com Stephanie Turner
    turnin 1643
    accept 1644
step
    only Human Paladin
    goto 1453 56.9,61.9
    objective 1644/1
    note-enUS Talk to Stephanie Turner
    note-ptBR Fale com Stephanie Turner
    turnin 1644
    accept 1780
step
    only Shaman
    goto 1453 61.9,83.9
    note-enUS Talk to Farseer Umbrua
    note-ptBR Fale com Farseer Umbrua
    accept 10491
    trainer
step
    only Warrior
    goto 1453 78.6,45.8
    trainer
step
    only Rogue
    goto 1453 74.6,52.8
    trainer
step
    ifonquest 1241
    goto 1453 73.1,78.3
    note-enUS Talk to Jorgen
    note-ptBR Fale com Jorgen
    turnin 1241
    accept 1242
step
    ifonquest 1242
    goto 1453 60.1,64.4
    note-enUS Talk to Elling Trias
    note-ptBR Fale com Elling Trias
    turnin 1242
    accept 1243
step
    only Human Paladin
    goto 1453 40.1,29.9
    note-enUS Talk to Duthorian Rall
    note-ptBR Fale com Duthorian Rall
    turnin 1780
    accept 1781
step
    only Human Paladin
    goto 1453 38.7,26.6
    note-enUS Talk to Gazin Tenorm
    note-ptBR Fale com Gazin Tenorm
    turnin 1781
    accept 1786
step
    goto 1453 66.2,62.1
    fly 1431
step
    ifturnedin 174
    goto 1431 79.8,47.9
    note-enUS Talk to Viktori Prism'Antras
    note-ptBR Fale com Viktori Prism'Antras
    accept 174 |opt
    turnin 174 |opt
    note-enUS Talk to Viktori Prism'Antras
    note-ptBR Fale com Viktori Prism'Antras
    accept 175
step
    ifturnedin 174
    goto 1431 82,59
    note-enUS Talk to Blind Mary
    note-ptBR Fale com Blind Mary
    turnin 175
    accept 177
step
    ifturnedin 174
    goto 1431 80.9,71.8
    note-enUS Kill the Insane Ghoul at the chapel
    note-ptBR Mate o Insane Ghoul na capela
    objective 177/1
step
    ifturnedin 174
    goto 1431 79.8,47.8
    note-enUS Talk to Viktori Prism'Antras
    note-ptBR Fale com Viktori Prism'Antras
    turnin 177
    accept 181
step
    goto 1431 73.78,44.48
    note-enUS Talk to Tavernkeep Smitts
    note-ptBR Fale com Tavernkeep Smitts
    turnin 156
    accept 159
step
    home
step
    goto 1431 73.7,46.8
    note-enUS Talk to Commander Althea Ebonlocke
    note-ptBR Fale com Commander Althea Ebonlocke
    turnin 57
    accept 58
    turnin 228
    accept 229
step
    only Paladin Hunter
    goto 1431 73.7,46.8
    note-enUS Talk to Commander Althea Ebonlocke
    note-ptBR Fale com Commander Althea Ebonlocke
    turnin 57
    accept 58
step
    goto 1431 73.7,46.8
    note-enUS Talk to Commander Althea Ebonlocke
    note-ptBR Fale com Commander Althea Ebonlocke
    turnin 228
    accept 229
step
    only !Hunter !Paladin
    goto 1431 74.54,46.09
    note-enUS Talk to Watcher Ladimore
    note-ptBR Fale com Watcher Ladimore
    turnin 229
    accept 231
step
    ifonquest 1243
    goto 1431 72.6,33.9
    note-enUS Talk to Watcher Backus
    note-ptBR Fale com Watcher Backus
    turnin 1243
    accept 1244
step
    goto 1431 60.8,29.7
    complete 1
step
    goto 1429 84.6,69.5
    note-enUS Run north to Eastvale Logging Camp in Elwynn Forest
    note-ptBR Corra para o norte até Eastvale Logging Camp em Elwynn Forest
    note-enUS Talk to Marshal Haggard
    note-ptBR Fale com Marshal Haggard
    turnin 74
    accept 75
step
    goto 1429 85.6,69.6
    note-enUS Loot the chest upstairs
    note-ptBR Saqueie o baú no andar de cima
    objective 75/1
step
    goto 1429 84.7,69.4
    note-enUS Talk to Marshal Haggard
    note-ptBR Fale com Marshal Haggard
    turnin 75
    accept 78
step
    only Shaman
    goto 1431 73.9,44.5
    hearth |only Shaman |opt
    note-enUS Talk to Tavernkeep Smitts
    note-ptBR Fale com Tavernkeep Smitts
    turnin 78
    accept 79
step
    only Shaman
    goto 1431 73.6,46.7
    note-enUS Talk to Commander Althea Ebonlocke
    note-ptBR Fale com Commander Althea Ebonlocke
    turnin 79
    accept 80
step
    only Shaman
    goto 1431 72.6,46.9
    note-enUS Talk to Clerk Daltry
    note-ptBR Fale com Clerk Daltry
    turnin 80
    accept 97
step
    only Shaman
    goto 1431 73.54,46.82
    note-enUS Talk to Commander Althea Ebonlocke
    note-ptBR Fale com Commander Althea Ebonlocke
    turnin 97
    accept 98
step
    only Shaman
    ifonquest 335
    goto 1431 78.4,35.9
    note-enUS Look for a small flower on the ground
    note-ptBR Procure uma florzinha no chão
    objective 335/1
step
    only Shaman
    goto 1431 77.4,36.1
    note-enUS Kill Stalvan in the house and loot him for his ring
    note-ptBR Mate Stalvan na casa e saqueie-o para obter o anel dele
    objective 98/1
step
    only Shaman
    goto 1431 75.7,45.3
    note-enUS Talk to Madame Eva
    note-ptBR Fale com Madame Eva
    turnin 98
step
    only Human Paladin
    goto 1431 77.6,44.6 |only Shaman
    goto 1429 72.7,51.5
    fly 1436 |only Shaman |opt
    note-enUS Use the Symbol of Life on Henze Faulk
    note-ptBR Use o Symbol of Life em Henze Faulk
    note-enUS Talk to Henze Faulk
    note-ptBR Fale com Henze Faulk
    turnin 1786
    accept 1787
    use 6866
step
    only Human Paladin
    goto 1429 73.5,51.3
    note-enUS Kill Defias Wizards around the island
    note-ptBR Mate Defias Wizards pela ilha
    objective 1787/1
step
    goto 1431 28,31.6
    note-enUS Head back to Duskwood
    note-ptBR Volte para Duskwood
    note-enUS Talk to Abercrombie
    note-ptBR Fale com Abercrombie
    turnin 159
    accept 133
step
    goto 1431 23.6,35
    note-enUS Keep an eye out for Old History book (zone-wide drop). You'll need this for later
    note-ptBR Fique de olho no Old History book (drop em toda a zona). Você vai precisar dele depois
    collect 2794 1 |quest 337 |opt
    accept 337 |opt
    note-enUS Kill Plague Spreaders in the crypt and loot them
    note-ptBR Mate Plague Spreaders na cripta e saqueie-os
    objective 133/1
    objective 58/1
    objective 101/1
step
    goto 1431 28,31.5
    note-enUS Talk to Abercrombie
    note-ptBR Fale com Abercrombie
    turnin 133
    accept 134
step
    goto 1431 23.9,72
    note-enUS Loot the chest inside the small house
    note-ptBR Saqueie o baú dentro da casinha
    objective 1244/1
step
    goto 1431 33.5,76.3
    note-enUS Loot the crate next to the cave entrance
    note-ptBR Saqueie o caixote ao lado da entrada da caverna
    objective 134/1
step
    ifonquest 181
    goto 1431 36.8,83.8
    note-enUS Kill Zzarc' Vul and loot him for his monocle
    note-ptBR Mate Zzarc' Vul e saqueie-o para obter o monóculo dele
    objective 181/1
step
    goto 1431 31.6,45.4
    note-enUS Kill spiders and loot them for their venom
    note-ptBR Mate aranhas e saqueie-as para obter o veneno delas
    objective 101/2
step
    goto 1431 28.11,31.46
    note-enUS Talk to Abercrombie
    note-ptBR Fale com Abercrombie
    turnin 134
    accept 160
step
    only !Hunter !Paladin
    goto 1431 17.7,29.2
    note-enUS Click on the gravestone
    note-ptBR Clique na lápide
    turnin 231
step
    only !Dwarf !Paladin
    goto 1431 7.78,34.07
    note-enUS Talk to Sven Yorgen
    note-ptBR Fale com Sven Yorgen
    turnin 325
    accept 55
step
    only !Dwarf !Paladin
    goto 1431 17.2,33.4
    note-enUS Use the provided off-hand weapon to weaken Morbent Fel
    note-ptBR Use a arma de mão secundária fornecida para enfraquecer Morbent Fel
    objective 55/1
step
    only !Dwarf !Paladin
    goto 1431 7.8,34.3
    note-enUS Talk to Sven Yorgen
    note-ptBR Fale com Sven Yorgen
    turnin 55
step
    only !Shaman !Paladin !Dwarf Paladin
    goto 1436 56.5,52.6
    fp
step
    ifonquest 181
    goto 1431 79.8,47.9
    note-enUS Talk to Viktori Prism'Antras
    note-ptBR Fale com Viktori Prism'Antras
    turnin 181
step
    goto 1431 75.3,47.9
    note-enUS Talk to Calor
    note-ptBR Fale com Calor
    turnin 173
    accept 221
step
    goto 1431 75.7,45.3
    note-enUS Talk to Madame Eva
    note-ptBR Fale com Madame Eva
    turnin 101
step
    only !Shaman
    goto 1431 73.9,44.5
    note-enUS Talk to Tavernkeep Smitts
    note-ptBR Fale com Tavernkeep Smitts
    turnin 78
    accept 79
step
    goto 1431 73.6,46.7
    note-enUS Talk to Commander Althea Ebonlocke
    note-ptBR Fale com Commander Althea Ebonlocke
    turnin 58
    turnin 79 |only !Shaman
    accept 80 |only !Shaman
step
    only !Shaman
    goto 1431 72.6,46.9
    note-enUS Talk to Clerk Daltry
    note-ptBR Fale com Clerk Daltry
    turnin 80
    accept 97
step
    goto 1431 71.9,46.6
    note-enUS Talk to Lord Ello Ebonlocke
    note-ptBR Fale com Lord Ello Ebonlocke
    turnin 160
    accept 251
step
    goto 1431 72.62,47.62
    note-enUS Talk to Sirra Von'Indi
    note-ptBR Fale com Sirra Von'Indi
    turnin 251
    accept 401
    turnin 401
    accept 252
step
    goto 1431 71.9,46.6
    note-enUS Talk to Lord Ello Ebonlocke
    note-ptBR Fale com Lord Ello Ebonlocke
    turnin 252
    accept 253
step
    only !Shaman
    goto 1431 73.54,46.82
    note-enUS Talk to Commander Althea Ebonlocke
    note-ptBR Fale com Commander Althea Ebonlocke
    turnin 97
    accept 98
step
    ifonquest 1244
    goto 1431 72.6,33.9
    note-enUS Talk to Watcher Backus
    note-ptBR Fale com Watcher Backus
    turnin 1244
    accept 1245
step
    only !Shaman
    goto 1431 77.4,36.1
    note-enUS Kill Stalvan in the house for his ring
    note-ptBR Mate Stalvan na casa para obter o anel dele
    objective 98/1
step
    only !Shaman
    ifonquest 335
    goto 1431 78.4,35.9
    note-enUS Look for a small flower on the ground
    note-ptBR Procure uma florzinha no chão
    objective 335/1
step
    only !Shaman
    goto 1431 75.7,45.3
    note-enUS Talk to Madame Eva
    note-ptBR Fale com Madame Eva
    turnin 98
step
    goto 1431 64.7,49.7
    objective 221/1
step
    goto 1431 75.3,48.1
    note-enUS Talk to Calor
    note-ptBR Fale com Calor
    turnin 221
    accept 222
step
    goto 1431 73,75
    objective 222/1
    objective 222/2
step
    goto 1434 38.2,4.1
    fp
step
    goto 1434 37.8,3.3
    note-enUS Talk to Corporal Kaleb
    note-ptBR Fale com Corporal Kaleb
    accept 210
step
    path seq 1434 40.4,8.4
    goto 1434 35.6,10.5
    note-enUS Look out for Private Thorsen's roleplay event while you quest, he patrols down the road every ~30 minutes. Wait for the two guards to attack him, if you rescue him you'll get the quest.
    note-ptBR Fique atento ao evento de roleplay do Private Thorsen enquanto faz missões, ele patrulha a estrada a cada ~30 minutos. Espere os dois guardas atacarem-no; se você o resgatar, receberá a missão.
    note-enUS Talk to Private Thorsen
    note-ptBR Fale com Private Thorsen
    accept 215 |opt
    note-enUS Talk to Barnil Stonepot
    note-ptBR Fale com Barnil Stonepot
    accept 583
step
    goto 1434 35.7,10.8
    note-enUS Talk to Hemet Nesingwary Jr.
    note-ptBR Fale com Hemet Nesingwary Jr.
    turnin 583
    note-enUS Talk to Ajeck Rouack
    note-ptBR Fale com Ajeck Rouack
    accept 185
    note-enUS Talk to Sir S. J. Erlgadin
    note-ptBR Fale com Sir S. J. Erlgadin
    accept 190
step
    path seq 1434 37.6,11.6 35.62,10.62 36.4,13.6
    goto 1434 37.6,11.6
    note-enUS Kill young tigers around the hunting camp
    note-ptBR Mate tigres jovens ao redor do acampamento de caça
    objective 185/1
step
    goto 1434 42.1,11.2
    note-enUS Cross the bridge and kill young panthers
    note-ptBR Atravesse a ponte e mate panteras jovens
    objective 190/1
step
    goto 1434 35.62,10.62
    note-enUS Talk to Ajeck Rouack
    note-ptBR Fale com Ajeck Rouack
    turnin 185
    note-enUS Talk to Sir S. J. Erlgadin
    note-ptBR Fale com Sir S. J. Erlgadin
    turnin 190
    accept 186
    accept 191
step
    ifonquest 215
    goto 1434 38,3
    turnin 215
    note-enUS Skip this quest if you haven't managed to get it earlier
    note-ptBR Pule esta missão se não conseguiu pegá-la antes
step
    goto 1431 28.8,30.9
    note-enUS Run back to Duskwood, click on the dirt mound to summon Eliza
    note-ptBR Volte correndo para Duskwood, clique no monte de terra para invocar Eliza
    objective 253/1
step
    only Druid
    goto 1450 52.4,40.6
    note-enUS Teleport to Moonglade
    note-ptBR Teleporte-se para Moonglade
    trainer
step
    only Dwarf Paladin
    goto 1431 7.78,34.07
    hearth |only !Dwarf !Paladin |opt
    note-enUS Talk to Sven Yorgen
    note-ptBR Fale com Sven Yorgen
    turnin 325
    accept 55
step
    only Dwarf Paladin
    goto 1431 17.2,33.4
    note-enUS Use the provided off-hand weapon to weaken Morbent Fel
    note-ptBR Use a arma de mão secundária fornecida para enfraquecer Morbent Fel
    objective 55/1
step
    only Dwarf Paladin
    goto 1431 7.8,34.3
    note-enUS Talk to Sven Yorgen
    note-ptBR Fale com Sven Yorgen
    turnin 55
step
    only Dwarf Paladin
    goto 1436 56.5,52.6 12
    fp
step
    goto 1431 72,46.6
    note-enUS Talk to Lord Ello Ebonlocke
    note-ptBR Fale com Lord Ello Ebonlocke
    turnin 253
step
    goto 1431 75.75,47.57
    note-enUS Talk to Calor
    note-ptBR Fale com Calor
    turnin 222
    accept 223
step
    goto 1431 75.3,48.9
    note-enUS Talk to Jonathan Carevin
    note-ptBR Fale com Jonathan Carevin
    turnin 223
step
    only !Mage
    goto 1431 77.5,44.2
    fly 1453
step
    only Mage
    goto 1453 39.6,79.6
    note-enUS Teleport to stormwind
    note-ptBR Teleporte-se para Stormwind
    trainer
step
    ifonquest 1245
    goto 1453 60.1,64.4
    note-enUS Buy 10 Linen Cloth from the Auction House |only Dwarf Paladin
    note-ptBR Compre 10 Linen Cloth na Casa de Leilões |only Dwarf Paladin
    objective 1648/1 |only Dwarf Paladin |opt
    note-enUS Talk to Elling Trias
    note-ptBR Fale com Elling Trias
    turnin 1245
    accept 1246
step
    only Paladin
    goto 1453 38.6,32.8
    trainer
step
    only Priest
    goto 1453 38.5,26.8
    trainer
step
    only Warrior
    path seq 1453 64.1,61.2 |only Warrior
    goto 1453 46.7,79 |only Warrior
    goto 1453 78.8,45.3
    note-enUS Check the the AH, the flower shop at the trade district and the alchemy shop at the mage district and buy some Liferoot, you will need 8 for a quest later, skip this step if you already have it |only Warrior
    note-ptBR Verifique a Casa de Leilões, a floricultura no distrito comercial e a loja de alquimia no distrito dos magos e compre um pouco de Liferoot, você vai precisar de 8 para uma missão depois. Pule esta etapa se já tiver |only Warrior
    collect 3357 8 |only Warrior |opt
    note-enUS Talk to Torm Ragetotem
    note-ptBR Fale com Torm Ragetotem
    accept 1718
    trainer
step
    only Shaman
    goto 1453 61.9,83.9
    trainer
step
    only Rogue
    goto 1453 74.6,52.8
    trainer
step
    ifonquest 1246
    goto 1453 70.3,44.8
    note-enUS Beat Dashel Stonefist
    note-ptBR Derrote Dashel Stonefist
    note-enUS Talk to Dashel Stonefist
    note-ptBR Fale com Dashel Stonefist
    turnin 1246
step
    ifturnedin 1246
    goto 1453 70.3,44.8
    note-enUS Talk to Dashel Stonefist
    note-ptBR Fale com Dashel Stonefist
    accept 1447
    turnin 1447
step
    ifturnedin 1447
    goto 1453 70.3,44.8
    note-enUS Talk to Dashel Stonefist
    note-ptBR Fale com Dashel Stonefist
    accept 1247
step
    ifonquest 1247
    goto 1453 60.1,63.9
    note-enUS Talk to Elling Trias
    note-ptBR Fale com Elling Trias
    turnin 1247
    accept 1248
step
    path seq 1453 55.4,68.3
    goto 1453 39.9,81.3
    note-enUS Talk to Archmage Malin
    note-ptBR Fale com Archmage Malin
    accept 690
step
    goto 1453 40.6,91.7
    note-enUS Talk to Connor Rivers
    note-ptBR Fale com Connor Rivers
    accept 1301
step
    ifcomplete 335
    goto 1453 26.4,78.3
    note-enUS Talk to Zardeth of the Black Claw
    note-ptBR Fale com Zardeth of the Black Claw
    turnin 335
step
    ifturnedin 335
    goto 1453 26.4,78.3
    note-enUS Talk to Zardeth of the Black Claw
    note-ptBR Fale com Zardeth of the Black Claw
    accept 336
step
    only Warlock
    goto 1453 25.3,78.5
    note-enUS Talk to Demisette Cloyce
    note-ptBR Fale com Demisette Cloyce
    accept 4738
step
    only Warlock
    goto 1453 25.3,78.5
    note-enUS Talk to Lago Blackwrench
    note-ptBR Fale com Lago Blackwrench
    accept 1798
    trainer
step
    only Human Paladin
    goto 1453 38.6,26.7
    note-enUS Talk to Gazin Tenorm
    note-ptBR Fale com Gazin Tenorm
    turnin 1787
    accept 1788
step
    only Human Paladin
    goto 1453 39.9,29.8
    note-enUS Talk to Duthorian Rall
    note-ptBR Fale com Duthorian Rall
    turnin 1788
step
    goto 1453 74.3,30.3
    note-enUS Talk to Count Remington Ridgewell
    note-ptBR Fale com Count Remington Ridgewell
    accept 543
step
    ifonquest 336
    goto 1453 75.1,31.4
    note-enUS Talk to Lord Baurles K. Wishock
    note-ptBR Fale com Lord Baurles K. Wishock
    turnin 336
step
    goto 1453 74.1,7.6
    accept 337
    note-enUS Talk to Milton Sheaf
    note-ptBR Fale com Milton Sheaf
    turnin 337
    accept 538
step
    only Dwarf Paladin
    goto 1455 18.5,51.6
    zone 1455 |only Dwarf Paladin Mage |opt
    home
step
    only Dwarf Paladin
    goto 1455 23.13,6.14
    note-enUS Talk to Brandur Ironhammer
    note-ptBR Fale com Brandur Ironhammer
    accept 2999
step
    only Dwarf Paladin
    goto 1455 27.4,12.1
    note-enUS Go upstairs and speak to Tiza Battleforge
    note-ptBR Suba as escadas e fale com Tiza Battleforge
    note-enUS Talk to Tiza Battleforge
    note-ptBR Fale com Tiza Battleforge
    turnin 2999
    accept 1645
    turnin 1645
    accept 1646
    turnin 1646
    accept 1647
step
    only Dwarf Paladin
    note-enUS Speak to John Turner, he walks around the outer ring of the city
    note-ptBR Fale com John Turner, ele anda pelo anel externo da cidade
    note-enUS Talk to John Turner
    note-ptBR Fale com John Turner
    turnin 1647
    accept 1648
    turnin 1648
    accept 1778
step
    only Dwarf Paladin
    goto 1455 27.63,12.18
    note-enUS Return to Tiza Battleforge
    note-ptBR Volte para Tiza Battleforge
    note-enUS Talk to Tiza Battleforge
    note-ptBR Fale com Tiza Battleforge
    turnin 1778
    accept 1779
step
    only Dwarf Paladin
    goto 1455 23.6,8.6
    note-enUS Speak to Muiredon Battleforge
    note-ptBR Fale com Muiredon Battleforge
    note-enUS Talk to Muiredon Battleforge
    note-ptBR Fale com Muiredon Battleforge
    turnin 1779
    accept 1783
step
    only Dwarf Paladin
    goto 1426 53.2,35.3 |only Dwarf Paladin
    goto 1426 78.32,58.09
    zone 1426 |only Dwarf Paladin |opt
    note-enUS Use the Symbol of Life on Narm Faulk
    note-ptBR Use o Symbol of Life em Narm Faulk
    note-enUS Talk to Narm Faulk
    note-ptBR Fale com Narm Faulk
    turnin 1783
    accept 1784
step
    only Dwarf Paladin
    goto 1426 77.3,60.5
    note-enUS Kill Dark Iron Spies
    note-ptBR Mate Dark Iron Spies
    objective 1784/1
step
    only Dwarf Paladin
    goto 1455 23.54,8.3
    hearth |only Dwarf Paladin |opt
    note-enUS Speak to Muiredon upstairs
    note-ptBR Fale com Muiredon no andar de cima
    note-enUS Talk to Muiredon Battleforge
    note-ptBR Fale com Muiredon Battleforge
    turnin 1784
    accept 1785
step
    only Dwarf Paladin
    goto 1455 27.4,11.9
    note-enUS Talk to Tiza Battleforge
    note-ptBR Fale com Tiza Battleforge
    turnin 1785
step
    only Gnome !Warlock Dwarf
    goto 1455 55.5,47.2
    fly 1437
step
    only !Gnome Warlock !Dwarf
    goto 1453 66.2,62.2
    fly 1437
step
    only Gnome !Warlock Dwarf !Paladin
    goto 1453 66.2,62.2
    fly 1437
step
    goto 1437 10.6,60.7
    home
step
    ifonquest 1248
    goto 1437 10.6,60.7
    note-enUS Talk to Mikhail
    note-ptBR Fale com Mikhail
    turnin 1248
    accept 1249
step
    note-enUS Once you accept the quest, you have to engage Tapoke Jhan while he tries to escape the inn. He's by the door.
    note-ptBR Depois de aceitar a missão, você precisa enfrentar Tapoke Jhan enquanto ele tenta fugir da estalagem. Ele está perto da porta.
    objective 1249/1
step
    ifonquest 1249
    goto 1437 10.6,60.7
    note-enUS Talk to Mikhail
    note-ptBR Fale com Mikhail
    turnin 1249
step
    ifonquest 1250
    goto 1437 10.6,60.3
    note-enUS Talk to Tapoke "Slim" Jahn
    note-ptBR Fale com Tapoke "Slim" Jahn
    accept 1250
step
    ifonquest 1250
    goto 1437 10.6,60.7
    note-enUS Talk to Mikhail
    note-ptBR Fale com Mikhail
    turnin 1250
    accept 1264
step
    goto 1437 8.4,61.6
    note-enUS Talk to Vincent Hyal
    note-ptBR Fale com Vincent Hyal
    turnin 1301
    accept 1302
]==])

register([==[
#format 1
#id forever.x.a.28-30-duskwood
#name 28-30 Duskwood
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#levels 28-30
#zone 1431
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup Experimental (from Classic guides)
#subgroup-ptBR Experimental (adaptado do Classic)
#next forever.x.a.30-32-hillsbrad

step
    only Paladin
    goto 1453 40,29.9
    note-enUS Buy a Bronze Tube from the Auction House
    note-ptBR Compre um Bronze Tube na Casa de Leilões
    objective 174/1 |opt
    note-enUS Talk to Duthorian Rall
    note-ptBR Fale com Duthorian Rall
    turnin 1652
    accept 1653
step
    only Paladin
    goto 1453 38.6,32.8
    trainer
step
    only Priest
    goto 1453 38.5,26.8
    trainer
step
    goto 1453 39.3,28
    note-enUS Talk to Bishop Farthing
    note-ptBR Fale com Bishop Farthing
    turnin 269
    accept 270
step
    ifonquest 322
    goto 1453 51.7,12.3
    note-enUS Talk to Grimand Elmore
    note-ptBR Fale com Grimand Elmore
    turnin 322
    accept 325
step
    path seq 1453 41.5,31.7
    goto 1453 39.7,27.6
    note-enUS Talk to the patrolling kid
    note-ptBR Fale com o garoto que patrulha
    note-enUS Talk to Thomas
    note-ptBR Fale com Thomas
    accept 1274 |opt
step
    zone 1453
step
    only Human Paladin
    goto 1453 39.8,30.1
    note-enUS Speak to Duthorian Rall and click on the Tome of Divinity provided
    note-ptBR Fale com Duthorian Rall e clique no Tome of Divinity fornecido
    accept 1642
    note-enUS Talk to Duthorian Rall
    note-ptBR Fale com Duthorian Rall
    turnin 1642
    accept 1643
step
    only Warlock
    goto 1453 25.3,78.7
    trainer
step
    ifonquest 337
    goto 1453 74.1,7.6
    accept 337
    note-enUS Talk to Milton Sheaf
    note-ptBR Fale com Milton Sheaf
    turnin 337
    accept 538
step
    ifonquest 1274
    goto 1453 78.1,25.1
    note-enUS Talk to Bishop DeLavey
    note-ptBR Fale com Bishop DeLavey
    turnin 1274
    accept 1241
step
    only Hunter
    ifonquest 563
    goto 1453 72.8,16.1
    note-enUS Talk to Major Samuelson
    note-ptBR Fale com Major Samuelson
    turnin 563
step
    only Human Paladin
    goto 1453 56.9,61.9
    note-enUS Buy 10 linen cloth at the Auction House if you don't have it already |only Human Paladin
    note-ptBR Compre 10 linen cloth na Casa de Leilões se ainda não tiver |only Human Paladin
    collect 2589 10 |quest 1644 |q 1644/1 |only Human Paladin |opt
    note-enUS Talk to Stephanie Turner
    note-ptBR Fale com Stephanie Turner
    turnin 1643
    accept 1644
step
    only Human Paladin
    goto 1453 56.9,61.9
    objective 1644/1
    note-enUS Talk to Stephanie Turner
    note-ptBR Fale com Stephanie Turner
    turnin 1644
    accept 1780
step
    only Warrior
    goto 1453 78.6,45.8
    trainer
step
    only Rogue
    goto 1453 74.6,52.8
    trainer
step
    ifonquest 1241
    goto 1453 73.1,78.3
    note-enUS Talk to Jorgen
    note-ptBR Fale com Jorgen
    turnin 1241
    accept 1242
step
    ifonquest 1242
    goto 1453 60.1,64.4
    note-enUS Talk to Elling Trias
    note-ptBR Fale com Elling Trias
    turnin 1242
    accept 1243
step
    only Human Paladin
    goto 1453 40.1,29.9
    note-enUS Talk to Duthorian Rall
    note-ptBR Fale com Duthorian Rall
    turnin 1780
    accept 1781
step
    only Human Paladin
    goto 1453 38.7,26.6
    note-enUS Talk to Gazin Tenorm
    note-ptBR Fale com Gazin Tenorm
    turnin 1781
    accept 1786
step
    goto 1453 66.2,62.1
    fly 1431
step
    ifturnedin 174
    goto 1431 79.8,47.9
    note-enUS Talk to Viktori Prism'Antras
    note-ptBR Fale com Viktori Prism'Antras
    accept 174 |opt
    turnin 174 |opt
    note-enUS Talk to Viktori Prism'Antras
    note-ptBR Fale com Viktori Prism'Antras
    accept 175
step
    ifturnedin 174
    goto 1431 82,59
    note-enUS Talk to Blind Mary
    note-ptBR Fale com Blind Mary
    turnin 175
    accept 177
step
    ifturnedin 174
    goto 1431 80.9,71.8
    note-enUS Kill the Insane Ghoul at the chapel
    note-ptBR Mate o Insane Ghoul na capela
    objective 177/1
step
    ifturnedin 174
    goto 1431 79.8,47.8
    note-enUS Talk to Viktori Prism'Antras
    note-ptBR Fale com Viktori Prism'Antras
    turnin 177
    accept 181
step
    goto 1431 73.78,44.48
    note-enUS Talk to Tavernkeep Smitts
    note-ptBR Fale com Tavernkeep Smitts
    turnin 156
    accept 159
step
    only !Nightelf
    home
step
    only Shaman
    home
step
    goto 1431 73.7,46.8
    note-enUS Talk to Commander Althea Ebonlocke
    note-ptBR Fale com Commander Althea Ebonlocke
    turnin 57
    accept 58
    turnin 228
    accept 229
step
    only Paladin Hunter
    goto 1431 73.7,46.8
    note-enUS Talk to Commander Althea Ebonlocke
    note-ptBR Fale com Commander Althea Ebonlocke
    turnin 57
    accept 58
step
    goto 1431 73.7,46.8
    note-enUS Talk to Commander Althea Ebonlocke
    note-ptBR Fale com Commander Althea Ebonlocke
    turnin 228
    accept 229
step
    only !Hunter !Paladin
    goto 1431 74.54,46.09
    note-enUS Talk to Watcher Ladimore
    note-ptBR Fale com Watcher Ladimore
    turnin 229
    accept 231
step
    ifonquest 1243
    goto 1431 72.6,33.9
    note-enUS Talk to Watcher Backus
    note-ptBR Fale com Watcher Backus
    turnin 1243
    accept 1244
step
    goto 1431 60.8,29.7
    complete 1
step
    goto 1429 84.6,69.5
    note-enUS Run north to Eastvale Logging Camp in Elwynn Forest
    note-ptBR Corra para o norte até Eastvale Logging Camp em Elwynn Forest
    note-enUS Talk to Marshal Haggard
    note-ptBR Fale com Marshal Haggard
    turnin 74
    accept 75
step
    goto 1429 85.6,69.6
    note-enUS Loot the chest upstairs
    note-ptBR Saqueie o baú no andar de cima
    objective 75/1
step
    goto 1429 84.7,69.4
    note-enUS Talk to Marshal Haggard
    note-ptBR Fale com Marshal Haggard
    turnin 75
    accept 78
step
    only Shaman
    goto 1431 73.9,44.5
    hearth |only Shaman |opt
    note-enUS Talk to Tavernkeep Smitts
    note-ptBR Fale com Tavernkeep Smitts
    turnin 78
    accept 79
step
    only Shaman
    goto 1431 73.6,46.7
    note-enUS Talk to Commander Althea Ebonlocke
    note-ptBR Fale com Commander Althea Ebonlocke
    turnin 79
    accept 80
step
    only Shaman
    goto 1431 72.6,46.9
    note-enUS Talk to Clerk Daltry
    note-ptBR Fale com Clerk Daltry
    turnin 80
    accept 97
step
    only Shaman
    goto 1431 73.54,46.82
    note-enUS Talk to Commander Althea Ebonlocke
    note-ptBR Fale com Commander Althea Ebonlocke
    turnin 97
    accept 98
step
    only Shaman
    ifonquest 335
    goto 1431 78.4,35.9
    note-enUS Look for a small flower on the ground
    note-ptBR Procure uma florzinha no chão
    objective 335/1
step
    only Shaman
    goto 1431 77.4,36.1
    note-enUS Kill the undead in the house and loot him for his ring
    note-ptBR Mate o morto-vivo na casa e saqueie-o para obter o anel dele
    objective 98/1
step
    only Shaman
    goto 1431 75.7,45.3
    note-enUS Talk to Madame Eva
    note-ptBR Fale com Madame Eva
    turnin 98
step
    only Human Paladin
    goto 1431 77.6,44.6 |only Shaman
    goto 1429 72.7,51.5
    fly 1436 |only Shaman |opt
    note-enUS Use the Symbol of Life on Henze Faulk
    note-ptBR Use o Symbol of Life em Henze Faulk
    note-enUS Talk to Henze Faulk
    note-ptBR Fale com Henze Faulk
    turnin 1786
    accept 1787
    use 6866
step
    only Human Paladin
    goto 1429 73.5,51.3
    note-enUS Kill Defias Wizards around the island
    note-ptBR Mate Defias Wizards pela ilha
    objective 1787/1
step
    goto 1431 28,31.6
    note-enUS Head back to Duskwood
    note-ptBR Volte para Duskwood
    note-enUS Talk to Abercrombie
    note-ptBR Fale com Abercrombie
    turnin 159
    accept 133
step
    goto 1431 23.6,35
    note-enUS Keep an eye out for Old History book (zone-wide drop). You'll need this for later
    note-ptBR Fique de olho no Old History book (drop em toda a zona). Você vai precisar dele depois
    collect 2794 1 |quest 337 |opt
    accept 337 |opt
    note-enUS Kill Plague Spreaders in the crypt and loot them
    note-ptBR Mate Plague Spreaders na cripta e saqueie-os
    objective 133/1
    objective 58/1
    objective 101/1
step
    goto 1431 28,31.5
    note-enUS Talk to Abercrombie
    note-ptBR Fale com Abercrombie
    turnin 133
    accept 134
step
    goto 1431 23.9,72
    note-enUS Loot the chest inside the small house
    note-ptBR Saqueie o baú dentro da casinha
    objective 1244/1
step
    goto 1431 33.5,76.3
    note-enUS Loot the crate next to the cave entrance
    note-ptBR Saqueie o caixote ao lado da entrada da caverna
    objective 134/1
step
    ifonquest 181
    goto 1431 36.8,83.8
    note-enUS Kill Zzarc' Vul and loot him for his monocle
    note-ptBR Mate Zzarc' Vul e saqueie-o para obter o monóculo dele
    objective 181/1
step
    goto 1434 35.6,10.5
    note-enUS Talk to Barnil Stonepot
    note-ptBR Fale com Barnil Stonepot
    accept 583
step
    goto 1434 35.7,10.8
    note-enUS Talk to Hemet Nesingwary Jr.
    note-ptBR Fale com Hemet Nesingwary Jr.
    turnin 583
    note-enUS Talk to Ajeck Rouack
    note-ptBR Fale com Ajeck Rouack
    accept 185
    note-enUS Talk to Sir S. J. Erlgadin
    note-ptBR Fale com Sir S. J. Erlgadin
    accept 190
step
    goto 1434 42.1,11.2
    objective 185/1 |opt
    objective 190/1
step
    goto 1434 35.62,10.62
    note-enUS Talk to Ajeck Rouack
    note-ptBR Fale com Ajeck Rouack
    turnin 185
    accept 186
    note-enUS Talk to Sir S. J. Erlgadin
    note-ptBR Fale com Sir S. J. Erlgadin
    turnin 190
    accept 191
step
    goto 1431 31.6,45.4
    note-enUS Kill spiders and loot them for their venom
    note-ptBR Mate aranhas e saqueie-as para obter o veneno delas
    objective 101/2
step
    goto 1431 28.11,31.46
    note-enUS Talk to Abercrombie
    note-ptBR Fale com Abercrombie
    turnin 134
    accept 160
step
    only !Hunter !Paladin
    goto 1431 17.7,29.2
    note-enUS Click on the gravestone
    note-ptBR Clique na lápide
    turnin 231
step
    ifonquest 181
    goto 1436 56.5,52.6
    goto 1431 79.8,47.9
    fp |opt
    note-enUS Talk to Viktori Prism'Antras
    note-ptBR Fale com Viktori Prism'Antras
    turnin 181
step
    goto 1431 75.3,47.9
    note-enUS Talk to Calor
    note-ptBR Fale com Calor
    turnin 173
    accept 221
step
    goto 1431 75.7,45.3
    note-enUS Talk to Madame Eva
    note-ptBR Fale com Madame Eva
    turnin 101
step
    only !Shaman
    goto 1431 73.9,44.5
    note-enUS Talk to Tavernkeep Smitts
    note-ptBR Fale com Tavernkeep Smitts
    turnin 78
    accept 79
step
    goto 1431 73.6,46.7
    note-enUS Talk to Commander Althea Ebonlocke
    note-ptBR Fale com Commander Althea Ebonlocke
    turnin 58
    turnin 79 |only !Shaman
    accept 80 |only !Shaman
step
    only !Shaman
    goto 1431 72.6,46.9
    note-enUS Talk to Clerk Daltry
    note-ptBR Fale com Clerk Daltry
    turnin 80
    accept 97
step
    goto 1431 71.9,46.6
    note-enUS Talk to Lord Ello Ebonlocke
    note-ptBR Fale com Lord Ello Ebonlocke
    turnin 160
    accept 251
step
    goto 1431 72.62,47.62
    note-enUS Talk to Sirra Von'Indi
    note-ptBR Fale com Sirra Von'Indi
    turnin 251
    accept 401
    turnin 401
    accept 252
step
    goto 1431 71.9,46.6
    note-enUS Talk to Lord Ello Ebonlocke
    note-ptBR Fale com Lord Ello Ebonlocke
    turnin 252
step
    goto 1431 71.9,46.6
    note-enUS Talk to Lord Ello Ebonlocke
    note-ptBR Fale com Lord Ello Ebonlocke
    accept 253
step
    only !Shaman
    goto 1431 73.54,46.82
    note-enUS Talk to Commander Althea Ebonlocke
    note-ptBR Fale com Commander Althea Ebonlocke
    turnin 97
    accept 98
step
    ifonquest 1244
    goto 1431 72.6,33.9
    note-enUS He patrols along the north road
    note-ptBR Ele patrulha ao longo da estrada norte
    note-enUS Talk to Watcher Backus
    note-ptBR Fale com Watcher Backus
    turnin 1244
    accept 1245
step
    only !Shaman
    goto 1431 77.4,36.1
    note-enUS Kill and loot Stalvan Mistmantle
    note-ptBR Mate e saqueie Stalvan Mistmantle
    objective 98/1
step
    only !Shaman
    ifonquest 335
    goto 1431 78.4,35.9
    note-enUS Look for a small flower on the ground
    note-ptBR Procure uma florzinha no chão
    objective 335/1
step
    only !Shaman
    goto 1431 75.7,45.3
    note-enUS Talk to Madame Eva
    note-ptBR Fale com Madame Eva
    turnin 98
step
    goto 1431 64.7,49.7
    note-enUS Kill worgen in the area
    note-ptBR Mate worgen na área
    objective 221/1
step
    goto 1431 75.3,48.1
    note-enUS Talk to Calor
    note-ptBR Fale com Calor
    turnin 221
    accept 222
step
    goto 1431 73,75
    note-enUS Kill Worgen in the area
    note-ptBR Mate Worgen na área
    objective 222/1
    objective 222/2
step
    level 30 |only !Shaman
    level 30 |only Shaman
step
    goto 1431 75.75,47.57
    note-enUS Talk to Calor
    note-ptBR Fale com Calor
    turnin 222
    accept 223
step
    goto 1431 75.3,48.9
    note-enUS Talk to Jonathan Carevin
    note-ptBR Fale com Jonathan Carevin
    turnin 223
step
    only Shaman
    level 30
step
    only !Mage
    goto 1431 77.5,44.2
    fly 1453
step
    only Shaman
    goto 1453 61.9,83.9
    note-enUS Talk to Farseer Umbrua
    note-ptBR Fale com Farseer Umbrua
    accept 10491
    trainer
step
    only Mage
    goto 1453 39.6,79.6
    note-enUS Teleport to stormwind
    note-ptBR Teleporte-se para Stormwind
    trainer
step
    ifonquest 1245
    goto 1453 60.1,64.4
    note-enUS Buy 10 Linen Cloth from the Auction House |only Dwarf Paladin
    note-ptBR Compre 10 Linen Cloth na Casa de Leilões |only Dwarf Paladin
    objective 1648/1 |only Dwarf Paladin |opt
    note-enUS Talk to Elling Trias
    note-ptBR Fale com Elling Trias
    turnin 1245
    accept 1246
step
    only Paladin
    goto 1453 38.6,32.8
    trainer
step
    only Priest
    goto 1453 38.5,26.8
    trainer
step
    only Warrior
    path seq 1453 64.1,61.2 |only Warrior
    goto 1453 46.7,79 |only Warrior
    goto 1453 78.8,45.3
    note-enUS Check the the AH, the flower shop at the trade district and the alchemy shop at the mage district and buy some Liferoot, you will need 8 for a quest later, skip this step if you already have it |only Warrior
    note-ptBR Verifique a Casa de Leilões, a floricultura no distrito comercial e a loja de alquimia no distrito dos magos e compre um pouco de Liferoot, você vai precisar de 8 para uma missão depois. Pule esta etapa se já tiver |only Warrior
    collect 3357 8 |only Warrior |opt
    note-enUS Talk to Torm Ragetotem
    note-ptBR Fale com Torm Ragetotem
    accept 1718
    trainer
step
    only Rogue
    goto 1453 74.6,52.8
    trainer
step
    ifonquest 1246
    goto 1453 70.3,44.8
    note-enUS Beat Dashel Stonefist
    note-ptBR Derrote Dashel Stonefist
    note-enUS Talk to Dashel Stonefist
    note-ptBR Fale com Dashel Stonefist
    turnin 1246
    accept 1447
    turnin 1447
    accept 1247
step
    ifonquest 1247
    goto 1453 60.1,63.9
    note-enUS Talk to Elling Trias
    note-ptBR Fale com Elling Trias
    turnin 1247
    accept 1248
step
    goto 1453 39.9,81.3
    note-enUS Talk to Archmage Malin
    note-ptBR Fale com Archmage Malin
    accept 690
step
    goto 1453 40.6,91.7
    note-enUS Talk to Connor Rivers
    note-ptBR Fale com Connor Rivers
    accept 1301
step
    only Warlock
    goto 1453 25.3,78.5
    note-enUS Talk to Demisette Cloyce
    note-ptBR Fale com Demisette Cloyce
    accept 4738
step
    only Warlock
    goto 1453 25.3,78.5
    note-enUS Talk to Lago Blackwrench
    note-ptBR Fale com Lago Blackwrench
    accept 1798
    trainer
step
    only Human Paladin
    goto 1453 38.6,26.7
    note-enUS Talk to Gazin Tenorm
    note-ptBR Fale com Gazin Tenorm
    turnin 1787
    accept 1788
step
    only Human Paladin
    goto 1453 39.9,29.8
    note-enUS Talk to Duthorian Rall
    note-ptBR Fale com Duthorian Rall
    turnin 1788
step
    goto 1453 74.1,7.6
    note-enUS Click on the Old History Book in your bags, skip this step if you havent found it
    note-ptBR Clique no Old History Book nas suas bolsas, pule esta etapa se não o encontrou
    accept 337
    note-enUS Talk to Milton Sheaf
    note-ptBR Fale com Milton Sheaf
    turnin 337
    use 2794
step
    ifturnedin 337
    goto 1453 74.1,7.6
    note-enUS Talk to Milton Sheaf
    note-ptBR Fale com Milton Sheaf
    accept 538
step
    ifonquest 2923
    goto 1455 69.8,50.1
    note-enUS Talk to Tinkmaster Overspark
    note-ptBR Fale com Tinkmaster Overspark
    turnin 2923
step
    only Rogue
    goto 1455 45.2,6.6
    trainer |only Rogue |opt
    note-enUS Buy the level 31 weapon upgrades (17dps)
    note-ptBR Compre as melhorias de arma de nível 31 (17 DPS)
    collect 2520 1
    collect 2526 1
    note-enUS Skip this step if you can find a better weapon at the Auction House
    note-ptBR Pule este passo se conseguir encontrar uma arma melhor na Casa de Leilões
step
    only Hunter Warrior Paladin Shaman Rogue
    goto 1455 61.34,89.25
    train 197 |only !Rogue
    train 266 |only Hunter Warrior Rogue
    train 199 |only Warrior Shaman
    train 198 |only Rogue Shaman
step
    goto 1455 18.5,51.6
    home
step
    only Dwarf Paladin
    goto 1455 23.13,6.14
    note-enUS Talk to Brandur Ironhammer
    note-ptBR Fale com Brandur Ironhammer
    accept 2999
step
    only Dwarf Paladin
    goto 1455 27.4,12.1
    note-enUS Go upstairs and speak to Tiza Battleforge
    note-ptBR Suba as escadas e fale com Tiza Battleforge
    note-enUS Talk to Tiza Battleforge
    note-ptBR Fale com Tiza Battleforge
    turnin 2999
    accept 1645
    turnin 1645
    accept 1646
    turnin 1646
    accept 1647
step
    only Dwarf Paladin
    note-enUS Speak to John Turner, he walks around the outer ring of the city
    note-ptBR Fale com John Turner, ele anda pelo anel externo da cidade
    note-enUS Talk to John Turner
    note-ptBR Fale com John Turner
    turnin 1647
    accept 1648
    turnin 1648
    accept 1778
step
    only Dwarf Paladin
    goto 1455 27.63,12.18
    note-enUS Return to Tiza Battleforge
    note-ptBR Volte para Tiza Battleforge
    note-enUS Talk to Tiza Battleforge
    note-ptBR Fale com Tiza Battleforge
    turnin 1778
    accept 1779
step
    only Dwarf Paladin
    goto 1455 23.6,8.6
    note-enUS Speak to Muiredon Battleforge
    note-ptBR Fale com Muiredon Battleforge
    note-enUS Talk to Muiredon Battleforge
    note-ptBR Fale com Muiredon Battleforge
    turnin 1779
    accept 1783
step
    only Paladin
    goto 1426 53.2,35.3 |only Dwarf Paladin
    goto 1426 52.5,36.8
    zone 1426 |only Dwarf Paladin |opt
    note-enUS Head to the gates of Ironforge |only !Dwarf
    note-ptBR Vá até os portões de Ironforge |only !Dwarf
    note-enUS Talk to Jordan Stilwell
    note-ptBR Fale com Jordan Stilwell
    turnin 1653
step
    only Dwarf Paladin
    goto 1426 78.32,58.09
    note-enUS Use the Symbol of Life on Narm Faulk
    note-ptBR Use o Symbol of Life em Narm Faulk
    note-enUS Talk to Narm Faulk
    note-ptBR Fale com Narm Faulk
    turnin 1783
    accept 1784
step
    only Dwarf Paladin
    goto 1426 77.3,60.5
    note-enUS Kill Dark Iron Spies
    note-ptBR Mate Dark Iron Spies
    objective 1784/1
step
    only Dwarf Paladin
    goto 1455 23.54,8.3
    hearth |only Dwarf Paladin |opt
    note-enUS Speak to Muiredon upstairs
    note-ptBR Fale com Muiredon no andar de cima
    note-enUS Talk to Muiredon Battleforge
    note-ptBR Fale com Muiredon Battleforge
    turnin 1784
    accept 1785
step
    only Dwarf Paladin
    goto 1455 27.4,11.9
    note-enUS Talk to Tiza Battleforge
    note-ptBR Fale com Tiza Battleforge
    turnin 1785
step
    only Mage
    goto 1455 25.5,7.1
    train 3562
]==])

register([==[
#format 1
#id forever.x.a.30-32-hillsbrad
#name 30-32 Hillsbrad
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#levels 30-32
#zones 1424
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup Experimental (from Classic guides)
#subgroup-ptBR Experimental (adaptado do Classic)

step
    goto 1437 10.8,59.6
    note-enUS Talk to First Mate Fitzsimmons
    note-ptBR Fale com First Mate Fitzsimmons
    accept 288
step
    goto 1437 10.6,60.5
    note-enUS Talk to Glorin Steelbrow
    note-ptBR Fale com Glorin Steelbrow
    turnin 270
    accept 321
step
    goto 1437 10.7,60.9
    note-enUS Buy a Flagon of Mead from the Innkeeper
    note-ptBR Compre um Flagon of Mead com o Taverneiro
    objective 288/1
step
    ifonquest 942
    goto 1437 10.84,60.43
    note-enUS Go upstairs and talk to Archaeologist Flagongut
    note-ptBR Suba as escadas e fale com Archaeologist Flagongut
    note-enUS Talk to Archaeologist Flagongut
    note-ptBR Fale com Archaeologist Flagongut
    turnin 942
step
    ifonquest 1248
    goto 1437 10.6,60.7
    note-enUS Talk to Mikhail
    note-ptBR Fale com Mikhail
    turnin 1248
    accept 1249
step
    note-enUS Once you accept the quest, you have to engage Tapoke Jhan while he tries to escape the inn. Two level 34 enemies will attack you. You may need to skip this step and do it later if you cannot kill them.
    note-ptBR Depois de aceitar a missão, você precisa enfrentar Tapoke Jhan enquanto ele tenta fugir da estalagem. Dois inimigos nível 34 vão atacar você. Talvez seja preciso pular esta etapa e fazê-la depois se não conseguir matá-los.
    objective 1249/1
step
    ifonquest 1249
    goto 1437 10.6,60.7
    note-enUS Talk to Mikhail
    note-ptBR Fale com Mikhail
    turnin 1249
    note-enUS Talk to Tapoke "Slim" Jahn
    note-ptBR Fale com Tapoke "Slim" Jahn
    accept 1250
step
    ifonquest 1250
    goto 1437 10.6,60.7
    note-enUS Talk to Mikhail
    note-ptBR Fale com Mikhail
    turnin 1250
    accept 1264
step
    goto 1437 10.8,59.7
    note-enUS Talk to First Mate Fitzsimmons
    note-ptBR Fale com First Mate Fitzsimmons
    turnin 288
    accept 289
step
    goto 1437 8.4,61.6
    note-enUS Talk to Vincent Hyal
    note-ptBR Fale com Vincent Hyal
    turnin 1301
    accept 1302
step
    goto 1437 12.1,64.1
    turnin 321
    accept 324
step
    goto 1437 10.1,69.5
    note-enUS Kill murlocs and loot them for ingots. The droprate can be very low.
    note-ptBR Mate murlocs e saqueie-os para obter lingotes. A taxa de drop pode ser muito baixa.
    objective 324/1
step
    goto 1437 10.6,60.4
    note-enUS Talk to Glorin Steelbrow
    note-ptBR Fale com Glorin Steelbrow
    turnin 324
    accept 322
step
    goto 1437 10.9,55.9
    note-enUS Talk to Harlo Barnaby
    note-ptBR Fale com Harlo Barnaby
    accept 472
step
    ifonquest 464
    goto 1437 9.9,57.4
    note-enUS Talk to Captain Stoutfist
    note-ptBR Fale com Captain Stoutfist
    turnin 464
step
    ifonquest 281
    goto 1437 13.5,41.5
    turnin 281
    accept 284
step
    ifonquest 284
    goto 1437 13.5,38.4
    turnin 284
    accept 285
step
    ifonquest 285
    goto 1437 13.9,34.8
    turnin 285
    accept 286
step
    goto 1437 13.9,30.4
    note-enUS To find Snellig, enter the ship by the hole on the hull close to the shore
    note-ptBR Para encontrar Snellig, entre no navio pelo buraco no casco perto da margem
    note-enUS The ship to the north usually has more Marines if you're having trouble finding some.
    note-ptBR O navio ao norte costuma ter mais Marines se você estiver com dificuldade para encontrá-los.
    objective 289/3
    objective 289/1
    objective 289/2
step
    ifonquest 470
    goto 1437 44.2,25.8
    note-enUS Kill slimes around the crypt
    note-ptBR Mate gosmas ao redor da cripta
    objective 470/1
step
    goto 1437 49.9,18.3
    note-enUS Talk to Longbraid the Grim
    note-ptBR Fale com Longbraid the Grim
    turnin 472 |opt
    note-enUS Talk to Rhag Garmason
    note-ptBR Fale com Rhag Garmason
    accept 631
    note-enUS Talk to Longbraid the Grim
    note-ptBR Fale com Longbraid the Grim
    accept 304
    note-enUS Talk to Motley Garmason
    note-ptBR Fale com Motley Garmason
    accept 303
step
    path seq 1437 47.4,15.4 61.8,31 46.8,16
    goto 1437 47.3,16.6
    note-enUS Kill Balgaras the Foul, he can spawn in the camp far to the east or inside one of the houses in Dun Modr. Head east after checking Dun Modir. Loot him for his ear.
    note-ptBR Mate Balgaras the Foul, ele pode surgir no acampamento bem a leste ou dentro de uma das casas em Dun Modr. Siga para o leste depois de verificar Dun Modir. Saqueie-o para obter a orelha dele.
    objective 304/1
    note-enUS Kill Dark Iron dwarves in the area
    note-ptBR Mate anões Dark Iron na área
    objective 303/1
    objective 303/2
    objective 303/3
    objective 303/4
step
    goto 1437 49.7,18.3
    note-enUS Talk to Motley Garmason
    note-ptBR Fale com Motley Garmason
    turnin 303
    note-enUS Talk to Longbraid the Grim
    note-ptBR Fale com Longbraid the Grim
    turnin 304
step
    goto 1437 51.2,8
    note-enUS Go downstairs and click on the dwarf corpse. Ignore all the mobs.
    note-ptBR Desça as escadas e clique no cadáver do anão. Ignore todos os mobs.
    turnin 631
    accept 632
step
    goto 1437 49.9,18.3
    note-enUS Run back outside and turn in the quest
    note-ptBR Volte correndo para fora e entregue a missão
    note-enUS Talk to Rhag Garmason
    note-ptBR Fale com Rhag Garmason
    turnin 632
    accept 633
step
    goto 1417 43.3,92.6
    note-enUS Talk to Foggy MacKreel
    note-ptBR Fale com Foggy MacKreel
    accept 647
    note-enUS You can still get this quest if you don't have any kind of speed increase or slow fall
    note-ptBR Você ainda pode pegar esta missão mesmo sem nenhum tipo de aumento de velocidade ou queda lenta
step
    goto 1417 44.3,93
    note-enUS Jump down and loot the letter from the corpse underwater
    note-ptBR Pule e saqueie a carta do cadáver debaixo d'água
    accept 637
    use 4433
step
    path seq 1417 52.5,90.4
    goto 1417 48.7,87.9
    objective 633/1
step
    goto 1437 49.9,18.3
    note-enUS Talk to Rhag Garmason
    note-ptBR Fale com Rhag Garmason
    turnin 633
    accept 634
step
    goto 1417 45.9,47.5
    note-enUS Talk to Captain Nials
    note-ptBR Fale com Captain Nials
    turnin 634
step
    goto 1417 45.8,46.1
    fp
step
    ifonquest 647
    goto 1424 52.2,58.6
    note-enUS Run to Southshore and go downstairs in the inn. Turn in before the timer is up. Watch out for the courier on the road.
    note-ptBR Corra até Southshore e desça as escadas da estalagem. Entregue antes que o tempo acabe. Cuidado com o mensageiro na estrada.
    note-enUS Talk to Brewmeister Bilger
    note-ptBR Fale com Brewmeister Bilger
    turnin 647
step
    goto 1424 51.4,58.5
    note-enUS Talk to Lieutenant Farren Orinelle
    note-ptBR Fale com Lieutenant Farren Orinelle
    accept 536
step
    goto 1424 50.9,58.8
    note-enUS Talk to Huraan
    note-ptBR Fale com Huraan
    accept 9435
step
    ifonquest 538
    goto 1424 50.5,57.2
    note-enUS Talk to Loremaster Dibbs
    note-ptBR Fale com Loremaster Dibbs
    turnin 538
step
    goto 1424 44,67.6
    note-enUS Kill murlocs in the area
    note-ptBR Mate murlocs na área
    objective 536/1
    objective 536/2
step
    goto 1424 51.4,58.5
    note-enUS Talk to Lieutenant Farren Orinelle
    note-ptBR Fale com Lieutenant Farren Orinelle
    turnin 536
    accept 559
step
    goto 1424 42.3,68.3
    note-enUS Kill murlocs and loot them for their head
    note-ptBR Mate murlocs e saqueie-os para obter a cabeça deles
    objective 559/1
step
    goto 1424 51.4,58.5
    note-enUS Talk to Lieutenant Farren Orinelle
    note-ptBR Fale com Lieutenant Farren Orinelle
    turnin 559
    accept 560
step
    goto 1424 49.5,58.8
    note-enUS Talk to Marshal Redpath
    note-ptBR Fale com Marshal Redpath
    turnin 560
    accept 561
step
    goto 1424 51.4,58.4
    note-enUS Talk to Lieutenant Farren Orinelle
    note-ptBR Fale com Lieutenant Farren Orinelle
    turnin 561
    accept 562
step
    goto 1424 57.1,67.4
    note-enUS Kill naga in the area, you may need to go in the water if you get unlucky spawns
    note-ptBR Mate nagas na área, talvez seja preciso entrar na água se os ressurgimentos forem azarados
    objective 562/1
    objective 562/2
step
    goto 1424 51.4,58.5
    note-enUS Talk to Lieutenant Farren Orinelle
    note-ptBR Fale com Lieutenant Farren Orinelle
    turnin 562
    accept 563
step
    goto 1424 50.9,58.8
    note-enUS Talk to Huraan
    note-ptBR Fale com Huraan
    accept 9435
step
    goto 1424 49.3,52.3
    fp
step
    goto 1424 55.6,35.1
    note-enUS Look for a wooden box inside of the destroyed tower
    note-ptBR Procure uma caixa de madeira dentro da torre destruída
    objective 9435/1
step
    goto 1416 58.4,67.9
    note-enUS Click on the map on top of a small table
    note-ptBR Clique no mapa em cima de uma mesinha
    accept 510
    accept 511
step
    goto 1422 42.9,85
    note-enUS Head north to Western Plaguelands
    note-ptBR Siga para o norte até Western Plaguelands
    fp
step
    goto 1422 42.9,85
    goto 1424 50.5,57.1
    fp |opt
    note-enUS Talk to Loremaster Dibbs
    note-ptBR Fale com Loremaster Dibbs
    turnin 511
    accept 514
step
    goto 1424 48.2,59.3
    note-enUS Talk to Magistrate Henry Maleb
    note-ptBR Fale com Magistrate Henry Maleb
    turnin 510
step
    goto 1424 50.9,58.8
    note-enUS Talk to Huraan
    note-ptBR Fale com Huraan
    turnin 9435
step
    goto 1455 63.79,67.78
    hearth |opt
    note-enUS Talk to Sara Balloo
    note-ptBR Fale com Sara Balloo
    turnin 637
step
    goto 1455 74.64,11.74
    note-enUS Talk to Prospector Stormpike
    note-ptBR Fale com Prospector Stormpike
    turnin 514
step
    goto 1455 63.79,67.78
    note-enUS Talk to Sara Balloo
    note-ptBR Fale com Sara Balloo
    accept 683
step
    goto 1455 39.1,56.19
    note-enUS Talk to King Magni Bronzebeard
    note-ptBR Fale com King Magni Bronzebeard
    turnin 683
    accept 686
step
    goto 1455 38.75,87.04
    note-enUS Talk to Grand Mason Marblesten
    note-ptBR Fale com Grand Mason Marblesten
    turnin 686
step
    goto 1455 69.88,82.89 |only Hunter
    goto 1455 66.4,88.7 |only Warrior
    goto 1455 24.7,8.8 |only Priest
    goto 1455 24.6,9.2 |only Paladin
    goto 1455 50.35,5.66 |only Warlock
    goto 1455 51.6,15.2 |only Rogue
    goto 1455 55.4,29.1 |only Shaman
    goto 1455 28.6,7.2 |only Mage
    trainer
step
    goto 1455 55.5,47.74
    fly 1437
step
    goto 1437 10.8,59.6
    note-enUS Talk to First Mate Fitzsimmons
    note-ptBR Fale com First Mate Fitzsimmons
    turnin 289
]==])
