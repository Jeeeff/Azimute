-- Convertido automaticamente de RXPGuides (Alliance-1-10_NightElf.lua)
-- (c) RestedXP - CC BY-NC-SA 4.0 (ver LICENSE.txt). Não edite à mão:
-- rode tools/rxp2azimute.py de novo.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id forever.a.1-6-shadowglen
#name 1-6 Shadowglen
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#levels 1-6
#zone 1438
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup Speedrun 1-20
#subgroup-ptBR Rota rápida 1-20
#recommend Nightelf
#next forever.a.6-11-teldrassil

step
    goto 1438 @826.03,10328.97
    note-enUS You have selected a guide meant for Night Elves. You should choose the same starter zone that you start in |only !Nightelf
    note-ptBR Você selecionou um guia feito para Elfos Noturnos. Escolha a mesma zona inicial em que você começou |only !Nightelf
    note-enUS Talk to Conservator Ilthalaine
    note-ptBR Fale com Conservator Ilthalaine
    accept 456
step
    only !Druid
    goto 1438 @657.75,10385.51 |only !Druid
    note-enUS Kill Young Nightsabers and Young Thistle Boars |only !Druid
    note-ptBR Mate Young Nightsabers e Young Thistle Boars |only !Druid
    objective 456/1 |only !Druid |opt
    objective 456/2 |only !Druid |opt
    note-enUS Loot the mobs you kill, make sure you have at least 10 copper worth of vendor trash, you will need it to train [Battle Shout]<< Warrior
    note-ptBR Saqueie os inimigos que matar, tenha pelo menos 10 cobres em lixo para vender, você vai precisar para treinar [Battle Shout]<< Warrior
    level 2
    note-enUS Grind to level 2
    note-ptBR Mate monstros até o nível 2
step
    only Druid
    goto 1438 @669.5,10387.3
    note-enUS Kill Young Nightsabers and Young Thistle Boars
    note-ptBR Mate Young Nightsabers e Young Thistle Boars
    objective 456/1
    objective 456/2
step
    only Warrior
    path seq 1438 @713.81,10407.2
    goto 1438 @763.45,10389.79
    note-enUS Make sure that you have at least 96 copper worth of vendor trash, you can count your staff that vendors for 9c |only Druid
    note-ptBR Certifique-se de ter pelo menos 96 cobres em lixo para vender, pode contar seu cajado, que vende por 9c |only Druid
    note-enUS Talk to Dirania Silvershine and Melithar Staghelm
    note-ptBR Fale com Dirania Silvershine e Melithar Staghelm
    accept 4495
    accept 458
step
    only Priest
    goto 1438 59.6,40.7
    note-enUS Talk to Dellylah
    note-ptBR Fale com Dellylah
    vendor
    note-enUS Vendor trash
    note-ptBR Venda o lixo
    note-enUS Buy 15 [Refreshing Spring Water]
    note-ptBR Compre 15 [Refreshing Spring Water]
    collect 159 15
step
    only !Druid
    goto 1438 @657.75,10385.51
    note-enUS Kill Young Nightsabers and Young Thistle Boars
    note-ptBR Mate Young Nightsabers e Young Thistle Boars
    objective 456/1
    objective 456/2
step
    only Warrior
    goto 1438 @794.92,10436.72
    note-enUS Talk to Keina
    note-ptBR Fale com Keina
    vendor
    note-enUS Vendor trash
    note-ptBR Venda o lixo
step
    only Warrior
    goto 1438 @778.07,10526.62
    note-enUS Talk to Alyissia
    note-ptBR Fale com Alyissia
    trainer
    note-enUS Train [Battle Shout]
    note-ptBR Treine [Battle Shout]
step
    only Hunter Warrior
    goto 1438 @769.77,10673.98
    level 4
    note-enUS Grind until you are 610xp away from level 4 (790/1400)
    note-ptBR Mate monstros até faltarem 610xp para o nível 4 (790/1400)
step
    only Hunter Warrior
    goto 1438 @1034.89,10711.58
    note-enUS Talk to Iverron
    note-ptBR Fale com Iverron
    turnin 4495
    accept 3519
step
    only Hunter Warrior
    goto 1438 @866.51,10300.67
    hearth |only Hunter Warrior |opt
    note-enUS Hearth to Shadowglen |only Hunter Warrior
    note-ptBR Use a pedra de regresso para Shadowglen |only Hunter Warrior
    note-enUS Talk to Tarindrella
    note-ptBR Fale com Tarindrella
    turnin 458
    accept 459
    accept 97977
step
    only Druid
    note-enUS Talk to Khardan
    note-ptBR Fale com Khardan
    note-enUS Vendor all your gear and your staff! Buy a [Short Staff] from him
    note-ptBR Venda todo o seu equipamento e seu cajado! Compre um [Short Staff] dele
    collect 2132 1
    use 2132
    note-enUS equip the Short Staff
    note-ptBR equipe o Short Staff
step
    only !Priest !Rogue
    goto 1438 @826.03,10328.97
    note-enUS Talk to Conservator Ilthalaine
    note-ptBR Fale com Conservator Ilthalaine
    turnin 456 |reward 1 |only Hunter
    turnin 456 |only !Hunter
    accept 457
    accept 3116 |only Warrior
    accept 3117 |only Hunter
    accept 3119 |only Priest
    accept 3120 |only Druid
step
    only !Hunter !Druid !Warrior
    goto 1438 @1034.89,10711.58
    note-enUS Kill Thistle Boars on the way to Iverron |only !Hunter !Druid !Warrior
    note-ptBR Mate Thistle Boars a caminho de Iverron |only !Hunter !Druid !Warrior
    objective 457/2 |only !Hunter !Druid !Warrior |opt
    note-enUS Talk to Iverron
    note-ptBR Fale com Iverron
    turnin 4495
    accept 3519
step
    only !Hunter !Warrior
    goto 1438 @866.51,10300.67
    hearth |only !Hunter !Druid !Warrior |opt
    note-enUS Hearth to Shadowglen |only !Hunter !Druid !Warrior
    note-ptBR Use a pedra de regresso para Shadowglen |only !Hunter !Druid !Warrior
    note-enUS Talk to Tarindrella
    note-ptBR Fale com Tarindrella
    turnin 458
    accept 459
    accept 97977
step
    only Priest Rogue
    goto 1438 @826.03,10328.97
    note-enUS Talk to Conservator Ilthalaine
    note-ptBR Fale com Conservator Ilthalaine
    turnin 456
    accept 3119 |only Priest
step
    only Druid
    path seq 1438 @964.3,10272.8
    goto 1438 @1030.2,10339.8
    note-enUS Cast [Wrath] until out of mana then switch back to [Melee] until you are back to full and repeat |only Druid
    note-ptBR Lance [Wrath] até acabar a mana, depois volte para o [Melee] até recuperar tudo e repita |only Druid
    note-enUS Kill Grell and Grellkin. Loot them for their Fel Moss
    note-ptBR Mate Grell e Grellkin. Saqueie-os para obter Fel Moss
    note-enUS Loot [Gnarlpine Totems] from the Grell Camps
    note-ptBR Saqueie os [Gnarlpine Totems] dos acampamentos Grell
    objective 459/1
    objective 97977/1
step
    only Druid
    goto 1438 @1034.89,10711.58
    note-enUS Kill Thistle Boars on the way to Iverron |only Druid
    note-ptBR Mate Thistle Boars a caminho de Iverron |only Druid
    objective 457/2 |only Druid |opt
    note-enUS Talk to Iverron
    note-ptBR Fale com Iverron
    turnin 4495
    accept 3519
step
    only Druid
    goto 1438 @871.6,10300.67
    hearth |only Druid |opt
    note-enUS Hearth to Shadowglen |only Druid
    note-ptBR Use a pedra de regresso para Shadowglen |only Druid
    note-enUS Talk to Tarindrella
    note-ptBR Fale com Tarindrella
    turnin 459 |reward 1
    turnin 97977
step
    goto 1438 @713.81,10407.2
    note-enUS Talk to Dirania Silvershine
    note-ptBR Fale com Dirania Silvershine
    turnin 3519
    accept 3521
step
    only Warrior
    level 4
step
    only Warrior
    goto 1438 @794.92,10436.72 |only Hunter Druid Warrior
    goto 1438 @778.07,10526.62
    note-enUS Talk to Keina |only Hunter Druid Warrior
    note-ptBR Fale com Keina |only Hunter Druid Warrior
    note-enUS Make sure that you have 1 silver leftover after leaving the vendor to be able to afford [Serpent Sting] |only Hunter
    note-ptBR Certifique-se de sobrar 1 prata ao sair do vendedor para poder pagar o [Serpent Sting] |only Hunter
    vendor |only Hunter |opt
    note-enUS Buy 2 stacks of [Rough Arrows] |only Hunter
    note-ptBR Compre 2 pilhas de [Rough Arrows] |only Hunter
    vendor |only Hunter Druid Warrior |opt
    note-enUS Vendor your trash |only Hunter Druid Warrior
    note-ptBR Venda seu lixo |only Hunter Druid Warrior
    note-enUS Talk to Alyissia
    note-ptBR Fale com Alyissia
    turnin 3116
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Priest
    goto 1438 59.6,40.7
    note-enUS Talk to Dellylah
    note-ptBR Fale com Dellylah
    vendor
    note-enUS Vendor trash
    note-ptBR Venda o lixo
    note-enUS Buy up to 25 [Refreshing Spring Water]
    note-ptBR Compre até 25 [Refreshing Spring Water]
    collect 159 25
step
    level 3
step
    goto 1438 @871.24,10417.65
    note-enUS Talk to Gilshalan Windwalker
    note-ptBR Fale com Gilshalan Windwalker
    accept 916
step
    only Hunter Druid
    level 4
step
    only Druid
    path seq 1438 @871.6,10440.83
    goto 1438 @829.54,10464.01
    note-enUS Ascend the Aldrassil Tree
    note-ptBR Suba a Aldrassil Tree
    note-enUS Talk to Mardant Strongoak
    note-ptBR Fale com Mardant Strongoak
    turnin 3120
    train 8921
    note-enUS Train [Moonfire]
    note-ptBR Treine [Moonfire]
step
    only Hunter
    path seq 1438 @871.6,10440.83
    goto 1438 @827.86,10458.51
    note-enUS Ascend the Aldrassil Tree
    note-ptBR Suba a Aldrassil Tree
    note-enUS Talk to Ayanna Everstride
    note-ptBR Fale com Ayanna Everstride
    turnin 3117
    train 1978
    note-enUS Train Serpent Sting
    note-ptBR Treine Serpent Sting
step
    path seq 1438 @863.96,10534.84 @873.64,10566.4 @850.72,10595.92 @820.17,10547.39
    goto 1438 @863.96,10534.84
    note-enUS Stop casting [Wrath] altogether! Only use [Melee] and [Moonfire] from now on! |only Druid
    note-ptBR Pare totalmente de lançar [Wrath]! Use só [Melee] e [Moonfire] daqui em diante! |only Druid
    note-enUS Try to only Moonfire right after Meleeing to not reset your swing timer! |only Druid
    note-ptBR Tente usar Moonfire só logo após um ataque corpo a corpo para não reiniciar seu tempo de golpe! |only Druid
    note-enUS Loot the Moonpetal Lilies on the ground
    note-ptBR Saqueie as Moonpetal Lilies no chão
    objective 3521/2
step
    goto 1438 @922.52,10755.43
    note-enUS Kill Webwood Spiders. Loot them for their Ichor and Venom Sacs
    note-ptBR Mate Webwood Spiders. Saqueie-as para obter icor e Venom Sacs
    objective 3521/3
    objective 916/1
step
    only !Druid
    goto 1438 @1014.17,10348.18
    note-enUS Kill Thistle Boars on the way to the Grells
    note-ptBR Mate Thistle Boars no caminho até os Grells
    objective 457/2 |opt
    note-enUS Kill Grell and Grellkin. Loot them for their Mushrooms and Fel Moss
    note-ptBR Mate Grell e Grellkin. Saqueie-os para obter cogumelos e Fel Moss
    note-enUS Loot [Gnarlpine Totems] from the Grell Camps
    note-ptBR Saqueie os [Gnarlpine Totems] dos acampamentos Grell
    objective 3521/1
    objective 459/1
    objective 97977/1
step
    only Druid
    goto 1438 @1014.17,10348.18
    note-enUS Kill Grell and Grellkin. Loot them for their Mushrooms
    note-ptBR Mate Grell e Grellkin. Saqueie-os para obter cogumelos
    objective 3521/1
step
    goto 1438 @871.6,10300.67
    note-enUS Talk to Tarindrella
    note-ptBR Fale com Tarindrella
    turnin 459
    turnin 97977
step
    goto 1438 @713.81,10407.2
    note-enUS Kill Thistle Boars on the way to Iverron
    note-ptBR Mate Thistle Boars a caminho de Iverron
    objective 457/2 |opt
    note-enUS Talk to Dirania Silvershine
    note-ptBR Fale com Dirania Silvershine
    turnin 3521
    accept 3522
step
    only Priest
    goto 1438 59.6,40.7
    note-enUS Talk to Dellylah
    note-ptBR Fale com Dellylah
    vendor
    note-enUS Vendor trash
    note-ptBR Venda o lixo
    note-enUS Buy up to 25 [Refreshing Spring Water]
    note-ptBR Compre até 25 [Refreshing Spring Water]
    collect 159 25
step
    only !Priest
    goto 1438 @794.92,10436.72
    note-enUS Talk to Keina
    note-ptBR Fale com Keina
    vendor |only !Hunter
    note-enUS Vendor trash |only !Hunter
    note-ptBR Venda o lixo |only !Hunter
    vendor |only Hunter
    note-enUS Buy 3 or 4 stacks of [Rough Arrows] |only Hunter
    note-ptBR Compre 3 ou 4 pilhas de [Rough Arrows] |only Hunter
step
    goto 1438 @871.24,10417.65
    note-enUS Talk to Gilshalan Windwalker
    note-ptBR Fale com Gilshalan Windwalker
    turnin 916
    accept 917
step
    goto 1438 @1034.89,10711.58
    note-enUS Equip the [Thistlewood Dagger] |only Hunter Rogue
    note-ptBR Equipe a [Thistlewood Dagger] |only Hunter Rogue
    use 5392 |only Hunter Rogue |opt
    note-enUS Kill Thistle Boars on the way to Iverron
    note-ptBR Mate Thistle Boars a caminho de Iverron
    objective 457/2 |opt
    note-enUS Talk to Iverron
    note-ptBR Fale com Iverron
    turnin 3522
step
    path seq 1438 @926.08,10773.42
    goto 1438 @912.33,10935.3
    note-enUS Enter the Shadowthread Cave
    note-ptBR Entre na Shadowthread Cave
    note-enUS Kill Githyiss the Vile loot it for it's [Fang]
    note-ptBR Mate Githyiss the Vile e saqueie-a para obter a [Fang]
    note-enUS Loot a Webwood Egg on the ground at the back of the Cave
    note-ptBR Saqueie um Webwood Egg no chão, no fundo da caverna
    collect 277190 1
    objective 917/1
step
    goto 1438 @871.24,10417.65
    note-enUS Die and respawn at the Spirit Healer
    note-ptBR Morra e renasça no Spirit Healer
    note-enUS Use the [Fang of Githyiss] to accept the quest
    note-ptBR Use o [Fang of Githyiss] para aceitar a missão
    note-enUS Talk to Gilshalan Windwalker
    note-ptBR Fale com Gilshalan Windwalker
    accept 97236
    turnin 97236
    turnin 917
    accept 920
    use 277190
step
    path seq 1438 @871.6,10440.83
    goto 1438 @807.34,10492.48
    note-enUS Ascend the Aldrassil Tree
    note-ptBR Suba a Aldrassil Tree
    note-enUS Talk to Tenaron Stormgrip
    note-ptBR Fale com Tenaron Stormgrip
    turnin 920
    accept 921
step
    goto 1438 @764.68,10711.31
    use 5185
    note-enUS Use the [Crystal Phial] at the Moonwell
    note-ptBR Use o [Crystal Phial] no Moonwell
    objective 921/1
step
    only Hunter Druid Warrior Priest
    goto 1438 @769.77,10673.98
    note-enUS Kill Mangy Nightsabers and Thistle Boars
    note-ptBR Mate Mangy Nightsabers e Thistle Boars
    objective 457/1
    objective 457/2
step
    only Hunter Druid
    goto 1438 @826.03,10328.97
    note-enUS Die and respawn at the Spirit Healer
    note-ptBR Morra e renasça no Spirit Healer
    note-enUS Talk to Conservator Ilthalaine
    note-ptBR Fale com Conservator Ilthalaine
    turnin 457 |reward 2
step
    path seq 1438 @871.6,10440.83
    goto 1438 @807.34,10492.48
    note-enUS Ascend the Aldrassil Tree
    note-ptBR Suba a Aldrassil Tree
    note-enUS Talk to Tenaron Stormgrip
    note-ptBR Fale com Tenaron Stormgrip
    turnin 921
    accept 928
step
    goto 1438 @805.5,10491.8
    note-enUS Click on the [Book] to the left of Tenaron
    note-ptBR Clique no [Book] à esquerda de Tenaron
    accept 96630
step
    only Priest
    goto 1438 @787.28,10438.12 |only Priest
    goto 1438 @801.64,10458.75
    note-enUS Talk to Janna Brightmoon up stairs |only Priest
    note-ptBR Fale com Janna Brightmoon no andar de cima |only Priest
    vendor |only Priest |opt
    note-enUS Vendor trash |only Priest
    note-ptBR Venda o lixo |only Priest
    note-enUS Talk to Shanda up stairs
    note-ptBR Fale com Shanda no andar de cima
    turnin 3119
    accept 97979
    accept 5622
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Priest
    note-enUS Cast [Shadowmeld] and [Elune's Light]
    note-ptBR Lance [Shadowmeld] e [Elune's Light]
    objective 97979/1
    objective 97979/2
step
    only Priest
    goto 1438 @800.5,10454.9
    note-enUS Talk to Shanda
    turnin 97979
step
    ifcomplete 457
    goto 1438 @826.03,10328.97
    note-enUS Talk to Conservator Ilthalaine
    note-ptBR Fale com Conservator Ilthalaine
    turnin 457 |reward 2
step
    goto 1438 @700.57,10214.33
    note-enUS Talk to Porthannius
    note-ptBR Fale com Porthannius
    accept 2159
]==])

register([==[
#format 1
#id forever.a.6-11-teldrassil
#name 6-11 Teldrassil
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#levels 6-11
#zone 1438
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup Speedrun 1-20
#subgroup-ptBR Rota rápida 1-20
#recommend Nightelf
#next forever.a.14-16-darkshore

step
    goto 1438 @734.13,9920.57
    note-enUS Talk to Zenn Foulhoof
    note-ptBR Fale com Zenn Foulhoof
    accept 488
step
    goto 1438 @879.7,9907.6
    note-enUS Kill Nightsabers. Loot them for their Fangs
    note-ptBR Mate Nightsabers. Saqueie-os para obter as presas
    note-enUS Kill Strigid Owls. Loot them for their Feathers
    note-ptBR Mate Strigid Owls. Saqueie-as para obter as penas
    note-enUS Kill Webwood Lurkers. Loot them for their Silk
    note-ptBR Mate Webwood Lurkers. Saqueie-os para obter a seda
    note-enUS Be careful as the Nightsabers and Strigid Owls move very fast! Strigid Owls will also social aggro other Owls if you run past them while in combat with one
    note-ptBR Cuidado, os Nightsabers e Strigid Owls se movem muito rápido! As Strigid Owls também chamam outras corujas se você passar por elas em combate com uma
    objective 488/1 |opt
    objective 488/2 |opt
    objective 488/3 |opt
    note-enUS Kill Webwood Lurkers and Webwood Venomfangs. Loot them for their Small Spider Legs
    note-ptBR Mate Webwood Lurkers e Webwood Venomfangs. Saqueie-os para obter Small Spider Legs
    note-enUS You need these for a later quest
    note-ptBR Você vai precisar destes para uma missão futura
    collect 5465 7 |quest 4161 |q 4161/1 |opt
    note-enUS Talk to Lyreena Duskblade
    note-ptBR Fale com Lyreena Duskblade
    turnin 96630
    accept 96606
step
    goto 1438 @882.3,9909.1
    note-enUS Use the /sit emote next to the campfire and sit still for 1 minute to complete the objective
    note-ptBR Use o emote /sit ao lado da fogueira e fique sentado por 1 minuto para completar o objetivo
    objective 96606/2
step
    goto 1438 @879.7,9907.6
    note-enUS Talk to Lyreena Duskblade
    note-ptBR Fale com Lyreena Duskblade
    turnin 96606
    accept 96634
step
    goto 1438 @959.18,9872.38
    note-enUS Talk to Syral Bladeleaf
    note-ptBR Fale com Syral Bladeleaf
    note-enUS Make sure you have 1 empty bagspace slot before accepting this quest
    note-ptBR Tenha 1 espaço vazio na bolsa antes de aceitar esta missão
    accept 997
step
    goto 1438 @965.59,9887.58
    note-enUS Talk to Athridas Bearmantle
    note-ptBR Fale com Athridas Bearmantle
    accept 475
step
    only Priest
    goto 1438 @985.45,9905.43
    note-enUS Talk to Laurna Morninglight
    note-ptBR Fale com Laurna Morninglight
    turnin 5622
    accept 5621
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Rogue
    goto 1438 @988.3,9891.89
    note-enUS Talk to Aldia up stairs
    note-ptBR Fale com Aldia no andar de cima
    accept 87288
    vendor
    note-enUS Buy and equip a [Balanced Throwing Dagger]
    note-ptBR Compre e equipe um [Balanced Throwing Dagger]
step
    only !Rogue
    goto 1438 @988.3,9891.89
    note-enUS Talk to Aldia up stairs
    note-ptBR Fale com Aldia no andar de cima
    accept 87288
step
    goto 1438 @984.94,9898.58
    note-enUS Talk to Tallonkai Swiftroot atop the Tree
    note-ptBR Fale com Tallonkai Swiftroot no topo da árvore
    accept 932
    accept 2438
step
    only Hunter
    note-enUS Talk to Jeena Featherbow
    note-ptBR Fale com Jeena Featherbow
    note-enUS Buy and equip a [Hornwood Recurve Bow]
    note-ptBR Compre e equipe um [Hornwood Recurve Bow]
    note-enUS Buy [Rough Arrows] until your Quiver is full
    note-ptBR Compre [Rough Arrows] até encher sua Aljava
    collect 2506 1
step
    only Hunter
    note-enUS Talk to Jeena Featherbow
    note-ptBR Fale com Jeena Featherbow
    vendor
    note-enUS Buy [Rough Arrows] until your Quiver is full
    note-ptBR Compre [Rough Arrows] até encher sua Aljava
step
    goto 1438 @963,9811.6
    note-enUS Equip the [Hornwood Recurve Bow] |only Hunter
    note-ptBR Equipe o [Hornwood Recurve Bow] |only Hunter
    use 2506 |only Hunter |opt
    note-enUS Talk to Sentinel Kyra Starsong
    note-ptBR Fale com Sentinel Kyra Starsong
    accept 99046
step
    only Warrior
    goto 1438 @947.57,9812.38
    note-enUS Talk to Shalomon
    note-ptBR Fale com Shalomon
    note-enUS Buy and equip a [Gladius] if you can afford it (5s 36c), if not skip this step
    note-ptBR Compre e equipe um [Gladius] se tiver dinheiro (5s 36c), senão pule esta etapa
    collect 2488 1
step
    only Warrior
    goto 1438 @952,9822.22
    note-enUS Equip the [Gladius] |only Warrior
    note-ptBR Equipe o [Gladius] |only Warrior
    use 2488 |only Warrior |opt
    note-enUS Talk to Kyra Windblade
    note-ptBR Fale com Kyra Windblade
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Rogue
    goto 1438 @943.85,9790.28
    note-enUS Talk to Jannok Breezesong
    note-ptBR Fale com Jannok Breezesong
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Rogue
    goto 1438 @947.57,9812.38
    note-enUS Talk to Shalomon
    note-ptBR Fale com Shalomon
    note-enUS Buy and equip a [Stiletto] if you can afford it (4s 1c), if not skip this step
    note-ptBR Compre e equipe um [Stiletto] se tiver dinheiro (4s 1c), senão pule esta etapa
    collect 2494 1
step
    only Druid
    goto 1438 @947.57,9812.38
    note-enUS Equip the [Stiletto] |only Rogue
    note-ptBR Equipe o [Stiletto] |only Rogue
    use 2494 |only Rogue |opt
    note-enUS Talk to Shalomon
    note-ptBR Fale com Shalomon
    note-enUS Buy and equip a [Walking Stick] if you can afford it (4s 79c), if not skip this step
    note-ptBR Compre e equipe um [Walking Stick] se tiver dinheiro (4s 79c), senão pule esta etapa
    collect 2495 1
step
    goto 1438 @982.65,9802.19
    note-enUS Equip the [Walking Stick] |only Druid
    note-ptBR Equipe o [Walking Stick] |only Druid
    use 2495 |only Druid |opt
    note-enUS Talk to Innkeeper Keldamyr
    note-ptBR Fale com Innkeeper Keldamyr
    turnin 2159 |reward 2 |only Hunter
    turnin 2159 |only !Hunter
    vendor |only Priest
    note-enUS Buy 10 Ice Cold Milk or as much as you can afford |only Priest
    note-ptBR Compre 10 Ice Cold Milk ou o máximo que puder pagar |only Priest
    home
    note-enUS Set your Hearthstone to Dolanaar
    note-ptBR Defina sua pedra de regresso em Dolanaar
step
    only Hunter
    goto 1438 @928.83,9812.34
    note-enUS Talk to Dazalar
    note-ptBR Fale com Dazalar
step
    only Druid
    goto 1438 @966.05,9741.85
    note-enUS Talk to Kal
    note-ptBR Fale com Kal
    note-enUS Skip training [Wrath] if you can't afford it. Prioritize [Thorns]
    note-ptBR Não treine [Wrath] se não tiver dinheiro. Priorize [Thorns]
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    goto 1438 @956.02,9736.83
    note-enUS Talk to Corithras Moonrage
    note-ptBR Fale com Corithras Moonrage
    turnin 928
    accept 929
step
    goto 1438 @906.17,9751.02
    note-enUS Talk to Zarrin
    note-ptBR Fale com Zarrin
    train 2550
    note-enUS Train Cooking
    note-ptBR Treine Cooking
    accept 4161
    turnin 96634
step
    note-enUS Talk to Nyoma
    note-ptBR Fale com Nyoma
    note-enUS Buy 5 [Mild Spices] from her, use [Cooking] to cook [Herb Baked Eggs] until you run out of [Small Eggs]
    note-ptBR Compre 5 [Mild Spices] dela e use [Cooking] para preparar [Herb Baked Eggs] até acabarem seus [Small Eggs]
    collect 2678 5
step
    only Priest
    goto 1438 @900.01,9675.85
    note-enUS Eat the [Herb Baked Eggs] for 10 seconds to receive a 5% mob kill experience buff for 15 minutes.
    note-ptBR Coma os [Herb Baked Eggs] por 10 segundos para receber um bônus de 5% de experiência por mob abatido durante 15 minutos.
    note-enUS Remember to reapply this food buff when it expires
    note-ptBR Lembre-se de reaplicar este bônus de comida quando acabar
    note-enUS Kill Nightsabers. Loot them for their Fangs and Pelts
    note-ptBR Mate Nightsabers. Saqueie-os para obter presas e peles
    note-enUS Kill Strigid Owls. Loot them for their Feathers
    note-ptBR Mate Strigid Owls. Saqueie-as para obter as penas
    note-enUS Kill Webwood Lurkers. Loot them for their Silk
    note-ptBR Mate Webwood Lurkers. Saqueie-os para obter a seda
    note-enUS Be careful as the Nightsabers and Strigid Owls move very fast! Strigid Owls will also social aggro other Owls if you run past them while in combat with one
    note-ptBR Cuidado, os Nightsabers e Strigid Owls se movem muito rápido! As Strigid Owls também chamam outras corujas se você passar por elas em combate com uma
    objective 488/1 |opt
    objective 87288/1 |opt
    objective 488/2 |opt
    objective 488/3 |opt
    note-enUS Kill Webwood Lurkers and Webwood Venomfangs. Loot them for their Small Spider Legs
    note-ptBR Mate Webwood Lurkers e Webwood Venomfangs. Saqueie-os para obter Small Spider Legs
    note-enUS You need these for a later quest
    note-ptBR Você vai precisar destes para uma missão futura
    collect 5465 7 |quest 4161 |q 4161/1 |opt
    note-enUS Collect 5 [Earthroot] via [Herbalism] and rarely Battered Chests for a future class quest |only Druid
    note-ptBR Colete 5 [Earthroot] com [Herbalism] e, raramente, em Battered Chests para uma futura missão de classe |only Druid
    collect 2449 5 |quest 6123 |q 6123/1 |only Druid |opt
    note-enUS Target Sentinel Shaya
    note-ptBR Selecione Sentinel Shaya como alvo
    note-enUS Cast [Lesser Heal (Rank 2)] and [Power Word: Fortitude] on Sentinel Shaya
    note-ptBR Lance [Lesser Heal (Rank 2)] e [Power Word: Fortitude] em Sentinel Shaya
    objective 5621/1
step
    note-enUS Talk to Denalan
    note-ptBR Fale com Denalan
    turnin 997
    accept 918
    accept 919
step
    path seq 1438 @676.59,9493.3 @733.11,9439.67 @808.46,9370.1 @877.2,9458.34 @997.36,9549.97 @867.02,9630.74
    goto 1438 @697.97,9581.87
    note-enUS Kill Timberlings. Loot them for their Seeds
    note-ptBR Mate Timberlings. Saqueie-os para obter as sementes
    note-enUS Loot the Timberling Sprouts on the ground
    note-ptBR Saqueie os Timberling Sprouts no chão
    objective 918/1
    objective 919/1
step
    note-enUS Talk to Denalan
    note-ptBR Fale com Denalan
    turnin 918
    accept 922
    turnin 919
step
    goto 1438 @351.23,9806.54 120
    note-enUS Kill Nightsabers. Loot them for their Fangs and Pelts
    note-ptBR Mate Nightsabers. Saqueie-os para obter presas e peles
    note-enUS Kill Strigid Owls. Loot them for their Feathers
    note-ptBR Mate Strigid Owls. Saqueie-as para obter as penas
    note-enUS Kill Webwood Lurkers. Loot them for their Silk
    note-ptBR Mate Webwood Lurkers. Saqueie-os para obter a seda
    note-enUS Be careful as the Nightsabers and Strigid Owls move very fast! Strigid Owls will also social aggro other Owls if you run past them while in combat with one
    note-ptBR Cuidado, os Nightsabers e Strigid Owls se movem muito rápido! As Strigid Owls também chamam outras corujas se você passar por elas em combate com uma
    objective 488/1 |opt
    objective 87288/1 |opt
    objective 488/2 |opt
    objective 488/3 |opt
    note-enUS Kill Webwood Lurkers and Webwood Venomfangs. Loot them for their Small Spider Legs
    note-ptBR Mate Webwood Lurkers e Webwood Venomfangs. Saqueie-os para obter Small Spider Legs
    note-enUS You need these for a later quest
    note-ptBR Você vai precisar destes para uma missão futura
    collect 5465 7 |quest 4161 |q 4161/1 |opt
    note-enUS Travel to Starbreeze Village
    note-ptBR Vá até Starbreeze Village
    note-enUS Open Tallonkai's Dresser. Loot it for the Emerald Dreamcatcher
    note-ptBR Abra o Tallonkai's Dresser. Saqueie-o para obter o Emerald Dreamcatcher
    note-enUS Try to finish looting the Owl Feathers on the owls next to the furlbogs
    note-ptBR Tente terminar de saquear as Owl Feathers das corujas perto dos furbolgs
    objective 488/2
    objective 2438/1
step
    goto 1438 @440.85,9845.23
    note-enUS Talk to Gaerolas Talvethren up stairs
    note-ptBR Fale com Gaerolas Talvethren no andar de cima
    turnin 475
    accept 476
step
    goto 1438 @587.49,9859.48
    note-enUS Use the [Jade Phial] at the Starbreeze Village Moonwell
    note-ptBR Use o [Jade Phial] no Moonwell de Starbreeze Village
    objective 929/1
step
    path seq 1438 @448.99,10051.91 @660.3,9758.69 @803.37,9764.12 @448.99,10051.91 @586.98,9651.78 @803.37,9764.12 @705.61,9976.23 @750.93,9807.9
    goto 1438 @850.22,9919.89
    note-enUS Kill Webwood Lurkers and Webwood Venomfangs. Loot them for their Small Spider Legs
    note-ptBR Mate Webwood Lurkers e Webwood Venomfangs. Saqueie-os para obter Small Spider Legs
    note-enUS You need these for a later quest
    note-ptBR Você vai precisar destes para uma missão futura
    collect 5465 7 |quest 4161 |q 4161/1 |opt
    note-enUS Kill Nightsabers. Loot them for their Fangs and Pelts
    note-ptBR Mate Nightsabers. Saqueie-os para obter presas e peles
    note-enUS Kill Strigid Owls. Loot them for their Feathers
    note-ptBR Mate Strigid Owls. Saqueie-as para obter as penas
    note-enUS Kill Webwood Lurkers. Loot them for their Silk
    note-ptBR Mate Webwood Lurkers. Saqueie-os para obter a seda
    note-enUS Save any [Small Eggs] and [Small Spider Legs] to use for leveling [Cooking] later
    note-ptBR Guarde os [Small Eggs] e [Small Spider Legs] para subir [Cooking] mais tarde
    note-enUS ===========================================
    note-ptBR ===========================================
    note-enUS Skip this step if there aren't any mobs nearby to complete the objective!
    note-ptBR Pule este passo se não houver mobs por perto para completar o objetivo!
    objective 87288/1
    objective 488/1
    objective 488/2
    objective 488/3
step
    ifcomplete 488
    goto 1438 @734.13,9920.57
    note-enUS Talk to Zenn Foulhoof
    note-ptBR Fale com Zenn Foulhoof
    turnin 488
step
    ifturnedin 488
    goto 1438 @959.28,9872.28
    note-enUS Kill Nightsabers. Loot them for their Fangs and Pelts
    note-ptBR Mate Nightsabers. Saqueie-os para obter presas e peles
    objective 87288/1 |opt
    note-enUS Talk to Syral Bladeleaf
    note-ptBR Fale com Syral Bladeleaf
    accept 489
step
    goto 1438 @965.59,9887.58
    note-enUS Talk to Athridas Bearmantle
    note-ptBR Fale com Athridas Bearmantle
    turnin 476
step
    only Priest
    goto 1438 @985.45,9905.43
    note-enUS Talk to Laurna Morninglight
    note-ptBR Fale com Laurna Morninglight
    turnin 5621
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    ifcomplete 87288
    goto 1438 @988.3,9891.89
    note-enUS Talk to Aldia up stairs
    note-ptBR Fale com Aldia no andar de cima
    turnin 87288
step
    goto 1438 @984.94,9898.58
    note-enUS Talk to Tallonkai Swiftroot atop the Tree
    note-ptBR Fale com Tallonkai Swiftroot no topo da árvore
    turnin 2438
    accept 2459
step
    only Hunter
    note-enUS Talk to Jeena Featherbow
    note-ptBR Fale com Jeena Featherbow
    note-enUS Buy and equip a [Hornwood Recurve Bow] if you can afford it (2s 85c), if not skip this step
    note-ptBR Compre e equipe um [Hornwood Recurve Bow] se tiver dinheiro (2s 85c), senão pule esta etapa
    collect 2506 1
step
    only Hunter
    note-enUS Talk to Jeena Featherbow
    note-ptBR Fale com Jeena Featherbow
    vendor
    note-enUS Buy up to 800 [Rough Arrows]
    note-ptBR Compre até 800 [Rough Arrows]
step
    only Hunter
    goto 1438 @928.83,9812.34
    note-enUS Equip the [Hornwood Recurve Bow] |only Hunter
    note-ptBR Equipe o [Hornwood Recurve Bow] |only Hunter
    use 2506 |only Hunter |opt
    note-enUS Talk to Dazalar
    note-ptBR Fale com Dazalar
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Rogue
    goto 1438 @943.85,9790.28
    note-enUS Talk to Jannok Breezesong
    note-ptBR Fale com Jannok Breezesong
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warrior
    goto 1438 @947.57,9812.38
    note-enUS Talk to Shalomon
    note-ptBR Fale com Shalomon
    note-enUS Buy and equip a [Gladius] if you can afford it (5s 36c), if not skip this step
    note-ptBR Compre e equipe um [Gladius] se tiver dinheiro (5s 36c), senão pule esta etapa
    collect 2488 1
step
    only Warrior
    goto 1438 @952,9822.22
    note-enUS Equip the [Gladius] |only Warrior
    note-ptBR Equipe o [Gladius] |only Warrior
    use 2488 |only Warrior |opt
    note-enUS Talk to Kyra Windblade
    note-ptBR Fale com Kyra Windblade
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Rogue
    goto 1438 @947.57,9812.38
    note-enUS Talk to Shalomon
    note-ptBR Fale com Shalomon
    note-enUS Buy and equip a [Stiletto] if you can afford it (4s 1c), if not skip this step
    note-ptBR Compre e equipe um [Stiletto] se tiver dinheiro (4s 1c), senão pule esta etapa
    collect 2494 1
step
    only Druid
    goto 1438 @947.57,9812.38
    note-enUS Equip the [Stiletto] |only Rogue
    note-ptBR Equipe o [Stiletto] |only Rogue
    use 2494 |only Rogue |opt
    note-enUS Talk to Shalomon
    note-ptBR Fale com Shalomon
    note-enUS Buy and equip a [Walking Stick] if you can afford it (5s 4c), if not skip this step
    note-ptBR Compre e equipe um [Walking Stick] se tiver dinheiro (5s 4c), senão pule esta etapa
    collect 2495 1
step
    only Druid
    goto 1438 @956.02,9736.83
    note-enUS Equip the [Walking Stick] |only Druid
    note-ptBR Equipe o [Walking Stick] |only Druid
    use 2495 |only Druid |opt
    note-enUS Talk to Corithras Moonrage
    note-ptBR Fale com Corithras Moonrage
    turnin 929
    accept 933
step
    only Druid
    goto 1438 @966.05,9741.85
    note-enUS Talk to Kal
    note-ptBR Fale com Kal
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Druid
    path seq 1438 @1030.46,10037.99 |only Druid
    goto 1438 @1043.7,10093.99 15 |only Druid
    goto 1438 @1207.65,10114.01
    note-enUS Kill Nightsabers. Loot them for their Fangs and Pelts |only Druid
    note-ptBR Mate Nightsabers. Saqueie-os para obter presas e peles |only Druid
    objective 87288/1 |only Druid |opt
    note-enUS Travel to Fel Rock |only Druid
    note-ptBR Vá até Fel Rock |only Druid
    note-enUS Kill Lord Melenas. Loot him for his Head
    note-ptBR Mate Lord Melenas. Saqueie-o para obter a cabeça dele
    note-enUS Lord Melenas may be located in many different spawn locations throughout Fel Rock
    note-ptBR Lord Melenas pode estar em vários locais de spawn diferentes por Fel Rock
    objective 932/1
step
    ifonquest 489
    path closest 1438 @854.4,9952.5 @822.2,9948.5 @809.8,9926.4
    note-enUS Eat the [Herb Baked Eggs] for 10 seconds to receive a 5% mob kill experience buff for 15 minutes.
    note-ptBR Coma os [Herb Baked Eggs] por 10 segundos para receber um bônus de 5% de experiência por mob abatido durante 15 minutos.
    note-enUS Remember to reapply this food buff when it expires
    note-ptBR Lembre-se de reaplicar este bônus de comida quando acabar
    note-enUS Kill Nightsabers. Loot them for their Fangs and Pelts
    note-ptBR Mate Nightsabers. Saqueie-os para obter presas e peles
    note-enUS Kill Strigid Owls. Loot them for their Feathers
    note-ptBR Mate Strigid Owls. Saqueie-as para obter as penas
    note-enUS Kill Webwood Lurkers. Loot them for their Silk and Legs
    note-ptBR Mate Webwood Lurkers. Saqueie-os para obter seda e patas
    objective 488/1 |opt
    objective 87288/1 |opt
    objective 488/2 |opt
    objective 488/3 |opt
    collect 5465 7 |quest 4161 |q 4161/1 |opt
    note-enUS Kill Nightsabers. Loot them for their Fangs and Pelts
    note-ptBR Mate Nightsabers. Saqueie-os para obter presas e peles
    objective 87288/1 |opt
    note-enUS Kill Webwood Lurkers and Webwood Venomfangs. Loot them for their Small Spider Legs
    note-ptBR Mate Webwood Lurkers e Webwood Venomfangs. Saqueie-os para obter Small Spider Legs
    note-enUS You need these for a later quest
    note-ptBR Você vai precisar destes para uma missão futura
    collect 5465 7 |quest 4161 |q 4161/1 |opt
    note-enUS Next to a small tree
    note-ptBR Ao lado de uma árvore pequena
    note-enUS On the small hill
    note-ptBR Na colina pequena
    note-enUS Next to the massive tree
    note-ptBR Ao lado da árvore enorme
    note-enUS Loot the 3 Fel Cones from the locations marked on your map.
    note-ptBR Saqueie os 3 Fel Cones nos locais marcados no seu mapa.
    note-enUS Skip this step if any of them is not there and you're unable to complete the objective
    note-ptBR Pule este passo se algum deles não estiver lá e você não conseguir completar o objetivo
    objective 489/1
step
    ifonquest 489
    goto 1438 @739.22,9917.17
    note-enUS Talk to Zenn Foulhoof
    note-ptBR Fale com Zenn Foulhoof
    turnin 489
step
    goto 1438 @282.49,10018.65
    note-enUS Loot the Fel Cones on the ground
    note-ptBR Saqueie os Fel Cones no chão
    note-enUS They are usually located next to tree trunks
    note-ptBR Eles geralmente ficam ao lado de troncos de árvores
    objective 489/1 |opt
    note-enUS Kill Gnarlpine Mystics
    note-ptBR Mate Gnarlpine Mystics
    note-enUS If there aren't many Gnarlpine Mystics you may have to kill Gnarlpine Warriors to make them spawn
    note-ptBR Se não houver muitos Gnarlpine Mystics, talvez você precise matar Gnarlpine Warriors para fazê-los surgir
    objective 2459/1 |opt
    note-enUS Kill Ferocitas the Dream Eater. Loot him for the [Gnarlpine Necklace]. Be careful as he can [Thrash] hitting you up to three times at once
    note-ptBR Mate Ferocitas the Dream Eater. Saqueie-o para obter o [Gnarlpine Necklace]. Cuidado, ele pode usar [Thrash] e acertar você até três vezes de uma vez
    use 8049
    note-enUS Use the [Gnarlpine Necklace] to loot Tallonkai's Jewel
    note-ptBR Use o [Gnarlpine Necklace] para saquear Tallonkai's Jewel
    objective 2459/2
step
    path seq 1438 @332.9,10064.46
    goto 1438 @282.49,10018.65
    note-enUS Kill Gnarlpine Mystics
    note-ptBR Mate Gnarlpine Mystics
    note-enUS If there aren't many Gnarlpine Mystics you may have to kill Gnarlpine Warriors to make them spawn
    note-ptBR Se não houver muitos Gnarlpine Mystics, talvez você precise matar Gnarlpine Warriors para fazê-los surgir
    objective 2459/1
step
    note-enUS Die and respawn at the Spirit Healer
    note-ptBR Morra e renasça no Spirit Healer
step
    goto 1438 @953.07,9788.21
    note-enUS Talk to Brannol Eaglemoon
    note-ptBR Fale com Brannol Eaglemoon
    vendor
    note-enUS Vendor and repair if necessary
    note-ptBR Venda e repare se necessário
step
    goto 1438 @956.02,9736.83
    note-enUS Kill Nightsabers. Loot them for their Fangs and Pelts
    note-ptBR Mate Nightsabers. Saqueie-os para obter presas e peles
    objective 87288/1 |opt
    note-enUS Talk to Corithras Moonrage
    note-ptBR Fale com Corithras Moonrage
    turnin 929
step
    goto 1438 @956.02,9736.83
    note-enUS Talk to Corithras Moonrage
    note-ptBR Fale com Corithras Moonrage
    accept 933
step
    goto 1438 @1655.21,9555.06 50
    note-enUS Kill Nightsabers. Loot them for their Fangs
    note-ptBR Mate Nightsabers. Saqueie-os para obter as presas
    note-enUS Kill Strigid Owls. Loot them for their Feathers
    note-ptBR Mate Strigid Owls. Saqueie-as para obter as penas
    note-enUS Kill Webwood Lurkers. Loot them for their Silk
    note-ptBR Mate Webwood Lurkers. Saqueie-os para obter a seda
    note-enUS Be careful as the Nightsabers and Strigid Owls move very fast! Strigid Owls will also social aggro other Owls if you run past them while in combat with one
    note-ptBR Cuidado, os Nightsabers e Strigid Owls se movem muito rápido! As Strigid Owls também chamam outras corujas se você passar por elas em combate com uma
    objective 488/1 |opt
    objective 488/2 |opt
    objective 488/3 |opt
    note-enUS Kill Webwood Lurkers and Webwood Venomfangs. Loot them for their Small Spider Legs
    note-ptBR Mate Webwood Lurkers e Webwood Venomfangs. Saqueie-os para obter Small Spider Legs
    note-enUS You need these for a later quest
    note-ptBR Você vai precisar destes para uma missão futura
    collect 5465 7 |quest 4161 |q 4161/1 |opt
    note-enUS Travel to the Pools of Arlithrien
    note-ptBR Vá até Pools of Arlithrien
    use 5621
    note-enUS Use the [Tourmaline Phial] at the Pools of Arlithrien moonwell
    note-ptBR Use o [Tourmaline Phial] no moonwell de Pools of Arlithrien
    objective 933/1
step
    path seq 1438 @1539.12,9437.98
    goto 1438 @1529.44,9325.64
    note-enUS Kill Webwood Lurkers and Webwood Venomfangs. Loot them for their Small Spider Legs
    note-ptBR Mate Webwood Lurkers e Webwood Venomfangs. Saqueie-os para obter Small Spider Legs
    collect 5465 7 |quest 4161 |q 4161/1
step
    goto 1438 @1645.02,9245.89 50
    note-enUS Travel to southwestern Teldrassil
    note-ptBR Vá até o sudoeste de Teldrassil
    note-enUS Click the Strange Fruited Plant
    note-ptBR Clique na Strange Fruited Plant
    accept 930
step
    path seq 1438 @1599.71,9509.25
    goto 1438 @956.02,9736.83
    note-enUS Die and respawn at the Dolanaar graveyard
    note-ptBR Morra e renasça no cemitério de Dolanaar
    note-enUS Talk to Corithras Moonrage
    note-ptBR Fale com Corithras Moonrage
    turnin 933
    accept 7383
step
    only Druid
    goto 1438 @966.05,9741.85
    note-enUS Talk to Kal
    note-ptBR Fale com Kal
    note-enUS Skip this step if you already trained level 8 spells
    note-ptBR Pule este passo se já treinou os feitiços de nível 8
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    goto 1438 @906.17,9751.02
    note-enUS Talk to Zarrin
    note-ptBR Fale com Zarrin
    train 2550
    note-enUS Train Cooking
    note-ptBR Treine Cooking
    turnin 96634
    accept 4161
    turnin 4161
step
    goto 1438 57.2,61.2
    note-enUS Talk to Nyoma
    note-ptBR Fale com Nyoma
    note-enUS Buy 5 [Mild Spices] from her, use [Cooking] to cook [Herb Baked Eggs] until you run out of [Small Eggs]
    note-ptBR Compre 5 [Mild Spices] dela e use [Cooking] para preparar [Herb Baked Eggs] até acabarem seus [Small Eggs]
    collect 2678 5
step
    only Hunter
    goto 1438 @928.83,9812.34
    note-enUS Eat the [Herb Baked Eggs] for 10 seconds to receive a 5% mob kill experience buff for 15 minutes.
    note-ptBR Coma os [Herb Baked Eggs] por 10 segundos para receber um bônus de 5% de experiência por mob abatido durante 15 minutos.
    note-enUS Remember to reapply this food buff when it expires
    note-ptBR Lembre-se de reaplicar este bônus de comida quando acabar
    note-enUS Talk to Dazalar
    note-ptBR Fale com Dazalar
    note-enUS Skip this step if you already trained level 8 spells
    note-ptBR Pule este passo se já treinou os feitiços de nível 8
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Rogue
    goto 1438 @943.85,9790.28
    note-enUS Talk to Jannok Breezesong
    note-ptBR Fale com Jannok Breezesong
    note-enUS Skip this step if you already trained level 8 spells
    note-ptBR Pule este passo se já treinou os feitiços de nível 8
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warrior
    goto 1438 @952,9822.22
    note-enUS Talk to Kyra Windblade
    note-ptBR Fale com Kyra Windblade
    note-enUS Skip this step if you already trained level 8 spells
    note-ptBR Pule este passo se já treinou os feitiços de nível 8
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    path seq 1438 @448.99,10051.91 @660.3,9758.69 @803.37,9764.12 @448.99,10051.91 @586.98,9651.78 @803.37,9764.12 @705.61,9976.23 @750.93,9807.9
    goto 1438 @850.22,9919.89
    note-enUS Kill Nightsabers. Loot them for their Fangs and Pelts
    note-ptBR Mate Nightsabers. Saqueie-os para obter presas e peles
    note-enUS Kill Strigid Owls. Loot them for their Feathers
    note-ptBR Mate Strigid Owls. Saqueie-as para obter as penas
    note-enUS Kill Webwood Lurkers. Loot them for their Silk
    note-ptBR Mate Webwood Lurkers. Saqueie-os para obter a seda
    note-enUS Save any [Small Eggs] and [Small Spider Legs] to use for leveling [Cooking] later
    note-ptBR Guarde os [Small Eggs] e [Small Spider Legs] para subir [Cooking] mais tarde
    note-enUS ====================================================================================
    note-ptBR ====================================================================================
    note-enUS Skip this step if there aren't any mobs nearby to complete the objective!
    note-ptBR Pule este passo se não houver mobs por perto para completar o objetivo!
    objective 87288/1
    objective 488/1
    objective 488/2
    objective 488/3
step
    ifcomplete 488
    goto 1438 @734.13,9920.57
    note-enUS Talk to Zenn Foulhoof
    note-ptBR Fale com Zenn Foulhoof
    turnin 488
step
    ifturnedin 488
    goto 1438 @959.28,9872.28
    note-enUS Talk to Syral Bladeleaf
    note-ptBR Fale com Syral Bladeleaf
    accept 489
step
    only Warrior Rogue
    goto 1438 @999.4,9902.92
    note-enUS Talk to Byancie
    note-ptBR Fale com Byancie
    train 3273
    note-enUS Train [First Aid]
    note-ptBR Treine [First Aid]
step
    only Priest
    goto 1438 @985.45,9905.43
    note-enUS Talk to Laurna Morninglight
    note-ptBR Fale com Laurna Morninglight
    note-enUS Skip this step if you already trained level 8 spells
    note-ptBR Pule este passo se já treinou os feitiços de nível 8
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    path seq 1438 @1030.46,10037.99 @1043.7,10093.99
    goto 1438 @1207.65,10114.01
    note-enUS Kill Nightsabers. Loot them for their Fangs and Pelts
    note-ptBR Mate Nightsabers. Saqueie-os para obter presas e peles
    objective 87288/1 |opt
    note-enUS Travel to Fel Rock
    note-ptBR Vá até Fel Rock
    note-enUS Kill Lord Melenas. Loot him for his Head
    note-ptBR Mate Lord Melenas. Saqueie-o para obter a cabeça dele
    note-enUS You can use the [Severed Voodoo Claws] on him to severely reduce his damage!
    note-ptBR Você pode usar as [Severed Voodoo Claws] nele para reduzir muito o dano dele!
    note-enUS Lord Melenas may be located in many different spawn locations throughout Fel Rock
    note-ptBR Lord Melenas pode estar em vários locais de spawn diferentes por Fel Rock
    objective 932/1
step
    goto 1438 @1207.65,10114.01
    note-enUS Kill Lord Melenas. Loot him for his Head
    note-ptBR Mate Lord Melenas. Saqueie-o para obter a cabeça dele
    note-enUS Lord Melenas may be located in many different spawn locations throughout Fel Rock
    note-ptBR Lord Melenas pode estar em vários locais de spawn diferentes por Fel Rock
    objective 932/1
step
    ifonquest 489
    path closest 1438 @854.4,9952.5 @822.2,9948.5 @809.8,9926.4
    note-enUS Next to a small tree
    note-ptBR Ao lado de uma árvore pequena
    note-enUS On the small hill
    note-ptBR Na colina pequena
    note-enUS Next to the massive tree
    note-ptBR Ao lado da árvore enorme
    note-enUS Loot the 3 Fel Cones from the locations marked on your map.
    note-ptBR Saqueie os 3 Fel Cones nos locais marcados no seu mapa.
    objective 489/1
step
    ifonquest 489
    goto 1438 @739.22,9917.17
    note-enUS Talk to Zenn Foulhoof
    note-ptBR Fale com Zenn Foulhoof
    turnin 489
step
    only Priest Druid
    ifcomplete 87288
    goto 1438 @988.3,9891.89
    note-enUS Talk to Aldia up stairs
    note-ptBR Fale com Aldia no andar de cima
    turnin 87288
step
    only Priest Druid
    goto 1438 @984.94,9898.58
    note-enUS Talk to Tallonkai Swiftroot atop the Tree
    note-ptBR Fale com Tallonkai Swiftroot no topo da árvore
    turnin 932
    turnin 2459
step
    path seq 1438 @971.91,9852.35 @1257.55,10004.39
    goto 1438 @971.91,9852.35
    note-enUS Kill Nightsabers. Loot them for their Fangs and Pelts
    note-ptBR Mate Nightsabers. Saqueie-os para obter presas e peles
    objective 87288/1 |opt
    note-enUS Talk to Moon Priestess Amara
    note-ptBR Fale com Moon Priestess Amara
    note-enUS Moon Priestess Amara patrols the road west of Dolanaar. She can also be busy fighting a furlbog ambush in which case you will have to wait for her to finish
    note-ptBR Moon Priestess Amara patrulha a estrada a oeste de Dolanaar. Ela também pode estar ocupada lutando contra uma emboscada de furbolgs, nesse caso você terá que esperar ela terminar
    accept 487
step
    goto 1438 @1441.87,10032.56
    note-enUS Kill Gnarlpine Ambushers
    note-ptBR Mate Gnarlpine Ambushers
    objective 487/1
step
    only Druid Priest
    goto 1438 @1172.01,9917.17
    note-enUS Find Moon Priestess Amara, she patrols the road west of Dolanaar
    note-ptBR Encontre Moon Priestess Amara, que patrulha a estrada a oeste de Dolanaar
    note-enUS Talk to Moon Priestess Amara
    note-ptBR Fale com Moon Priestess Amara
    turnin 487
step
    path seq 1438 @1863.46,10665.16
    goto 1438 @1899.7,10582.9
    note-enUS Travel to The Oracle Glade
    note-ptBR Vá até The Oracle Glade
    note-enUS Talk to Sentinel Eralya Leafshadow
    note-ptBR Fale com Sentinel Eralya Leafshadow
    turnin 99046
    accept 99047
step
    goto 1438 @1863.46,10665.16
    note-enUS Talk to Sentinel Arynia Cloudsbreak
    note-ptBR Fale com Sentinel Arynia Cloudsbreak
    accept 937
step
    goto 1438 @1857.86,10676.36
    use 18152
    note-enUS Use the [Amethyst Phial] at The Oracle Glade moonwell
    note-ptBR Use o [Amethyst Phial] no moonwell de The Oracle Glade
    objective 7383/1
step
    only Druid Priest
    goto 1438 @2208.67,10758.15
    note-enUS Kill Bloodfeather Harpies. Loot them for their Belts |only Druid Priest
    note-ptBR Mate Bloodfeather Harpies. Saqueie-as para obter os cintos |only Druid Priest
    note-enUS Bloodfeather Matriarchs cast [Healing Wave] and [Lightning Bolt] which does a lot of damage. Try to burst them fast |only Druid Priest
    note-ptBR Bloodfeather Matriarchs lançam [Healing Wave] e [Lightning Bolt], que causa muito dano. Tente matá-las rápido |only Druid Priest
    note-enUS Avoid fighting them as much as you can |only Druid Priest
    note-ptBR Evite lutar com eles o máximo que puder |only Druid Priest
    objective 937/1 |only Druid Priest |opt
    note-enUS Talk to Mist
    note-ptBR Fale com Mist
    note-enUS This will start an escort quest
    note-ptBR Isto iniciará uma missão de escolta
    accept 938
step
    only Druid Priest
    goto 1438 @1863.46,10665.16
    note-enUS Talk to Sentinel Arynia Cloudsbreak
    note-ptBR Fale com Sentinel Arynia Cloudsbreak
    note-enUS Keep in mind this is a timed quest, you need to turn it in within 10 minutes of accepting
    note-ptBR Lembre-se de que é uma missão com tempo, você precisa entregá-la em até 10 minutos após aceitar
    turnin 938
step
    only Druid Priest
    path seq 1438 @2102.82,10819.27
    goto 1438 @1864.47,10663.8
    note-enUS Kill Bloodfeather Harpies. Loot them for their Belts
    note-ptBR Mate Bloodfeather Harpies. Saqueie-as para obter os cintos
    note-enUS Bloodfeather Matriarchs cast [Healing Wave] and [Lightning Bolt] which does a lot of damage. Try to burst them fast
    note-ptBR Bloodfeather Matriarchs lançam [Healing Wave] e [Lightning Bolt], que causa muito dano. Tente matá-las rápido
    note-enUS Avoid fighting them as much as you can
    note-ptBR Evite lutar com eles o máximo que puder
    objective 937/1 |opt
    note-enUS Talk to Sentinel Arynia Cloudsbreak
    note-ptBR Fale com Sentinel Arynia Cloudsbreak
    turnin 937
    accept 98392
step
    only Druid Priest
    note-enUS Kill Hatescreech. Loot her for her [Amulet]
    note-ptBR Mate Hatescreech. Saqueie-a para obter o [Amulet]
    objective 98392/1
step
    only Druid Priest
    note-enUS Kill Windmistress Gaedress. Loot her for her [Amulet]
    note-ptBR Mate Windmistress Gaedress. Saqueie-a para obter o [Amulet]
    objective 98392/2
step
    only Druid Priest
    note-enUS Kill Witchmother Arysa. Loot her for her [Amulet]
    note-ptBR Mate Witchmother Arysa. Saqueie-a para obter o [Amulet]
    note-enUS Witchmother Arysa and Bloodfeather Matriarchs cast [Healing Wave] and [Lightning Bolt] which does a lot of damage. Try to burst them fast
    note-ptBR Witchmother Arysa e as Bloodfeather Matriarchs lançam [Healing Wave] e [Lightning Bolt], que causam muito dano. Tente matá-las rápido
    note-enUS Avoid fighting the Matriarchs as much as you can
    note-ptBR Evite lutar com as Matriarchs o máximo que puder
    objective 98392/3
step
    goto 1438 @2052.36,10854.19
    note-enUS Click the Strange Fronded Plant
    note-ptBR Clique na Strange Fronded Plant
    accept 931
step
    only Druid Priest
    goto 1438 @1864.47,10663.8
    note-enUS Talk to Sentinel Arynia Cloudsbreak
    note-ptBR Fale com Sentinel Arynia Cloudsbreak
    turnin 98392
    accept 98398
step
    only Druid Priest
    goto 1438 @1932.4,10673.5
    note-enUS Go to the Oracle Tree Bark
    note-ptBR Vá até a Oracle Tree Bark
    turnin 98398
    accept 940
step
    only Druid Priest
    level 10
    note-enUS Grind until you are 900 xp off level 10 (5600/6500)
    note-ptBR Mate monstros até faltarem 900 xp para o nível 10 (5600/6500)
step
    only Hunter
    goto 1438 @2208.67,10758.15 |only Hunter
    note-enUS Talk to Mist |only Hunter
    note-ptBR Fale com Mist |only Hunter
    note-enUS This will start an escort quest |only Hunter
    note-ptBR Isto iniciará uma missão de escolta |only Hunter
    accept 938 |only Hunter |opt
    level 9
    note-enUS Grind until you are 2250 into level 9 (2250/6500)
    note-ptBR Mate monstros até ter 2250 no nível 9 (2250/6500)
    note-enUS Once you reach this xp breakpoint, skip the harpy/escort quest and go straight to Darnassus. You will have another opportunity to finish those quests later
    note-ptBR Ao atingir este ponto de XP, pule a missão da harpia/escolta e vá direto para Darnassus. Você terá outra oportunidade de concluir essas missões depois
step
    only Hunter
    goto 1438 @1863.46,10665.16 |only Hunter
    goto 1457 58.76,44.48
    note-enUS Talk to Sentinel Arynia Cloudsbreak |only Hunter
    note-ptBR Fale com Sentinel Arynia Cloudsbreak |only Hunter
    note-enUS Keep in mind this is a timed quest, you need to turn it in within 10 minutes of accepting |only Hunter
    note-ptBR Lembre-se de que é uma missão com tempo, você precisa entregá-la em até 10 minutos após aceitar |only Hunter
    turnin 938 |only Hunter |opt
    note-enUS Talk to Sentinel Arynia Cloudsbreak |only Hunter
    note-ptBR Fale com Sentinel Arynia Cloudsbreak |only Hunter
    turnin 937 |only Hunter |opt
    note-enUS Die and respawn at the Spirit Healer in Darnassus |only !Rogue
    note-ptBR Morra e renasça no Spirit Healer em Darnassus |only !Rogue
    note-enUS Talk to Ariyell Skyshadow
    note-ptBR Fale com Ariyell Skyshadow
    vendor
    note-enUS Sell your vendor trash
    note-ptBR Venda seu lixo de vendedor
step
    only Hunter
    goto 1457 57.56,46.73
    note-enUS Talk to Ilyenia Moonfire
    note-ptBR Fale com Ilyenia Moonfire
    train 227
    note-enUS Train Staves
    note-ptBR Treine Staves
    note-enUS If you have a Staff in your bags, equip it
    note-ptBR Se tiver um Cajado nas bolsas, equipe-o
step
    only Priest
    goto 1457 @2315.9,10148.2
    note-enUS Talk to Lalina Summermoon
    note-ptBR Fale com Lalina Summermoon
    train 7411
    note-enUS Train [Enchanting]. You will need it to craft a [Wand]
    note-ptBR Treine [Enchanting]. Você vai precisar dele para criar uma [Wand]
step
    only Priest
    ifskillbelow enchanting 10
    goto 1457 @2318.4,10134.5
    note-enUS Talk to Vaean
    note-ptBR Fale com Vaean
    note-enUS Buy the following materials from him:
    note-ptBR Compre os seguintes materiais dele:
    collect 6217 1
    collect 247786 9
    collect 4470 9
step
    only Priest
    ifskillbelow enchanting 10
    note-enUS Use [Enchanting] in your profession tab to create a [Runed Copper Rod]
    note-ptBR Use [Enchanting] na aba de profissões para criar um [Runed Copper Rod]
    collect 6218 1
step
    only Priest
    ifskillbelow enchanting 10
    note-enUS Use [Enchanting] in your profession tab to craft [Novice's Practice Wands] until you reach 10 enchanting
    note-ptBR Use [Enchanting] na aba de profissões para criar [Novice's Practice Wands] até chegar a 10 de encantamento
step
    only Priest
    goto 1457 @2315.9,10148.2
    note-enUS Talk to Lalina Summermoon
    note-ptBR Fale com Lalina Summermoon
    train 14293
    note-enUS Train [Lesser Magic Wand] from her
    note-ptBR Treine [Lesser Magic Wand] com ela
step
    only Priest
    note-enUS Use [Enchanting] in your profession tab to craft a [Lesser Magic Wand]
    note-ptBR Use [Enchanting] na aba de profissões para criar uma [Lesser Magic Wand]
    collect 11287 1
step
    only !Rogue
    goto 1457 @2534.29,10085.6
    note-enUS Equip the [Lesser Magic Wand] |only Priest
    note-ptBR Equipe a [Lesser Magic Wand] |only Priest
    use 11287 |only Priest |opt
    note-enUS Talk to Rellian Greenspyre
    note-ptBR Fale com Rellian Greenspyre
    turnin 922
    accept 923
step
    only Druid Nightelf Priest Nightelf
    goto 1457 @2569.91,10173
    note-enUS Talk to Arch Druid Fandral Staghelm
    note-ptBR Fale com Arch Druid Fandral Staghelm
    turnin 940
    accept 952
step
    only Druid Nightelf
    goto 1457 @2572.3,10185.8 |only Druid Nightelf
    goto 1457 @2563.92,10179.04
    note-enUS Talk to Denatharion |only Druid Nightelf
    accept 5923 |only Druid Nightelf |opt
    note-enUS Talk to Mathrengyl Bearwalker on the middle level
    note-ptBR Fale com Mathrengyl Bearwalker no nível do meio
    accept 5921
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only !Rogue
    note-enUS Talk to Sentinel Dalia Sunblade
    note-ptBR Fale com Sentinel Dalia Sunblade
    accept 98067
step
    only !Rogue
    path seq 1457 @2517.99,9584.25
    goto 1457 @2550.48,9631.88
    note-enUS Talk to Priestess A'moora upstairs
    note-ptBR Fale com Priestess A'moora no andar de cima
    accept 2518
step
    only Priest
    goto 1457 40,80
    note-enUS Talk to Priestess Alathea upstairs
    note-ptBR Fale com Priestess Alathea no andar de cima
    accept 5627
    turnin 5627
step
    only Druid Nightelf
    goto 1450 @-2678.76,8019.94
    note-enUS Cast Teleport: Moonglade |only Druid Nightelf
    note-ptBR Lance Teleport: Moonglade |only Druid Nightelf
    note-enUS It will be in your spellbook |only Druid Nightelf
    note-ptBR Estará no seu grimório |only Druid Nightelf
    note-enUS Talk to Dendrite Starblaze up stairs
    note-ptBR Fale com Dendrite Starblaze no andar de cima
    turnin 5921
    accept 5929
step
    only Druid Nightelf
    path seq 1450 @-2422.77,8079.37
    goto 1450 @-2285.42,8069.51
    note-enUS Talk to the Great Bear Spirit
    note-ptBR Fale com o Great Bear Spirit
    objective 5929/1
step
    only Druid Nightelf
    goto 1450 @-2678.76,8019.94
    note-enUS Cast Teleport: Moonglade |only Druid Nightelf
    note-ptBR Lance Teleport: Moonglade |only Druid Nightelf
    note-enUS This will make you return faster |only Druid Nightelf
    note-ptBR Isto fará você voltar mais rápido |only Druid Nightelf
    note-enUS Talk to Dendrite Starblaze up stairs
    note-ptBR Fale com Dendrite Starblaze no andar de cima
    turnin 5929
    accept 5931
step
    hearth
    note-enUS Hearth to Dolanaar
    note-ptBR Use a pedra de regresso para Dolanaar
step
    goto 1438 @997.2,9903.6
    note-enUS Talk to Byancie
    note-ptBR Fale com Byancie
    turnin 99047
    accept 99050 |only !Druid
step
    only !Druid
    goto 1438 @1000.4,9891.9
    note-enUS Talk to Narret Shadowgrove
    note-ptBR Fale com Narret Shadowgrove
    note-enUS Buy an [Empty Vial] from him
    note-ptBR Compre um [Empty Vial] dele
    collect 3371 1
step
    goto 1438 @984.94,9898.58
    note-enUS Talk to Tallonkai Swiftroot atop the Tree
    note-ptBR Fale com Tallonkai Swiftroot no topo da árvore
    turnin 932
    turnin 2459
step
    ifcomplete 87288
    goto 1438 @988.3,9891.89
    note-enUS Talk to Aldia up stairs
    note-ptBR Fale com Aldia no andar de cima
    turnin 87288
step
    path seq 1438 @448.99,10051.91 @660.3,9758.69 @803.37,9764.12 @448.99,10051.91 @586.98,9651.78 @803.37,9764.12 @705.61,9976.23 @750.93,9807.9
    goto 1438 @850.22,9919.89
    note-enUS Kill Nightsabers. Loot them for their Fangs and Pelts
    note-ptBR Mate Nightsabers. Saqueie-os para obter presas e peles
    note-enUS Kill Strigid Owls. Loot them for their Feathers
    note-ptBR Mate Strigid Owls. Saqueie-as para obter as penas
    note-enUS Kill Webwood Lurkers. Loot them for their Silk
    note-ptBR Mate Webwood Lurkers. Saqueie-os para obter a seda
    note-enUS Save any [Small Eggs] and [Small Spider Legs] to use for leveling [Cooking] later
    note-ptBR Guarde os [Small Eggs] e [Small Spider Legs] para subir [Cooking] mais tarde
    note-enUS ====================================================================================
    note-ptBR ====================================================================================
    note-enUS Skip this step if there aren't any mobs nearby to complete the objective!
    note-ptBR Pule este passo se não houver mobs por perto para completar o objetivo!
    objective 87288/1
    objective 488/1
    objective 488/2
    objective 488/3
step
    ifcomplete 488
    goto 1438 @734.13,9920.57
    note-enUS Talk to Zenn Foulhoof
    note-ptBR Fale com Zenn Foulhoof
    turnin 488
step
    abandon 488
    note-enUS Abandon Zenn's Bidding
    note-ptBR Abandone Zenn's Bidding
step
    ifturnedin 488
    goto 1438 @959.28,9872.28
    note-enUS Talk to Syral Bladeleaf
    note-ptBR Fale com Syral Bladeleaf
    accept 489
step
    ifonquest 489
    path closest 1438 @854.4,9952.5 @822.2,9948.5 @809.8,9926.4
    note-enUS Next to a small tree
    note-ptBR Ao lado de uma árvore pequena
    note-enUS On the small hill
    note-ptBR Na colina pequena
    note-enUS Next to the massive tree
    note-ptBR Ao lado da árvore enorme
    note-enUS Loot the 3 Fel Cones from the locations marked on your map.
    note-ptBR Saqueie os 3 Fel Cones nos locais marcados no seu mapa.
    objective 489/1
step
    ifonquest 489
    goto 1438 @739.22,9917.17
    note-enUS Talk to Zenn Foulhoof
    note-ptBR Fale com Zenn Foulhoof
    turnin 489
step
    only Hunter
    goto 1438 56.31,59.49
    note-enUS Talk to Shalomon
    note-ptBR Fale com Shalomon
    note-enUS Buy and equip a [Walking Stick] if you can afford it (5s 4c), if not skip this step
    note-ptBR Compre e equipe um [Walking Stick] se tiver dinheiro (5s 4c), senão pule esta etapa
    collect 2495 1
step
    only Hunter
    note-enUS Talk to Jeena Featherbow
    note-ptBR Fale com Jeena Featherbow
    vendor
    note-enUS Buy 4 stacks of [Sharp Arrows]. Equip them as soon as you reach level 10
    note-ptBR Compre 4 pilhas de [Sharp Arrows]. Equipe-as assim que chegar ao nível 10
step
    only Hunter Warrior Rogue
    goto 1438 @1172.01,9917.17
    note-enUS Find Moon Priestess Amara, she patrols the road west of Dolanaar
    note-ptBR Encontre Moon Priestess Amara, que patrulha a estrada a oeste de Dolanaar
    note-enUS Talk to Moon Priestess Amara
    note-ptBR Fale com Moon Priestess Amara
    turnin 487
step
    path seq 1438 @928.83,9812.34 @764.68,9835.73 |only Hunter
    goto 1438 @928.83,9812.34 |only Hunter
    goto 1438 @956.02,9736.83
    note-enUS Talk to Dazalar |only Hunter
    note-ptBR Fale com Dazalar |only Hunter
    accept 6063 |only Hunter |opt
    train 13165 |only Hunter |opt
    note-enUS Train your level 10 spells |only Hunter
    note-ptBR Treine your level 10 spells |only Hunter
    use 15921 |only Hunter |opt
    note-enUS Use the [Taming Rod] on a Webwood Lurker |only Hunter
    note-ptBR Use a [Taming Rod] em um Webwood Lurker |only Hunter
    objective 6063/1 |only Hunter |opt
    note-enUS Talk to Dazalar |only Hunter
    note-ptBR Fale com Dazalar |only Hunter
    turnin 6063 |only Hunter |opt
    accept 6101 |only Hunter |opt
    note-enUS Talk to Corithras Moonrage
    note-ptBR Fale com Corithras Moonrage
    turnin 7383
    accept 935
step
    note-enUS Kill all Lasher Sproutlings you see on the way to Denalan. Loot them for [Dewy Lasher Fronds] |only !Druid
    note-ptBR Mate todos os Lasher Sproutlings que vir a caminho de Denalan. Saqueie-os para obter [Dewy Lasher Fronds] |only !Druid
    objective 99050/1 |only !Druid |opt
    note-enUS Talk to Denalan
    note-ptBR Fale com Denalan
    turnin 931
    turnin 930
step
    ifonquest 927
    note-enUS Talk to Denalan
    note-ptBR Fale com Denalan
    turnin 927
step
    ifturnedin 927
    goto 1438 @719.87,9503.48
    note-enUS Click on Denalans Planter
    note-ptBR Clique em Denalans Planter
    turnin 941
step
    goto 1438 @719.4,9503.9
    note-enUS Wait for Denalan to complete the roleplay. Kill the Boglings for [Bogling Roots] and loot the Sprouted Frond
    note-ptBR Espere Denalan terminar a encenação. Mate os Boglings para obter [Bogling Roots] e saqueie o Sprouted Frond
    note-enUS [Sprouted Fronds] you get as a reward are an instant heal item that doesn't share cooldown with HP potions!
    note-ptBR Os [Sprouted Fronds] que você recebe de recompensa curam instantaneamente e não compartilham o tempo de recarga com poções de vida!
    accept 2399
    turnin 2399
step
    only Hunter
    ifonquest 6101
    goto 1438 @627.2,9380.96
    use 15922
    note-enUS Use the [Taming Rod] on a Nightsaber Stalker
    note-ptBR Use a [Taming Rod] em um Nightsaber Stalker
    note-enUS You must right click your Pet Frame and Dismiss your pet before you can tame another one
    note-ptBR Clique com o botão direito no quadro do ajudante e dispense-o antes de domar outro
    objective 6101/1
step
    only !Druid
    path seq 1438 @676.59,9493.3 @733.11,9439.67 @808.46,9370.1 @877.2,9458.34 @997.36,9549.97 @867.02,9630.74
    goto 1438 @697.97,9581.87
    note-enUS Finish killing Lasher Sproutlings. Loot them for [Dewy Lasher Fronds]
    note-ptBR Termine de matar os Lasher Sproutlings. Saqueie-os para obter [Dewy Lasher Fronds]
    objective 99050/1
step
    level 10 |only !Hunter !Druid
    level 10 |only Hunter
step
    ifcomplete 87288
    level 10 |only !Hunter
    level 10 |only Hunter
step
    only !Druid
    ifonquest 99050
    goto 1438 @982.65,9802.19
    note-enUS Talk to Innkeeper Keldamyr
    note-ptBR Fale com Innkeeper Keldamyr
    note-enUS Buy [Refreshing Spring Water] from him
    note-ptBR Compre [Refreshing Spring Water] dele
    collect 159 1
step
    goto 1438 @997.2,9903.6
    note-enUS Talk to Byancie
    note-ptBR Fale com Byancie
    turnin 99050
    accept 99073
step
    ifcomplete 87288
    goto 1438 @988.3,9891.89
    note-enUS Talk to Aldia up stairs
    note-ptBR Fale com Aldia no andar de cima
    turnin 87288
step
    only Warrior
    goto 1438 @952,9822.22
    note-enUS Talk to Kyra Windblade
    note-ptBR Fale com Kyra Windblade
    accept 1684
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Rogue
    goto 1438 @943.85,9790.28
    note-enUS Talk to Jannok Breezesong
    note-ptBR Fale com Jannok Breezesong
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
    train 5171
    note-enUS Train [Slice and Dice]
    note-ptBR Treine [Slice e Dice]
    train 921
    note-enUS Train [Pick Pocket] as well which is needed for your level 10 Rogue quest
    note-ptBR Treine também [Pick Pocket], necessário para a missão de Rogue de nível 10
step
    only Hunter
    goto 1438 @928.83,9812.34
    note-enUS Talk to Dazalar
    note-ptBR Fale com Dazalar
    accept 6063
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Hunter
    goto 1438 @764.68,9835.73
    use 15921
    note-enUS Use the [Taming Rod] on a Webwood Lurker
    note-ptBR Use a [Taming Rod] em um Webwood Lurker
    objective 6063/1
step
    only Hunter
    goto 1438 @928.83,9812.34
    note-enUS Talk to Dazalar
    note-ptBR Fale com Dazalar
    turnin 6063
    accept 6101
step
    only Hunter
    goto 1438 @627.2,9380.96
    note-enUS Kill all Lasher Sproutlings you see on the way to the cat. Loot them for [Dewy Lasher Fronds] |only Hunter
    note-ptBR Mate todos os Lasher Sproutlings que vir a caminho do felino. Saqueie-os para obter [Dewy Lasher Fronds] |only Hunter
    objective 99050/1 |only Hunter |opt
    use 15922
    note-enUS Use the [Taming Rod] on a Nightsaber Stalker
    note-ptBR Use a [Taming Rod] em um Nightsaber Stalker
    note-enUS You must right click your Pet Frame and Dismiss your pet before you can tame another one
    note-ptBR Clique com o botão direito no quadro do ajudante e dispense-o antes de domar outro
    objective 6101/1
step
    only !Druid
    path seq 1438 @676.59,9493.3 @733.11,9439.67 @808.46,9370.1 @877.2,9458.34 @997.36,9549.97 @867.02,9630.74
    goto 1438 @697.97,9581.87
    note-enUS Finish killing Lasher Sproutlings. Loot them for [Dewy Lasher Fronds]
    note-ptBR Termine de matar os Lasher Sproutlings. Saqueie-os para obter [Dewy Lasher Fronds]
    objective 99050/1
step
    only Hunter
    goto 1438 @928.83,9812.34
    note-enUS Talk to Dazalar
    note-ptBR Fale com Dazalar
    turnin 6101
    accept 6102
step
    only Hunter
    goto 1438 @520.28,9567.62
    use 15923
    note-enUS Use the [Taming Rod] on a Strigid Screecher
    note-ptBR Use a [Taming Rod] em um Strigid Screecher
    note-enUS You must right click your Pet Frame and Dismiss your pet before you can tame another one
    note-ptBR Clique com o botão direito no quadro do ajudante e dispense-o antes de domar outro
    objective 6102/1
step
    only Hunter
    goto 1438 @928.83,9812.34
    note-enUS Talk to Dazalar
    note-ptBR Fale com Dazalar
    turnin 6102
    accept 6103
step
    only Warrior
    path seq 1438 @971.91,9852.35 @1257.55,10004.39
    goto 1438 @971.91,9852.35
    note-enUS Talk to Moon Priestess Amara
    note-ptBR Fale com Moon Priestess Amara
    note-enUS Moon Priestess Amara patrols the road west of Dolanaar
    note-ptBR Moon Priestess Amara patrulha a estrada a oeste de Dolanaar
    accept 1684
step
    only Rogue
    goto 1438 @943.85,9790.28
    note-enUS Talk to Jannok Breezesong
    note-ptBR Fale com Jannok Breezesong
    accept 2241
step
    only !Druid
    ifonquest 99050
    goto 1438 @982.65,9802.19
    note-enUS Talk to Innkeeper Keldamyr
    note-ptBR Fale com Innkeeper Keldamyr
    note-enUS Buy [Refreshing Spring Water] from him
    note-ptBR Compre [Refreshing Spring Water] dele
    collect 159 1
step
    only Priest
    goto 1438 @985.45,9905.43
    note-enUS Talk to Laurna Morninglight
    note-ptBR Fale com Laurna Morninglight
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Hunter
    path seq 1438 @947.57,9812.38
    goto 1438 @997.2,9903.6
    note-enUS Talk to Shalomon
    note-ptBR Fale com Shalomon
    note-enUS Buy a [Walking Stick]
    note-ptBR Compre um [Walking Stick]
    note-enUS You will equip this later. Skip this step if you happened to find a different staff
    note-ptBR Você vai equipar isto depois. Pule esta etapa se encontrou outro cajado
    collect 2495 1
    note-enUS Talk to Byancie
    note-ptBR Fale com Byancie
    turnin 99050
    accept 99073
step
    path seq 1438 @971.91,9852.35 @1257.55,10004.39
    goto 1438 @971.91,9852.35
    note-enUS Talk to Moon Priestess Amara
    note-ptBR Fale com Moon Priestess Amara
    note-enUS Moon Priestess Amara patrols the road west of Dolanaar
    note-ptBR Moon Priestess Amara patrulha a estrada a oeste de Dolanaar
    turnin 487
step
    abandon 87288
    note-enUS Abandon Soft Saber Pelts you won't be returning to Dolnaar
    note-ptBR Abandone Soft Saber Pelts, você não vai voltar a Dolnaar
step
    only Rogue
    goto 1438 @1574.25,9978.26 |only Rogue
    goto 1457 @2534.29,10085.6
    note-enUS Once you get past the furbolg area, die on purpose and respawn at the Darnassus graveyard |only Rogue
    note-ptBR Depois de passar da área dos furbolgs, morra de propósito e renasça no cemitério de Darnassus |only Rogue
    note-enUS Talk to Rellian Greenspyre
    note-ptBR Fale com Rellian Greenspyre
    turnin 922
    accept 923
step
    only Rogue
    path seq 1457 @2608.06,10113.26
    goto 1457 @2546.89,10083.69
    note-enUS Talk to Syurna
    note-ptBR Fale com Syurna
    turnin 2241
    accept 2242
step
    only Rogue
    note-enUS Talk to Sentinel Dalia Sunblade
    note-ptBR Fale com Sentinel Dalia Sunblade
    accept 98067
step
    only Rogue
    path seq 1457 @2517.99,9584.25
    goto 1457 @2550.48,9631.88
    note-enUS Talk to Priestess A'moora
    note-ptBR Fale com Priestess A'moora
    accept 2518
step
    only Rogue
    goto 1457 @2009.1,9986.6
    note-enUS Go to the Gates of Darnassus and use the [Lunar Pendant]
    note-ptBR Vá até os Gates of Darnassus e use o [Lunar Pendant]
    objective 98067/4
    use 279378
step
    only Hunter
    path seq 1438 @1716.82,10324.42 @1564.07,10480.54 @1492.78,10765.61
    goto 1438 @1900.12,10853.85
    note-enUS Cast [Tame Beast] on a Strigid Hunter to tame it - .tame 1997
    note-ptBR Lance [Tame Beast] em um Strigid Hunter para domesticá-lo - .tame 1997
    train 2981
    note-enUS Attack mobs with it to learn [Claw (Rank 2)]
    note-ptBR Ataque monstros com ele para aprender [Claw (Rank 2)]
step
    goto 1438 @1691.36,10412.66
    note-enUS Kill Timberling Tramplers, Timberling Mire Beasts and Elder Timberlings. Loot them for their Tumors
    note-ptBR Mate Timberling Tramplers, Timberling Mire Beasts e Elder Timberlings. Saqueie-os para obter os tumores
    objective 923/1
step
    path closest 1438 @1828.6,10964.8
    note-enUS Kill Lady Sathrah. Loot her for her Spinnerets
    note-ptBR Mate Lady Sathrah. Saqueie-a para obter as fiandeiras dela
    note-enUS Lady Sathrah can spawn in 3 different locations, check your map for a recomended path to take
    note-ptBR Lady Sathrah pode aparecer em 3 locais diferentes, veja no mapa um caminho recomendado
    note-enUS Head north along the river and check the easternmost spawn point first. Work on the [Tumors] quest as you go
    note-ptBR Siga para o norte ao longo do rio e verifique primeiro o ponto de ressurgimento mais a leste. Faça a missão [Tumors] no caminho
    note-enUS If she's not east of the river complete the [Tumors] quest before heading west
    note-ptBR Se ela não estiver a leste do rio, complete a missão [Tumors] antes de seguir para o oeste
    objective 2518/1
step
    goto 1438 @1864.47,10667.19
    note-enUS Talk to Sentinel Arynia Cloudsbreak
    note-ptBR Fale com Sentinel Arynia Cloudsbreak
    accept 937
step
    only Rogue
    goto 1438 @1879.75,10976.02
    note-enUS Cast [Pick Pocket] on Sethir the Ancient
    note-ptBR Lance [Pick Pocket] em Sethir the Ancient
    note-enUS You must be in [Stealth] to use [Pick Pocket]
    note-ptBR Você precisa estar em [Stealth] para usar [Pick Pocket]
    note-enUS Sethir the Ancient walks along the big tree branch
    note-ptBR Sethir the Ancient anda pelo grande galho da árvore
    note-enUS Avoid fighting Sethir the Ancient. Let him walk passed you, then [Stealth] and [Pick Pocket] when you're behind him
    note-ptBR Evite lutar com Sethir the Ancient. Deixe-o passar por você, depois use [Stealth] e [Pick Pocket] quando estiver atrás dele
    objective 2242/1
step
    goto 1438 @2102.82,10819.27
    note-enUS Kill Bloodfeather Harpies. Loot them for their Belts
    note-ptBR Mate Bloodfeather Harpies. Saqueie-as para obter os cintos
    note-enUS Bloodfeather Matriarchs cast [Healing Wave] and [Lightning Bolt] which does a lot of damage. Try to burst them fast
    note-ptBR Bloodfeather Matriarchs lançam [Healing Wave] e [Lightning Bolt], que causa muito dano. Tente matá-las rápido
    objective 937/1
step
    goto 1438 @2208.67,10758.15
    note-enUS Talk to Mist
    note-ptBR Fale com Mist
    note-enUS This will start an escort quest
    note-ptBR Isto iniciará uma missão de escolta
    note-enUS Skip this quest if the NPC is not there
    note-ptBR Pule esta missão se o NPC não estiver lá
    accept 938
step
    ifonquest 938
    goto 1438 @1864.47,10663.8
    note-enUS Talk to Sentinel Arynia Cloudsbreak
    note-ptBR Fale com Sentinel Arynia Cloudsbreak
    note-enUS Keep in mind this is a timed quest, you need to turn it in within 10 minutes of accepting
    note-ptBR Lembre-se de que é uma missão com tempo, você precisa entregá-la em até 10 minutos após aceitar
    turnin 938
step
    goto 1438 @1864.47,10663.8
    note-enUS Talk to Sentinel Arynia Cloudsbreak
    note-ptBR Fale com Sentinel Arynia Cloudsbreak
    turnin 937
    accept 98392
step
    goto 1438 @1899.7,10582.9
    note-enUS Talk to Sentinel Eralya Leafshadow
    note-ptBR Fale com Sentinel Eralya Leafshadow
    turnin 99073
step
    note-enUS Kill Hatescreech. Loot her for her [Amulet]
    note-ptBR Mate Hatescreech. Saqueie-a para obter o [Amulet]
    objective 98392/1
step
    note-enUS Kill Windmistress Gaedress. Loot her for her [Amulet]
    note-ptBR Mate Windmistress Gaedress. Saqueie-a para obter o [Amulet]
    objective 98392/2
step
    note-enUS Kill Witchmother Arysa. Loot her for her [Amulet]
    note-ptBR Mate Witchmother Arysa. Saqueie-a para obter o [Amulet]
    objective 98392/3
step
    goto 1438 @1864.47,10663.8
    note-enUS Talk to Sentinel Arynia Cloudsbreak
    note-ptBR Fale com Sentinel Arynia Cloudsbreak
    turnin 98392
    accept 98398
step
    goto 1438 @1932.4,10673.5
    note-enUS Go to the Oracle Tree Bark
    note-ptBR Vá até a Oracle Tree Bark
    turnin 98398
    accept 940
step
    note-enUS Die and respawn at the Darnassus graveyard
    note-ptBR Morra e renasça no cemitério de Darnassus
step
    only !Warrior
    goto 1457 @2009.1,9986.6
    note-enUS Go to the Gates of Darnassus and use the [Lunar Pendant]
    note-ptBR Vá até os Gates of Darnassus e use o [Lunar Pendant]
    objective 98067/4
    use 279378
step
    only !Warrior
    goto 1457 @2190.34,9918.06
    note-enUS Talk to Mydrannul
    note-ptBR Fale com Mydrannul
    accept 6344
step
    goto 1457 @2070.42,9979.31
    zone 1457
    note-enUS Travel to Darnassus
    note-ptBR Vá até Darnassus
step
    abandon 927
    note-enUS Abandon The Moss-twined Heart. You never have an opportunity to turn it in
    note-ptBR Abandone The Moss-twined Heart. Você nunca terá oportunidade de entregá-la
step
    only Warrior
    goto 1457 @2331.89,9994.09
    note-enUS Talk to Elanaria
    note-ptBR Fale com Elanaria
    turnin 1684
    accept 1683
step
    only Warrior
    goto 1457 @2190.34,9918.06
    note-enUS Talk to Mydrannul
    note-ptBR Fale com Mydrannul
    accept 6344
step
    only Warrior
    goto 1457 @2009.1,9986.6
    note-enUS Go to the Gates of Darnassus and use the [Lunar Pendant]
    note-ptBR Vá até os Gates of Darnassus e use o [Lunar Pendant]
    objective 98067/4
    use 279378
step
    only Warrior
    goto 1438 @1334.94,9720.34 18 |only Warrior
    goto 1438 @1411.32,9669.43
    note-enUS Travel toward Vorlus Vilehoof |only Warrior
    note-ptBR Vá em direção a Vorlus Vilehoof |only Warrior
    note-enUS Kill Vorlus Vilehoof. Loot him for his Horn
    note-ptBR Mate Vorlus Vilehoof. Saqueie-o para obter o chifre dele
    objective 1683/1
step
    only Warrior
    goto 1438 @1594.62,9988.44 |only Warrior
    goto 1457 @2331.89,9994.09
    note-enUS Die on purpose after you get past the furbolg area and respawn at Darnassus |only Warrior
    note-ptBR Morra de propósito depois de passar da área dos furbolgs e renasça em Darnassus |only Warrior
    note-enUS Talk to Elanaria
    note-ptBR Fale com Elanaria
    turnin 1683
step
    goto 1457 @2240.1,10121
    note-enUS Go to the Darnassus Inn and use the [Lunar Pendant]
    note-ptBR Vá até a estalagem de Darnassus e use o [Lunar Pendant]
    objective 98067/3
    use 279378
step
    only Druid Nightelf
    goto 1457 @2563.92,10179.04
    note-enUS Talk to Mathrengyl Bearwalker on the middle level
    note-ptBR Fale com Mathrengyl Bearwalker no nível do meio
    turnin 5931
    accept 6001
step
    goto 1457 @2569.91,10173
    note-enUS Talk to Arch Druid Fandral Staghelm
    note-ptBR Fale com Arch Druid Fandral Staghelm
    turnin 940
    accept 952
step
    goto 1457 @2569.91,10173
    note-enUS Talk to Arch Druid Fandral Staghelm
    note-ptBR Fale com Arch Druid Fandral Staghelm
    turnin 935
step
    only Hunter
    goto 1457 @2511.04,10178.01
    note-enUS Talk to Jocaste
    note-ptBR Fale com Jocaste
    turnin 6103
step
    only Hunter
    goto 1457 @2491.75,10176.21
    note-enUS Go up the ramp to the right of Jocaste
    note-ptBR Suba a rampa à direita de Jocaste
    note-enUS Talk to Silvaria
    note-ptBR Fale com Silvaria
    trainer
    note-enUS Train pet spells
    note-ptBR Treine pet spells
step
    goto 1457 @2579.3,10129
    note-enUS Go to the Cenarion Hold entrance and use the [Lunar Pendant]
    note-ptBR Vá até a entrada de Cenarion Hold e use o [Lunar Pendant]
    objective 98067/1
    use 279378
step
    only Rogue
    path seq 1457 @2608.06,10113.26
    goto 1457 @2546.89,10083.69
    note-enUS Talk to Syurna
    note-ptBR Fale com Syurna
    turnin 2242
step
    goto 1457 @2534.25,10085.6
    note-enUS Talk to Rellian Greenspyre
    note-ptBR Fale com Rellian Greenspyre
    turnin 923
step
    goto 1457 @2499.9,9932.6
    note-enUS Go to the Darnassus Bank and use the [Lunar Pendant]
    note-ptBR Vá até o Banco de Darnassus e use o [Lunar Pendant]
    objective 98067/2
    use 279378
step
    note-enUS Talk to Sentinel Dalia Sunblade
    note-ptBR Fale com Sentinel Dalia Sunblade
    turnin 98067
step
    path seq 1457 @2517.99,9584.25
    goto 1457 @2550.48,9631.88
    note-enUS Talk to Priestess A'moora
    note-ptBR Fale com Priestess A'moora
    turnin 2518
    accept 2520
step
    goto 1457 @2518.2,9632.8
    use 8155
    note-enUS Use [Sathrah's Sacrifice] at the fountain
    note-ptBR Use [Sathrah's Sacrifice] na fonte
    objective 2520/1
step
    path seq 1457 @2517.99,9584.25
    goto 1457 @2550.48,9631.88
    note-enUS Talk to Priestess A'moora
    note-ptBR Fale com Priestess A'moora
    turnin 2520
step
    only Hunter
    goto 1457 @2258.91,9793.71
    note-enUS Look for Jaeana, she patrols around the Tradesmen's Terrace
    note-ptBR Procure Jaeana, ela patrulha pelo Tradesmen's Terrace
    note-enUS Buy a stack of [Tough Jerky] from her.
    note-ptBR Compre uma pilha de [Tough Jerky] dela.
    note-enUS You will need it to feed your owl, they only eat meat and there's no meat vendor in Darkshore
    note-ptBR Você vai precisar para alimentar sua coruja, elas só comem carne e não há vendedor de carne em Darkshore
    collect 117 15
step
    only Hunter
    goto 1457 @2316.49,9924.41
    note-enUS Equip the [Walking Stick] |only Hunter
    note-ptBR Equipe o [Walking Stick] |only Hunter
    use 2495 |only Hunter |opt
    note-enUS Talk to Ariyell Skyshadow
    note-ptBR Fale com Ariyell Skyshadow
    vendor
    note-enUS Buy [Sharp Arrows]
    note-ptBR Compre [Sharp Arrows]
step
    only Warrior
    goto 1457 @2316.49,9924.41
    note-enUS Equip the [Laminated Recurve Bow] |only Hunter
    note-ptBR Equipe o [Laminated Recurve Bow] |only Hunter
    use 2507 |only Hunter |opt
    note-enUS Talk to Ariyell Skyshadow
    note-ptBR Fale com Ariyell Skyshadow
    note-enUS Buy a [Gnarled Staff]. Equip it at level 15
    note-ptBR Compre um [Gnarled Staff]. Equipe-o no nível 15
    collect 2030 1
step
    only Warrior
    goto 1457 @2316.49,9924.41
    note-enUS Talk to Ariyell Skyshadow
    note-ptBR Fale com Ariyell Skyshadow
    collect 854 1
step
    only Warrior
    goto 1457 @2316.49,9924.41
    note-enUS Talk to Ariyell Skyshadow
    note-ptBR Fale com Ariyell Skyshadow
    note-enUS Buy and equip a [Cutlass] if you can't afford a [Quarter Staff]
    note-ptBR Compre e equipe um [Cutlass] se não tiver dinheiro para um [Quarter Staff]
    collect 851 1
step
    only Rogue
    goto 1457 @2275,9775.5
    note-enUS Equip the [Cutlass] |only Warrior
    note-ptBR Equipe o [Cutlass] |only Warrior
    use 851 |only Warrior |opt
    note-enUS Equip the [Quarter Staff] |only Warrior
    note-ptBR Equipe o [Quarter Staff] |only Warrior
    use 854 |only Warrior |opt
    note-enUS Talk to Rellian Greenspyre on the second floor
    note-ptBR Fale com Rellian Greenspyre no segundo andar
    note-enUS Buy a [Balanced Throwing Dagger]
    note-ptBR Compre uma [Balanced Throwing Dagger]
    collect 2946 1
step
    goto 1457 @2636.53,9956.8
    goto 1438 @950.52,8694.07
    zone 1438 |opt
    note-enUS Travel through the purple portal to Rut'theran Village
    note-ptBR Atravesse o portal roxo até Rut'theran Village
    note-enUS Talk to Nessa Shadowsong
    note-ptBR Fale com Nessa Shadowsong
    turnin 6344
    accept 6341
step
    ifonquest 6343
    goto 1438 @950.52,8694.07
    note-enUS Talk to Nessa Shadowsong
    note-ptBR Fale com Nessa Shadowsong
    turnin 6343
step
    goto 1438 @841.1,8640.58
    note-enUS Talk to Vesprystus
    note-ptBR Fale com Vesprystus
    turnin 6341
    accept 6342
step
    goto 1438 @841.1,8640.58
    note-enUS Talk to Vesprystus
    note-ptBR Fale com Vesprystus
    fly 1439
    note-enUS Fly to Darkshore
    note-ptBR Voe para Darkshore
]==])
