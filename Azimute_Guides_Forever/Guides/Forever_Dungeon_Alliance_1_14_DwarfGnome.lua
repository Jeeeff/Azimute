-- Convertido automaticamente de RXPGuides (Dungeon Alliance-1-14_DwarfGnome.lua)
-- (c) RestedXP - CC BY-NC-SA 4.0 (ver LICENSE.txt). Não edite à mão:
-- rode tools/rxp2azimute.py de novo.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id forever.dg.a.12-14-loch-modan-dwarf-gnome
#name 12-14 Loch Modan (Dwarf/Gnome) (dungeons)
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#only !Hunter
#levels 12-14
#zones 1432
#suffix (Dwarf/Gnome)
#suffix-ptBR (Anão/Gnomo)
#name-ptBR 12-14 Loch Modan (Anão/Gnomo) (masmorras)
#group Leveling with dungeons (Alliance)
#group-ptBR Evolução com masmorras (Aliança)
#subgroup Speedrun 1-20
#subgroup-ptBR Rota rápida 1-20
#recommend Gnome Dwarf
#next forever.dg.a.13-15-westfall

step
    only Dwarf Paladin
    path seq 1455 35.24,32.79 27.21,12.55 |only Dwarf Paladin
    goto 1455 @-896.47,-4601.65 12 |only Dwarf Paladin
    goto 1455 @-896.47,-4601.65
    note-enUS Travel toward Brandur Ironhammer |only Dwarf Paladin
    note-ptBR Vá em direção a Brandur Ironhammer |only Dwarf Paladin
    note-enUS Talk to Brandur Ironhammer
    note-ptBR Fale com Brandur Ironhammer
    accept 2999
step
    only Dwarf Paladin
    path seq 1455 25.4,2.68 23.62,2.54 22.01,4.53 21.83,7.65 23.77,11.64 |only Dwarf Paladin
    goto 1455 27.62,12.18 12 |only Dwarf Paladin
    goto 1455 27.62,12.18
    note-enUS Travel toward Tiza Battleforge upstairs |only Dwarf Paladin
    note-ptBR Vá em direção a Tiza Battleforge no andar de cima |only Dwarf Paladin
    note-enUS Talk to Tiza Battleforge upstairs
    note-ptBR Fale com Tiza Battleforge no andar de cima
    turnin 2999
    accept 1645
    turnin 1645
step
    only Dwarf Paladin
    goto 1455 27.62,12.18
    note-enUS Use the [The Tome of Divinity] to start the quest
    note-ptBR Use o [The Tome of Divinity] para iniciar a missão
    accept 1646
    use 6916
step
    only Dwarf Paladin
    goto 1455 27.62,12.18
    note-enUS Talk to Tiza Battleforge upstairs
    note-ptBR Fale com Tiza Battleforge no andar de cima
    turnin 1646
    accept 1647
step
    only Dwarf Paladin
    path closest 1455 21.75,51.73 26.02,68.38 42.94,84.11 21.75,51.73 22.02,54.95 23.33,61.87 23.72,63.82 26.02,68.38 27.5,71.32 31.35,77.81 32.41,78.56 37.26,82.16 39.2,83.2 42.94,84.11
    note-enUS Talk to John Turner
    note-ptBR Fale com John Turner
    note-enUS John Turner patrols along the outer ring of Ironforge between just past the Stonefire Tavern and just past the Visitor's Center
    note-ptBR John Turner patrulha o anel externo de Ironforge, entre logo depois da Stonefire Tavern e logo depois do Visitor's Center
    turnin 1647
    accept 1648
    turnin 1648
    accept 1778
step
    only Dwarf Paladin
    path seq 1455 27.23,12.72 25.4,2.68 23.62,2.54 22.01,4.53 21.83,7.65 23.77,11.64 |only Dwarf Paladin
    goto 1455 27.62,12.18 12 |only Dwarf Paladin
    goto 1455 27.62,12.18
    note-enUS Travel toward the staircase underneath Tiza Battleforge |only Dwarf Paladin
    note-ptBR Vá em direção à escada embaixo de Tiza Battleforge |only Dwarf Paladin
    note-enUS Travel toward Tiza Battleforge upstairs |only Dwarf Paladin
    note-ptBR Vá em direção a Tiza Battleforge no andar de cima |only Dwarf Paladin
    note-enUS Talk to Tiza Battleforge upstairs
    note-ptBR Fale com Tiza Battleforge no andar de cima
    turnin 1778
    accept 1779
step
    only Dwarf Paladin
    goto 1455 @-899.7,-4613.03
    note-enUS Talk to Muiredon Battleforge upstairs
    note-ptBR Fale com Muiredon Battleforge no andar de cima
    turnin 1779
    accept 1783
step
    only Paladin
    goto 1455 @-1152.4,-4821.13
    note-enUS Talk to Gryth Thurden
    note-ptBR Fale com Gryth Thurden
    fly 1432
    note-enUS Fly to Loch Modan
    note-ptBR Voe para Loch Modan
step
    ifcomplete 418
    goto 1432 @-2954.42,-5394.1
    note-enUS Talk to Vidra Hearthstove
    note-ptBR Fale com Vidra Hearthstove
    turnin 418
step
    goto 1432 @-2952.46,-5381.87
    note-enUS Talk to Yanni Stoutheart
    note-ptBR Fale com Yanni Stoutheart
    vendor
    note-enUS Buy [Small Brown Pouches] from her if needed
    note-ptBR Compre [Small Brown Pouches] dela, se precisar
step
    only !Hunter
    goto 1432 @-2973.9,-5377.93
    note-enUS Talk to Innkeeper Hearthstove
    note-ptBR Fale com Innkeeper Hearthstove
    vendor |only Warrior Rogue
    note-enUS Buy some [Freshly Baked Bread] if needed |only Warrior Rogue
    note-ptBR Compre um pouco de [Freshly Baked Bread] se precisar |only Warrior Rogue
    vendor |only !Warrior !Rogue
    note-enUS Buy some [Freshly Baked Bread] and [Ice Cold Milk] from her if needed |only !Warrior !Rogue
    note-ptBR Compre um pouco de [Freshly Baked Bread] e [Ice Cold Milk] dela, se precisar |only !Warrior !Rogue
step
    only Dwarf Gnome
    path seq 1432 @-3019.02,-5369.4
    goto 1432 @-3014.86,-5366.93
    note-enUS Talk to Brock Stoneseeker
    note-ptBR Fale com Brock Stoneseeker
    turnin 6392
step
    goto 1432 @-3003.3,-5376.02
    note-enUS Talk to Grenhild Darktalon
    note-ptBR Fale com Grenhild Darktalon
    accept 86667
step
    path seq 1432 @-2619.2,-5783.3
    goto 1432 @-2534.38,-5648.28 5
    note-enUS Travel to the snowy patch on the ground just outside the South Gate Pass tunnel
    note-ptBR Vá até a área de neve no chão logo fora do túnel de South Gate Pass
    use 279380
    note-enUS Use the [Ceramic Jar] while standing on the snowy patch to collect the [Jar of Snow]
    note-ptBR Use o [Ceramic Jar] em pé na área de neve para coletar o [Jar of Snow]
    objective 86667/1
step
    only Shaman
    goto 1432 @-2521.9,-5631 20 |only Shaman
    path seq 1426 @-2437.6,-5549.7 @-2473.1,-5418.6 |only Shaman
    goto 1426 @-2542.4,-5401.4 25 |only Shaman
    goto 1426 @-2510.1,-5310.3
    note-enUS Travel through the South Gate Pass |only Shaman
    note-ptBR Passe pela South Gate Pass |only Shaman
    note-enUS Travel toward Bruegs Kindleborn in the cave atop the mountain |only Shaman
    note-ptBR Vá em direção a Bruegs Kindleborn na caverna no alto da montanha |only Shaman
    note-enUS Talk to Bruegs Kindleborn
    note-ptBR Fale com Bruegs Kindleborn
    turnin 94449
    accept 94465
step
    only Shaman
    ifonquest 94465
    goto 1426 @-2594.1,-5335.9 20
    goto 1432 @-2641,-5375.7 20
    note-enUS Carefully drop down the mountain into Loch Modan
    note-ptBR Desça a montanha com cuidado até Loch Modan
step
    only Shaman
    path seq 1432 @-2915.5,-5576.5 @-2874.5,-5608.6 |only Shaman
    goto 1432 @-2846.1,-5657.6 15 |only Shaman
    goto 1432 @-2880.9,-5701.5
    note-enUS Travel up the mountain trail toward Braldir Ashmantle |only Shaman
    note-ptBR Suba a trilha da montanha em direção a Braldir Ashmantle |only Shaman
    note-enUS Talk to Braldir Ashmantle
    note-ptBR Fale com Braldir Ashmantle
    turnin 94465
    accept 94466
step
    path seq 1426 70.84,51.78 73.53,50.85 75.35,48.53 79.88,46.8 81.04,43.46 80.58,36.04 70.84,51.78 73.53,50.85 75.35,48.53 79.88,46.8 81.04,43.46
    goto 1426 80.58,36.04
    goto 1432 @-3146.73,-4837.02
    note-enUS Kill Mountain Boars. Loot them for their [Chunks of Boar Meat]
    note-ptBR Mate Mountain Boars. Saqueie-os para obter [Chunks of Boar Meat]
    collect 769 10 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Mountain Boars. Loot them for their [Chunks of Boar Meat]
    note-ptBR Mate Mountain Boars. Saqueie-os para obter [Chunks of Boar Meat]
    note-enUS Don't go out of your way to farm this now. Simply kill and loot all the boars you're passing by
    note-ptBR Não saia do caminho para farmar isso agora. Apenas mate e saqueie todos os javalis pelo caminho
    collect 769 50 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Elder Black Bears. Loot them for their Bear Meat
    note-ptBR Mate Elder Black Bears. Saqueie-os para obter Bear Meat
    note-enUS Kill Mountain Boars. Loot them for their Boar Intestines
    note-ptBR Mate Mountain Boars. Saqueie-os para obter Boar Intestines
    note-enUS Kill Forest Lurkers. Loot them for their Ichor
    note-ptBR Mate Forest Lurkers. Saqueie-os para obter icor
    collect 3172 3 |quest 418 |q 418/1 |opt
    collect 3173 3 |quest 418 |q 418/1 |opt
    collect 3174 3 |quest 418 |q 418/1 |opt
    note-enUS Talk to Norric Lochthane
    note-ptBR Fale com Norric Lochthane
    note-enUS Ensure to turn this in before the 10 minute expiry on the [Jar of Snow]
    note-ptBR Entregue isto antes que o [Jar of Snow] expire em 10 minutos
    turnin 86667
step
    only Shaman
    path closest 1432 @-3287.4,-4868 @-3397.5,-4870.8 @-3337.3,-4998.4
    note-enUS Kill Stonesplinter Seers. Loot them for their Reagent Pouch
    note-ptBR Mate Stonesplinter Seers. Saqueie-os para obter a Reagent Pouch
    objective 94466/2
step
    path seq 1432 @-2684.71,-5042.87 @-2712.57,-5286.61 @-3033.92,-4797.29 @-2972.41,-4796.92 @-2684.71,-5042.87 @-2712.57,-5286.61 @-2972.96,-4835.19 @-2684.71,-5042.87 @-2712.57,-5286.61 @-3033.92,-4797.29 @-2972.41,-4796.92 @-2684.71,-5042.87 @-2712.57,-5286.61 @-3033.92,-4797.29
    goto 1432 @-2972.41,-4796.92
    note-enUS Kill Tunnel Rats. Loot them for their Ears
    note-ptBR Mate Tunnel Rats. Saqueie-os para obter as orelhas
    note-enUS Kill Tunnel Rat Geomancers. Loot them for their Fire Tar |only Shaman
    note-ptBR Mate Tunnel Rat Geomancers. Saqueie-os para obter Fire Tar |only Shaman
    note-enUS Tunnel Rat Geomancers are only found inside the mine |only Shaman
    note-ptBR Os Tunnel Rat Geomancers só são encontrados dentro da mina |only Shaman
    objective 416/1 |opt
    objective 94466/1 |opt
    note-enUS Enter the Silver Stream Mine
    note-ptBR Entre na Silver Stream Mine
    note-enUS Equip the [Heavy Spiked Mace] |only Paladin Warrior
    note-ptBR Equipe a [Heavy Spiked Mace] |only Paladin Warrior
    use 4778 |only Paladin Warrior |opt
    note-enUS Equip the [Ironwood Maul] |only Paladin Warrior
    note-ptBR Equipe o [Ironwood Maul] |only Paladin Warrior
    use 4777 |only Paladin Warrior |opt
    note-enUS Kill Tunnel Rats. Loot them for their Ears
    note-ptBR Mate Tunnel Rats. Saqueie-os para obter as orelhas
    note-enUS Kill Tunnel Rat Geomancers. Loot them for their Fire Tar |only Shaman
    note-ptBR Mate Tunnel Rat Geomancers. Saqueie-os para obter Fire Tar |only Shaman
    note-enUS Tunnel Rat Geomancers are only found inside the mine |only Shaman
    note-ptBR Os Tunnel Rat Geomancers só são encontrados dentro da mina |only Shaman
    objective 416/1
    objective 94466/1 |only Shaman
step
    path seq 1426 70.84,51.78 73.53,50.85 75.35,48.53 79.88,46.8 81.04,43.46 80.58,36.04 70.84,51.78 73.53,50.85 75.35,48.53 79.88,46.8 81.04,43.46
    goto 1426 80.58,36.04
    path seq 1432 23.49,18.01 24.28,17.96 @-2659.45,-4822.45
    goto 1432 @-2676.99,-4825.98
    note-enUS Kill Mountain Boars. Loot them for their [Chunks of Boar Meat]
    note-ptBR Mate Mountain Boars. Saqueie-os para obter [Chunks of Boar Meat]
    collect 769 10 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Mountain Boars. Loot them for their [Chunks of Boar Meat]
    note-ptBR Mate Mountain Boars. Saqueie-os para obter [Chunks of Boar Meat]
    note-enUS Don't go out of your way to farm this now. Simply kill and loot all the boars you're passing by
    note-ptBR Não saia do caminho para farmar isso agora. Apenas mate e saqueie todos os javalis pelo caminho
    collect 769 50 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Elder Black Bears. Loot them for their Bear Meat
    note-ptBR Mate Elder Black Bears. Saqueie-os para obter Bear Meat
    note-enUS Kill Mountain Boars. Loot them for their Boar Intestines
    note-ptBR Mate Mountain Boars. Saqueie-os para obter Boar Intestines
    note-enUS Kill Forest Lurkers. Loot them for their Ichor
    note-ptBR Mate Forest Lurkers. Saqueie-os para obter icor
    collect 3172 3 |quest 418 |q 418/1 |opt
    collect 3173 3 |quest 418 |q 418/1 |opt
    collect 3174 3 |quest 418 |q 418/1 |opt
    note-enUS Enter the Bunker
    note-ptBR Entre no Bunker
    note-enUS Talk to Gothor Brumn
    note-ptBR Fale com Gothor Brumn
    vendor |opt
    note-enUS Vendor and repair if needed
    note-ptBR Venda e repare se precisar
    note-enUS Talk to Mountaineer Stormpike
    note-ptBR Fale com Mountaineer Stormpike
    turnin 307
    turnin 353
step
    path seq 1426 70.84,51.78 73.53,50.85 75.35,48.53 79.88,46.8 81.04,43.46 80.58,36.04 70.84,51.78 73.53,50.85 75.35,48.53 79.88,46.8 81.04,43.46
    goto 1426 80.58,36.04
    path seq 1432 @-2735.74,-4684.34 @-2846.07,-4682.5 @-2782.63,-4770.8 @-2835.04,-4976.83 @-2915.03,-5044.89 @-3080.53,-5100.08 @-2735.74,-4684.34 @-2846.07,-4682.5 @-2782.63,-4770.8 @-2835.04,-4976.83 @-2915.03,-5044.89 @-3080.53,-5100.08 @-2735.74,-4684.34 @-3041.92,-5129.51 @-3017.09,-5219.65 @-2815.73,-5147.91 @-2757.81,-4952.91 @-2782.63,-4903.25 @-3041.92,-5129.51 @-3017.09,-5219.65 @-2815.73,-5147.91 @-2757.81,-4952.91 @-2782.63,-4903.25 @-3041.92,-5129.51 @-2873.66,-4789.19 @-2766.08,-4866.45 @-2926.07,-5232.53 @-2992.27,-5055.93 @-3069.5,-5078.01 @-2873.66,-4789.19 @-2766.08,-4866.45 @-2926.07,-5232.53 @-2992.27,-5055.93 @-3069.5,-5078.01
    goto 1432 @-2873.66,-4789.19
    note-enUS Kill Mountain Boars. Loot them for their [Chunks of Boar Meat]
    note-ptBR Mate Mountain Boars. Saqueie-os para obter [Chunks of Boar Meat]
    collect 769 10 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Mountain Boars. Loot them for their [Chunks of Boar Meat]
    note-ptBR Mate Mountain Boars. Saqueie-os para obter [Chunks of Boar Meat]
    note-enUS Don't go out of your way to farm this now. Simply kill and loot all the boars you're passing by
    note-ptBR Não saia do caminho para farmar isso agora. Apenas mate e saqueie todos os javalis pelo caminho
    collect 769 50 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Elder Black Bears. Loot them for their Bear Meat
    note-ptBR Mate Elder Black Bears. Saqueie-os para obter Bear Meat
    note-enUS Kill Mountain Boars. Loot them for their Boar Intestines
    note-ptBR Mate Mountain Boars. Saqueie-os para obter Boar Intestines
    note-enUS Kill Forest Lurkers. Loot them for their Ichor
    note-ptBR Mate Forest Lurkers. Saqueie-os para obter icor
    collect 3173 3 |quest 418 |q 418/1
    collect 3172 3 |quest 418 |q 418/1
    collect 3174 3 |quest 418 |q 418/1
step
    path seq 1432 35.27,47.75 35.43,48.24
    goto 1432 @-2954.42,-5394.1
    note-enUS Talk to Mountaineer Kadrell
    note-ptBR Fale com Mountaineer Kadrell
    note-enUS Mountaineer Kadrell patrols the road through Thelsamar
    note-ptBR Mountaineer Kadrell patrulha a estrada que atravessa Thelsamar
    turnin 416 |opt
    note-enUS Enter the Stoutlager Inn
    note-ptBR Entre na Stoutlager Inn
    note-enUS Talk to Vidra Hearthstove
    note-ptBR Fale com Vidra Hearthstove
    turnin 418
step
    ifskillbelow cooking 50
    goto 1432 @-2952.46,-5381.87
    note-enUS Talk to Yanni Stoutheart
    note-ptBR Fale com Yanni Stoutheart
    note-enUS Buy a [Simple Wood] and a [Flint and Tinder] from her
    note-ptBR Compre um [Simple Wood] e um [Flint and Tinder] dela
    note-enUS This is used to make [Basic Campfires] on Boats to level your [Cooking] skill without losing time
    note-ptBR Isto é usado para fazer [Basic Campfires] nos barcos e subir sua habilidade de [Cooking] sem perder tempo
    note-enUS You need 50 [Cooking] for a quest in Duskwood later
    note-ptBR Você precisa de 50 em [Cooking] para uma missão em Duskwood mais tarde
    collect 4470 1
    collect 4471 1
step
    path seq 1432 @-3006.61,-5259.57 @-3020.95,-5282.02 @-3023.44,-5326.9 @-3007.99,-5337.39 @-2964.41,-5349.9 @-2894.9,-5401.96
    goto 1432 @-3007.99,-5337.39
    note-enUS Talk to Mountaineer Kadrell
    note-ptBR Fale com Mountaineer Kadrell
    note-enUS Mountaineer Kadrell patrols the road through Thelsamar
    note-ptBR Mountaineer Kadrell patrulha a estrada que atravessa Thelsamar
    turnin 416
step
    ifonquest 224
    ifonquest 267
    goto 1432 @-2729.4,-5534.96
    note-enUS Kill Stonesplinter Troggs and Stonesplinter Scouts. Loot them for their Trogg Stone Teeth
    note-ptBR Mate Stonesplinter Troggs e Stonesplinter Scouts. Saqueie-os para obter Trogg Stone Teeth
    note-enUS Be careful as Stonesplinter Scouts cast [Shoot] (Ranged Cast: Deals 14-20 damage)
    note-ptBR Cuidado, Stonesplinter Scouts lançam [Shoot] (Lançamento à distância: causa 14-20 de dano)
    note-enUS This is a hyperspawn area. You should not need to move from here
    note-ptBR Esta é uma área de reaparecimento muito rápido. Você não deve precisar sair daqui
    objective 224/1
    objective 224/2
    objective 267/1
step
    goto 1432 @-2729.4,-5534.96
    level 13
    note-enUS Grind to 9600+/11400xp
    note-ptBR Mate monstros até 9600+/11400xp
    note-enUS If you're planning on running the Hall of Thanes dungeon in Ironforge later, skip this step
    note-ptBR Se planeja fazer a masmorra Hall of Thanes em Ironforge mais tarde, pule esta etapa
step
    only Shaman
    path seq 1432 @-2915.5,-5576.5 @-2874.5,-5608.6 |only Shaman
    goto 1432 @-2846.1,-5657.6 15 |only Shaman
    goto 1432 @-2880.9,-5701.5
    note-enUS Travel up the mountain trail toward Braldir Ashmantle again |only Shaman
    note-ptBR Suba a trilha da montanha em direção a Braldir Ashmantle novamente |only Shaman
    note-enUS Talk to Braldir Ashmantle
    note-ptBR Fale com Braldir Ashmantle
    turnin 94466
    accept 94467
step
    only Shaman
    goto 1432 @-2873.8,-5672.5 |only Shaman
    goto 1432 @-2873.8,-5672.5
    note-enUS Continue up the trail |only Shaman
    note-ptBR Continue subindo a trilha |only Shaman
    use 6636 |only Shaman |opt
    note-enUS Use the [Fire Sapta] next to the rock statue to summon the Minor Manifestation of Fire |only Shaman
    note-ptBR Use o [Fire Sapta] ao lado da estátua de pedra para invocar a Minor Manifestation of Fire |only Shaman
    note-enUS Kill the Minor Manifestation of Fire. Loot it for the Glowing Ember
    note-ptBR Mate a Minor Manifestation of Fire. Saqueie-a para obter a Glowing Ember
    objective 94467/1
step
    only Shaman
    goto 1432 @-2870.7,-5674.6
    note-enUS Click the Brazier of the Dormant Flame
    note-ptBR Clique no Brazier of the Dormant Flame
    turnin 94467
    accept 94468
step
    ifcomplete 267
    path seq 1432 @-2677.26,-5778.34 @-2648.3,-5876.75
    goto 1432 @-2634.59,-5842.81
    note-enUS Run up the dirt path then drop down into the bunker
    note-ptBR Suba o caminho de terra correndo e depois pule para dentro do bunker
    note-enUS Talk to Captain Rugelfuss inside the bunker
    note-ptBR Fale com Captain Rugelfuss dentro do bunker
    turnin 267
step
    ifcomplete 224
    goto 1432 @-2602.54,-5832.73
    note-enUS Talk to Mountaineer Cobbleflint
    note-ptBR Fale com Mountaineer Cobbleflint
    turnin 224
step
    only Shaman
    goto 1432 @-2521.9,-5631 20 |only Shaman
    path seq 1426 @-2437.6,-5549.7 @-2473.1,-5418.6 |only Shaman
    goto 1426 @-2542.4,-5401.4 25 |only Shaman
    goto 1426 @-2510.1,-5310.3
    note-enUS Travel through the South Gate Pass |only Shaman
    note-ptBR Passe pela South Gate Pass |only Shaman
    note-enUS Travel toward Bruegs Kindleborn in the cave atop the mountain again |only Shaman
    note-ptBR Vá em direção a Bruegs Kindleborn na caverna no alto da montanha de novo |only Shaman
    note-enUS Talk to Bruegs Kindleborn
    note-ptBR Fale com Bruegs Kindleborn
    turnin 94468
step
    only Shaman
    ifturnedin 94468
    goto 1426 @-2594.1,-5335.9 20
    goto 1432 @-2641,-5375.7 20
    note-enUS Carefully drop down the mountain into Loch Modan
    note-ptBR Desça a montanha com cuidado até Loch Modan
step
    path closest 1432 @-3319.8,-5217.6 @-3251.55,-5285.88 @-3342.57,-5484.55 @-3386.71,-5462.48 @-3319.8,-5217.6 @-3251.55,-5285.88 @-3342.57,-5484.55 @-3386.71,-5462.48
    note-enUS Click the Discarded Fishing Toolbox on the lake floor
    note-ptBR Clique na Discarded Fishing Toolbox no fundo do lago
    note-enUS NOTE: This can spawn in one of many different locations. Swim around until you see the exclamation point on your minimap
    note-ptBR OBS: Isso pode surgir em vários locais diferentes. Nade por aí até ver o ponto de exclamação no minimapa
    note-enUS Be careful of high level Young Threshadon
    note-ptBR Cuidado com Young Threshadon de nível alto
    accept 86614
step
    path seq 1432 @-3104.9,-5210.1
    goto 1432 @-3086.6,-5216.8
    note-enUS Talk to Khara Deepwater
    note-ptBR Fale com Khara Deepwater
    turnin 86614
step
    only !Dwarf !Paladin
    goto 1432 @-2929.87,-5424.84
    note-enUS Talk to Thorgrum Borrelson
    note-ptBR Fale com Thorgrum Borrelson
    fly 1455
    note-enUS Fly to Ironforge
    note-ptBR Voe para Ironforge
step
    only Dwarf Paladin
    path seq 1432 21.5,67.84 21.39,66.36 21.11,65.01 20.75,64.33 19.59,62.73 |only Dwarf Paladin
    goto 1432 16.34,58.52 20 |only Dwarf Paladin
    path seq 1426 84.26,51.37 |only Dwarf Paladin
    goto 1426 @-2055.23,-5784.31 |only Dwarf Paladin
    goto 1426 @-2055.23,-5784.31
    zone 1426 |only Dwarf Paladin |opt
    note-enUS Travel to Dun Morogh |only Dwarf Paladin
    note-ptBR Vá até Dun Morogh |only Dwarf Paladin
    note-enUS Use the [Symbol of Life] on Narm Faulk on the ground |only Dwarf Paladin
    note-ptBR Use o [Symbol of Life] em Narm Faulk no chão |only Dwarf Paladin
    use 6866 |only Dwarf Paladin |opt
    note-enUS Talk to Narm Faulk
    note-ptBR Fale com Narm Faulk
    turnin 1783
    accept 1784
    use 6866
step
    only Dwarf Paladin
    path seq 1426 @-2004.94,-5863.5
    goto 1426 @-2031.04,-5905.53
    note-enUS Kill Dark Iron Spies. Loot them for the Dark Iron Script
    note-ptBR Mate Dark Iron Spies. Saqueie-os para obter o Dark Iron Script
    objective 1784/1
step
    only Dwarf Paladin
    ifcomplete 1784
    hearth
    note-enUS Hearth to Ironforge
    note-ptBR Use a pedra de regresso para Ironforge
step
    only Dwarf Paladin
    ifcomplete 1784
    path seq 1426 @-541.23,-5242.29
    goto 1426 @-669.77,-5216.35 20
    goto 1455 @-831.39,-5028.78 40
    zone 1455
    note-enUS Return to Ironforge
    note-ptBR Volte para Ironforge
step
    only Rogue
    goto 1455 @-1197.27,-5041.49
    note-enUS Talk to Buliwyf Stonehand inside
    note-ptBR Fale com Buliwyf Stonehand lá dentro
    train 196
    note-enUS Train 1h Axes
    note-ptBR Treine 1h Axes
step
    only Paladin
    goto 1455 @-907.69,-4592.93
    note-enUS Talk to Beldruk Doombrow
    note-ptBR Fale com Beldruk Doombrow
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Dwarf Paladin
    path seq 1455 @-913.38,-4577.31 |only Dwarf Paladin
    goto 1455 @-906.11,-4632.03 10 |only Dwarf Paladin
    goto 1455 @-899.7,-4613.03
    note-enUS Travel toward Muiredon upstairs |only Dwarf Paladin
    note-ptBR Vá em direção a Muiredon no andar de cima |only Dwarf Paladin
    note-enUS Talk to Muiredon Battleforge
    note-ptBR Fale com Muiredon Battleforge
    turnin 1784
    accept 1785
step
    only Dwarf Paladin
    goto 1455 @-932.04,-4633.56
    note-enUS Talk to Tiza Battleforge
    note-ptBR Fale com Tiza Battleforge
    turnin 1785
step
    only Shaman
    goto 1455 @-1086.5,-4642.4
    note-enUS Talk to Eldrun Stormbreaker
    note-ptBR Fale com Eldrun Stormbreaker
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Mage
    goto 1455 @-928.48,-4614.62
    note-enUS Talk to Dink
    note-ptBR Fale com Dink
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Priest
    goto 1455 @-912.88,-4625.99
    note-enUS Talk to Toldren Deepiron
    note-ptBR Fale com Toldren Deepiron
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Rogue
    goto 1455 @-1120.72,-4650.12
    note-enUS Talk to Fenthwick
    note-ptBR Fale com Fenthwick
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warlock
    path seq 1455 @-1117.6,-4615.14
    goto 1455 @-1111.62,-4599.09
    note-enUS Talk to Briarthorn
    note-ptBR Fale com Briarthorn
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warlock
    goto 1455 53.16,7.04 10 |only Warlock
    goto 1455 @-1130.26,-4601.27
    note-enUS Enter Jubahl Corpseseeker's house |only Warlock
    note-ptBR Entre na casa de Jubahl Corpseseeker |only Warlock
    note-enUS Talk to Jubahl Corpseseeker
    note-ptBR Fale com Jubahl Corpseseeker
    vendor
    note-enUS Buy [Grimoire of Consume Shadows (Rank 1)] and [Grimoire of Sacrifice (Rank 1)] if you can afford it
    note-ptBR Compre [Grimoire of Consume Shadows (Rank 1)] e [Grimoire of Sacrifice (Rank 1)] se puder pagar
step
    only Warrior
    path seq 1455 67.4,84.91 |only Warrior
    goto 1455 @-1234.65,-5035.67 12 |only Warrior
    goto 1455 @-1234.65,-5035.67
    note-enUS Travel toward Bilban Tosslespanner |only Warrior
    note-ptBR Vá em direção a Bilban Tosslespanner |only Warrior
    note-enUS Talk to Bilban Tosslespanner
    note-ptBR Fale com Bilban Tosslespanner
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    path seq 1455 67.84,42.46
    goto 1455 @-1330.28,-4840.43
    note-enUS Talk to Gearcutter Cogspinner
    note-ptBR Fale com Gearcutter Cogspinner
    vendor |opt
    note-enUS Buy a [Bronze Tube] from him if it's available
    note-ptBR Compre um [Bronze Tube] dele, se estiver disponível
    note-enUS Enter the Deeprun Tram
    note-ptBR Entre no Deeprun Tram
    note-enUS Level your [First Aid] while waiting for the Tram to Stormwind City if needed |only Rogue Warrior Paladin
    note-ptBR Suba seu [First Aid] enquanto espera o bonde para Stormwind City, se necessário |only Rogue Warrior Paladin
    note-enUS You will need your [First Aid] to be 80 for a quest at level 24 |only Rogue !Dwarf
    note-ptBR Você vai precisar de [First Aid] 80 para uma missão no nível 24 |only Rogue !Dwarf
    zone 1453
    note-enUS Take the Deeprun Tram to Stormwind City
    note-ptBR Pegue o Deeprun Tram para Stormwind City
step
    path seq 1453 @638.8,-8341.95
    goto 1453 @719.67,-8550.3
    note-enUS Talk to Billibub Cogspinner
    note-ptBR Fale com Billibub Cogspinner
    vendor |opt
    note-enUS Buy a [Bronze Tube] from him if it's available
    note-ptBR Compre um [Bronze Tube] dele, se estiver disponível
    note-enUS Talk to Baros Alexston
    note-ptBR Fale com Baros Alexston
    accept 399
step
    note-enUS Equip the [Scimitar] |only Rogue
    note-ptBR Equipe a [Scimitar] |only Rogue
    use 2027 |only Rogue |opt
]==])

register([==[
#format 1
#id forever.dg.a.11-13-loch-modan-hunter
#name 11-13 Loch Modan (Hunter) (dungeons)
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#only Hunter
#levels 11-13
#zones 1432
#suffix (Hunter)
#suffix-ptBR (Caçador)
#name-ptBR 11-13 Loch Modan (Caçador) (masmorras)
#group Leveling with dungeons (Alliance)
#group-ptBR Evolução com masmorras (Aliança)
#subgroup Speedrun 1-20
#subgroup-ptBR Rota rápida 1-20
#recommend Dwarf
#next forever.dg.a.13-15-westfall

step
    goto 1426 @-2443.41,-5560.12 15
    goto 1432 @-2602.54,-5832.73 20
    note-enUS Travel to Loch Modan
    note-ptBR Vá até Loch Modan
    note-enUS Talk to Mountaineer Cobbleflint
    note-ptBR Fale com Mountaineer Cobbleflint
    accept 224
step
    goto 1432 @-2634.59,-5842.81
    note-enUS Talk to Captain Rugelfuss in the bunker
    note-ptBR Fale com Captain Rugelfuss no bunker
    accept 267
step
    path seq 1432 @-3006.61,-5259.57 @-3020.95,-5282.02 @-3023.44,-5326.9 @-3007.99,-5337.39 @-2964.41,-5349.9 @-2894.9,-5401.96
    goto 1432 @-3007.99,-5337.39
    note-enUS Talk to Mountaineer Kadrell
    note-ptBR Fale com Mountaineer Kadrell
    note-enUS Mountaineer Kadrell patrols the road through Thelsamar
    note-ptBR Mountaineer Kadrell patrulha a estrada que atravessa Thelsamar
    accept 416
    accept 1339
step
    goto 1432 @-2954.42,-5394.1
    note-enUS Talk to Vidra Hearthstove
    note-ptBR Fale com Vidra Hearthstove
    accept 418
step
    goto 1432 @-2973.9,-5377.93
    note-enUS Talk to Innkeeper Hearthstove
    note-ptBR Fale com Innkeeper Hearthstove
    home
    note-enUS Set your Hearthstone to Thelsamar
    note-ptBR Defina sua pedra de regresso em Thelsamar
step
    path seq 1432 @-3019.02,-5369.4
    goto 1432 @-3014.86,-5366.93
    note-enUS Talk to Brock Stoneseeker
    note-ptBR Fale com Brock Stoneseeker
    accept 6387
step
    goto 1432 @-2929.87,-5424.84
    note-enUS Talk to Thorgrum Borrelson
    note-ptBR Fale com Thorgrum Borrelson
    turnin 6387
    accept 6391
step
    goto 1432 @-2929.87,-5424.84
    goto 1455 @-1120.93,-4708.06
    note-enUS Talk to Thorgrum Borrelson
    note-ptBR Fale com Thorgrum Borrelson
    fly 1455 |opt
    note-enUS Fly to Ironforge
    note-ptBR Voe para Ironforge
    note-enUS Talk to Golnir Bouldertoe
    note-ptBR Fale com Golnir Bouldertoe
    turnin 6391
    accept 6388
step
    ifonquest 291
    goto 1455 @-1058.62,-4836.37 20
    note-enUS Talk to Senator Barin Redstone
    note-ptBR Fale com Senator Barin Redstone
    turnin 291
step
    only Hunter
    goto 1455 @-1273.83,-5022.08
    note-enUS Talk to Belia Thundergranite
    note-ptBR Fale com Belia Thundergranite
    turnin 6086
step
    only Hunter
    goto 1455 @-1152.4,-4821.13
    note-enUS Talk to Gryth Thurden
    note-ptBR Fale com Gryth Thurden
    turnin 6388
    accept 6392
step
    goto 1455 @-1152.4,-4821.13
    note-enUS Talk to Gryth Thurden
    note-ptBR Fale com Gryth Thurden
    fly 1432
    note-enUS Fly to Loch Modan
    note-ptBR Voe para Loch Modan
step
    path seq 1432 @-3019.02,-5369.4
    goto 1432 @-3014.86,-5366.93
    note-enUS Talk to Brock Stoneseeker
    note-ptBR Fale com Brock Stoneseeker
    turnin 6392
step
    only Hunter
    goto 1432 @-2982.01,-5286.93
    note-enUS Talk to Vrok Blunderblast
    note-ptBR Fale com Vrok Blunderblast
    note-enUS Buy a [Hunter's Boomstick] if you can afford it
    note-ptBR Compre um [Hunter's Boomstick] se tiver dinheiro
    collect 2511 1
step
    path seq 1432 @-2651.61,-4817.15
    goto 1432 @-2676.99,-4825.98
    note-enUS Equip the [Hunter's Boomstick] |only Hunter
    note-ptBR Equipe o [Hunter's Boomstick] |only Hunter
    use 2511 |only Hunter |opt
    note-enUS Kill Elder Black Bears. Loot them for their Bear Meat
    note-ptBR Mate Elder Black Bears. Saqueie-os para obter Bear Meat
    note-enUS Kill Mountain Boars. Loot them for their Boar Intestines
    note-ptBR Mate Mountain Boars. Saqueie-os para obter Boar Intestines
    note-enUS Kill Forest Lurkers. Loot them for their Ichor
    note-ptBR Mate Forest Lurkers. Saqueie-os para obter icor
    collect 3172 3 |quest 418 |q 418/1 |opt
    collect 3173 3 |quest 418 |q 418/1 |opt
    collect 3174 3 |quest 418 |q 418/1 |opt
    note-enUS Travel north to the Algaz Station
    note-ptBR Vá para o norte até Algaz Station
    note-enUS Talk to Mountaineer Stormpike inside the bunker
    note-ptBR Fale com Mountaineer Stormpike dentro do bunker
    turnin 1339
    accept 1338
    accept 307
step
    only Human
    goto 1432 @-2676.99,-4825.98
    note-enUS Talk to Mountaineer Stormpike inside the bunker
    note-ptBR Fale com Mountaineer Stormpike dentro do bunker
    turnin 1339
    accept 1338
    accept 307
step
    path seq 1432 @-2972.96,-4835.19
    goto 1432 @-2984.82,-4902.33
    note-enUS Enter the Silver Stream Mine
    note-ptBR Entre na Silver Stream Mine
    note-enUS Open the Miners' League Crates. Loot them for the Miners' Gear
    note-ptBR Abra os Miners' League Crates. Saqueie-os para obter o Miners' Gear
    note-enUS The Miners' League Crates can be found all throughout the Mine
    note-ptBR Os Miners' League Crates podem ser encontrados por toda a mina
    note-enUS You will be able to do this quest at a higher level if you wish to skip it for now
    note-ptBR Você poderá fazer esta missão em um nível mais alto se quiser pulá-la agora
    objective 307/1
step
    goto 1432 @-2676.99,-4825.98
    note-enUS Kill Elder Black Bears. Loot them for their Bear Meat
    note-ptBR Mate Elder Black Bears. Saqueie-os para obter Bear Meat
    note-enUS Kill Mountain Boars. Loot them for their Boar Intestines
    note-ptBR Mate Mountain Boars. Saqueie-os para obter Boar Intestines
    note-enUS Kill Forest Lurkers. Loot them for their Ichor
    note-ptBR Mate Forest Lurkers. Saqueie-os para obter icor
    collect 3172 3 |quest 418 |q 418/1 |opt
    collect 3173 3 |quest 418 |q 418/1 |opt
    collect 3174 3 |quest 418 |q 418/1 |opt
    note-enUS Talk to Mountaineer Stormpike
    note-ptBR Fale com Mountaineer Stormpike
    turnin 307
step
    path seq 1432 @-2684.71,-5042.87 @-2712.57,-5286.61 @-3033.92,-4797.29 @-2972.41,-4796.92 @-2684.71,-5042.87 @-2712.57,-5286.61 @-3033.92,-4797.29
    goto 1432 @-2972.41,-4796.92
    note-enUS Kill Tunnel Rats. Loot them for their Ears
    note-ptBR Mate Tunnel Rats. Saqueie-os para obter as orelhas
    note-enUS Tunnel Rats can spawn throughout Loch Modan. Check your World Map for their locations
    note-ptBR Os Tunnel Rats podem surgir por todo Loch Modan. Confira as localizações no mapa-múndi
    objective 416/1
step
    path seq 1432 @-2735.74,-4684.34 @-2846.07,-4682.5 @-2782.63,-4770.8 @-2835.04,-4976.83 @-2915.03,-5044.89 @-3080.53,-5100.08 @-2735.74,-4684.34 @-2846.07,-4682.5 @-2782.63,-4770.8 @-2835.04,-4976.83 @-2915.03,-5044.89 @-3080.53,-5100.08 @-2735.74,-4684.34 @-3041.92,-5129.51 @-3017.09,-5219.65 @-2815.73,-5147.91 @-2757.81,-4952.91 @-2782.63,-4903.25 @-3041.92,-5129.51 @-3017.09,-5219.65 @-2815.73,-5147.91 @-2757.81,-4952.91 @-2782.63,-4903.25 @-3041.92,-5129.51 @-2873.66,-4789.19 @-2766.08,-4866.45 @-2926.07,-5232.53 @-2992.27,-5055.93 @-3069.5,-5078.01 @-2873.66,-4789.19 @-2766.08,-4866.45 @-2926.07,-5232.53 @-2992.27,-5055.93 @-3069.5,-5078.01
    goto 1432 @-2873.66,-4789.19
    note-enUS Kill Elder Black Bears. Loot them for their Bear Meat
    note-ptBR Mate Elder Black Bears. Saqueie-os para obter Bear Meat
    note-enUS Kill Mountain Boars. Loot them for their Boar Intestines
    note-ptBR Mate Mountain Boars. Saqueie-os para obter Boar Intestines
    note-enUS Kill Forest Lurkers. Loot them for their Ichor
    note-ptBR Mate Forest Lurkers. Saqueie-os para obter icor
    collect 3173 3 |quest 418 |q 418/1
    collect 3172 3 |quest 418 |q 418/1
    collect 3174 3 |quest 418 |q 418/1
step
    path seq 1432 @-3006.61,-5259.57 @-3020.95,-5282.02 @-3023.44,-5326.9 @-3007.99,-5337.39 @-2964.41,-5349.9 @-2894.9,-5401.96
    goto 1432 @-3007.99,-5337.39
    note-enUS Talk to Mountaineer Kadrell
    note-ptBR Fale com Mountaineer Kadrell
    note-enUS Mountaineer Kadrell patrols the road through Thelsamar
    note-ptBR Mountaineer Kadrell patrulha a estrada que atravessa Thelsamar
    turnin 416
step
    goto 1432 @-2954.42,-5394.1
    note-enUS Talk to Vidra Hearthstove
    note-ptBR Fale com Vidra Hearthstove
    turnin 418
step
    path seq 1432 @-2738.78,-5384.11 @-2757.26,-5532.94 @-2913.65,-5804.46 @-2863.73,-5866.45 @-2738.78,-5384.11 @-2757.26,-5532.94 @-2913.65,-5804.46 @-2863.73,-5866.45
    goto 1432 @-2928.27,-5896.25
    note-enUS Kill Stonesplinter Troggs and Stonesplinter Scouts. Loot them for their Teeth
    note-ptBR Mate Stonesplinter Troggs e Stonesplinter Scouts. Saqueie-os para obter os dentes
    objective 224/1
    objective 224/2
    objective 267/1
step
    goto 1432 @-2602.54,-5832.73
    note-enUS Talk to Mountaineer Cobbleflint
    note-ptBR Fale com Mountaineer Cobbleflint
    turnin 224
step
    goto 1432 @-2634.59,-5842.81
    note-enUS Talk to Captain Rugelfuss
    note-ptBR Fale com Captain Rugelfuss
    turnin 267
step
    goto 1432 @-2534.38,-5648.28 5
    note-enUS Travel to the snowy patch on the ground just outside the South Gate Pass tunnel
    note-ptBR Vá até a área de neve no chão logo fora do túnel de South Gate Pass
    use 279380
    note-enUS Use the [Ceramic Jar] while standing on the snowy patch to collect the [Jar of Snow]
    note-ptBR Use o [Ceramic Jar] em pé na área de neve para coletar o [Jar of Snow]
    objective 86667/1
step
    goto 1432 @-3146.73,-4837.02
    note-enUS Talk to Norric Lochthane
    note-ptBR Fale com Norric Lochthane
    note-enUS Ensure to turn this in before the 10 minute expiry on the [Jar of Snow]
    note-ptBR Entregue isto antes que o [Jar of Snow] expire em 10 minutos
    turnin 86667
step
    path seq 1432 @-3319.8,-5217.6 @-3251.55,-5285.88 @-3342.57,-5484.55 @-3386.71,-5462.48 @-3319.8,-5217.6 @-3251.55,-5285.88 @-3342.57,-5484.55
    goto 1432 @-3386.71,-5462.48
    note-enUS Click the Discarded Fishing Toolbox on the lake floor
    note-ptBR Clique na Discarded Fishing Toolbox no fundo do lago
    note-enUS NOTE: This can spawn in one of many different locations. Swim around until you see the exclamation point on your minimap
    note-ptBR OBS: Isso pode surgir em vários locais diferentes. Nade por aí até ver o ponto de exclamação no minimapa
    note-enUS Be careful of high level Young Threshadon
    note-ptBR Cuidado com Young Threshadon de nível alto
    accept 86614
step
    path seq 1432 @-3104.9,-5210.1
    goto 1432 @-3086.6,-5216.8
    note-enUS Talk to Khara Deepwater
    note-ptBR Fale com Khara Deepwater
    turnin 86614
step
    path seq 1432 @-3783.63,-5713.77
    goto 1432 @-3812.43,-5694.67
    note-enUS Travel to Ironband's Excavation Site
    note-ptBR Vá até Ironband's Excavation Site
    note-enUS Talk to Prospector Ironband
    note-ptBR Fale com Prospector Ironband
    accept 298
step
    path seq 1432 @-4280.96,-5579.66 @-4290.89,-5645.89
    goto 1432 @-4296.68,-5690.59
    note-enUS Travel to The Farstrider Lodge
    note-ptBR Vá até The Farstrider Lodge
    note-enUS Talk to Daryl the Youngling
    note-ptBR Fale com Daryl the Youngling
    accept 257
step
    path seq 1432 @-4202.9,-5667.78 @-4122.08,-5877.67 @-3946.1,-5828.74 @-4108.01,-5633.01 @-4100.01,-5518.59 @-4202.9,-5667.78 @-4122.08,-5877.67 @-3946.1,-5828.74 @-4108.01,-5633.01 @-4100.01,-5518.59
    goto 1432 @-4202.9,-5667.78
    note-enUS Kill Mountain Buzzards
    note-ptBR Mate Mountain Buzzards
    note-enUS You must complete this quest and return to Daryl the Youngling within 15 minutes. If you fail the quest, abandon it and pick it up again
    note-ptBR Você precisa completar esta missão e voltar a Daryl the Youngling em até 15 minutos. Se falhar, abandone a missão e pegue-a de novo
    objective 257/1
step
    goto 1432 @-4296.68,-5690.59
    note-enUS Talk to Daryl the Youngling
    note-ptBR Fale com Daryl the Youngling
    turnin 257
step
    ifskillbelow cooking 50
    goto 1432 @-4269.26,-5653.23
    note-enUS Talk to Xandar Goodbeard
    note-ptBR Fale com Xandar Goodbeard
    note-enUS Buy a [Simple Wood] and a [Flint and Tinder] from him
    note-ptBR Compre um [Simple Wood] e um [Flint and Tinder] dele
    note-enUS This is used to make [Basic Campfires] on Boats to level your [Cooking] skill without losing time
    note-ptBR Isto é usado para fazer [Basic Campfires] nos barcos e subir sua habilidade de [Cooking] sem perder tempo
    note-enUS You need 50 [Cooking] for a quest in Duskwood later
    note-ptBR Você precisa de 50 em [Cooking] para uma missão em Duskwood mais tarde
    collect 4470 1
    collect 4471 1
step
    path seq 1432 @-3019.02,-5369.4
    goto 1432 @-3020.95,-5359.09
    note-enUS Die and respawn at the Spirit Healer
    note-ptBR Morra e renasça no Spirit Healer
    note-enUS Talk to Jern Hornhelm
    note-ptBR Fale com Jern Hornhelm
    turnin 298
    accept 301
step
    goto 1432 @-2929.87,-5424.84
    note-enUS Talk to Thorgrum
    note-ptBR Fale com Thorgrum
    fly 1455
    note-enUS Fly to Ironforge
    note-ptBR Voe para Ironforge
step
    goto 1455 @-1188.54,-4761.37
    note-enUS Talk to Daryl Riknussun
    note-ptBR Fale com Daryl Riknussun
    train 2550
    note-enUS Train [Cooking]
    note-ptBR Treine [Cooking]
step
    goto 1455 @-1303.75,-4631.19
    note-enUS Talk to Prospector Stormpike
    note-ptBR Fale com Prospector Stormpike
    turnin 301
step
    goto 1455 @-1330.28,-4840.43
    note-enUS Enter the Deeprun Tram
    note-ptBR Entre no Deeprun Tram
    note-enUS Talk to Monty on the middle platform
    note-ptBR Fale com Monty na plataforma do meio
    accept 6661
step
    use 17117
    note-enUS Use the [Rat Catcher's Flute] on Deeprun Rats
    note-ptBR Use o [Rat Catcher's Flute] nos Deeprun Rats
    objective 6661/1
step
    note-enUS Talk to Monty
    note-ptBR Fale com Monty
    turnin 6661
    accept 6662
step
    note-enUS Take the Deeprun Tram to the Stormwind side
    note-ptBR Pegue o Deeprun Tram para o lado de Stormwind
    note-enUS Talk to Nipsy on the middle platform on the Stormwind side of the Deeprun Tram
    note-ptBR Fale com Nipsy na plataforma do meio, no lado de Stormwind do Deeprun Tram
    turnin 6662
step
    zone 1453
    note-enUS Enter Stormwind
    note-ptBR Entre em Stormwind
step
    goto 1453 @685.22,-8387.23
    note-enUS Talk to Grimand Elmore
    note-ptBR Fale com Grimand Elmore
    accept 353
step
    goto 1453 @600.07,-8427.22
    note-enUS Talk to Furen Longbeard
    note-ptBR Fale com Furen Longbeard
    turnin 1338
step
    only Hunter
    goto 1453 @552.78,-8415.71
    note-enUS Talk to Einris Brightspear
    note-ptBR Fale com Einris Brightspear
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    goto 1453 @613,-8796.03
    note-enUS Talk to Woo Ping
    note-ptBR Fale com Woo Ping
    trainer
    note-enUS Train Staves
    note-ptBR Treine Staves
]==])
