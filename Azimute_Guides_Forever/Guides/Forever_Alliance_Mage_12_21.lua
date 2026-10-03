-- Convertido automaticamente de RXPGuides (Alliance-Mage-12-21.lua)
-- (c) RestedXP - CC BY-NC-SA 4.0 (ver LICENSE.txt). Não edite à mão:
-- rode tools/rxp2azimute.py de novo.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id forever.a.12-18-darkshore-mage-aoe
#name 12-18 Darkshore Mage AoE
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#only Mage
#levels 12-18
#zones 1439
#suffix Mage AoE
#suffix-ptBR Mago AoE
#name-ptBR 12-18 Darkshore Mago AoE
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup Mage AoE
#subgroup-ptBR Mago AoE
#recommend Alliance Mage
#next forever.a.18-21-redridge-mage-aoe

step
    path seq 1439 @533.23,6399.77
    goto 1439 @519.48,6405.89
    vendor |opt
    note-enUS You can purchase extremely cheap level 5 food from Laird (fish vendor)
    note-ptBR Você pode comprar comida de nível 5 extremamente barata de Laird (vendedor de peixe)
    note-enUS Go upstairs to the top floor
    note-ptBR Suba até o último andar
    note-enUS Talk to Wizbang Cranktoggle
    note-ptBR Fale com Wizbang Cranktoggle
    accept 983
step
    goto 1439 @515.55,6406.32
    note-enUS Jump down to the 1st floor
    note-ptBR Pule para o 1º andar
    home
    note-enUS Set your Hearthstone to Auberdine
    note-ptBR Defina sua pedra de regresso em Auberdine
step
    goto 1439 @497.21,6427.72
    note-enUS Talk to Barithras Moonshade
    note-ptBR Fale com Barithras Moonshade
    accept 947
step
    goto 1439 @473.63,6439.07
    note-enUS Talk to Sentinel Glynda Nal'Shea
    note-ptBR Fale com Sentinel Glynda Nal'Shea
    accept 4811
step
    goto 1439 @397.65,6437.76
    note-enUS Talk to Tharnariun Treetender
    note-ptBR Fale com Tharnariun Treetender
    accept 2118
step
    goto 1439 @362.93,6434.27
    note-enUS Talk to Terenthis
    note-ptBR Fale com Terenthis
    accept 984
step
    goto 1439 @543.06,6342.57
    note-enUS Talk to Gwennyth Bly'Leggonde
    note-ptBR Fale com Gwennyth Bly'Leggonde
    accept 3524
step
    goto 1439 @561.4,6343.01
    fp
    note-enUS Get the Auberdine flight path
    note-ptBR Pegue o ponto de voo de Auberdine
step
    goto 1439 @558.78,6111.57
    note-enUS Kill Crawlers along the coast
    note-ptBR Mate Crawlers ao longo da costa
    objective 983/1 |opt
    note-enUS Loot the sea creature
    note-ptBR Saqueie a criatura marinha
    objective 3524/1
step
    goto 1439 @386.51,5988.43
    note-enUS Find a Rabid Thistle Bear. Aggro one and use Tharnariun's Hope in your bags (purple orb)
    note-ptBR Encontre um Rabid Thistle Bear. Puxe a atenção dele e use Tharnariun's Hope nas suas bolsas (orbe roxo)
    objective 2118/1 |opt
    note-enUS Head towards the vicinity furbolg camp
    note-ptBR Siga em direção às proximidades do acampamento furbolg
    objective 984/1
step
    goto 1439 @421.88,5804.16
    note-enUS Find a Rabid Thistle Bear. Aggro one and use Tharnariun's Hope in your bags (purple orb)
    note-ptBR Encontre um Rabid Thistle Bear. Puxe a atenção dele e use Tharnariun's Hope nas suas bolsas (orbe roxo)
    objective 2118/1
step
    path seq 1439 @543.71,5962.67
    goto 1439 @577.12,6393.66
    note-enUS Kill Crawlers along the coast
    note-ptBR Mate Crawlers ao longo da costa
    objective 983/1
step
    goto 1439 @540.44,6313.31
    note-enUS Save Strider Meat x5 for later
    note-ptBR Guarde 5 Strider Meat para depois
    collect 5469 5 |quest 2178 |q 2178/1 |opt
    turnin 983
    accept 1001
step
    goto 1439 @543.06,6342.57
    note-enUS Talk to Gwennyth Bly'Leggonde
    note-ptBR Fale com Gwennyth Bly'Leggonde
    turnin 3524
    accept 4681
step
    path seq 1439 @535.85,6409.38
    goto 1439 @600.7,6425.1
    note-enUS Run to the Docks
    note-ptBR Corra até as Docas
    note-enUS Talk to Cerellean Whiteclaw
    note-ptBR Fale com Cerellean Whiteclaw
    accept 963
step
    path seq 1439 @734.32,6479.68
    goto 1439 @854.84,6310.26
    note-enUS Kill darkshore threshers in the sea
    note-ptBR Mate darkshore threshers no mar
    objective 1001/1 |opt
    note-enUS Run up to the docks then jump in the water at the intersection
    note-ptBR Corra até as docas e depois pule na água no cruzamento
    note-enUS Click on the sea turtle head underwater
    note-ptBR Clique na cabeça da tartaruga marinha debaixo d'água
    objective 4681/1
step
    goto 1439 @543.06,6342.57
    note-enUS Kill Threshers en route back to shore
    note-ptBR Mate Threshers no caminho de volta à costa
    note-enUS Talk to Gwennyth Bly'Leggonde
    note-ptBR Fale com Gwennyth Bly'Leggonde
    turnin 4681
step
    goto 1439 @397.65,6437.76
    note-enUS Talk to Tharnariun Treetender
    note-ptBR Fale com Tharnariun Treetender
    turnin 2118
    accept 2138
step
    goto 1439 @362.93,6434.27
    note-enUS Talk to Terenthis
    note-ptBR Fale com Terenthis
    turnin 984
    accept 985
    accept 4761
step
    path seq 1439 @332.8,5883.2
    goto 1439 @338.7,5985.81
    note-enUS Kill furbolgs
    note-ptBR Mate furbolgs
    objective 985/1
    objective 985/2
step
    goto 1439 @362.93,6434.71
    note-enUS Talk to Terenthis
    note-ptBR Fale com Terenthis
    turnin 985
    accept 986
step
    goto 1439 @384.55,6431.65
    note-enUS Go Upstairs
    note-ptBR Suba as escadas
    note-enUS Talk to Sentinel Elissa Starbreeze
    note-ptBR Fale com Sentinel Elissa Starbreeze
    accept 965
step
    goto 1439 @445.46,6536.01
    note-enUS Talk to Gorbold Steelhand
    note-ptBR Fale com Gorbold Steelhand
    accept 982
step
    goto 1439 @492.62,6580.99
    note-enUS Talk to Thundris Windweaver
    note-ptBR Fale com Thundris Windweaver
    turnin 4761
    accept 4762
    accept 954
    accept 958
step
    note-enUS Swim along the coast, killing Threshers
    note-ptBR Nade pela costa, matando Threshers
    objective 1001/1
step
    path seq 1439 @391.75,7052.59
    goto 1439 @437.6,7076.17
    note-enUS Enter the 1st ship by the hole on the hull, then go to the back of the lowest floor of the ship
    note-ptBR Entre no 1º navio pelo buraco no casco e vá até o fundo do andar mais baixo do navio
    objective 982/1
step
    path seq 1439 @302.02,7124.2
    goto 1439 @345.9,7134.68
    note-enUS Enter the 2nd ship by the hole on the hull, then go to the back of the lowest floor of the ship
    note-ptBR Entre no 2º navio pelo buraco no casco e vá até o fundo do andar mais baixo do navio
    objective 982/2
step
    goto 1439 @193.29,7082.72
    turnin 1001
    accept 1002
step
    goto 1439 @194.6,6959.14
    accept 4723
step
    goto 1448 @48.92,6748.85
    note-enUS Talk to Asterion
    note-ptBR Fale com Asterion
    turnin 954
    accept 955
step
    goto 1448 @-33.31,6660.3
    note-enUS Kill Grellkins. Loot them for their Earrings
    note-ptBR Mate Grellkins. Saqueie-os para obter os brincos
    objective 955/1
step
    goto 1448 @48.92,6748.85
    note-enUS Talk to Asterion
    note-ptBR Fale com Asterion
    turnin 955
    accept 956
step
    goto 1448 @-60.33,6653.4
    note-enUS Kill satyrs. Loot them for the Seal
    note-ptBR Mate sátiros. Saqueie-os para obter o selo
    objective 956/1
step
    goto 1448 @48.92,6748.85
    note-enUS Talk to Asterion
    note-ptBR Fale com Asterion
    turnin 956
    accept 957
step
    goto 1439 @-383.77,7222.89
    note-enUS Kill any type of Moonstalker. Loot them for their fangs
    note-ptBR Mate qualquer tipo de Moonstalker. Saqueie-os para obter as presas
    objective 1002/1 |opt
    note-enUS Kill Rabid Thistle Bears you see. Have at least 50% mana and nuke them before they give you Rabies (debuff)
    note-ptBR Mate os Rabid Thistle Bears que vir. Tenha pelo menos 50% de mana e mate-os rápido antes que passem Rabies (debuff)
    objective 2138/1 |opt
    note-enUS Use the Empty Sampling Tube in your bags
    note-ptBR Use o Empty Sampling Tube nas suas bolsas
    objective 4762/1
step
    goto 1439 @-144.04,6209.82
    note-enUS Save the Small Eggs you loot to level your cooking more later. Save ALL the light feathers you get for later
    note-ptBR Guarde os Small Eggs que saquear para subir mais sua culinária depois. Guarde TODAS as Light Feathers que conseguir para depois
    note-enUS Run up to The Red Crystal in the mountains
    note-ptBR Suba até The Red Crystal nas montanhas
    objective 4811/1
step
    goto 1439 @302.02,5726.43
    note-enUS Talk to Sentinel Tysha Moonblade
    note-ptBR Fale com Sentinel Tysha Moonblade
    accept 953
step
    goto 1439 @171.67,5693.25
    note-enUS Kill Anaya Dawnrunner. She patrols around the middle of Ameth'Aran
    note-ptBR Mate Anaya Dawnrunner. Ela patrulha pelo meio de Ameth'Aran
    objective 963/1
step
    goto 1439 @147.44,5630.37
    note-enUS Kill ghosts. Loot them for relics
    note-ptBR Mate fantasmas. Saqueie-os para obter relíquias
    objective 958/1
step
    goto 1448 @147.82,5576.23
    note-enUS Click on the tablet on the ground
    note-ptBR Clique na tábua no chão
    objective 953/2
step
    goto 1448 @166.22,5634.12
    note-enUS Click on the green torch at the gazebo
    note-ptBR Clique na tocha verde no gazebo
    objective 957/1
step
    goto 1448 @105.84,5771.35
    note-enUS Click on the tablet on the ground
    note-ptBR Clique na tábua no chão
    objective 953/1
step
    goto 1439 @302.02,5726.43
    note-enUS Talk to Sentinel Tysha Moonblade
    note-ptBR Fale com Sentinel Tysha Moonblade
    turnin 953
step
    goto 1439 @398.3,5677.53
    note-enUS Finish killing Rabid Thistle Bears and getting Strider Meat
    note-ptBR Termine de matar Rabid Thistle Bears e de pegar Strider Meat
    objective 2138/1
    collect 5469 5 |quest 2178 |q 2178/1
step
    goto 1439 @509,5620.76
    note-enUS Loot the Sea Turtle
    note-ptBR Saqueie a Sea Turtle
    accept 4722
step
    goto 1439 @582.36,5242.17
    note-enUS Loot the Sea Turtle
    note-ptBR Saqueie a Sea Turtle
    accept 4728
step
    hearth
    note-enUS Hearth to Auberdine
    note-ptBR Use a pedra de regresso para Auberdine
step
    goto 1439 @397.65,6437.33
    note-enUS Talk to Tharnariun Treetender
    note-ptBR Fale com Tharnariun Treetender
    turnin 2138
    accept 2139
step
    goto 1439 @445.46,6535.58
    note-enUS Talk to Gorbold Steelhand
    note-ptBR Fale com Gorbold Steelhand
    turnin 982
    vendor
    note-enUS Buy some Mild Spices from Gorbold until you have enough to cook all your eggs
    note-ptBR Compre Mild Spices de Gorbold até ter o suficiente para cozinhar todos os seus ovos
step
    goto 1439 @472.97,6557.85
    note-enUS Make sure you have 10 points in cooking or you cant accept/turnin the quest
    note-ptBR Certifique-se de ter 10 pontos em culinária ou não poderá aceitar/entregar a missão
    note-enUS Talk to Alanndarian Nightsong
    note-ptBR Fale com Alanndarian Nightsong
    accept 2178
    turnin 2178
step
    goto 1439 @491.97,6582.3
    note-enUS Talk to Thundris Windweaver
    note-ptBR Fale com Thundris Windweaver
    turnin 958
    turnin 4762
    accept 4763
step
    goto 1439 @489.35,6506.32
    note-enUS Talk to Archaeologist Hollee
    note-ptBR Fale com Archaeologist Hollee
    accept 729
step
    goto 1439 @471.66,6439.95
    note-enUS Talk to Sentinel Glynda Nal'Shea
    note-ptBR Fale com Sentinel Glynda Nal'Shea
    turnin 4811
    accept 4812
step
    goto 1439 @467.08,6409.38
    note-enUS Fill the Empty Water Tube at the moonwell
    note-ptBR Encha o Empty Water Tube no poço lunar
    objective 4812/1
    note-enUS Fill the Empty Bowl at the moonwell
    note-ptBR Encha a Empty Bowl no poço lunar
    collect 12347 1 |quest 4763 |q 4763/1
step
    goto 1439 @529.3,6415.93
    goto 1448 @600.92,6424.93
    vendor |opt
    note-enUS Buy level 15 drink from Taldan
    note-ptBR Compre bebida de nível 15 de Taldan
    note-enUS Go back to the dock
    note-ptBR Volte para a doca
    note-enUS Talk to Cerellean Whiteclaw
    note-ptBR Fale com Cerellean Whiteclaw
    turnin 963
step
    goto 1439 @577.77,6371.39
    note-enUS Talk to Gubber Blump
    note-ptBR Fale com Gubber Blump
    accept 1138
step
    goto 1439 @543.06,6342.57
    note-enUS Talk to Gwennyth Bly'Leggonde
    note-ptBR Fale com Gwennyth Bly'Leggonde
    turnin 4722
    turnin 4723
    turnin 4728 |only Gnome
step
    goto 1439 @-157.79,6206.77
    note-enUS Click on the red crystal
    note-ptBR Clique no cristal vermelho
    turnin 4812
    accept 4813
step
    note-enUS Kill any type of Moonstalker. Loot them for their fangs
    note-ptBR Mate qualquer tipo de Moonstalker. Saqueie-os para obter as presas
    objective 1002/1
step
    goto 1439 @47.88,6748.67
    note-enUS Talk to Asterion
    note-ptBR Fale com Asterion
    turnin 957
step
    goto 1439 @-376.56,6805.87
    note-enUS Equip your new wand
    note-ptBR Equipe sua nova varinha
    note-enUS Loot the Blackwood Grain Sample from the Barrel, then run south-east toward Den Mother (don't fight the mobs)
    note-ptBR Saqueie a Blackwood Grain Sample do barril, depois corra para sudeste em direção a Den Mother (não lute com os inimigos)
    collect 12342 1
step
    path seq 1439 @-503.63,6732.95
    goto 1439 @-430.27,6662.65
    note-enUS Kill Den Mother. Be careful as her cubs can knock you down for 2 seconds
    note-ptBR Mate Den Mother. Cuidado, os filhotes dela podem derrubar você por 2 segundos
    note-enUS Grind to 16 and try again if you're struggling
    note-ptBR Faça grind até o nível 16 e tente de novo se estiver com dificuldade
    objective 2139/1
step
    goto 1439 @-451.23,6870.06
    note-enUS Loot the Blackwood Nut Sample from the Barrel
    note-ptBR Saqueie a Blackwood Nut Sample do barril
    collect 12343 1
step
    goto 1439 @-520.01,6873.99
    note-enUS Loot the Blackwood Fruit Sample from the Barrel. A mob will spawn in front of you, and in between the huts of the west - you may have to run
    note-ptBR Saqueie a Blackwood Fruit Sample do barril. Um inimigo aparecerá à sua frente, e entre as cabanas a oeste - talvez precise correr
    collect 12341 1
step
    goto 1439 @-489.22,6879.67
    note-enUS Use the Filled Cleansing Bowl in your inventory near the campfire. This will turn all nearby furbolgs friendly.
    note-ptBR Use o Filled Cleansing Bowl do inventário perto da fogueira. Isso tornará amistosos todos os furbolgs próximos.
    note-enUS Kill the Satyr that spawns in between the camps and then runs around the fire. Start at max range as he can be difficult. Loot the basket that drops on the ground after killing him
    note-ptBR Mate o sátiro que aparece entre os acampamentos e corre ao redor da fogueira. Comece à distância máxima, pois ele pode ser difícil. Saqueie a cesta que cai no chão após matá-lo
    objective 4763/1
step
    path seq 1439 @-659.52,6901.5
    goto 1439 @-704.06,6809.8
    note-enUS Head to the cave above the waterfall
    note-ptBR Vá até a caverna acima da cachoeira
    note-enUS Stay on the upper part of the cave. If theres no Death Cap at the end of the top side, then drop down and get one from below
    note-ptBR Fique na parte de cima da caverna. Se não houver Death Cap no fim do lado de cima, desça e pegue um lá embaixo
    note-enUS The first blue one at the mouth of the cave should've respawned by the time you've looted the Death Cap
    note-ptBR O primeiro azul na entrada da caverna já deve ter reaparecido quando você terminar de saquear o Death Cap
    objective 947/1
    objective 947/2
step
    goto 1439 @-658.87,7246.47
    note-enUS Talk to Balthule Shadowstrike
    note-ptBR Fale com Balthule Shadowstrike
    turnin 965
    accept 966
step
    goto 1439 @-684.41,7161.32
    note-enUS Kill Dark Strand Fanatics. Loot them for Parchments
    note-ptBR Mate Dark Strand Fanatics. Saqueie-os para obter pergaminhos
    objective 966/1
step
    goto 1439 @-658.87,7246.47
    note-enUS Talk to Balthule Shadowstrike
    note-ptBR Fale com Balthule Shadowstrike
    turnin 966
    accept 967
step
    goto 1439 @-537.04,7540.35
    accept 4727
step
    path seq 1439 @-423.72,7277.04
    goto 1439 @-417.83,7262.19
    note-enUS Kill Reef Crawlers along the coast, don't go out of your way to complete this quest - Dont kill mobs 4 levels or more above
    note-ptBR Mate Reef Crawlers ao longo da costa, não saia do caminho para concluir esta missão - não mate inimigos 4 ou mais níveis acima
    objective 1138/1 |opt
    turnin 1002
    accept 1003
step
    goto 1439 @47.88,7433.8
    note-enUS Leave some of the nearby murlocs alive, you're gonna die to them after you accept this quest
    note-ptBR Deixe alguns murlocs próximos vivos, você vai morrer para eles depois de aceitar esta missão
    accept 4725
step
    note-enUS Die and respawn in Auberdine
    note-ptBR Morra e renasça em Auberdine
step
    goto 1439 @491.97,6582.3
    note-enUS Equip your new wand
    note-ptBR Equipe sua nova varinha
    note-enUS Talk to Thundris Windweaver
    note-ptBR Fale com Thundris Windweaver
    turnin 4763
step
    goto 1439 @397.65,6437.33
    note-enUS Talk to Tharnariun Treetender
    note-ptBR Fale com Tharnariun Treetender
    turnin 2139
step
    goto 1439 @471.66,6439.95
    note-enUS Talk to Sentinel Glynda Nal'Shea
    note-ptBR Fale com Sentinel Glynda Nal'Shea
    turnin 4813
step
    goto 1439 @497.21,6427.72
    note-enUS Talk to Barithras Moonshade
    note-ptBR Fale com Barithras Moonshade
    turnin 947
    accept 948
step
    goto 1439 @503.1,6401.96
    note-enUS Click on the wanted poster outside the inn
    note-ptBR Clique no cartaz de procurado do lado de fora da estalagem
    accept 4740
step
    ifcomplete 1138
    goto 1439 @577.77,6371.39
    note-enUS Talk to Gubber Blump
    note-ptBR Fale com Gubber Blump
    turnin 1138
step
    goto 1448 @543.42,6342.52
    note-enUS Talk to Gwennyth Bly'Leggonde
    note-ptBR Fale com Gwennyth Bly'Leggonde
    turnin 4727
    turnin 4725
step
    path seq 1439 @413.37,4818.17
    goto 1439 @89.14,5002
    note-enUS Kill any Moonstalker Sire you find and Matriarchs if you're comfortable. Loot them for Pelts. They share spawns with Grizzled Thistle Bears.
    note-ptBR Mate os Moonstalker Sires que encontrar e as Matriarchs se estiver confiante. Saqueie-os para obter as peles. Eles compartilham spawns com os Grizzled Thistle Bears.
    objective 986/1 |opt
    note-enUS Kill Grizzled Thistle Bears. Loot them for Scalps
    note-ptBR Mate Grizzled Thistle Bears. Saqueie-os para obter escalpos
    objective 1003/1 |opt
    note-enUS Talk to Onu
    note-ptBR Fale com Onu
    turnin 948
    accept 944
step
    only Human
    path seq 1439 @79.97,4986.72
    goto 1439 @585.63,5237.37
    vendor |opt
    note-enUS Buy level 15 water from Tiyani
    note-ptBR Compre água de nível 15 de Tiyani
    note-enUS Loot the remains
    note-ptBR Saqueie os restos
    accept 4728
step
    goto 1439 @549.61,4990.65
    note-enUS Clear the murloc camp, stay away from the bonfire in the center
    note-ptBR Limpe o acampamento murloc, fique longe da fogueira no centro
    note-enUS Once you clear everything, move to the center of the camp to summon Murkdeep
    note-ptBR Depois de limpar tudo, vá ao centro do acampamento para invocar Murkdeep
    note-enUS If you're lucky, Murkdeep might already be up about 30 yards off the shore to the west (if someone died on him before).
    note-ptBR Com sorte, Murkdeep pode já estar ativo a uns 30 metros da costa, a oeste (se alguém morreu para ele antes).
    objective 4740/1
step
    note-enUS Kill crabs along the coast for Fine Crab Chunks
    note-ptBR Mate caranguejos ao longo da costa para obter Fine Crab Chunks
    objective 1138/1
step
    goto 1439 @799.82,4808.12
    note-enUS Loot the remains
    note-ptBR Saqueie os restos
    accept 4730
step
    goto 1439 @865.32,4678.43
    note-enUS Loot the remains. Be careful as the Oracles do 90 damage lightning bolts, and can healing wave to full when they're at <55% hp. The turtle head here has LoS
    note-ptBR Saqueie os restos. Cuidado, os Oracles lançam raios de 90 de dano e podem se curar totalmente com Healing Wave quando estão com <55% de vida. A cabeça de tartaruga aqui bloqueia a linha de visão
    note-enUS Always leave yourself an escape route. Tidehunter's aren't so bad, but be aware of their low-damage poison ability
    note-ptBR Sempre deixe uma rota de fuga. Os Tidehunters não são tão ruins, mas cuidado com o veneno de baixo dano deles
    note-enUS Try to save your heal potions for later, especially your big ones
    note-ptBR Guarde suas poções de cura para depois, principalmente as maiores
    accept 4731
step
    goto 1439 @896.76,4597.21
    note-enUS The turtle shell on the island has LoS
    note-ptBR O casco de tartaruga na ilha bloqueia a linha de visão
    accept 4732
step
    goto 1439 @892.83,4517.3
    note-enUS Loot it at its neck, be careful of the 2 mobs hidden by the terrain (you should only need to kill 3 mobs to loot this one)
    note-ptBR Saqueie-o pelo pescoço, cuidado com os 2 inimigos escondidos pelo terreno (você só deve precisar matar 3 inimigos para saquear este)
    accept 4733
step
    goto 1439 @602.01,4678.87
    note-enUS Talk to Prospector Remtravel
    note-ptBR Fale com Prospector Remtravel
    turnin 729
step
    goto 1439 @602.01,4678.87
    note-enUS This quest is VERY hard. Do it with another player if you can.
    note-ptBR Esta missão é MUITO difícil. Faça-a com outro jogador se puder.
    note-enUS Start the escort quest
    note-ptBR Inicie a missão de escolta
    note-enUS Talk to Prospector Remtravel
    note-ptBR Fale com Prospector Remtravel
    accept 731 |noauto
step
    note-enUS Escort Prospector Remtravel
    note-ptBR Escolte Prospector Remtravel
    note-enUS Let Remtravel aggro everything (as mobs need to hit him for them to aggro him), then blast the mob with fireballs
    note-ptBR Deixe Remtravel atrair tudo (os inimigos precisam acertá-lo para focarem nele), depois detone o inimigo com bolas de fogo
    note-enUS Remtravel is really squishy, so try to take aggro off of him from the other mobs
    note-ptBR Remtravel é bem frágil, então tente tirar dele o aggro dos outros mobs
    note-enUS When troggs spawn, polymorph the one he isn't attacking, then nuke the other one when it has hit him. Polymorph the mage first that spawns near the end AFTER it shoots a fireball at the prospector
    note-ptBR Quando os troggs surgirem, use polymorph no que ele não está atacando e detone o outro depois que ele acertar o prospector. Use polymorph primeiro no mago que surge no fim, DEPOIS que ele lançar uma fireball no prospector
    note-enUS If you can't do this quest first-time, just skip it - it is VERY skill-intensive and also very luck-based.
    note-ptBR Se não conseguir fazer esta missão na primeira tentativa, pule-a. Ela exige MUITA habilidade e também depende muito de sorte.
    objective 731/1
step
    note-enUS Kill any Moonstalker Sire you find and Matriarchs if you're comfortable. Loot them for Pelts. They share spawns with Grizzled Thistle Bears.
    note-ptBR Mate os Moonstalker Sires que encontrar e as Matriarchs se estiver confiante. Saqueie-os para obter as peles. Eles compartilham spawns com os Grizzled Thistle Bears.
    objective 986/1 |opt
    note-enUS Kill Plainstriders. Make sure you have at least 1 light feather for later
    note-ptBR Mate Plainstriders. Certifique-se de ter pelo menos 1 pena leve para depois
    collect 17056 1
step
    path seq 1439 @413.37,4818.17
    goto 1439 @433.02,4529.09
    note-enUS Kill Grizzled Thistle Bears. Loot them for Scalps
    note-ptBR Mate Grizzled Thistle Bears. Saqueie-os para obter escalpos
    objective 1003/1 |opt
    note-enUS Keep an eye out for The Powers Below. It's a low droprate, free quest
    note-ptBR Fique atento a The Powers Below. É uma missão grátis com baixa taxa de drop
    collect 5352 1 |quest 968 |opt
    accept 968 |opt
    note-enUS Enter The Master's Glaive and clear mobs around the altar in the center
    note-ptBR Entre em The Master's Glaive e limpe os mobs ao redor do altar no centro
    objective 944/1
step
    goto 1439 @410.09,4519.49
    note-enUS Talk to Therylune
    note-ptBR Fale com Therylune
    accept 945
step
    note-enUS Drop the scrying bowl from your inventory on the ground
    note-ptBR Solte a scrying bowl do seu inventário no chão
    turnin 944
    accept 949
step
    goto 1439 @416.64,4576.69
    note-enUS Click on the book on top of the pedestal. Be careful that Therylune doesnt run off if you started it already
    note-ptBR Clique no livro em cima do pedestal. Cuidado para Therylune não sair correndo se você já tiver começado
    turnin 949
    accept 950
step
    note-enUS Finish the escort quest
    note-ptBR Termine a missão de escolta
    note-enUS When you kill the last mob leading out of the glaive, make a campfire and cook all of the meat/eggs you still have to level your cooking skill
    note-ptBR Ao matar o último mob na saída do glaive, faça uma fogueira e cozinhe toda a carne/ovos que ainda tiver para subir sua culinária
    note-enUS You need 50 cooking skill for a free quest in Darkshire
    note-ptBR Você precisa de 50 de culinária para uma missão gratuita em Darkshire
    objective 945/1
step
    path seq 1439 @493.28,4321.68 @389.79,4836.94 @71.46,4749.17
    goto 1439 @389.79,4836.94
    note-enUS Kill any Moonstalker Sire you find and Matriarchs if you're comfortable. Loot them for Pelts. They share spawns with Grizzled Thistle Bears
    note-ptBR Mate os Moonstalker Sires que encontrar e as Matriarchs se estiver confiante. Saqueie-os para obter as peles. Eles compartilham spawns com os Grizzled Thistle Bears
    note-enUS If you're getting super unlucky with spawns and droprates, you can skip this quest
    note-ptBR Se estiver com muito azar com os spawns e as taxas de drop, pode pular esta missão
    objective 986/1
step
    goto 1439 @413.37,4818.17
    note-enUS Kill Grizzled Thistle Bears all around southern Darkshore. Loot them for Scalps
    note-ptBR Mate Grizzled Thistle Bears por todo o sul de Darkshore. Saqueie-os para obter escalpos
    objective 1003/1
step
    goto 1439 @229.97,4815.55
    turnin 1003
step
    goto 1439 @89.14,5002
    note-enUS Talk to Onu
    note-ptBR Fale com Onu
    turnin 950
step
    path seq 1439 @79.97,4987.16
    goto 1439 @33.47,4996.33
    vendor |opt
    note-enUS Buy food/drink from Tiyani if needed
    note-ptBR Compre comida/bebida de Tiyani se precisar
    note-enUS Accept the Kerlonian escort quest. If he's not there, skip this step
    note-ptBR Aceite a missão de escolta de Kerlonian. Se ele não estiver lá, pule esta etapa
    note-enUS Talk to Kerlonian Evershade
    note-ptBR Fale com Kerlonian Evershade
    accept 5321
step
    ifonquest 5321
    goto 1439 @33.47,4996.33
    note-enUS Loot the small gray chest next to Kerlonian
    note-ptBR Saqueie o pequeno baú cinza ao lado de Kerlonian
    objective 5321/2
step
    ifonquest 5321
    goto 1440 @152.23,3260.72
    note-enUS Run south to Ashenvale. Bind the Horn of Awakening to your bars, and use it on Kerlonian when he starts walking in place and falls asleep
    note-ptBR Corra para o sul até Ashenvale. Coloque o Horn of Awakening nas suas barras e use-o em Kerlonian quando ele começar a andar no lugar e adormecer
    objective 5321/1
step
    ifonquest 5321
    goto 1440 @128.01,3305.31
    note-enUS Talk to Liladris Moonriver
    note-ptBR Fale com Liladris Moonriver
    turnin 5321
step
    goto 1440 @189.71,3185.39
    note-enUS Talk to Delgren the Purifier
    note-ptBR Fale com Delgren the Purifier
    turnin 967
step
    goto 1440 @394.43,2677.63
    note-enUS Run up the road south. Head toward The Shrine of Aessina
    note-ptBR Siga pela estrada ao sul. Vá em direção a The Shrine of Aessina
    note-enUS Talk to Therysil
    note-ptBR Fale com Therysil
    turnin 945
step
    hearth
    note-enUS Hearth to Auberdine
    note-ptBR Use a pedra de regresso para Auberdine
step
    goto 1439 @577.77,6371.39
    note-enUS Talk to Gubber Blump
    note-ptBR Fale com Gubber Blump
    turnin 1138
step
    goto 1439 @543.06,6342.13
    note-enUS Talk to Gwennyth Bly'Leggonde
    note-ptBR Fale com Gwennyth Bly'Leggonde
    turnin 4730
    turnin 4731
    turnin 4732
    turnin 4733
step
    goto 1439 @470.35,6439.07
    note-enUS Talk to Sentinel Glynda Nal'Shea
    note-ptBR Fale com Sentinel Glynda Nal'Shea
    turnin 4740
step
    ifcomplete 986
    goto 1439 @362.93,6434.71
    note-enUS Keep the next part of the quest in your questlog for the +3 stamina cloak. Abandon the quest when you dont need the cloak anymore
    note-ptBR Mantenha a próxima parte da missão no registro de missões para obter a capa de +3 de vigor. Abandone a missão quando não precisar mais da capa
    note-enUS Talk to Terenthis
    note-ptBR Fale com Terenthis
    turnin 986
    accept 993
step
    ifcomplete 731
    goto 1439 @489.35,6506.32
    note-enUS Talk to Archaeologist Hollee
    note-ptBR Fale com Archaeologist Hollee
    turnin 731
step
    ifturnedin 731
    goto 1439 @489.35,6506.32
    note-enUS Talk to Archaeologist Hollee
    note-ptBR Fale com Archaeologist Hollee
    accept 741
step
    ifonquest 741
    path seq 1439 @555.5,6418.99
    goto 1439 @769.03,6579.24 40
    note-enUS Run back to the dock. Wait for the boat to Darnassus to arrive
    note-ptBR Volte correndo para o cais. Espere o barco para Darnassus chegar
    zone 1438
    note-enUS Take the boat to Darnassus
    note-ptBR Pegue o barco para Darnassus
step
    ifonquest 741
    goto 1438 @965.8,8781.63 30
    note-enUS Go through the purple portal
    note-ptBR Atravesse o portal roxo
step
    ifonquest 741
    goto 1457 @2607.74,9642.04
    note-enUS Talk to Chief Archaeologist Greywhisker
    note-ptBR Fale com Chief Archaeologist Greywhisker
    turnin 741
    accept 942
step
    goto 1438 @841.05,8641.12
    fp
    note-enUS Get the Teldrassil Flight Path
    note-ptBR Pegue o ponto de voo de Teldrassil
    fp
    note-enUS Fly to Auberdine
    note-ptBR Voe para Auberdine
step
    goto 1439 @818.16,6422.92 50
    zone 1437
    note-enUS Take the boat to Menethil
    note-ptBR Pegue o barco para Menethil
step
    path seq 1437 @-819.67,-3691.42 @-807.26,-3716.22 @-827.94,-3724.49 10.76,56.72
    goto 1437 @-782.03,-3793.12
    note-enUS If you have 8s, Check for Bronze Tube from Neal Allen and buy it if it's there. Otherwise, skip this step
    note-ptBR Se tiver 8s, verifique se Neal Allen tem o Bronze Tube e compre-o se estiver disponível. Caso contrário, pule esta etapa
    collect 4371 1 |quest 175 |q 175/1 |opt
    fly 1455
    note-enUS Fly to Ironforge
    note-ptBR Voe para Ironforge
step
    zone 1453
    note-enUS Take the tram to Stormwind City
    note-ptBR Pegue o bonde para Stormwind City
step
    only Human
    goto 1453 @638.8,-8341.95
    goto 1429 @409.13,-9100.58
    vendor |opt
    note-enUS Buy a Bronze Tube if you haven't
    note-ptBR Compre um Bronze Tube se ainda não tiver
    note-enUS This is a limited supply item, skip this step if the npc doesn't have it
    note-ptBR Este é um item de estoque limitado, pule esta etapa se o NPC não o tiver
    zone 1429
    note-enUS Travel to Elwynn Forest
    note-ptBR Vá até Elwynn Forest
step
    only Gnome
    goto 1429 @622.93,-8830.7
    zone 1453
    note-enUS Travel to Stormwind City
    note-ptBR Vá até Stormwind City
step
    only Gnome
    path seq 1453 @606.4,-8812
    goto 1453 @490.12,-8835.76
    note-enUS Run into Stormwind and get the Flight Path
    note-ptBR Entre em Stormwind e pegue o caminho de voo
    fp
    note-enUS Get the Stormwind City flight path
    note-ptBR Pegue o ponto de voo de Stormwind City
step
    only Gnome
    path seq 1453 @493.08,-8867.22
    goto 1453 @507.6,-8885.59 18
    note-enUS Drop down to the small ledge by running into the white wall. Be careful. Run along it toward the exit of Stormwind
    note-ptBR Desça até a pequena plataforma correndo contra a parede branca. Cuidado. Corra por ela em direção à saída de Stormwind
step
    path seq 1429 @44,-9459.11 @14.84,-9477.86
    goto 1429 @34.28,-9471.61
    note-enUS Run into the upstairs of the Goldshire Inn
    note-ptBR Suba para o andar de cima da Goldshire Inn
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    goto 1429 @-1637.62,-9642.89 125
    zone 1433
    note-enUS Run all the way east to Redridge Mountains. Sort out your keybinds en route, making sure you have your spells comfortably on your bars
    note-ptBR Corra todo o caminho para o leste até Redridge Mountains. Ajuste suas teclas de atalho no caminho, garantindo que suas magias fiquem confortáveis nas barras
]==])

register([==[
#format 1
#id forever.a.18-21-redridge-mage-aoe
#name 18-21 Redridge Mage AoE
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#only Mage
#levels 18-21
#zones 1433
#suffix Mage AoE
#suffix-ptBR Mago AoE
#name-ptBR 18-21 Redridge Mago AoE
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup Mage AoE
#subgroup-ptBR Mago AoE
#recommend Alliance Mage

step
    goto 1429 @-1902.44,-9609.56
    note-enUS start AoEing needed quest mobs in groups of 3+ that you see.
    note-ptBR Comece a usar AoE nos mobs de missão necessários em grupos de 3 ou mais que encontrar.
    note-enUS Keep this tutorial open in another tab for the Redridge AoE Section if needed:
    note-ptBR Deixe este tutorial aberto em outra aba para a seção de AoE de Redridge, se necessário:
    note-enUS Talk to Guard Parker. He patrols around the crossroads a little
    note-ptBR Fale com Guard Parker. Ele patrulha um pouco ao redor do cruzamento
    note-enUS Talk to Guard Parker
    note-ptBR Fale com Guard Parker
    accept 244
step
    goto 1433 @-2238.15,-9443.6
    note-enUS Talk to Deputy Feldon
    note-ptBR Fale com Deputy Feldon
    turnin 244
    accept 246
step
    goto 1433 @-2234.89,-9435.06
    fp
    note-enUS Get the Redridge Mountains flight path
    note-ptBR Pegue o ponto de voo de Redridge Mountains
step
    goto 1433 @-2298.28,-9283.9
    note-enUS Talk to Marshal Marris
    note-ptBR Fale com Marshal Marris
    accept 20
step
    goto 1433 @-2268.54,-9279.27
    note-enUS Talk to Foreman Oslow
    note-ptBR Fale com Foreman Oslow
    accept 125
step
    goto 1433 @-2242.49,-9259
    note-enUS Talk to Verner Osgood
    note-ptBR Fale com Verner Osgood
    accept 118
step
    goto 1433 @-2216,-9215.85
    note-enUS Inside the Town Hall
    note-ptBR Dentro da prefeitura
    note-enUS Talk to Bailiff Conacher
    note-ptBR Fale com Bailiff Conacher
    accept 91
step
    goto 1433 @-2221.87,-9218.6
    note-enUS Go inside the building
    note-ptBR Entre no prédio
    note-enUS Talk to Magistrate Solomon
    note-ptBR Fale com Magistrate Solomon
    accept 120
step
    goto 1433 @-2172.59,-9261.02
    note-enUS Talk to Dockmaster Baren
    note-ptBR Fale com Dockmaster Baren
    accept 127
step
    goto 1433 @-2151.53,-9247.12
    accept 180
step
    goto 1433 @-2158.91,-9235.97
    note-enUS Inside the Inn
    note-ptBR Dentro da estalagem
    note-enUS Talk to Darcy
    note-ptBR Fale com Darcy
    accept 129
step
    goto 1433 @-2157.18,-9223.96
    home
    note-enUS Set your Hearth to Lakeshire
    note-ptBR Defina sua pedra de regresso em Lakeshire
step
    goto 1433 @-2207.32,-9351.66
    note-enUS Talk to Shawn
    note-ptBR Fale com Shawn
    accept 3741
step
    path seq 1433 @-2174.32,-9386.56 @-2147.41,-9308.08 @-2090.96,-9373.82 @-1986.76,-9324.3 @-2246.4,-9359.92 @-2309.57,-9376.28
    goto 1433 @-2397.7,-9363.97 90
    note-enUS Look for Hilary's Necklace underwater. It's in a brown patch of dirt
    note-ptBR Procure o Hilary's Necklace debaixo d'água. Ele fica em um trecho de terra marrom
    objective 3741/1
step
    path seq 1433 @-1906.66,-9478.5
    goto 1433 @-1902.54,-9609.83
    note-enUS AoE the gnolls in the camps
    note-ptBR Use AoE nos gnolls dos acampamentos
    note-enUS Talk to Guard Parker
    note-ptBR Fale com Guard Parker
    turnin 129
    accept 130
step
    goto 1433 @-2234.89,-9435.21
    fly 1453
    note-enUS Fly to Stormwind
    note-ptBR Voe para Stormwind
step
    goto 1453 @612.99,-8796.14
    note-enUS Go into Stormwind. Go to the weapon trainer
    note-ptBR Vá para Stormwind. Vá até o instrutor de armas
    trainer
    note-enUS Train 1h Swords and Daggers
    note-ptBR Treine 1h Swords e Daggers
step
    path seq 1453 @660.17,-8814.51
    goto 1453 @638.26,-8342.31
    note-enUS Go to the Auction House. Buy a Bronze Tube if its affordable
    note-ptBR Vá à Casa de Leilões. Compre um Bronze Tube se o preço for acessível
    note-enUS If theres none here or they're too expensive, you can also potentially buy one from Billibub in the Dwarven District
    note-ptBR Se não houver nenhum aqui ou estiverem caros demais, você também pode comprar um de Billibub no Dwarven District
    note-enUS If you can't find one, skip this step
    note-ptBR Se não encontrar um, pule esta etapa
step
    goto 1453 @520.77,-8954.16
    note-enUS Talk to General Marcus Jonathan
    note-ptBR Fale com General Marcus Jonathan
    turnin 120
    accept 121
step
    goto 1429 @87.73,-9456.79
    note-enUS Run to Goldshire
    note-ptBR Corra até Goldshire
    note-enUS Talk to Smith Argus
    note-ptBR Fale com Smith Argus
    turnin 118
    accept 119
step
    goto 1436 @1045.12,-10508.8
    note-enUS Run to Sentinel Hill
    note-ptBR Corra até Sentinel Hill
    note-enUS Talk to Gryan Stoutmantle
    note-ptBR Fale com Gryan Stoutmantle
    accept 65
step
    goto 1436 @1037.42,-10628.5
    goto 1433 @-2243.14,-9259.43
    hearth |opt
    note-enUS Hearth to Lakeshire if it's up
    note-ptBR Use a pedra de regresso para Lakeshire, se estiver disponível
    fp |only Gnome |opt
    note-enUS Get the Westfall flight path |only Gnome
    note-ptBR Pegue o ponto de voo de Westfall |only Gnome
    fp |opt
    note-enUS Fly to Redridge
    note-ptBR Voe para Redridge
    note-enUS Talk to Verner Osgood
    note-ptBR Fale com Verner Osgood
    turnin 119
    accept 122
    accept 124
step
    goto 1433 @-2220.56,-9218.74
    note-enUS Go into the Keep
    note-ptBR Entre na Fortaleza
    note-enUS Talk to Magistrate Solomon
    note-ptBR Fale com Magistrate Solomon
    turnin 121
    accept 143
    note-enUS Talk to Bailiff Conacher
    note-ptBR Fale com Bailiff Conacher
    accept 91
step
    goto 1433 @-2145.45,-9231.63
    note-enUS Go into the top floor of the Inn
    note-ptBR Vá ao último andar da estalagem
    note-enUS Talk to Wiley the Black
    note-ptBR Fale com Wiley the Black
    turnin 65
    accept 132
step
    goto 1433 @-2205.58,-9351.52
    note-enUS Talk to Hilary
    note-ptBR Fale com Hilary
    turnin 3741
step
    path seq 1433 @-2211.45,-9793.71 @-2321.94,-9776.63 @-2513.84,-9604.61 @-2211.45,-9793.71 @-2321.94,-9776.63
    goto 1433 @-2513.84,-9604.61 50
    note-enUS Grind the first 3 items for Redridge Goulash as you do other quests. Also get enough Chunks of Boar Meat to get you to 50 cooking
    note-ptBR Pegue os 3 primeiros itens para Redridge Goulash enquanto faz outras missões. Pegue também Chunks of Boar Meat suficientes para chegar a 50 em culinária
    note-enUS Try to focus heavily on the Goretusks, don't really worry about spider meat yet
    note-ptBR Foque bastante nos Goretusks, não se preocupe ainda com a carne de aranha
    collect 2296 5 |quest 92 |q 92/1 |opt
    collect 1080 5 |quest 92 |q 92/1 |opt
    collect 1081 5 |quest 92 |q 92/1 |opt
    note-enUS Kill Dragon Whelps. Loot them for their scales
    note-ptBR Mate Dragon Whelps. Saqueie-os para obter as escamas
    objective 122/1 |opt
    note-enUS AoE the gnolls in the area. Refer to the AoE video if needed
    note-ptBR Use AoE nos gnolls da área. Consulte o vídeo de AoE se precisar
    note-enUS Deadzone the Poachers during the AoE pull so you don't get shot
    note-ptBR Posicione-se na zona morta dos Poachers durante a puxada em AoE para não levar tiros
    objective 246/1
    objective 246/2
step
    goto 1433 @-2630.63,-9581.16
    note-enUS AoE the murlocs in the area. You'll have to single target the Tidecallers (lightning bolt + healing wave)
    note-ptBR Use AoE nos murlocs da área. Você terá que atacar os Tidecallers individualmente (Lightning Bolt + Healing Wave)
    note-enUS You can AoE the Shorestrikers (Charge) and Flesheaters (25 damage instant lifesteal on attack chance). Creatively make pulls
    note-ptBR Você pode usar AoE nos Shorestrikers (Investida) e Flesheaters (chance de roubo de vida instantâneo de 25 ao atacar). Seja criativo nos pulls
    note-enUS Save 8 Fins for later
    note-ptBR Guarde 8 Fins para depois
    objective 127/1
    collect 1468 8 |quest 150 |q 150/1
step
    goto 1433 @-2895.91,-9697.86
    note-enUS Get the Condor Meat and Whelp scales from around this area. If you're waiting on respawns, then go east to get some Axes then come back here
    note-ptBR Pegue a Condor Meat e as Whelp scales por esta área. Se estiver esperando ressurgimentos, vá para o leste pegar alguns Machados e depois volte aqui
    collect 1080 5 |quest 92 |q 92/1
    objective 122/1
step
    path seq 1433 @-3226.75,-9789.51 @-3210.46,-9637.19 @-3226.75,-9789.51
    goto 1433 @-3210.46,-9637.19 50
    note-enUS AoE orcs in the area. Loot them for their axes. Be careful as the Outrunners Net and the Renegades shield bash.
    note-ptBR Use AoE nos orcs da área. Saqueie-os para obter os machados. Cuidado, os Outrunners lançam Rede e os Renegades dão Golpe de Escudo.
    note-enUS Try to avoid killing the Renegades due to their high level. Pull 3 max at a time. AoEing here is Very high risk, medium reward
    note-ptBR Evite matar os Renegades por causa do nível alto deles. Puxe no máximo 3 por vez. Usar AoE aqui é de risco muito alto e recompensa média
    note-enUS Don't get all the axes yet, you have a better opportunity to finish it later
    note-ptBR Não pegue todos os machados ainda, você terá uma chance melhor de terminar depois
    collect 3014 8
step
    goto 1433 @-2472.16,-9366.72
    note-enUS Go underwater. Loot the grey box
    note-ptBR Mergulhe. Saqueie a caixa cinza
    objective 125/1
step
    goto 1433 @-2267.02,-9596.36
    note-enUS Finish off the Goretusk snouts here
    note-ptBR Termine de pegar os Goretusk snouts aqui
    collect 2296 5 |quest 92 |q 92/1
step
    goto 1433 @-2238.15,-9443.75
    note-enUS Talk to Deputy Feldon
    note-ptBR Fale com Deputy Feldon
    turnin 246
step
    ifcomplete 20
    goto 1433 @-2298.06,-9283.9
    note-enUS Talk to Marshal Marris
    note-ptBR Fale com Marshal Marris
    turnin 20
step
    goto 1433 @-2268.54,-9279.12
    note-enUS Talk to Foreman Oslow
    note-ptBR Fale com Foreman Oslow
    turnin 125
    accept 89
step
    goto 1433 @-2243.36,-9259.43
    note-enUS Talk to Verner Osgood
    note-ptBR Fale com Verner Osgood
    turnin 122
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
    goto 1433 @-2045.38,-9245.82
    note-enUS Talk to Martie Jainrose
    note-ptBR Fale com Martie Jainrose
    turnin 130
    accept 131
    accept 34
step
    goto 1433 @-1910.79,-9288.97
    note-enUS Kill Bellygrub. Kite her back to Guard Adams all the way in the town
    note-ptBR Mate Bellygrub. Leve-a (kite) até o Guard Adams, lá dentro da cidade
    note-enUS Be careful as she tremors (instant 80 aoe damage), and charges (keep her slowed and nova'd if possible)
    note-ptBR Cuidado, ela usa tremor (80 de dano em área instantâneo) e investe (mantenha-a lenta e congelada com nova se possível)
    note-enUS Make sure you do majority damage (51%+)
    note-ptBR Certifique-se de causar a maior parte do dano (51%+)
    note-enUS This quest is VERY hard
    note-ptBR Esta missão é MUITO difícil
    objective 34/1
step
    goto 1433 @-2045.16,-9245.67
    note-enUS Talk to Martie Jainrose
    note-ptBR Fale com Martie Jainrose
    turnin 34
step
    path seq 1433 @-2031.7,-9098.71 @-2313.26,-9149.82 @-2430.7,-9030.51 @-2313.26,-9149.82 @-2031.7,-9098.71 @-2313.26,-9149.82
    goto 1433 @-2430.7,-9030.51 60
    note-enUS Kill Gnolls. Loot them for Pikes and Rivets
    note-ptBR Mate gnolls. Saqueie-os para obter Pikes e Rivets
    objective 89/1
    objective 89/2
    objective 124/1
    objective 124/2
step
    path seq 1433 @-2375.13,-9228.73 @-2401.83,-9180.95 @-2449.15,-9161.7 @-2639.97,-9149.24
    goto 1433 @-2813.2,-9230.04
    note-enUS Kill the nicely stacked groups of Orcs. Loot them to finish off the axes
    note-ptBR Mate os grupos bem agrupados de Orcs. Saqueie-os para terminar os machados
    note-enUS If you get unlucky after clearing the close groups, you have another opportunity later
    note-ptBR Se não tiver sorte após limpar os grupos próximos, terá outra oportunidade mais tarde
    objective 20/1 |opt
    note-enUS Run toward the spiders
    note-ptBR Corra em direção às aranhas
    note-enUS Kill Spiders. Loot them for the meat
    note-ptBR Mate aranhas. Saqueie-as para obter a carne
    note-enUS Be careful as their poison can do some damage
    note-ptBR Cuidado, o veneno deles pode causar um bom dano
    note-enUS Be careful of Chatter (rare), as he has an 8 second-long stun
    note-ptBR Cuidado com Chatter (raro), ele tem um atordoamento de 8 segundos
    collect 1081 5 |quest 92 |q 92/1
step
    goto 1433 @-2911.11,-9195
    note-enUS Finish off killing Orcs for the axes
    note-ptBR Termine de matar Orcs para obter os machados
    objective 20/1
step
    goto 1433 @-2298.06,-9283.9
    note-enUS Talk to Marshal Marris
    note-ptBR Fale com Marshal Marris
    turnin 20
step
    goto 1433 @-2268.76,-9279.27
    note-enUS Talk to Foreman Oslow
    note-ptBR Fale com Foreman Oslow
    turnin 89
step
    goto 1433 @-2243.36,-9259.57
    note-enUS Talk to Verner Osgood
    note-ptBR Fale com Verner Osgood
    turnin 124
    accept 126
step
    goto 1433 @-2158.91,-9235.97
    note-enUS Talk to Darcy
    note-ptBR Fale com Darcy
    turnin 131
step
    goto 1433 @-2157.18,-9223.81
    vendor
    note-enUS Buy level 15 drink
    note-ptBR Compre bebida de nível 15
step
    goto 1433 @-2063.61,-9212.08
    note-enUS Exit the Inn. Go west then into the building
    note-ptBR Saia da estalagem. Vá para o oeste e entre no prédio
    note-enUS Talk to Chef Breanna
    note-ptBR Fale com Chef Breanna
    accept 92
    turnin 92
step
    path seq 1433 @-2146.97,-9225.11
    goto 1433 @-1711.94,-9895.21 90
    note-enUS Cook all of the boar meat up until 50 cooking skill
    note-ptBR Cozinhe toda a carne de javali até 50 de habilidade em culinária
    note-enUS If you don't have enough meat, grind some boars en route to Darkshire
    note-ptBR Se não tiver carne suficiente, faça grind de alguns javalis no caminho para Darkshire
    zone 1431
    note-enUS Travel to Duskwood
    note-ptBR Vá até Duskwood
]==])
