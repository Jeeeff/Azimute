-- Convertido automaticamente de RXPGuides (Dungeon Alliance-1-13_Human.lua)
-- (c) RestedXP - CC BY-NC-SA 4.0 (ver LICENSE.txt). Não edite à mão:
-- rode tools/rxp2azimute.py de novo.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id forever.dg.a.11-13-loch-modan
#name 11-13 Loch Modan (dungeons)
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#levels 11-13
#zone 1432
#name-ptBR 11-13 Loch Modan (masmorras)
#group Leveling with dungeons (Alliance)
#group-ptBR Evolução com masmorras (Aliança)
#subgroup Speedrun 1-20
#subgroup-ptBR Rota rápida 1-20
#recommend Human
#next forever.dg.a.13-15-westfall

step
    path seq 1432 @-2659.45,-4822.45
    goto 1432 @-2676.82,-4825.93
    note-enUS Talk to Gothor Brumn
    note-ptBR Fale com Gothor Brumn
    vendor |opt
    note-enUS Talk to Mountaineer Stormpike
    note-ptBR Fale com Mountaineer Stormpike
    note-enUS Do not accept Stormpike's Order yet
    note-ptBR Não aceite Stormpike's Order ainda
    turnin 353
    accept 307
step
    path seq 1426 70.84,51.78 73.53,50.85 75.35,48.53 79.88,46.8 81.04,43.46 80.58,36.04 70.84,51.78 73.53,50.85 75.35,48.53 79.88,46.8 81.04,43.46
    goto 1426 80.58,36.04
    goto 1432 @-3003.3,-5376.02
    note-enUS Kill Mountain Boars. Loot them for their [Chunks of Boar Meat]
    note-ptBR Mate Mountain Boars. Saqueie-os para obter [Chunks of Boar Meat]
    note-enUS This will be used to level your [Cooking] later
    note-ptBR Isto será usado para subir seu [Cooking] mais tarde
    note-enUS You need 10 [Cooking] for a quest in Auberdine later
    note-ptBR Você precisa de 10 em [Cooking] para uma missão em Auberdine mais tarde
    collect 769 10 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Mountain Boars. Loot them for their [Chunks of Boar Meat]
    note-ptBR Mate Mountain Boars. Saqueie-os para obter [Chunks of Boar Meat]
    note-enUS This will be used to level your [Cooking] later
    note-ptBR Isto será usado para subir seu [Cooking] mais tarde
    note-enUS You need 50 [Cooking] for a quest in Darkshire later
    note-ptBR Você precisa de 50 em [Cooking] para uma missão em Darkshire mais tarde
    note-enUS Don't go out of your way to farm this now. Simply kill and loot all the boars you're passing by
    note-ptBR Não saia do caminho para farmar isso agora. Apenas mate e saqueie todos os javalis pelo caminho
    collect 769 50 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Elder Black Bears. Loot them for their Bear Meat
    note-ptBR Mate Elder Black Bears. Saqueie-os para obter Bear Meat
    note-enUS Kill Mountain Boars. Loot them for their Boar Intestines
    note-ptBR Mate Mountain Boars. Saqueie-os para obter Boar Intestines
    note-enUS Kill Forest Lurkers. Loot them for their Spider Ichor
    note-ptBR Mate Forest Lurkers. Saqueie-os para obter Spider Ichor
    collect 3172 3 |quest 418 |q 418/1 |opt
    collect 3173 3 |quest 418 |q 418/1 |opt
    collect 3174 3 |quest 418 |q 418/1 |opt
    note-enUS Talk to Mountaineer Kadrell
    note-ptBR Fale com Mountaineer Kadrell
    note-enUS Mountaineer Kadrell patrols the road through Thelsamar
    note-ptBR Mountaineer Kadrell patrulha a estrada que atravessa Thelsamar
    accept 416 |opt
    accept 1339 |opt
    note-enUS Talk to Grenhild Darktalon
    note-ptBR Fale com Grenhild Darktalon
    accept 86667
step
    goto 1432 @-2954.42,-5394.1
    note-enUS Talk to Vidra Hearthstove
    note-ptBR Fale com Vidra Hearthstove
    accept 418
step
    ifcomplete 418
    goto 1432 @-2954.42,-5394.1
    note-enUS Talk to Vidra Hearthstove
    note-ptBR Fale com Vidra Hearthstove
    turnin 418
step
    only !Warrior !Rogue !Hunter
    path seq 1432 @-2952.46,-5381.87
    goto 1432 @-2973.9,-5377.93
    abandon 1338 |opt
    note-enUS Talk to Yanni Stoutheart
    note-ptBR Fale com Yanni Stoutheart
    vendor |opt
    note-enUS Talk to Innkeeper Hearthstove
    note-ptBR Fale com Innkeeper Hearthstove
    vendor
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
    goto 1432 @-2929.87,-5424.84
    note-enUS Talk to Thorgrum Borrelson
    note-ptBR Fale com Thorgrum Borrelson
    fp
step
    path seq 1432 @-2677.26,-5778.34 @-2648.3,-5876.75
    goto 1432 @-2634.59,-5842.81
    note-enUS Talk to Captain Rugelfuss in the bunker
    note-ptBR Fale com Captain Rugelfuss no bunker
    accept 267
step
    goto 1432 @-2602.54,-5832.73
    note-enUS Talk to Mountaineer Cobbleflint
    note-ptBR Fale com Mountaineer Cobbleflint
    accept 224
step
    goto 1432 @-2534.38,-5648.28 5
    use 279380
    objective 86667/1
step
    path seq 1426 70.84,51.78 73.53,50.85 75.35,48.53 79.88,46.8 81.04,43.46 80.58,36.04 70.84,51.78 73.53,50.85 75.35,48.53 79.88,46.8 81.04,43.46
    goto 1426 80.58,36.04
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
    note-enUS Kill Forest Lurkers. Loot them for their Spider Ichor
    note-ptBR Mate Forest Lurkers. Saqueie-os para obter Spider Ichor
    collect 3172 3 |quest 418 |q 418/1
    collect 3173 3 |quest 418 |q 418/1
    collect 3174 3 |quest 418 |q 418/1
step
    goto 1432 @-3146.73,-4837.02
    note-enUS Kill Tunnel Rats. Loot them for their Tunnel Rat Ears
    note-ptBR Mate Tunnel Rats. Saqueie-os para obter Tunnel Rat Ears
    objective 416/1 |opt
    note-enUS Talk to Norric Lochthane
    note-ptBR Fale com Norric Lochthane
    turnin 86667
step
    path seq 1432 @-2972.96,-4835.19
    goto 1432 @-2984.82,-4902.33
    note-enUS Open the Miners' League Crates. Loot them for the Miners' Gear
    note-ptBR Abra os Miners' League Crates. Saqueie-os para obter o Miners' Gear
    note-enUS The Miners' League Crates can be found all throughout the Mine
    note-ptBR Os Miners' League Crates podem ser encontrados por toda a mina
    note-enUS You will be able to do this quest at a higher level if you wish to skip it for now
    note-ptBR Você poderá fazer esta missão em um nível mais alto se quiser pulá-la agora
    objective 307/1
step
    only Paladin Warrior
    goto 1432 @-3176.16,-4669.34
    note-enUS Talk to Nillen Andemar
    note-ptBR Fale com Nillen Andemar
    note-enUS Buy the [Heavy Spiked Mace] OR the [Ironwood Maul] from him (if they're up)
    note-ptBR Compre a [Heavy Spiked Mace] OU o [Ironwood Maul] dele (se estiverem disponíveis)
    note-enUS If you can't afford this, then grind money from the nearby Tunnel Rats until you have enough
    note-ptBR Se não tiver dinheiro para isso, faça grind dos Tunnel Rats próximos até ter o suficiente
    note-enUS Do this quickly as another player may purchase it before you do
    note-ptBR Faça isso rápido, pois outro jogador pode comprar antes de você
    note-enUS If you don't wish to do this, skip this step
    note-ptBR Se não quiser fazer isso, pule esta etapa
    collect 4778 1 |quest 307 |q 307/1
    collect 4777 1 |quest 307 |q 307/1
step
    path seq 1432 @-2684.71,-5042.87 @-2712.57,-5286.61 @-3033.92,-4797.29 @-2972.41,-4796.92 @-2684.71,-5042.87 @-2712.57,-5286.61 @-3033.92,-4797.29
    goto 1432 @-2972.41,-4796.92
    note-enUS Equip the [Heavy Spiked Mace] |only Paladin Warrior
    note-ptBR Equipe a [Heavy Spiked Mace] |only Paladin Warrior
    use 4778 |only Paladin Warrior |opt
    note-enUS Equip the [Ironwood Maul] |only Paladin Warrior
    note-ptBR Equipe o [Ironwood Maul] |only Paladin Warrior
    use 4777 |only Paladin Warrior |opt
    note-enUS Kill Tunnel Rats. Loot them for their Ears
    note-ptBR Mate Tunnel Rats. Saqueie-os para obter as orelhas
    note-enUS Ensure you have 10 [Linen Cloth] for your upcoming Paladin class quest |only Paladin
    note-ptBR Garanta que tenha 10 [Linen Cloth] para sua próxima missão de classe de Paladino |only Paladin
    objective 416/1
    collect 2589 10 |quest 1644 |q 1644/1 |only Human Paladin
step
    only Human
    path seq 1432 @-2659.45,-4822.45
    goto 1432 @-2676.99,-4825.98
    note-enUS Kill Elder Black Bears. Loot them for their Bear Meat
    note-ptBR Mate Elder Black Bears. Saqueie-os para obter Bear Meat
    note-enUS Kill Mountain Boars. Loot them for their Boar Intestines
    note-ptBR Mate Mountain Boars. Saqueie-os para obter Boar Intestines
    note-enUS Kill Forest Lurkers. Loot them for their Spider Ichor
    note-ptBR Mate Forest Lurkers. Saqueie-os para obter Spider Ichor
    collect 3172 3 |quest 418 |q 418/1 |opt
    collect 3173 3 |quest 418 |q 418/1 |opt
    collect 3174 3 |quest 418 |q 418/1 |opt
    note-enUS Talk to Gothor Brumn
    note-ptBR Fale com Gothor Brumn
    vendor |opt
    note-enUS Talk to Mountaineer Stormpike
    note-ptBR Fale com Mountaineer Stormpike
    turnin 307
    turnin 1339
    accept 1338
step
    path closest 1426 70.84,51.78 73.53,50.85 75.35,48.53 79.88,46.8 81.04,43.46 80.58,36.04 70.84,51.78 73.53,50.85 75.35,48.53 79.88,46.8 81.04,43.46 80.58,36.04
    path closest 1432 @-2735.74,-4684.34 @-2782.63,-4770.8 @-3080.53,-5100.08 @-2735.74,-4684.34 @-2846.07,-4682.5 @-2782.63,-4770.8 @-2835.04,-4976.83 @-2915.03,-5044.89 @-3080.53,-5100.08 @-3041.92,-5129.51 @-2815.73,-5147.91 @-2782.63,-4903.25 @-3041.92,-5129.51 @-3017.09,-5219.65 @-2815.73,-5147.91 @-2757.81,-4952.91 @-2782.63,-4903.25 @-2873.66,-4789.19 @-2926.07,-5232.53 @-3069.5,-5078.01 @-2873.66,-4789.19 @-2766.08,-4866.45 @-2926.07,-5232.53 @-2992.27,-5055.93 @-3069.5,-5078.01
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
    note-enUS Kill Forest Lurkers. Loot them for their Spider Ichor
    note-ptBR Mate Forest Lurkers. Saqueie-os para obter Spider Ichor
    collect 3173 3 |quest 418 |q 418/1
    collect 3172 3 |quest 418 |q 418/1
    collect 3174 3 |quest 418 |q 418/1
step
    ifcomplete 418
    path seq 1432 35.27,47.75 35.43,48.24
    goto 1432 @-2954.42,-5394.1
    note-enUS Talk to Mountaineer Kadrell
    note-ptBR Fale com Mountaineer Kadrell
    note-enUS Mountaineer Kadrell patrols the road through Thelsamar
    note-ptBR Mountaineer Kadrell patrulha a estrada que atravessa Thelsamar
    turnin 416 |opt
    note-enUS Talk to Vidra Hearthstove
    note-ptBR Fale com Vidra Hearthstove
    turnin 418
step
    ifcomplete 416
    path seq 1432 @-3006.61,-5259.57 @-3020.95,-5282.02 @-3023.44,-5326.9 @-3007.99,-5337.39 @-2964.41,-5349.9 @-2894.9,-5401.96
    goto 1432 @-3007.99,-5337.39
    note-enUS Talk to Mountaineer Kadrell
    note-ptBR Fale com Mountaineer Kadrell
    note-enUS Mountaineer Kadrell patrols the road through Thelsamar
    note-ptBR Mountaineer Kadrell patrulha a estrada que atravessa Thelsamar
    turnin 416
step
    goto 1432 @-2747.6,-5530.54
    note-enUS Kill Stonesplinter Troggs and Stonesplinter Scouts. Loot them for their Teeth
    note-ptBR Mate Stonesplinter Troggs e Stonesplinter Scouts. Saqueie-os para obter os dentes
    note-enUS Be careful as Stonesplinter Scouts cast [Shoot] (Ranged Cast: Deals 14-20 damage)
    note-ptBR Cuidado, Stonesplinter Scouts lançam [Shoot] (Lançamento à distância: causa 14-20 de dano)
    note-enUS This is a hyperspawn area. You should not need to move from here
    note-ptBR Esta é uma área de reaparecimento muito rápido. Você não deve precisar sair daqui
    note-enUS Ensure you have 10 [Linen Cloth] for your upcoming Paladin class quest |only Paladin
    note-ptBR Garanta que tenha 10 [Linen Cloth] para sua próxima missão de classe de Paladino |only Paladin
    objective 224/1
    objective 224/2
    objective 267/1
    collect 2589 10 |quest 1644 |q 1644/1 |only Human Paladin
step
    ifcomplete 267
    path seq 1432 @-2677.26,-5778.34 @-2648.3,-5876.75
    goto 1432 @-2634.59,-5842.81
    note-enUS Talk to Captain Rugelfuss
    note-ptBR Fale com Captain Rugelfuss
    turnin 267
step
    ifcomplete 224
    goto 1432 @-2602.54,-5832.73
    note-enUS Talk to Mountaineer Cobbleflint
    note-ptBR Fale com Mountaineer Cobbleflint
    turnin 224
step
    only Warlock
    goto 1432 @-2747.6,-5530.54 |only Warlock
    goto 1432 @-2747.6,-5530.54
    note-enUS Grind Troggs until you have 75s 79c worth of vendor trash/money |only Warlock
    note-ptBR Faça grind de Troggs até ter 75s 79c em lixo para vender/dinheiro |only Warlock
    level 14
    note-enUS Fly to Ironforge and skip this step if you're planning on running the Hall of Thanes dungeon in Ironforge
    note-ptBR Voe para Ironforge e pule esta etapa se planeja fazer a masmorra Hall of Thanes em Ironforge
step
    only !Warrior
    goto 1432 @-2747.6,-5530.54
    note-enUS Continue grinding Troggs until your [Hearthstone] is ready
    note-ptBR Continue fazendo grind de Troggs até sua [Hearthstone] ficar pronta
step
    only Human Warrior
    goto 1455 @-1203.78,-5041.97
    note-enUS Talk to Bixi Wobblebonk
    note-ptBR Fale com Bixi Wobblebonk
    train 2567
step
    only Human Warrior
    goto 1455 @-1234.65,-5035.67
    note-enUS Talk to Bilban Tosslespanner
    note-ptBR Fale com Bilban Tosslespanner
    trainer
step
    goto 1432 @-2929.87,-5424.84
    note-enUS Talk to Thorgrum Borrelson
    note-ptBR Fale com Thorgrum Borrelson
    fly 1455
step
    only Priest Paladin Mage
    goto 1455 @-928.48,-4614.62 |only Mage
    goto 1455 @-912.88,-4625.99 |only Priest
    goto 1455 @-896.55,-4601.68 |only Paladin
    note-enUS Talk to Toldren Deepiron |only Priest
    note-ptBR Fale com Toldren Deepiron |only Priest
    note-enUS Talk to Brandur Ironhammer |only Paladin
    note-ptBR Fale com Brandur Ironhammer |only Paladin
    note-enUS Talk to Dink |only Mage
    note-ptBR Fale com Dink |only Mage
    trainer
step
    only Warlock Rogue
    path seq 1455 @-1117.6,-4615.14 |only Warlock
    goto 1455 @-1111.62,-4599.09 |only Warlock
    goto 1455 @-1120.72,-4650.12 |only Rogue
    note-enUS Talk to Briarthorn |only Warlock
    note-ptBR Fale com Briarthorn |only Warlock
    note-enUS Talk to Fenthwick |only Rogue
    note-ptBR Fale com Fenthwick |only Rogue
    trainer
step
    only Warrior Hunter
    goto 1455 @-1266.02,-5006.57 |only Hunter
    goto 1455 @-1234.65,-5035.67 |only Warrior
    note-enUS Talk to Regnus Thundergranite |only Hunter
    note-ptBR Fale com Regnus Thundergranite |only Hunter
    note-enUS Talk to Bilban Tosslespanner |only Warrior
    note-ptBR Fale com Bilban Tosslespanner |only Warrior
    trainer
step
    hearth
]==])
