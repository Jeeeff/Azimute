-- Convertido automaticamente de RXPGuides (Alliance-11-20.lua)
-- (c) RestedXP - CC BY-NC-SA 4.0 (ver LICENSE.txt). Não edite à mão:
-- rode tools/rxp2azimute.py de novo.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id forever.a.13-15-westfall
#name 13-15 Westfall
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#levels 13-15
#zone 1436
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup Speedrun 1-20
#subgroup-ptBR Rota rápida 1-20
#recommend !Nightelf !Hunter
#next forever.a.14-16-darkshore

step
    goto 1453 @673.58,-8867.76
    note-enUS Talk to Innkeeper Allison
    note-ptBR Fale com Innkeeper Allison
    home
    note-enUS Set your Hearthstone to Stormwind City
    note-ptBR Defina sua pedra de regresso em Stormwind City
step
    only Human
    goto 1453 @489.99,-8835.76
    note-enUS Talk to Dungar Longdrink
    note-ptBR Fale com Dungar Longdrink
    turnin 6261
    accept 6285
step
    only !Skyborne
    goto 1453 @490.03,-8835.82
    note-enUS Talk to Dungar Longdrink
    note-ptBR Fale com Dungar Longdrink
    fly 1436 |only !Nightelf
    note-enUS Fly to Westfall |only !Nightelf
    note-ptBR Voe para Westfall |only !Nightelf
    fp |only Nightelf
    note-enUS Get the Stormwind Flight Path |only Nightelf
    note-ptBR Pegue o ponto de voo de Stormwind |only Nightelf
step
    goto 1429 @875.96,-9814.4
    goto 1436 @918.42,-9851.5
    zone 1436 |opt
    note-enUS Travel to Westfall
    note-ptBR Vá até Westfall
    note-enUS Talk to Farmer Furlbrow
    note-ptBR Fale com Farmer Furlbrow
    accept 64
step
    goto 1436 @919.47,-9853.13
    note-enUS Talk to Verna Furlbrow
    note-ptBR Fale com Verna Furlbrow
    accept 36
    accept 151
step
    goto 1436 @1055.27,-10128.7 65
    note-enUS Travel to Saldean's Farm
    note-ptBR Vá até Saldean's Farm
    note-enUS Talk to Farmer Saldean
    note-ptBR Fale com Farmer Saldean
    accept 9
    accept 109 |only Nightelf
step
    goto 1436 @1042.67,-10111.67
    note-enUS Talk to Salma Saldean
    note-ptBR Fale com Salma Saldean
    turnin 36
    accept 38
    accept 22
step
    only Human
    goto 1436 @1021.67,-10500.63
    note-enUS Talk to Quartermaster Lewis
    note-ptBR Fale com Quartermaster Lewis
    turnin 6285
step
    goto 1436 @1045.12,-10508.8 |only Gnome Dwarf Nightelf
    goto 1436 @1045.12,-10508.8
    note-enUS Talk to Gryan Stoutmantle |only Gnome Dwarf Nightelf
    note-ptBR Fale com Gryan Stoutmantle |only Gnome Dwarf Nightelf
    turnin 109 |only Gnome Dwarf Nightelf |opt
    note-enUS Talk to Gryan Stoutmantle
    note-ptBR Fale com Gryan Stoutmantle
    accept 12
    turnin 98021 |only Skyborne
step
    goto 1436 @1041.97,-10511.13
    note-enUS Talk to Captain Danuvin
    note-ptBR Fale com Captain Danuvin
    accept 102
step
    only Human
    goto 1436 @1126.67,-10636.67
    note-enUS Talk to Scout Galiaan
    note-ptBR Fale com Scout Galiaan
    accept 153
step
    only !Human
    goto 1436 @1126.67,-10636.67
    note-enUS Talk to Scout Galiaan
    note-ptBR Fale com Scout Galiaan
    accept 153
step
    goto 1436 @1166.57,-10653.23
    note-enUS Talk to Innkeeper Heather
    note-ptBR Fale com Innkeeper Heather
    vendor
    note-enUS Buy food/water if needed
    note-ptBR Compre comida/água se precisar
step
    goto 1436 @1179.8,-10635.6
    note-enUS Talk to Alba Fairmoon
    note-ptBR Fale com Alba Fairmoon
    accept 92742
    accept 92744
step
    ifonquest 399
    goto 1436 @1602.67,-10629.67 75
    note-enUS Open the Sacks of Oats on the ground. Loot them for the Handful of Oats
    note-ptBR Abra os Sacks of Oats no chão. Saqueie-os para obter o Handful of Oats
    note-enUS You can usually find them near Farm Fences or Buildings
    note-ptBR Geralmente ficam perto das cercas das fazendas ou dos prédios
    objective 151/1 |opt
    note-enUS Kill Young Goretusks and Young Fleshrippers. Loot them for their Vulture Meat, Snouts and Livers
    note-ptBR Mate Young Goretusks e Young Fleshrippers. Saqueie-os para obter Vulture Meat, focinhos e fígados
    collect 729 3 |quest 38 |q 38/1 |opt
    collect 731 3 |quest 38 |q 38/1 |opt
    collect 723 8 |quest 22 |q 22/1 |opt
    note-enUS Kill Defias Trappers and Defias Smugglers. Loot them for their Red Leather Bandanas
    note-ptBR Mate Defias Trappers e Defias Smugglers. Saqueie-os para obter as Red Leather Bandanas
    objective 12/1 |opt
    objective 12/2 |opt
    objective 153/1 |opt
    note-enUS Travel to the Alexston's Farmstead
    note-ptBR Vá até Alexston's Farmstead
    note-enUS Work on completing the other quest objectives as you move there
    note-ptBR Vá completando os outros objetivos da missão no caminho
step
    ifonquest 399
    goto 1436 @1748.27,-10672.13
    note-enUS Kill Harvest Watchers located on any of the fields as you run by them
    note-ptBR Mate Harvest Watchers em qualquer um dos campos enquanto passa por eles
    note-enUS Loot them for their Okra and Flasks of Oil
    note-ptBR Saqueie-os para obter Okra e Flasks of Oil
    objective 9/1 |opt
    collect 732 3 |quest 38 |q 38/1 |opt
    collect 814 5 |quest 103 |q 103/1 |opt
    note-enUS Open Alexston's Chest. Loot it for A Simple Compass
    note-ptBR Abra o Alexston's Chest. Saqueie-o para obter A Simple Compass
    objective 399/1
step
    goto 1436 @1404.2,-10290.9
    use 254545
    note-enUS Use the [Well Water Sample Kit] at the Molsen Farm well
    note-ptBR Use o [Well Water Sample Kit] no poço de Molsen Farm
    objective 92742/2
step
    goto 1436 @1266.67,-9927.33 75
    note-enUS Kill Young Goretusks and Young Fleshrippers. Loot them for their Vulture Meat, Snouts and Livers
    note-ptBR Mate Young Goretusks e Young Fleshrippers. Saqueie-os para obter Vulture Meat, focinhos e fígados
    collect 729 3 |quest 38 |q 38/1 |opt
    collect 731 3 |quest 38 |q 38/1 |opt
    collect 723 8 |quest 22 |q 22/1 |opt
    note-enUS Kill Defias Trappers and Defias Smugglers. Loot them for their Red Leather Bandanas
    note-ptBR Mate Defias Trappers e Defias Smugglers. Saqueie-os para obter as Red Leather Bandanas
    objective 12/1 |opt
    objective 12/2 |opt
    objective 153/1 |opt
    note-enUS Travel to the Jansen Stead, work on the other quest objectives as you move there
    note-ptBR Vá até Jansen Stead, trabalhando nos outros objetivos da missão enquanto se move
step
    goto 1436 @1289.77,-9849.63
    note-enUS Open Furlbrow's Wardrobe. Loot it for Furlbrow's Pocket Watch
    note-ptBR Abra o Furlbrow's Wardrobe. Saqueie-o para obter o Furlbrow's Pocket Watch
    note-enUS You can loot Furlbrow's Wardrobe from outside if you angle your camera correctly
    note-ptBR Você pode saquear o Furlbrow's Wardrobe do lado de fora se posicionar a câmera corretamente
    note-enUS Be aware of Benny Blanco. He hits hard
    note-ptBR Cuidado com Benny Blanco. Ele bate forte
    objective 64/1
step
    path seq 1436 @1042.67,-9715 @1517.97,-9743 @1412.62,-9720.83 @1184.07,-9745.8 @1026.57,-9715.7 @1517.97,-9743 @1184.07,-9745.8 @1412.62,-9720.83 @1517.97,-9743 @1184.07,-9745.8
    goto 1436 @1028.32,-9710.33
    note-enUS Kill Riverpaw Gnolls and Riverpaw Scouts. Loot them for their Gnoll Paws
    note-ptBR Mate Riverpaw Gnolls e Riverpaw Scouts. Saqueie-os para obter Gnoll Paws
    objective 102/1
step
    path seq 1436 @1192.12,-9641.73 @1042.67,-9619.33 @1192.12,-9641.73 @1042.67,-9619.33 @1192.12,-9641.73
    goto 1436 @1042.67,-9619.33
    note-enUS Kill Murloc Raiders and Murloc Coastrunners. Loot them for their Eyes and Gills
    note-ptBR Mate Murloc Raiders e Murloc Coastrunners. Saqueie-os para obter olhos e guelras
    collect 730 3 |quest 38 |q 38/1
    objective 92744/1
step
    path seq 1436 @1004.87,-9716.87 @1013.62,-9861.53 @1192.12,-10175.13 @1019.57,-10204.3
    goto 1436 @1013.62,-9861.53
    note-enUS Open the Sacks of Oats on the ground. Loot them for the Handful of Oats
    note-ptBR Abra os Sacks of Oats no chão. Saqueie-os para obter o Handful of Oats
    note-enUS You can usually find them near Farm Fences or Buildings
    note-ptBR Geralmente ficam perto das cercas das fazendas ou dos prédios
    objective 151/1
step
    goto 1436 @1035.3,-9835.1
    use 254545
    note-enUS Use the [Well Water Sample Kit] at the Jansen Stead well
    note-ptBR Use o [Well Water Sample Kit] no poço de Jansen Stead
    objective 92742/1
step
    only Human Warlock
    ifonquest 184
    path seq 1436 @918.42,-9851.5
    goto 1436 @919.47,-9853.13
    note-enUS Talk to Farmer Furlbrow and Verna Furlbrow
    note-ptBR Fale com Farmer Furlbrow e Verna Furlbrow
    turnin 64
    turnin 184
    turnin 151
step
    path seq 1436 @918.42,-9851.5
    goto 1436 @919.47,-9853.13
    note-enUS Talk to Farmer Furlbrow and Verna Furlbrow
    note-ptBR Fale com Farmer Furlbrow e Verna Furlbrow
    turnin 64
    turnin 151
step
    ifcomplete 9
    goto 1436 @1055.27,-10128.7
    note-enUS Talk to Farmer Saldean
    note-ptBR Fale com Farmer Saldean
    vendor |opt
    note-enUS Vendor trash
    note-ptBR Venda o lixo
    note-enUS Do NOT sell [Murloc Eyes], [Goretusk Snouts], [Goretusk Livers] or [Stringy Vulture Meat]
    note-ptBR NÃO venda [Murloc Eyes], [Goretusk Snouts], [Goretusk Livers] nem [Stringy Vulture Meat]
    note-enUS Talk to Farmer Saldean
    note-ptBR Fale com Farmer Saldean
    turnin 9
step
    ifcomplete 22
    ifcomplete 38
    goto 1436 @1042.67,-10111.67
    note-enUS Talk to Salma Saldean
    note-ptBR Fale com Salma Saldean
    turnin 22
    turnin 38
step
    ifcomplete 22
    goto 1436 @1042.67,-10111.67
    note-enUS Talk to Salma Saldean
    note-ptBR Fale com Salma Saldean
    turnin 22
step
    ifcomplete 38
    goto 1436 @1042.67,-10111.67
    note-enUS Talk to Salma Saldean
    note-ptBR Fale com Salma Saldean
    turnin 38
step
    goto 1436 @1213.4,-10153.8
    note-enUS Talk to Ozwin Ironsprocket
    accept 92909
    turnin 92909
step
    ifnotturnedin 38
    path seq 1436 @1132.27,-10146.67 @1238.67,-9907.73 @1460.22,-10224.83 @1132.27,-10146.67 @1238.67,-9907.73 @1460.22,-10224.83 @1132.27,-10146.67 @1460.22,-10224.83
    goto 1436 @1238.67,-9907.73
    note-enUS Kill Harvest Watchers. Loot them for their Okra and Flasks of Oil
    note-ptBR Mate Harvest Watchers. Saqueie-os para obter Okra e Flasks of Oil
    objective 9/1
    collect 732 3 |quest 38 |q 38/1
    collect 814 5 |quest 103 |q 103/1
step
    ifturnedin 38
    path seq 1436 @1132.27,-10146.67 @1238.67,-9907.73 @1460.22,-10224.83 @1132.27,-10146.67 @1238.67,-9907.73 @1460.22,-10224.83 @1132.27,-10146.67 @1460.22,-10224.83
    goto 1436 @1238.67,-9907.73
    note-enUS Kill Harvest Watchers. Loot them for their Flasks of Oil
    note-ptBR Mate Harvest Watchers. Saqueie-os para obter Flasks of Oil
    objective 9/1
    collect 814 5 |quest 103 |q 103/1
step
    ifcomplete 9
    goto 1436 @1055.27,-10128.7
    note-enUS Talk to Farmer Saldean
    note-ptBR Fale com Farmer Saldean
    turnin 9
step
    goto 1436 @1213.4,-10153.8
    note-enUS Talk to Ozwin Ironsprocket
    accept 92909
    turnin 92909
step
    path seq 1436 @1179.52,-10382.57 @1138.22,-10474.97 @860.67,-10462.83 @904.07,-10038.87 @1104.62,-9848 @1298.52,-10028.13 @1340.52,-10401.93
    goto 1436 @1111.97,-10342.2
    note-enUS Kill Young Goretusks and Young Fleshrippers. Loot them for their Vulture Meat, Snouts and Livers
    note-ptBR Mate Young Goretusks e Young Fleshrippers. Saqueie-os para obter Vulture Meat, focinhos e fígados
    collect 729 3 |quest 38 |q 38/1
    collect 731 3 |quest 38 |q 38/1
    collect 723 8 |quest 22 |q 22/1
step
    goto 1436 @1055.27,-10128.7
    note-enUS Talk to Farmer Saldean
    note-ptBR Fale com Farmer Saldean
    turnin 9
step
    goto 1436 @1042.67,-10111.67
    note-enUS Talk to Salma Saldean
    note-ptBR Fale com Salma Saldean
    turnin 38
    turnin 22
step
    goto 1436 @1213.4,-10153.8
    note-enUS Talk to Ozwin Ironsprocket
    accept 92909
    turnin 92909
step
    goto 1436 @1324.2,-10490.4
    note-enUS Kill Defias Trappers and Defias Smugglers. Loot them for their Red Leather Bandanas
    note-ptBR Mate Defias Trappers e Defias Smugglers. Saqueie-os para obter as Red Leather Bandanas
    note-enUS It is a dynamic respawn area meaning if you kill enough they will keep respawning
    note-ptBR É uma área de respawn dinâmico, ou seja, se matar bastante eles continuarão reaparecendo
    objective 12/1 |opt
    objective 12/2 |opt
    objective 153/1 |opt
    note-enUS Kill Defias Trappers and Defias Smugglers. Loot them for their Red Leather Bandanas
    note-ptBR Mate Defias Trappers e Defias Smugglers. Saqueie-os para obter as Red Leather Bandanas
    note-enUS It is a dynamic respawn area meaning if you kill enough they will keep respawning
    note-ptBR É uma área de respawn dinâmico, ou seja, se matar bastante eles continuarão reaparecendo
    objective 12/1
    objective 12/2
    objective 153/1
step
    goto 1436 @1045.12,-10508.8
    note-enUS Talk to Gryan Stoutmantle
    note-ptBR Fale com Gryan Stoutmantle
    turnin 12
step
    goto 1436 @1045.12,-10508.8
    note-enUS Talk to Gryan Stoutmantle
    note-ptBR Fale com Gryan Stoutmantle
    accept 65
step
    goto 1436 @1041.97,-10511.13
    note-enUS Talk to Captain Danuvin
    note-ptBR Fale com Captain Danuvin
    turnin 102
step
    goto 1436 @1126.67,-10636.67
    note-enUS Talk to Scout Galiaan
    note-ptBR Fale com Scout Galiaan
    turnin 153
step
    goto 1436 @1179.8,-10635.6
    note-enUS Talk to Alba Fairmoon
    note-ptBR Fale com Alba Fairmoon
    turnin 92742
    turnin 92744
step
    hearth
    note-enUS Hearth to Stormwind
    note-ptBR Use a pedra de regresso para Stormwind
step
    goto 1436 @1037.42,-10628.27
    note-enUS Talk to Thor
    note-ptBR Fale com Thor
    fly 1453 |opt
    note-enUS Fly to Stormwind
    note-ptBR Voe para Stormwind
step
    only !Nightelf
    ifskillbelow cooking 50
    goto 1453 @596.4,-8831.7
    note-enUS Talk to Thurman Mullby
    note-ptBR Fale com Thurman Mullby
    note-enUS Buy a [Simple Wood] and a [Flint and Tinder] from him
    note-ptBR Compre um [Simple Wood] e um [Flint and Tinder] dele
    note-enUS This is used to make [Basic Campfires] on Boats to level your [Cooking] skill without losing time
    note-ptBR Isto é usado para fazer [Basic Campfires] nos barcos e subir sua habilidade de [Cooking] sem perder tempo
    note-enUS You need 50 [Cooking] for a quest in Duskwood later
    note-ptBR Você precisa de 50 em [Cooking] para uma missão em Duskwood mais tarde
    collect 4470 1
    collect 4471 1
step
    only Nightelf Hunter
    goto 1453 @706.15,-8795.15
    note-enUS Talk to Frederick Stover
    note-ptBR Fale com Frederick Stover
    note-enUS Buy a [Heavy Recurve Bow] from him. If you can afford to, buy a [Reinforced Bow] and a [Medium Quiver] as well
    note-ptBR Compre um [Heavy Recurve Bow] dele. Se tiver dinheiro, compre também um [Reinforced Bow] e uma [Medium Quiver]
    collect 3027 1
    collect 11362 1
    collect 3026 1
step
    only Rogue
    goto 1453 @377.47,-8752.39
    note-enUS Talk to Osborne
    note-ptBR Fale com Osborne
    train 1758
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warrior
    path seq 1453 @358.25,-8728.28 @302.6,-8685.53
    goto 1453 @323.3,-8689.29
    note-enUS Talk to Wu or Ilsa
    note-ptBR Fale com Wu ou Ilsa
    train 1160
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Hunter
    goto 1453 @552.78,-8415.71
    note-enUS Talk to Einris Brightspear inside
    note-ptBR Fale com Einris Brightspear lá dentro
    note-enUS If you just trained earlier, skip this step
    note-ptBR Se você treinou há pouco, pule esta etapa
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    ifcomplete 399
    goto 1453 @719.67,-8550.3
    note-enUS Talk to Baros Alexston
    note-ptBR Fale com Baros Alexston
    turnin 399
step
    only Nightelf Druid
    goto 1453 @1347.62,-8591.22
    note-enUS Talk to Theridran
    note-ptBR Fale com Theridran
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warlock
    path seq 1453 @988.44,-8942.15 |only Warlock
    goto 1453 @1015.33,-8978.9 15 |only Warlock
    goto 1453 @1029.89,-8971.06
    note-enUS Travel to The Slaughtered Lamb and go downstairs |only Warlock
    note-ptBR Vá até The Slaughtered Lamb e desça as escadas |only Warlock
    note-enUS Talk to Ursula Deline
    note-ptBR Fale com Ursula Deline
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
    train 6222
step
    only Mage
    goto 1453 @874.32,-9014.67 10 |only Mage
    goto 1453 @885.34,-9006.15
    note-enUS Travel to the Mage Tower |only Mage
    note-ptBR Vá até Mage Tower |only Mage
    note-enUS Talk to Elsharin
    note-ptBR Fale com Elsharin
    train 2137
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Paladin
    goto 1453 @809.52,-8579.22 20 |only Priest Paladin
    path seq 1453 @859.13,-8559.14
    goto 1453 @861.14,-8573.03
    note-enUS Travel to the Stormwind Cathedral |only Priest Paladin
    note-ptBR Vá até Stormwind Cathedral |only Priest Paladin
    note-enUS Talk to Arthur the Faithful
    note-ptBR Fale com Arthur the Faithful
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
    train 19742
step
    only Priest
    goto 1453 @862.89,-8519.61
    note-enUS Talk to Brother Joshua
    note-ptBR Fale com Brother Joshua
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
    train 8122
step
    goto 1453 @765.7,-8804
    note-enUS Talk to Catherine Leland
    note-ptBR Fale com Catherine Leland
    note-enUS Buy one [Shiny Bauble] and three [Nightcrawlers] from her. This is for a 900xp quest
    note-ptBR Compre um [Shiny Bauble] e três [Nightcrawlers] dela. Isso é para uma missão de 900 de XP
    collect 6529 1 |quest 95065 |q 95065/1
    collect 6530 3 |quest 95065 |q 95065/1
step
    goto 1453 @1269.1,-8540.6
    note-enUS Talk to Gilbert Gray
    note-ptBR Fale com Gilbert Gray
    accept 95065
    turnin 95065
step
    goto 1453 @1330.1,-8645.4
    note-enUS On the Boat if it just arrived or on the dock if the boat just left:
    note-ptBR No barco, se ele acabou de chegar, ou no cais, se o barco acabou de partir:
    note-enUS Create a [Basic Campfire] (in your Profession Book)
    note-ptBR Crie uma [Basic Campfire] (no seu Livro de Profissões)
    note-enUS On the Boat if it just arrived or on the dock if the boat just left:
    note-ptBR No barco, se ele acabou de chegar, ou no cais, se o barco acabou de partir:
    note-enUS Create a [Basic Campfire] (in your Profession Book)
    note-ptBR Crie uma [Basic Campfire] (no seu Livro de Profissões)
    note-enUS On the Boat if it just arrived or on the dock if the boat just left:
    note-ptBR No barco, se ele acabou de chegar, ou no cais, se o barco acabou de partir:
    note-enUS Create a [Basic Campfire] (in your Profession Book)
    note-ptBR Crie uma [Basic Campfire] (no seu Livro de Profissões)
    note-enUS You need 50 [Cooking] for a quest in Duskwood later
    note-ptBR Você precisa de 50 em [Cooking] para uma missão em Duskwood mais tarde
    note-enUS [Cook] the following items:
    note-ptBR Use [Cook] nos seguintes itens:
    note-enUS [Cook] the [Chunks of Boar Meat] into [Roasted Boar Meat]
    note-ptBR Use [Cook] para transformar os [Chunks of Boar Meat] em [Roasted Boar Meat]
    note-enUS [Cook] the [Stringy Wolf Meat] into [Charred Wolf Meat]
    note-ptBR Use [Cook] para transformar a [Stringy Wolf Meat] em [Charred Wolf Meat]
    note-enUS You need 50 [Cooking] for a quest in Duskwood later
    note-ptBR Você precisa de 50 em [Cooking] para uma missão em Duskwood mais tarde
    note-enUS [Cook] the [Stringy Wolf Meat] into [Charred Wolf Meat]
    note-ptBR Use [Cook] para transformar a [Stringy Wolf Meat] em [Charred Wolf Meat]
    note-enUS You need 50 [Cooking] for a quest in Duskwood later
    note-ptBR Você precisa de 50 em [Cooking] para uma missão em Duskwood mais tarde
    note-enUS [Cook] the [Chunks of Boar Meat] into [Roasted Boar Meat]
    note-ptBR Use [Cook] para transformar os [Chunks of Boar Meat] em [Roasted Boar Meat]
    note-enUS Level your [First Aid] while waiting for the boat to Darkshore if needed
    note-ptBR Suba seu [First Aid] enquanto espera o barco para Darkshore, se necessário
    zone 1439
    note-enUS Take the boat to Darkshore
    note-ptBR Pegue o barco para Darkshore
step
    goto 1453 @1330.1,-8645.4
    zone 1439
    note-enUS Take the boat to Darkshore
    note-ptBR Pegue o barco para Darkshore
]==])

register([==[
#format 1
#id forever.a.14-16-darkshore
#name 14-16 Darkshore
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#levels 14-16
#zone 1439
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup Speedrun 1-20
#subgroup-ptBR Rota rápida 1-20
#next forever.a.16-19-darkshore

step
    only Nightelf
    goto 1439 36.62,45.6
    note-enUS Talk to Gwennyth Bly'Leggonde
    note-ptBR Fale com Gwennyth Bly'Leggonde
    accept 3524
step
    only Nightelf !Druid
    goto 1439 36.77,44.28
    note-enUS Talk to Laird
    note-ptBR Fale com Laird
    turnin 6342
step
    only Druid Nightelf
    goto 1439 36.77,44.28
    note-enUS Talk to Laird
    note-ptBR Fale com Laird
    turnin 6342
    accept 6343
step
    only !Nightelf
    path seq 1439 36.83,44.15 |only Nightelf
    goto 1439 36.69,43.95 8 |only Nightelf
    goto 1439 35.74,43.71
    note-enUS Travel up the ramps toward Wizbang Cranktoggle |only Nightelf
    note-ptBR Suba as rampas em direção a Wizbang Cranktoggle |only Nightelf
    note-enUS Talk to Cerellean Whiteclaw
    note-ptBR Fale com Cerellean Whiteclaw
    note-enUS You may need to wait out his RP if someone else just turned in
    note-ptBR Talvez você precise esperar o RP dele se alguém acabou de entregar
    accept 963
step
    goto 1439 @525.8,6414.8 8 |only !Nightelf
    goto 1439 36.98,44.13
    note-enUS Travel up the ramp toward Wizbang Cranktoggle |only !Nightelf
    note-ptBR Suba a rampa em direção a Wizbang Cranktoggle |only !Nightelf
    note-enUS Talk to Wizbang Cranktoggle upstairs
    note-ptBR Fale com Wizbang Cranktoggle no andar de cima
    accept 983
step
    goto 1439 @515.55,6406.32
    note-enUS Talk to Shaussiy downstairs
    note-ptBR Fale com Shaussiy no andar de baixo
    home
    note-enUS Set your Hearthstone to Auberdine
    note-ptBR Defina sua pedra de regresso em Auberdine
step
    goto 1439 37.32,43.64
    note-enUS Talk to Barithras Moonshade
    note-ptBR Fale com Barithras Moonshade
    accept 947
step
    goto 1439 37.7,43.39
    note-enUS Talk to Sentinel Glynda Nal'Shea
    note-ptBR Fale com Sentinel Glynda Nal'Shea
    accept 4811
step
    goto 1439 38.84,43.42
    note-enUS Talk to Tharnariun Treetender
    note-ptBR Fale com Tharnariun Treetender
    accept 2118
step
    goto 1439 39.37,43.48
    note-enUS Talk to Terenthis
    note-ptBR Fale com Terenthis
    accept 984
step
    goto 1439 @503.1,6402.1
    note-enUS Click the Wanted Poster
    note-ptBR Clique no Wanted Poster
    accept 98025
step
    goto 1439 @577.38,6371.35
    note-enUS Talk to Gubber Blump
    note-ptBR Fale com Gubber Blump
    accept 1138
step
    only !Nightelf
    path seq 1439 36.7,45.12
    goto 1439 36.62,45.6
    note-enUS Talk to Gwennyth Bly'Leggonde
    note-ptBR Fale com Gwennyth Bly'Leggonde
    accept 3524
step
    only !Nightelf
    goto 1439 @561.66,6343.27
    note-enUS Talk to Caylais Moonfeather
    note-ptBR Fale com Caylais Moonfeather
    fp
    note-enUS Get the Auberdine flight path
    note-ptBR Pegue o ponto de voo de Auberdine
step
    ifonquest 983
    path closest 1439 @272.54,5255.27 @271.23,4902.88 @438.91,5131.69 @272.54,5255.27 @271.23,4902.88 @438.91,5131.69 |only Dwarf Hunter Human Hunter
    path closest 1439 43.51,33.21 36.05,44.76 36.28,50.07 35.27,53.46 36.09,51.5 37.12,52.37 37.13,53.66 36.74,55.22 35.66,55.87 35.09,55.09 35.27,53.46 36.09,51.5 36.28,50.07 36.52,48.55 35.98,48.41 35.9,47.15 35.76,45.45 36.05,44.76
    note-enUS Send your pet to attack a Thistle Bear. Once your pet is stunned by the Thistle Bear, abandon your pet and start taming it |only Dwarf Hunter Human Hunter
    note-ptBR Mande seu ajudante atacar um Thistle Bear. Quando ele for atordoado pelo Thistle Bear, abandone o ajudante e comece a domar o urso |only Dwarf Hunter Human Hunter
    train 16828 |only Dwarf Hunter Human Hunter |opt
    note-enUS Cast [Tame Beast] on a Thistle Bear to tame it |only Dwarf Hunter Human Hunter
    note-ptBR Lance [Tame Beast] em um Thistle Bear para domá-lo |only Dwarf Hunter Human Hunter
    train 17255 |only Dwarf Hunter Human Hunter |opt
    note-enUS Kill Foreststrider Fledglings. Loot them for their Strider Meat
    note-ptBR Mate Foreststrider Fledglings. Saqueie-os para obter Strider Meat
    note-enUS Be careful as they [Flee] at <30% health
    note-ptBR Cuidado, eles usam [Flee] com <30% de vida
    collect 5469 5 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Pygmy Tide Crawlers and Young Reef Crawlers. Loot them for their Crawler Legs
    note-ptBR Mate Pygmy Tide Crawlers e Young Reef Crawlers. Saqueie-os para obter Crawler Legs
    note-enUS You may need to go in the water for them
    note-ptBR Talvez você precise entrar na água para pegá-los
    note-enUS Even if some of these are gray, still complete the quest as it is part of a chain |only !Nightelf
    note-ptBR Mesmo que algumas estejam cinzas, complete a missão mesmo assim, pois faz parte de uma sequência |only !Nightelf
    objective 983/1
step
    goto 1439 36.37,50.92
    note-enUS Open the Beached Sea Creature. Loot it for the Sea Creature Bones
    note-ptBR Abra a Beached Sea Creature. Saqueie-a para obter os Sea Creature Bones
    objective 3524/1
step
    goto 1439 @393.72,5993.24
    note-enUS Collect 5 [Earthroot] via [Herbalism] and rarely Battered Chests for a future class quest |only Druid
    note-ptBR Colete 5 [Earthroot] com [Herbalism] e, raramente, em Battered Chests para uma futura missão de classe |only Druid
    collect 2449 5 |quest 6123 |q 6123/1 |only Druid |opt
    note-enUS Use [Tharnariun's Hope] on a Rabid Thistle Bear. It can be used from any range as long as you're targeting the Bear
    note-ptBR Use [Tharnariun's Hope] em um Rabid Thistle Bear. Pode ser usado a qualquer distância, desde que o urso esteja como alvo
    note-enUS ==DO NOT USE THE QUEST ITEM IF THERES NO BEAR NEARBY==
    note-ptBR ==NÃO USE O ITEM DA MISSÃO SE NÃO HOUVER UM URSO POR PERTO==
    note-enUS You can waste the trap and make the quest impossible to complete! If it happens to you you need to return to the questgiver and ask for another trap
    note-ptBR Você pode desperdiçar a armadilha e tornar a missão impossível de completar! Se isso acontecer, volte a quem deu a missão e peça outra armadilha
    objective 2118/1 |opt
    use 7586 |opt
    note-enUS Run toward the edge of the Furbolg Camp
    note-ptBR Corra em direção à borda do Furbolg Camp
    objective 984/1
step
    path closest 1439 38.23,52.78 39.13,59.18 38.23,52.78 38.53,54.66 38.04,56.81 38.09,58.4 38.7,57.87 39.13,59.18
    note-enUS Use [Tharnariun's Hope] on a Rabid Thistle Bear. It can be used from any range as long as you're targeting the bear
    note-ptBR Use [Tharnariun's Hope] em um Rabid Thistle Bear. Pode ser usado a qualquer distância, desde que o urso esteja como alvo
    note-enUS ==DO NOT USE THE QUEST ITEM IF THERES NO BEAR NEARBY==
    note-ptBR ==NÃO USE O ITEM DA MISSÃO SE NÃO HOUVER UM URSO POR PERTO==
    note-enUS You can waste the trap and make the quest impossible to complete! If it happens to you you need to return to the questgiver and ask for another trap
    note-ptBR Você pode desperdiçar a armadilha e tornar a missão impossível de completar! Se isso acontecer, volte a quem deu a missão e peça outra armadilha
    objective 2118/1
    use 7586
step
    only Nightelf
    path closest 1439 36.05,44.76 36.28,50.07 35.27,53.46 36.05,44.76 35.76,45.45 35.9,47.15 35.98,48.41 36.52,48.55 36.28,50.07 36.09,51.5 37.12,52.37 37.13,53.66 36.74,55.22 35.66,55.87 35.09,55.09 35.27,53.46 36.09,51.5
    level 11
    note-enUS Grind to 7300+/8800xp
    note-ptBR Mate monstros até 7300+/8800xp
step
    goto 1439 36.63,46.25
    note-enUS Click the Buzzbox 827 on the ground
    note-ptBR Clique na Buzzbox 827 no chão
    turnin 983
    accept 1001
step
    path seq 1439 36.7,45.12
    goto 1439 36.62,45.6
    note-enUS Talk to Gwennyth Bly'Leggonde
    note-ptBR Fale com Gwennyth Bly'Leggonde
    turnin 3524
    accept 4681
step
    only Druid Nightelf
    path seq 1439 43.13,45.59 |only Druid Nightelf
    goto 1439 @92.42,6325.98 |only Druid Nightelf
    goto 1439 @119.27,6344.32
    note-enUS Enter the Moonkin Stone cave |only Druid Nightelf
    note-ptBR Entre na caverna da Moonkin Stone |only Druid Nightelf
    note-enUS Use the [Cenarion Moondust] at the Moonkin Stone inside the cave to summon Lunaclaw at the entrance of the cave |only Druid Nightelf
    note-ptBR Use o [Cenarion Moondust] na Moonkin Stone dentro da caverna para invocar Lunaclaw na entrada da caverna |only Druid Nightelf
    use 15208 |only Druid Nightelf |opt
    note-enUS Kill Lunaclaw
    note-ptBR Mate Lunaclaw
    objective 6001/1
    use 15208
step
    only Druid Nightelf
    ifonquest 4811
    goto 1439 47.31,48.68
    note-enUS Travel up to the Mysterious Red Crystal
    note-ptBR Suba até o Mysterious Red Crystal
    note-enUS Be careful of the two group of 2 Raging Moonkins west of the Mysterious Red Crystal as the duos closest to each other are leashed together
    note-ptBR Cuidado com os dois grupos de 2 Raging Moonkins a oeste do Mysterious Red Crystal, pois as duplas mais próximas estão ligadas entre si
    objective 4811/1
step
    only Nightelf Druid
    goto 1438 @950.52,8694.07
    note-enUS Cast Teleport: Moonglade |only Druid Nightelf
    note-ptBR Lance Teleport: Moonglade |only Druid Nightelf
    note-enUS Talk to Silva Fil'naveth |only Druid Nightelf
    note-ptBR Fale com Silva Fil'naveth |only Druid Nightelf
    fly 1438 |only Druid Nightelf |opt
    note-enUS Fly to Darnassus |only Druid Nightelf
    note-ptBR Voe para Darnassus |only Druid Nightelf
    note-enUS Talk to Nessa Shadowsong
    note-ptBR Fale com Nessa Shadowsong
    turnin 6343
step
    only Druid Nightelf
    ifonquest 6001
    goto 1438 @965.8,8780.95 |only Nightelf Druid
    goto 1457 @2563.98,10179
    zone 1457 |only Nightelf Druid |opt
    note-enUS Take the purple portal into Darnassus |only Nightelf Druid
    note-ptBR Pegue o portal roxo para Darnassus |only Nightelf Druid
    note-enUS Talk to Mathrengyl Bearwalker
    note-ptBR Fale com Mathrengyl Bearwalker
    turnin 6001 |only Nightelf
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Druid Nightelf
    goto 1457 @2636.53,9956.8 |only Druid Nightelf
    goto 1438 @841.1,8640.58
    zone 1438 |only Druid Nightelf |opt
    note-enUS Travel through the purple portal to Rut'theran Village |only Druid Nightelf
    note-ptBR Atravesse o portal roxo até Rut'theran Village |only Druid Nightelf
    note-enUS Talk to Vesprystus
    note-ptBR Fale com Vesprystus
    fly 1439
    note-enUS Fly to Darkshore
    note-ptBR Voe para Darkshore
step
    only Druid Nightelf
    ifonquest 4811
    goto 1439 37.7,43.39
    note-enUS Talk to Sentinel Glynda Nal'Shea
    note-ptBR Fale com Sentinel Glynda Nal'Shea
    turnin 4811
    accept 4812
step
    only Druid Nightelf
    ifturnedin 4811
    goto 1439 37.7,43.39
    note-enUS Talk to Sentinel Glynda Nal'Shea
    note-ptBR Fale com Sentinel Glynda Nal'Shea
    accept 4812
step
    only Druid Nightelf
    goto 1439 37.77,44
    note-enUS Use the [Empty Water Tube] at the Auberdine moonwell
    note-ptBR Use o [Empty Water Tube] no moonwell de Auberdine
    objective 4812/1
    use 14338
step
    path seq 1439 36.81,44.14
    goto 1439 35.74,43.71 12
    note-enUS Travel toward Cerellean Whiteclaw on the dock
    note-ptBR Vá em direção a Cerellean Whiteclaw no cais
    note-enUS Talk to Cerellean Whiteclaw
    note-ptBR Fale com Cerellean Whiteclaw
    note-enUS You may need to wait out his RP if someone else just turned in
    note-ptBR Talvez você precise esperar o RP dele se alguém acabou de entregar
    accept 963
step
    path seq 1439 32.43,43.74 @741.52,6570.95 @915.1,6333.84 @778.2,6231.66
    goto 1439 31.84,46.3
    note-enUS Travel to the end of the dock, then jump into the water
    note-ptBR Vá até o fim do cais e depois pule na água
    note-enUS Kill Darkshore Threshers. Loot them for their Thresher Eyes
    note-ptBR Mate Darkshore Threshers. Saqueie-os para obter os Thresher Eyes
    objective 1001/1 |opt
    note-enUS Open the Skeletal Sea Turtle. Loot it for the Sea Turtle Remains
    note-ptBR Abra a Skeletal Sea Turtle. Saqueie-a para obter os Sea Turtle Remains
    objective 4681/1
step
    goto 1439 @577.38,6371.35
    note-enUS Talk to Gubber Blump
    note-ptBR Fale com Gubber Blump
    accept 1138
step
    path seq 1439 36.7,45.12
    goto 1439 36.62,45.6
    note-enUS Talk to Gwennyth Bly'Leggonde
    note-ptBR Fale com Gwennyth Bly'Leggonde
    turnin 4681
step
    goto 1439 37.32,43.64
    note-enUS Talk to Barithras Moonshade
    note-ptBR Fale com Barithras Moonshade
    accept 947
step
    goto 1439 37.7,43.39
    note-enUS Talk to Sentinel Glynda Nal'Shea
    note-ptBR Fale com Sentinel Glynda Nal'Shea
    accept 4811
step
    goto 1439 38.84,43.42
    note-enUS Talk to Tharnariun Treetender
    note-ptBR Fale com Tharnariun Treetender
    turnin 2118
    accept 2138
step
    goto 1439 39.37,43.48
    note-enUS Talk to Terenthis
    note-ptBR Fale com Terenthis
    turnin 984
    accept 985
    accept 4761
step
    only Nightelf Warrior Nightelf Rogue
    goto 1439 38.11,41.16
    note-enUS Talk to Gorbold Steelhand
    note-ptBR Fale com Gorbold Steelhand
    accept 982
step
    only Nightelf Warrior Nightelf Rogue
    path seq 1439 @436.36,6542.65
    goto 1439 @440.16,6545.84
    note-enUS Talk to Kurdram Stonehammer and Delfrum Flintbeard
    note-ptBR Fale com Kurdram Stonehammer e Delfrum Flintbeard
    train 2575
    note-enUS Train [Mining]
    note-ptBR Treine [Mining]
    train 2018
    note-enUS Train [Blacksmithing]
    note-ptBR Treine [Blacksmithing]
    note-enUS This will allow you to make [Rough Sharpening Stones] which increase your melee damage by 2 |only Warrior Rogue
    note-ptBR Isto permitirá fazer [Rough Sharpening Stones], que aumentam seu dano corpo a corpo em 2 |only Warrior Rogue
    note-enUS If you don't want to do this, skip this step
    note-ptBR Se não quiser fazer isso, pule esta etapa
step
    only Nightelf Warrior Nightelf Rogue
    goto 1439 @443.37,6538.28
    note-enUS Talk to Elisa Steelhand
    note-ptBR Fale com Elisa Steelhand
    note-enUS Buy a [Mining Pick] from her
    note-ptBR Compre uma [Mining Pick] dela
    collect 2901 1
    train 2575
step
    only !Nightelf !Warrior !Rogue
    goto 1439 38.11,41.16
    note-enUS Cast [Find Minerals] |only Nightelf Warrior Nightelf Rogue
    note-ptBR Lance [Find Minerals] |only Nightelf Warrior Nightelf Rogue
    train 2575 |only Nightelf Warrior Nightelf Rogue |opt
    note-enUS Talk to Gorbold Steelhand
    note-ptBR Fale com Gorbold Steelhand
    accept 982
step
    goto 1439 @472.32,6556.1
    note-enUS Talk to Alanndarian Nightsong
    note-ptBR Fale com Alanndarian Nightsong
    accept 2178
    turnin 2178
step
    only Nightelf Rogue
    goto 1439 37.58,40.35
    note-enUS Talk to Naram Longclaw
    note-ptBR Fale com Naram Longclaw
    vendor
    note-enUS Buy a [Jambiya] from him if you can afford it
    note-ptBR Compre uma [Jambiya] dele, se puder pagar
    collect 2207 1
step
    path seq 1439 @488.69,6564.83
    goto 1439 37.39,40.13
    note-enUS Talk to Dalmond inside
    note-ptBR Fale com Dalmond lá dentro
    vendor |opt
    note-enUS Buy as many [Small Brown Pouches] or [Brown Leather Satchels] as you need from him
    note-ptBR Compre quantas [Small Brown Pouches] ou [Brown Leather Satchels] precisar dele
    note-enUS Buy [Sharp Arrows] or [Heavy Shots] from him until your Quiver/Ammo Pouch is full |only Hunter
    note-ptBR Compre [Sharp Arrows] ou [Heavy Shots] dele até encher sua Aljava/Bolsa de Munição |only Hunter
    note-enUS Talk to Thundris Windweaver
    note-ptBR Fale com Thundris Windweaver
    turnin 4761
    accept 4762
    accept 954
    accept 958
step
    goto 1439 37.39,40.13
    note-enUS Talk to Thundris Windweaver
    note-ptBR Fale com Thundris Windweaver
    turnin 4761
    accept 4762
    accept 954
step
    goto 1439 37.39,40.13
    note-enUS Talk to Thundris Windweaver
    note-ptBR Fale com Thundris Windweaver
    turnin 4761
    accept 4762
step
    ifonquest 982
    path seq 1439 @620.35,6768.76 @602.66,6924.21 @537.82,7023.33 @404.85,7099.75 @310.53,7077.48 @620.35,6768.76 @602.66,6924.21
    goto 1439 38.21,28.75
    note-enUS Kill Darkshore Threshers. Loot them for their Thresher Eyes
    note-ptBR Mate Darkshore Threshers. Saqueie-os para obter os Thresher Eyes
    objective 1001/1 |opt
    note-enUS Press Escape, then go into -> Options -> Controls
    note-ptBR Pressione Esc e vá em -> Opções -> Controles
    note-enUS Check "Enable Interact Key" and bind the "Interact with Target" option to a key
    note-ptBR Marque "Enable Interact Key" e associe a opção "Interact with Target" a uma tecla
    note-enUS ==BE AWARE OF YOUR BREATH METER==
    note-ptBR ==FIQUE ATENTO À SUA BARRA DE FÔLEGO==
    note-enUS Swim underwater to the outside of the back of the boat
    note-ptBR Nade debaixo d'água até a parte externa da traseira do barco
    note-enUS On the arrow location, press your "Interact with Target" keybind to loot the Silver Dawning's Lockbox from outside the boat
    note-ptBR No local da seta, pressione o atalho "Interagir com o alvo" para saquear o Silver Dawning's Lockbox do lado de fora do barco
    note-enUS If you don't want to do this, swim underwater into the bottom floor of the boat then loot the Silver Dawning's Lockbox inside
    note-ptBR Se não quiser fazer isso, nade debaixo d'água até o andar inferior do barco e saqueie a Silver Dawning's Lockbox lá dentro
    objective 982/1
step
    ifonquest 982
    goto 1439 39.58,27.49
    note-enUS ==BE AWARE OF YOUR BREATH METER==
    note-ptBR ==FIQUE ATENTO À SUA BARRA DE FÔLEGO==
    note-enUS Swim underwater to the outside of the back of the boat
    note-ptBR Nade debaixo d'água até a parte externa da traseira do barco
    note-enUS On the arrow location, press your "Interact with Target" keybind to loot the Mist Veil's Lockbox from outside the boat
    note-ptBR No local da seta, pressione o atalho "Interagir com o alvo" para saquear o Mist Veil's Lockbox do lado de fora do barco
    note-enUS If you don't want to do this, swim underwater into the bottom floor of the boat then loot the Mist Veil's Lockbox inside
    note-ptBR Se não quiser fazer isso, nade debaixo d'água até o andar inferior do barco e saqueie a Mist Veil's Lockbox lá dentro
    objective 982/2
step
    ifonquest 1001
    path closest 1439 @310.53,7077.48 @404.85,7099.75 @537.82,7023.33 @310.53,7077.48 @404.85,7099.75 @537.82,7023.33 @602.66,6924.21 @620.35,6768.76 @602.66,6924.21 @620.35,6768.76
    note-enUS Kill Darkshore Threshers. Loot them for their Thresher Eyes
    note-ptBR Mate Darkshore Threshers. Saqueie-os para obter os Thresher Eyes
    objective 1001/1
step
    ifonquest 1001
    goto 1439 41.9,31.34
    note-enUS Click the Beached Sea Creature
    note-ptBR Clique na Beached Sea Creature
    accept 4723
step
    ifonquest 982
    goto 1439 41.9,31.34
    note-enUS Click the Beached Sea Creature
    note-ptBR Clique na Beached Sea Creature
    accept 4723
step
    ifcomplete 1001
    goto 1439 41.96,28.62
    note-enUS Click the Buzzbox 411 on the ground
    note-ptBR Clique na Buzzbox 411 no chão
    turnin 1001
    accept 1002
step
    ifturnedin 1001
    goto 1439 41.96,28.62
    note-enUS Click the Buzzbox 411 on the ground
    note-ptBR Clique na Buzzbox 411 no chão
    accept 1002
step
    ifonquest 954
    path seq 1439 44.19,33.7 43.51,33.21 44.63,36.32
    goto 1439 44.17,36.29 15
    note-enUS Kill Moonstalker Runts. Loot them for their Moonstalker Fangs
    note-ptBR Mate Moonstalker Runts. Saqueie-os para obter Moonstalker Fangs
    objective 1002/1 |opt
    note-enUS Kill Foreststrider Fledglings. Loot them for their Strider Meat
    note-ptBR Mate Foreststrider Fledglings. Saqueie-os para obter Strider Meat
    note-enUS Be careful as they [Flee] at <30% health
    note-ptBR Cuidado, eles usam [Flee] com <30% de vida
    collect 5469 5 |quest 2178 |q 2178/1 |opt
    note-enUS Travel toward Asterion
    note-ptBR Vá em direção a Asterion
    note-enUS Talk to Asterion
    note-ptBR Fale com Asterion
    note-enUS Avoid killing Wild Grells and Vile Sprites en-route
    note-ptBR Evite matar Wild Grells e Vile Sprites no caminho
    turnin 954
    accept 955
step
    ifonquest 954
    goto 1439 44.17,36.29
    note-enUS Talk to Asterion
    note-ptBR Fale com Asterion
    note-enUS Avoid killing Wild Grells and Vile Sprites en-route
    note-ptBR Evite matar Wild Grells e Vile Sprites no caminho
    turnin 954
step
    ifonquest 955
    path closest 1439 44.53,36.59 45.33,39.39 46.1,36.54 44.53,36.59 44.44,37.4 44.44,38.2 44.49,39.01 44.82,39.71 45.33,39.39 45.17,38.65 45.09,37.87 45.49,37.02 45.83,36.79 46.1,36.54 46.91,36.17 47.43,36.15 47.02,37.08 47.17,37.58 45.83,36.81
    note-enUS Kill Wild Grells and Vile Sprites. Loot them for their Grell Earrings
    note-ptBR Mate Wild Grells e Vile Sprites. Saqueie-os para obter Grell Earrings
    note-enUS Avoid killing Deth'ryll Satyrs for now
    note-ptBR Evite matar Deth'ryll Satyrs por enquanto
    objective 955/1
step
    ifcomplete 955
    goto 1439 44.17,36.29
    note-enUS Talk to Asterion
    note-ptBR Fale com Asterion
    turnin 955
    accept 956
step
    ifturnedin 955
    goto 1439 44.17,36.29
    note-enUS Talk to Asterion
    note-ptBR Fale com Asterion
    accept 956
step
    ifturnedin 955
    path closest 1439 45.39,36.47 45.43,39.77 47.37,36.77 45.39,36.47 45.94,37.8 45.94,38.04 46.53,39.13 45.43,39.77 47.26,37.67 47.92,37.23 47.37,36.77
    abandon 955 |opt
    note-enUS Abandon Bashal'Aran
    note-ptBR Abandone Bashal'Aran
    note-enUS Kill Deth'ryll Satyrs. Loot them for the Ancient Moonstone Seal
    note-ptBR Mate Deth'ryll Satyrs. Saqueie-os para obter o Ancient Moonstone Seal
    note-enUS Be aware that they do not have dynamic respawns
    note-ptBR Saiba que eles não têm ressurgimento dinâmico
    objective 956/1
step
    ifcomplete 956
    goto 1439 44.17,36.29
    note-enUS Talk to Asterion
    note-ptBR Fale com Asterion
    turnin 956
    accept 957
step
    ifturnedin 956
    goto 1439 44.17,36.29
    note-enUS Talk to Asterion
    note-ptBR Fale com Asterion
    accept 957
step
    only Nightelf Dwarf Human Hunter
    path seq 1439 44.53,36.59 45.33,39.39 46.1,36.54 44.53,36.59 44.44,37.4 44.44,38.2 44.49,39.01 44.82,39.71 45.33,39.39 45.17,38.65 45.09,37.87 45.49,37.02 45.83,36.79 46.1,36.54 46.91,36.17 47.43,36.15 47.02,37.08 47.17,37.58
    goto 1439 45.83,36.81 50
    level 13
    note-enUS Grind to level 13
    note-ptBR Mate monstros até o nível 13
step
    path seq 1439 43.51,33.21
    goto 1439 47.31,48.68
    note-enUS Kill Foreststrider Fledglings. Loot them for their Strider Meat
    note-ptBR Mate Foreststrider Fledglings. Saqueie-os para obter Strider Meat
    note-enUS Be careful as they [Flee] at <30% health
    note-ptBR Cuidado, eles usam [Flee] com <30% de vida
    collect 5469 5 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Moonstalker Runts. Loot them for their Moonstalker Fangs
    note-ptBR Mate Moonstalker Runts. Saqueie-os para obter Moonstalker Fangs
    objective 1002/1 |opt
    note-enUS Kill Moonkin. Loot them for their [Small Eggs]
    note-ptBR Mate Moonkin. Saqueie-os para obter [Small Eggs]
    note-enUS This will be used to level your [Cooking] to 10 later
    note-ptBR Isto será usado para subir seu [Cooking] até 10 mais tarde
    collect 6889 10 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Moonkin. Loot them for their [Small Eggs]
    note-ptBR Mate Moonkin. Saqueie-os para obter [Small Eggs]
    note-enUS This will be used to level your [Cooking] to 50 later
    note-ptBR Isto será usado para subir seu [Cooking] até 50 mais tarde
    note-enUS Don't go out of your way to farm this now. Just remember to hold onto the eggs and start thinking how many skillups you still need to reach 50 cooking
    note-ptBR Não saia do caminho para farmar isso agora. Apenas guarde os ovos e comece a calcular quantos pontos ainda faltam para chegar a 50 em culinária
    collect 6889 50 |quest 90 |q 90/1 |opt
    note-enUS Kill Moonkin. Loot them for their [Small Eggs]
    note-ptBR Mate Moonkin. Saqueie-os para obter [Small Eggs]
    note-enUS This will be used to level your [Cooking] to 50 later
    note-ptBR Isto será usado para subir seu [Cooking] até 50 mais tarde
    note-enUS Don't go out of your way to farm this now. Just remember to hold onto the eggs and start thinking how many skillups you still need to reach 50 cooking
    note-ptBR Não saia do caminho para farmar isso agora. Apenas guarde os ovos e comece a calcular quantos pontos ainda faltam para chegar a 50 em culinária
    collect 6889 50 |quest 90 |q 90/1 |opt
    note-enUS Travel up to the Mysterious Red Crystal
    note-ptBR Suba até o Mysterious Red Crystal
    note-enUS Be careful of the two group of 2 Raging Moonkins west of the Mysterious Red Crystal as the duos closest to each other are leashed together
    note-ptBR Cuidado com os dois grupos de 2 Raging Moonkins a oeste do Mysterious Red Crystal, pois as duplas mais próximas estão ligadas entre si
    objective 4811/1
step
    only Nightelf Hunter Druid Warrior
    goto 1439 37.7,43.39 |only Nightelf Hunter Druid Warrior
    goto 1439 37.7,43.39
    hearth |only Nightelf Hunter Warrior Druid |opt
    note-enUS Hearth to Auberdine |only Nightelf Hunter Warrior Druid
    note-ptBR Use a pedra de regresso para Auberdine |only Nightelf Hunter Warrior Druid
    note-enUS Return to Auberdine |only Nightelf Hunter Druid Warrior
    note-ptBR Volte para Auberdine |only Nightelf Hunter Druid Warrior
    note-enUS Talk to Sentinel Glynda Nal'Shea
    note-ptBR Fale com Sentinel Glynda Nal'Shea
    turnin 4811
    accept 4812
step
    only Hunter Druid Warrior
    goto 1439 37.7,43.39
    note-enUS Talk to Sentinel Glynda Nal'Shea
    note-ptBR Fale com Sentinel Glynda Nal'Shea
    turnin 4811
    accept 4812
step
    only Nightelf Hunter Druid Warrior !Hunter
    ifturnedin 4811
    goto 1439 37.7,43.39
    note-enUS Talk to Sentinel Glynda Nal'Shea
    note-ptBR Fale com Sentinel Glynda Nal'Shea
    accept 4812
step
    only Nightelf Hunter Druid Warrior
    ifturnedin 4811
    goto 1439 37.77,44
    note-enUS Use the [Empty Water Tube] at the Auberdine moonwell
    note-ptBR Use o [Empty Water Tube] no moonwell de Auberdine
    objective 4812/1
    use 14338
step
    only Nightelf Hunter Druid Warrior
    ifturnedin 4811
    goto 1439 47.31,48.68
    note-enUS Kill Foreststrider Fledglings. Loot them for their Strider Meat |only Nightelf Hunter Druid Warrior
    note-ptBR Mate Foreststrider Fledglings. Saqueie-os para obter Strider Meat |only Nightelf Hunter Druid Warrior
    note-enUS Be careful as they [Flee] at <30% health |only Nightelf Hunter Druid Warrior
    note-ptBR Cuidado, eles usam [Flee] com <30% de vida |only Nightelf Hunter Druid Warrior
    collect 5469 5 |quest 2178 |q 2178/1 |only Nightelf Hunter Druid Warrior |opt
    note-enUS Kill Moonkin. Loot them for their [Small Eggs] |only Nightelf Hunter Druid Warrior
    note-ptBR Mate Moonkin. Saqueie-os para obter [Small Eggs] |only Nightelf Hunter Druid Warrior
    note-enUS This will be used to level your [Cooking] to 10 later |only Nightelf Hunter Druid Warrior
    note-ptBR Isto será usado para subir seu [Cooking] até 10 mais tarde |only Nightelf Hunter Druid Warrior
    collect 6889 10 |quest 2178 |q 2178/1 |only Nightelf Hunter Druid Warrior |opt
    note-enUS Kill Moonkin. Loot them for their [Small Eggs] |only Nightelf Hunter Druid Warrior
    note-ptBR Mate Moonkin. Saqueie-os para obter [Small Eggs] |only Nightelf Hunter Druid Warrior
    note-enUS This will be used to level your [Cooking] to 50 later |only Nightelf Hunter Druid Warrior
    note-ptBR Isto será usado para subir seu [Cooking] até 50 mais tarde |only Nightelf Hunter Druid Warrior
    note-enUS Don't go out of your way to farm this now. Just remember to hold onto the eggs and start thinking how many skillups you still need to reach 50 cooking |only Nightelf Hunter Druid Warrior
    note-ptBR Não saia do caminho para farmar isso agora. Apenas guarde os ovos e comece a calcular quantos pontos ainda faltam para chegar a 50 em culinária |only Nightelf Hunter Druid Warrior
    collect 6889 50 |quest 90 |q 90/1 |only Nightelf Hunter Druid Warrior |opt
    note-enUS Kill Moonstalker Runts. Loot them for their Moonstalker Fangs |only Nightelf Hunter Druid Warrior
    note-ptBR Mate Moonstalker Runts. Saqueie-os para obter Moonstalker Fangs |only Nightelf Hunter Druid Warrior
    objective 1002/1 |only Nightelf Hunter Druid Warrior |opt
    note-enUS Click the Mysterious Red Crystal
    note-ptBR Clique no Mysterious Red Crystal
    note-enUS Be careful of the two group of 2 Raging Moonkins west of the Mysterious Red Crystal as the duos closest to each other are leashed together
    note-ptBR Cuidado com os dois grupos de 2 Raging Moonkins a oeste do Mysterious Red Crystal, pois as duplas mais próximas estão ligadas entre si
    turnin 4812
    accept 4813
step
    only Nightelf Hunter Druid Warrior
    ifskillbelow cooking 10
    ifturnedin 4811
    path closest 1439 46.92,48.63 45.34,54.34 45.11,49.18 45.32,44.76 46.92,48.63 46.23,49.58 46.11,50.83 45.77,51.56 45.65,52.73 45.34,54.34 44.82,53.6 44.4,52.14 44.42,50.77 45.09,50.41 45.11,49.18 44.58,48.55 44.31,47.9 43.58,46.77 42.24,46.11 42.72,45.37 43.1,44.4 45.32,44.76
    note-enUS Kill Moonkin. Loot them for their [Small Eggs]
    note-ptBR Mate Moonkin. Saqueie-os para obter [Small Eggs]
    note-enUS This will be used to level your [Cooking] to 10 later
    note-ptBR Isto será usado para subir seu [Cooking] até 10 mais tarde
    collect 6889 10 |quest 2178 |q 2178/1
step
    only Nightelf !Hunter Druid Warrior
    ifturnedin 4811
    goto 1439 37.7,43.39 |only Nightelf !Hunter Druid Warrior
    goto 1439 @472.32,6438.64
    hearth |only Nightelf !Hunter Warrior Druid |opt
    note-enUS Hearth to Auberdine |only Nightelf !Hunter Warrior Druid
    note-ptBR Use a pedra de regresso para Auberdine |only Nightelf !Hunter Warrior Druid
    note-enUS Return to Auberdine |only Nightelf !Hunter Druid Warrior
    note-ptBR Volte para Auberdine |only Nightelf !Hunter Druid Warrior
    note-enUS Talk to Sentinel Glynda Nal'Shea
    note-ptBR Fale com Sentinel Glynda Nal'Shea
    turnin 4813 |reward 3
step
    only Nightelf !Hunter Druid Warrior
    ifturnedin 4811
    goto 1439 @472.32,6438.64
    note-enUS Talk to Sentinel Glynda Nal'Shea
    note-ptBR Fale com Sentinel Glynda Nal'Shea
    turnin 4813 |reward 3
step
    only Nightelf !Hunter Druid Warrior
    ifcomplete 982
    goto 1439 38.11,41.16
    note-enUS Equip the [Oakthrush Staff] |only Druid Warrior
    note-ptBR Equipe o [Oakthrush Staff] |only Druid Warrior
    use 15397 |only Druid Warrior |opt
    note-enUS Talk to Gorbold Steelhand
    note-ptBR Fale com Gorbold Steelhand
    turnin 982
step
    only Nightelf !Hunter Druid Warrior
    ifturnedin 4811
    path closest 1439 39.9,54.74 40.18,56.23 39.27,53.09 39.75,53.44 40.23,54.33 39.9,54.74 40.18,56.23 39.39,56.67 39.19,56.38 39.96,55.3 39.33,54.08
    note-enUS Kill Foreststrider Fledglings. Loot them for their Strider Meat |only Druid
    note-ptBR Mate Foreststrider Fledglings. Saqueie-os para obter Strider Meat |only Druid
    note-enUS Be careful as they [Flee] at <30% health |only Druid
    note-ptBR Cuidado, eles usam [Flee] com <30% de vida |only Druid
    collect 5469 5 |quest 2178 |q 2178/1 |only Druid |opt
    note-enUS Kill Blackwood Pathfinders and Blackwood Windtalkers
    note-ptBR Mate Blackwood Pathfinders e Blackwood Windtalkers
    objective 985/1
    objective 985/2
step
    only Nightelf !Hunter Druid Warrior
    ifturnedin 4811
    goto 1439 37.1,62.17
    note-enUS Kill Rabid Thistle Bears |only Nightelf !Hunter Druid Warrior
    note-ptBR Mate Rabid Thistle Bears |only Nightelf !Hunter Druid Warrior
    note-enUS Be careful as they cast [Rabies] if you dont kill them fast enough (Instant Melee: Reduces ALL health regen by 50% for 10 Minutes) |only Nightelf !Hunter Druid Warrior
    note-ptBR Cuidado, eles lançam [Rabies] se você não os matar rápido (Instantâneo corpo a corpo: reduz TODA a regeneração de vida em 50% por 10 minutos) |only Nightelf !Hunter Druid Warrior
    objective 2138/1 |only Nightelf !Hunter Druid Warrior |opt
    note-enUS Click the Beached Sea Turtle
    note-ptBR Clique na Beached Sea Turtle
    accept 4722
step
    ifturnedin 4811
    goto 1439 40.3,59.73
    note-enUS Talk to Sentinel Tysha Moonblade
    note-ptBR Fale com Sentinel Tysha Moonblade
    accept 953
step
    only !Nightelf !Druid !Warrior
    ifskillbelow cooking 10
    path closest 1439 46.92,48.63 45.34,54.34 45.11,49.18 45.32,44.76 46.92,48.63 46.23,49.58 46.11,50.83 45.77,51.56 45.65,52.73 45.34,54.34 44.82,53.6 44.4,52.14 44.42,50.77 45.09,50.41 45.11,49.18 44.58,48.55 44.31,47.9 43.58,46.77 42.24,46.11 42.72,45.37 43.1,44.4 45.32,44.76
    note-enUS Kill Moonstalker Runts and Moonstalkers. Loot them for their Moonstalker Fangs
    note-ptBR Mate Moonstalker Runts e Moonstalkers. Saqueie-os para obter Moonstalker Fangs
    objective 1002/1 |opt
    note-enUS Kill Moonkin. Loot them for their [Small Eggs]
    note-ptBR Mate Moonkin. Saqueie-os para obter [Small Eggs]
    note-enUS This will be used to level your [Cooking] to 10 later
    note-ptBR Isto será usado para subir seu [Cooking] até 10 mais tarde
    collect 6889 10 |quest 2178 |q 2178/1
step
    path seq 1439 42.02,58.87 43.22,59.69 43.07,62.45 42.49,60.68 42.02,58.87 42.31,58.65 42.45,58.24 43.22,59.69 43.45,60.13 43.78,60.27 43.07,62.45 43.1,62.56 42.79,62.17
    goto 1439 42.49,60.68 50
    note-enUS Kill Anaya Dawnrunner. Loot her for her Pendant
    note-ptBR Mate Anaya Dawnrunner. Saqueie-a para obter o pingente dela
    objective 963/1
step
    ifonquest 958
    path seq 1439 42.67,57.39 41.99,62.46 44.07,60.51 42.67,57.39 41.71,57.89 41.6,59.77 42.06,61.2 41.99,62.46 42.77,63.42 43.25,63.29 43.95,62.19 44.07,60.51 43.41,59.78
    goto 1439 43.79,58.96 55
    note-enUS Kill Cursed Highbornes, Writhing Highbornes and Wailing Highbornes. Loot them for their Relics
    note-ptBR Mate Cursed Highbornes, Writhing Highbornes e Wailing Highbornes. Saqueie-os para obter as relíquias
    objective 958/1
step
    ifnotturnedin 4811
    goto 1439 40.3,59.73
    note-enUS Talk to Sentinel Tysha Moonblade
    note-ptBR Fale com Sentinel Tysha Moonblade
    accept 953
step
    ifonquest 953
    goto 1439 42.65,63.15
    note-enUS Click the The Fall of Ameth'Aran
    note-ptBR Clique em The Fall of Ameth'Aran
    objective 953/2
step
    only Warrior Rogue Priest
    ifonquest 957
    goto 1439 42.37,61.81
    note-enUS Click the Ancient Flame
    note-ptBR Clique na Ancient Flame
    objective 957/1
step
    ifonquest 953
    goto 1439 @105.52,5770.1
    note-enUS Click the The Lay of Ameth'Aran
    note-ptBR Clique em The Lay of Ameth'Aran
    objective 953/1
step
    ifonquest 98025
    goto 1439 @-18.1,5779.8
    note-enUS Kill Jai'vhanel. Loot it for the Feather of Jai'vhanel
    note-ptBR Mate Jai'vhanel. Saqueie-o para obter a Feather of Jai'vhanel
    objective 98025/1
step
    ifcomplete 953
    goto 1439 40.3,59.73
    note-enUS Talk to Sentinel Tysha Moonblade
    note-ptBR Fale com Sentinel Tysha Moonblade
    turnin 953
step
    goto 1439 37.1,62.17
    note-enUS Kill Foreststrider Fledglings. Loot them for their Strider Meat |only Warrior Rogue
    note-ptBR Mate Foreststrider Fledglings. Saqueie-os para obter Strider Meat |only Warrior Rogue
    note-enUS Be careful as they [Flee] at <30% health |only Warrior Rogue
    note-ptBR Cuidado, eles usam [Flee] com <30% de vida |only Warrior Rogue
    collect 5469 5 |quest 2178 |q 2178/1 |only Warrior Rogue |opt
    note-enUS Kill Moonstalker Runts and Moonstalkers. Loot them for their Moonstalker Fangs
    note-ptBR Mate Moonstalker Runts e Moonstalkers. Saqueie-os para obter Moonstalker Fangs
    objective 1002/1 |opt
    note-enUS Kill Rabid Thistle Bears
    note-ptBR Mate Rabid Thistle Bears
    note-enUS Be careful as they cast [Rabies] if you dont kill them fast enough (Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)
    note-ptBR Cuidado, eles lançam [Rabies] se você não os matar rápido (Instantâneo corpo a corpo: reduz TODA a regeneração de vida em 50% por 10 minutos)
    objective 2138/1 |opt
    note-enUS Click the Beached Sea Turtle
    note-ptBR Clique na Beached Sea Turtle
    accept 4722
step
    path closest 1439 39.9,54.74 40.18,56.23 39.27,53.09 39.75,53.44 40.23,54.33 39.9,54.74 40.18,56.23 39.39,56.67 39.19,56.38 39.96,55.3 39.33,54.08
    note-enUS Kill Blackwood Pathfinders and Blackwood Windtalkers
    note-ptBR Mate Blackwood Pathfinders e Blackwood Windtalkers
    objective 985/1
    objective 985/2
step
    ifonquest 4723
    path seq 1439 36.7,45.12
    goto 1439 36.62,45.6
    note-enUS Kill Foreststrider Fledglings. Loot them for their Strider Meat
    note-ptBR Mate Foreststrider Fledglings. Saqueie-os para obter Strider Meat
    note-enUS Be careful as they [Flee] at <30% health
    note-ptBR Cuidado, eles usam [Flee] com <30% de vida
    collect 5469 5 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Moonstalker Runts. Loot them for their Moonstalker Fangs
    note-ptBR Mate Moonstalker Runts. Saqueie-os para obter Moonstalker Fangs
    objective 1002/1 |opt
    note-enUS Return to Auberdine
    note-ptBR Volte para Auberdine
    note-enUS Talk to Gwennyth Bly'Leggonde
    note-ptBR Fale com Gwennyth Bly'Leggonde
    turnin 4722
    turnin 4723
step
    goto 1439 @577.38,6371.35
    note-enUS Talk to Gubber Blump
    note-ptBR Fale com Gubber Blump
    accept 1138
step
    only !Nightelf
    ifcomplete 963
    path seq 1439 36.81,44.14 |only !Nightelf
    goto 1439 35.74,43.71 12 |only !Nightelf
    goto 1439 35.74,43.71
    note-enUS Return to Cerellean Whiteclaw on the dock |only !Nightelf
    note-ptBR Volte para Cerellean Whiteclaw no cais |only !Nightelf
    note-enUS Talk to Cerellean Whiteclaw
    note-ptBR Fale com Cerellean Whiteclaw
    note-enUS You may need to wait out his RP if someone else just turned in
    note-ptBR Talvez você precise esperar o RP dele se alguém acabou de entregar
    turnin 963
step
    ifonquest 98025
    goto 1439 @472.9,6439.8
    note-enUS Talk to Sentinel Glynda Nal'Shea
    note-ptBR Fale com Sentinel Glynda Nal'Shea
    turnin 98025
    turnin 4813 |reward 3 |only Nightelf Hunter
step
    only Nightelf Hunter
    goto 1439 @472.9,6439.8
    note-enUS Talk to Sentinel Glynda Nal'Shea
    note-ptBR Fale com Sentinel Glynda Nal'Shea
    turnin 4813 |reward 3
step
    ifonquest 4811
    goto 1439 37.7,43.39
    note-enUS Equip the [Oakthrush Staff] |only Nightelf Hunter
    note-ptBR Equipe o [Oakthrush Staff] |only Nightelf Hunter
    use 15397 |only Nightelf Hunter |opt
    note-enUS Talk to Sentinel Glynda Nal'Shea
    note-ptBR Fale com Sentinel Glynda Nal'Shea
    turnin 4811
    accept 4812
step
    ifcomplete 4812
    goto 1439 37.7,43.39
    note-enUS Talk to Sentinel Glynda Nal'Shea
    note-ptBR Fale com Sentinel Glynda Nal'Shea
    turnin 4812
step
    goto 1439 37.77,44
    note-enUS Use the [Empty Water Tube] at the Auberdine moonwell
    note-ptBR Use o [Empty Water Tube] no moonwell de Auberdine
    objective 4812/1
    use 14338
step
    ifcomplete 2138
    goto 1439 38.84,43.42
    note-enUS Talk to Tharnariun Treetender
    note-ptBR Fale com Tharnariun Treetender
    turnin 2138
    accept 2139
step
    ifturnedin 2138
    goto 1439 38.84,43.42
    note-enUS Talk to Tharnariun Treetender
    note-ptBR Fale com Tharnariun Treetender
    accept 2139
step
    goto 1439 39.37,43.48
    note-enUS Talk to Terenthis
    note-ptBR Fale com Terenthis
    turnin 985
    accept 986
step
    path seq 1439 39.28,43.12 39.16,43.19
    goto 1439 39.04,43.55
    note-enUS Go upstairs
    note-ptBR Suba as escadas
    note-enUS Talk to Sentinel Elissa Starbreeze upstairs
    note-ptBR Fale com Sentinel Elissa Starbreeze no andar de cima
    accept 965
step
    only Nightelf
    goto 1439 38.11,41.16
    note-enUS Talk to Gorbold Steelhand
    note-ptBR Fale com Gorbold Steelhand
    vendor |opt
    note-enUS Buy [Mild Spices] from him until you have [Mild Spices] equal or more than the amount of [Small Eggs] that you currently have
    note-ptBR Compre [Mild Spices] dele até ter [Mild Spices] em quantidade igual ou maior que a de [Small Eggs] que você tem agora
    collect 2678 50 |quest 90 |q 90/1 |opt
    collect 6889 50 |quest 90 |q 90/1 |opt
    note-enUS Talk to Gorbold Steelhand
    note-ptBR Fale com Gorbold Steelhand
    vendor
    note-enUS Buy a [Shiny Bauble] and three [Nightcrawlers] from him. You will need them for a quest in Stormwind soon
    note-ptBR Compre um [Shiny Bauble] e três [Nightcrawlers] dele. Você vai precisar deles para uma missão em Stormwind em breve
    collect 6529 1
    collect 6530 3
step
    goto 1439 38.11,41.16
    note-enUS Talk to Gorbold Steelhand
    note-ptBR Fale com Gorbold Steelhand
    accept 982
step
    ifcomplete 982
    goto 1439 38.11,41.16
    note-enUS Talk to Gorbold Steelhand
    note-ptBR Fale com Gorbold Steelhand
    turnin 982
step
    ifskillbelow cooking 50
    goto 1439 37.51,41.67
    note-enUS Travel toward the Campfire on the ground
    note-ptBR Vá em direção à fogueira no chão
    note-enUS Start [Cooking] [Herb Baked Eggs]. Do this until your [Cooking] has reached at least level 10
    note-ptBR Comece a fazer [Herb Baked Eggs] com [Cooking]. Continue até seu [Cooking] chegar pelo menos ao nível 10
    note-enUS Continue leveling your [Cooking] until you run out of [Small Eggs]
    note-ptBR Continue subindo sua [Cooking] até acabarem seus [Small Eggs]
    note-enUS There is a quest in Duskwood later requiring your [Cooking] to be 50 or higher. You can also cook this when you get on the boat soon
    note-ptBR Mais tarde há uma missão em Duskwood que exige [Cooking] 50 ou mais. Você também pode cozinhar isso quando estiver no barco em breve
    note-enUS Skip this step once you've made all [Herb Baked Eggs]
    note-ptBR Pule este passo quando tiver feito todos os [Herb Baked Eggs]
step
    goto 1439 @472.32,6556.1
    note-enUS Talk to Alanndarian Nightsong
    note-ptBR Fale com Alanndarian Nightsong
    accept 2178
    turnin 2178
step
    ifcomplete 958
    goto 1439 37.39,40.13
    note-enUS Talk to Thundris Windweaver
    note-ptBR Fale com Thundris Windweaver
    turnin 958
    accept 97914 |only Nightelf
step
    only Nightelf
    ifcomplete 963
    path seq 1439 36.81,44.14 |only Nightelf
    goto 1439 35.74,43.71 12 |only Nightelf
    goto 1439 35.74,43.71
    note-enUS Return to Cerellean Whiteclaw on the dock |only Nightelf
    note-ptBR Volte para Cerellean Whiteclaw no cais |only Nightelf
    note-enUS Talk to Cerellean Whiteclaw
    note-ptBR Fale com Cerellean Whiteclaw
    note-enUS You may need to wait out his RP if someone else just turned in
    note-ptBR Talvez você precise esperar o RP dele se alguém acabou de entregar
    turnin 963
step
    only Nightelf
    goto 1439 @929.1,6543.6
    note-enUS Level your [First Aid] while waiting for the boat |only Rogue Warrior
    note-ptBR Suba seu [First Aid] enquanto espera o barco |only Rogue Warrior
    zone 1453
    note-enUS Take the boat to Stormwind City
    note-ptBR Pegue o barco para Stormwind City
step
    only Nightelf
    goto 1453 @1268.8,-8540.7
    note-enUS Talk to Gilbert Gray
    note-ptBR Fale com Gilbert Gray
    accept 95065
    turnin 95065
step
    only Nightelf
    goto 1453 @1194.5,-8332.1
    note-enUS Talk to Manifest Clerk Philmor
    accept 97220
step
    only Nightelf
    path seq 1453 @1194.2,-8360.9 @1076.3,-8408.5 @1001.4,-8499.7 @985.5,-8471.3 @960.1,-8501.8 @981.2,-8581.8 |only Nightelf
    goto 1453 @875.5,-8680.9 10 |only Nightelf
    goto 1453 @719.67,-8550.3
    note-enUS Exit the Stormwind Harbor |only Nightelf
    note-ptBR Saia do Stormwind Harbor |only Nightelf
    note-enUS Talk to Baros Alexston
    note-ptBR Fale com Baros Alexston
    turnin 97914
    accept 97926
    accept 399
step
    only Nightelf Druid
    goto 1453 @1347.62,-8591.22
    note-enUS Talk to Theridran
    note-ptBR Fale com Theridran
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Nightelf Hunter
    goto 1453 @552.78,-8415.71
    note-enUS Talk to Einris Brightspear
    note-ptBR Fale com Einris Brightspear
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Nightelf Hunter
    goto 1453 @553.22,-8422.23
    note-enUS Talk to Karrina Mekenda
    note-ptBR Fale com Karrina Mekenda
    trainer
    note-enUS Train your pet spells
    note-ptBR Treine your pet spells
step
    only Nightelf Priest
    goto 1453 @862.89,-8519.61
    note-enUS Talk to Brother Joshua
    note-ptBR Fale com Brother Joshua
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Nightelf Rogue
    goto 1453 @377.47,-8752.39
    note-enUS Talk to Osborne
    note-ptBR Fale com Osborne
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Nightelf Warrior
    path seq 1453 @358.25,-8728.28 @302.6,-8685.53
    goto 1453 @323.3,-8689.29
    note-enUS Talk to Wu or Ilsa
    note-ptBR Fale com Wu ou Ilsa
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Nightelf Rogue Nightelf Warrior
    goto 1453 @613.12,-8795.96
    note-enUS Talk to Woo Ping
    note-ptBR Fale com Woo Ping
    train 201 |only Rogue
    note-enUS Train 1h Swords |only Rogue
    note-ptBR Treine 1h Swords |only Rogue
    train 202 |only Warrior
    note-enUS Train 2h Swords |only Warrior
    note-ptBR Treine 2h Swords |only Warrior
step
    only Nightelf
    goto 1453 @568.7,-8848.7
    note-enUS Talk to Elaine Trias
    turnin 97220
    accept 97222
step
    only Nightelf
    goto 1453 @569.4,-8860.3
    note-enUS Go UPSTAIRS and use the [Shipment] in front of the Gatehouse Door
    note-ptBR Vá para CIMA e use o [Shipment] na frente da Gatehouse Door
    use 277198
    objective 97222/1
step
    only Nightelf
    goto 1453 @566.9,-8847.8
    note-enUS Talk to Elaine Trias
    turnin 97222
step
    only Human
    goto 1453 @489.99,-8835.76
    note-enUS Talk to Dungar Longdrink
    note-ptBR Fale com Dungar Longdrink
    turnin 6261
    accept 6285
step
    only !Skyborne
    goto 1453 @490.03,-8835.82
    note-enUS Talk to Dungar Longdrink
    note-ptBR Fale com Dungar Longdrink
    fly 1436 |only !Nightelf
    note-enUS Fly to Westfall |only !Nightelf
    note-ptBR Voe para Westfall |only !Nightelf
    fp |only Nightelf
    note-enUS Get the Stormwind Flight Path |only Nightelf
    note-ptBR Pegue o ponto de voo de Stormwind |only Nightelf
step
    goto 1429 @875.96,-9814.4
    goto 1436 @918.42,-9851.5
    zone 1436 |opt
    note-enUS Travel to Westfall
    note-ptBR Vá até Westfall
    note-enUS Talk to Farmer Furlbrow
    note-ptBR Fale com Farmer Furlbrow
    accept 64
step
    goto 1436 @919.47,-9853.13
    note-enUS Talk to Verna Furlbrow
    note-ptBR Fale com Verna Furlbrow
    accept 36
    accept 151
step
    goto 1436 @1055.27,-10128.7 65
    note-enUS Travel to Saldean's Farm
    note-ptBR Vá até Saldean's Farm
    note-enUS Talk to Farmer Saldean
    note-ptBR Fale com Farmer Saldean
    accept 9
    accept 109 |only Nightelf
step
    goto 1436 @1042.67,-10111.67
    note-enUS Talk to Salma Saldean
    note-ptBR Fale com Salma Saldean
    turnin 36
    accept 38
    accept 22
step
    only Human
    goto 1436 @1021.67,-10500.63
    note-enUS Talk to Quartermaster Lewis
    note-ptBR Fale com Quartermaster Lewis
    turnin 6285
step
    goto 1436 @1045.12,-10508.8 |only Gnome Dwarf Nightelf
    goto 1436 @1045.12,-10508.8
    note-enUS Talk to Gryan Stoutmantle |only Gnome Dwarf Nightelf
    note-ptBR Fale com Gryan Stoutmantle |only Gnome Dwarf Nightelf
    turnin 109 |only Gnome Dwarf Nightelf |opt
    note-enUS Talk to Gryan Stoutmantle
    note-ptBR Fale com Gryan Stoutmantle
    accept 12
    turnin 98021 |only Skyborne
step
    goto 1436 @1041.97,-10511.13
    note-enUS Talk to Captain Danuvin
    note-ptBR Fale com Captain Danuvin
    accept 102
step
    only Human
    goto 1436 @1126.67,-10636.67
    note-enUS Talk to Scout Galiaan
    note-ptBR Fale com Scout Galiaan
    accept 153
step
    only !Human
    goto 1436 @1126.67,-10636.67
    note-enUS Talk to Scout Galiaan
    note-ptBR Fale com Scout Galiaan
    accept 153
step
    goto 1436 @1166.57,-10653.23
    note-enUS Talk to Innkeeper Heather
    note-ptBR Fale com Innkeeper Heather
    vendor
    note-enUS Buy food/water if needed
    note-ptBR Compre comida/água se precisar
step
    goto 1436 @1179.8,-10635.6
    note-enUS Talk to Alba Fairmoon
    note-ptBR Fale com Alba Fairmoon
    accept 92742
    accept 92744
step
    ifonquest 399
    goto 1436 @1602.67,-10629.67 75
    note-enUS Open the Sacks of Oats on the ground. Loot them for the Handful of Oats
    note-ptBR Abra os Sacks of Oats no chão. Saqueie-os para obter o Handful of Oats
    note-enUS You can usually find them near Farm Fences or Buildings
    note-ptBR Geralmente ficam perto das cercas das fazendas ou dos prédios
    objective 151/1 |opt
    note-enUS Kill Young Goretusks and Young Fleshrippers. Loot them for their Vulture Meat, Snouts and Livers
    note-ptBR Mate Young Goretusks e Young Fleshrippers. Saqueie-os para obter Vulture Meat, focinhos e fígados
    collect 729 3 |quest 38 |q 38/1 |opt
    collect 731 3 |quest 38 |q 38/1 |opt
    collect 723 8 |quest 22 |q 22/1 |opt
    note-enUS Kill Defias Trappers and Defias Smugglers. Loot them for their Red Leather Bandanas
    note-ptBR Mate Defias Trappers e Defias Smugglers. Saqueie-os para obter as Red Leather Bandanas
    objective 12/1 |opt
    objective 12/2 |opt
    objective 153/1 |opt
    note-enUS Travel to the Alexston's Farmstead
    note-ptBR Vá até Alexston's Farmstead
    note-enUS Work on completing the other quest objectives as you move there
    note-ptBR Vá completando os outros objetivos da missão no caminho
step
    ifonquest 399
    goto 1436 @1748.27,-10672.13
    note-enUS Kill Harvest Watchers located on any of the fields as you run by them
    note-ptBR Mate Harvest Watchers em qualquer um dos campos enquanto passa por eles
    note-enUS Loot them for their Okra and Flasks of Oil
    note-ptBR Saqueie-os para obter Okra e Flasks of Oil
    objective 9/1 |opt
    collect 732 3 |quest 38 |q 38/1 |opt
    collect 814 5 |quest 103 |q 103/1 |opt
    note-enUS Open Alexston's Chest. Loot it for A Simple Compass
    note-ptBR Abra o Alexston's Chest. Saqueie-o para obter A Simple Compass
    objective 399/1
step
    goto 1436 @1404.2,-10290.9
    use 254545
    note-enUS Use the [Well Water Sample Kit] at the Molsen Farm well
    note-ptBR Use o [Well Water Sample Kit] no poço de Molsen Farm
    objective 92742/2
step
    goto 1436 @1266.67,-9927.33 75
    note-enUS Kill Young Goretusks and Young Fleshrippers. Loot them for their Vulture Meat, Snouts and Livers
    note-ptBR Mate Young Goretusks e Young Fleshrippers. Saqueie-os para obter Vulture Meat, focinhos e fígados
    collect 729 3 |quest 38 |q 38/1 |opt
    collect 731 3 |quest 38 |q 38/1 |opt
    collect 723 8 |quest 22 |q 22/1 |opt
    note-enUS Kill Defias Trappers and Defias Smugglers. Loot them for their Red Leather Bandanas
    note-ptBR Mate Defias Trappers e Defias Smugglers. Saqueie-os para obter as Red Leather Bandanas
    objective 12/1 |opt
    objective 12/2 |opt
    objective 153/1 |opt
    note-enUS Travel to the Jansen Stead, work on the other quest objectives as you move there
    note-ptBR Vá até Jansen Stead, trabalhando nos outros objetivos da missão enquanto se move
step
    goto 1436 @1289.77,-9849.63
    note-enUS Open Furlbrow's Wardrobe. Loot it for Furlbrow's Pocket Watch
    note-ptBR Abra o Furlbrow's Wardrobe. Saqueie-o para obter o Furlbrow's Pocket Watch
    note-enUS You can loot Furlbrow's Wardrobe from outside if you angle your camera correctly
    note-ptBR Você pode saquear o Furlbrow's Wardrobe do lado de fora se posicionar a câmera corretamente
    note-enUS Be aware of Benny Blanco. He hits hard
    note-ptBR Cuidado com Benny Blanco. Ele bate forte
    objective 64/1
step
    path seq 1436 @1042.67,-9715 @1517.97,-9743 @1412.62,-9720.83 @1184.07,-9745.8 @1026.57,-9715.7 @1517.97,-9743 @1184.07,-9745.8 @1412.62,-9720.83 @1517.97,-9743 @1184.07,-9745.8
    goto 1436 @1028.32,-9710.33
    note-enUS Kill Riverpaw Gnolls and Riverpaw Scouts. Loot them for their Gnoll Paws
    note-ptBR Mate Riverpaw Gnolls e Riverpaw Scouts. Saqueie-os para obter Gnoll Paws
    objective 102/1
step
    path seq 1436 @1192.12,-9641.73 @1042.67,-9619.33 @1192.12,-9641.73 @1042.67,-9619.33 @1192.12,-9641.73
    goto 1436 @1042.67,-9619.33
    note-enUS Kill Murloc Raiders and Murloc Coastrunners. Loot them for their Eyes and Gills
    note-ptBR Mate Murloc Raiders e Murloc Coastrunners. Saqueie-os para obter olhos e guelras
    collect 730 3 |quest 38 |q 38/1
    objective 92744/1
step
    path seq 1436 @1004.87,-9716.87 @1013.62,-9861.53 @1192.12,-10175.13 @1019.57,-10204.3
    goto 1436 @1013.62,-9861.53
    note-enUS Open the Sacks of Oats on the ground. Loot them for the Handful of Oats
    note-ptBR Abra os Sacks of Oats no chão. Saqueie-os para obter o Handful of Oats
    note-enUS You can usually find them near Farm Fences or Buildings
    note-ptBR Geralmente ficam perto das cercas das fazendas ou dos prédios
    objective 151/1
step
    goto 1436 @1035.3,-9835.1
    use 254545
    note-enUS Use the [Well Water Sample Kit] at the Jansen Stead well
    note-ptBR Use o [Well Water Sample Kit] no poço de Jansen Stead
    objective 92742/1
step
    only Human Warlock
    ifonquest 184
    path seq 1436 @918.42,-9851.5
    goto 1436 @919.47,-9853.13
    note-enUS Talk to Farmer Furlbrow and Verna Furlbrow
    note-ptBR Fale com Farmer Furlbrow e Verna Furlbrow
    turnin 64
    turnin 184
    turnin 151
step
    path seq 1436 @918.42,-9851.5
    goto 1436 @919.47,-9853.13
    note-enUS Talk to Farmer Furlbrow and Verna Furlbrow
    note-ptBR Fale com Farmer Furlbrow e Verna Furlbrow
    turnin 64
    turnin 151
step
    ifcomplete 9
    goto 1436 @1055.27,-10128.7
    note-enUS Talk to Farmer Saldean
    note-ptBR Fale com Farmer Saldean
    vendor |opt
    note-enUS Vendor trash
    note-ptBR Venda o lixo
    note-enUS Do NOT sell [Murloc Eyes], [Goretusk Snouts], [Goretusk Livers] or [Stringy Vulture Meat]
    note-ptBR NÃO venda [Murloc Eyes], [Goretusk Snouts], [Goretusk Livers] nem [Stringy Vulture Meat]
    note-enUS Talk to Farmer Saldean
    note-ptBR Fale com Farmer Saldean
    turnin 9
step
    ifcomplete 22
    ifcomplete 38
    goto 1436 @1042.67,-10111.67
    note-enUS Talk to Salma Saldean
    note-ptBR Fale com Salma Saldean
    turnin 22
    turnin 38
step
    ifcomplete 22
    goto 1436 @1042.67,-10111.67
    note-enUS Talk to Salma Saldean
    note-ptBR Fale com Salma Saldean
    turnin 22
step
    ifcomplete 38
    goto 1436 @1042.67,-10111.67
    note-enUS Talk to Salma Saldean
    note-ptBR Fale com Salma Saldean
    turnin 38
step
    goto 1436 @1213.4,-10153.8
    note-enUS Talk to Ozwin Ironsprocket
    accept 92909
    turnin 92909
step
    ifnotturnedin 38
    path seq 1436 @1132.27,-10146.67 @1238.67,-9907.73 @1460.22,-10224.83 @1132.27,-10146.67 @1238.67,-9907.73 @1460.22,-10224.83 @1132.27,-10146.67 @1460.22,-10224.83
    goto 1436 @1238.67,-9907.73
    note-enUS Kill Harvest Watchers. Loot them for their Okra and Flasks of Oil
    note-ptBR Mate Harvest Watchers. Saqueie-os para obter Okra e Flasks of Oil
    objective 9/1
    collect 732 3 |quest 38 |q 38/1
    collect 814 5 |quest 103 |q 103/1
step
    ifturnedin 38
    path seq 1436 @1132.27,-10146.67 @1238.67,-9907.73 @1460.22,-10224.83 @1132.27,-10146.67 @1238.67,-9907.73 @1460.22,-10224.83 @1132.27,-10146.67 @1460.22,-10224.83
    goto 1436 @1238.67,-9907.73
    note-enUS Kill Harvest Watchers. Loot them for their Flasks of Oil
    note-ptBR Mate Harvest Watchers. Saqueie-os para obter Flasks of Oil
    objective 9/1
    collect 814 5 |quest 103 |q 103/1
step
    ifcomplete 9
    goto 1436 @1055.27,-10128.7
    note-enUS Talk to Farmer Saldean
    note-ptBR Fale com Farmer Saldean
    turnin 9
step
    goto 1436 @1213.4,-10153.8
    note-enUS Talk to Ozwin Ironsprocket
    accept 92909
    turnin 92909
step
    path seq 1436 @1179.52,-10382.57 @1138.22,-10474.97 @860.67,-10462.83 @904.07,-10038.87 @1104.62,-9848 @1298.52,-10028.13 @1340.52,-10401.93
    goto 1436 @1111.97,-10342.2
    note-enUS Kill Young Goretusks and Young Fleshrippers. Loot them for their Vulture Meat, Snouts and Livers
    note-ptBR Mate Young Goretusks e Young Fleshrippers. Saqueie-os para obter Vulture Meat, focinhos e fígados
    collect 729 3 |quest 38 |q 38/1
    collect 731 3 |quest 38 |q 38/1
    collect 723 8 |quest 22 |q 22/1
step
    goto 1436 @1055.27,-10128.7
    note-enUS Talk to Farmer Saldean
    note-ptBR Fale com Farmer Saldean
    turnin 9
step
    goto 1436 @1042.67,-10111.67
    note-enUS Talk to Salma Saldean
    note-ptBR Fale com Salma Saldean
    turnin 38
    turnin 22
step
    goto 1436 @1213.4,-10153.8
    note-enUS Talk to Ozwin Ironsprocket
    accept 92909
    turnin 92909
step
    goto 1436 @1324.2,-10490.4
    note-enUS Kill Defias Trappers and Defias Smugglers. Loot them for their Red Leather Bandanas
    note-ptBR Mate Defias Trappers e Defias Smugglers. Saqueie-os para obter as Red Leather Bandanas
    note-enUS It is a dynamic respawn area meaning if you kill enough they will keep respawning
    note-ptBR É uma área de respawn dinâmico, ou seja, se matar bastante eles continuarão reaparecendo
    objective 12/1 |opt
    objective 12/2 |opt
    objective 153/1 |opt
    note-enUS Kill Defias Trappers and Defias Smugglers. Loot them for their Red Leather Bandanas
    note-ptBR Mate Defias Trappers e Defias Smugglers. Saqueie-os para obter as Red Leather Bandanas
    note-enUS It is a dynamic respawn area meaning if you kill enough they will keep respawning
    note-ptBR É uma área de respawn dinâmico, ou seja, se matar bastante eles continuarão reaparecendo
    objective 12/1
    objective 12/2
    objective 153/1
step
    goto 1436 @1045.12,-10508.8
    note-enUS Talk to Gryan Stoutmantle
    note-ptBR Fale com Gryan Stoutmantle
    turnin 12
step
    goto 1436 @1045.12,-10508.8
    note-enUS Talk to Gryan Stoutmantle
    note-ptBR Fale com Gryan Stoutmantle
    accept 65
step
    goto 1436 @1041.97,-10511.13
    note-enUS Talk to Captain Danuvin
    note-ptBR Fale com Captain Danuvin
    turnin 102
step
    goto 1436 @1126.67,-10636.67
    note-enUS Talk to Scout Galiaan
    note-ptBR Fale com Scout Galiaan
    turnin 153
step
    goto 1436 @1179.8,-10635.6
    note-enUS Talk to Alba Fairmoon
    note-ptBR Fale com Alba Fairmoon
    turnin 92742
    turnin 92744
step
    hearth
    note-enUS Hearth to Stormwind
    note-ptBR Use a pedra de regresso para Stormwind
step
    goto 1436 @1037.42,-10628.27
    note-enUS Talk to Thor
    note-ptBR Fale com Thor
    fly 1453 |opt
    note-enUS Fly to Stormwind
    note-ptBR Voe para Stormwind
step
    only !Nightelf
    ifskillbelow cooking 50
    goto 1453 @596.4,-8831.7
    note-enUS Talk to Thurman Mullby
    note-ptBR Fale com Thurman Mullby
    note-enUS Buy a [Simple Wood] and a [Flint and Tinder] from him
    note-ptBR Compre um [Simple Wood] e um [Flint and Tinder] dele
    note-enUS This is used to make [Basic Campfires] on Boats to level your [Cooking] skill without losing time
    note-ptBR Isto é usado para fazer [Basic Campfires] nos barcos e subir sua habilidade de [Cooking] sem perder tempo
    note-enUS You need 50 [Cooking] for a quest in Duskwood later
    note-ptBR Você precisa de 50 em [Cooking] para uma missão em Duskwood mais tarde
    collect 4470 1
    collect 4471 1
step
    only Nightelf Hunter
    goto 1453 @706.15,-8795.15
    note-enUS Talk to Frederick Stover
    note-ptBR Fale com Frederick Stover
    note-enUS Buy a [Heavy Recurve Bow] from him. If you can afford to, buy a [Reinforced Bow] and a [Medium Quiver] as well
    note-ptBR Compre um [Heavy Recurve Bow] dele. Se tiver dinheiro, compre também um [Reinforced Bow] e uma [Medium Quiver]
    collect 3027 1
    collect 11362 1
    collect 3026 1
step
    only Rogue
    goto 1453 @377.47,-8752.39
    note-enUS Talk to Osborne
    note-ptBR Fale com Osborne
    train 1758
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warrior
    path seq 1453 @358.25,-8728.28 @302.6,-8685.53
    goto 1453 @323.3,-8689.29
    note-enUS Talk to Wu or Ilsa
    note-ptBR Fale com Wu ou Ilsa
    train 1160
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Hunter
    goto 1453 @552.78,-8415.71
    note-enUS Talk to Einris Brightspear inside
    note-ptBR Fale com Einris Brightspear lá dentro
    note-enUS If you just trained earlier, skip this step
    note-ptBR Se você treinou há pouco, pule esta etapa
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    ifcomplete 399
    goto 1453 @719.67,-8550.3
    note-enUS Talk to Baros Alexston
    note-ptBR Fale com Baros Alexston
    turnin 399
step
    only Nightelf Druid
    goto 1453 @1347.62,-8591.22
    note-enUS Talk to Theridran
    note-ptBR Fale com Theridran
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warlock
    path seq 1453 @988.44,-8942.15 |only Warlock
    goto 1453 @1015.33,-8978.9 15 |only Warlock
    goto 1453 @1029.89,-8971.06
    note-enUS Travel to The Slaughtered Lamb and go downstairs |only Warlock
    note-ptBR Vá até The Slaughtered Lamb e desça as escadas |only Warlock
    note-enUS Talk to Ursula Deline
    note-ptBR Fale com Ursula Deline
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
    train 6222
step
    only Mage
    goto 1453 @874.32,-9014.67 10 |only Mage
    goto 1453 @885.34,-9006.15
    note-enUS Travel to the Mage Tower |only Mage
    note-ptBR Vá até Mage Tower |only Mage
    note-enUS Talk to Elsharin
    note-ptBR Fale com Elsharin
    train 2137
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Paladin
    goto 1453 @809.52,-8579.22 20 |only Priest Paladin
    path seq 1453 @859.13,-8559.14
    goto 1453 @861.14,-8573.03
    note-enUS Travel to the Stormwind Cathedral |only Priest Paladin
    note-ptBR Vá até Stormwind Cathedral |only Priest Paladin
    note-enUS Talk to Arthur the Faithful
    note-ptBR Fale com Arthur the Faithful
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
    train 19742
step
    only Priest
    goto 1453 @862.89,-8519.61
    note-enUS Talk to Brother Joshua
    note-ptBR Fale com Brother Joshua
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
    train 8122
step
    only Nightelf
    hearth
    note-enUS Hearthstone to Auberdine
    note-ptBR Use a pedra de regresso para Auberdine
step
    only Nightelf
    goto 1439 @577.38,6371.35
    note-enUS Talk to Gubber Blump
    note-ptBR Fale com Gubber Blump
    accept 1138
step
    ifonquest 982
    goto 1439 38.21,28.75
    note-enUS Press Escape, then go into -> Options -> Controls
    note-ptBR Pressione Esc e vá em -> Opções -> Controles
    note-enUS Check "Enable Interact Key" and bind the "Interact with Target" option to a key
    note-ptBR Marque "Enable Interact Key" e associe a opção "Interact with Target" a uma tecla
    note-enUS ==BE AWARE OF YOUR BREATH METER==
    note-ptBR ==FIQUE ATENTO À SUA BARRA DE FÔLEGO==
    note-enUS Swim underwater to the outside of the back of the boat
    note-ptBR Nade debaixo d'água até a parte externa da traseira do barco
    note-enUS On the arrow location, press your "Interact with Target" keybind to loot the Silver Dawning's Lockbox from outside the boat
    note-ptBR No local da seta, pressione o atalho "Interagir com o alvo" para saquear o Silver Dawning's Lockbox do lado de fora do barco
    note-enUS If you don't want to do this, swim underwater into the bottom floor of the boat then loot the Silver Dawning's Lockbox inside
    note-ptBR Se não quiser fazer isso, nade debaixo d'água até o andar inferior do barco e saqueie a Silver Dawning's Lockbox lá dentro
    objective 982/1
step
    ifonquest 982
    goto 1439 39.58,27.49
    note-enUS ==BE AWARE OF YOUR BREATH METER==
    note-ptBR ==FIQUE ATENTO À SUA BARRA DE FÔLEGO==
    note-enUS Swim underwater to the outside of the back of the boat
    note-ptBR Nade debaixo d'água até a parte externa da traseira do barco
    note-enUS On the arrow location, press your "Interact with Target" keybind to loot the Mist Veil's Lockbox from outside the boat
    note-ptBR No local da seta, pressione o atalho "Interagir com o alvo" para saquear o Mist Veil's Lockbox do lado de fora do barco
    note-enUS If you don't want to do this, swim underwater into the bottom floor of the boat then loot the Mist Veil's Lockbox inside
    note-ptBR Se não quiser fazer isso, nade debaixo d'água até o andar inferior do barco e saqueie a Mist Veil's Lockbox lá dentro
    objective 982/2
step
    ifonquest 982
    goto 1439 41.9,31.34
    note-enUS Click the Beached Sea Creature
    note-ptBR Clique na Beached Sea Creature
    accept 4723
step
    path seq 1439 44.19,33.7 43.51,33.21
    goto 1439 47.31,48.68
    note-enUS Kill Moonstalker Runts and Moonstalkers. Loot them for their Moonstalker Fangs
    note-ptBR Mate Moonstalker Runts e Moonstalkers. Saqueie-os para obter Moonstalker Fangs
    objective 1002/1 |opt
    note-enUS Kill Foreststrider Fledglings. Loot them for their Strider Meat
    note-ptBR Mate Foreststrider Fledglings. Saqueie-os para obter Strider Meat
    note-enUS Be careful as they [Flee] at <30% health
    note-ptBR Cuidado, eles usam [Flee] com <30% de vida
    collect 5469 5 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Moonkin. Loot them for their [Small Eggs]
    note-ptBR Mate Moonkin. Saqueie-os para obter [Small Eggs]
    note-enUS This will be used to level your [Cooking] to 50 later
    note-ptBR Isto será usado para subir seu [Cooking] até 50 mais tarde
    note-enUS Don't go out of your way to farm this now. Just remember to hold onto the eggs and start thinking how many skillups you still need to reach 50 cooking
    note-ptBR Não saia do caminho para farmar isso agora. Apenas guarde os ovos e comece a calcular quantos pontos ainda faltam para chegar a 50 em culinária
    collect 6889 50 |quest 90 |q 90/1 |opt
    note-enUS Click the Mysterious Red Crystal
    note-ptBR Clique no Mysterious Red Crystal
    note-enUS Be careful of the 2 groups of 2 Raging Moonkins west of the Mysterious Red Crystal as the duos closest to each other are leashed together
    note-ptBR Cuidado com os 2 grupos de 2 Raging Moonkins a oeste do Mysterious Red Crystal, pois as duplas mais próximas estão ligadas entre si
    turnin 4812
    accept 4813
step
    ifonquest 957
    goto 1439 44.17,36.29
    note-enUS Talk to Asterion
    note-ptBR Fale com Asterion
    turnin 957
step
    goto 1439 41.9,31.34
    note-enUS Kill Rabid Thistle Bears
    note-ptBR Mate Rabid Thistle Bears
    note-enUS Be careful as they cast [Rabies] if you dont kill them fast enough (Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)
    note-ptBR Cuidado, eles lançam [Rabies] se você não os matar rápido (Instantâneo corpo a corpo: reduz TODA a regeneração de vida em 50% por 10 minutos)
    objective 2138/1 |opt
    note-enUS Click the Beached Sea Creature
    note-ptBR Clique na Beached Sea Creature
    accept 4723
step
    goto 1439 @47.88,7433.8
    note-enUS Kill Foreststrider Fledglings and Foreststriders. Loot them for their Strider Meat
    note-ptBR Mate Foreststrider Fledglings e Foreststriders. Saqueie-os para obter Strider Meat
    note-enUS Be careful Foreststrider Fledglings [Flee] at <30% health
    note-ptBR Cuidado, os Foreststrider Fledglings usam [Flee] com <30% de vida
    collect 5469 5 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Moonstalker Runts and Moonstalkers. Loot them for their Moonstalker Fangs
    note-ptBR Mate Moonstalker Runts e Moonstalkers. Saqueie-os para obter Moonstalker Fangs
    objective 1002/1 |opt
    note-enUS Click the Beached Sea Turtle
    note-ptBR Clique na Beached Sea Turtle
    accept 4725
step
    path seq 1439 45,21.34 48.01,21.41 49.68,22.47 45,21.34 45.47,20.34 47.36,20.56 48.01,21.41 48.61,20.75 49.68,22.47 49.31,24.27
    goto 1439 @-386.39,7219.83
    note-enUS Kill Reef Crawlers. Loot them for their Fine Crab Chunks
    note-ptBR Mate Reef Crawlers. Saqueie-os para obter Fine Crab Chunks
    note-enUS Consider skipping some of the level 17 Reef Crawlers if you get decent drops. You don't have to complete this quest now
    note-ptBR Considere pular alguns dos Reef Crawlers nível 17 se conseguir boas quedas. Você não precisa completar esta missão agora
    note-enUS Be careful as they can cast [Muscle Tear] an instant attack dealing 30-55 damage
    note-ptBR Cuidado, eles podem lançar [Muscle Tear], um ataque instantâneo que causa 30-55 de dano
    objective 1138/1 |opt
    note-enUS Use the [Empty Sampling Tube] at the base of the Cliffspring River
    note-ptBR Use o [Empty Sampling Tube] na base do Cliffspring River
    objective 4762/1
    use 12350
step
    ifcomplete 1002
    path seq 1439 51.12,23.67
    goto 1439 51.29,24.55 12
    note-enUS Travel up the ramp toward the Buzzbox 323
    note-ptBR Suba a rampa em direção ao Buzzbox 323
    note-enUS Click the Buzzbox 323 on the ground
    note-ptBR Clique na Buzzbox 323 no chão
    turnin 1002
    accept 1003
step
    ifturnedin 1002
    goto 1439 51.29,24.55
    note-enUS Click the Buzzbox 323 on the ground
    note-ptBR Clique na Buzzbox 323 no chão
    accept 1003
step
    only Hunter Druid
    path seq 1439 51.12,23.67 51.49,24.37 |only Hunter Druid
    goto 1439 54.97,24.89 15 |only Hunter Druid
    goto 1439 54.97,24.89
    note-enUS Kill Rabid Thistle Bears |only Hunter Druid
    note-ptBR Mate Rabid Thistle Bears |only Hunter Druid
    note-enUS Be careful as they cast [Rabies] if you dont kill them fast enough (Instant Melee: Reduces ALL health regen by 50% for 10 Minutes) |only Hunter Druid
    note-ptBR Cuidado, eles lançam [Rabies] se você não os matar rápido (Instantâneo corpo a corpo: reduz TODA a regeneração de vida em 50% por 10 minutos) |only Hunter Druid
    objective 2138/1 |only Hunter Druid |opt
    note-enUS Kill Foreststriders. Loot them for their Strider Meat |only Hunter Druid
    note-ptBR Mate Foreststriders. Saqueie-os para obter Strider Meat |only Hunter Druid
    collect 5469 5 |quest 2178 |q 2178/1 |only Hunter Druid |opt
    note-enUS Kill Moonstalkers. Loot them for their Moonstalker Fangs |only Hunter Druid
    note-ptBR Mate Moonstalkers. Saqueie-os para obter Moonstalker Fangs |only Hunter Druid
    objective 1002/1 |only Hunter Druid |opt
    note-enUS Travel toward Balthule Shadowstrike |only Hunter Druid
    note-ptBR Vá em direção a Balthule Shadowstrike |only Hunter Druid
    note-enUS Talk to Balthule Shadowstrike
    note-ptBR Fale com Balthule Shadowstrike
    turnin 965
    accept 966
step
    only Hunter Druid
    path closest 1439 55.23,26.51 56.19,27.07 56.05,26.59 55.23,26.51 55.37,27.02 55.76,26.7 55.81,26.97 56.19,27.07 56.79,27.62 57.28,26.31 57.05,26.23 56.54,26.6 56.05,26.59 55.74,25.91
    note-enUS Kill Dark Strand Fanatics. Loot them for their Worn Parchments
    note-ptBR Mate Dark Strand Fanatics. Saqueie-os para obter os Worn Parchments
    objective 966/1
step
    only Hunter Druid
    goto 1439 54.97,24.89
    note-enUS Talk to Balthule Shadowstrike
    note-ptBR Fale com Balthule Shadowstrike
    turnin 966
    accept 967
step
    only Hunter Druid
    path closest 1439 53.63,26.05 54.2,30.48 49.77,30.35 48.89,26.51 53.63,26.05 52.76,26.31 53.05,27.98 53.9,28.64 54.2,30.48 51.27,32.32 50.69,32 50.82,30.49 49.77,30.35 49.78,28.39 49.9,27.51 49.56,26.09 48.89,26.51 48.02,27.2
    note-enUS Kill Foreststriders. Loot them for their Strider Meat
    note-ptBR Mate Foreststriders. Saqueie-os para obter Strider Meat
    collect 5469 5 |quest 2178 |q 2178/1
step
    path closest 1439 53.63,26.05 54.2,30.48 49.77,30.35 48.89,26.51 53.63,26.05 52.76,26.31 53.05,27.98 53.9,28.64 54.2,30.48 51.27,32.32 50.69,32 50.82,30.49 49.77,30.35 49.78,28.39 49.9,27.51 49.56,26.09 48.89,26.51 48.02,27.2
    note-enUS Kill Rabid Thistle Bears
    note-ptBR Mate Rabid Thistle Bears
    note-enUS Be careful as they cast [Rabies] if you dont kill them fast enough (Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)
    note-ptBR Cuidado, eles lançam [Rabies] se você não os matar rápido (Instantâneo corpo a corpo: reduz TODA a regeneração de vida em 50% por 10 minutos)
    objective 2138/1 |opt
    note-enUS Kill Moonstalkers. Loot them for their Moonstalker Fangs
    note-ptBR Mate Moonstalkers. Saqueie-os para obter Moonstalker Fangs
    objective 1002/1 |opt
    note-enUS Kill Foreststriders. Loot them for their Strider Meat
    note-ptBR Mate Foreststriders. Saqueie-os para obter Strider Meat
    collect 5469 5 |quest 2178 |q 2178/1
step
    path closest 1439 53.63,26.05 54.2,30.48 49.77,30.35 48.89,26.51 48.02,27.2 48.89,26.51 49.56,26.09 49.9,27.51 49.78,28.39 49.77,30.35 50.82,30.49 50.69,32 51.27,32.32 54.2,30.48 53.9,28.64 53.05,27.98 52.76,26.31 53.63,26.05
    note-enUS Kill Foreststriders. Loot them for their Strider Meat
    note-ptBR Mate Foreststriders. Saqueie-os para obter Strider Meat
    collect 5469 5 |quest 2178 |q 2178/1
step
    ifcomplete 1002
    goto 1439 51.29,24.55
    note-enUS Click the Buzzbox 323 on the ground
    note-ptBR Clique na Buzzbox 323 no chão
    turnin 1002
    accept 1003
step
    only Druid
    ifonquest 6122
    path seq 1439 54.93,32.72 55.11,33.6
    goto 1439 @-660.18,6874.43
    note-enUS Travel to the Cliffspring River Cave
    note-ptBR Vá até Cliffspring River Cave
    note-enUS Use the [Empty Cliffspring Falls Sampler] in the water at the entrance of the Cliffspring River Cave
    note-ptBR Use o [Empty Cliffspring Falls Sampler] na água na entrada da Cliffspring River Cave
    objective 6122/1
step
    path seq 1439 @-690.31,6751.29 @-706.68,6748.23 @-719.13,6787.53 @-663.45,6877.49 @-679.17,6848.67 @-666.73,6819.41 @-680.48,6779.67 @-663.45,6877.49 @-679.17,6848.67 @-666.73,6819.41 @-680.48,6779.67 @-663.45,6877.49
    goto 1439 @-685.72,6746.49
    note-enUS Loot the Scaber Stalks and a Death Cap on the ground
    note-ptBR Saqueie as Scaber Stalks e um Death Cap no chão
    note-enUS Stay on the upper section. If there is not a Death Cap at the end of the top side, drop down and get one from the southern room below
    note-ptBR Fique na seção de cima. Se não houver Death Cap no fim do lado de cima, desça e pegue um na sala sul lá embaixo
    note-enUS Be careful as Stormscale Wave Riders cast [Aqua Jet] (Ranged Instant: Deals damage to nearby enemies and knocks them back) - make sure you're not in a position to get knocked off the upper level of the cave
    note-ptBR Cuidado, Stormscale Wave Riders lançam [Aqua Jet] (Instantâneo à distância: causa dano a inimigos próximos e os arremessa para trás). Não fique em posição de ser derrubado do nível superior da caverna
    objective 947/1
    objective 947/2
step
    goto 1439 37.39,40.13
    note-enUS Kill Foreststrider Fledglings. Loot them for their Strider Meat
    note-ptBR Mate Foreststrider Fledglings. Saqueie-os para obter Strider Meat
    note-enUS Be careful as they [Flee] at <30% health
    note-ptBR Cuidado, eles usam [Flee] com <30% de vida
    collect 5469 5 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Moonstalker Runts and Moonstalkers. Loot them for their Moonstalker Fangs
    note-ptBR Mate Moonstalker Runts e Moonstalkers. Saqueie-os para obter Moonstalker Fangs
    objective 1002/1 |opt
    note-enUS Travel to Auberdine
    note-ptBR Vá até Auberdine
    note-enUS Talk to Thundris Windweaver
    note-ptBR Fale com Thundris Windweaver
    turnin 4762
    accept 4763
step
    goto 1439 @472.32,6556.1
    note-enUS Talk to Alanndarian Nightsong
    note-ptBR Fale com Alanndarian Nightsong
    accept 2178
    turnin 2178
    turnin 6122 |only Druid
    accept 6123 |only Druid
step
    only Druid
    goto 1439 @472.32,6556.1
    note-enUS Talk to Alanndarian Nightsong
    note-ptBR Fale com Alanndarian Nightsong
    turnin 6122
    accept 6123
step
    only !Nightelf
    ifcomplete 2138
    goto 1439 37.44,41.84
    note-enUS Talk to Archaeologist Hollee
    note-ptBR Fale com Archaeologist Hollee
    accept 729
step
    goto 1439 38.11,41.16
    note-enUS Talk to Gorbold Steelhand
    note-ptBR Fale com Gorbold Steelhand
    turnin 982
step
    only !Nightelf
    goto 1439 37.44,41.84
    note-enUS Talk to Archaeologist Hollee
    note-ptBR Fale com Archaeologist Hollee
    accept 729
step
    ifcomplete 2138
    goto 1439 38.84,43.42
    note-enUS Talk to Tharnariun Treetender
    note-ptBR Fale com Tharnariun Treetender
    turnin 2138
    accept 2139
step
    ifturnedin 2138
    goto 1439 38.84,43.42
    note-enUS Talk to Tharnariun Treetender
    note-ptBR Fale com Tharnariun Treetender
    accept 2139
step
    goto 1439 @472.32,6438.64
    note-enUS Talk to Sentinel Glynda Nal'Shea
    note-ptBR Fale com Sentinel Glynda Nal'Shea
    note-enUS Choose the [Curvewood Dagger] as you should try to save a [Dagger] for your [Poisons] quest later |only Rogue
    note-ptBR Escolha a [Curvewood Dagger], pois você deve tentar guardar uma [Dagger] para a missão de [Poisons] depois |only Rogue
    turnin 4813
step
    ifonquest 4763
    goto 1439 @467.08,6409.38
    note-enUS Use the [Empty Cleansing Bowl] at the Auberdine moonwell
    note-ptBR Use o [Empty Cleansing Bowl] no moonwell de Auberdine
    collect 12347 1 |quest 4763 |q 4763/1
    use 12346
step
    goto 1439 37.32,43.64
    note-enUS Talk to Barithras Moonshade
    note-ptBR Fale com Barithras Moonshade
    turnin 947
    accept 948
step
    goto 1439 @504.41,6402.39
    note-enUS Click the Wanted Poster
    note-ptBR Clique no Wanted Poster
    accept 4740
step
    ifcomplete 1138
    goto 1439 @577.38,6371.35
    note-enUS Talk to Gubber Blump
    note-ptBR Fale com Gubber Blump
    turnin 1138
step
    ifonquest 4723
    path seq 1439 36.7,45.12
    goto 1439 36.62,45.6
    note-enUS Talk to Gwennyth Bly'Leggonde
    note-ptBR Fale com Gwennyth Bly'Leggonde
    turnin 4723
    turnin 4725
step
    path seq 1439 36.7,45.12
    goto 1439 36.62,45.6
    note-enUS Talk to Gwennyth Bly'Leggonde
    note-ptBR Fale com Gwennyth Bly'Leggonde
    turnin 4725
step
    only Druid
    path seq 1439 39.9,54.74 40.18,56.23 39.27,53.09 39.75,53.44 40.23,54.33 39.9,54.74 40.18,56.23 39.39,56.67 39.19,56.38 39.96,55.3
    goto 1439 39.33,54.08 50
    level 16
    note-enUS Grind to level 16
    note-ptBR Mate monstros até o nível 16
step
    only Nightelf Druid
    goto 1439 @561.66,6343.27 |only Druid
    goto 1438 @950.52,8694.07
    note-enUS Talk to Caylais Moonfeather |only Druid
    note-ptBR Fale com Caylais Moonfeather |only Druid
    fly 1438 |only Druid |opt
    note-enUS Fly to Teldrassil |only Druid
    note-ptBR Voe para Teldrassil |only Druid
    note-enUS Talk to Nessa Shadowsong
    note-ptBR Fale com Nessa Shadowsong
    turnin 6343
step
    only Druid
    goto 1438 @965.8,8780.95 |only Druid
    goto 1457 @2563.98,10179
    zone 1457 |only Druid |opt
    note-enUS Take the purple portal into Darnassus |only Druid
    note-ptBR Pegue o portal roxo para Darnassus |only Druid
    note-enUS Talk to Mathrengyl Bearwalker
    note-ptBR Fale com Mathrengyl Bearwalker
    accept 26
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Nightelf Druid
    goto 1438 @2607.86,9641.94
    abandon 729 |only Druid |opt
    note-enUS Abandon The Absent Minded Prospector to accept the quest Trouble In Darkshore? |only Druid
    note-ptBR Abandone The Absent Minded Prospector para aceitar a missão Trouble In Darkshore? |only Druid
    note-enUS Talk to Chief Archaeologist Greywhisker
    note-ptBR Fale com Chief Archaeologist Greywhisker
    accept 730
step
    only Druid
    goto 1450 @-2676.22,8019.01
    note-enUS Cast Teleport: Moonglade |only Druid
    note-ptBR Lance Teleport: Moonglade |only Druid
    note-enUS Talk to Dendrite Starblaze
    note-ptBR Fale com Dendrite Starblaze
    turnin 26
    accept 29
step
    only Druid
    goto 1450 @-2595.43,7697.24
    note-enUS Swim into Lake Elune'Ara
    note-ptBR Nade até Lake Elune'Ara
    note-enUS Open a Bauble Container. Loot it for a [Shrine Bauble]
    note-ptBR Abra um Bauble Container. Saqueie-o para obter um [Shrine Bauble]
    note-enUS It may spawn in different locations underwater
    note-ptBR Pode aparecer em locais diferentes debaixo d'água
    collect 15877 1 |quest 29 |q 29/1
step
    only Druid
    goto 1450 @-2212.85,7854.68
    note-enUS Cast Teleport: Moonglade |only Druid
    note-ptBR Lance Teleport: Moonglade |only Druid
    note-enUS Use the [Shrine Bauble] at the Shrine of Remulos tree
    note-ptBR Use o [Shrine Bauble] na árvore do Shrine of Remulos
    objective 29/1
    use 15877
step
    only Druid
    goto 1450 @-2224.18,7874.23
    note-enUS Talk to Tajarri
    note-ptBR Fale com Tajarri
    turnin 29
    accept 272
step
    only Druid
    hearth
    note-enUS Hearth to Darkshore
    note-ptBR Use a pedra de regresso para Darkshore
]==])

register([==[
#format 1
#id forever.a.16-19-darkshore
#name 16-19 Darkshore
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#levels 16-19
#zone 1439
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup Speedrun 1-20
#subgroup-ptBR Rota rápida 1-20
#next forever.a.19-20-redridge

step
    goto 1439 @504.41,6402.39
    note-enUS Click the Wanted Poster
    note-ptBR Clique no Wanted Poster
    accept 4740
step
    only Nightelf
    ifonquest 730
    goto 1439 37.44,41.84
    note-enUS Talk to Archaeologist Hollee
    note-ptBR Fale com Archaeologist Hollee
    turnin 730
    accept 729
step
    only Nightelf
    goto 1439 37.44,41.84
    note-enUS Talk to Archaeologist Hollee
    note-ptBR Fale com Archaeologist Hollee
    accept 729
step
    goto 1439 37.39,40.13
    note-enUS Talk to Thundris Windweaver
    note-ptBR Fale com Thundris Windweaver
    turnin 4762
    accept 4763
step
    ifonquest 4763
    goto 1439 @467.08,6409.38
    use 12346
    note-enUS Use the [Empty Cleansing Bowl] at the Auberdine Moonwell
    note-ptBR Use o [Empty Cleansing Bowl] no Moonwell de Auberdine
    collect 12347 1 |quest 4763 |q 4763/1
step
    path seq 1439 42.02,58.87 43.22,59.69 43.07,62.45 42.49,60.68 42.02,58.87 42.31,58.65 42.45,58.24 43.22,59.69 43.45,60.13 43.78,60.27 43.07,62.45 43.1,62.56 42.79,62.17
    goto 1439 42.49,60.68 50
    note-enUS Kill Anaya Dawnrunner. Loot her for her Pendant
    note-ptBR Mate Anaya Dawnrunner. Saqueie-a para obter o pingente dela
    objective 963/1
step
    path seq 1439 42.02,58.87 43.22,59.69 43.07,62.45 42.49,60.68 42.02,58.87 42.31,58.65 42.45,58.24 43.22,59.69 43.45,60.13 43.78,60.27 43.07,62.45 43.1,62.56 42.79,62.17
    goto 1439 42.49,60.68 50
    note-enUS Kill Anaya Dawnrunner. Loot her for her Pendant
    note-ptBR Mate Anaya Dawnrunner. Saqueie-a para obter o pingente dela
    objective 963/1
step
    path closest 1439 @385.2,5393.69 @155.3,5374.48 @322.32,4907.25 @385.2,5393.69 @155.3,5374.48 @322.32,4907.25
    note-enUS Kill Moonstalker Runts and Moonstalkers. Loot them for their Moonstalker Fangs
    note-ptBR Mate Moonstalker Runts e Moonstalkers. Saqueie-os para obter Moonstalker Fangs
    objective 1002/1 |opt
    note-enUS Kill Rabid Thistle Bears in southern Darkshore
    note-ptBR Mate Rabid Thistle Bears no sul de Darkshore
    note-enUS Be careful as they cast [Rabies] if you dont kill them fast enough (Instant Melee: Reduces all health regeneration by 50% for 10 minutes)
    note-ptBR Cuidado, eles lançam [Rabies] se você não os matar rápido (Instantâneo corpo a corpo: reduz toda a regeneração de vida em 50% por 10 minutos)
    objective 2138/1
step
    only Druid
    ifonquest 6123
    note-enUS Collect 5 [Earthroot] as you quest
    note-ptBR Colete 5 [Earthroot] enquanto faz as missões
    objective 6123/1
step
    only Druid
    ifonquest 6123
    path seq 1439 @98.97,6329.03 @105.52,6189.3 @164.47,6036.47 @-51.68,6136.9 @-25.48,6005.9 @98.97,6329.03 @105.52,6189.3 @164.47,6036.47
    goto 1439 @-51.68,6136.9
    note-enUS Loot Lunar Fungi on the ground throughout caves
    note-ptBR Saqueie Lunar Fungi no chão por todas as cavernas
    objective 6123/2
step
    goto 1439 43.55,76.29 80
    note-enUS Travel to the Grove of the Ancients
    note-ptBR Vá até Grove of the Ancients
    note-enUS Talk to Onu
    note-ptBR Fale com Onu
    turnin 952 |only Nightelf
    turnin 948
    accept 944
step
    ifcomplete 1003
    path seq 1439 @413.37,4818.17
    goto 1439 41.39,80.56
    note-enUS Kill Moonstalker Sires. Loot them for their Pelts
    note-ptBR Mate Moonstalker Sires. Saqueie-os para obter as peles
    note-enUS Care as they can cast [Exploit Weakness] a backstab attack dealing 20-40 damage if you turn your back to them
    note-ptBR Cuidado, eles podem lançar [Exploit Weakness], um ataque pelas costas que causa 20-40 de dano se você der as costas para eles
    objective 986/1 |opt
    note-enUS Kill Grizzled Thistle Bears. Loot them for their Scalps
    note-ptBR Mate Grizzled Thistle Bears. Saqueie-os para obter os escalpos
    note-enUS Be careful as they cast [Ravage] an instant attack dealing 20-40 damage and knocking you down for 2 seconds
    note-ptBR Cuidado, eles lançam [Ravage], um ataque instantâneo que causa 20-40 de dano e derruba você por 2 segundos
    objective 1003/1 |opt
    note-enUS Click the Buzzbox 525 on the ground
    note-ptBR Clique na Buzzbox 525 no chão
    turnin 1003
step
    ifonquest 944
    goto 1439 @417.3,4575.82 100
    note-enUS Travel to The Master's Glaive
    note-ptBR Vá até The Master's Glaive
step
    goto 1439 @390.7,4542.7
    note-enUS Kill Twilight Disciples and Twilight Thugs. Loot them for the [Book: The Powers Below]
    note-ptBR Mate Twilight Disciples e Twilight Thugs. Saqueie-os para obter o [Book: The Powers Below]
    collect 5352 1 |quest 968 |q 968/1 |opt
    note-enUS Discover The Master's Glaive
    note-ptBR Descubra The Master's Glaive
    objective 944/1
step
    goto 1439 @417.3,4575.82
    note-enUS Use the [Phial of Scrying] and place it on the ground
    note-ptBR Use o [Phial of Scrying] e coloque-o no chão
    use 5251 |opt
    note-enUS Click the Scrying Bowl on the ground
    note-ptBR Clique na Scrying Bowl no chão
    turnin 944
    accept 949
    use 5251
step
    goto 1439 38.54,86.05
    note-enUS Click the Twilight Tome on the northern pedestal
    note-ptBR Clique no Twilight Tome no pedestal ao norte
    turnin 949
    accept 950
    accept 98042
step
    goto 1439 38.66,87.31
    note-enUS Kill Twilight Disciples and Twilight Thugs. Loot them for the Peerless Eye and [Book: The Powers Below]
    note-ptBR Mate Twilight Disciples e Twilight Thugs. Saqueie-os para obter o Peerless Eye e o [Book: The Powers Below]
    objective 98042/1 |opt
    collect 5352 1 |quest 968 |q 968/1 |opt
    note-enUS Talk to Therylune. This will start an escort
    note-ptBR Fale com Therylune. Isso iniciará uma escolta
    note-enUS Skip this step if she is not there
    note-ptBR Pule este passo se ela não estiver lá
    accept 945
step
    ifonquest 945
    goto 1439 @288.26,4530.4
    note-enUS Escort Therylune out of The Masters Glaive
    note-ptBR Escolte Therylune para fora de The Masters Glaive
    objective 945/1
step
    path closest 1439 @376.8,4608.6 @453.1,4580.2 @409.44,4521.02
    note-enUS Kill Twilight Disciples and Twilight Thugs. Loot them for the Peerless Eye and [Book: The Powers Below]
    note-ptBR Mate Twilight Disciples e Twilight Thugs. Saqueie-os para obter o Peerless Eye e o [Book: The Powers Below]
    objective 98042/1
    collect 5352 1 |quest 968 |q 968/1
step
    ifturnedin 949
    note-enUS Delete the [Phial of Scrying] from your bags, as it's no longer needed
    note-ptBR Apague o [Phial of Scrying] das suas bolsas, pois não é mais necessário
step
    ifonquest 1003
    path seq 1439 @227.35,4575.38 @205.73,4639.13 @129.1,4741.75 @86.52,4839.13 @338.7,4821.22
    goto 1439 @452.67,4684.98
    note-enUS Kill Moonstalker Sires. Loot them for their Pelts
    note-ptBR Mate Moonstalker Sires. Saqueie-os para obter as peles
    note-enUS Be careful as they can cast [Exploit Weakness] a backstab attack dealing 20-40 damage if you turn your back to them
    note-ptBR Cuidado, eles podem lançar [Exploit Weakness], um ataque pelas costas que causa 20-40 de dano se você der as costas para eles
    objective 986/1 |opt
    note-enUS Kill Grizzled Thistle Bears. Loot them for their Scalps
    note-ptBR Mate Grizzled Thistle Bears. Saqueie-os para obter os escalpos
    note-enUS Be careful as they cast [Ravage] an instant attack dealing 20-40 damage and knocking you down for 2 seconds
    note-ptBR Cuidado, eles lançam [Ravage], um ataque instantâneo que causa 20-40 de dano e derruba você por 2 segundos
    objective 1003/1
step
    ifcomplete 1003
    goto 1439 41.39,80.56
    note-enUS Click the Buzzbox 525 on the ground
    note-ptBR Clique na Buzzbox 525 no chão
    turnin 1003
step
    goto 1439 43.55,76.29
    note-enUS Talk to Onu
    note-ptBR Fale com Onu
    turnin 950
    accept 951
step
    note-enUS Use the [Book: The Powers Below] to start the quest
    note-ptBR Use o [Book: The Powers Below] para iniciar a missão
    accept 968
    use 5352
step
    only Hunter
    goto 1439 @417.3,4575.82
    level 17
    note-enUS Grind to level 17
    note-ptBR Mate monstros até o nível 17
step
    only Hunter
    goto 1439 35.72,83.7
    note-enUS Talk to Prospector Remtravel
    note-ptBR Fale com Prospector Remtravel
    note-enUS You may have to wait for him to respawn or for others to finish the escort
    note-ptBR Talvez você precise esperar ele reaparecer ou outros terminarem a escolta
    turnin 729
step
    only Hunter
    goto 1439 @602.01,4678.87
    note-enUS Talk to Prospector Remtravel. This will start an escort
    note-ptBR Fale com Prospector Remtravel. Isso iniciará uma escolta
    accept 731 |noauto
    note-enUS This quest is VERY difficult. You can skip this step and come back at level 19
    note-ptBR Esta missão é MUITO difícil. Você pode pular esta etapa e voltar no nível 19
step
    only Hunter
    ifonquest 731
    note-enUS Escort Prospector Remtravel through the Excavation
    note-ptBR Escolte Prospector Remtravel pela Excavation
    note-enUS This quest is VERY difficult. You can skip this step and come back at level 19
    note-ptBR Esta missão é MUITO difícil. Você pode pular esta etapa e voltar no nível 19
    objective 731/1
step
    only Hunter
    goto 1439 31.25,87.42
    note-enUS Click the Beached Sea Creature
    note-ptBR Clique na Beached Sea Creature
    accept 4733
    note-enUS This quest can be VERY difficult. Engage the Murlocs 1 by 1, otherwise you may aggro multiple at the same time
    note-ptBR Esta missão pode ser MUITO difícil. Enfrente os Murlocs um por um, senão você pode puxar vários ao mesmo tempo
    note-enUS Be aware of Greymist Oracles' [Lightning Bolt] damage, they can also heal with [Healing Wave]
    note-ptBR Cuidado com o dano de [Lightning Bolt] dos Greymist Oracles, eles também curam com [Healing Wave]
step
    only Hunter
    goto 1439 31.23,85.56
    note-enUS Kill Encrusted Tide Crawlers and Reef Crawlers. Loot them for their Fine Crab Chunks
    note-ptBR Mate Encrusted Tide Crawlers e Reef Crawlers. Saqueie-os para obter Fine Crab Chunks
    note-enUS Be careful as Reef Crawlers can cast [Muscle Tear] an instant attack dealing 30-55 damage
    note-ptBR Cuidado, Reef Crawlers podem lançar [Muscle Tear], um ataque instantâneo que causa 30-55 de dano
    objective 1138/1 |opt
    note-enUS Be aware of Greymist Oracles' [Lightning Bolt] damage, they can also heal with [Healing Wave]
    note-ptBR Cuidado com o dano de [Lightning Bolt] dos Greymist Oracles, eles também curam com [Healing Wave]
    note-enUS Care as Greymist Tidehunters can cast [Poison] while in melee leaving a dot dealing 13 damage per 3 seconds for 30 seconds
    note-ptBR Cuidado, Greymist Tidehunters podem lançar [Poison] em corpo a corpo, deixando um dano periódico de 13 a cada 3 segundos por 30 segundos
    note-enUS Click the Beached Sea Turtle
    note-ptBR Clique na Beached Sea Turtle
    accept 4732
step
    goto 1439 31.69,83.7
    note-enUS Be aware of Greymist Oracles' [Lightning Bolt] damage, they can also heal with [Healing Wave]
    note-ptBR Cuidado com o dano de [Lightning Bolt] dos Greymist Oracles, eles também curam com [Healing Wave]
    note-enUS Care as Greymist Tidehunters can cast [Poison] while in melee leaving a dot dealing 13 damage per 3 seconds for 30 seconds
    note-ptBR Cuidado, Greymist Tidehunters podem lançar [Poison] em corpo a corpo, deixando um dano periódico de 13 a cada 3 segundos por 30 segundos
    note-enUS Click the Beached Sea Turtle
    note-ptBR Clique na Beached Sea Turtle
    accept 4731
step
    only !Hunter
    goto 1439 32.64,80.71
    note-enUS Click the Beached Sea Creature
    note-ptBR Clique na Beached Sea Creature
    accept 4730
step
    only Hunter
    goto 1439 32.64,80.71
    note-enUS Click the Beached Sea Creature
    note-ptBR Clique na Beached Sea Creature
    accept 4730
step
    only Druid
    ifonquest 6123
    note-enUS Finish collecting the [Earthroot] via [Herbalism] and rarely Battered Chests
    note-ptBR Termine de coletar a [Earthroot] com [Herbalism] e, raramente, em Battered Chests
    note-enUS If you give up and can't find enough, skip this step
    note-ptBR Se desistir e não conseguir encontrar o suficiente, pule esta etapa
    objective 6123/1
step
    path seq 1439 35.43,76.57
    goto 1439 @541.75,4991.52
    note-enUS Make sure you check if Murkdeep is already up in the water (if someone has previously failed the encounter or left the Greymist Hunter in the wave that he spawns with alive)
    note-ptBR Verifique se Murkdeep já está ativo na água (se alguém falhou no encontro antes ou deixou vivo o Greymist Hunter da onda com a qual ele aparece)
    note-enUS Kill the Greymist Warriors and Greymist Hunters in the camp
    note-ptBR Mate os Greymist Warriors e Greymist Hunters no acampamento
    note-enUS Move to the Bonfire in the center of the camp to start the Murkdeep encounter:
    note-ptBR Vá até a fogueira no centro do acampamento para iniciar o encontro com Murkdeep:
    note-enUS 3 waves will spawn from the water, each after killing the previous wave: Wave 1 has 3 level 12-13 Greymist Coastrunners, Wave 2 has 2 level 15-16 Greymist Warriors, and Wave 3 has a level 19 Murkdeep and a level 16-17 Greymist Hunter. You can move away from the Bonfire to avoid a
    note-ptBR 3 ondas surgirão da água, cada uma após matar a anterior: a Onda 1 tem 3 Greymist Coastrunners nível 12-13, a Onda 2 tem 2 Greymist Warriors nível 15-16 e a Onda 3 tem um Murkdeep nível 19 e um Greymist Hunter nível 16-17. Você pode se afastar da Bonfire para evitar um
    objective 4740/1
step
    goto 1439 35.97,70.81
    note-enUS Click the Beached Sea Creature
    note-ptBR Clique na Beached Sea Creature
    accept 4728
step
    only Druid
    goto 1450 @-2593.82,7867.06
    note-enUS Cast Teleport: Moonglade |only Druid
    note-ptBR Lance Teleport: Moonglade |only Druid
    note-enUS Go to Moonglade
    note-ptBR Vá para Moonglade
    note-enUS Talk to Loganaar
    note-ptBR Fale com Loganaar
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Druid
    goto 1450 @-2491.79,7454.76
    note-enUS Talk to Sindrayl
    note-ptBR Fale com Sindrayl
    fp
    note-enUS Fly to Darkshore
    note-ptBR Voe para Darkshore
step
    ifcomplete 963
    path seq 1439 36.81,44.14
    goto 1439 35.74,43.71 12
    note-enUS Travel to Auberdine |only Nightelf !Druid Dwarf Hunter Human Hunter
    note-ptBR Vá até Auberdine |only Nightelf !Druid Dwarf Hunter Human Hunter
    note-enUS Return to Cerellean Whiteclaw on the dock
    note-ptBR Volte para Cerellean Whiteclaw no cais
    note-enUS Talk to Cerellean Whiteclaw
    note-ptBR Fale com Cerellean Whiteclaw
    note-enUS You may need to wait out his RP if someone else just turned in
    note-ptBR Talvez você precise esperar o RP dele se alguém acabou de entregar
    turnin 963
step
    path seq 1439 36.7,45.12
    goto 1439 36.62,45.6
    abandon 963 |opt
    note-enUS Abandon For Love Eternal
    note-ptBR Abandone For Love Eternal
    note-enUS Talk to Gwennyth Bly'Leggonde
    note-ptBR Fale com Gwennyth Bly'Leggonde
    turnin 4728
    turnin 4730
    turnin 4731
    turnin 4732 |only Hunter
    turnin 4733 |only Hunter
step
    ifcomplete 1138
    goto 1439 @577.38,6371.35
    note-enUS Talk to Gubber Blump
    note-ptBR Fale com Gubber Blump
    turnin 1138
step
    goto 1439 @531.27,6403.27
    note-enUS Talk to Laird and Allyndia
    note-ptBR Fale com Laird e Allyndia
    vendor
    note-enUS Vendor and restock on Food and Water
    note-ptBR Venda e reabasteça comida e água
step
    goto 1439 37.7,43.39
    note-enUS Talk to Sentinel Glynda Nal'Shea
    note-ptBR Fale com Sentinel Glynda Nal'Shea
    turnin 4740
step
    goto 1439 @492.3,6581
    note-enUS Talk to Thundris Windweaver
    note-ptBR Fale com Thundris Windweaver
    turnin 98042
step
    goto 1439 38.84,43.42
    note-enUS Talk to Tharnariun Treetender
    note-ptBR Fale com Tharnariun Treetender
    turnin 2138
    accept 2139
step
    only Hunter
    ifcomplete 731
    goto 1439 37.44,41.84
    note-enUS Talk to Archaeologist Hollee
    note-ptBR Fale com Archaeologist Hollee
    turnin 731
    accept 741
step
    only Hunter
    ifturnedin 731
    goto 1439 37.44,41.84
    note-enUS Talk to Archaeologist Hollee
    note-ptBR Fale com Archaeologist Hollee
    accept 741
step
    only Hunter
    goto 1439 @491.97,6560.47
    note-enUS Talk to Dalmond
    note-ptBR Fale com Dalmond
    vendor
    note-enUS Restock on Ammo
    note-ptBR Reabasteça a munição
step
    only Druid
    ifcomplete 6123
    goto 1439 @472.32,6556.1
    note-enUS Talk to Alanndarian Nightsong
    note-ptBR Fale com Alanndarian Nightsong
    turnin 6123
step
    path seq 1439 @-489.22,6875.3 @-376.56,6807.62 @-503.63,6732.95
    goto 1439 @-430.27,6662.65
    abandon 6123 |only Druid |opt
    note-enUS Abandon Gathering the Cure |only Druid
    note-ptBR Abandone Gathering the Cure |only Druid
    note-enUS Open the Blackwood Grain Stores. Loot it for the [Blackwood Grain Sample]
    note-ptBR Abra os Blackwood Grain Stores. Saqueie-os para obter a [Blackwood Grain Sample]
    note-enUS Looting this will spawn 2 Blackwood Furbolgs that will aggro and run towards you. Be ready to fight them or reset them
    note-ptBR Saquear isto fará aparecer 2 Blackwood Furbolgs que vão atacar e correr até você. Esteja pronto para lutar ou despistá-los
    note-enUS If you see Xabraxxis yell in chat or see someone fighting him, help them. Open the Xabraxxis' Demon Bag he drops on the ground. Loot it for the Talisman of Corruption
    note-ptBR Se vir Xabraxxis gritar no chat ou alguém lutando com ele, ajude. Abra a Xabraxxis' Demon Bag que ele deixa cair no chão. Saqueie-a para obter o Talisman of Corruption
    collect 12342 1 |quest 4763 |q 4763/1 |opt
    objective 4763/1 |opt
    note-enUS Kill Den Mother
    note-ptBR Mate Den Mother
    note-enUS Be careful as the Thistle Cubs can cast [Ravage], a melee instant attack which stuns you for 2 seconds
    note-ptBR Cuidado, os Thistle Cubs podem lançar [Ravage], um ataque corpo a corpo instantâneo que atordoa você por 2 segundos
    objective 2139/1
step
    path seq 1439 @-489.22,6875.3 @-453.2,6870.5 @-489.22,6875.3 @-520.66,6874.43
    goto 1439 @-489.22,6875.3
    note-enUS Open the Blackwood Nut Stores. Loot it for the [Blackwood Nut Sample]
    note-ptBR Abra os Blackwood Nut Stores. Saqueie-os para obter a [Blackwood Nut Sample]
    note-enUS Looting this will spawn 2 Blackwood Furbolgs that will aggro and run towards you. Be ready to fight them or reset them
    note-ptBR Saquear isto fará aparecer 2 Blackwood Furbolgs que vão atacar e correr até você. Esteja pronto para lutar ou despistá-los
    note-enUS If you see Xabraxxis yell in chat or see someone fighting him, help them. Open the Xabraxxis' Demon Bag he drops on the ground. Loot it for the Talisman of Corruption
    note-ptBR Se vir Xabraxxis gritar no chat ou alguém lutando com ele, ajude. Abra a Xabraxxis' Demon Bag que ele deixa cair no chão. Saqueie-a para obter o Talisman of Corruption
    collect 12343 1 |quest 4763 |q 4763/1 |opt
    objective 4763/1 |opt
    note-enUS Open the Blackwood Fruit Stores. Loot it for the [Blackwood Fruit Sample]
    note-ptBR Abra os Blackwood Fruit Stores. Saqueie-os para obter a [Blackwood Fruit Sample]
    note-enUS Looting this will spawn 2 Blackwood Furbolgs that will aggro and run towards you. Be ready to fight them or reset them
    note-ptBR Saquear isto fará aparecer 2 Blackwood Furbolgs que vão atacar e correr até você. Esteja pronto para lutar ou despistá-los
    note-enUS If you see Xabraxxis yell in chat or see someone fighting him, help them. Open the Xabraxxis' Demon Bag he drops on the ground. Loot it for the Talisman of Corruption
    note-ptBR Se vir Xabraxxis gritar no chat ou alguém lutando com ele, ajude. Abra a Xabraxxis' Demon Bag que ele deixa cair no chão. Saqueie-a para obter o Talisman of Corruption
    collect 12341 1 |quest 4763 |q 4763/1 |opt
    objective 4763/1 |opt
    note-enUS Use the [Filled Cleansing Bowl] at the Bonfire to summon Xabraxxis
    note-ptBR Use o [Filled Cleansing Bowl] na Bonfire para invocar Xabraxxis
    use 12347 |opt
    note-enUS Kill Xabraxxis. Open the Xabraxxis' Demon Bag he drops on the ground. Loot it for the Talisman of Corruption
    note-ptBR Mate Xabraxxis. Abra a Xabraxxis' Demon Bag que ele deixa cair no chão. Saqueie-a para obter o Talisman of Corruption
    use 12347
    objective 4763/1
step
    only !Hunter
    goto 1439 @-503.63,6866.13
    level 18
    note-enUS Grind to level 18
    note-ptBR Mate monstros até o nível 18
step
    only Hunter
    goto 1439 @-503.63,6866.13
    level 18
    note-enUS Grind to 18 + 75%
    note-ptBR Mate monstros até o nível 18 + 75%
    note-enUS Make sure your HS cooldown is <10 min
    note-ptBR Certifique-se de que a recarga da sua Pedra de Regresso seja <10 min
    note-enUS Skip this step if the area is too crowded
    note-ptBR Pule este passo se a área estiver lotada demais
step
    ifonquest 1002
    path closest 1439 53.63,26.05 54.2,30.48 49.77,30.35 48.89,26.51 48.02,27.2 48.89,26.51 49.56,26.09 49.9,27.51 49.78,28.39 49.77,30.35 50.82,30.49 50.69,32 51.27,32.32 54.2,30.48 53.9,28.64 53.05,27.98 52.76,26.31 53.63,26.05
    note-enUS Kill Moonstalker Runts and Moonstalkers. Loot them for their Moonstalker Fangs
    note-ptBR Mate Moonstalker Runts e Moonstalkers. Saqueie-os para obter Moonstalker Fangs
    objective 1002/1
step
    ifcomplete 1002
    goto 1439 51.29,24.55
    note-enUS Click the Buzzbox 323 on the ground
    note-ptBR Clique na Buzzbox 323 no chão
    turnin 1002
    accept 1003
step
    ifturnedin 1002
    goto 1439 51.29,24.55
    note-enUS Click the Buzzbox 323 on the ground
    note-ptBR Clique na Buzzbox 323 no chão
    accept 1003
step
    only !Hunter !Druid
    goto 1439 54.97,24.89
    note-enUS Talk to Balthule Shadowstrike
    note-ptBR Fale com Balthule Shadowstrike
    turnin 965
    accept 966
step
    only !Hunter !Druid
    path closest 1439 55.23,26.51 56.19,27.07 56.05,26.59 55.23,26.51 55.37,27.02 55.76,26.7 55.81,26.97 56.19,27.07 56.79,27.62 57.28,26.31 57.05,26.23 56.54,26.6 56.05,26.59 55.74,25.91
    note-enUS Kill Dark Strand Fanatics. Loot them for their Worn Parchments
    note-ptBR Mate Dark Strand Fanatics. Saqueie-os para obter os Worn Parchments
    objective 966/1
step
    only !Hunter !Druid
    goto 1439 54.97,24.89
    note-enUS Talk to Balthule Shadowstrike
    note-ptBR Fale com Balthule Shadowstrike
    turnin 966
    accept 967
step
    path seq 1439 @-800.35,7370.92 @-855.37,7449.96 @-880.91,7302.36 @-950.34,7258.26
    goto 1439 @-1005.36,7383.58
    note-enUS Loot the Mathystra Relics on the ground
    note-ptBR Saqueie as Mathystra Relics no chão
    objective 951/1
step
    goto 1439 56.65,13.48
    note-enUS Talk to Gelkak Gyromast
    note-ptBR Fale com Gelkak Gyromast
    accept 2098
step
    path seq 1439 @-732.88,7596.24
    goto 1439 @-656.25,7801.04
    note-enUS Kill Raging Reef Crawlers and Encrusted Tide Crawlers. Loot them for the Bottom of Gelkak's Key
    note-ptBR Mate Raging Reef Crawlers e Encrusted Tide Crawlers. Saqueie-os para obter o Bottom of Gelkak's Key
    note-enUS Be aware of Raging Reef Crawlers' [Thrash] ability. You can take 200 damage instantly from their melee hits
    note-ptBR Cuidado com a habilidade [Thrash] dos Raging Reef Crawlers. Você pode levar 200 de dano instantaneamente dos golpes corpo a corpo deles
    objective 2098/3 |opt
    note-enUS Kill Greymist Oracles and Greymist Tidehunters. Loot them for the Middle of Gelkak's Key
    note-ptBR Mate Greymist Oracles e Greymist Tidehunters. Saqueie-os para obter o Middle of Gelkak's Key
    note-enUS Be aware of Greymist Oracles' [Lightning Bolt] damage and they can also heal with [Healing Wave]
    note-ptBR Cuidado com o dano de [Lightning Bolt] dos Greymist Oracles, que também curam com [Healing Wave]
    note-enUS Care as Greymist Tidehunters can cast [Poison] while in melee leaving a dot dealing 13 damage per 3 seconds for 30 seconds
    note-ptBR Cuidado, Greymist Tidehunters podem lançar [Poison] em corpo a corpo, deixando um dano periódico de 13 a cada 3 segundos por 30 segundos
    note-enUS You can LoS (Line of Sight) the Greymist Oracles' [Lightning Bolts] around the sunken ship to avoid taking its damage
    note-ptBR Você pode usar a linha de visão ao redor do navio afundado para evitar o dano dos [Lightning Bolts] dos Greymist Oracles
    objective 2098/2
step
    path seq 1439 @-699.48,7591.87 @-579.61,7505.41 @-421.1,7372.67
    goto 1439 @-767.6,7805.84
    note-enUS Kill Raging Reef Crawlers and Encrusted Tide Crawlers. Loot them for the Bottom of Gelkak's Key
    note-ptBR Mate Raging Reef Crawlers e Encrusted Tide Crawlers. Saqueie-os para obter o Bottom of Gelkak's Key
    note-enUS Be aware of Raging Reef Crawlers' [Thrash] ability. You can take 200 damage instantly from their melee hits
    note-ptBR Cuidado com a habilidade [Thrash] dos Raging Reef Crawlers. Você pode levar 200 de dano instantaneamente dos golpes corpo a corpo deles
    objective 2098/3
step
    path seq 1439 @-941.83,7756.06 @-1080.03,7922.87 @-1087.24,7780.51 @-1069.55,7661.74
    goto 1439 @-1080.03,7922.87
    note-enUS Kill Giant Foreststriders. Loot them for the Top of Gelkak's Key
    note-ptBR Mate Giant Foreststriders. Saqueie-os para obter o Top of Gelkak's Key
    objective 2098/1
step
    path seq 1439 @-1080.03,7922.87
    goto 1439 @-1146.84,7998.41
    note-enUS Kill Moonstalker Sires and Moonstalker Matriarchs. Loot them for their Pelts
    note-ptBR Mate Moonstalker Sires e Moonstalker Matriarchs. Saqueie-os para obter as peles
    note-enUS Be aware of Moonstalker Matriarchs. They always attack with a Moonstalker Runt by their side
    note-ptBR Cuidado com as Moonstalker Matriarchs. Elas sempre atacam com um Moonstalker Runt ao lado
    note-enUS Moonstalker Sires can cast [Exploit Weakness] a backstab attack dealing 20-40 damage if you turn your back to them
    note-ptBR Moonstalker Sires podem usar [Exploit Weakness], um ataque pelas costas que causa 20-40 de dano se você der as costas a eles
    objective 986/1
step
    only Warrior Paladin Rogue Shaman
    goto 1439 56.65,13.48
    note-enUS Talk to Gelkak Gyromast
    note-ptBR Fale com Gelkak Gyromast
    note-enUS Start looking for a group for Gyromast's Revenge/The Threshwackonator 4100 |only Warrior Paladin Rogue Shaman
    note-ptBR Comece a procurar um grupo para Gyromast's Revenge/The Threshwackonator 4100 |only Warrior Paladin Rogue Shaman
    turnin 2098
    accept 2078
step
    goto 1439 56.65,13.48
    note-enUS Talk to Gelkak Gyromast
    note-ptBR Fale com Gelkak Gyromast
    note-enUS Start looking for a group for Gyromast's Revenge/The Threshwackonator 4100 |only Warrior Paladin Rogue Shaman
    note-ptBR Comece a procurar um grupo para Gyromast's Revenge/The Threshwackonator 4100 |only Warrior Paladin Rogue Shaman
    turnin 2098
    accept 2078
step
    path seq 1439 55.8,18.29
    goto 1439 53.11,18.1
    note-enUS Talk to The Threshwackonator 4100 to start the escort
    note-ptBR Fale com The Threshwackonator 4100 para iniciar a escolta
    note-enUS This quest is VERY difficult
    note-ptBR Esta missão é MUITO difícil
    note-enUS Click the Beached Sea Turtle
    note-ptBR Clique na Beached Sea Turtle
    accept 4727
step
    goto 1439 56.65,13.48
    note-enUS Escort The Threshwackonator 4100 to Gelkak Gyromast
    note-ptBR Escolte The Threshwackonator 4100 até Gelkak Gyromast
    note-enUS Kill The Threshwackonator 4100 once it turns hostile
    note-ptBR Mate The Threshwackonator 4100 quando ele ficar hostil
    note-enUS This quest is VERY difficult
    note-ptBR Esta missão é MUITO difícil
    note-enUS Try to do this quest if you can as it'll save you time later as it rewards [Elixirs of Water Breathing] for underwater quests later |only !Druid !Warlock !Shaman
    note-ptBR Tente fazer esta missão se puder, pois ela economiza tempo depois ao dar [Elixirs of Water Breathing] para missões subaquáticas |only !Druid !Warlock !Shaman
    note-enUS Use [Entangling Roots] on him when he turns hostile then create distance and kite using instant cast spells |only Druid
    note-ptBR Use [Entangling Roots] nele quando ficar hostil, depois abra distância e kite-o com feitiços instantâneos |only Druid
    note-enUS If you are unable to kill the The Threshwackonator 4100, skip this step
    note-ptBR Se não conseguir matar The Threshwackonator 4100, pule esta etapa
    objective 2078/1
step
    ifcomplete 2078
    goto 1439 56.65,13.48
    note-enUS Talk to Gelkak Gyromast
    note-ptBR Fale com Gelkak Gyromast
    turnin 2078
step
    abandon 2078 |opt
    note-enUS Abandon Gyromast's Revenge
    note-ptBR Abandone Gyromast's Revenge
    note-enUS Kill Encrusted Tide Crawlers. Loot them for their Fine Crab Chunks |only Druid
    note-ptBR Mate Encrusted Tide Crawlers. Saqueie-os para obter Fine Crab Chunks |only Druid
    objective 1138/1 |only Druid |opt
    note-enUS Delete [Gyromast's Key] from your bags, as it's no longer needed
    note-ptBR Apague [Gyromast's Key] das suas bolsas, pois não é mais necessário
step
    only !Nightelf !Dwarf Hunter !Human Hunter !Druid
    goto 1448 @577.92,6371.65 100 |only !Nightelf !Dwarf Hunter !Human Hunter !Druid
    note-enUS Travel to Auberdine |only !Nightelf !Dwarf Hunter !Human Hunter !Druid
    note-ptBR Vá até Auberdine |only !Nightelf !Dwarf Hunter !Human Hunter !Druid
    hearth
    note-enUS Hearth to Auberdine
    note-ptBR Use a pedra de regresso para Auberdine
step
    only Druid
    goto 1439 53.11,18.1
    note-enUS Click the Beached Sea Turtle
    note-ptBR Clique na Beached Sea Turtle
    accept 4727
step
    only Druid
    goto 1439 @-259.32,7839.03
    note-enUS Swim out in the water
    note-ptBR Nade para dentro da água
    note-enUS Open the Strange Lockbox. Loot it for the Half Pendant of Aquatic Agility
    note-ptBR Abra o Strange Lockbox. Saqueie-o para obter o Half Pendant of Aquatic Agility
    collect 15883 1 |quest 272 |q 272/1
step
    only !Nightelf
    goto 1439 37.39,40.13
    note-enUS Grind until your HS cooldown is <6 minutes. Die and respawn at the Spirit Healer |only Dwarf Hunter Human Hunter
    note-ptBR Mate monstros até a recarga da sua pedra de regresso ser menor que 6 minutos. Morra e renasça no Spirit Healer |only Dwarf Hunter Human Hunter
    note-enUS Die and respawn at the Spirit Healer |only !Nightelf !Hunter
    note-ptBR Morra e renasça no Spirit Healer |only !Nightelf !Hunter
    note-enUS Talk to Thundris Windweaver
    note-ptBR Fale com Thundris Windweaver
    turnin 4763
step
    only !Nightelf
    goto 1439 38.84,43.42
    note-enUS Delete the [Blackwood Grain Sample] from your bags, as it's no longer needed |only !Nightelf
    note-ptBR Apague o [Blackwood Grain Sample] das suas bolsas, pois não é mais necessário |only !Nightelf
    note-enUS Delete the [Blackwood Nut Sample] from your bags, as it's no longer needed |only !Nightelf
    note-ptBR Apague o [Blackwood Nut Sample] das suas bolsas, pois não é mais necessário |only !Nightelf
    note-enUS Delete the [Blackwood Fruit Sample] from your bags, as it's no longer needed |only !Nightelf
    note-ptBR Apague o [Blackwood Fruit Sample] das suas bolsas, pois não é mais necessário |only !Nightelf
    note-enUS Talk to Tharnariun Treetender
    note-ptBR Fale com Tharnariun Treetender
    turnin 2139
step
    only !Nightelf
    goto 1439 39.37,43.48
    note-enUS Talk to Terenthis
    note-ptBR Fale com Terenthis
    turnin 986
    accept 993
step
    only Dwarf Hunter Human Hunter
    goto 1439 33.17,40.18 15 |only Dwarf Hunter Human Hunter
    goto 1439 33.21,39.88
    note-enUS If you equip the [Enchanted Moonstalker Cloak], make sure you save your current cloak for later as the [Enchanted Moonstalker Cloak] is lost upon a later turn in |only !Nightelf
    note-ptBR Se equipar o [Enchanted Moonstalker Cloak], guarde sua capa atual para depois, pois o [Enchanted Moonstalker Cloak] é perdido em uma entrega futura |only !Nightelf
    note-enUS Equip the [Enchanted Moonstalker Cloak] If it's better than your current Cloak |only !Nightelf
    note-ptBR Equipe a [Enchanted Moonstalker Cloak] se for melhor que sua capa atual |only !Nightelf
    note-enUS Travel to the dock of the Darnassus boat |only Dwarf Hunter Human Hunter
    note-ptBR Vá até o cais do barco de Darnassus |only Dwarf Hunter Human Hunter
    note-enUS On the Boat if it just arrived or on the dock if the boat just left: |only Dwarf Hunter Human Hunter
    note-ptBR No barco, se ele acabou de chegar, ou no cais, se o barco acabou de partir: |only Dwarf Hunter Human Hunter
    note-enUS Create a [Basic Campfire] (under the General Tab of your Spellbook) |only Dwarf Hunter Human Hunter
    note-ptBR Crie uma [Basic Campfire] (na aba Geral do seu Grimório) |only Dwarf Hunter Human Hunter
    note-enUS You need 50 [Cooking] for a quest in Duskwood later |only Dwarf Hunter Human Hunter
    note-ptBR Você precisa de 50 em [Cooking] para uma missão em Duskwood mais tarde |only Dwarf Hunter Human Hunter
    note-enUS [Cook] the [Small Eggs] and [Mild Spices] into [Herb Baked Eggs] |only Dwarf Hunter Human Hunter
    note-ptBR Use [Cook] para transformar os [Small Eggs] e [Mild Spices] em [Herb Baked Eggs] |only Dwarf Hunter Human Hunter
    zone 1438
    note-enUS Take the boat to Darnassus
    note-ptBR Pegue o barco para Darnassus
step
    only Dwarf Hunter Human Hunter
    goto 1438 @841.56,8640.79
    note-enUS Talk to Vesprystus
    note-ptBR Fale com Vesprystus
    fp
    note-enUS Get the Teldrassil Flight Path
    note-ptBR Pegue o ponto de voo de Teldrassil
step
    only Dwarf Hunter Human Hunter
    goto 1438 @965.8,8780.95 |only Dwarf Hunter Human Hunter
    goto 1457 @2511.01,10178.05 |only Dwarf Hunter Human Hunter
    goto 1457 @2329.19,9908.6
    zone 1457 |only Dwarf Hunter Human Hunter |opt
    note-enUS Take the purple portal into Darnassus |only Dwarf Hunter Human Hunter
    note-ptBR Pegue o portal roxo para Darnassus |only Dwarf Hunter Human Hunter
    note-enUS Talk to Jocaste |only Dwarf Hunter Human Hunter
    note-ptBR Fale com Jocaste |only Dwarf Hunter Human Hunter
    trainer |only Dwarf Hunter Human Hunter |opt
    note-enUS Train your class spells |only Dwarf Hunter Human Hunter
    note-ptBR Treine your class spells |only Dwarf Hunter Human Hunter
    note-enUS Talk to Ilyenia Moonfire
    note-ptBR Fale com Ilyenia Moonfire
    train 264
    note-enUS Train Bows
    note-ptBR Treine Bows
    train 227
    note-enUS Train Staves
    note-ptBR Treine Staves
step
    only Dwarf Hunter Human Hunter
    goto 1457 @2268.76,9770.63
    note-enUS Talk to Landria
    note-ptBR Fale com Landria
    note-enUS Buy a [Heavy Recurve Bow] and a [Medium Quiver] from her
    note-ptBR Compre um [Heavy Recurve Bow] e uma [Medium Quiver] dela
    collect 3027 1
    collect 11362 1
step
    only Dwarf Hunter Human Hunter
    ifonquest 741
    goto 1438 @2607.86,9641.94
    note-enUS Equip the [Heavy Recurve Bow] |only Hunter
    note-ptBR Equipe o [Heavy Recurve Bow] |only Hunter
    use 3027 |only Hunter |opt
    note-enUS Talk to Chief Archaeologist Greywhisker
    note-ptBR Fale com Chief Archaeologist Greywhisker
    turnin 741
    accept 942
step
    only Dwarf Hunter Human Hunter
    ifturnedin 741
    goto 1438 @2607.86,9641.94
    note-enUS Talk to Chief Archaeologist Greywhisker
    note-ptBR Fale com Chief Archaeologist Greywhisker
    accept 942
step
    only Druid
    goto 1450 @-2593.82,7867.06
    note-enUS Cast Teleport: Moonglade |only Druid
    note-ptBR Lance Teleport: Moonglade |only Druid
    note-enUS Talk to Loganaar
    note-ptBR Fale com Loganaar
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    goto 1448 @577.92,6371.65 100 |only Nightelf Dwarf Hunter Human Hunter
    path seq 1439 36.7,45.12
    goto 1439 36.62,45.6
    note-enUS Travel to Auberdine |only Nightelf Dwarf Hunter Human Hunter
    note-ptBR Vá até Auberdine |only Nightelf Dwarf Hunter Human Hunter
    hearth |only Nightelf Dwarf Hunter Human Hunter |opt
    note-enUS Hearth to Auberdine |only Nightelf Dwarf Hunter Human Hunter
    note-ptBR Use a pedra de regresso para Auberdine |only Nightelf Dwarf Hunter Human Hunter
    note-enUS Talk to Gwennyth Bly'Leggonde
    note-ptBR Fale com Gwennyth Bly'Leggonde
    turnin 4727
step
    ifcomplete 1138
    goto 1439 @577.38,6371.35
    note-enUS Talk to Gubber Blump
    note-ptBR Fale com Gubber Blump
    turnin 1138
step
    only Nightelf
    goto 1439 37.39,40.13
    note-enUS Talk to Thundris Windweaver
    note-ptBR Fale com Thundris Windweaver
    turnin 4763
step
    only Nightelf Hunter
    goto 1439 @488.69,6564.83
    note-enUS Delete the [Blackwood Grain Sample] from your bags, as it's no longer needed |only Nightelf
    note-ptBR Apague o [Blackwood Grain Sample] das suas bolsas, pois não é mais necessário |only Nightelf
    note-enUS Delete the [Blackwood Nut Sample] from your bags, as it's no longer needed |only Nightelf
    note-ptBR Apague o [Blackwood Nut Sample] das suas bolsas, pois não é mais necessário |only Nightelf
    note-enUS Delete the [Blackwood Fruit Sample] from your bags, as it's no longer needed |only Nightelf
    note-ptBR Apague o [Blackwood Fruit Sample] das suas bolsas, pois não é mais necessário |only Nightelf
    note-enUS Talk to Dalmond
    note-ptBR Fale com Dalmond
    vendor
    note-enUS Stock up on [Sharp Arrows]
    note-ptBR Estoque [Sharp Arrows]
step
    only Nightelf
    goto 1439 38.84,43.42
    note-enUS Talk to Tharnariun Treetender
    note-ptBR Fale com Tharnariun Treetender
    turnin 2139
step
    only Nightelf
    goto 1439 39.37,43.48
    note-enUS Talk to Terenthis
    note-ptBR Fale com Terenthis
    turnin 986
    accept 993
step
    only Nightelf
    note-enUS If you equip the [Enchanted Moonstalker Cloak], make sure you save your current cloak for later as the [Enchanted Moonstalker Cloak] is lost upon a later turn in
    note-ptBR Se equipar o [Enchanted Moonstalker Cloak], guarde sua capa atual para depois, pois o [Enchanted Moonstalker Cloak] é perdido em uma entrega futura
    note-enUS Equip the [Enchanted Moonstalker Cloak] If it's better than your current Cloak
    note-ptBR Equipe a [Enchanted Moonstalker Cloak] se for melhor que sua capa atual
step
    only !Hunter
    ifskillbelow cooking 50
    goto 1439 @488.69,6564.83
    note-enUS Talk to Dalmond
    note-ptBR Fale com Dalmond
    note-enUS Buy a [Flint and Tinder] and a [Simple Wood] from him
    note-ptBR Compre um [Flint and Tinder] e um [Simple Wood] dele
    note-enUS This is for leveling up your [Cooking] while on the boat soon
    note-ptBR Isto serve para subir seu [Cooking] no barco em breve
    note-enUS You need 50 [Cooking] for a quest in Duskwood later
    note-ptBR Você precisa de 50 em [Cooking] para uma missão em Duskwood mais tarde
    collect 4470 1
    collect 4471 1
step
    only !Hunter
    goto 1439 38.11,41.16 |only !Hunter
    goto 1439 @926.4,6542.9 15 |only !Shaman
    path seq 1439 32.43,43.74 |only Shaman
    goto 1439 @826.67,6409.82 |only Shaman
    goto 1439 @929.1,6543.6 |only !Hunter !Shaman
    note-enUS Talk to Gorbold Steelhand |only !Hunter
    note-ptBR Fale com Gorbold Steelhand |only !Hunter
    vendor |only !Hunter |opt
    note-enUS Buy [Mild Spices] from him until you have [Mild Spices] equal or more than the amount of [Small Eggs] that you currently have |only !Hunter
    note-ptBR Compre [Mild Spices] dele até ter [Mild Spices] em quantidade igual ou maior que a de [Small Eggs] que você tem agora |only !Hunter
    collect 2678 50 |quest 90 |q 90/1 |only !Hunter |opt
    collect 6889 50 |quest 90 |q 90/1 |only !Hunter |opt
    note-enUS Travel to the dock of the Stormwind City boat |only !Shaman
    note-ptBR Vá até o cais do barco de Stormwind City |only !Shaman
    note-enUS Travel to the dock of the Menethil Harbor boat |only Shaman
    note-ptBR Vá até o cais do barco de Menethil Harbor |only Shaman
    note-enUS On the Boat if it just arrived or on the dock if the boat just left: |only !Hunter
    note-ptBR No barco, se ele acabou de chegar, ou no cais, se o barco acabou de partir: |only !Hunter
    note-enUS Create a [Basic Campfire] (under the General Tab of your Spellbook) |only !Hunter
    note-ptBR Crie uma [Basic Campfire] (na aba Geral do seu Grimório) |only !Hunter
    note-enUS You need 50 [Cooking] for a quest in Duskwood later |only !Hunter
    note-ptBR Você precisa de 50 em [Cooking] para uma missão em Duskwood mais tarde |only !Hunter
    note-enUS [Cook] the [Small Eggs] and [Mild Spices] into [Herb Baked Eggs] |only !Hunter
    note-ptBR Use [Cook] para transformar os [Small Eggs] e [Mild Spices] em [Herb Baked Eggs] |only !Hunter
    note-enUS Level your [First Aid] while waiting for the boat |only Rogue Warrior Paladin
    note-ptBR Suba seu [First Aid] enquanto espera o barco |only Rogue Warrior Paladin
    zone 1453 |only !Shaman
    note-enUS Take the boat to Stormwind City |only !Shaman
    note-ptBR Pegue o barco para Stormwind City |only !Shaman
    zone 1437 |only Shaman
    note-enUS Take the boat to Menethil Harbor |only Shaman
    note-ptBR Pegue o barco para Menethil Harbor |only Shaman
step
    only Shaman
    path seq 1437 @-819.67,-3691.42 @-807.26,-3716.22 @-827.94,-3724.49
    goto 1437 10.76,56.72
    note-enUS Talk to Neal Allen
    note-ptBR Fale com Neal Allen
    vendor
    note-enUS Buy a [Bronze Tube]
    note-ptBR Compre um [Bronze Tube]
    note-enUS This is a limited supply item. Skip this step if Neal Allen doesn't have one
    note-ptBR Este é um item de estoque limitado. Pule esta etapa se Neal Allen não tiver um
step
    only Shaman
    goto 1437 @-782.03,-3793.12
    note-enUS Talk to Shellei
    note-ptBR Fale com Shellei
    fly 1455
    note-enUS Fly to Ironforge
    note-ptBR Voe para Ironforge
step
    only Shaman
    goto 1455 @-1086.5,-4642.4
    note-enUS Talk to Eldrun Stormbreaker
    note-ptBR Fale com Eldrun Stormbreaker
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Shaman
    ifonquest 968
    note-enUS Talk to Gerrig Bonegrip
    note-ptBR Fale com Gerrig Bonegrip
    turnin 968
step
    only Shaman
    goto 1455 @-1249.95,-4793.47 |only Shaman
    goto 1455 @-1330.28,-4843.6 5
    note-enUS Talk to Gearcutter Cogspinner |only Shaman
    note-ptBR Fale com Gearcutter Cogspinner |only Shaman
    vendor |only Shaman |opt
    note-enUS Buy a [Bronze Tube] |only Shaman
    note-ptBR Compre um [Bronze Tube] |only Shaman
    note-enUS This is a limited supply item. Skip this step if Gearcutter Cogspinner doesn't have one |only Shaman
    note-ptBR Este é um item de estoque limitado. Pule esta etapa se Gearcutter Cogspinner não tiver um |only Shaman
    zone 1453
    note-enUS Enter the Deeprun Tram. Take the tram to Stormwind
    note-ptBR Entre no Deeprun Tram. Pegue o bonde para Stormwind
    note-enUS Level your [First Aid] if needed while waiting for the tram
    note-ptBR Suba seu [First Aid], se necessário, enquanto espera o bonde
    note-enUS You will need your [First Aid] to be 80 for a quest at level 24 |only Rogue !Dwarf
    note-ptBR Você vai precisar de [First Aid] 80 para uma missão no nível 24 |only Rogue !Dwarf
]==])

register([==[
#format 1
#id forever.a.19-20-redridge
#name 19-20 Redridge
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#only !Hunter
#levels 19-20
#zones 1433
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup Speedrun 1-20
#subgroup-ptBR Rota rápida 1-20
#next forever.a.20-21-darkshore-ashenvale

step
    only !Shaman
    goto 1453 @1193.1,-8328.9
    note-enUS Talk to Manifest Clerk Philmor
    accept 97220
step
    only Mage
    goto 1453 @874.32,-9014.67 10 |only Mage
    goto 1453 @885.34,-9006.15
    note-enUS Travel to the Mage Tower |only Mage
    note-ptBR Vá até Mage Tower |only Mage
    note-enUS Talk to Elsharin
    note-ptBR Fale com Elsharin
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warlock
    path seq 1453 @988.44,-8942.15 |only Warlock
    goto 1453 @1015.33,-8978.9 15 |only Warlock
    goto 1453 @1029.98,-8971.01
    note-enUS Travel to The Slaughtered Lamb and go downstairs |only Warlock
    note-ptBR Vá até The Slaughtered Lamb e desça as escadas |only Warlock
    note-enUS Talk to Ursula Deline
    note-ptBR Fale com Ursula Deline
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warlock Priest
    path seq 1453 @807.64,-8880.84
    goto 1453 @804.55,-8862.47
    note-enUS Talk to Ardwyn Cailen
    note-ptBR Fale com Ardwyn Cailen
    note-enUS Buy a [Burning Wand] if it's an upgrade
    note-ptBR Compre uma [Burning Wand] se for uma melhoria
    note-enUS It's important to buy a non-shadow damage wand. You'll have to deal with mobs resistant to shadow damage later
    note-ptBR É importante comprar uma varinha sem dano de sombra. Mais tarde você enfrentará inimigos resistentes a dano de sombra
    collect 5210 1
step
    only Paladin
    goto 1453 @809.52,-8579.22 20 |only Paladin Priest
    path seq 1453 @859.13,-8559.14
    goto 1453 @861.14,-8573.03
    note-enUS Travel to the Stormwind Cathedral |only Paladin Priest
    note-ptBR Vá até Stormwind Cathedral |only Paladin Priest
    note-enUS Talk to Arthur the Faithful
    note-ptBR Fale com Arthur the Faithful
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Human Paladin
    goto 1453 @845.8,-8545.8
    note-enUS Talk to Duthorian Rall
    note-ptBR Fale com Duthorian Rall
    turnin 1780
    accept 1781
step
    only Human Paladin
    goto 1453 @862.4,-8516.8
    note-enUS Talk to Gazin Tenorm
    note-ptBR Fale com Gazin Tenorm
    turnin 1781
    accept 1786
step
    only Priest
    goto 1453 @862.89,-8519.61
    note-enUS Talk to Brother Joshua
    note-ptBR Fale com Brother Joshua
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    ifcomplete 399
    goto 1453 @719.67,-8550.3
    note-enUS Talk to Baros Alexston
    note-ptBR Fale com Baros Alexston
    turnin 399
step
    only !Nightelf
    ifonquest 1338
    goto 1453 @600.22,-8426.93
    note-enUS Talk to Furen Longbeard
    note-ptBR Fale com Furen Longbeard
    turnin 1338
step
    only Rogue
    path seq 1453 @638.8,-8341.95
    goto 1453 @377.61,-8752.3
    note-enUS Talk to Billibub Cogspinner
    note-ptBR Fale com Billibub Cogspinner
    vendor |opt
    note-enUS Buy a [Bronze Tube]
    note-ptBR Compre um [Bronze Tube]
    note-enUS This is a limited supply item. Skip this step if Billibub Cogspinner doesn't have one
    note-ptBR Este é um item de estoque limitado. Pule esta etapa se Billibub Cogspinner não tiver um
    note-enUS Talk to Osborne
    note-ptBR Fale com Osborne
    note-enUS Ensure you train [Lockpicking] as well as you will need it for your Rogue class quest soon
    note-ptBR Treine também [Lockpicking], pois vai precisar dele em breve para sua missão de classe de Ladino
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
    train 1804
    note-enUS Train [Pick Lock]
    note-ptBR Treine [Pick Lock]
step
    only Rogue
    path seq 1453 @374.11,-8762.88 @326.66,-8818.01 |only Rogue
    goto 1453 @323.43,-8817.83 5 |only Rogue
    goto 1453 @362.55,-8819.8
    note-enUS Enter the SI:7 Headquarters. Travel up stairs toward Renzik "The Shiv" |only Rogue
    note-ptBR Entre no SI:7 Headquarters. Suba as escadas em direção a Renzik "The Shiv" |only Rogue
    note-enUS Talk to Renzik "The Shiv"
    note-ptBR Fale com Renzik "The Shiv"
    accept 2281
step
    only Warrior
    path seq 1453 @358.25,-8728.28 @302.6,-8685.53
    goto 1453 @323.3,-8689.29
    note-enUS Talk to Wu or Ilsa
    note-ptBR Fale com Wu ou Ilsa
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Mage Rogue Warlock Druid Warrior Paladin
    goto 1453 @613.12,-8795.96
    note-enUS Talk to Woo Ping
    note-ptBR Fale com Woo Ping
    train 201 |only Mage Rogue Warlock
    note-enUS Train 1h Swords |only Mage Rogue Warlock
    note-ptBR Treine 1h Swords |only Mage Rogue Warlock
    train 1180 |only Mage Druid
    note-enUS Train Daggers |only Mage Druid
    note-ptBR Treine Daggers |only Mage Druid
    train 202 |only Warrior Paladin
    note-enUS Train 2h Swords |only Warrior Paladin
    note-ptBR Treine 2h Swords |only Warrior Paladin
step
    goto 1453 @566.6,-8845.5
    note-enUS Equip the [Kris] |only Rogue
    note-ptBR Equipe o [Kris] |only Rogue
    use 2209 |only Rogue |opt
    note-enUS Talk to Elaine Trias
    turnin 97220
    accept 97222
step
    goto 1453 @568.3,-8862.2
    use 277198
    note-enUS Use the [Gatehouse Shipment] in front of the Gatehouse Door upstairs
    note-ptBR Use o [Gatehouse Shipment] na frente da Gatehouse Door no andar de cima
    objective 97222/1
step
    goto 1453 @566.6,-8845.5
    note-enUS Talk to Elaine Trias
    turnin 97222
step
    goto 1453 @490.12,-8835.67
    goto 1429 @389.8,-9119.9 |only Nightelf
    goto 1433 @-1948.56,-9582.75 |only Nightelf
    goto 1433 @-1906.4,-9606.8
    note-enUS Talk to Dungar Longdrink
    note-ptBR Fale com Dungar Longdrink
    fp |only !Nightelf |opt
    note-enUS Fly to Redridge Mountains |only !Nightelf
    note-ptBR Voe para Redridge Mountains |only !Nightelf
    fp |only Nightelf |opt
    note-enUS Get the Stormwind Flight Path |only Nightelf
    note-ptBR Pegue o ponto de voo de Stormwind |only Nightelf
    zone 1429 |only Nightelf |opt
    note-enUS Exit Stormwind |only Nightelf
    note-ptBR Saia de Stormwind |only Nightelf
    zone 1433 |only Nightelf |opt
    note-enUS Travel to Redridge Mountains |only Nightelf
    note-ptBR Vá até Redridge Mountains |only Nightelf
    note-enUS Talk to Guard Parker
    note-ptBR Fale com Guard Parker
    accept 244
step
    goto 1433 @-2237.93,-9443.6
    note-enUS Talk to Deputy Feldon
    note-ptBR Fale com Deputy Feldon
    turnin 244
    accept 246
    accept 98407
step
    only Nightelf
    goto 1433 @-2234.9,-9435.3
    note-enUS Talk to Ariena Stormfeather
    note-ptBR Fale com Ariena Stormfeather
    fp
    note-enUS Get the Redridge Mountains flight path
    note-ptBR Pegue o ponto de voo de Redridge Mountains
step
    goto 1433 @-2298.06,-9284.04
    note-enUS Talk to Marshal Marris
    note-ptBR Fale com Marshal Marris
    accept 20
    accept 98387
step
    goto 1433 @-2268.32,-9279.12
    note-enUS Talk to Foreman Oslow
    note-ptBR Fale com Foreman Oslow
    accept 125
step
    goto 1433 @-2243.14,-9259.43
    note-enUS Talk to Verner Osgood
    note-ptBR Fale com Verner Osgood
    accept 118
step
    goto 1433 @-2208.6,-9243.5
    note-enUS Click the Wanted Poster
    note-ptBR Clique no Wanted Poster
    accept 95999
step
    goto 1433 @-2221.65,-9218.6
    note-enUS Talk to Magistrate Solomon
    note-ptBR Fale com Magistrate Solomon
    accept 120
step
    goto 1433 @-2172.15,-9261.31
    note-enUS Talk to Dockmaster Baren
    note-ptBR Fale com Dockmaster Baren
    accept 127
step
    goto 1433 @-2152.62,-9217.87
    note-enUS Talk to Darcy
    note-ptBR Fale com Darcy
    note-enUS Darcy walks around inside the Inn
    note-ptBR Darcy anda pelo interior da estalagem
    accept 129
step
    ifonquest 65
    path seq 1433 @-2164.56,-9213.1
    goto 1433 @-2145.67,-9231.49
    note-enUS Talk to Wiley the Black upstairs
    note-ptBR Fale com Wiley the Black no andar de cima
    turnin 65
step
    goto 1433 @-2062.96,-9209.62
    note-enUS Talk to Chef Breanna
    note-ptBR Fale com Chef Breanna
    accept 92
step
    only Warlock
    goto 1433 @-2045.16,-9245.67
    note-enUS Talk to Martie Jainrose
    note-ptBR Fale com Martie Jainrose
    accept 34
step
    only Warlock
    goto 1433 @-1911.22,-9288.82
    note-enUS Kill Bellygrub. Loot him for his Tusk
    note-ptBR Mate Bellygrub. Saqueie-o para obter a presa
    note-enUS Kite Bellygrub back to Lakeshire so the Guards assist you in killing Bellygrub
    note-ptBR Leve Bellygrub (kite) de volta a Lakeshire para que os guardas ajudem a matá-la
    note-enUS This quest is VERY difficult. You can skip this step and come back later
    note-ptBR Esta missão é MUITO difícil. Você pode pular esta etapa e voltar depois
    objective 34/1
step
    only Warlock
    goto 1433 @-2045.16,-9245.67
    note-enUS Talk to Martie Jainrose
    note-ptBR Fale com Martie Jainrose
    turnin 34
step
    only Rogue
    goto 1433 @-2180.19,-9328.21
    note-enUS Talk to Lucius
    note-ptBR Fale com Lucius
    turnin 2281
    accept 2282
step
    goto 1433 @-2207.1,-9351.52
    note-enUS Talk to Shawn
    note-ptBR Fale com Shawn
    accept 3741
step
    path seq 1433 @-2174.32,-9386.56 @-2147.41,-9308.08 @-2090.96,-9373.82 @-1986.76,-9324.3 @-2246.4,-9359.92 @-2309.57,-9376.28 @-2397.7,-9363.97 @-1986.76,-9324.3
    goto 1433 @-2397.7,-9363.97 70
    note-enUS Jump into the Lake
    note-ptBR Pule no lago
    note-enUS Open the Glinting Mud. Loot it for Hilary's Necklace
    note-ptBR Abra a Glinting Mud. Saqueie-a para obter o Hilary's Necklace
    note-enUS It has multiple spawn locations in the Lake
    note-ptBR Tem vários locais de spawn no lago
    objective 3741/1
step
    only Druid
    goto 1433 @-2205.58,-9351.52
    note-enUS Talk to Hilary
    note-ptBR Fale com Hilary
    turnin 3741
step
    goto 1433 @-2472.16,-9366.72
    note-enUS Open the Sunken Chest. Loot it for Oslow's Toolbox
    note-ptBR Abra o Sunken Chest. Saqueie-o para obter Oslow's Toolbox
    objective 125/1
step
    goto 1433 @-1906.4,-9606.8
    note-enUS Kill Great Goretusks. Loot them for their Great Goretusk Snouts
    note-ptBR Mate Great Goretusks. Saqueie-os para obter Great Goretusk Snouts
    note-enUS Kill Tarantulas. Loot them for their Crisp Spider Meat
    note-ptBR Mate tarântulas. Saqueie-as para obter Crisp Spider Meat
    note-enUS Kill Dire Condors. Loot them for their Tough Condor Meat
    note-ptBR Mate Dire Condors. Saqueie-os para obter Tough Condor Meat
    note-enUS Do NOT sell any of these items until you turn the Redridge Goulash quest
    note-ptBR NÃO venda nenhum destes itens até entregar a missão Redridge Goulash
    note-enUS Save any [Chunks of Boar Meat] you loot as well as you can use them to level [Cooking] to 50 which is required for Duskwood later
    note-ptBR Guarde também os [Chunks of Boar Meat] que saquear, pois pode usá-los para subir [Cooking] até 50, necessário para Duskwood mais tarde
    collect 2296 5 |quest 92 |q 92/1 |opt
    collect 1080 5 |quest 92 |q 92/1 |opt
    collect 1081 5 |quest 92 |q 92/1 |opt
    note-enUS Talk to Guard Parker
    note-ptBR Fale com Guard Parker
    accept 244
step
    goto 1433 @-1906.4,-9606.8
    note-enUS Talk to Guard Parker
    note-ptBR Fale com Guard Parker
    turnin 129
    accept 130
step
    goto 1433 @-2237.28,-9443.75
    note-enUS Talk to Deputy Feldon
    note-ptBR Fale com Deputy Feldon
    turnin 244
    accept 246
step
    path seq 1433 @-2031.48,-9556.25 @-1955.07,-9637.63 @-1813.97,-9679.9 @-1861.07,-9754.76
    goto 1433 @-1980.25,-9641.1
    note-enUS Kill Redridge Mongrels and Redridge Poachers
    note-ptBR Mate Redridge Mongrels e Redridge Poachers
    note-enUS Kill Redridge Thrashers. Loot them for their Spiked Collars
    note-ptBR Mate Redridge Thrashers. Saqueie-os para obter Spiked Collars
    objective 246/1 |opt
    objective 246/2 |opt
    objective 98407/1 |opt
    note-enUS Kill Tarantulas. Loot them for their Crisp Spider Meat
    note-ptBR Mate tarântulas. Saqueie-as para obter Crisp Spider Meat
    collect 1081 5 |quest 92 |q 92/1
step
    path closest 1433 @-1913.8,-9490.6 @-2211.01,-9773.87 @-2276.79,-9759.11 @-2508.2,-9620.68 @-2246.61,-9764.9
    note-enUS Kill Redridge Mongrels and Redridge Poachers
    note-ptBR Mate Redridge Mongrels e Redridge Poachers
    note-enUS Kill Redridge Thrashers. Loot them for their Spiked Collars
    note-ptBR Mate Redridge Thrashers. Saqueie-os para obter Spiked Collars
    objective 246/1
    objective 246/2
    objective 98407/1
step
    goto 1433 @-2634.54,-9588.54
    note-enUS Kill Murloc Shorestrikers and Murloc Minor Tidecallers. Loot them for their Fins and Sunfish
    note-ptBR Mate Murloc Shorestrikers e Murloc Minor Tidecallers. Saqueie-os para obter barbatanas e Sunfish
    note-enUS Be aware this area is a hyperspawn, meaning the Murlocs respawn quickly
    note-ptBR Saiba que esta área é de hiperressurgimento, ou seja, os Murlocs ressurgem rapidamente
    objective 127/1
    collect 1468 8 |quest 150 |q 150/1
step
    goto 1433 @-2903.07,-9691.34
    note-enUS Kill Dire Condors. Loot them for their Tough Condor Meat
    note-ptBR Mate Dire Condors. Saqueie-os para obter Tough Condor Meat
    note-enUS Skip this step if you aren't seeing any Dire Condors
    note-ptBR Pule este passo se não estiver vendo nenhum Dire Condor
    collect 1080 5 |quest 92 |q 92/1
step
    ifonquest 95999
    goto 1433 @-3261.4,-9824.7
    note-enUS Kill Incinerator Gar'im inside the cave. Loot him for the Broken Staff of Incinerator Gar'im
    note-ptBR Mate Incinerator Gar'im dentro da caverna. Saqueie-o para obter o Broken Staff of Incinerator Gar'im
    note-enUS Skip this step if you are unable to find a group for him
    note-ptBR Pule este passo se não conseguir encontrar um grupo para ele
    objective 95999/1
step
    path closest 1433 @-3177.25,-9718.85 @-3224.57,-9782.42 @-3259.74,-9566.82 @-3092.8,-9694.82 @-3177.25,-9718.85
    note-enUS Loot the Grain Sacks and Meat Haunches on the ground for Stolen Supplies
    note-ptBR Saqueie os Grain Sacks e Meat Haunches no chão para obter Stolen Supplies
    note-enUS Loot the Weapon Racks and Stolen Weapons the ground
    note-ptBR Saqueie os Weapon Racks e as Stolen Weapons no chão
    objective 98387/1 |opt
    objective 98387/2 |opt
    note-enUS Kill Blackrock Grunts and Blackrock Outrunners. Loot them for their Axes
    note-ptBR Mate Blackrock Grunts e Blackrock Outrunners. Saqueie-os para obter os machados
    note-enUS Be aware the Blackrock Outrunners will cast [Net] on you
    note-ptBR Saiba que os Blackrock Outrunners lançarão [Net] em você
    objective 20/1
step
    path closest 1433 @-3177.25,-9718.85 @-3224.57,-9782.42 @-3259.74,-9566.82 @-3092.8,-9694.82 @-3177.25,-9718.85
    note-enUS Loot the Grain Sacks and Meat Haunches on the ground for Stolen Supplies
    note-ptBR Saqueie os Grain Sacks e Meat Haunches no chão para obter Stolen Supplies
    note-enUS Loot the Weapon Racks and Stolen Weapons the ground
    note-ptBR Saqueie os Weapon Racks e as Stolen Weapons no chão
    objective 98387/1
    objective 98387/2
step
    goto 1433 @-2903.07,-9691.34
    note-enUS Kill Dire Condors. Loot them for their Tough Condor Meat
    note-ptBR Mate Dire Condors. Saqueie-os para obter Tough Condor Meat
    collect 1080 5 |quest 92 |q 92/1
step
    goto 1433 @-2634.54,-9588.54
    level 20 |only !Rogue
    note-enUS Grind until you are 7687 xp away from level 20 |only !Rogue
    note-ptBR Mate monstros até faltarem 7687 xp para o nível 20 |only !Rogue
    level 20 |only Rogue
    note-enUS Grind until you are 10012 xp away from level 20 |only Rogue
    note-ptBR Mate monstros até faltarem 10012 xp para o nível 20 |only Rogue
step
    only Rogue
    goto 1433 51.85,45.12
    note-enUS Travel to Alther's Mill |only Rogue
    note-ptBR Vá até Alther's Mill |only Rogue
    note-enUS You MUST do this for your [Poisons] quest later
    note-ptBR Você PRECISA fazer isto para sua missão de [Poisons] mais tarde
    note-enUS Stand on the waypoint location. Position your camera and cursor until you can click 3 Practice Lockboxes at once without having to move anything
    note-ptBR Fique no local do waypoint. Ajuste a câmera e o cursor até conseguir clicar em 3 Practice Lockboxes de uma vez sem mover nada
    note-enUS Open the Practice Lockboxes on the ground in Alther's Mill until your [Lockpicking] skill is 80
    note-ptBR Abra as Practice Lockboxes no chão em Alther's Mill até sua habilidade de [Lockpicking] chegar a 80
step
    only Rogue
    goto 1433 @-2700.75,-9222.07
    note-enUS Open Lucius's Lockbox. Loot it for the Token of Thievery
    note-ptBR Abra o Lucius's Lockbox. Saqueie-o para obter o Token of Thievery
    objective 2282/1
step
    goto 1433 @-2298.06,-9284.04 150
    note-enUS Travel to Lakeshire
    note-ptBR Vá até Lakeshire
    note-enUS Talk to Marshal Marris
    note-ptBR Fale com Marshal Marris
    turnin 20
    turnin 98387
step
    goto 1433 @-2268.32,-9279.12
    note-enUS Talk to Foreman Oslow
    note-ptBR Fale com Foreman Oslow
    turnin 125
    accept 89
step
    ifcomplete 95999
    path seq 1433 @-2207.1,-9231.34
    goto 1433 @-2221.65,-9218.6
    note-enUS Talk to Magistrate Solomon
    note-ptBR Fale com Magistrate Solomon
    turnin 95999
step
    goto 1433 @-2172.59,-9261.02
    note-enUS Talk to Dockmaster Baren
    note-ptBR Fale com Dockmaster Baren
    turnin 127
    accept 150
    turnin 150
step
    goto 1433 @-2172.59,-9261.02
    note-enUS Talk to Dockmaster Baren
    note-ptBR Fale com Dockmaster Baren
    turnin 127
step
    only Druid
    note-enUS Talk to Innkeeper Brianna
    note-ptBR Fale com Innkeeper Brianna
    home
    note-enUS Set your hearthstone to Lakeshire
    note-ptBR Defina sua pedra de regresso em Lakeshire
step
    goto 1433 @-2062.96,-9209.62
    note-enUS Talk to Chef Breanna
    note-ptBR Fale com Chef Breanna
    turnin 92
step
    goto 1433 @-2045.38,-9245.82
    note-enUS Talk to Martie Jainrose
    note-ptBR Fale com Martie Jainrose
    turnin 130
    accept 131
step
    goto 1433 @-2152.62,-9216.43
    note-enUS Talk to Darcy
    note-ptBR Fale com Darcy
    note-enUS Darcy walks around inside the Inn
    note-ptBR Darcy anda pelo interior da estalagem
    turnin 131
step
    only Rogue
    goto 1433 @-2180.19,-9328.21
    note-enUS Talk to Lucius
    note-ptBR Fale com Lucius
    turnin 2282
step
    goto 1433 @-2205.58,-9351.52
    note-enUS Talk to Hilary
    note-ptBR Fale com Hilary
    turnin 3741
step
    goto 1433 @-2237.93,-9443.6
    note-enUS Destroy the [Certificate of Thievery]. You don't need it |only Rogue
    note-ptBR Destrua o [Certificate of Thievery]. Você não precisa dele |only Rogue
    note-enUS Talk to Deputy Feldon
    note-ptBR Fale com Deputy Feldon
    turnin 246
    turnin 98407
step
    goto 1433 @-2634.54,-9588.54
    level 20
    note-enUS Grind until you are level 20
    note-ptBR Mate monstros até o nível 20
step
    only Druid
    goto 1438 @965.8,8780.95 |only Nightelf !Druid
    goto 1457 @2564.6,10179.8
    note-enUS Cast Teleport: Moonglade |only Druid
    note-ptBR Lance Teleport: Moonglade |only Druid
    note-enUS Talk to Silva Fil'naveth |only Druid
    note-ptBR Fale com Silva Fil'naveth |only Druid
    fly 1438 |only Druid |opt
    note-enUS Fly to Darnassus |only Druid
    note-ptBR Voe para Darnassus |only Druid
    zone 1457 |only Nightelf !Druid |opt
    note-enUS Take the purple portal into Darnassus |only Nightelf !Druid
    note-ptBR Pegue o portal roxo para Darnassus |only Nightelf !Druid
    note-enUS Talk to Mathrengyl Bearwalker
    note-ptBR Fale com Mathrengyl Bearwalker
    accept 98393
step
    only Druid
    goto 1450 @-2678.9,8020
    note-enUS Talk to Dendrite Starblaze
    note-ptBR Fale com Dendrite Starblaze
    turnin 98393
    accept 98341 |only Skyborne
    accept 98341 |only !Skyborne
step
    only Druid !Skyborne
    goto 1450 @-2640,7338.9
    note-enUS Talk to Great Cat Spirit
    note-ptBR Fale com Great Cat Spirit
    turnin 98394
    accept 98396
step
    only Druid Skyborne
    path seq 1450 @-2352.7,7375.6
    goto 1450 @-2394.3,7361.2
    note-enUS Talk to Avatar of Saeyleenan
    note-ptBR Fale com Avatar of Saeyleenan
    turnin 98341
    accept 98404
step
    only Druid
    goto 1450 @-3046.7,7534.4 |only Druid
    goto 1450 @-3117.4,7455.3
    note-enUS Head to the Stormrage Barrow Dens |only Druid
    note-ptBR Vá até Stormrage Barrow Dens |only Druid
    note-enUS Go deep into the cave, travel across the bridge, look for a cat statue inside an alcove and click on the small orb next to the statue
    note-ptBR Vá até o fundo da caverna, atravesse a ponte, procure uma estátua de gato dentro de uma alcova e clique no pequeno orbe ao lado da estátua
    note-enUS Loot Relic of the Claw
    note-ptBR Saqueie a Relic of the Claw
    objective 98404/2 |only Skyborne
    objective 98396/2 |only !Skyborne
step
    only Druid
    goto 1450 @-3099.2,7485.7
    note-enUS Click on the small orb next to the cat statue
    note-ptBR Clique no pequeno orbe ao lado da estátua do gato
    note-enUS Loot Relic of the Silent Shadow
    note-ptBR Saqueie a Relic of the Silent Shadow
    objective 98404/3 |only Skyborne
    objective 98396/3 |only !Skyborne
step
    only Druid
    goto 1450 @-3054.1,7476.8
    note-enUS Click on the small orb next to the cat statue
    note-ptBR Clique no pequeno orbe ao lado da estátua do gato
    note-enUS Loot Relic of the Fang
    note-ptBR Saqueie a Relic of the Fang
    objective 98404/1 |only Skyborne
    objective 98396/1 |only !Skyborne
step
    only Druid !Skyborne
    goto 1450 @-2640,7338.9
    note-enUS Talk to Great Cat Spirit
    note-ptBR Fale com Great Cat Spirit
    turnin 98396
    accept 98731
step
    only Druid Skyborne
    goto 1450 @-2395.4,7361.4
    note-enUS Talk to Avatar of Saeyleenan
    note-ptBR Fale com Avatar of Saeyleenan
    turnin 98404
    accept 98738
step
    only Druid
    goto 1450 @-2678.2,8021.5
    note-enUS Teleport to Moonglade and talk to Dendrite Starblaze
    note-ptBR Teleporte-se para Moonglade e fale com Dendrite Starblaze
    turnin 98738 |only Skyborne
    accept 98397
step
    only Druid
    goto 1457 @2564.4,10179.9
    note-enUS Talk to Silva Fil'naveth |only Druid
    note-ptBR Fale com Silva Fil'naveth |only Druid
    fly 1438 |only Druid |opt
    note-enUS Fly to Darnassus |only Druid
    note-ptBR Voe para Darnassus |only Druid
    note-enUS Talk to Silva Fil'naveth |only Druid
    note-ptBR Fale com Silva Fil'naveth |only Druid
    fly 1438 |only Druid |opt
    note-enUS Fly to Darnassus |only Druid
    note-ptBR Voe para Darnassus |only Druid
    note-enUS Talk to Mathrengyl Bearwalker
    note-ptBR Fale com Mathrengyl Bearwalker
    turnin 98397
step
    only Warlock
    goto 1433 @-2234.89,-9435.35
    path seq 1453 @988.44,-8942.15 |only Warlock
    goto 1453 @1015.33,-8978.9 15 |only Warlock
    goto 1453 @1029.98,-8971.01
    hearth |only Druid |opt
    note-enUS Hearth to Lakeshire |only Druid
    note-ptBR Use a pedra de regresso para Lakeshire |only Druid
    note-enUS Talk to Ariena Stormfeather
    note-ptBR Fale com Ariena Stormfeather
    fly 1453 |opt
    note-enUS Fly to Stormwind City
    note-ptBR Voe para Stormwind City
    note-enUS Equip the [Longsword] |only Rogue
    note-ptBR Equipe a [Longsword] |only Rogue
    use 923 |only Rogue |opt
    note-enUS Equip the [Dacian Falx] |only Warrior Paladin
    note-ptBR Equipe a [Dacian Falx] |only Warrior Paladin
    use 922 |only Warrior Paladin |opt
    note-enUS Travel to The Slaughtered Lamb and go downstairs |only Warlock
    note-ptBR Vá até The Slaughtered Lamb e desça as escadas |only Warlock
    note-enUS Talk to Ursula Deline
    note-ptBR Fale com Ursula Deline
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warlock
    goto 1453 @1041.54,-8983.29
    note-enUS Talk to Gakin the Darkbinder
    note-ptBR Fale com Gakin the Darkbinder
    accept 1716
step
    only Mage
    goto 1453 @874.32,-9014.67 10 |only Mage
    goto 1453 @885.34,-9006.15
    note-enUS Travel to the Mage Tower |only Mage
    note-ptBR Vá até Mage Tower |only Mage
    note-enUS Talk to Elsharin
    note-ptBR Fale com Elsharin
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Mage
    goto 1453 @847.56,-8991.9
    note-enUS Talk to Larimaine
    note-ptBR Fale com Larimaine
    train 3561
    note-enUS Train [Teleport: Stormwind]
    note-ptBR Treine [Teleport: Stormwind]
step
    goto 1453 @1093.3,-8779.02
    note-enUS Talk to Argos Nightwhisper
    note-ptBR Fale com Argos Nightwhisper
    accept 3765
step
    only Paladin
    goto 1453 @809.52,-8579.22 20 |only Paladin Priest
    goto 1453 @845.95,-8545.7
    note-enUS Travel to the Stormwind Cathedral |only Paladin Priest
    note-ptBR Vá até Stormwind Cathedral |only Paladin Priest
    note-enUS Talk to Duthorian Rall. He will give you the [Tome of Valor]
    note-ptBR Fale com Duthorian Rall. Ele vai lhe dar o [Tome of Valor]
    collect 6776 1 |quest 1649
    accept 1649
step
    only Paladin
    goto 1453 @845.95,-8545.7
    note-enUS Talk to Duthorian Rall
    note-ptBR Fale com Duthorian Rall
    turnin 1649
    accept 1650
step
    only Paladin
    path seq 1453 @859.13,-8559.14
    goto 1453 @861.14,-8573.03
    note-enUS Talk to Arthur the Faithful
    note-ptBR Fale com Arthur the Faithful
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Priest
    goto 1453 @862.89,-8519.61
    note-enUS Talk to Brother Joshua
    note-ptBR Fale com Brother Joshua
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Rogue
    goto 1453 @377.61,-8752.3
    note-enUS Talk to Osborne
    note-ptBR Fale com Osborne
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Rogue
    path seq 1453 @374.11,-8762.88 @326.66,-8818.01 |only Rogue
    goto 1453 @323.43,-8817.83 5 |only Rogue
    goto 1453 @362.28,-8815.23
    note-enUS Enter the SI:7 Headquarters. Travel up stairs toward Master Mathias Shaw |only Rogue
    note-ptBR Entre no SI:7 Headquarters. Suba as escadas em direção a Master Mathias Shaw |only Rogue
    note-enUS Talk to Master Mathias Shaw
    note-ptBR Fale com Master Mathias Shaw
    accept 2360
step
    only Warrior
    path seq 1453 @358.25,-8728.28 @302.6,-8685.53
    goto 1453 @323.3,-8689.29
    note-enUS Talk to Wu or Ilsa
    note-ptBR Fale com Wu ou Ilsa
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Nightelf Rogue
    ifonquest 2360
    goto 1436 @1037.42,-10628.27 5
    zone 1436
    note-enUS Travel to Westfall
    note-ptBR Vá até Westfall
    note-enUS Fly there if you already have the Westfall Flight Path
    note-ptBR Voe para lá se já tiver o caminho de voo de Westfall
step
    only Nightelf Rogue
    ifonquest 2360
    goto 1436 @1037.42,-10628.27
    note-enUS Talk to Thor
    note-ptBR Fale com Thor
    fp
    note-enUS Get the Westfall flight path
    note-ptBR Pegue o ponto de voo de Westfall
step
    only !Nightelf Rogue
    goto 1453 @490.03,-8835.82
    note-enUS Talk to Dungar Longdrink
    note-ptBR Fale com Dungar Longdrink
    fly 1436
    note-enUS Fly to Westfall
    note-ptBR Voe para Westfall
step
    only !Dwarf Rogue
    path seq 1431 @404.03,-11014.47 @432.11,-10878.75
    goto 1431 @551.72,-10688.13
    note-enUS Kill Pygmy Venom Web Spiders and Venom Web Spiders. Loot them for a Small Venom Sac and their Gooey Spider Legs
    note-ptBR Mate Pygmy Venom Web Spiders e Venom Web Spiders. Saqueie-os para obter um Small Venom Sac e Gooey Spider Legs
    note-enUS You need a Small Venom Sac to make an [Anti-Venom] later to remove the [Touch of Zanzil] debuff later
    note-ptBR Você precisa de uma Small Venom Sac para fazer um [Anti-Venom] depois e remover o efeito negativo [Touch of Zanzil]
    note-enUS Save the Gooey Spider Legs for later
    note-ptBR Guarde as Gooey Spider Legs para depois
    note-enUS If you have a Paladin or Druid friend you can skip this step and ask them to remove it for you
    note-ptBR Se tiver um amigo Paladino ou Druida, pode pular esta etapa e pedir que ele remova isso para você
    collect 1475 1 |quest 2359 |q 2359/1
    collect 2251 6 |quest 93 |q 93/1
step
    only Rogue
    goto 1436 @619.17,-11035.2
    note-enUS ==PAY ATTENTION TO THE UPCOMING SECTION== |only Rogue
    note-ptBR ==PRESTE ATENÇÃO NA PRÓXIMA SEÇÃO== |only Rogue
    note-enUS Press Escape, then go into -> Options -> Controls |only Rogue
    note-ptBR Pressione Esc e vá em -> Opções -> Controles |only Rogue
    note-enUS Check "Enable Interact Key" and bind the "Interact with Target" option to a key |only Rogue
    note-ptBR Marque "Enable Interact Key" e associe a opção "Interact with Target" a uma tecla |only Rogue
    note-enUS Additionally, it's recommended you enable Enemy Nameplates (Default Key: V) as it allows you to see enemies behind some of the corners inside the tower |only Rogue
    note-ptBR Além disso, recomenda-se ativar as Placas de Nome de Inimigos (tecla padrão: V), pois permitem ver inimigos atrás de alguns cantos dentro da torre |only Rogue
    note-enUS Talk to Agent Kearnen
    note-ptBR Fale com Agent Kearnen
    note-enUS You MUST do this quest your [Poisons]
    note-ptBR Você PRECISA fazer esta missão para seus [Poisons]
    turnin 2360
    accept 2359
step
    only Rogue
    path closest 1436 @514.52,-11114.77 @531.32,-11166.8 @581.37,-11104.97 @514.52,-11114.77 @531.32,-11166.8 @581.37,-11104.97
    note-enUS [Pick Pocket] the Malformed Defias Drone. Loot it for the Defias Tower Key
    note-ptBR Use [Pick Pocket] no Malformed Defias Drone. Saqueie-o para obter a Defias Tower Key
    note-enUS You must be in [Stealth] to use [Pick Pocket]
    note-ptBR Você precisa estar em [Stealth] para usar [Pick Pocket]
    note-enUS The Malformed Defias Drone spawns at the entrance to the tower, then patrols around the outside of it
    note-ptBR O Malformed Defias Drone surge na entrada da torre e depois patrulha ao redor dela
    note-enUS Be careful as he deals a LOT of damage. If your [Stealth] breaks, quickly use [Sprint] and run away
    note-ptBR Cuidado, ele causa MUITO dano. Se sua [Stealth] quebrar, use [Sprint] rapidamente e fuja
    objective 2359/2
step
    only Rogue
    goto 1436 70.42,74.03
    note-enUS Equip the [Curvewood Dagger] for this quest if you don't already have a [Dagger] equipped |only Rogue
    note-ptBR Equipe a [Curvewood Dagger] para esta missão se ainda não tiver uma [Dagger] equipada |only Rogue
    use 15396 |only Rogue |opt
    note-enUS Travel up to 2nd top floor of the tower. Whilst in [Stealth] and the Defias Tower Sentries aren't next to you, Jump onto the chair, then onto the lamp, then onto the bookshelf on top of the waypoint location
    note-ptBR Suba até o penúltimo andar da torre. Em [Stealth] e com os Defias Tower Sentries longe de você, pule na cadeira, depois na luminária e depois na estante acima do ponto marcado
    note-enUS Manually [Unstealth], then press your "Interact with Target" keybind to open the Duskwood Chest. Loot it for Klaven Mortwake's Journal
    note-ptBR Saia da furtividade manualmente com [Unstealth], depois pressione o atalho "Interagir com o alvo" para abrir o Duskwood Chest. Saqueie-o para obter o Klaven Mortwake's Journal
    note-enUS NOTE: Your [Stealth] will temporarily stop working after looting Klaven Mortwake's Journal
    note-ptBR NOTA: Seu [Stealth] deixará de funcionar temporariamente após saquear o Klaven Mortwake's Journal
    note-enUS Be prepared to run if you don't kill the Defias Tower Sentries on the 2nd floor. They will most likely aggro you permanently (but not attack you) when you are on top of the bookshelf as it is an evade spot
    note-ptBR Esteja pronto para fugir se não matar os Defias Tower Sentries no 2º andar. Eles provavelmente ficarão agressivos com você permanentemente (sem atacar) quando você estiver em cima da estante, pois é um ponto de evasão
    note-enUS If you have a [Dagger] in your bags or equipped, you can cast [Ambush] on the Defias Tower Patrollers and Defias Tower Sentries inside to kill them instantly. Be prepared to run after you kill the first Defias Tower Sentry and remember you can be hit from above. This is slower, b
    note-ptBR Com uma [Dagger] nas bolsas ou equipada, use [Ambush] nos Defias Tower Patrollers e Defias Tower Sentries lá dentro para matá-los na hora. Prepare-se para correr após matar o primeiro Defias Tower Sentry e lembre-se de que pode ser atingido de cima. Isto é mais lento, m
    note-enUS Be careful as the Malformed Defias Drone and Defias Drones can be at the entrance of the tower if you have to run out of it
    note-ptBR Cuidado, o Malformed Defias Drone e os Defias Drones podem estar na entrada da torre caso você precise fugir dela
    objective 2359/1
step
    only !Dwarf Rogue
    collect 6452 1
    note-enUS Craft an [Anti-Venom]
    note-ptBR Crie um [Anti-Venom]
    train 7934
step
    only !Dwarf Rogue
    note-enUS Use the [Anti-Venom] in your bags to remove the [Touch of Zanzil] debuff
    note-ptBR Use o [Anti-Venom] nas suas bolsas para remover o debuff [Touch of Zanzil]
    use 6452
step
    only Dwarf Rogue
    note-enUS Cast [Stoneform] to remove the [Touch of Zanzil] debuff
    note-ptBR Lance [Stoneform] para remover o debuff [Touch of Zanzil]
step
    only !Dwarf Rogue
    goto 1436 @1037.42,-10628.27 |only Rogue
    path seq 1453 42.94,33.88 41.54,31.33 41.69,28.05 |only !Dwarf Rogue
    goto 1453 43.07,26.16 15 |only !Dwarf Rogue
    goto 1453 43.07,26.16
    note-enUS Talk to Thor |only Rogue
    note-ptBR Fale com Thor |only Rogue
    fly 1453 |only Rogue |opt
    note-enUS Fly to Stormwind |only Rogue
    note-ptBR Voe para Stormwind |only Rogue
    note-enUS Travel toward Shaina Fuller |only !Dwarf Rogue
    note-ptBR Vá em direção a Shaina Fuller |only !Dwarf Rogue
    note-enUS Talk to Shaina Fuller
    note-ptBR Fale com Shaina Fuller
    note-enUS If you have a Paladin or Druid friend, ask them to remove the [Touch of Zanzil] for you instead
    note-ptBR Se tiver um amigo Paladino ou Druida, peça que ele remova o [Touch of Zanzil] para você
    skill firstaid 80
    note-enUS Level your [First Aid] to 80
    note-ptBR Suba seu [First Aid] até 80
step
    only !Dwarf Rogue
    goto 1453 43.07,26.16
    note-enUS Talk to Shaina Fuller
    note-ptBR Fale com Shaina Fuller
    note-enUS If you have a Paladin or Druid friend, ask them to remove the [Touch of Zanzil] for you instead
    note-ptBR Se tiver um amigo Paladino ou Druida, peça que ele remova o [Touch of Zanzil] para você
    train 7934
    note-enUS Train [Anti-Venom]
    note-ptBR Treine [Anti-Venom]
step
    only !Dwarf Rogue
    collect 6452 1
    note-enUS Craft an [Anti-Venom]
    note-ptBR Crie um [Anti-Venom]
    train 7934
step
    only !Dwarf Rogue
    note-enUS Use the [Anti-Venom] in your bags to remove the [Touch of Zanzil] debuff
    note-ptBR Use o [Anti-Venom] nas suas bolsas para remover o debuff [Touch of Zanzil]
    use 6452
step
    only Rogue
    path seq 1453 @374.11,-8762.88 @326.66,-8818.01 |only Rogue
    goto 1453 @323.43,-8817.83 10 |only Rogue
    goto 1453 @362.28,-8815.23
    note-enUS Enter the SI:7 Headquarters. Travel up stairs toward Master Mathias Shaw |only Rogue
    note-ptBR Entre no SI:7 Headquarters. Suba as escadas em direção a Master Mathias Shaw |only Rogue
    note-enUS Talk to Master Mathias Shaw
    note-ptBR Fale com Master Mathias Shaw
    note-enUS Remember to re-equip your main weapon if you switched to a [Dagger] earlier |only Rogue
    note-ptBR Lembre-se de equipar de novo sua arma principal se tiver trocado por uma [Dagger] antes |only Rogue
    turnin 2359
step
    goto 1453 @520.88,-8954.15
    note-enUS Talk to General Marcus Jonathan
    note-ptBR Fale com General Marcus Jonathan
    turnin 120
    accept 121
step
    path seq 1429 @84.61,-9457.95
    goto 1429 @87.73,-9456.79
    note-enUS Travel to Goldshire
    note-ptBR Vá até Goldshire
    note-enUS Talk to Smith Argus
    note-ptBR Fale com Smith Argus
    turnin 118
    accept 119
step
    path seq 1429 @-727.57,-9555.16
    goto 1429 @-728.26,-9553.08
    note-enUS Travel to the Tower of Azora. Ascend the tower
    note-ptBR Vá até Tower of Azora. Suba a torre
    note-enUS Talk to Theocritus at the top
    note-ptBR Fale com Theocritus no topo
    accept 94
step
    goto 1453 @489.72,-8837.28
    path seq 1433 @-1716.28,-9623.29
    goto 1433 @-2243.14,-9259.43
    zone 1433 |opt
    note-enUS Travel to Redridge
    note-ptBR Vá até Redridge
    fp |opt
    note-enUS Fly to Redridge
    note-ptBR Voe para Redridge
    note-enUS If you're in Goldshire it will be faster to Fly from Stormwind
    note-ptBR Se estiver em Goldshire, será mais rápido voar de Stormwind
    note-enUS If you're at the Tower of Azora simply run to Redridge
    note-ptBR Se estiver na Tower of Azora, basta correr até Redridge
    note-enUS Talk to Verner Osgood
    note-ptBR Fale com Verner Osgood
    turnin 119
    accept 124
step
    goto 1433 @-2243.14,-9259.43
    note-enUS Talk to Verner Osgood
    note-ptBR Fale com Verner Osgood
    accept 122
step
    path seq 1433 @-2207.1,-9231.34
    goto 1433 @-2221.65,-9218.6
    note-enUS Talk to Magistrate Solomon
    note-ptBR Fale com Magistrate Solomon
    turnin 121
step
    goto 1433 @-2205.58,-9351.52
    note-enUS Talk to Hilary
    note-ptBR Fale com Hilary
    turnin 3741
step
    goto 1433 @-2172.59,-9261.02
    note-enUS Talk to Dockmaster Baren
    note-ptBR Fale com Dockmaster Baren
    turnin 127
    accept 150
    turnin 150
step
    goto 1433 @-2062.96,-9209.62
    note-enUS Talk to Chef Breanna
    note-ptBR Fale com Chef Breanna
    turnin 92
step
    goto 1433 @-2045.38,-9245.82
    note-enUS Talk to Martie Jainrose
    note-ptBR Fale com Martie Jainrose
    turnin 130
    accept 131
step
    ifonquest 92
    path seq 1433 @-1912.31,-9339.93 @-2270.93,-9591.44 @-2244.23,-9619.53
    goto 1433 @-1912.31,-9339.93
    note-enUS Kill Black Dragon Whelps. Loot them for their Scales
    note-ptBR Mate Black Dragon Whelps. Saqueie-os para obter as escamas
    objective 122/1 |opt
    note-enUS Kill Great Goretusks. Loot them for their Great Goretusk Snouts
    note-ptBR Mate Great Goretusks. Saqueie-os para obter Great Goretusk Snouts
    note-enUS Save any [Chunks of Boar Meat] you loot as well as you can use them to level [Cooking] to 50 which is required for Duskwood later
    note-ptBR Guarde também os [Chunks of Boar Meat] que saquear, pois pode usá-los para subir [Cooking] até 50, necessário para Duskwood mais tarde
    collect 2296 5 |quest 92 |q 92/1
step
    path seq 1433 @-2031.7,-9098.71 @-2313.26,-9149.82 @-2430.7,-9030.51 @-2313.26,-9149.82 @-2031.7,-9098.71 @-2313.26,-9149.82 @-2430.7,-9030.51
    goto 1433 @-2059.27,-9091.91
    note-enUS Kill Black Dragon Whelps. Loot them for their Scales
    note-ptBR Mate Black Dragon Whelps. Saqueie-os para obter as escamas
    objective 122/1 |opt
    note-enUS Kill Redridge Brutes and Redridge Mystics. Loot them for their Iron Pikes and Iron Rivets
    note-ptBR Mate Redridge Brutes e Redridge Mystics. Saqueie-os para obter Iron Pikes e Iron Rivets
    objective 124/1
    objective 124/2
    objective 89/1
    objective 89/2
step
    path seq 1433 @-2514.49,-9033.7 @-2580.7,-9091.33 @-2321.07,-9527.58
    goto 1433 @-2364.92,-9645.44
    note-enUS Kill Black Dragon Whelps. Loot them for their Scales
    note-ptBR Mate Black Dragon Whelps. Saqueie-os para obter as escamas
    objective 122/1
step
    goto 1433 @-2152.62,-9216.43
    note-enUS Talk to Darcy
    note-ptBR Fale com Darcy
    note-enUS Darcy walks around inside the Inn
    note-ptBR Darcy anda pelo interior da estalagem
    turnin 131
step
    path seq 1433 @-1908.4,-9299.83 @-1988.5,-9176.32 @-1937.7,-9371.64 @-2146.54,-9225.84
    goto 1433 @-2243.79,-9259.86
    note-enUS Level up your [Cooking] using the [Chunks of Boar Meat] you farmed earlier. You need level 50 [Cooking]
    note-ptBR Suba seu [Cooking] usando as [Chunks of Boar Meat] que coletou antes. Você precisa de [Cooking] nível 50
    note-enUS If you need more [Chunks of Boar Meat] travel to the west near Bellygrub and kill more Great Goretusks
    note-ptBR Se precisar de mais [Chunks of Boar Meat], vá para o oeste perto de Bellygrub e mate mais Great Goretusks
    note-enUS Talk to Verner Osgood
    note-ptBR Fale com Verner Osgood
    turnin 124
    turnin 122
step
    goto 1433 @-2267.67,-9280.14
    note-enUS Talk to Foreman Oslow
    note-ptBR Fale com Foreman Oslow
    turnin 89
]==])

register([==[
#format 1
#id forever.a.19-21-darkshore-ashenvale
#name 19-21 Darkshore/Ashenvale
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#only Hunter
#levels 19-21
#zones 1439 1440
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup Speedrun 1-20
#subgroup-ptBR Rota rápida 1-20

step
    ifturnedin 731
    goto 1439 43.55,76.29
    note-enUS Talk to Onu
    note-ptBR Fale com Onu
    turnin 951
step
    ifturnedin 731
    goto 1439 44.4,76.42
    note-enUS Talk to Kerlonian Evershade to start the escort
    note-ptBR Fale com Kerlonian Evershade para iniciar a escolta
    note-enUS Skip this step if he is not there. It can take up to 25 minutes for him to respawn
    note-ptBR Pule este passo se ele não estiver lá. Ele pode levar até 25 minutos para reaparecer
    note-enUS This is a timed quest, you have to escort him all the way to ashenvale in 20 minutes
    note-ptBR Esta é uma missão com tempo, você precisa escoltá-lo até Ashenvale em 20 minutos
    accept 5321
step
    ifonquest 5321
    ifturnedin 731
    goto 1439 @34.78,5001.57
    note-enUS Open Kerlonian's Chest. Loot it for the [Horn of Awakening]
    note-ptBR Abra o Kerlonian's Chest. Saqueie-o para obter o [Horn of Awakening]
    objective 5321/1
step
    ifonquest 729
    goto 1439 35.72,83.7
    note-enUS Talk to Prospector Remtravel
    note-ptBR Fale com Prospector Remtravel
    note-enUS You may have to wait for him to respawn or for others to finish the escort
    note-ptBR Talvez você precise esperar ele reaparecer ou outros terminarem a escolta
    turnin 729
step
    ifnotturnedin 731
    goto 1439 @602.01,4678.87
    note-enUS Talk to Prospector Remtravel
    note-ptBR Fale com Prospector Remtravel
    note-enUS This will start an escort
    note-ptBR Isto iniciará uma escolta
    accept 731 |noauto
    note-enUS This quest is VERY difficult. Skip this step if you're unable to find a group or solo it
    note-ptBR Esta missão é MUITO difícil. Pule esta etapa se não conseguir achar um grupo ou fazê-la sozinho
step
    ifonquest 731
    note-enUS Escort Prospector Remtravel through the Excavation
    note-ptBR Escolte Prospector Remtravel pela Excavation
    note-enUS This quest is VERY difficult. Skip this step if you're unable to find a group or solo it
    note-ptBR Esta missão é MUITO difícil. Pule esta etapa se não conseguir achar um grupo ou fazê-la sozinho
    objective 731/1
step
    goto 1439 38.66,87.31
    note-enUS Kill Twilight Disciples and Twilight Thugs. Loot them for the [Book: The Powers Below]
    note-ptBR Mate Twilight Disciples e Twilight Thugs. Saqueie-os para obter o [Book: The Powers Below]
    collect 5352 1 |quest 968 |q 968/1 |opt
    note-enUS Talk to Therylune. This will start an escort
    note-ptBR Fale com Therylune. Isso iniciará uma escolta
    note-enUS Skip this step if she is not there
    note-ptBR Pule este passo se ela não estiver lá
    accept 945
step
    ifonquest 945
    goto 1439 @288.26,4530.4
    note-enUS Escort Therylune out of The Masters Glaive
    note-ptBR Escolte Therylune para fora de The Masters Glaive
    objective 945/1
step
    goto 1439 31.25,87.42
    note-enUS Click the Beached Sea Creature
    note-ptBR Clique na Beached Sea Creature
    accept 4733
    note-enUS This quest can be VERY difficult. Engage the Murlocs 1 by 1, otherwise you may aggro multiple at the same time
    note-ptBR Esta missão pode ser MUITO difícil. Enfrente os Murlocs um por um, senão você pode puxar vários ao mesmo tempo
step
    goto 1439 31.23,85.56
    note-enUS Click the Beached Sea Turtle
    note-ptBR Clique na Beached Sea Turtle
    accept 4732
step
    goto 1439 31.69,83.7
    note-enUS Click the Beached Sea Turtle
    note-ptBR Clique na Beached Sea Turtle
    accept 4731
step
    goto 1439 32.64,80.71
    note-enUS Click the Beached Sea Creature
    note-ptBR Clique na Beached Sea Creature
    accept 4730
step
    ifonquest 1003
    path seq 1439 @227.35,4575.38 @205.73,4639.13 @129.1,4741.75 @86.52,4839.13 @338.7,4821.22
    goto 1439 @452.67,4684.98
    note-enUS Kill Grizzled Thistle Bears. Loot them for their Scalps
    note-ptBR Mate Grizzled Thistle Bears. Saqueie-os para obter os escalpos
    note-enUS Be careful as they cast [Ravage] an instant attack dealing 20-40 damage and knocking you down for 2 seconds
    note-ptBR Cuidado, eles lançam [Ravage], um ataque instantâneo que causa 20-40 de dano e derruba você por 2 segundos
    objective 1003/1
step
    ifonquest 1003
    goto 1439 @230.69,4815.33
    note-enUS Click the Buzzbox 525 on the ground
    note-ptBR Clique na Buzzbox 525 no chão
    turnin 1003
step
    ifonquest 993
    goto 1439 @-5.83,4608.57
    note-enUS Talk to Volcor
    note-ptBR Fale com Volcor
    note-enUS Clear the furbolgs near the cave before talking to him
    note-ptBR Limpe os furbolgs perto da caverna antes de falar com ele
    turnin 993
    accept 994
step
    ifturnedin 993
    goto 1439 @-5.83,4608.57
    note-enUS Talk to Volcor
    note-ptBR Fale com Volcor
    note-enUS Clear the furbolgs near the cave before talking to him
    note-ptBR Limpe os furbolgs perto da caverna antes de falar com ele
    accept 994
step
    ifturnedin 993
    path seq 1439 43.59,84.49 42.58,82.9 43.59,84.49 42.58,82.9
    goto 1439 42,81.69
    note-enUS Escort Volcor
    note-ptBR Escolte Volcor
    note-enUS After crossing the 3rd torch after exiting the cave, a Furlbog will spawn from both sides and attack Volcor
    note-ptBR Depois de passar pela 3ª tocha após sair da caverna, um Furlbog surgirá de cada lado e atacará Volcor
    note-enUS Halfway to the road, a Furlbogs will spawn from both sides and attack Volcor
    note-ptBR No meio do caminho até a estrada, Furlbogs surgirão de ambos os lados e atacarão Volcor
    objective 994/1
step
    ifonquest 951
    goto 1439 43.55,76.29
    note-enUS Talk to Onu
    note-ptBR Fale com Onu
    turnin 951
step
    goto 1439 44.4,76.42
    note-enUS Talk to Kerlonian Evershade to start the escort
    note-ptBR Fale com Kerlonian Evershade para iniciar a escolta
    note-enUS Skip this step if he is not there. It can take up to 25 minutes for him to respawn
    note-ptBR Pule este passo se ele não estiver lá. Ele pode levar até 25 minutos para reaparecer
    note-enUS This is a timed quest, you have to escort him all the way to ashenvale in 20 minutes
    note-ptBR Esta é uma missão com tempo, você precisa escoltá-lo até Ashenvale em 20 minutos
    accept 5321
step
    ifonquest 5321
    goto 1439 @34.78,5001.57
    note-enUS Open Kerlonian's Chest. Loot it for the [Horn of Awakening]
    note-ptBR Abra o Kerlonian's Chest. Saqueie-o para obter o [Horn of Awakening]
    objective 5321/1
step
    ifonquest 5321
    path seq 1440 @-12.7,4150.17
    goto 1440 @128.01,3305.31
    zone 1440 |opt
    note-enUS Travel south to Ashenvale
    note-ptBR Vá para o sul até Ashenvale
    note-enUS Kill and loot Ghostpaw Runners you encounter while questing. Keep any [Lean Wolf Flanks] you get. You will need 10 for a cooking quest later
    note-ptBR Mate e saqueie os Ghostpaw Runners que encontrar durante as missões. Guarde os [Lean Wolf Flanks] que conseguir. Você precisará de 10 para uma missão de culinária depois
    collect 1015 10 |opt
    note-enUS Escort Kerlonian to Maestra's Post in Ashenvale
    note-ptBR Escolte Kerlonian até Maestra's Post em Ashenvale
    use 13536
    note-enUS Use the [Horn of Awakening] whenever Kerlonian falls asleep next to him
    note-ptBR Use o [Horn of Awakening] sempre que Kerlonian adormecer, ao lado dele
    note-enUS Avoid running on the main road as much as possible. Enemies will only spawn if you're on the road
    note-ptBR Evite correr pela estrada principal o máximo possível. Os inimigos só surgem se você estiver na estrada
    objective 5321/2
step
    ifcomplete 5321
    goto 1440 @128.01,3305.31
    note-enUS Talk to Liladris Moonriver
    note-ptBR Fale com Liladris Moonriver
    turnin 5321
step
    goto 1440 @189.71,3185.77
    note-enUS Talk to Delgren the Purifier
    note-ptBR Fale com Delgren the Purifier
    turnin 967
    accept 970
step
    goto 1440 @175.87,3189.61
    note-enUS Talk to Orendil Broadleaf
    note-ptBR Fale com Orendil Broadleaf
    accept 1010
step
    goto 1440 @-102.08,3492.89
    note-enUS Kill Dark Strand Cultists, Dark Strand Adepts, Dark Strand Enforcers and Dark Strand Excavators. Loot them for the Glowing Soul Gem
    note-ptBR Mate Dark Strand Cultists, Dark Strand Adepts, Dark Strand Enforcers e Dark Strand Excavators. Saqueie-os para obter a Glowing Soul Gem
    note-enUS Be patient, this item has a low droprate
    note-ptBR Tenha paciência, este item tem baixa chance de queda
    objective 970/1
step
    ifonquest 1010
    path seq 1440 @-203.58,3849.97 @-2.9,3737.73
    goto 1440 @-138.99,3806.92
    note-enUS Open the Plant Bundles on the ground. Loot them for Bathran's Hairs
    note-ptBR Abra os Plant Bundles no chão. Saqueie-os para obter Bathran's Hairs
    note-enUS They look like small brown sacks. They can be hard to see
    note-ptBR Parecem pequenos sacos marrons. Podem ser difíceis de ver
    objective 1010/1
step
    goto 1440 @-102.08,3492.89
    level 20
    note-enUS Keep killing Dark Strand mobs until you have enough xp to reach level 20
    note-ptBR Continue matando mobs de Dark Strand até ter xp suficiente para chegar ao nível 20
step
    goto 1440 @189.71,3185.77
    note-enUS Talk to Delgren the Purifier
    note-ptBR Fale com Delgren the Purifier
    turnin 970
step
    goto 1440 @-138.99,3806.92
    level 20
    note-enUS Grind to level 20
    note-ptBR Mate monstros até o nível 20
step
    goto 1440 @175.87,3189.61
    note-enUS Talk to Orendil Broadleaf
    note-ptBR Fale com Orendil Broadleaf
    accept 1010
step
    ifonquest 1010
    path seq 1440 @-203.58,3849.97 @-2.9,3737.73
    goto 1440 @-138.99,3806.92
    note-enUS Open the Plant Bundles on the ground. Loot them for Bathran's Hairs
    note-ptBR Abra os Plant Bundles no chão. Saqueie-os para obter Bathran's Hairs
    note-enUS They look like small brown sacks. They can be hard to see
    note-ptBR Parecem pequenos sacos marrons. Podem ser difíceis de ver
    objective 1010/1
step
    goto 1440 @175.87,3189.61
    note-enUS Talk to Orendil Broadleaf
    note-ptBR Fale com Orendil Broadleaf
    turnin 1010
    accept 1020
step
    goto 1440 @189.71,3185.77
    note-enUS Talk to Delgren the Purifier
    note-ptBR Fale com Delgren the Purifier
    turnin 970
    accept 973
step
    ifcomplete 945
    goto 1440 @394.43,2677.63
    note-enUS Kill and loot Ghostpaw Runners you encounter while questing. Keep any [Lean Wolf Flanks] you get. You will need 10 for a cooking quest later
    note-ptBR Mate e saqueie os Ghostpaw Runners que encontrar durante as missões. Guarde os [Lean Wolf Flanks] que conseguir. Você precisará de 10 para uma missão de culinária depois
    collect 1015 10 |opt
    note-enUS Talk to Therysil
    note-ptBR Fale com Therysil
    turnin 945
step
    only Hunter
    goto 1440 @522.9,2716.1 30
    note-enUS Head up the ramp to the north-west
    note-ptBR Suba a rampa a noroeste
step
    only Hunter
    goto 1440 @663.38,2365.17
    note-enUS Save up to 6 Gooey Spider Legs looted from the Spiders in the zone for later
    note-ptBR Guarde até 6 Gooey Spider Legs saqueadas das aranhas da zona para depois
    collect 2251 6 |quest 93 |q 93/1 |opt
    note-enUS Talk to Bolyun
    note-ptBR Fale com Bolyun
    trainer
    note-enUS Train your pet skills
    note-ptBR Treine your pet skills
step
    only Hunter
    note-enUS Talk to Alenndaar Lapidaar
    note-ptBR Fale com Alenndaar Lapidaar
    trainer
    note-enUS Train your class skills
    note-ptBR Treine your class skills
    train 5118
    note-enUS Train [Aspect of the Cheetah]
    note-ptBR Treine [Aspect of the Cheetah]
step
    goto 1440 @-283.73,2827.92
    note-enUS Talk to Daelyshia
    note-ptBR Fale com Daelyshia
    fp
    note-enUS Get the Astranaar Flight Path
    note-ptBR Pegue o ponto de voo de Astranaar
step
    goto 1440 @-299.3,2796.01
    note-enUS Talk to Shindrell Swiftfire
    note-ptBR Fale com Shindrell Swiftfire
    accept 1008
step
    goto 1440 @-311.99,2759.11
    note-enUS Talk to Sentinel Thenysil
    note-ptBR Fale com Sentinel Thenysil
    accept 1070
step
    goto 1440 @-362.16,2785.64
    note-enUS Talk to Faldreas Goeth'Shael
    note-ptBR Fale com Faldreas Goeth'Shael
    accept 1056
step
    goto 1440 @-411.18,2767.19
    note-enUS Talk to Raene Wolfrunner
    note-ptBR Fale com Raene Wolfrunner
    accept 991
    accept 1054
step
    only !Dwarf !Hunter
    goto 1440 @-433.09,2781.02
    note-enUS Talk to Innkeeper Kimlya
    note-ptBR Fale com Innkeeper Kimlya
    home
    note-enUS Set your Hearthstone to Astranaar
    note-ptBR Defina sua pedra de regresso em Astranaar
step
    goto 1440 @-410.6,2758.73
    note-enUS Talk to Maliynn
    note-ptBR Fale com Maliynn
    vendor
    note-enUS Buy food and water if necessary
    note-ptBR Compre comida e água se necessário
step
    goto 1440 @-454.43,2682.24
    note-enUS Talk to Pelturas Whitemoon
    note-ptBR Fale com Pelturas Whitemoon
    turnin 1020
    accept 1033
step
    only Hunter
    goto 1440 @-306.8,2720.29
    note-enUS Talk to Haljan Oakheart
    note-ptBR Fale com Haljan Oakheart
    vendor
    note-enUS Restock on Ammo if necessary
    note-ptBR Reabasteça a munição se necessário
step
    goto 1440 @-974,2890.19
    note-enUS Save up to 6 Gooey Spider Legs looted from the Spiders in the zone. You will need them for a quest later
    note-ptBR Guarde até 6 Gooey Spider Legs saqueadas das aranhas da zona. Você vai precisar delas para uma missão mais tarde
    collect 2251 6 |quest 93 |q 93/1 |opt
    note-enUS Loot Elune's Tear on the ground
    note-ptBR Saqueie a Elune's Tear no chão
    objective 1033/1
step
    goto 1440 @-454.43,2682.24
    note-enUS Talk to Pelturas Whitemoon
    note-ptBR Fale com Pelturas Whitemoon
    turnin 1033
    accept 1034
step
    goto 1440 @-220.3,2067.24
    note-enUS Loot the Stardust Covered Bushes for the Handful of Stardust
    note-ptBR Saqueie os Stardust Covered Bushes para obter o Handful of Stardust
    note-enUS Their spawn locations are scattered throughout the island
    note-ptBR Eles surgem em locais espalhados pela ilha
    objective 1034/1
step
    ifonquest 973
    path seq 1440 @-126.3,2203.69 @-99.78,2305.17 @114.17,2337.45
    goto 1440 @242.76,2340.53
    note-enUS Head to the base of the mountain
    note-ptBR Vá até a base da montanha
    note-enUS Run straight north while climbing the mountain
    note-ptBR Corra reto para o norte enquanto sobe a montanha
    note-enUS Climb the hill next to the big tree to the right of the Fire Scar Shrine entrance
    note-ptBR Suba a colina ao lado da árvore grande, à direita da entrada do Fire Scar Shrine
    note-enUS Jump over the tree root and hug the right to avoid aggroing mobs
    note-ptBR Pule a raiz da árvore e mantenha-se à direita para não atrair inimigos
    note-enUS Kill Ilkrud Magthrull. Loot him for his Tome
    note-ptBR Mate Ilkrud Magthrull. Saqueie-o para obter o tomo dele
    note-enUS Ilkrud Magthrull will cast [Ilkrud's Guardians] which is a 5 second long cast and will summon 2 Voidwalkers. Stop this cast if you're able to
    note-ptBR Ilkrud Magthrull lançará [Ilkrud's Guardians], um feitiço de 5 segundos que invoca 2 Voidwalkers. Interrompa-o se puder
    note-enUS Clear an exit path if needed so you can reset them along with the Succubus if needed. You may skip this and do it at level 23 if you wish
    note-ptBR Abra um caminho de saída se precisar, para poder resetá-los junto com a Succubus. Você pode pular isso e fazer no nível 23 se quiser
    objective 973/1
step
    ifcomplete 973
    goto 1440 @189.71,3185.77
    note-enUS Talk to Delgren the Purifier
    note-ptBR Fale com Delgren the Purifier
    turnin 973
step
    goto 1440 @847.11,3470.21
    note-enUS Save up to 6 Gooey Spider Legs looted from the Spiders in the zone. You will need them for a quest later
    note-ptBR Guarde até 6 Gooey Spider Legs saqueadas das aranhas da zona. Você vai precisar delas para uma missão mais tarde
    collect 2251 6 |quest 93 |q 93/1 |opt
    note-enUS Kill and loot Ghostpaw Runners you encounter while questing. Keep any [Lean Wolf Flanks] you get. You will need 10 for a cooking quest later
    note-ptBR Mate e saqueie os Ghostpaw Runners que encontrar durante as missões. Guarde os [Lean Wolf Flanks] que conseguir. Você precisará de 10 para uma missão de culinária depois
    collect 1015 10 |opt
    note-enUS Talk to Talen
    note-ptBR Fale com Talen
    accept 1007
step
    goto 1440 @881.13,3879.57
    note-enUS Kill Wrathtail Nagas. Loot them for their Heads
    note-ptBR Mate Wrathtail Nagas. Saqueie-as para obter as cabeças
    note-enUS Don't go out of your way to complete this yet
    note-ptBR Não saia do caminho para completar isso ainda
    objective 1008/1 |opt
    note-enUS Loot the Ancient Statuette on the ground
    note-ptBR Saqueie a Ancient Statuette no chão
    objective 1007/1
step
    goto 1440 @847.11,3470.21
    note-enUS Talk to Talen
    note-ptBR Fale com Talen
    turnin 1007
    accept 1009
step
    goto 1440 @1323.55,4159.35
    note-enUS Kill Ruuzel. Loot her for the Ring of Zoram
    note-ptBR Mate Ruuzel. Saqueie-a para obter o Ring of Zoram
    note-enUS Ruuzel patrols the island with a Wrathtail Myrmidon and Wrathtail Sea Witch. Kill one of them and then reset them if needed
    note-ptBR Ruuzel patrulha a ilha com um Wrathtail Myrmidon e uma Wrathtail Sea Witch. Mate um deles e resete os outros se necessário
    note-enUS If you have any [Bombs]/[Grenades] you can also use them to split pull Ruuzel
    note-ptBR Se tiver [Bombs]/[Grenades], também pode usá-las para separar Ruuzel do grupo
    note-enUS Lady Vespia is a rarespawn that can also drop the Ring of Zoram if you see her
    note-ptBR Lady Vespia é um rare que também pode dropar o Ring of Zoram, caso a veja
    objective 1009/1
step
    goto 1440 @1323.55,4159.35
    note-enUS Kill Ruuzel. Loot her for the Ring of Zoram
    note-ptBR Mate Ruuzel. Saqueie-a para obter o Ring of Zoram
    note-enUS Ruuzel patrols the island with a Wrathtail Myrmidon and Wrathtail Sea Witch. Kill one of them and then reset them if needed
    note-ptBR Ruuzel patrulha a ilha com um Wrathtail Myrmidon e uma Wrathtail Sea Witch. Mate um deles e resete os outros se necessário
    note-enUS Lady Vespia is a rarespawn that can also drop the Ring of Zoram if you see her
    note-ptBR Lady Vespia é um rare que também pode dropar o Ring of Zoram, caso a veja
    objective 1009/1
step
    path seq 1440 @1296.33,4088.67 @866.14,4013.71 @843.07,3863.42 @942.84,3710.83 @1072.01,3518.64 @1296.33,4088.67 @866.14,4013.71 @843.07,3863.42 @942.84,3710.83 @1072.01,3518.64 @942.84,3710.83 @843.07,3863.42
    goto 1440 @866.14,4013.71 70
    note-enUS Kill Wrathtail Nagas. Loot them for their Heads
    note-ptBR Mate Wrathtail Nagas. Saqueie-as para obter as cabeças
    objective 1008/1
step
    goto 1440 @847.11,3470.21
    note-enUS Talk to Talen
    note-ptBR Fale com Talen
    turnin 1009
step
    goto 1440 @528.79,3045.86
    note-enUS Save up to 6 Gooey Spider Legs looted from the Spiders in the zone. You will need them for a quest later
    note-ptBR Guarde até 6 Gooey Spider Legs saqueadas das aranhas da zona. Você vai precisar delas para uma missão mais tarde
    collect 2251 6 |quest 93 |q 93/1 |opt
    note-enUS Kill and loot Ghostpaw Runners you encounter while questing. Keep any [Lean Wolf Flanks] you get. You will need 10 for a cooking quest later
    note-ptBR Mate e saqueie os Ghostpaw Runners que encontrar durante as missões. Guarde os [Lean Wolf Flanks] que conseguir. Você precisará de 10 para uma missão de culinária depois
    collect 1015 10 |opt
    note-enUS Talk to Teronis' Corpse
    note-ptBR Fale com o Teronis' Corpse
    turnin 991
    accept 1023
step
    path seq 1440 @523.02,2988.59 @579.54,3055.08 @488.42,3073.53
    goto 1440 @528.79,3045.86
    note-enUS Keep any [Murloc Fins] you might loot. You will need 8 for a quest later
    note-ptBR Guarde todas as [Murloc Fins] que saquear. Você precisará de 8 para uma missão depois
    collect 1468 8 |opt
    note-enUS Kill Saltspittle Murlocs. Loot them for the Glowing Gem
    note-ptBR Mate Saltspittle Murlocs. Saqueie-os para obter a Glowing Gem
    note-enUS Be careful as the Oracles can heal, and have a 90 damage instant-cast shock spell every few seconds
    note-ptBR Cuidado, os Oracles podem curar e têm um choque instantâneo de 90 de dano a cada poucos segundos
    objective 1023/1
step
    only Dwarf Hunter Human Hunter
    hearth
    note-enUS Hearth to Auberdine
    note-ptBR Use a pedra de regresso para Auberdine
step
    only !Dwarf !Hunter
    goto 1440 @-284.31,2828.69
    note-enUS Die on the eastern side of the lake and spirit res at Astranaar |only !Dwarf !Hunter
    note-ptBR Morra no lado leste do lago e ressuscite com o spirit healer em Astranaar |only !Dwarf !Hunter
    note-enUS Talk to Daelyshia
    note-ptBR Fale com Daelyshia
    fly 1439
    note-enUS Fly to Darkshore
    note-ptBR Voe para Darkshore
step
    goto 1439 @489.35,6506.76
    note-enUS Talk to Archaeologist Hollee
    note-ptBR Fale com Archaeologist Hollee
    turnin 731
    accept 741
step
    ifonquest 995
    goto 1439 39.37,43.48
    vendor |opt
    note-enUS Restock/Resupply
    note-ptBR Reabasteça/Compre suprimentos
    note-enUS Talk to Terenthis
    note-ptBR Fale com Terenthis
    turnin 995
step
    ifonquest 994
    goto 1439 39.37,43.48
    note-enUS Talk to Terenthis
    note-ptBR Fale com Terenthis
    turnin 994
step
    goto 1439 36.62,45.6
    note-enUS Talk to Gwennyth Bly'Leggonde
    note-ptBR Fale com Gwennyth Bly'Leggonde
    turnin 4730
    turnin 4731
    turnin 4732
    turnin 4733
step
    goto 1439 @561.66,6343.27
    note-enUS Talk to Caylais Moonfeather
    note-ptBR Fale com Caylais Moonfeather
    fly 1438
    note-enUS Fly to Teldrassil
    note-ptBR Voe para Teldrassil
step
    only Hunter
    goto 1438 @968.9,8795.34
    goto 1457 @2511.04,10178.01
    zone 1457 |opt
    note-enUS Take the purple portal into Darnassus
    note-ptBR Pegue o portal roxo para Darnassus
    note-enUS Talk to Jocaste
    note-ptBR Fale com Jocaste
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    goto 1457 @2515.03,9940.5
    note-enUS Talk to Garryeth
    note-ptBR Fale com Garryeth
    note-enUS Deposit the following items into your bank
    note-ptBR Deposite os seguintes itens no seu banco
    note-enUS [Elixir of Water Breathing] -5996
    note-ptBR [Elixir of Water Breathing] -5996
    note-enUS [Murloc Fins] -1468
    note-ptBR [Murloc Fins] -1468
    note-enUS [Gooey Spider Legs] -2251
    note-ptBR [Gooey Spider Legs] -2251
    note-enUS [Lean Wolf Flanks] -1015
    note-ptBR [Lean Wolf Flanks] -1015
step
    only Dwarf Hunter Human Hunter
    goto 1457 @2329.19,9908.6
    note-enUS Talk to Ilyenia Moonfire
    note-ptBR Fale com Ilyenia Moonfire
    train 264
    note-enUS Train Bows
    note-ptBR Treine Bows
    train 227
    note-enUS Train Staves
    note-ptBR Treine Staves
step
    ifonquest 741
    goto 1438 @2607.86,9641.94
    note-enUS Talk to Chief Archaeologist Greywhisker
    note-ptBR Fale com Chief Archaeologist Greywhisker
    turnin 741
    accept 942
step
    ifturnedin 741
    goto 1438 @2607.86,9641.94
    note-enUS Talk to Chief Archaeologist Greywhisker
    note-ptBR Fale com Chief Archaeologist Greywhisker
    accept 942
step
    only !Dwarf !Hunter
    hearth
    note-enUS Hearth to Astranaar
    note-ptBR Use a pedra de regresso para Astranaar
step
    only Dwarf Hunter Human Hunter
    goto 1457 @2626.51,9946.11
    zone 1438
    note-enUS Travel through the purple portal to Rut'theran Village
    note-ptBR Atravesse o portal roxo até Rut'theran Village
step
    only Dwarf Hunter Human Hunter
    goto 1438 @841.56,8640.79
    note-enUS Talk to Vesprystus
    note-ptBR Fale com Vesprystus
    fly 1440
    note-enUS Fly to Ashenvale
    note-ptBR Voe para Ashenvale
]==])

register([==[
#format 1
#id forever.a.20-21-darkshore-ashenvale
#name 20-21 Darkshore/Ashenvale
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#only !Hunter
#levels 20-21
#zones 1439 1440
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup Speedrun 1-20
#subgroup-ptBR Rota rápida 1-20

step
    only Druid
    goto 1450 @-2593.82,7867.06
    note-enUS Cast Teleport: Moonglade |only Druid
    note-ptBR Lance Teleport: Moonglade |only Druid
    note-enUS Go to Moonglade
    note-ptBR Vá para Moonglade
    note-enUS Talk to Loganaar
    note-ptBR Fale com Loganaar
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    goto 1439 @504.41,6402.39
    hearth |opt
    note-enUS Hearth to Auberdine
    note-ptBR Use a pedra de regresso para Auberdine
    note-enUS Click the Wanted Poster
    note-ptBR Clique no Wanted Poster
    accept 4740
step
    goto 1439 37.32,43.64
    note-enUS Talk to Barithras Moonshade
    note-ptBR Fale com Barithras Moonshade
    accept 948
step
    goto 1439 @489.35,6506.76
    note-enUS Talk to Archaeologist Hollee
    note-ptBR Fale com Archaeologist Hollee
    accept 729
step
    ifonquest 3765
    goto 1439 38.33,43.04
    note-enUS Talk to Gershala Nightwhisper
    note-ptBR Fale com Gershala Nightwhisper
    turnin 3765
step
    ifturnedin 986
    goto 1439 39.37,43.48
    note-enUS Talk to Terenthis
    note-ptBR Fale com Terenthis
    accept 993
step
    path seq 1439 @306.6,4784.11
    goto 1439 43.55,76.29 80
    note-enUS If you equip the [Enchanted Moonstalker Cloak], make sure you save your current cloak for later as the [Enchanted Moonstalker Cloak] is lost upon a later turn in
    note-ptBR Se equipar o [Enchanted Moonstalker Cloak], guarde sua capa atual para depois, pois o [Enchanted Moonstalker Cloak] é perdido em uma entrega futura
    note-enUS Equip the [Enchanted Moonstalker Cloak] If it's better than your current Cloak
    note-ptBR Equipe a [Enchanted Moonstalker Cloak] se for melhor que sua capa atual
    note-enUS Kill Grizzled Thistle Bears. Loot them for their Scalps
    note-ptBR Mate Grizzled Thistle Bears. Saqueie-os para obter os escalpos
    note-enUS Be careful as they cast [Ravage] an instant attack dealing 20-40 damage and knocking you down for 2 seconds
    note-ptBR Cuidado, eles lançam [Ravage], um ataque instantâneo que causa 20-40 de dano e derruba você por 2 segundos
    objective 1003/1 |opt
    note-enUS Travel to the Grove of the Ancients
    note-ptBR Vá até Grove of the Ancients
    note-enUS Talk to Onu
    note-ptBR Fale com Onu
    turnin 952 |only Nightelf
    turnin 948
    accept 944
step
    ifonquest 944
    goto 1439 @417.3,4575.82 100
    note-enUS Travel to The Master's Glaive
    note-ptBR Vá até The Master's Glaive
step
    goto 1439 @390.7,4542.7
    note-enUS Kill Twilight Disciples and Twilight Thugs. Loot them for the [Book: The Powers Below]
    note-ptBR Mate Twilight Disciples e Twilight Thugs. Saqueie-os para obter o [Book: The Powers Below]
    collect 5352 1 |quest 968 |q 968/1 |opt
    note-enUS Discover The Master's Glaive
    note-ptBR Descubra The Master's Glaive
    objective 944/1
step
    goto 1439 @417.3,4575.82
    note-enUS Use the [Phial of Scrying] and place it on the ground
    note-ptBR Use o [Phial of Scrying] e coloque-o no chão
    use 5251 |opt
    note-enUS Click the Scrying Bowl on the ground
    note-ptBR Clique na Scrying Bowl no chão
    turnin 944
    accept 949
    use 5251
step
    goto 1439 38.54,86.05
    note-enUS Click the Twilight Tome on the northern pedestal
    note-ptBR Clique no Twilight Tome no pedestal ao norte
    turnin 949
    accept 950
    accept 98042
step
    goto 1439 38.66,87.31
    note-enUS Kill Twilight Disciples and Twilight Thugs. Loot them for the Peerless Eye and [Book: The Powers Below]
    note-ptBR Mate Twilight Disciples e Twilight Thugs. Saqueie-os para obter o Peerless Eye e o [Book: The Powers Below]
    objective 98042/1 |opt
    collect 5352 1 |quest 968 |q 968/1 |opt
    note-enUS Talk to Therylune. This will start an escort
    note-ptBR Fale com Therylune. Isso iniciará uma escolta
    note-enUS Skip this step if she is not there
    note-ptBR Pule este passo se ela não estiver lá
    accept 945
step
    ifonquest 945
    goto 1439 @288.26,4530.4
    note-enUS Escort Therylune out of The Masters Glaive
    note-ptBR Escolte Therylune para fora de The Masters Glaive
    objective 945/1
step
    path closest 1439 @376.8,4608.6 @453.1,4580.2 @409.44,4521.02
    note-enUS Kill Twilight Disciples and Twilight Thugs. Loot them for the Peerless Eye and [Book: The Powers Below]
    note-ptBR Mate Twilight Disciples e Twilight Thugs. Saqueie-os para obter o Peerless Eye e o [Book: The Powers Below]
    objective 98042/1
    collect 5352 1 |quest 968 |q 968/1
step
    note-enUS Use the [Book: The Powers Below] to start the quest
    note-ptBR Use o [Book: The Powers Below] para iniciar a missão
    accept 968
    use 5352
step
    ifonquest 729
    path seq 1439 @306.6,4784.11
    goto 1439 35.72,83.7
    note-enUS Kill Grizzled Thistle Bears. Loot them for their Scalps
    note-ptBR Mate Grizzled Thistle Bears. Saqueie-os para obter os escalpos
    note-enUS Be careful as they cast [Ravage] an instant attack dealing 20-40 damage and knocking you down for 2 seconds
    note-ptBR Cuidado, eles lançam [Ravage], um ataque instantâneo que causa 20-40 de dano e derruba você por 2 segundos
    objective 1003/1 |opt
    note-enUS Talk to Prospector Remtravel
    note-ptBR Fale com Prospector Remtravel
    note-enUS You may have to wait for him to respawn or for others to finish the escort
    note-ptBR Talvez você precise esperar ele reaparecer ou outros terminarem a escolta
    turnin 729
step
    ifnotturnedin 731
    goto 1439 @602.01,4678.87
    note-enUS Talk to Prospector Remtravel. This will start an escort
    note-ptBR Fale com Prospector Remtravel. Isso iniciará uma escolta
    accept 731 |noauto
    note-enUS This quest is VERY difficult. Skip this step if you're unable to find a group or solo it
    note-ptBR Esta missão é MUITO difícil. Pule esta etapa se não conseguir achar um grupo ou fazê-la sozinho
step
    ifonquest 731
    note-enUS Escort Prospector Remtravel through the Excavation
    note-ptBR Escolte Prospector Remtravel pela Excavation
    note-enUS This quest is VERY difficult. Skip this step if you're unable to find a group or solo it
    note-ptBR Esta missão é MUITO difícil. Pule esta etapa se não conseguir achar um grupo ou fazê-la sozinho
    objective 731/1
step
    goto 1439 31.25,87.42
    note-enUS Kill Encrusted Tide Crawlers and Reef Crawlers. Loot them for their Fine Crab Chunks
    note-ptBR Mate Encrusted Tide Crawlers e Reef Crawlers. Saqueie-os para obter Fine Crab Chunks
    objective 1138/1 |opt
    note-enUS Click the Beached Sea Creature
    note-ptBR Clique na Beached Sea Creature
    accept 4733
    note-enUS This quest can be VERY difficult. Engage the Murlocs 1 by 1, otherwise you may aggro multiple at the same time
    note-ptBR Esta missão pode ser MUITO difícil. Enfrente os Murlocs um por um, senão você pode puxar vários ao mesmo tempo
step
    goto 1439 31.23,85.56
    note-enUS Click the Beached Sea Turtle
    note-ptBR Clique na Beached Sea Turtle
    accept 4732
step
    goto 1439 31.69,83.7
    note-enUS Click the Beached Sea Turtle
    note-ptBR Clique na Beached Sea Turtle
    accept 4731
step
    goto 1439 32.64,80.71
    note-enUS Click the Beached Sea Creature
    note-ptBR Clique na Beached Sea Creature
    accept 4730
step
    path seq 1439 35.43,76.57
    goto 1439 @541.75,4991.52
    note-enUS Make sure you check if Murkdeep is already up in the water (if someone has previously failed the encounter or left the Greymist Hunter in the wave that he spawns with alive)
    note-ptBR Verifique se Murkdeep já está ativo na água (se alguém falhou no encontro antes ou deixou vivo o Greymist Hunter da onda com a qual ele aparece)
    note-enUS Kill the Greymist Warriors and Greymist Hunters in the camp
    note-ptBR Mate os Greymist Warriors e Greymist Hunters no acampamento
    note-enUS Move to the Bonfire in the center of the camp to start the Murkdeep encounter:
    note-ptBR Vá até a fogueira no centro do acampamento para iniciar o encontro com Murkdeep:
    note-enUS 3 waves will spawn from the water, each after killing the previous wave: Wave 1 has 3 level 12-13 Greymist Coastrunners, Wave 2 has 2 level 15-16 Greymist Warriors, and Wave 3 has a level 19 Murkdeep and a level 16-17 Greymist Hunter. You can move away from the Bonfire to avoid a
    note-ptBR 3 ondas surgirão da água, cada uma após matar a anterior: a Onda 1 tem 3 Greymist Coastrunners nível 12-13, a Onda 2 tem 2 Greymist Warriors nível 15-16 e a Onda 3 tem um Murkdeep nível 19 e um Greymist Hunter nível 16-17. Você pode se afastar da Bonfire para evitar um
    objective 4740/1
step
    path closest 1439 32.67,81.75 36.33,73.41 35.2,71.86 32.67,81.75 33.28,80.33 34.17,80.49 35.43,79.05 36.33,73.41 35.41,73.18 35.03,72.43 35.2,71.86
    note-enUS Kill Encrusted Tide Crawlers and Reef Crawlers. Loot them for their Fine Crab Chunks
    note-ptBR Mate Encrusted Tide Crawlers e Reef Crawlers. Saqueie-os para obter Fine Crab Chunks
    objective 1138/1
step
    ifonquest 1003
    path seq 1439 @227.35,4575.38 @205.73,4639.13 @129.1,4741.75 @86.52,4839.13 @338.7,4821.22
    goto 1439 @452.67,4684.98
    note-enUS Kill Grizzled Thistle Bears. Loot them for their Scalps
    note-ptBR Mate Grizzled Thistle Bears. Saqueie-os para obter os escalpos
    note-enUS Be careful as they cast [Ravage] an instant attack dealing 20-40 damage and knocking you down for 2 seconds
    note-ptBR Cuidado, eles lançam [Ravage], um ataque instantâneo que causa 20-40 de dano e derruba você por 2 segundos
    objective 1003/1
step
    ifonquest 1003
    goto 1439 @230.69,4815.33
    note-enUS Click the Buzzbox 525 on the ground
    note-ptBR Clique na Buzzbox 525 no chão
    turnin 1003
step
    ifcomplete 951
    goto 1439 43.55,76.29
    note-enUS Talk to Onu
    note-ptBR Fale com Onu
    turnin 951
step
    goto 1439 43.55,76.29
    note-enUS Talk to Onu
    note-ptBR Fale com Onu
    turnin 950
step
    goto 1439 44.4,76.42
    note-enUS Talk to Kerlonian Evershade to start the escort
    note-ptBR Fale com Kerlonian Evershade para iniciar a escolta
    note-enUS Skip this step if he is not there. It can take up to 25 minutes for him to respawn
    note-ptBR Pule este passo se ele não estiver lá. Ele pode levar até 25 minutos para reaparecer
    note-enUS This is a timed quest, you have to escort him all the way to ashenvale in 20 minutes
    note-ptBR Esta é uma missão com tempo, você precisa escoltá-lo até Ashenvale em 20 minutos
    accept 5321
step
    ifonquest 5321
    goto 1439 @34.78,5001.57
    note-enUS Open Kerlonian's Chest. Loot it for the [Horn of Awakening]
    note-ptBR Abra o Kerlonian's Chest. Saqueie-o para obter o [Horn of Awakening]
    objective 5321/1
step
    goto 1440 @128.01,3305.31
    goto 1439 @-5.83,4608.57 30
    note-enUS Kerlonian will follow you and occasionally help in combat. Make sure you don't lose him as he will stop moving when he falls asleep. You have 25 minutes to reach Ashenvale and complete this quest
    note-ptBR Kerlonian seguirá você e às vezes ajudará em combate. Não o perca, pois ele para de andar quando adormece. Você tem 25 minutos para chegar a Ashenvale e concluir esta missão
    use 13536 |opt
    note-enUS Use the [Horn of Awakening] whenever Kerlonian falls asleep while standing next to him to wake him up
    note-ptBR Use o [Horn of Awakening] sempre que Kerlonian adormecer, em pé ao lado dele, para acordá-lo
    note-enUS Avoid running on the main road as much as possible. Enemies will only spawn if you're on the road
    note-ptBR Evite correr pela estrada principal o máximo possível. Os inimigos só surgem se você estiver na estrada
    note-enUS Travel toward Volcor in the Cave
    note-ptBR Vá em direção a Volcor na Cave
    note-enUS Talk to Volcor
    note-ptBR Fale com Volcor
    turnin 993
    accept 995
step
    ifonquest 995
    goto 1439 @30.85,4635.2
    note-enUS Wait out the RP
    note-ptBR Espere o RP terminar
    objective 995/1
step
    ifonquest 5321
    path seq 1440 @-12.7,4150.17
    goto 1440 @128.01,3305.31
    zone 1440 |opt
    note-enUS Travel south to Ashenvale
    note-ptBR Vá para o sul até Ashenvale
    note-enUS Escort Kerlonian to Maestra's Post in Ashenvale
    note-ptBR Escolte Kerlonian até Maestra's Post em Ashenvale
    use 13536
    note-enUS Use the [Horn of Awakening] whenever Kerlonian falls asleep next to him
    note-ptBR Use o [Horn of Awakening] sempre que Kerlonian adormecer, ao lado dele
    note-enUS Avoid running on the main road as much as possible. Enemies will only spawn if you're on the road
    note-ptBR Evite correr pela estrada principal o máximo possível. Os inimigos só surgem se você estiver na estrada
    objective 5321/2
step
    ifcomplete 5321
    goto 1440 @128.01,3305.31
    note-enUS Talk to Liladris Moonriver
    note-ptBR Fale com Liladris Moonriver
    turnin 5321
step
    goto 1440 @189.71,3185.77
    note-enUS Talk to Delgren the Purifier
    note-ptBR Fale com Delgren the Purifier
    turnin 967
    accept 970
step
    goto 1440 @175.87,3189.61
    note-enUS Talk to Orendil Broadleaf
    note-ptBR Fale com Orendil Broadleaf
    accept 1010
step
    goto 1440 @-102.08,3492.89
    note-enUS Kill Dark Strand Cultists and Dark Strand Adepts. Loot them for the Glowing Soul Gem
    note-ptBR Mate Dark Strand Cultists e Dark Strand Adepts. Saqueie-os para obter a Glowing Soul Gem
    objective 970/1
step
    goto 1440 @-102.08,3492.89
    level 20
    note-enUS Keep killing Dark Strand mobs until you have enough xp to reach level 20
    note-ptBR Continue matando mobs de Dark Strand até ter xp suficiente para chegar ao nível 20
step
    ifonquest 1010
    path seq 1440 @-203.58,3849.97 @-2.9,3737.73
    goto 1440 @-138.99,3806.92
    note-enUS Open the Plant Bundles in the ground. Loot them for Bathran's Hairs
    note-ptBR Abra os Plant Bundles no chão. Saqueie-os para obter Bathran's Hairs
    note-enUS They look like small brown sacks and can be partially buried into the ground. They can be hard to see
    note-ptBR Parecem pequenos sacos marrons e podem estar parcialmente enterrados no chão. Podem ser difíceis de ver
    note-enUS Make sure you have [Find Herbs] enabled to see them on the minimap
    note-ptBR Ative [Find Herbs] para vê-las no minimapa
    objective 1010/1
step
    ifonquest 1010
    ifskillbelow herbalism 1
    path seq 1440 @-203.58,3849.97 @-2.9,3737.73
    goto 1440 @-138.99,3806.92
    note-enUS Open the Plant Bundles in the ground. Loot them for Bathran's Hairs
    note-ptBR Abra os Plant Bundles no chão. Saqueie-os para obter Bathran's Hairs
    note-enUS They look like small brown sacks and can be partially buried into the ground. They can be hard to see
    note-ptBR Parecem pequenos sacos marrons e podem estar parcialmente enterrados no chão. Podem ser difíceis de ver
    objective 1010/1
step
    ifcomplete 1010
    goto 1440 @175.87,3189.61
    note-enUS Talk to Orendil Broadleaf
    note-ptBR Fale com Orendil Broadleaf
    turnin 1010
    accept 1020
step
    ifturnedin 1010
    goto 1440 @175.87,3189.61
    note-enUS Talk to Orendil Broadleaf
    note-ptBR Fale com Orendil Broadleaf
    accept 1020
step
    goto 1440 @189.71,3185.77
    note-enUS Talk to Delgren the Purifier
    note-ptBR Fale com Delgren the Purifier
    turnin 970
    accept 973
step
    goto 1440 @-138.99,3806.92
    level 20
    note-enUS Grind to level 20
    note-ptBR Mate monstros até o nível 20
step
    goto 1440 @175.87,3189.61
    note-enUS Talk to Orendil Broadleaf
    note-ptBR Fale com Orendil Broadleaf
    accept 1010
step
    path seq 1440 @-203.58,3849.97 @-2.9,3737.73
    goto 1440 @-138.99,3806.92
    note-enUS Open the Plant Bundles in the ground. Loot them for Bathran's Hairs
    note-ptBR Abra os Plant Bundles no chão. Saqueie-os para obter Bathran's Hairs
    note-enUS They look like small brown sacks and can be partially buried into the ground. They can be hard to see
    note-ptBR Parecem pequenos sacos marrons e podem estar parcialmente enterrados no chão. Podem ser difíceis de ver
    note-enUS Make sure you have [Find Herbs] enabled to see them on the minimap
    note-ptBR Ative [Find Herbs] para vê-las no minimapa
    objective 1010/1
step
    ifskillbelow herbalism 1
    path seq 1440 @-203.58,3849.97 @-2.9,3737.73
    goto 1440 @-138.99,3806.92
    note-enUS Open the Plant Bundles in the ground. Loot them for Bathran's Hairs
    note-ptBR Abra os Plant Bundles no chão. Saqueie-os para obter Bathran's Hairs
    note-enUS They look like small brown sacks and can be partially buried into the ground. They can be hard to see
    note-ptBR Parecem pequenos sacos marrons e podem estar parcialmente enterrados no chão. Podem ser difíceis de ver
    objective 1010/1
step
    goto 1440 @175.87,3189.61
    note-enUS Talk to Orendil Broadleaf
    note-ptBR Fale com Orendil Broadleaf
    turnin 1010
    accept 1020
step
    goto 1440 @-283.73,2827.92
    note-enUS Travel to Astranaar
    note-ptBR Vá até Astranaar
    note-enUS Talk to Daelyshia
    note-ptBR Fale com Daelyshia
    fp
    note-enUS Get the Astranaar Flight Path
    note-ptBR Pegue o ponto de voo de Astranaar
step
    goto 1440 @-299.3,2796.01
    note-enUS Talk to Shindrell Swiftfire
    note-ptBR Fale com Shindrell Swiftfire
    accept 1008
step
    goto 1440 @-311.99,2759.11
    note-enUS Talk to Sentinel Thenysil
    note-ptBR Fale com Sentinel Thenysil
    accept 1070
step
    goto 1440 @-362.16,2785.64
    note-enUS Talk to Faldreas Goeth'Shael
    note-ptBR Fale com Faldreas Goeth'Shael
    accept 1056
step
    goto 1440 @-411.18,2767.19
    note-enUS Talk to Raene Wolfrunner
    note-ptBR Fale com Raene Wolfrunner
    accept 991
    accept 1054
step
    only !Warlock
    goto 1440 @-433.09,2781.02
    note-enUS Talk to Innkeeper Kimlya
    note-ptBR Fale com Innkeeper Kimlya
    home
    note-enUS Set your Hearthstone to Astranaar
    note-ptBR Defina sua pedra de regresso em Astranaar
step
    goto 1440 @-454.43,2682.24
    note-enUS Talk to Pelturas Whitemoon
    note-ptBR Fale com Pelturas Whitemoon
    turnin 1020
    accept 1033
]==])
