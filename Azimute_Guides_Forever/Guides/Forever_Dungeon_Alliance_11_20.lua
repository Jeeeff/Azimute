-- Convertido automaticamente de RXPGuides (Dungeon Alliance-11-20.lua)
-- (c) RestedXP - CC BY-NC-SA 4.0 (ver LICENSE.txt). Não edite à mão:
-- rode tools/rxp2azimute.py de novo.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id forever.dg.n.11-15-darkshore-westfall
#name 11-15 Darkshore/Westfall (dungeons)
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#only Nightelf
#levels 11-15
#zones 1439 1436
#name-ptBR 11-15 Darkshore/Westfall (masmorras)
#group Leveling with dungeons (Alliance)
#group-ptBR Evolução com masmorras (Aliança)
#subgroup Speedrun 1-20
#subgroup-ptBR Rota rápida 1-20

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
    note-ptBR Fale com Manifest Clerk Philmor
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
    note-ptBR Fale com Elaine Trias
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
    note-ptBR Fale com Elaine Trias
    turnin 97222
step
    goto 1453 @673.58,-8867.76
    note-enUS Talk to Innkeeper Allison
    note-ptBR Fale com Innkeeper Allison
    home
    note-enUS Set your Hearthstone to Stormwind City
    note-ptBR Defina sua pedra de regresso em Stormwind City
step
    goto 1453 @490.03,-8835.82
    note-enUS Talk to Dungar Longdrink
    note-ptBR Fale com Dungar Longdrink
    fp
    note-enUS Get the Stormwind Flight Path
    note-ptBR Pegue o ponto de voo de Stormwind
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
    accept 109
step
    goto 1436 @1042.67,-10111.67
    note-enUS Talk to Salma Saldean
    note-ptBR Fale com Salma Saldean
    turnin 36
    accept 38
step
    goto 1436 @1045.12,-10508.8 |only Gnome Dwarf Nightelf
    goto 1436 @1045.12,-10508.8
    note-enUS Talk to Gryan Stoutmantle |only Gnome Dwarf Nightelf
    note-ptBR Fale com Gryan Stoutmantle |only Gnome Dwarf Nightelf
    turnin 109 |only Gnome Dwarf Nightelf |opt
    note-enUS Talk to Gryan Stoutmantle
    note-ptBR Fale com Gryan Stoutmantle
    accept 12
step
    goto 1436 @1041.97,-10511.13
    note-enUS Talk to Captain Danuvin
    note-ptBR Fale com Captain Danuvin
    accept 102
step
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
    path seq 1436 @1192.12,-9641.73 @1042.67,-9619.33 @1192.12,-9641.73 @1042.67,-9619.33 @1192.12,-9641.73
    goto 1436 @1042.67,-9619.33
    note-enUS Kill Murloc Raiders and Murloc Coastrunners. Loot them for their Eyes and Gills
    note-ptBR Mate Murloc Raiders e Murloc Coastrunners. Saqueie-os para obter olhos e guelras
    collect 730 3 |quest 38 |q 38/1
    objective 92744/1
step
    goto 1436 @1035.3,-9835.1
    use 254545
    note-enUS Use the [Well Water Sample Kit] at the Jansen Stead well
    note-ptBR Use o [Well Water Sample Kit] no poço de Jansen Stead
    objective 92742/1
step
    path seq 1436 @1004.87,-9716.87 @1013.62,-9861.53 @1192.12,-10175.13 @1019.57,-10204.3
    goto 1436 @1013.62,-9861.53
    note-enUS Open the Sacks of Oats on the ground. Loot them for the Handful of Oats
    note-ptBR Abra os Sacks of Oats no chão. Saqueie-os para obter o Handful of Oats
    note-enUS You can usually find them near Farm Fences or Buildings
    note-ptBR Geralmente ficam perto das cercas das fazendas ou dos prédios
    objective 151/1
step
    path seq 1436 @918.42,-9851.5
    goto 1436 @919.47,-9853.13
    note-enUS Talk to Farmer Furlbrow and Verna Furlbrow
    note-ptBR Fale com Farmer Furlbrow e Verna Furlbrow
    turnin 64
    turnin 151
step
    ifcomplete 38
    path seq 1436 @1055.27,-10128.7
    goto 1436 @1042.67,-10111.67
    note-enUS Talk to Farmer Saldean
    note-ptBR Fale com Farmer Saldean
    vendor |opt
    note-enUS Vendor trash
    note-ptBR Venda o lixo
    note-enUS Do NOT sell [Murloc Eyes], [Goretusk Snouts], [Goretusk Livers] or [Stringy Vulture Meat]
    note-ptBR NÃO venda [Murloc Eyes], [Goretusk Snouts], [Goretusk Livers] nem [Stringy Vulture Meat]
    note-enUS Talk to Salma Saldean
    note-ptBR Fale com Salma Saldean
    turnin 38
step
    goto 1436 @1213.4,-10153.8
    note-enUS Talk to Ozwin Ironsprocket
    note-ptBR Fale com Ozwin Ironsprocket
    accept 92909
    turnin 92909
step
    ifcomplete 38
    goto 1436 @1042.67,-10111.67
    note-enUS Talk to Salma Saldean
    note-ptBR Fale com Salma Saldean
    turnin 38
step
    ifnotturnedin 38
    path seq 1436 @1132.27,-10146.67 @1238.67,-9907.73 @1460.22,-10224.83 @1132.27,-10146.67 @1238.67,-9907.73 @1460.22,-10224.83 @1132.27,-10146.67 @1460.22,-10224.83
    goto 1436 @1238.67,-9907.73
    note-enUS Kill Harvest Watchers. Loot them for their Okra and Flasks of Oil
    note-ptBR Mate Harvest Watchers. Saqueie-os para obter Okra e Flasks of Oil
    collect 732 3 |quest 38 |q 38/1
    collect 814 5 |quest 103 |q 103/1
step
    ifturnedin 38
    path seq 1436 @1132.27,-10146.67 @1238.67,-9907.73 @1460.22,-10224.83 @1132.27,-10146.67 @1238.67,-9907.73 @1460.22,-10224.83 @1132.27,-10146.67 @1460.22,-10224.83
    goto 1436 @1238.67,-9907.73
    note-enUS Kill Harvest Watchers. Loot them for their Flasks of Oil
    note-ptBR Mate Harvest Watchers. Saqueie-os para obter Flasks of Oil
    collect 814 5 |quest 103 |q 103/1
step
    goto 1436 @1213.4,-10153.8
    note-enUS Talk to Ozwin Ironsprocket
    note-ptBR Fale com Ozwin Ironsprocket
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
    goto 1436 @1042.67,-10111.67
    note-enUS Talk to Salma Saldean
    note-ptBR Fale com Salma Saldean
    turnin 38
step
    goto 1436 @1213.4,-10153.8
    note-enUS Talk to Ozwin Ironsprocket
    note-ptBR Fale com Ozwin Ironsprocket
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
    only Rogue
    goto 1436 @1037.42,-10628.27
    goto 1453 @377.47,-8752.39
    note-enUS Talk to Thor
    note-ptBR Fale com Thor
    fly 1453 |opt
    note-enUS Fly to Stormwind
    note-ptBR Voe para Stormwind
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
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Druid
    goto 1453 @1347.62,-8591.22
    note-enUS Talk to Theridran
    note-ptBR Fale com Theridran
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
    only Priest
    goto 1453 @809.52,-8579.22 20 |only Priest
    goto 1453 @862.89,-8519.61
    note-enUS Travel to the Stormwind Cathedral |only Priest
    note-ptBR Vá até Stormwind Cathedral |only Priest
    note-enUS Talk to Brother Joshua
    note-ptBR Fale com Brother Joshua
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
    train 8122
step
    path seq 1453 @562.3,-8385.3
    goto 1453 @522,-8352.1
    note-enUS Enter the Deeprun Tram
    note-ptBR Entre no Deeprun Tram
    zone 1455
    note-enUS Take the tram to Ironforge
    note-ptBR Pegue o bonde para Ironforge
]==])

register([==[
#format 1
#id forever.dg.a.13-15-westfall
#name 13-15 Westfall (dungeons)
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#levels 13-15
#zone 1436
#name-ptBR 13-15 Westfall (masmorras)
#group Leveling with dungeons (Alliance)
#group-ptBR Evolução com masmorras (Aliança)
#subgroup Speedrun 1-20
#subgroup-ptBR Rota rápida 1-20
#next forever.dg.a.15-16-hall-of-thanes

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
    goto 1436 @1035.3,-9835.1
    note-enUS Kill Riverpaw Gnolls and Riverpaw Scouts. Loot them for their Gnoll Paws
    note-ptBR Mate Riverpaw Gnolls e Riverpaw Scouts. Saqueie-os para obter Gnoll Paws
    objective 102/1 |opt
    use 254545
    note-enUS Use the [Well Water Sample Kit] at the Jansen Stead well
    note-ptBR Use o [Well Water Sample Kit] no poço de Jansen Stead
    objective 92742/1
step
    path seq 1436 @1192.12,-9641.73 @1042.67,-9619.33 @1192.12,-9641.73 @1042.67,-9619.33 @1192.12,-9641.73
    goto 1436 @1042.67,-9619.33
    note-enUS Kill Murloc Raiders and Murloc Coastrunners. Loot them for their Eyes and Gills
    note-ptBR Mate Murloc Raiders e Murloc Coastrunners. Saqueie-os para obter olhos e guelras
    collect 730 3 |quest 38 |q 38/1
    objective 92744/1
step
    path seq 1436 @1042.67,-9715 @1517.97,-9743 @1412.62,-9720.83 @1184.07,-9745.8 @1026.57,-9715.7 @1517.97,-9743 @1184.07,-9745.8 @1412.62,-9720.83 @1517.97,-9743 @1184.07,-9745.8
    goto 1436 @1028.32,-9710.33
    note-enUS Kill Riverpaw Gnolls and Riverpaw Scouts. Loot them for their Gnoll Paws
    note-ptBR Mate Riverpaw Gnolls e Riverpaw Scouts. Saqueie-os para obter Gnoll Paws
    objective 102/1
step
    path seq 1436 @1004.87,-9716.87 @1013.62,-9861.53 @1192.12,-10175.13 @1019.57,-10204.3
    goto 1436 @1013.62,-9861.53
    note-enUS Open the Sacks of Oats on the ground. Loot them for the Handful of Oats
    note-ptBR Abra os Sacks of Oats no chão. Saqueie-os para obter o Handful of Oats
    note-enUS You can usually find them near Farm Fences or Buildings
    note-ptBR Geralmente ficam perto das cercas das fazendas ou dos prédios
    objective 151/1
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
    goto 1436 @1213.4,-10153.8
    note-enUS Talk to Ozwin Ironsprocket
    note-ptBR Fale com Ozwin Ironsprocket
    accept 92909
    turnin 92909
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
    note-ptBR Fale com Ozwin Ironsprocket
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
    note-ptBR Fale com Ozwin Ironsprocket
    accept 92909
    turnin 92909
step
    goto 1436 @1404.2,-10290.9
    note-enUS Kill Defias Trappers and Defias Smugglers. Loot them for their Red Leather Bandanas
    note-ptBR Mate Defias Trappers e Defias Smugglers. Saqueie-os para obter as Red Leather Bandanas
    note-enUS It is a dynamic respawn area meaning if you kill enough they will keep respawning
    note-ptBR É uma área de respawn dinâmico, ou seja, se matar bastante eles continuarão reaparecendo
    objective 12/1 |opt
    objective 12/2 |opt
    objective 153/1 |opt
    use 254545
    note-enUS Use the [Well Water Sample Kit] at the Molsen Farm well
    note-ptBR Use o [Well Water Sample Kit] no poço de Molsen Farm
    objective 92742/2
step
    goto 1436 @1324.2,-10490.4
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
    only Rogue
    goto 1436 @1037.42,-10628.27
    goto 1453 @377.47,-8752.39
    note-enUS Talk to Thor
    note-ptBR Fale com Thor
    fly 1453 |opt
    note-enUS Fly to Stormwind
    note-ptBR Voe para Stormwind
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
    goto 1453 @1193.1,-8328.9
    note-enUS Talk to Manifest Clerk Philmor
    note-ptBR Fale com Manifest Clerk Philmor
    accept 97220
step
    goto 1453 @566.6,-8845.5
    note-enUS Talk to Elaine Trias
    note-ptBR Fale com Elaine Trias
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
    note-ptBR Fale com Elaine Trias
    turnin 97222
step
    path seq 1453 @562.3,-8385.3
    goto 1453 @522,-8352.1
    note-enUS Enter the Deeprun Tram
    note-ptBR Entre no Deeprun Tram
    zone 1455
    note-enUS Take the tram to Ironforge
    note-ptBR Pegue o bonde para Ironforge
]==])

register([==[
#format 1
#id forever.dg.a.15-16-hall-of-thanes
#name 15-16 Hall of Thanes (dungeons)
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#levels 15-16
#name-ptBR 15-16 Hall of Thanes (masmorras)
#group Leveling with dungeons (Alliance)
#group-ptBR Evolução com masmorras (Aliança)
#subgroup Speedrun 1-20
#subgroup-ptBR Rota rápida 1-20
#next forever.dg.a.16-18-ruins-of-lordaeron

step
    only Nightelf
    goto 1455 55.49,47.75
    note-enUS Talk to Gryth Thurden
    note-ptBR Fale com Gryth Thurden
    fp
    note-enUS Get the Ironforge flight path
    note-ptBR Pegue o ponto de voo de Ironforge
step
    goto 1426 @-1394.24,-5797.83
    note-enUS You will now complete a pre-quest for the Hall of Thanes, then run the dungeon
    note-ptBR Agora você vai completar uma pré-missão para Hall of Thanes e depois fazer a masmorra
    zone 1426 |opt
    note-enUS Travel to Dun Morogh
    note-ptBR Vá até Dun Morogh
    note-enUS Talk to Earthseer Farsen
    note-ptBR Fale com Earthseer Farsen
    accept 96392
step
    ifonquest 96392
    goto 1426 @-1394.24,-5797.83
    note-enUS Talk to Earthseer Farsen to view his farsight
    note-ptBR Fale com Earthseer Farsen para ver a visão distante dele
    note-enUS You can cancel the Farsight once the objective completes
    note-ptBR Você pode cancelar o Farsight assim que o objetivo for concluído
step
    ifonquest 96392
    note-enUS Press ESCAPE to cancel the Farsight
    note-ptBR Pressione ESC para cancelar o Farsight
step
    goto 1426 @-1394.24,-5797.83
    note-enUS Talk to Earthseer Farsen
    note-ptBR Fale com Earthseer Farsen
    note-enUS Press ESCAPE to cancel the Farsight
    note-ptBR Pressione ESC para cancelar o Farsight
    turnin 96392
    accept 96390
step
    path seq 1426 @-2009.87,-5860.22
    goto 1426 @-2034.49,-5922.6
    note-enUS Kill Dark Iron Spies. Loot them for the [Dark Iron Map]
    note-ptBR Mate Dark Iron Spies. Saqueie-os para obter o [Dark Iron Map]
    use 274268
    note-enUS Use the [Dark Iron Map] to start the quest
    note-ptBR Use o [Dark Iron Map] para iniciar a missão
    note-enUS You can skip killing Dark Iron Spies for the other quest because they are low level once you find the [Dark Iron Map]
    note-ptBR Você pode pular a morte dos Dark Iron Spies para a outra missão, pois eles ficam de nível baixo depois que você encontra o [Dark Iron Map]
    objective 96390/1
    collect 274268 1 |quest 96391 |q 96391/1
    accept 96391
step
    goto 1426 @-1394.24,-5797.83
    note-enUS Talk to Earthseer Farsen
    note-ptBR Fale com Earthseer Farsen
    turnin 96391
    accept 96393
step
    ifcomplete 96390
    goto 1426 @-1394.24,-5797.83
    note-enUS Talk to Earthseer Farsen
    note-ptBR Fale com Earthseer Farsen
    turnin 96390
step
    path seq 1455 @-1054.3,-4843.2 @-1081.9,-4850.1 @-1082.8,-4886 @-1087.7,-4821.9 @-1010.3,-4850.9
    goto 1455 @-971.8,-4820.7
    note-enUS Start looking for a group for the Hall of Thanes
    note-ptBR Comece a procurar um grupo para Hall of Thanes
    zone 1455 |opt
    note-enUS Travel to Ironforge
    note-ptBR Vá até Ironforge
    note-enUS Travel down into Old Ironforge via King Magni's room
    note-ptBR Desça até Old Ironforge pela sala do King Magni
    note-enUS Talk to Afadra Dunwall
    note-ptBR Fale com Afadra Dunwall
    accept 96394
step
    path seq 1455 @-996.1,-4821.2 @-972,-4803 @-988.9,-4854.4
    goto 1455 @-968.2,-4803.7
    note-enUS Drop down onto the ramp below
    note-ptBR Desça para a rampa abaixo
    note-enUS Talk to Thom Filch
    note-ptBR Fale com Thom Filch
    accept 96403
step
    goto 1455 @-933.2,-4821.9
    note-enUS Enter the Hall of Thanes
    note-ptBR Entre no Hall of Thanes
step
    note-enUS Loot the Dwarven Heirlooms on the ground through the Hall of Thanes
    note-ptBR Saqueie os Dwarven Heirlooms no chão ao longo de Hall of Thanes
    note-enUS You can collect plenty of these at the end of the dungeon as well
    note-ptBR Você também pode coletar vários deles no final da masmorra
    objective 96403/1 |opt
    note-enUS Kill Enraged Apparitions and Tormented Souls
    note-ptBR Mate Enraged Apparitions e Tormented Souls
    objective 96394/1 |opt
    objective 96394/2 |opt
    note-enUS Talk to Ghostly Attendant
    note-ptBR Fale com Ghostly Attendant
    accept 96395
step
    note-enUS Kill Faldrim Anvilmar
    note-ptBR Mate Faldrim Anvilmar
    objective 96395/1
step
    note-enUS Return to the Ghostly Attendant
    note-ptBR Volte para Ghostly Attendant
    note-enUS Talk to Ghostly Attendant
    note-ptBR Fale com Ghostly Attendant
    turnin 96395
step
    note-enUS Kill Enraged Apparitions and Tormented Souls
    note-ptBR Mate Enraged Apparitions e Tormented Souls
    note-enUS Complete this now as you may not have a chance to finish it later
    note-ptBR Complete isto agora, pois talvez não tenha chance de terminar depois
    objective 96394/1
    objective 96394/2
step
    note-enUS Loot the Dwarven Heirlooms on the ground through the Hall of Thanes
    note-ptBR Saqueie os Dwarven Heirlooms no chão ao longo de Hall of Thanes
    note-enUS You can collect plenty of these at the end of the dungeon as well
    note-ptBR Você também pode coletar vários deles no final da masmorra
    objective 96403/1 |opt
    note-enUS Kill Durgen Dirgehammer. Loot him for Durgen Dirgehammer's Head
    note-ptBR Mate Durgen Dirgehammer. Saqueie-o para obter Durgen Dirgehammer's Head
    objective 96393/1
step
    note-enUS Click the Treaty of Understanding
    note-ptBR Clique no Treaty of Understanding
    accept 98423
step
    note-enUS Loot the Dwarven Heirlooms on the ground through the Hall of Thanes
    note-ptBR Saqueie os Dwarven Heirlooms no chão ao longo de Hall of Thanes
    objective 96403/1
step
    zone 1455
    note-enUS Exit the Hall of Thanes. Fastest way is running straight down the corridor from the final boss room
    note-ptBR Saia do Hall of Thanes. O jeito mais rápido é correr reto pelo corredor a partir da sala do chefe final
step
    goto 1455 @-968.2,-4803.7
    note-enUS Talk to Thom Filch
    note-ptBR Fale com Thom Filch
    turnin 96403
step
    path seq 1455 @-1006.6,-4841.6 @-969.7,-4841.5 @-964.3,-4807.5 @-993.5,-4817.6 @-983.7,-4847.8 @-1022,-4842.1 @-994,-4843.1
    goto 1455 @-971.8,-4820.7
    note-enUS Return to Afadra Dunwall up the ramp
    note-ptBR Volte para Afadra Dunwall subindo a rampa
    note-enUS Talk to Afadra Dunwall
    note-ptBR Fale com Afadra Dunwall
    turnin 96394
step
    path seq 1455 @-1030.2,-4831 @-1090.9,-4830.4 @-1079.6,-4884.1 @-1058,-4842.5
    goto 1455 @-1022.6,-4865.7
    note-enUS Travel up to ramp to toward King Magni Bronzebeard
    note-ptBR Suba a rampa em direção a King Magni Bronzebeard
    note-enUS Talk to King Magni Bronzebeard
    note-ptBR Fale com King Magni Bronzebeard
    turnin 96393
    turnin 98423
step
    only Shaman
    goto 1455 @-1086.5,-4642.4
    note-enUS Talk to Eldrun Stormbreaker
    note-ptBR Fale com Eldrun Stormbreaker
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
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
    note-enUS Train your class spells
    note-ptBR Treine your class spells
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
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warlock
    path seq 1455 @-1134.2,-4610.39
    goto 1455 @-1130.26,-4601.27
    note-enUS Talk to Jubahl Corpseseeker
    note-ptBR Fale com Jubahl Corpseseeker
    vendor
    note-enUS Buy [Grimoire of Sacrifice (Rank 1)]
    note-ptBR Compre [Grimoire of Sacrifice (Rank 1)]
    train 20381
step
    only Warrior Hunter
    goto 1455 @-1266.02,-5006.57 |only Hunter
    goto 1455 @-1234.65,-5035.67 |only Warrior
    note-enUS Talk to Regnus Thundergranite |only Hunter
    note-ptBR Fale com Regnus Thundergranite |only Hunter
    note-enUS Talk to Bilban Tosslespanner |only Warrior
    note-ptBR Fale com Bilban Tosslespanner |only Warrior
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
]==])

register([==[
#format 1
#id forever.dg.a.16-18-ruins-of-lordaeron
#name 16-18 Ruins of Lordaeron (dungeons)
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#levels 16-18
#name-ptBR 16-18 Ruins of Lordaeron (masmorras)
#group Leveling with dungeons (Alliance)
#group-ptBR Evolução com masmorras (Aliança)
#subgroup Speedrun 1-20
#subgroup-ptBR Rota rápida 1-20
#next forever.dg.a.18-20-deadmines

step
    goto 1455 @-1152.4,-4821.1
    note-enUS You will now run Ruins of Lordaeron
    note-ptBR Agora você vai fazer Ruins of Lordaeron
    note-enUS All the quests are picked up inside the dungeon
    note-ptBR Todas as missões são pegas dentro da masmorra
    note-enUS Talk to Gryth Thurden
    note-ptBR Fale com Gryth Thurden
    note-enUS If you do not have the Wetlands flight path, skip this step
    note-ptBR Se você não tiver o caminho de voo de Wetlands, pule esta etapa
    fly 1437
    note-enUS Fly to Wetlands
    note-ptBR Voe para Wetlands
step
    path seq 1426 @-826.4,-5027.1 @-721.9,-5078.9 @-426.5,-5181 @-230.4,-5154.6
    goto 1426 @-65,-5115 100
    note-enUS Exit Ironforge. Travel to the Dun Morogh -> Wetlands deathskip location
    note-ptBR Saia de Ironforge. Vá até o local do deathskip de Dun Morogh -> Wetlands
step
    path seq 1426 30.74,34.27 30.81,33.55 31.06,32.54 31.44,32.36 31.68,29.64 32.21,28.78
    goto 1426 32.65,27.74 15
    path seq 1415 44.91,52.02
    goto 1415 44.91,52.03
    note-enUS Climb the mountain, then walk down past the jagged pattern until your zone changes to the Wetlands
    note-ptBR Suba a montanha e depois desça passando pelo padrão irregular até sua zona mudar para Wetlands
step
    goto 1415 @254.03,-4708.34
    goto 1437 @-874.7,-3341.4
    note-enUS Jump off the mountain toward the north or north-west
    note-ptBR Pule da montanha em direção ao norte ou noroeste
    note-enUS Die and respawn at the Baradin Bay Spirit Healer
    note-ptBR Morra e renasça no Spirit Healer de Baradin Bay
step
    path seq 1437 @-839.8,-3657.9
    goto 1437 @-782,-3793.2
    note-enUS Swim over to Menethil Harbor
    note-ptBR Nade até Menethil Harbor
    note-enUS Talk to Shellei Brondir
    note-ptBR Fale com Shellei Brondir
    fp
    note-enUS Get the Wetlands flight path
    note-ptBR Pegue o ponto de voo de Wetlands
step
    goto 1437 @-581.8,-3722.4
    zone 1424
    note-enUS Take the boat to Southshore
    note-ptBR Pegue o barco para Southshore
step
    goto 1424 @-512.15,-715.14
    note-enUS Talk to Darla Harris
    note-ptBR Fale com Darla Harris
    fp
    note-enUS Get the Southshore flight path
    note-ptBR Pegue o ponto de voo de Southshore
step
    path seq 1424 @-272,-381.8
    goto 1424 @-47.4,-249.4 100
    path seq 1416 @68.4,-46.2 @45.3,257.1
    goto 1416 @-54.7,812.6 100
    path seq 1420 @7.6,1530.5 @-21.8,1668.6 @-56.6,1692 @-55.2,1779.6 @6.3,1791.5
    goto 1420 @4.3,1847.5 10
    path seq 1458 @238.4,1872.2
    goto 1458 @170.7,1804.7
    note-enUS Travel to the Ruins of Lordaeron in Undercity. Enter the dungeon
    note-ptBR Vá até Ruins of Lordaeron em Undercity. Entre na masmorra
    note-enUS Be careful of higher level Cats, Bears, Spiders or Murlocs as you run over
    note-ptBR Cuidado com Gatos, Ursos, Aranhas ou Murlocs de nível mais alto enquanto corre
    note-enUS As soon as you enter Undercity you will be automatically PVP flagged, becoming attackable by Horde
    note-ptBR Assim que entrar em Undercity, você será marcado automaticamente para PvP e poderá ser atacado pela Horda
step
    note-enUS Talk to Captain Truman
    note-ptBR Fale com Captain Truman
    accept 95250
step
    note-enUS Kill The Baron. Loot him for the Head of the Baron
    note-ptBR Mate The Baron. Saqueie-o para obter Head of the Baron
    objective 95250/1
step
    note-enUS Loot all mobs for the [Bloodied Insignia]
    note-ptBR Saqueie todos os mobs para obter [Bloodied Insignia]
    use 268535
    note-enUS Use the [Bloodied Insignia] to start the quest
    note-ptBR Use o [Bloodied Insignia] para iniciar a missão
    collect 268535 1 |quest 95195 |q 95195/1
    accept 95195
step
    note-enUS Loot all mobs for their Bloodied Insignias
    note-ptBR Saqueie todos os mobs para obter as Bloodied Insignias
    objective 95195/1
step
    note-enUS Loot the [Crest of Lordaeron] on the ground or hanging on a wall
    note-ptBR Saqueie a [Crest of Lordaeron] no chão ou pendurada na parede
    note-enUS Keep an eye out for this. It can spawn in many different locations and be hard to see
    note-ptBR Fique de olho. Pode surgir em muitos locais diferentes e ser difícil de ver
    use 268579
    note-enUS Use the [Crest of Lordaeron] to start the quest
    note-ptBR Use o [Crest of Lordaeron] para iniciar a missão
    collect 268579 1 |quest 95189 |q 95189/1
    accept 95189
step
    note-enUS Click the Crumpled Paper on the ground near Rath'mael
    note-ptBR Clique no Crumpled Paper no chão perto de Rath'mael
    note-enUS You can do this after you've killed him
    note-ptBR Você pode fazer isso depois de matá-lo
    accept 92415
step
    note-enUS Talk to Captain Truman
    note-ptBR Fale com Captain Truman
    note-enUS Captain Truman is back at the start of the dungeon
    note-ptBR Captain Truman está de volta no início da masmorra
    turnin 95250
step
    hearth
    note-enUS Hearth to Stormwind
    note-ptBR Use a pedra de regresso para Stormwind
    note-enUS If your Hearthstone was not set at Stormwind, make your way there
    note-ptBR Se sua Hearthstone não estava em Stormwind, vá até lá
step
    ifonquest 92415
    goto 1453 @744.4,-8621.1
    note-enUS Talk to Orphan Matron Nightingale
    note-ptBR Fale com Orphan Matron Nightingale
    turnin 92415
    accept 95161
step
    ifturnedin 92415
    goto 1453 @744.4,-8621.1
    note-enUS Talk to Orphan Matron Nightingale
    note-ptBR Fale com Orphan Matron Nightingale
    accept 95161
step
    goto 1453 @634.7,-8390.8
    note-enUS Talk to Shoni the Shilent
    note-ptBR Fale com Shoni the Shilent
    accept 2040
step
    goto 1453 @501.2,-8468.6
    note-enUS Talk to Wilder Thistlenettle
    note-ptBR Fale com Wilder Thistlenettle
    accept 167
    accept 168
step
    ifonquest 95189
    path seq 1453 @437.6,-8524.5 @408.1,-8478.5 @502.9,-8358.8
    goto 1453 @531,-8322.4
    note-enUS Travel to the Stormwind Library
    note-ptBR Vá até Stormwind Library
    note-enUS Talk to Lady Dena Kennedy
    note-ptBR Fale com Lady Dena Kennedy
    note-enUS She walks around slightly in the Royal Gallery
    note-ptBR Ela anda um pouco pela Royal Gallery
    turnin 95189
step
    ifonquest 95195
    goto 1453 @521,-8954.1
    note-enUS Talk to General Marcus Jonathan
    note-ptBR Fale com General Marcus Jonathan
    turnin 95195
step
    only Rogue
    goto 1453 @377.47,-8752.39
    note-enUS Talk to Osborne
    note-ptBR Fale com Osborne
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
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
    only Hunter
    goto 1453 @552.78,-8415.71
    note-enUS Talk to Einris Brightspear inside
    note-ptBR Fale com Einris Brightspear lá dentro
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Druid
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
step
    only Priest
    goto 1453 @862.89,-8519.61
    note-enUS Talk to Brother Joshua
    note-ptBR Fale com Brother Joshua
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
]==])

register([==[
#format 1
#id forever.dg.a.18-20-deadmines
#name 18-20 Deadmines (dungeons)
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#levels 18-20
#name-ptBR 18-20 Deadmines (masmorras)
#group Leveling with dungeons (Alliance)
#group-ptBR Evolução com masmorras (Aliança)
#subgroup Speedrun 1-20
#subgroup-ptBR Rota rápida 1-20

step
    goto 1453 @490.03,-8835.82
    goto 1436 @1045.12,-10508.8
    note-enUS Talk to Dungar Longdrink
    note-ptBR Fale com Dungar Longdrink
    fly 1436 |opt
    note-enUS Fly to Westfall
    note-ptBR Voe para Westfall
    note-enUS Talk to Gryan Stoutmantle
    note-ptBR Fale com Gryan Stoutmantle
    accept 65
step
    goto 1453 @490.03,-8835.82
    goto 1436 @1037.42,-10628.27
    path seq 1433 @-2164.56,-9213.1
    goto 1433 @-2145.67,-9231.49
    note-enUS Talk to Dungar Longdrink or Thor
    note-ptBR Fale com Dungar Longdrink ou Thor
    note-enUS If you do not already have the Redridge Mountains flight path, skip this step
    note-ptBR Se você ainda não tiver o caminho de voo de Redridge Mountains, pule esta etapa
    fp |opt
    note-enUS Fly to Redridge Mountains
    note-ptBR Voe para Redridge Mountains
    zone 1433 |opt
    note-enUS Travel to Redridge Mountains
    note-ptBR Vá até Redridge Mountains
    note-enUS Talk to Wiley the Black inside upstairs
    note-ptBR Fale com Wiley the Black lá em cima
    turnin 65
    accept 132
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
    goto 1433 @-2205.58,-9351.52
    note-enUS Talk to Hilary
    note-ptBR Fale com Hilary
    turnin 3741
step
    goto 1433 @-2234.9,-9435.3
    goto 1436 @1045.12,-10508.8
    note-enUS Talk to Ariena Stormfeather
    note-ptBR Fale com Ariena Stormfeather
    fly 1436 |opt
    note-enUS Fly to Westfall
    note-ptBR Voe para Westfall
    note-enUS Talk to Gryan Stoutmantle
    note-ptBR Fale com Gryan Stoutmantle
    turnin 132
    accept 135
step
    goto 1436 @1037.42,-10628.27
    path seq 1453 @374.11,-8762.88 @326.66,-8818.01 @323.43,-8817.83
    goto 1453 @362.28,-8815.23
    note-enUS Talk to Thor
    note-ptBR Fale com Thor
    fly 1453 |opt
    note-enUS Fly to Stormwind
    note-ptBR Voe para Stormwind
    note-enUS Enter the SI:7 Headquarters. Travel up stairs toward Master Mathias Shaw
    note-ptBR Entre no SI:7 Headquarters. Suba as escadas em direção a Master Mathias Shaw
    note-enUS Talk to Master Mathias Shaw
    note-ptBR Fale com Master Mathias Shaw
    turnin 135
    accept 141
step
    goto 1453 @490.03,-8835.82
    note-enUS Talk to Dungar Longdrink
    note-ptBR Fale com Dungar Longdrink
    fly 1436
    note-enUS Fly to Westfall
    note-ptBR Voe para Westfall
step
    goto 1436 @1045.29,-10508.78
    note-enUS Talk to Gryan Stoutmantle
    note-ptBR Fale com Gryan Stoutmantle
    turnin 141
    accept 142
step
    goto 1436 @1459.17,-11024.47 55
    note-enUS Travel to Moonbrook
    note-ptBR Vá até Moonbrook
    note-enUS Kill the Defias Messenger. Loot him for his Mysterious Message
    note-ptBR Mate o Defias Messenger. Saqueie-o para obter Mysterious Message
    note-enUS The Defias Messenger spawns in Moonbrook. He walks along the road north of Moonbrook, to the Gold Coast Quarry and Jangolode Mine. If you don't see him along the road, wait for him to spawn in Moonbrook
    note-ptBR O Defias Messenger surge em Moonbrook. Ele anda pela estrada ao norte de Moonbrook, até Gold Coast Quarry e Jangolode Mine. Se não o vir na estrada, espere ele surgir em Moonbrook
    objective 142/1
step
    goto 1436 @1045.12,-10508.8
    note-enUS Talk to Gryan Stoutmantle
    note-ptBR Fale com Gryan Stoutmantle
    turnin 142
step
    goto 1436 @1067.87,-10508.33
    note-enUS Talk to The Defias Traitor
    note-ptBR Fale com The Defias Traitor
    note-enUS You may need to wait for The Defias Traitor to spawn if he's not there
    note-ptBR Talvez precise esperar The Defias Traitor surgir, se ele não estiver lá
    accept 155
step
    goto 1436 @1527.07,-11073.23
    note-enUS Escort the The Defias Traitor to the Deadmines
    note-ptBR Escolte The Defias Traitor até Deadmines
    objective 155/1
step
    goto 1436 @1045.12,-10508.8
    note-enUS Talk to Gryan Stoutmantle
    note-ptBR Fale com Gryan Stoutmantle
    turnin 155
    accept 166
step
    goto 1436 @1033.22,-10504.83
    note-enUS Talk to Scout Riell atop the Tower
    note-ptBR Fale com Scout Riell no topo da Tower
    accept 214
step
    path seq 1436 56.45,69.98 56.43,74.34 59.38,74.18 60.87,74.36 60.9,77.64 63.44,77.34 65.2,75.29 63.59,72.86 63.83,70.12
    goto 1436 42.65,71.38
    note-enUS Grind Gnolls south of Sentinel Hill whilst assembling a Deadmines group
    note-ptBR Farme Gnolls ao sul de Sentinel Hill enquanto monta um grupo para Deadmines
    note-enUS When your group has been assembled, travel to Moonbrook
    note-ptBR Quando seu grupo estiver formado, vá até Moonbrook
step
    goto 1436 @1527.42,-11072.77
    note-enUS Enter the Defias Hideout with your group
    note-ptBR Entre no Defias Hideout com seu grupo
step
    path seq 1415 41.18,79.8 41.03,79.96 40.92,80.05
    goto 1415 41.08,80.11
    note-enUS Kill the Defias. Loot them for their Red Silk Bandanas
    note-ptBR Mate os Defias. Saqueie-os para obter Red Silk Bandanas
    note-enUS You can also complete this inside the Deadmines
    note-ptBR Você também pode completar isso dentro de Deadmines
    objective 214/1 |opt
    note-enUS Kill Skeletal Miners, Undead Dynamiters and Undead Excavators. Loot them for their Cards
    note-ptBR Mate Skeletal Miners, Undead Dynamiters e Undead Excavators. Saqueie-os para obter Cards
    note-enUS NOTE: This quest does NOT give bonus XP similar to other dungeon quests, and takes significantly longer to complete. Consider skipping this quest if your group agrees
    note-ptBR OBS: Esta missão NÃO dá XP bônus como as outras missões de masmorra e demora bem mais. Considere pular se seu grupo concordar
    note-enUS This is completed OUTSIDE of the Dungeon
    note-ptBR Isto é feito FORA da masmorra
    objective 168/1 |opt
    note-enUS Kill Foreman Thistlenettle. Loot him for his Badge
    note-ptBR Mate Foreman Thistlenettle. Saqueie-o para obter Badge
    note-enUS This is completed OUTSIDE of the Dungeon
    note-ptBR Isto é feito FORA da masmorra
    objective 167/1
step
    path seq 1415 41.18,79.8 41.03,79.96 40.92,80.05
    goto 1415 41.08,80.11
    note-enUS Kill Skeletal Miners, Undead Dynamiters and Undead Excavators. Loot them for their Cards
    note-ptBR Mate Skeletal Miners, Undead Dynamiters e Undead Excavators. Saqueie-os para obter Cards
    note-enUS NOTE: This quest does NOT give bonus XP similar to other dungeon quests, and takes significantly longer to complete. Consider skipping this quest if your group agrees
    note-ptBR OBS: Esta missão NÃO dá XP bônus como as outras missões de masmorra e demora bem mais. Considere pular se seu grupo concordar
    note-enUS This is completed OUTSIDE of the Dungeon
    note-ptBR Isto é feito FORA da masmorra
    objective 168/1
step
    path seq 1415 40.94,79.76 40.86,79.62
    goto 1415 40.68,79.58
    note-enUS Enter The Deadmines Dungeon
    note-ptBR Entre na masmorra The Deadmines
step
    note-enUS Kill the Defias inside The Deadmines. Loot them for their Bandanas
    note-ptBR Mate os Defias dentro de The Deadmines. Saqueie-os para obter Bandanas
    objective 214/1 |opt
    note-enUS Kill Sneed. Loot him for the Gnoam Sprecklesprocket
    note-ptBR Mate Sneed. Saqueie-o para obter Gnoam Sprecklesprocket
    objective 2040/1
step
    note-enUS Kill Edwin VanCleef. Loot him for his Head and [An Unsent Letter]
    note-ptBR Mate Edwin VanCleef. Saqueie-o para obter Head e [An Unsent Letter]
    note-enUS Use [An Unsent Letter] to start the quest
    note-ptBR Use [An Unsent Letter] para iniciar a missão
    collect 2874 1 |quest 373
    objective 166/1
    accept 373
    use 2874
step
    goto 1436 @1966.32,-11407.13 40
    note-enUS Travel to the Westfall Lighthouse
    note-ptBR Vá até Westfall Lighthouse
    note-enUS Talk to Captain Grayson
    note-ptBR Fale com Captain Grayson
    accept 104
    accept 103
    turnin 103
step
    goto 1436 @1966.32,-11407.13
    note-enUS Talk to Captain Grayson
    note-ptBR Fale com Captain Grayson
    accept 104
step
    goto 1436 @1811.62,-11358.37
    note-enUS Kill Old Murk-Eye. Loot him for his Scale
    note-ptBR Mate Old Murk-Eye. Saqueie-o para obter Scale
    objective 104/1
step
    ifcomplete 104
    goto 1436 @1966.32,-11407.13
    note-enUS Talk to Captain Grayson
    note-ptBR Fale com Captain Grayson
    turnin 104
step
    goto 1436 @1707.21,-10583.02
    note-enUS Click the Burned-Out Remains on the ground
    note-ptBR Clique nos Burned-Out Remains no chão
    accept 79008
step
    path seq 1436 @1045.12,-10508.8
    goto 1436 @1033.22,-10504.83
    note-enUS Travel to Sentinel Hill
    note-ptBR Vá até Sentinel Hill
    note-enUS Talk to Gryan Stoutmantle and Scout Riell atop the Tower
    note-ptBR Fale com Gryan Stoutmantle e Scout Riell no topo da Tower
    turnin 166
    turnin 214
step
    goto 1436 @1045.12,-10508.8
    note-enUS Talk to Gryan Stoutmantle
    note-ptBR Fale com Gryan Stoutmantle
    turnin 166
step
    ifcomplete 214
    goto 1436 @1033.22,-10504.83
    note-enUS Talk to Scout Riell atop the tower
    note-ptBR Fale com Scout Riell no topo da torre
    turnin 214
step
    only Shaman
    goto 1436 @1037.42,-10628.27
    note-enUS Talk to Thor
    note-ptBR Fale com Thor
    fly 1455
    note-enUS Fly to Ironforge
    note-ptBR Voe para Ironforge
step
    only Shaman
    goto 1455 @-1086.5,-4642.4
    note-enUS Talk to Eldrun Stormbreaker
    note-ptBR Fale com Eldrun Stormbreaker
    accept 94494
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Shaman
    ifonquest 94494
    goto 1455 @-1152.4,-4821.1 |only Shaman
    goto 1432 @-3146,-4837.5
    note-enUS Talk to Gryth Thurden |only Shaman
    note-ptBR Fale com Gryth Thurden |only Shaman
    fly 1432 |only Shaman |opt
    note-enUS Fly to Loch Modan |only Shaman
    note-ptBR Voe para Loch Modan |only Shaman
    note-enUS Talk to Norric Lochthane
    note-ptBR Fale com Norric Lochthane
    turnin 94494
    accept 94495
step
    only Shaman
    goto 1432 @-3146,-4837.5
    note-enUS Talk to Norric Lochthane
    note-ptBR Fale com Norric Lochthane
    accept 94495
step
    only Shaman
    ifonquest 468
    goto 1432 @-2695.5,-4678.6
    note-enUS Talk to Mountaineer Rockgar
    note-ptBR Fale com Mountaineer Rockgar
    turnin 468
step
    only Shaman
    goto 1432 @-2697.7,-4645.5 15 |only Shaman
    path seq 1437 @-2653.8,-4448.1 @-2480.2,-4421.8 @-2464.2,-4280.9 @-2419.8,-4092.1 @-2629.9,-4086.4 @-3085.5,-4196.1 @-3103.1,-4212.6 |only Shaman
    goto 1437 @-3098.2,-4242.6 7 |only Shaman
    goto 1437 @-3109.3,-4257.5
    note-enUS Travel through Dun Algaz to Wetlands |only Shaman
    note-ptBR Passe por Dun Algaz até Wetlands |only Shaman
    note-enUS Travel up the ramp toward Hervdana Saegrund inside the cave |only Shaman
    note-ptBR Suba a rampa em direção a Hervdana Saegrund dentro da caverna |only Shaman
    note-enUS Talk to Hervdana Saegrund
    note-ptBR Fale com Hervdana Saegrund
    turnin 94495
    accept 94497
step
    only Shaman
    goto 1437 @-3069.1,-4210.1
    use 265732
    note-enUS Use the [Unfilled Brown Waterskin] at the base of the waterfall
    note-ptBR Use o [Unfilled Brown Waterskin] na base da cachoeira
    objective 94497/1
step
    only Shaman
    path seq 1437 @-3085.5,-4196.1 @-3103.1,-4212.6 |only Shaman
    goto 1437 @-3098.2,-4242.6 7 |only Shaman
    goto 1437 @-3109.3,-4257.5
    note-enUS Travel back up the ramp toward Hervdana Saegrund inside the cave |only Shaman
    note-ptBR Suba de volta a rampa em direção a Hervdana Saegrund dentro da caverna |only Shaman
    note-enUS Talk to Hervdana Saegrund
    note-ptBR Fale com Hervdana Saegrund
    turnin 94497
    accept 94499
]==])
