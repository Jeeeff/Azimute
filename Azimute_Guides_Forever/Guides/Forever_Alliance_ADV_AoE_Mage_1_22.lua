-- Convertido automaticamente de RXPGuides (Alliance-ADV-AoE-Mage-1-22.lua)
-- (c) RestedXP - CC BY-NC-SA 4.0 (ver LICENSE.txt). Não edite à mão:
-- rode tools/rxp2azimute.py de novo.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id forever.n.1-10-adv-elwynn-forest-human-mage-aoe
#name 1-10 ADV Elwynn Forest Human Mage AoE
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 2
#flavor forever
#license CC-BY-NC-SA-4.0
#only Human Mage
#levels 1-10
#name-ptBR 1-10 Avançado Elwynn Forest Mago AoE Humano
#group Mage AoE - Advanced (Alliance)
#group-ptBR Mago AoE - Avançado (Aliança)
#recommend Human Mage
#next forever.n.10-11-adv-dun-morogh-human-mage-aoe

step
    path seq 1429 @-146.2,-8999.66
    goto 1429 @-136.52,-8933.53
    note-enUS You have selected the Advanced guide. This is the fastest guide for the fastest class in the game (Alliance Mage). As such, there will be a lot of niche mechanics used as well as highly difficult AoE pulls. Stay persistent while you learn! Good Luck!
    note-ptBR Você selecionou o guia Avançado. É o guia mais rápido para a classe mais rápida do jogo (Mago da Aliança). Por isso, haverá muitas mecânicas específicas e pulls de AoE bem difíceis. Persista enquanto aprende! Boa sorte!
    note-enUS Kill Young Wolves. Loot them until you have 10 copper worth of vendor items
    note-ptBR Mate Young Wolves. Saqueie-os até ter 10 cobres em itens para vender
    note-enUS Talk to Willem
    note-ptBR Fale com Willem
    accept 783
step
    goto 1429 @-112.54,-8899.21
    note-enUS Talk to Danil
    note-ptBR Fale com Danil
    vendor
    note-enUS Vendor Trash until you have 10+ copper
    note-ptBR Venda o lixo até ter 10+ de cobre
step
    path seq 1429 @-139.61,-8910.09
    goto 1429 @-162.62,-8902.59
    note-enUS Talk to McBride inside
    note-ptBR Fale com McBride lá dentro
    turnin 783
    accept 7
step
    path seq 1429 @-164.25,-8891.8 @-174.32,-8880.92 @-188.2,-8868.89 @-180.56,-8862.87
    goto 1429 @-188.2,-8851.76 10
    note-enUS Jump from the stairs to the rail
    note-ptBR Pule da escada para o corrimão
    note-enUS Travel toward Khelden upstairs
    note-ptBR Vá em direção a Khelden no andar de cima
    note-enUS Talk to Khelden
    note-ptBR Fale com Khelden
    train 1459
    note-enUS Train [Arcane Intellect]
    note-ptBR Treine [Arcane Intellect]
step
    path seq 1429 @-188.2,-8868.89 @-174.32,-8880.92 @-164.25,-8891.8
    goto 1429 @-136.52,-8933.53 10
    note-enUS Travel toward Willem
    note-ptBR Vá em direção a Willem
    note-enUS Talk to Willem
    note-ptBR Fale com Willem
    accept 5261
step
    path seq 1429 @-64.64,-8924.9 @-81.64,-8850.37
    goto 1429 @-112.54,-8899.21
    note-enUS Kill Young Wolves. Loot them until you have 50 copper worth of vendor items (including your armor)
    note-ptBR Mate Young Wolves. Saqueie-os até ter 50 cobres em itens para vender (incluindo sua armadura)
    note-enUS Talk to Danil
    note-ptBR Fale com Danil
    note-enUS Buy 10 [Refreshing Spring Water] from him
    note-ptBR Compre 10 [Refreshing Spring Water] dele
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
    collect 159 10 |quest 7 |q 7/1
step
    goto 1429 @-163.21,-8869.12
    note-enUS Talk to Eagan
    note-ptBR Fale com Eagan
    turnin 5261
    accept 33
step
    path closest 1429 @-96.22,-8765.43 @-120.17,-8750.61 @-193.41,-8752.93 @-193.75,-8778.16 @-171.54,-8799.68 @-96.22,-8765.43
    note-enUS Kill Young Wolves and Timber Wolves. Loot them for their Tough Wolf Meat
    note-ptBR Mate Young Wolves e Timber Wolves. Saqueie-os para obter Tough Wolf Meat
    note-enUS Focus on the Young Wolves
    note-ptBR Concentre-se nos Young Wolves
    objective 33/1 |opt
    note-enUS Kill Kobold Vermin
    note-ptBR Mate Kobold Vermin
    note-enUS Kill Level 1 Kobold Vermin if possible
    note-ptBR Mate Kobold Vermin de nível 1, se possível
    objective 7/1
step
    path closest 1429 @-176.4,-8817.04 @-138.91,-8816.35 @-67.41,-8802.69 @-50.41,-8843.43 @-62.21,-8886.48 @-131.97,-8855 @-176.4,-8817.04
    note-enUS Kill Young Wolves and Timber Wolves. Loot them for their Tough Wolf Meat
    note-ptBR Mate Young Wolves e Timber Wolves. Saqueie-os para obter Tough Wolf Meat
    note-enUS Focus on the Young Wolves
    note-ptBR Concentre-se nos Young Wolves
    objective 33/1
step
    goto 1429 @-163.21,-8869.12
    note-enUS Talk to Eagan
    note-ptBR Fale com Eagan
    turnin 33 |reward 1
step
    goto 1429 @-112.54,-8899.21
    note-enUS Talk to Danil
    note-ptBR Fale com Danil
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
    collect 159 10 |quest 15 |q 15/1
step
    goto 1429 @-162.62,-8902.59
    note-enUS Talk to McBride inside
    note-ptBR Fale com McBride lá dentro
    turnin 7
    accept 15
    accept 3104
step
    path closest 1429 @-104.55,-8782.32 @-109.41,-8767.51 @-108.02,-8727.93 @-71.23,-8689.97 @-121.91,-8698.07 @-203.82,-8749.22 @-104.55,-8782.32
    note-enUS Kill Kobold Workers
    note-ptBR Mate Kobold Workers
    objective 15/1
step
    path closest 1429 @-176.4,-8817.04 @-138.91,-8816.35 @-67.41,-8802.69 @-50.41,-8843.43 @-62.21,-8886.48 @-131.97,-8855 @-176.4,-8817.04
    level 3
    note-enUS Grind to 1110+/1400xp
    note-ptBR Mate monstros até 1110+/1400xp
step
    goto 1429 @-112.54,-8899.21
    note-enUS Talk to Danil
    note-ptBR Fale com Danil
    note-enUS Buy 10 [Refreshing Spring Water] from him
    note-ptBR Compre 10 [Refreshing Spring Water] dele
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
    collect 159 10 |quest 15 |q 15/1
step
    goto 1429 @-162.62,-8902.59
    note-enUS Talk to McBride inside
    note-ptBR Fale com McBride lá dentro
    turnin 15
    accept 21
step
    path seq 1429 @-164.25,-8891.8 @-174.32,-8880.92 @-188.2,-8868.89 @-180.56,-8862.87
    goto 1429 @-188.2,-8851.76 10
    note-enUS Jump from the stairs to the rail
    note-ptBR Pule da escada para o corrimão
    note-enUS Travel toward Khelden upstairs
    note-ptBR Vá em direção a Khelden no andar de cima
    note-enUS Talk to Khelden
    note-ptBR Fale com Khelden
    turnin 3104
    train 116
    note-enUS Train [Frostbolt]
    note-ptBR Treine [Frostbolt]
step
    path seq 1429 @-188.2,-8868.89 @-174.32,-8880.92 @-164.25,-8891.8
    goto 1429 @-136.52,-8933.53 10
    note-enUS Travel toward Willem
    note-ptBR Vá em direção a Willem
    note-enUS Talk to Willem
    note-ptBR Fale com Willem
    accept 18
step
    path closest 1429 @-288.51,-9068.87 @-388.47,-9001.28 @-288.51,-9068.87 @-335.02,-9108.91 @-376.67,-9073.73 @-388.47,-9001.28 @-333.97,-9028.59 @-239.57,-9080.44 @-288.51,-9067.94 @-332.24,-9052.67 @-358.96,-9074.19 @-378.75,-9047.34 @-365.21,-9003.37 @-332.24,-8976.29 @-239.57,-9080.44
    note-enUS Kill Defias Thugs. Loot them for Red Burlap Bandanas
    note-ptBR Mate Defias Thugs. Saqueie-os para obter Red Burlap Bandanas
    objective 18/1
step
    goto 1429 @-136.52,-8933.53
    note-enUS Talk to Willem
    note-ptBR Fale com Willem
    turnin 18 |reward 5
    accept 6
    accept 3903
step
    goto 1429 @-112.54,-8899.21
    note-enUS Equip the [Militia Quarterstaff]
    note-ptBR Equipe o [Militia Quarterstaff]
    use 1159 |opt
    note-enUS Talk to Danil
    note-ptBR Fale com Danil
    note-enUS Buy 10 [Refreshing Spring Water] from him
    note-ptBR Compre 10 [Refreshing Spring Water] dele
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
    collect 159 10 |quest 21 |q 21/1
step
    path seq 1429 @-122.25,-8671.45 @-130.24,-8649.23 @-141.69,-8607.11 @-150.71,-8554.57 @-198.26,-8535.36
    goto 1429 @-209.37,-8560.59
    note-enUS Go inside the mine
    note-ptBR Entre na mina
    note-enUS Kill Kobold Laborers
    note-ptBR Mate Kobold Laborers
    objective 21/1
step
    goto 1429 @-224.3,-8850.37
    note-enUS Talk to Milly
    note-ptBR Fale com Milly
    turnin 3903
    accept 3904
step
    path seq 1429 @-327.73,-9034.15 @-297.88,-9068.64 @-353.76,-9052.9 @-356.88,-9087.15 @-333.63,-9112.61 @-356.88,-9087.15 @-353.76,-9052.9 @-327.73,-9034.15 @-297.88,-9068.64 @-353.76,-9052.9 @-356.88,-9087.15 @-333.63,-9112.61 @-356.88,-9087.15 @-353.76,-9052.9 @-327.73,-9034.15
    goto 1429 @-461.01,-9056.37
    level 5 |opt
    note-enUS Grind to 1175+/2800xp
    note-ptBR Mate monstros até 1175+/2800xp
    note-enUS Loot the Buckets of Grapes on the ground
    note-ptBR Saqueie os Buckets of Grapes no chão
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    objective 3904/1 |opt
    note-enUS Kill Garrick Padfoot. Loot him for Garrick's Head
    note-ptBR Mate Garrick Padfoot. Saqueie-o para obter Garrick's Head
    objective 6/1
step
    path closest 1429 @-327.73,-9034.15 @-297.88,-9068.64 @-353.76,-9052.9 @-356.88,-9087.15 @-333.63,-9112.61 @-356.88,-9087.15 @-353.76,-9052.9 @-327.73,-9034.15
    note-enUS Loot the Buckets of Grapes on the ground
    note-ptBR Saqueie os Buckets of Grapes no chão
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    objective 3904/1
step
    path closest 1429 @-327.73,-9034.15 @-297.88,-9068.64 @-353.76,-9052.9 @-356.88,-9087.15 @-333.63,-9112.61 @-356.88,-9087.15 @-353.76,-9052.9 @-327.73,-9034.15
    level 5
    note-enUS Grind to 1175+/2800xp
    note-ptBR Mate monstros até 1175+/2800xp
step
    goto 1429 @-224.3,-8850.37
    note-enUS Talk to Milly
    note-ptBR Fale com Milly
    turnin 3904
    accept 3905
step
    goto 1429 @-136.52,-8933.53
    note-enUS Talk to Willem
    note-ptBR Fale com Willem
    turnin 6 |reward 1
step
    goto 1429 @-162.62,-8902.59
    note-enUS Talk to McBride inside
    note-ptBR Fale com McBride lá dentro
    turnin 21 |reward 3
    accept 54
step
    path seq 1429 @-171.54,-8908 @-184.38,-8901.52 @-178.83,-8888.1 @-164.6,-8892.5 @-172.23,-8907.31 @-185.08,-8899.21 @-176.75,-8886.94
    goto 1429 @-181.64,-8902.13 10
    note-enUS Go upstairs
    note-ptBR Suba as escadas
    note-enUS Travel toward Neals
    note-ptBR Vá em direção a Neals
    note-enUS Talk to Neals
    note-ptBR Fale com Neals
    turnin 3905 |reward 1
step
    goto 1429 @-45.9,-9044.8
    note-enUS Talk to Falkhaan
    note-ptBR Fale com Falkhaan
    accept 2158
step
    goto 1429 @74.02,-9465.52
    note-enUS Talk to Dughan
    note-ptBR Fale com Dughan
    turnin 54
    accept 62
step
    goto 1429 @33.14,-9460.75
    note-enUS Talk to William through the wall as you enter the Inn
    note-ptBR Fale com William através da parede ao entrar na Inn
    accept 60
step
    goto 1429 @16.2,-9462.65
    home |opt
    note-enUS Set your Hearthstone to Goldshire
    note-ptBR Defina sua pedra de regresso em Goldshire
    note-enUS Talk to Farley
    note-ptBR Fale com Farley
    note-enUS Talk to Farley
    note-ptBR Fale com Farley
    turnin 2158 |reward 2
    vendor
    note-enUS Vendor Trash. Buy [Ice Cold Milk] down to 2 silver
    note-ptBR Venda o lixo. Compre [Ice Cold Milk] até ficar com 2 de prata
step
    goto 1429 @34.28,-9472.99
    note-enUS Jump onto the Chandelier downstairs
    note-ptBR Pule no lustre no andar de baixo
    note-enUS Talk to Zaldimar through the wall
    note-ptBR Fale com Zaldimar através da parede
    trainer
    note-enUS Train your class spells (Fireball R2, Fire Blast)
    note-ptBR Treine suas magias de classe (Fireball R2, Fire Blast)
step
    goto 1429 @72.81,-9496.37
    note-enUS Talk to Remy
    note-ptBR Fale com Remy
    accept 47
step
    goto 1429 @338.47,-9889.69
    note-enUS Kill Stonetusk Boars. Loot them for [Chunks of Boar Meat]
    note-ptBR Mate Stonetusk Boars. Saqueie-os para obter [Chunks of Boar Meat]
    collect 769 4 |quest 86 |q 86/1 |opt
    note-enUS Talk to Bernice and Ma
    note-ptBR Fale com Bernice e Ma
    accept 85
    accept 88
step
    goto 1429 @38.38,-9923.69
    note-enUS Kill Kobold Tunnelers. Loot them for Gold Dust and Kobold Candles
    note-ptBR Mate Kobold Tunnelers. Saqueie-os para obter Gold Dust e Kobold Candles
    objective 47/1 |opt
    objective 60/1 |opt
    note-enUS Talk to Billy
    note-ptBR Fale com Billy
    turnin 85
    accept 86
step
    goto 1429 @37.4,-10014.14
    note-enUS Talk to Maybell inside
    note-ptBR Fale com Maybell lá dentro
    accept 106
step
    goto 1429 @65.17,-10008.13
    note-enUS Talk to Joshua
    note-ptBR Fale com Joshua
    note-enUS Buy as much [Ice Cold Milk] as you can afford from him
    note-ptBR Compre o máximo de [Ice Cold Milk] que puder dele
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
step
    note-enUS Kill Stonetusk Boars. Loot them for [Chunks of Boar Meat]
    note-ptBR Mate Stonetusk Boars. Saqueie-os para obter [Chunks of Boar Meat]
    collect 769 4 |quest 86 |q 86/1 |opt
    note-enUS Talk to Tommy
    note-ptBR Fale com Tommy
    turnin 106
    accept 111
step
    path closest 1429 @454.25,-9915.31 @387.26,-9944.94 @372.34,-9912.07 @418.85,-9881.06 @454.25,-9915.31
    note-enUS Kill Stonetusk Boars. Loot them for [Chunks of Boar Meat]
    note-ptBR Mate Stonetusk Boars. Saqueie-os para obter [Chunks of Boar Meat]
    collect 769 4 |quest 86 |q 86/1
step
    path seq 1429 @338.47,-9889.69
    goto 1429 @322.71,-9880.59
    note-enUS Talk to Bernice and then Gramma inside
    note-ptBR Fale com Bernice e depois com Gramma lá dentro
    turnin 86
    accept 84
    turnin 111
    accept 107
step
    goto 1429 @38.38,-9923.69
    note-enUS Kill Kobold Tunnelers. Loot them for Gold Dust and Kobold Candles
    note-ptBR Mate Kobold Tunnelers. Saqueie-os para obter Gold Dust e Kobold Candles
    objective 47/1 |opt
    objective 60/1 |opt
    note-enUS Talk to Billy
    note-ptBR Fale com Billy
    turnin 84
    accept 87
step
    goto 1429 @65.17,-10008.13
    note-enUS Talk to Joshua
    note-ptBR Fale com Joshua
    note-enUS Buy as much [Ice Cold Milk] as you can afford from him
    note-ptBR Compre o máximo de [Ice Cold Milk] que puder dele
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
step
    path seq 1429 @181.79,-9843.79 @179.36,-9811.39
    goto 1429 @157.15,-9789.4
    note-enUS Enter the Fargodeep Mine
    note-ptBR Entre na Fargodeep Mine
    note-enUS Kill Kobold Tunnelers and Kobold Miners. Loot them for Gold Dust and Kobold Candles
    note-ptBR Mate Kobold Tunnelers e Kobold Miners. Saqueie-os para obter Gold Dust e Kobold Candles
    objective 47/1 |opt
    objective 60/1 |opt
    note-enUS Enter one of the larger open spaces in Fargodeep Mine
    note-ptBR Entre em um dos espaços abertos maiores de Fargodeep Mine
    objective 62/1
step
    path seq 1429 @148.82,-9763.71 @132.16,-9752.6
    goto 1429 @87.04,-9745.65 40
    note-enUS Travel toward Goldtooth
    note-ptBR Vá em direção a Goldtooth
    note-enUS Kill Goldtooth. Loot him for Bernice's Necklace
    note-ptBR Mate Goldtooth. Saqueie-o para obter o Bernice's Necklace
    objective 87/1
step
    path closest 1429 @176.93,-9857.68 @176.24,-9902.12 @223.09,-9916.24 @259.54,-9865.09 @215.81,-9830.6 @176.93,-9857.68
    note-enUS Kill Kobold Tunnelers and Kobold Miners. Loot them for Gold Dust and Kobold Candles
    note-ptBR Mate Kobold Tunnelers e Kobold Miners. Saqueie-os para obter Gold Dust e Kobold Candles
    objective 47/1
    objective 60/1
step
    goto 1429 @72.81,-9496.37
    note-enUS Return to Goldshire
    note-ptBR Volte para Goldshire
    note-enUS Talk to Remy
    note-ptBR Fale com Remy
    turnin 47
    accept 40
step
    goto 1429 @74.02,-9465.52
    note-enUS Talk to Dughan
    note-ptBR Fale com Dughan
    turnin 40
    accept 35
    turnin 62
    accept 76
step
    goto 1429 @33.14,-9460.75
    note-enUS Talk to William through the wall as you enter the Inn
    note-ptBR Fale com William através da parede ao entrar na Inn
    turnin 60
    accept 61
    turnin 107
    accept 112
step
    goto 1429 @16.2,-9462.65
    note-enUS Talk to Farley
    note-ptBR Fale com Farley
    note-enUS Buy 35 [Ice Cold Milk] from him
    note-ptBR Compre 35 [Ice Cold Milk] dele
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
    collect 1179 35 |quest 432 |q 432/1
step
    goto 1429 @9.64,-9465.36
    note-enUS Talk to Brog
    note-ptBR Fale com Brog
    vendor
    note-enUS Buy a [Small Brown Pouch] from him
    note-ptBR Compre uma [Small Brown Pouch] dele
step
    path seq 1429 @34.63,-9466.28 @47.12,-9456.1 @-215.62,-9390.6 @-237.83,-9438.28 @-292.32,-9442.91 @-342.3,-9391.75 @-459.62,-9402.63
    goto 1429 @-421.09,-9478.78
    note-enUS Exit the Inn
    note-ptBR Saia da estalagem
    note-enUS Kill Murloc Streamrunners and Murlocs. Loot them for Crystal Kelp Frond
    note-ptBR Mate Murloc Streamrunners e Murlocs. Saqueie-os para obter Crystal Kelp Frond
    note-enUS Be careful as Murloc Streamrunners have [Increased Movespeed]
    note-ptBR Cuidado, Murloc Streamrunners têm [Increased Movespeed]
    objective 112/1
step
    path seq 1429 @-604.7,-9188.53 @-588.39,-9130.9 @-570.68,-9116.32
    goto 1429 @-560.97,-9100.58
    note-enUS Enter the Jasperlode Mine
    note-ptBR Entre na Jasperlode Mine
    note-enUS Follow the middle path of the cave
    note-ptBR Siga o caminho do meio da caverna
    note-enUS Be careful as Kobold Geomancers cast [Fireball] (Ranged Cast: Deals about 30 damage)
    note-ptBR Cuidado, Kobold Geomancers lançam [Fireball] (Lançamento à distância: causa cerca de 30 de dano)
    objective 76/1
step
    path seq 1429 @-570.68,-9116.32 @-588.39,-9130.9 @-609.91,-9186.91
    goto 1429 @-1032.06,-9610.23
    note-enUS Exit the Jasperlode Mine
    note-ptBR Saia da Jasperlode Mine
    note-enUS Talk to Thomas
    note-ptBR Fale com Thomas
    turnin 35
    accept 37
    accept 52
step
    path seq 1429 @-1063.89,-9494.98 @-984.06,-9457.95 @-950.05,-9347.31
    goto 1429 @-986.14,-9335.97
    note-enUS Kill all Young Forest Bears you see and Prowlers
    note-ptBR Mate todos os Young Forest Bears e Prowlers que vir
    objective 52/2 |opt
    objective 52/1 |opt
    note-enUS Click the half-eaten body on the ground
    note-ptBR Clique no corpo meio devorado no chão
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    turnin 37
    accept 45
step
    path seq 1429 @-1198.91,-9350.09
    goto 1429 @-1289.22,-9469.8
    note-enUS Kill all Young Forest Bears you see and Prowlers
    note-ptBR Mate todos os Young Forest Bears e Prowlers que vir
    objective 52/2 |opt
    objective 52/1 |opt
    note-enUS Talk to Raelen
    note-ptBR Fale com Raelen
    accept 5545
step
    ifonquest 45
    goto 1429 @-1233.96,-9224.41 45
    note-enUS Loot the Bundles Of Wood at the base of the trees
    note-ptBR Saqueie os Bundles Of Wood na base das árvores
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    objective 5545/1 |opt
    note-enUS Travel toward Rolf's Corpse
    note-ptBR Vá em direção a Rolf's Corpse
step
    goto 1429 @-1233.96,-9224.41
    note-enUS Kill the Murloc Lurkers and Murloc Foragers guarding Rolf's Corpse
    note-ptBR Mate os Murloc Lurkers e Murloc Foragers que guardam o Rolf's Corpse
    note-enUS You may have to kill one then reset
    note-ptBR Talvez você precise matar um e depois resetar
    note-enUS Be careful as Murloc Lurkers cast [Backstab] (Melee Instant: Deals double damage from behind) and Murloc Foragers cast [Drink Minor Potion] (Self Cast: Heals for about 65 damage)
    note-ptBR Cuidado, Murloc Lurkers lançam [Backstab] (Instantâneo corpo a corpo: causa dano dobrado pelas costas) e Murloc Foragers lançam [Drink Minor Potion] (Lançamento em si: cura cerca de 65)
    note-enUS Click the Rolf's Corpse on the ground
    note-ptBR Clique no Rolf's Corpse no chão
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    turnin 45
    accept 71
step
    path closest 1429 @-1257.91,-9216.77 @-1271.79,-9186.68 @-1230.14,-9150.34 @-1271.1,-9147.1 @-1271.79,-9186.68 @-1257.91,-9216.77 @-1232.92,-9251.95 @-1246.46,-9329.03 @-1249.58,-9362.13 @-1285.33,-9365.14 @-1296.09,-9389.44 @-1338.09,-9331.11 @-1354.05,-9354.26 @-1362.03,-9309.59 @-1302.68,-9309.12 @-1257.91,-9216.77
    note-enUS Loot the Bundles Of Wood at the base of the trees
    note-ptBR Saqueie os Bundles Of Wood na base das árvores
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    objective 5545/1
step
    goto 1429 @-1289.22,-9469.8
    note-enUS Talk to Raelen
    note-ptBR Fale com Raelen
    turnin 5545
step
    goto 1429 @-1222.4,-9531.76
    note-enUS Talk to Sara
    note-ptBR Fale com Sara
    accept 83
step
    path seq 1429 @-1069.44,-9618.58 @-1063.89,-9494.98 @-1093.74,-9665.57 @-1125.32,-9714.41 @-1215.91,-9778.29 @-1295.74,-9718.34 @-1063.89,-9494.98 @-1093.74,-9665.57 @-1125.32,-9714.41 @-1215.91,-9778.29
    goto 1429 @-1295.74,-9718.34
    note-enUS Kill all Young Forest Bears you see and Prowlers
    note-ptBR Mate todos os Young Forest Bears e Prowlers que vir
    note-enUS Deal 51%+ damage to Young Forest Bears and Prowlers, then pull them to the Stormwind Guard to kill them more efficiently
    note-ptBR Cause 51%+ de dano em Young Forest Bears e Prowlers e depois puxe-os até o Stormwind Guard para matá-los com mais eficiência
    objective 52/2
    objective 52/1
step
    goto 1429 @-1032.06,-9610.23
    note-enUS Talk to Thomas
    note-ptBR Fale com Thomas
    turnin 52
    turnin 71
    accept 39
    accept 109
step
    goto 1429 @-1032.06,-9610.23
    note-enUS Talk to Thomas
    note-ptBR Fale com Thomas
    turnin 52
    turnin 71
    accept 39
step
    ifonquest 83
    path closest 1429 @-909.79,-9720.42 @-848.35,-9714.64 @-832.73,-9739.87 @-817.81,-9808.84 @-841.76,-9853.28 @-918.81,-9825.51 @-916.03,-9806.53 @-946.58,-9767.18 @-927.14,-9727.6 @-942.06,-9716.49 @-927.14,-9727.6 @-909.79,-9720.42
    note-enUS Kill Defias Bandits. Loot them for Red Linen Bandanas and the [Westfall Deed]
    note-ptBR Mate Defias Bandits. Saqueie-os para obter Red Linen Bandanas e o [Westfall Deed]
    note-enUS Use the [Westfall Deed] to start the quest
    note-ptBR Use o [Westfall Deed] para iniciar a missão
    objective 83/1
    collect 1972 1 |quest 184 |q 184/1
step
    note-enUS Use the [Westfall Deed] to start the quest
    note-ptBR Use o [Westfall Deed] para iniciar a missão
    accept 184
step
    goto 1429 @-890.35,-9780.14
    note-enUS Kill Princess. Loot her for the Brass Collar
    note-ptBR Mate Princess. Saqueie-a para obter a Brass Collar
    note-enUS Remember to kite her using the fence
    note-ptBR Lembre-se de kitá-la usando a cerca
    objective 88/1
step
    ifcomplete 83
    goto 1429 @-1222.4,-9531.76
    note-enUS Talk to Sara
    note-ptBR Fale com Sara
    turnin 83
step
    goto 1429 @33.14,-9460.75
    hearth |opt
    note-enUS Hearth to Goldshire
    note-ptBR Use a pedra de regresso para Goldshire
    note-enUS Talk to William
    note-ptBR Fale com William
    turnin 112
    accept 114
step
    path seq 1429 @74.02,-9465.52
    goto 1429 @87.87,-9456.65
    note-enUS Talk to Dughan and Argus
    note-ptBR Fale com Dughan e Argus
    turnin 39
    turnin 76
    accept 239
    accept 109
    accept 1097
step
    goto 1429 @37.4,-10014.14
    note-enUS Talk to Maybell inside
    note-ptBR Fale com Maybell lá dentro
    turnin 114
step
    goto 1429 @338.47,-9889.69
    note-enUS Talk to Ma and Bernice
    note-ptBR Fale com Ma e Bernice
    turnin 88 |reward 3
    turnin 87
step
    ifonquest 184
    path closest 1429 @454.25,-9915.31 @387.26,-9944.94 @372.34,-9912.07 @418.85,-9881.06 @454.25,-9915.31
    level 9
    note-enUS Grind to 4225+/6500xp
    note-ptBR Mate monstros até 4225+/6500xp
step
    path closest 1429 @454.25,-9915.31 @387.26,-9944.94 @372.34,-9912.07 @418.85,-9881.06 @454.25,-9915.31
    level 9
    note-enUS Grind to 4825+/6500xp
    note-ptBR Mate monstros até 4825+/6500xp
step
    goto 1429 @694.43,-9662.79
    note-enUS Talk to Rainer
    note-ptBR Fale com Rainer
    turnin 239
step
    ifonquest 184
    path seq 1436 @918.42,-9851.5
    goto 1436 @919.82,-9852.9
    note-enUS Talk to Farmer Furlbrow and Verna
    note-ptBR Fale com Farmer Furlbrow e Verna
    accept 64
    turnin 184
    accept 36
    accept 151
step
    path seq 1436 @918.42,-9851.5
    goto 1436 @919.82,-9852.9
    note-enUS Talk to Farmer Furlbrow and Verna
    note-ptBR Fale com Farmer Furlbrow e Verna
    accept 64
    accept 36
    accept 151
step
    path seq 1436 @1055.27,-10128.7
    goto 1436 @1041.97,-10112.13
    note-enUS Open the Sacks of Oats on the ground. Loot them for Handfuls of Oats
    note-ptBR Abra os Sacks of Oats no chão. Saqueie-os para obter Handfuls of Oats
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    objective 151/1 |opt
    note-enUS Talk to Farmer Saldean and then Salma inside
    note-ptBR Fale com Farmer Saldean e depois com Salma lá dentro
    accept 9
    turnin 36
    accept 38
    accept 22
step
    path seq 1436 @1045.12,-10508.8 @1041.97,-10511.13
    goto 1436 @1021.6,-10500.61
    note-enUS Be VERY careful of Harvest Watchers and Harvest Golems en route
    note-ptBR Tome MUITO cuidado com Harvest Watchers e Harvest Golems no caminho
    note-enUS Travel toward Gryan
    note-ptBR Vá em direção a Gryan
    note-enUS Talk to Gryan, Danuvin, and then Lewis inside
    note-ptBR Fale com Gryan, Danuvin e depois com Lewis lá dentro
    turnin 109
    accept 12
    accept 102
    accept 6181
step
    goto 1436 @1037.07,-10628.27
    note-enUS Talk to Thor
    note-ptBR Fale com Thor
    turnin 6181
    accept 6281
step
    goto 1436 @1037.07,-10628.27
    path seq 1453 @532.74,-8863.09 @599.55,-8811.28 @613.93,-8833.07 @620.79,-8859.6
    goto 1453 @625.49,-8857.89 12
    note-enUS Talk to Thor
    note-ptBR Fale com Thor
    fly 1453 |opt
    note-enUS Fly to Stormwind
    note-ptBR Voe para Stormwind
    note-enUS Travel toward Morgan
    note-ptBR Vá em direção a Morgan
    note-enUS Talk to Morgan
    note-ptBR Fale com Morgan
    turnin 61 |reward 1
step
    goto 1453 @635.44,-8863.81
    note-enUS Talk to Keldric
    note-ptBR Fale com Keldric
    vendor
    note-enUS Buy [Lesser Healing Potions] from him (if they're up)
    note-ptBR Compre [Lesser Healing Potions] dele (se estiverem disponíveis)
step
    path seq 1453 @610.44,-8809.04 @599.01,-8797.84 @603.85,-8769.42 @573.74,-8741.37 @473.05,-8699.06 @426.4,-8714.66
    goto 1453 @382.04,-8702.11 12
    note-enUS Travel toward Osric
    note-ptBR Vá em direção a Osric
    note-enUS Talk to Osric
    note-ptBR Fale com Osric
    turnin 6281
    accept 6261
step
    path seq 1453 @450.74,-8644.11 @479.91,-8639.81 @514.05,-8608.26 @507.6,-8541.66 @683.43,-8397.08
    goto 1453 @685.18,-8387.13 12
    note-enUS Travel toward Grimand
    note-ptBR Vá em direção a Grimand
    note-enUS Talk to Grimand
    note-ptBR Fale com Grimand
    turnin 1097
    accept 353
step
    goto 1453 @638.26,-8342.22
    note-enUS Talk to Billibub
    note-ptBR Fale com Billibub
    vendor
    note-enUS Buy a [Bronze Tube] from him if its up
    note-ptBR Compre um [Bronze Tube] dele, se estiver disponível
step
    goto 1453 @522.12,-8352.8 20
    goto 1455 @-1317.71,-4839.48 30
    note-enUS Travel to the Deeprun Tram
    note-ptBR Vá até Deeprun Tram
    note-enUS Ride the Deeprun Tram whilst spam casting [Conjure Water r2]
    note-ptBR Pegue o Deeprun Tram enquanto conjura [Conjure Water r2] sem parar
    note-enUS Talk to Monty after taking the tram
    note-ptBR Fale com Monty depois de pegar o bonde
    accept 6661
step
    note-enUS Use the [Rat Catcher's Flute] on the Deeprun Rats in the Deeprun Tram
    note-ptBR Use a [Rat Catcher's Flute] nos Deeprun Rats no Deeprun Tram
    objective 6661/1
    use 17117
step
    note-enUS Talk to Monty
    note-ptBR Fale com Monty
    turnin 6661
step
    ifnotturnedin 314
    zone 1455
    note-enUS Enter Ironforge
    note-ptBR Entre em Ironforge
step
    ifnotturnedin 174
    goto 1455 @-1249.87,-4793.31
    note-enUS Talk to Cogspinner
    note-ptBR Fale com Cogspinner
    vendor
    note-enUS Buy a [Bronze Tube] from him if its up
    note-ptBR Compre um [Bronze Tube] dele, se estiver disponível
step
    path seq 1455 @-1266.48,-4749.31 @-1211.92,-4728 @-1170.41,-4754.48 @-1152.31,-4821.12
    goto 1455 @-1152.39,-4820.91
    note-enUS Travel toward Gryth
    note-ptBR Vá em direção a Gryth
    note-enUS Talk to Gryth
    note-ptBR Fale com Gryth
    fp
    note-enUS Get the Ironforge flight path
    note-ptBR Pegue o ponto de voo de Ironforge
step
    path seq 1455 @-1101.87,-4864.81 @-1062.1,-4815.1 @-1036.48,-4804.5 @-992.68,-4742.08 @-931.8,-4627.59
    goto 1455 @-928.4,-4614.51 10
    note-enUS Travel toward Dink
    note-ptBR Vá em direção a Dink
    note-enUS Talk to Dink
    note-ptBR Fale com Dink
    trainer
    note-enUS Train your class spells (Frost Armor r2, Frost Nova, Polymorph, Conjure Water r1 & r2)
    note-ptBR Treine suas magias de classe (Frost Armor r2, Frost Nova, Polymorph, Conjure Water r1 & r2)
    note-enUS Total Cost: 15s
    note-ptBR Custo total: 15s
    note-enUS Remember you may want money for Healing Potions (3s each), Bronze Tube (8s each), and level 5 food (20c per 5)
    note-ptBR Lembre-se: talvez você queira dinheiro para Poções de Cura (3s cada), Bronze Tube (8s cada) e comida de nível 5 (20c por 5)
step
    path seq 1455 @-929.04,-4636.72 @-892.19,-4770.42 @-874.88,-4849.87
    goto 1455 @-857.01,-4840.69 10
    note-enUS Go inside the building
    note-ptBR Entre no prédio
    note-enUS Travel toward Firebrew
    note-ptBR Vá em direção a Firebrew
    note-enUS Talk to Firebrew
    note-ptBR Fale com Firebrew
    home
    note-enUS Set your Hearthstone to Ironforge
    note-ptBR Defina sua pedra de regresso em Ironforge
step
    path seq 1455 @-974.89,-4902.21
    goto 1455 @-997.66,-4886.49 30
    note-enUS Enter the Ironforge Bank
    note-ptBR Entre no banco de Ironforge
    note-enUS Talk to Bailey
    note-ptBR Fale com Bailey
    note-enUS Deposit the following items into the bank:
    note-ptBR Deposite os seguintes itens no banco:
    note-enUS [Bronze Tube]
    note-ptBR [Bronze Tube]
    note-enUS [Osric's Crate]
    note-ptBR [Osric's Crate]
step
    goto 1455 @-833.45,-5021.4 20
    goto 1426 @-1145.04,-5504.3
    zone 1426
    note-enUS Exit Ironforge
    note-ptBR Saia de Ironforge
]==])

register([==[
#format 1
#id forever.n.10-11-adv-dun-morogh-human-mage-aoe
#name 10-11 ADV Dun Morogh Human Mage AoE
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 2
#flavor forever
#license CC-BY-NC-SA-4.0
#only Human Mage
#levels 10-11
#name-ptBR 10-11 Avançado Dun Morogh Mago AoE Humano
#group Mage AoE - Advanced (Alliance)
#group-ptBR Mago AoE - Avançado (Aliança)
#recommend Human Mage

step
    path seq 1426 @-1145.04,-5504.3 @-1219.9,-5422.55
    goto 1426 @-1304.61,-5513.82
    note-enUS Go up the dirt path
    note-ptBR Suba pela trilha de terra
    note-enUS Kite Vagash down to Rudra
    note-ptBR Leve Vagash (kite) até Rudra
    note-enUS Talk to Rudra
    note-ptBR Fale com Rudra
    accept 314
step
    path seq 1426 @-1279.49,-5392.01 @-1289.83,-5669.78
    goto 1426 @-1291.8,-5706.89
    note-enUS Kill Vagash. Loot him for the Fang of Vagash
    note-ptBR Mate Vagash. Saqueie-o para obter a Fang of Vagash
    note-enUS Kite Vagash down to the Dun Morogh Mountaineer south of the ranch. Make sure you do 51%+ damage to him
    note-ptBR Leve Vagash (kite) até o Dun Morogh Mountaineer ao sul do rancho. Certifique-se de causar 51%+ do dano nele
    note-enUS Remember to get The Tundrid Hills explore xp and pull the Snow Leopard to the Dun Morogh Mountaineer if convenient
    note-ptBR Lembre-se de pegar o XP de exploração de The Tundrid Hills e, se for conveniente, puxar o Snow Leopard até o Dun Morogh Mountaineer
    objective 314/1
step
    goto 1426 @-1304.61,-5513.82
    note-enUS Talk to Rudra
    note-ptBR Fale com Rudra
    turnin 314 |reward 3
step
    path seq 1426 @-1465.16,-5548.96 @-1533.13,-5638.92
    goto 1426 @-1566.62,-5664.86
    note-enUS Remember to save [Chunks of Boar Meat] you get for leveling [Cooking] to 50 later
    note-ptBR Lembre-se de guardar os [Chunks of Boar Meat] que conseguir para subir [Cooking] até 50 mais tarde
    note-enUS Kite the Ice Claw Bear to the Ironforge Mountaineer (make sure to deal 51%+ damage to get credit)
    note-ptBR Leve o Ice Claw Bear (kite) até o Ironforge Mountaineer (cause 51%+ do dano para receber o crédito)
    note-enUS Be careful as they cast [Ice Claw] (Melee Instant: Deals an additional 4 melee damage)
    note-ptBR Cuidado, eles lançam [Ice Claw] (Instantâneo corpo a corpo: causa 4 de dano corpo a corpo adicional)
    note-enUS Talk to Ghilm
    note-ptBR Fale com Ghilm
    train 2550
    note-enUS Train [Cooking]
    note-ptBR Treine [Cooking]
step
    path seq 1426 @-1568.09,-5665.19
    goto 1426 @-1573.02,-5671.1
    note-enUS Talk to Kazan
    note-ptBR Fale com Kazan
    note-enUS Buy 15 [Ice Cold Milk] from him
    note-ptBR Compre 15 [Ice Cold Milk] dele
    collect 1179 15 |quest 432 |q 432/1
step
    path seq 1426 @-1568.09,-5665.19
    goto 1426 @-1573.02,-5671.1
    note-enUS Talk to Kazan
    note-ptBR Fale com Kazan
    note-enUS Buy 10 [Ice Cold Milk] from him
    note-ptBR Compre 10 [Ice Cold Milk] dele
    collect 1179 10 |quest 432 |q 432/1
step
    path seq 1426 @-1568.09,-5665.19
    goto 1426 @-1573.02,-5671.1
    note-enUS Talk to Kazan
    note-ptBR Fale com Kazan
    note-enUS Buy 5 [Ice Cold Milk] from him
    note-ptBR Compre 5 [Ice Cold Milk] dele
    collect 1179 5 |quest 432 |q 432/1
step
    path seq 1426 @-1579.91,-5714.77
    goto 1426 @-1600.3,-5726.59
    note-enUS Talk to Mehr and Stonebrow
    note-ptBR Fale com Mehr e Stonebrow
    accept 433
    accept 432
step
    path seq 1426 @-1681.86,-5723.3 @-1693.68,-5660.26 @-1686.29,-5622.83 @-1740.96,-5534.51 @-1771,-5568
    goto 1426 @-1774.45,-5602.8
    note-enUS Kill Rockjaw Skullthumpers
    note-ptBR Mate Rockjaw Skullthumpers
    note-enUS Don't go out of your way to kill them
    note-ptBR Não saia do caminho para matá-los
    objective 432/1 |opt
    note-enUS Enter the cave
    note-ptBR Entre na caverna
    note-enUS Kill Rockjaw Bonesnappers inside the cave
    note-ptBR Mate Rockjaw Bonesnappers dentro da caverna
    note-enUS Be careful as they cast [Knockdown] (Melee Instant: Stuns for 2 seconds)
    note-ptBR Cuidado, eles lançam [Knockdown] (Instantâneo corpo a corpo: atordoa por 2 segundos)
    objective 433/1
step
    path closest 1426 @-1681.86,-5723.3 @-1641.97,-5758.11 @-1673.49,-5801.45 @-1629.66,-5826.4 @-1564.65,-5832.97 @-1604.05,-5765.33 @-1641.97,-5758.11
    note-enUS Kill Rockjaw Skullthumpers
    note-ptBR Mate Rockjaw Skullthumpers
    objective 432/1
step
    ifnotturnedin 419
    goto 1426 @-1589.76,-5714.44
    note-enUS Talk to Frast
    note-ptBR Fale com Frast
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
step
    path seq 1426 @-1600.3,-5726.59
    goto 1426 @-1579.91,-5714.77
    note-enUS Talk to Stonebrow and Mehr
    note-ptBR Fale com Stonebrow e Mehr
    turnin 432
    turnin 433
step
    goto 1426 @-1612.42,-5698.02
    note-enUS Talk to Dank
    note-ptBR Fale com Dank
    train 2575
    note-enUS Train [Mining]
    note-ptBR Treine [Mining]
step
    path seq 1426 @-1662.65,-5692.11 @-1671.03,-5674.71 @-1693.19,-5541.73 @-1788.24,-5511.85 @-1995.58,-5480.01 @-2198.49,-5277.75 @-2286.16,-5200.59
    goto 1426 @-2329.5,-5163.82
    note-enUS Take the shortcut up behind Dank
    note-ptBR Pegue o atalho subindo atrás de Dank
    note-enUS Kite the nearby Rockjaw Ambushers to the Ironforge Mountaineers that can patrol on the road (make sure to deal 51%+ damage to get credit)
    note-ptBR Atraia os Rockjaw Ambushers próximos até os Ironforge Mountaineers que patrulham a estrada (cause 51%+ do dano para receber crédito)
    note-enUS Kite a Scarred Crag Boar through the tunnel
    note-ptBR Leve um Scarred Crag Boar (kite) pelo túnel
    note-enUS Be careful as they cast [Charge] (Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)
    note-ptBR Cuidado, eles lançam [Charge] (Instantâneo em si: aumenta a velocidade por 3 segundos, causando 40-100 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)
    note-enUS Talk to Hammerfoot
    note-ptBR Fale com Hammerfoot
    accept 419
step
    path seq 1426 @-2205.39,-5092.57
    goto 1426 @-2121.66,-5064.66
    note-enUS Click the Dwarven Corpse on the ground
    note-ptBR Clique no Dwarven Corpse no chão
    note-enUS MAKE SURE You have a free inventory slot. Mangeclaw will not come down if you do not accept the next quest
    note-ptBR CERTIFIQUE-SE de ter um espaço livre no inventário. Mangeclaw não descerá se você não aceitar a próxima missão
    note-enUS REMEMBER You're kiting Mangeclaw back to Hammerfoot
    note-ptBR LEMBRE-SE: você vai kitar Mangeclaw de volta até Hammerfoot
    turnin 419
    accept 417
step
    path seq 1426 @-2059.61,-5118.18
    goto 1426 @-2329.5,-5163.82
    note-enUS Kill Mangeclaw. Loot him for the Mangy Claw
    note-ptBR Mate Mangeclaw. Saqueie-o para obter a Mangy Claw
    note-enUS Kite him all the way over to Hammerfoot (make sure to deal 51%+ damage to get credit)
    note-ptBR Leve-o (kite) até Hammerfoot (cause 51%+ do dano para receber o crédito)
    objective 417/1
step
    goto 1426 @-2329.6,-5163.76
    note-enUS Talk to Hammerfoot
    note-ptBR Fale com Hammerfoot
    turnin 417 |reward 1
step
    path seq 1426 @-2286.16,-5200.59 @-2198.49,-5277.75 @-2118.71,-5516.78 @-2192.09,-5510.87 @-2216.72,-5519.08 @-2314.72,-5491.83
    goto 1426 @-2347.72,-5483.62 20
    goto 1432 @-2518.11,-5625.83
    note-enUS Run back through the tunnel
    note-ptBR Volte correndo pelo túnel
    note-enUS Kite a Scarred Crag Boar en route
    note-ptBR Leve um Scarred Crag Boar (kite) pelo caminho
    note-enUS Do the Mountain Skip. Remember to drop down carefully
    note-ptBR Faça o Mountain Skip. Lembre-se de descer com cuidado
    note-enUS Kite a Scarred Crag Boar through the tunnel
    note-ptBR Leve um Scarred Crag Boar (kite) pelo túnel
    note-enUS Be careful as they cast [Charge] (Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)
    note-ptBR Cuidado, eles lançam [Charge] (Instantâneo em si: aumenta a velocidade por 3 segundos, causando 40-100 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)
    zone 1432
    note-enUS Travel through the tunnel to Loch Modan
    note-ptBR Atravesse o túnel até Loch Modan
step
    goto 1432 @-2602.54,-5832.73
    note-enUS Try to kite a nearby Elder Black Bear or Forest Lurker into the Bunker with you (remember to deal 51%+ damage to get credit)
    note-ptBR Tente kitar um Elder Black Bear ou Forest Lurker próximo para dentro do bunker com você (lembre-se de causar 51%+ do dano para receber o crédito)
    note-enUS Loot the Elder Black Bears for their [Bear Meat]
    note-ptBR Saqueie os Elder Black Bears para obter [Bear Meat]
    note-enUS Loot the Forest Lurkers for their [Spider Ichor]
    note-ptBR Saqueie os Forest Lurkers para obter [Spider Ichor]
    note-enUS Cobbleflint, Gravelgaw, and Wallbang won't assist you
    note-ptBR Cobbleflint, Gravelgaw e Wallbang não vão ajudar você
    collect 3173 3 |quest 418 |q 418/1 |opt
    collect 3174 3 |quest 418 |q 418/1 |opt
    note-enUS Talk to Cobbleflint
    note-ptBR Fale com Cobbleflint
    accept 224
step
    path seq 1432 @-2635.61,-5879.14 @-2645.27,-5874.91 @-2631.48,-5847.5
    goto 1432 @-2634.59,-5842.81
    note-enUS Enter the Bunker. Go to the top floor
    note-ptBR Entre no Bunker. Vá para o último andar
    note-enUS Talk to Rugelfuss
    note-ptBR Fale com Rugelfuss
    accept 267
step
    path seq 1432 @-2902.07,-5398.28 @-2945.1,-5360.2 @-3015.71,-5335.73 @-3025.09,-5318.44
    goto 1432 @-3017.64,-5274.66
    note-enUS Travel to Thelsamar
    note-ptBR Vá até Thelsamar
    note-enUS Talk to Kadrell
    note-ptBR Fale com Kadrell
    note-enUS Kadrell patrols along the main Thelsamar road
    note-ptBR Kadrell patrulha a estrada principal de Thelsamar
    accept 416
    accept 1339
step
    ifonquest 416
    goto 1432 @-2929.93,-5424.95
    note-enUS Talk to Thorgrum
    note-ptBR Fale com Thorgrum
    fp |opt
    note-enUS Get the Thelsamar flight path
    note-ptBR Pegue o ponto de voo de Thelsamar
    fly 1455 |opt
    note-enUS Fly to Ironforge
    note-ptBR Voe para Ironforge
    zone 1455
    note-enUS Travel to Ironforge
    note-ptBR Vá até Ironforge
]==])

register([==[
#format 1
#id forever.n.1-10-adv-dun-morogh-gnome-mage-aoe
#name 1-10 ADV Dun Morogh Gnome Mage AoE
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 2
#flavor forever
#license CC-BY-NC-SA-4.0
#only Gnome Mage
#levels 1-10
#name-ptBR 1-10 Avançado Dun Morogh Mago AoE Gnomo
#group Mage AoE - Advanced (Alliance)
#group-ptBR Mago AoE - Avançado (Aliança)
#recommend Gnome Mage

step
    goto 1426 @328.18,-6214.85
    note-enUS You have selected the Advanced guide. This is the fastest guide for the fastest class in the game (Alliance Mage). As such, there will be a lot of niche mechanics used as well as highly difficult AoE pulls. Stay persistent while you learn! Good Luck!
    note-ptBR Você selecionou o guia Avançado. É o guia mais rápido para a classe mais rápida do jogo (Mago da Aliança). Por isso, haverá muitas mecânicas específicas e pulls de AoE bem difíceis. Persista enquanto aprende! Boa sorte!
    note-enUS Delete the [Hearthstone] from your bags, as it's no longer needed
    note-ptBR Apague a [Hearthstone] das suas bolsas, pois não é mais necessária
    note-enUS Talk to Sten Stoutarm
    note-ptBR Fale com Sten Stoutarm
    accept 179
step
    path seq 1426 29.53,73.29 28.12,75.09 28.56,72.49 29.53,73.29 29.05,74.61 28.56,75.78 28.12,75.09 27.56,74.33 27.79,73.12
    goto 1426 28.56,72.49 60
    note-enUS Kill Ragged Young Wolves. Loot them for their Tough Wolf Meat
    note-ptBR Mate Ragged Young Wolves. Saqueie-os para obter Tough Wolf Meat
    objective 179/1
step
    goto 1426 @320.3,-6226.74
    note-enUS Talk to Adlin Pridedrift
    note-ptBR Fale com Adlin Pridedrift
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
    note-enUS Buy 15 [Refreshing Spring Water] from him
    note-ptBR Compre 15 [Refreshing Spring Water] dele
    note-enUS Grind extra Ragged Young Wolves if you don't have enough money
    note-ptBR Faça grind de Ragged Young Wolves extras se não tiver dinheiro suficiente
    collect 159 15
step
    path seq 1426 @328.18,-6214.85
    goto 1426 @338.87,-6216.46
    note-enUS Talk to Sten Stoutarm and Balir Frosthammer
    note-ptBR Fale com Sten Stoutarm e Balir Frosthammer
    turnin 179 |reward 3
    accept 233
    accept 3114
    accept 170
step
    path seq 1426 27.1,72.55 26.62,73.55 25.72,72.26 24.88,72.33 24.1,73.75 24.92,74.7 21.81,72.58 19.58,72.09 20.63,70.42
    goto 1426 @688.98,-6222.47
    note-enUS Kill Rockjaw Troggs and Burly Rockjaw Troggs
    note-ptBR Mate Rockjaw Troggs e Burly Rockjaw Troggs
    objective 170/1 |opt
    objective 170/2 |opt
    note-enUS Talk to Talin Keeneye
    note-ptBR Fale com Talin Keeneye
    turnin 233
    accept 183
    accept 234
step
    path closest 1426 22.28,72.55 20.92,70.39 22.66,69.33 24.36,72.59 22.28,72.55 21.21,72.27 20.88,71.47 20.92,70.39 21.33,69.26 22.04,69.23 22.66,69.33 24.32,68.03 24.75,69.26 24.88,71.19 24.36,72.59
    note-enUS Kill Small Crag Boars
    note-ptBR Mate Small Crag Boars
    objective 183/1
step
    goto 1426 @688.98,-6222.47
    note-enUS Talk to Talin Keeneye
    note-ptBR Fale com Talin Keeneye
    turnin 183
step
    goto 1426 25.08,75.71
    note-enUS Talk to Grelin Whitebeard
    note-ptBR Fale com Grelin Whitebeard
    turnin 234
    accept 182
step
    ifonquest 182
    goto 1426 @485.63,-6494.56 30
    note-enUS Kill Frostmane Troll Whelps
    note-ptBR Mate Frostmane Troll Whelps
    objective 182/1 |opt
    note-enUS Enter the cave
    note-ptBR Entre na caverna
step
    path seq 1426 @457.56,-6531.66 @408.8,-6498.83 @357.09,-6473.87 @408.8,-6498.83 @457.56,-6531.66 @408.8,-6498.83 @357.09,-6473.87 @408.8,-6498.83 @457.56,-6531.66 @408.8,-6498.83 @357.09,-6473.87
    goto 1426 @408.8,-6498.83
    note-enUS Kill Frostmane Troll Whelps inside the cave
    note-ptBR Mate Frostmane Troll Whelps dentro da caverna
    note-enUS Clear a path to just before the Frozen Lake room
    note-ptBR Abra caminho até pouco antes da sala Frozen Lake
    objective 182/1
step
    path seq 1426 @408.8,-6498.83 @457.56,-6531.66 @532.42,-6448.26 @466.42,-6460.41 @524.05,-6516.56
    goto 1426 @532.42,-6448.26
    note-enUS Kill Frostmane Troll Whelps en route back to Grelin Whitebeard
    note-ptBR Mate Frostmane Troll Whelps no caminho de volta até Grelin Whitebeard
    complete 182
step
    goto 1426 @567.09,-6362.99
    note-enUS Talk to Grelin Whitebeard
    note-ptBR Fale com Grelin Whitebeard
    note-enUS Make sure you have 3 inventory slots for these turnins/accepts
    note-ptBR Tenha 3 espaços no inventário para estas entregas/aceites
    turnin 182 |reward 4
    accept 218
step
    ifonquest 218
    path seq 1426 @485.63,-6494.56 @357.09,-6473.87
    goto 1426 @340.84,-6493.24 10
    note-enUS Enter the Cave. Run through the path you cleared (without fighting if possible) toward the Frozen Lake inside
    note-ptBR Entre na caverna. Corra pelo caminho que você limpou (sem lutar, se possível) em direção ao Frozen Lake lá dentro
step
    goto 1426 @300.94,-6509
    note-enUS Kill the Frostmane Troll Whelp in front of you
    note-ptBR Mate o Frostmane Troll Whelp à sua frente
    note-enUS Kill Grik'nir the Cold. Loot him for Grelin Whitebeard's Journal
    note-ptBR Mate Grik'nir the Cold. Saqueie-o para obter o Grelin Whitebeard's Journal
    note-enUS Be careful as he casts [Frost Shock] (Range Instant: Deals 10 Frost damage and slows movespeed by 50% for 8 seconds)
    note-ptBR Cuidado, ele lança [Frost Shock] (Instantâneo à distância: causa 10 de dano de Gelo e reduz a velocidade em 50% por 8 segundos)
    objective 218/1
step
    path seq 1426 @567.09,-6362.99
    goto 1426 @571.82,-6371.1
    note-enUS Talk to Grelin Whitebeard and Nori Pridedrift
    note-ptBR Fale com Grelin Whitebeard e Nori Pridedrift
    turnin 218
    accept 282
    accept 3364
step
    ifonquest 218 3364
    path seq 1426 @384.18,-6143.9 @392.06,-6123.87
    goto 1426 @390.58,-6101.21
    note-enUS Enter Anvilmar
    note-ptBR Entre em Anvilmar
    note-enUS Talk to Rybrad Coldbank
    note-ptBR Fale com Rybrad Coldbank
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
step
    ifnotturnedin 420
    path seq 1426 @385.16,-6056.23
    goto 1426 @388.17,-6056.1
    note-enUS Talk to Durnan Furcutter and Marryk Nurribit
    note-ptBR Fale com Durnan Furcutter e Marryk Nurribit
    turnin 3364
    accept 3365
    turnin 3114
    trainer
    note-enUS Train your class spells (Arcane Intellect, Frostbolt)
    note-ptBR Treine suas magias de classe (Arcane Intellect, Frostbolt)
step
    ifcomplete 170
    goto 1426 @338.87,-6216.46
    note-enUS Talk to Balir Frosthammer
    note-ptBR Fale com Balir Frosthammer
    turnin 170 |reward 3
step
    ifonquest 170
    path seq 1426 27.86,76.48 30.73,76.83 29.28,75.5 27.86,76.48 28.95,77.15 29.72,77.61 30.73,76.83 32.81,75.22 31.14,74.05 30.08,74.48
    goto 1426 29.28,75.5 50
    note-enUS Kill ALL Rockjaw Troggs you see and Burly Rockjaw Troggs
    note-ptBR Mate TODOS os Rockjaw Troggs e Burly Rockjaw Troggs que vir
    objective 170/1
    objective 170/2
step
    goto 1426 @571.82,-6371.1
    note-enUS Talk to Nori Pridedrift
    note-ptBR Fale com Nori Pridedrift
    turnin 3365
step
    ifcomplete 170
    goto 1426 @338.87,-6216.46
    note-enUS Talk to Balir Frosthammer
    note-ptBR Fale com Balir Frosthammer
    turnin 170 |reward 3
step
    path seq 1426 @153,-6235.86
    goto 1426 @134.97,-6248.96
    note-enUS Talk to Mountaineer Thalos and Hands Springsprocket
    note-ptBR Fale com Mountaineer Thalos e Hands Springsprocket
    turnin 282
    accept 420
    accept 2160
step
    ifonquest 2160
    path seq 1426 @111.82,-6206.61
    goto 1426 @46.32,-6037.19 15
    abandon 170 |opt
    note-enUS Abandon A New Threat
    note-ptBR Abandone A New Threat
    note-enUS Travel through Coldridge Pass
    note-ptBR Passe por Coldridge Pass
step
    ifonquest 2160
    path seq 1426 @3.97,-5943.61 @-67.94,-5908.48
    goto 1426 @-162.5,-5822.79 45
    note-enUS Kill Crag Boars. Loot them for [Chunks of Boar Meat] and Crag Boar Ribs
    note-ptBR Mate Crag Boars. Saqueie-os para obter [Chunks of Boar Meat] e Crag Boar Ribs
    note-enUS Be careful as they cast [Charge] (Self Instant: Increases movespeed for 3 seconds, dealing 25-70 melee damage on hit. Only castable at range)
    note-ptBR Cuidado, eles lançam [Charge] (Instantâneo em si: aumenta a velocidade por 3 segundos, causando 25-70 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)
    collect 769 4 |quest 317 |q 317/1 |opt
    collect 2886 6 |quest 384 |q 384/1 |opt
    note-enUS Deal 51%+ damage to nearby Juvenile Snow Leopards and Young Black Bears, then pull them to the Ironforge Mountaineer to kill them more efficiently
    note-ptBR Cause 51%+ de dano em Juvenile Snow Leopards e Young Black Bears próximos e depois puxe-os até o Ironforge Mountaineer para matá-los com mais eficiência
step
    path seq 1426 @-337.34,-5703.93 @-371.81,-5605.43
    goto 1426 @-464.45,-5573.78 20
    note-enUS Travel toward Tharek
    note-ptBR Vá em direção a Tharek
    note-enUS Talk to Tharek
    note-ptBR Fale com Tharek
    accept 400
step
    goto 1426 @-632.15,-5466.54
    note-enUS Kite Young Black Bears en route (make sure to deal 51%+ damage to get credit)
    note-ptBR Leve Young Black Bears (kite) pelo caminho (cause 51%+ do dano para receber o crédito)
    note-enUS Talk to Bellowfiz
    note-ptBR Fale com Bellowfiz
    accept 317
step
    ifnotturnedin 312
    path seq 1426 @-641.8,-5473.18 @-682.58,-5488.87
    goto 1426 @-664.55,-5499.71
    note-enUS Talk to Stonegear, Beldin, and Loslor
    note-ptBR Fale com Stonegear, Beldin e Loslor
    note-enUS Kite Young Black Bears to the Ironforge Mountaineer if you pulled any (make sure to deal 51%+ damage to get credit)
    note-ptBR Leve os Young Black Bears (kite) até o Ironforge Mountaineer, se puxou algum (cause 51%+ do dano para receber o crédito)
    accept 313
    turnin 400
    accept 5541
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
step
    path seq 1426 @-679.62,-5573.58 @-678.64,-5618.89 @-620.03,-5550.6 @-432.39,-5502.33 @-349.65,-5586.06 @-423.03,-5662.56 @-422.05,-5775.18 @-679.62,-5573.58 @-678.64,-5618.89 @-620.03,-5550.6 @-432.39,-5502.33 @-349.65,-5586.06 @-423.03,-5662.56 @-422.05,-5775.18 @-679.62,-5573.58 @-678.64,-5618.89 @-620.03,-5550.6 @-432.39,-5502.33 @-349.65,-5586.06
    goto 1426 @-423.03,-5662.56
    note-enUS Kill Crag Boars and Large Crag Boars. Loot them for [Chunks of Boar Meat] and Crag Boar Ribs
    note-ptBR Mate Crag Boars e Large Crag Boars. Saqueie-os para obter [Chunks of Boar Meat] e Crag Boar Ribs
    note-enUS Be careful as they cast [Charge] (Self Instant: Increases movespeed for 3 seconds, dealing 25-70 melee damage on hit. Only castable at range)
    note-ptBR Cuidado, eles lançam [Charge] (Instantâneo em si: aumenta a velocidade por 3 segundos, causando 25-70 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)
    objective 317/1 |opt
    collect 2886 6 |quest 384 |q 384/1 |opt
    note-enUS Kill Young Black Bears and Ice Claw Bears. Loot them for their Thick Bear Fur
    note-ptBR Mate Young Black Bears e Ice Claw Bears. Saqueie-os para obter Thick Bear Fur
    note-enUS Kite Young Black Bears and Ice Claw Bears to nearby Ironforge Mountaineers (make sure to deal 51%+ damage to get credit)
    note-ptBR Leve Young Black Bears e Ice Claw Bears (kite) até os Ironforge Mountaineers próximos (cause 51%+ do dano para receber o crédito)
    note-enUS Be careful as they cast [Ice Claw] (Melee Instant: Deals an additional 4 melee damage)
    note-ptBR Cuidado, eles lançam [Ice Claw] (Instantâneo corpo a corpo: causa 4 de dano corpo a corpo adicional)
    objective 317/2
step
    path closest 1426 @-744.14,-5507.59 @-713.61,-5598.21 @-730.84,-5624.15 @-663.37,-5573.25 @-638.75,-5545.67 @-567.83,-5489.2 @-572.26,-5417.95 @-437.81,-5520.06 @-368.36,-5600.83 @-349.65,-5702.29 @-304.83,-5743.99 @-387.08,-5825.09 @-478.68,-5907.83 @-476.22,-5830.34 @-565.86,-5815.89 @-630.87,-5813.27 @-576.69,-5743.99 @-615.6,-5674.38 @-641.21,-5660.59 @-730.84,-5624.15
    note-enUS Kill Crag Boars and Large Crag Boars. Loot them for [Chunks of Boar Meat] and Crag Boar Ribs
    note-ptBR Mate Crag Boars e Large Crag Boars. Saqueie-os para obter [Chunks of Boar Meat] e Crag Boar Ribs
    note-enUS Be careful as they cast [Charge] (Self Instant: Increases movespeed for 3 seconds, dealing 25-70 melee damage on hit. Only castable at range)
    note-ptBR Cuidado, eles lançam [Charge] (Instantâneo em si: aumenta a velocidade por 3 segundos, causando 25-70 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)
    objective 317/1
    collect 2886 6 |quest 384 |q 384/1
step
    goto 1426 @-632.15,-5466.54
    note-enUS Talk to Bellowfiz
    note-ptBR Fale com Bellowfiz
    turnin 317
    accept 318
step
    path closest 1426 @-744.14,-5507.59 @-713.61,-5598.21 @-730.84,-5624.15 @-663.37,-5573.25 @-638.75,-5545.67 @-567.83,-5489.2 @-572.26,-5417.95 @-437.81,-5520.06 @-368.36,-5600.83 @-349.65,-5702.29 @-304.83,-5743.99 @-387.08,-5825.09 @-478.68,-5907.83 @-476.22,-5830.34 @-565.86,-5815.89 @-630.87,-5813.27 @-576.69,-5743.99 @-615.6,-5674.38 @-641.21,-5660.59 @-730.84,-5624.15
    level 5
    note-enUS Grind to 2690+/2800xp
    note-ptBR Mate monstros até 2690+/2800xp
step
    goto 1426 @-504.29,-5596.24
    note-enUS Unequip your current [Staff]
    note-ptBR Desequipe seu [Staff] atual
    note-enUS Rebuff [Arcane Intellect]
    note-ptBR Renove o buff [Arcane Intellect]
    note-enUS Rebuff [Frost Armor]
    note-ptBR Renove o buff [Frost Armor]
    note-enUS Talk to Ragnar
    note-ptBR Fale com Ragnar
    accept 384
step
    path seq 1426 @-511.19,-5584.09 @-537.29,-5587.04
    goto 1426 @-523.35,-5590.82
    note-enUS Go inside
    note-ptBR Entre
    note-enUS Talk to Tannok
    note-ptBR Fale com Tannok
    turnin 2160 |reward 2
step
    path seq 1426 @-511.19,-5584.09 @-537.29,-5587.04
    goto 1426 @-523.35,-5590.82
    note-enUS Go inside
    note-ptBR Entre
    note-enUS Talk to Tannok
    note-ptBR Fale com Tannok
    turnin 2160 |reward 2
step
    ifnotturnedin 312
    goto 1426 @-537.29,-5587.04
    note-enUS Talk to Magis upstairs
    note-ptBR Fale com Magis no andar de cima
    trainer
    note-enUS Train your class spells (Fireball R2, Fire Blast)
    note-ptBR Treine suas magias de classe (Fireball R2, Fire Blast)
step
    goto 1426 @-531.38,-5601.49
    note-enUS Talk to Belm
    note-ptBR Fale com Belm
    home |opt
    note-enUS Set your Hearthstone to Thunderbrew Distillery
    note-ptBR Defina sua pedra de regresso em Thunderbrew Distillery
    note-enUS Talk to Belm
    note-ptBR Fale com Belm
    note-enUS Buy a [Rhapsody Malt] from him
    note-ptBR Compre um [Rhapsody Malt] dele
    objective 384/2
step
    ifcomplete 384
    goto 1426 @-504.29,-5596.24
    note-enUS Talk to Ragnar
    note-ptBR Fale com Ragnar
    turnin 384
step
    goto 1426 @-531.38,-5601.49
    note-enUS Talk to Belm
    note-ptBR Fale com Belm
    note-enUS Buy 20 [Ice Cold Milk] from him
    note-ptBR Compre 20 [Ice Cold Milk] dele
    collect 1179 20 |quest 312 |q 312/1
step
    goto 1426 @-531.38,-5601.49
    note-enUS Talk to Belm
    note-ptBR Fale com Belm
    note-enUS Buy 15 [Ice Cold Milk] from him
    note-ptBR Compre 15 [Ice Cold Milk] dele
    collect 1179 15 |quest 312 |q 312/1
step
    goto 1426 @-531.38,-5601.49
    note-enUS Talk to Belm
    note-ptBR Fale com Belm
    note-enUS Buy 10 [Ice Cold Milk] from him
    note-ptBR Compre 10 [Ice Cold Milk] dele
    collect 1179 10 |quest 312 |q 312/1
step
    goto 1426 @-531.38,-5601.49
    note-enUS Talk to Belm
    note-ptBR Fale com Belm
    note-enUS Buy 5 [Ice Cold Milk] from him
    note-ptBR Compre 5 [Ice Cold Milk] dele
    collect 1179 5 |quest 312 |q 312/1
step
    goto 1426 @-531.38,-5601.49
    note-enUS Talk to Belm
    note-ptBR Fale com Belm
    note-enUS Buy 20 [Refreshing Spring Water] from him
    note-ptBR Compre 20 [Refreshing Spring Water] dele
    collect 159 20 |quest 312 |q 312/1
step
    goto 1426 @-531.38,-5601.49
    note-enUS Talk to Belm
    note-ptBR Fale com Belm
    note-enUS Buy 15 [Refreshing Spring Water] from him
    note-ptBR Compre 15 [Refreshing Spring Water] dele
    collect 159 15 |quest 312 |q 312/1
step
    goto 1426 @-531.38,-5601.49
    note-enUS Talk to Belm
    note-ptBR Fale com Belm
    note-enUS Buy 10 [Refreshing Spring Water] from him
    note-ptBR Compre 10 [Refreshing Spring Water] dele
    collect 159 10 |quest 312 |q 312/1
step
    goto 1426 @-531.38,-5601.49
    note-enUS Talk to Belm
    note-ptBR Fale com Belm
    note-enUS Buy 5 [Refreshing Spring Water] from him
    note-ptBR Compre 5 [Refreshing Spring Water] dele
    collect 159 5 |quest 312 |q 312/1
step
    goto 1426 @-501.34,-5640.89
    note-enUS Talk to Golorn
    note-ptBR Fale com Golorn
    note-enUS Buy a [Skinning Knife] from him
    note-ptBR Compre uma [Skinning Knife] dele
    collect 7005 1 |quest 312 |q 312/1
step
    goto 1426 @-499.17,-5644.37
    note-enUS Talk to Senir
    note-ptBR Fale com Senir
    turnin 420
step
    path closest 1426 @-294.49,-5676.35 @-261,-5666.83 @-272.82,-5606.74 @-289.07,-5583.1 @-261.98,-5565.7 @-289.07,-5583.1 @-272.82,-5606.74 @-294.49,-5676.35
    note-enUS Equip the [Skinning Knife]
    note-ptBR Equipe a [Skinning Knife]
    use 7005 |opt
    note-enUS Kill Young Wendigos and Wendigos. Loot them for their Wendigo Manes
    note-ptBR Mate Young Wendigos e Wendigos. Saqueie-os para obter Wendigo Manes
    note-enUS Be careful as they cast [Frost Breath] (Melee Cast: Deals 6-10 Frost damage) and have increased [Frost Resistance]
    note-ptBR Cuidado, eles lançam [Frost Breath] (Lançamento corpo a corpo: causa 6-10 de dano de Gelo) e têm [Frost Resistance] aumentada
    objective 313/1
step
    goto 1426 @-371.32,-5746.94
    note-enUS Open the Ammo Crate on the ground. Loot it for Rumbleshot's Ammo
    note-ptBR Abra o Ammo Crate no chão. Saqueie-o para obter a Rumbleshot's Ammo
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    objective 5541/1
step
    ifnotturnedin 312
    path seq 1426 @-197.47,-5920.63 @-201.51,-6015.52 @-197.47,-5920.63 @-201.51,-6015.52 @-197.47,-5920.63
    goto 1426 @-201.51,-6015.52 20
    note-enUS Kill Crag Boars and Juvenile Snow Leopards en route
    note-ptBR Mate Crag Boars e Juvenile Snow Leopards pelo caminho
    note-enUS Loot the Crag Boars for their Crag Boar Ribs
    note-ptBR Saqueie os Crag Boars para obter Crag Boar Ribs
    note-enUS Be careful as Crag Boars cast [Charge] (Self Instant: Increases movespeed for 3 seconds, dealing 25-70 melee damage on hit. Only castable at range)
    note-ptBR Cuidado, Crag Boars lançam [Charge] (Instantâneo em si: aumenta a velocidade por 3 segundos, causando 25-70 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)
    objective 384/1 |opt
    note-enUS Travel toward Hegnar
    note-ptBR Vá em direção a Hegnar
    note-enUS Kill Crag Boars and Juvenile Snow Leopards en route
    note-ptBR Mate Crag Boars e Juvenile Snow Leopards pelo caminho
    note-enUS Be careful as Crag Boars cast [Charge] (Self Instant: Increases movespeed for 3 seconds, dealing 25-70 melee damage on hit. Only castable at range)
    note-ptBR Cuidado, Crag Boars lançam [Charge] (Instantâneo em si: aumenta a velocidade por 3 segundos, causando 25-70 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)
    note-enUS Travel toward Hegnar
    note-ptBR Vá em direção a Hegnar
    note-enUS Travel toward Hegnar
    note-ptBR Vá em direção a Hegnar
    note-enUS Talk to Hegnar
    note-ptBR Fale com Hegnar
    turnin 5541
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
step
    path seq 1426 @-68.43,-5909.47 @72.92,-5741.36 @47.8,-5674.05 @10.37,-5600.51 @-68.43,-5909.47 @72.92,-5741.36 @47.8,-5674.05 @10.37,-5600.51
    goto 1426 @99.51,-5573.25
    note-enUS Deal 51%+ damage to nearby Juvenile Snow Leopards and Young Black Bears, then pull them to the Ironforge Mountaineer to kill them more efficiently
    note-ptBR Cause 51%+ de dano em Juvenile Snow Leopards e Young Black Bears próximos e depois puxe-os até o Ironforge Mountaineer para matá-los com mais eficiência
    note-enUS Kill Large Crag Boars and Crag Boars en route. Loot them for their Crag Boar Ribs
    note-ptBR Mate Large Crag Boars e Crag Boars pelo caminho. Saqueie-os para obter Crag Boar Ribs
    note-enUS Be careful as Large Crag Boars and Crag Boars cast [Charge] (Self Instant: Increases movespeed for 3 seconds, dealing 25-70 melee damage on hit. Only castable at range)
    note-ptBR Cuidado, Large Crag Boars e Crag Boars lançam [Charge] (Instantâneo em si: aumenta a velocidade por 3 segundos, causando 25-70 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)
    objective 384/1 |opt
    level 7 |opt
    note-enUS Grind to Level 7 en route to Tundra before talking to him
    note-ptBR Mate monstros até o nível 7 a caminho de Tundra, antes de falar com ele
    note-enUS Deal 51%+ damage to nearby Juvenile Snow Leopards and Young Black Bears, then pull them to the Ironforge Mountaineer to kill them more efficiently
    note-ptBR Cause 51%+ de dano em Juvenile Snow Leopards e Young Black Bears próximos e depois puxe-os até o Ironforge Mountaineer para matá-los com mais eficiência
    note-enUS Kill Large Crag Boars and Crag Boars en route
    note-ptBR Mate Large Crag Boars e Crag Boars pelo caminho
    note-enUS Be careful as Large Crag Boars and Crag Boars cast [Charge] (Self Instant: Increases movespeed for 3 seconds, dealing 25-70 melee damage on hit. Only castable at range)
    note-ptBR Cuidado, Large Crag Boars e Crag Boars lançam [Charge] (Instantâneo em si: aumenta a velocidade por 3 segundos, causando 25-70 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)
    level 7 |opt
    note-enUS Grind to Level 7 en route to Tundra before talking to him
    note-ptBR Mate monstros até o nível 7 a caminho de Tundra, antes de falar com ele
    note-enUS Talk to Tundra
    note-ptBR Fale com Tundra
    accept 312
step
    path seq 1426 @315.23,-5378.55
    goto 1426 @315.42,-5372.02
    note-enUS Kite an Ice Claw Bear toward Rejold
    note-ptBR Leve um Ice Claw Bear (kite) até Rejold
    note-enUS Try to accept the quest before the Ice Claw Bear dies to get quest credit
    note-ptBR Tente aceitar a missão antes que o Ice Claw Bear morra para receber o crédito da missão
    note-enUS Be careful as they cast [Ice Claw] (Melee Instant: Deals an additional 4 melee damage)
    note-ptBR Cuidado, eles lançam [Ice Claw] (Instantâneo corpo a corpo: causa 4 de dano corpo a corpo adicional)
    note-enUS Make sure to deal 51%+ damage to get credit
    note-ptBR Certifique-se de causar 51%+ do dano para receber o crédito
    note-enUS Talk to Rejold and Marleth
    note-ptBR Fale com Rejold e Marleth
    turnin 318
    accept 319
    accept 315
    accept 310
step
    ifonquest 319
    goto 1426 @302.42,-5387.74
    note-enUS Talk to Keeg
    note-ptBR Fale com Keeg
    note-enUS Buy up to 10 more [Ice Cold Milk] from him
    note-ptBR Compre até mais 10 [Ice Cold Milk] dele
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
    collect 1179 10 |quest 312 |q 312/1
step
    ifonquest 319
    goto 1426 @302.42,-5387.74
    note-enUS Talk to Keeg
    note-ptBR Fale com Keeg
    note-enUS Buy up to 5 more [Ice Cold Milk] from him
    note-ptBR Compre até mais 5 [Ice Cold Milk] dele
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
    collect 1179 5 |quest 312 |q 312/1
step
    path seq 1426 @151.72,-5436.67 @-12.78,-5370.34 @151.72,-5436.67 @-12.78,-5370.34
    goto 1426 @-499.17,-5644.37
    note-enUS Kill Ice Claw Bears, Elder Crag Boars, and Snow Leopards en route to the Cave. Loot the Elder Crag Boars for Crag Boar Ribs
    note-ptBR Mate Ice Claw Bears, Elder Crag Boars e Snow Leopards a caminho da caverna. Saqueie os Elder Crag Boars para obter Crag Boar Ribs
    note-enUS Focus on the Snow Leopards
    note-ptBR Concentre-se nos Snow Leopards
    note-enUS Be careful as Ice Claw Bears cast [Ice Claw] (Melee Instant: Deals an additional 4 melee damage), and Elder Crag Boars cast [Charge] (Self Instant: Increases movespeed for 3 seconds, dealing 25-70 melee damage on hit. Only castable at range)
    note-ptBR Cuidado, Ice Claw Bears lançam [Ice Claw] (Instantâneo corpo a corpo: +4 de dano corpo a corpo) e Elder Crag Boars lançam [Charge] (Instantâneo em si: aumenta a velocidade por 3 segundos, causando 25-70 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)
    objective 319/1 |opt
    objective 319/2 |opt
    objective 319/3 |opt
    objective 384/1 |opt
    note-enUS Kill Ice Claw Bears, Elder Crag Boars, and Snow Leopards en route to the Cave
    note-ptBR Mate Ice Claw Bears, Elder Crag Boars e Snow Leopards a caminho da caverna
    note-enUS Focus on the Snow Leopards
    note-ptBR Concentre-se nos Snow Leopards
    note-enUS Be careful as Ice Claw Bears cast [Ice Claw] (Melee Instant: Deals an additional 4 melee damage), and Elder Crag Boars cast [Charge] (Self Instant: Increases movespeed for 3 seconds, dealing 25-70 melee damage on hit. Only castable at range)
    note-ptBR Cuidado, Ice Claw Bears lançam [Ice Claw] (Instantâneo corpo a corpo: +4 de dano corpo a corpo) e Elder Crag Boars lançam [Charge] (Instantâneo em si: aumenta a velocidade por 3 segundos, causando 25-70 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)
    objective 319/1 |opt
    objective 319/2 |opt
    objective 319/3 |opt
    note-enUS Talk to Senir
    note-ptBR Fale com Senir
    accept 287
step
    ifnotturnedin 384
    path seq 1426 @-511.19,-5584.09 @-522.02,-5585.07
    goto 1426 @-531.38,-5601.49
    note-enUS Go inside
    note-ptBR Entre
    note-enUS Talk to Belm
    note-ptBR Fale com Belm
    note-enUS Buy [Rhapsody Malt] and [Thunder Ale] from him
    note-ptBR Compre [Rhapsody Malt] e [Thunder Ale] dele
    objective 384/2
    collect 2686 1 |quest 311 |q 311/1
step
    goto 1426 @-531.38,-5601.49
    note-enUS Talk to Belm
    note-ptBR Fale com Belm
    note-enUS Buy a [Thunder Ale] from him
    note-ptBR Compre um [Thunder Ale] dele
    collect 2686 1 |quest 311 |q 311/1
step
    path seq 1426 @-537.29,-5597.55 @-548.13,-5598.54 @-544.68,-5606.09
    goto 1426 @-548.13,-5607.4
    note-enUS Go Downstairs
    note-ptBR Desça as escadas
    note-enUS Talk to Jarven downstairs
    note-ptBR Fale com Jarven no andar de baixo
    turnin 308 |opt
    note-enUS Keep mousing over the Guarded Thunder Ale Barrel downstairs. Wait for the Guarded Thunder Ale Barrel to become Unguarded
    note-ptBR Continue passando o mouse sobre o Guarded Thunder Ale Barrel no andar de baixo. Espere até ele ficar Unguarded
    note-enUS Click the Unguarded Thunder Ale Barrel
    note-ptBR Clique no Unguarded Thunder Ale Barrel
    turnin 310
    accept 311
step
    goto 1426 @-531.38,-5601.49
    note-enUS Talk to Belm
    note-ptBR Fale com Belm
    note-enUS Buy up to 10 more [Ice Cold Milk] from him
    note-ptBR Compre até mais 10 [Ice Cold Milk] dele
    collect 1179 10 |quest 312 |q 312/1
step
    goto 1426 @-531.38,-5601.49
    note-enUS Talk to Belm
    note-ptBR Fale com Belm
    note-enUS Buy up to 5 more [Ice Cold Milk] from him
    note-ptBR Compre até mais 5 [Ice Cold Milk] dele
    collect 1179 5 |quest 312 |q 312/1
step
    ifonquest 287
    path seq 1426 @-522.02,-5585.07 @-511.19,-5584.09
    goto 1426 @-504.29,-5596.24 20
    note-enUS Exit the Inn
    note-ptBR Saia da estalagem
step
    ifcomplete 384
    goto 1426 @-504.29,-5596.24
    note-enUS Talk to Ragnar
    note-ptBR Fale com Ragnar
    turnin 384
step
    ifonquest 315
    path seq 1426 @-495.43,-5434.04 @-311.23,-5360.16
    goto 1426 @-282.18,-5363.45 45
    note-enUS Deal 51%+ damage to nearby Snow Tracker Wolves, Winter Wolves, and Young Black Bears. Pull them to the Ironforge Mountaineer to kill them more efficiently
    note-ptBR Cause 51%+ de dano em Snow Tracker Wolves, Winter Wolves e Young Black Bears próximos. Puxe-os até o Ironforge Mountaineer para matá-los com mais eficiência
    note-enUS Be careful as Snow Tracker Wolves have [Increased Aggro Range] (Aggro range is increased by about 8 yards)
    note-ptBR Cuidado, Snow Tracker Wolves têm [Increased Aggro Range] (o alcance de agressão aumenta em cerca de 8 metros)
    note-enUS Run up the ramp toward the Frostmane Seers
    note-ptBR Suba a rampa correndo em direção aos Frostmane Seers
step
    path seq 1426 @-269.86,-5370.34 @-271.83,-5342.43 @-250.16,-5306.32 @-230.46,-5333.9 @-240.81,-5354.91 @-221.11,-5349.99 @-224.06,-5372.31 @-184.66,-5283.66 @-151.66,-5186.15 @-164.96,-5114.9
    goto 1426 @-258.54,-5046.93
    note-enUS Kill the Frostmane Headhunter patrol
    note-ptBR Mate a patrulha de Frostmane Headhunter
    note-enUS Be careful, as he patrols between all the stationary Frostmane Seers
    note-ptBR Cuidado, ele patrulha entre todos os Frostmane Seers parados
    note-enUS Be careful as they cast [Shoot] (Ranged Cast: Deals 8-15 damage)
    note-ptBR Cuidado, eles lançam [Shoot] (Lançamento à distância: causa 8-15 de dano)
    objective 287/1 |opt
    note-enUS Kill Frostmane Seers. Loot them for their Shimmerweed
    note-ptBR Mate Frostmane Seers. Saqueie-os para obter Shimmerweed
    note-enUS Open the Shimmerweed Baskets on the ground. Loot them for their Shimmerweed
    note-ptBR Abra os Shimmerweed Baskets no chão. Saqueie-os para obter Shimmerweed
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    note-enUS Be careful as they cast [Lightning Bolt] (Ranged Cast: Deals 15-30 Nature damage)
    note-ptBR Cuidado, eles lançam [Lightning Bolt] (Lançamento à distância: causa 15-30 de dano de Natureza)
    objective 315/1
step
    ifonquest 312
    path seq 1426 @-190.08,-5427.8 @-55.63,-5580.48
    goto 1426 @-62.03,-5640.56 50
    note-enUS Kill Large Crag Boars and Elder Crag Boars. Loot them for their Crag Boar Ribs
    note-ptBR Mate Large Crag Boars e Elder Crag Boars. Saqueie-os para obter Crag Boar Ribs
    objective 384/1 |opt
    note-enUS Kill the two Elder Crag Boars en route to the cave (if they're up)
    note-ptBR Mate os dois Elder Crag Boars a caminho da caverna (se estiverem lá)
    note-enUS Be careful as they cast [Charge] (Self Instant: Increases movespeed for 3 seconds, dealing 25-85 melee damage on hit. Only castable at range)
    note-ptBR Cuidado, eles lançam [Charge] (Instantâneo em si: aumenta a velocidade por 3 segundos, causando 25-85 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)
    objective 319/2 |opt
    note-enUS Travel toward the Cave
    note-ptBR Vá em direção a Cave
step
    goto 1426 @-94.53,-5647.79
    note-enUS After looting it, remember to jump-turn his attacks to avoid the Daze and to jump on the tree log to temporarily evade him
    note-ptBR Depois de saquear, lembre-se de pular e virar para evitar o Atordoamento dos ataques dele e de pular no tronco para escapar dele temporariamente
    note-enUS If Old Icebeard is in the cave, kite him up the side of the cave, then all the way above it. Wait for him to get close, then jump back down then go toward the back of the cave
    note-ptBR Se Old Icebeard estiver na caverna, atraia-o pela lateral da caverna até o alto. Espere ele se aproximar, pule de volta para baixo e vá para o fundo da caverna
    note-enUS Open MacGrann's Meat Locker on the ground. Loot it for Macgrann's Dried Meats
    note-ptBR Abra o MacGrann's Meat Locker no chão. Saqueie-o para obter Macgrann's Dried Meats
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    objective 312/1
step
    goto 1426 @99.51,-5573.25
    note-enUS Talk to Tundra
    note-ptBR Fale com Tundra
    turnin 312 |reward 1
step
    ifnotturnedin 384
    path seq 1426 @220.67,-5509.56 @355.12,-5644.5 @378.27,-5520.39 @402.4,-5359.18 @381.22,-5247.87 @260.56,-5163.16 @220.67,-5509.56 @355.12,-5644.5 @378.27,-5520.39 @402.4,-5359.18 @381.22,-5247.87
    goto 1426 @260.56,-5163.16
    note-enUS Kill Ice Claw Bears, Elder Crag Boars, and Snow Leopards. Loot the Elder Crag Boars for Crag Boar Ribs
    note-ptBR Mate Ice Claw Bears, Elder Crag Boars e Snow Leopards. Saqueie os Elder Crag Boars para obter Crag Boar Ribs
    note-enUS Remember to kite an Ice Claw Bear or Snow Leopards back to the questgiver if possible
    note-ptBR Lembre-se de kitar um Ice Claw Bear ou Snow Leopards até quem deu a missão, se possível
    note-enUS Be careful as Ice Claw Bears cast [Ice Claw] (Melee Instant: Deals an additional 4 melee damage), and Elder Crag Boars cast [Charge] (Self Instant: Increases movespeed for 3 seconds, dealing 35-85 melee damage on hit. Only castable at range)
    note-ptBR Cuidado, Ice Claw Bears lançam [Ice Claw] (Instantâneo corpo a corpo: +4 de dano corpo a corpo) e Elder Crag Boars lançam [Charge] (Instantâneo em si: aumenta a velocidade por 3 segundos, causando 35-85 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)
    objective 319/1
    objective 319/2
    objective 319/3
    objective 384/1
step
    ifturnedin 384
    path seq 1426 @220.67,-5509.56 @355.12,-5644.5 @378.27,-5520.39 @402.4,-5359.18 @381.22,-5247.87 @260.56,-5163.16 @220.67,-5509.56 @355.12,-5644.5 @378.27,-5520.39 @402.4,-5359.18 @381.22,-5247.87
    goto 1426 @260.56,-5163.16
    note-enUS Kill Ice Claw Bears, Elder Crag Boars, and Snow Leopards
    note-ptBR Mate Ice Claw Bears, Elder Crag Boars e Snow Leopards
    note-enUS Remember to kite an Ice Claw Bear or Snow Leopards back to the questgiver if possible
    note-ptBR Lembre-se de kitar um Ice Claw Bear ou Snow Leopards até quem deu a missão, se possível
    note-enUS Be careful as Ice Claw Bears cast [Ice Claw] (Melee Instant: Deals an additional 4 melee damage), and Elder Crag Boars cast [Charge] (Self Instant: Increases movespeed for 3 seconds, dealing 35-85 melee damage on hit. Only castable at range)
    note-ptBR Cuidado, Ice Claw Bears lançam [Ice Claw] (Instantâneo corpo a corpo: +4 de dano corpo a corpo) e Elder Crag Boars lançam [Charge] (Instantâneo em si: aumenta a velocidade por 3 segundos, causando 35-85 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)
    objective 319/1
    objective 319/2
    objective 319/3
step
    path seq 1426 @315.28,-5378.39
    goto 1426 @315.42,-5372.02
    note-enUS Talk to Rejold and Marleth
    note-ptBR Fale com Rejold e Marleth
    turnin 315 |reward 1
    accept 413
    turnin 319
    accept 320
    turnin 311
step
    goto 1426 @302.42,-5387.74
    note-enUS Talk to Keeg
    note-ptBR Fale com Keeg
    note-enUS Buy up to 10 more [Ice Cold Milk] from him
    note-ptBR Compre até mais 10 [Ice Cold Milk] dele
    collect 1179 10 |quest 287 |q 287/1
step
    goto 1426 @302.42,-5387.74
    note-enUS Talk to Keeg
    note-ptBR Fale com Keeg
    note-enUS Buy up to 5 more [Ice Cold Milk] from him
    note-ptBR Compre até mais 5 [Ice Cold Milk] dele
    collect 1179 5 |quest 287 |q 287/1
step
    path seq 1426 @220.67,-5509.56 @355.12,-5644.5 @378.27,-5520.39 @402.4,-5359.18 @381.22,-5247.87 @260.56,-5163.16 @220.67,-5509.56 @355.12,-5644.5 @378.27,-5520.39 @402.4,-5359.18 @381.22,-5247.87
    goto 1426 @260.56,-5163.16
    note-enUS Kill Elder Crag Boars. Loot them for their Crag Boar Ribs
    note-ptBR Mate Elder Crag Boars. Saqueie-os para obter Crag Boar Ribs
    note-enUS Be careful as they cast [Charge] (Self Instant: Increases movespeed for 3 seconds, dealing 35-85 melee damage on hit. Only castable at range)
    note-ptBR Cuidado, eles lançam [Charge] (Instantâneo em si: aumenta a velocidade por 3 segundos, causando 35-85 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)
    objective 384/1
step
    path seq 1426 @564.92,-5503.65 @573.79,-5538.78 @605.8,-5545.02
    goto 1426 @654.07,-5563.4
    note-enUS Enter the cave from the north side
    note-ptBR Entre na caverna pelo lado norte
    note-enUS Kill Frostmane Headhunters inside the cave
    note-ptBR Mate Frostmane Headhunters dentro da caverna
    note-enUS Be careful as they cast [Shoot] (Ranged Cast: Deals 8-15 damage)
    note-ptBR Cuidado, eles lançam [Shoot] (Lançamento à distância: causa 8-15 de dano)
    note-enUS Be careful of the patrolling Frostmane Headhunter inside
    note-ptBR Cuidado com o Frostmane Headhunter que patrulha lá dentro
    objective 287/1
step
    path seq 1426 @668.84,-5585.73
    goto 1426 @674.26,-5587.37
    note-enUS Carefully WALK down onto the nook below (do NOT fall down). Walk carefully down the nook until you get credit
    note-ptBR ANDE com cuidado até a saliência abaixo (NÃO caia). Desça com cuidado pela saliência até receber o crédito
    note-enUS Be careful of the Frostmane Hideskinner below, as he may be able to attack you on the nook if he's close to it
    note-ptBR Cuidado com o Frostmane Hideskinner abaixo, ele pode conseguir atacar você na saliência se estiver perto dela
    note-enUS Get ready to cast [Hearthstone]
    note-ptBR Prepare-se para usar a [Hearthstone]
    objective 287/2
step
    goto 1426 @-531.38,-5601.49
    hearth |opt
    note-enUS Hearth to Kharanos
    note-ptBR Use a pedra de regresso para Kharanos
    note-enUS Talk to Belm
    note-ptBR Fale com Belm
    note-enUS Buy a [Rhapsody Malt] from him
    note-ptBR Compre um [Rhapsody Malt] dele
    objective 384/2
step
    ifnotturnedin 314
    goto 1426 @-537.29,-5587.04
    note-enUS Talk to Magis upstairs
    note-ptBR Fale com Magis no andar de cima
    trainer
    note-enUS Train your class spells (Frostbolt r2, Polymorph)
    note-ptBR Treine suas magias de classe (Frostbolt r2, Polymorph)
step
    goto 1426 @-504.29,-5596.24
    note-enUS Remember to save [Chunks of Boar Meat] you get for leveling [Cooking] to 50 later
    note-ptBR Lembre-se de guardar os [Chunks of Boar Meat] que conseguir para subir [Cooking] até 50 mais tarde
    note-enUS Talk to Ragnar
    note-ptBR Fale com Ragnar
    turnin 384
step
    goto 1426 @-499.17,-5644.37
    note-enUS Talk to Senir
    note-ptBR Fale com Senir
    turnin 287 |reward 2
    accept 291
step
    path seq 1426 @-632.15,-5466.54
    goto 1426 @-641.8,-5473.18
    note-enUS Rebuff [Arcane Intellect]
    note-ptBR Renove o buff [Arcane Intellect]
    note-enUS Rebuff [Frost Armor]
    note-ptBR Renove o buff [Frost Armor]
    note-enUS Talk to Bellowfiz and Stonegear
    note-ptBR Fale com Bellowfiz e Stonegear
    turnin 320 |reward 2
    turnin 313
step
    path seq 1426 @-1145.04,-5504.3 @-1219.9,-5422.55
    goto 1426 @-1304.61,-5513.82
    note-enUS Deal 51%+ damage to nearby Winter Wolves, then pull them to the Ironforge Mountaineers that CAN be patrolling on the road to kill them more efficiently
    note-ptBR Cause 51%+ de dano em Winter Wolves próximos e depois puxe-os até os Ironforge Mountaineers que PODEM estar patrulhando a estrada para matá-los com mais eficiência
    note-enUS If you don't see the Ironforge Mountaineers, skip this step
    note-ptBR Se não vir os Ironforge Mountaineers, pule esta etapa
    note-enUS Go up the dirt path
    note-ptBR Suba pela trilha de terra
    note-enUS Kite Vagash down to Rudra
    note-ptBR Leve Vagash (kite) até Rudra
    note-enUS Talk to Rudra
    note-ptBR Fale com Rudra
    accept 314
step
    path seq 1426 @-1279.49,-5392.01 @-1289.83,-5669.78
    goto 1426 @-1291.8,-5706.89
    note-enUS Kill Vagash. Loot him for the Fang of Vagash
    note-ptBR Mate Vagash. Saqueie-o para obter a Fang of Vagash
    note-enUS Kite Vagash down to the Dun Morogh Mountaineer south of the ranch. Make sure you do 51%+ damage to him
    note-ptBR Leve Vagash (kite) até o Dun Morogh Mountaineer ao sul do rancho. Certifique-se de causar 51%+ do dano nele
    note-enUS Remember to get The Tundrid Hills explore xp and pull the Snow Leopard to the Dun Morogh Mountaineer if convenient
    note-ptBR Lembre-se de pegar o XP de exploração de The Tundrid Hills e, se for conveniente, puxar o Snow Leopard até o Dun Morogh Mountaineer
    objective 314/1
step
    goto 1426 @-1304.61,-5513.82
    note-enUS Talk to Rudra
    note-ptBR Fale com Rudra
    turnin 314 |reward 3
step
    path seq 1426 @-1465.16,-5548.96 @-1533.13,-5638.92
    goto 1426 @-1566.62,-5664.86
    note-enUS Kite the Ice Claw Bear to the Ironforge Mountaineer (make sure to deal 51%+ damage to get credit)
    note-ptBR Leve o Ice Claw Bear (kite) até o Ironforge Mountaineer (cause 51%+ do dano para receber o crédito)
    note-enUS Be careful as they cast [Ice Claw] (Melee Instant: Deals an additional 4 melee damage)
    note-ptBR Cuidado, eles lançam [Ice Claw] (Instantâneo corpo a corpo: causa 4 de dano corpo a corpo adicional)
    note-enUS Talk to Ghilm
    note-ptBR Fale com Ghilm
    train 2550
    note-enUS Train [Cooking]
    note-ptBR Treine [Cooking]
step
    path seq 1426 @-1568.09,-5665.19
    goto 1426 @-1573.02,-5671.1
    note-enUS Talk to Kazan
    note-ptBR Fale com Kazan
    note-enUS Buy 15 [Ice Cold Milk] from him
    note-ptBR Compre 15 [Ice Cold Milk] dele
    collect 1179 15 |quest 432 |q 432/1
step
    path seq 1426 @-1568.09,-5665.19
    goto 1426 @-1573.02,-5671.1
    note-enUS Talk to Kazan
    note-ptBR Fale com Kazan
    note-enUS Buy 10 [Ice Cold Milk] from him
    note-ptBR Compre 10 [Ice Cold Milk] dele
    collect 1179 10 |quest 432 |q 432/1
step
    path seq 1426 @-1568.09,-5665.19
    goto 1426 @-1573.02,-5671.1
    note-enUS Talk to Kazan
    note-ptBR Fale com Kazan
    note-enUS Buy 5 [Ice Cold Milk] from him
    note-ptBR Compre 5 [Ice Cold Milk] dele
    collect 1179 5 |quest 432 |q 432/1
step
    path seq 1426 @-1579.91,-5714.77
    goto 1426 @-1600.3,-5726.59
    note-enUS Talk to Mehr and Stonebrow
    note-ptBR Fale com Mehr e Stonebrow
    accept 433
    accept 432
step
    path seq 1426 @-1681.86,-5723.3 @-1693.68,-5660.26 @-1686.29,-5622.83 @-1740.96,-5534.51 @-1771,-5568
    goto 1426 @-1774.45,-5602.8
    note-enUS Kill Rockjaw Skullthumpers
    note-ptBR Mate Rockjaw Skullthumpers
    note-enUS Don't go out of your way to kill them
    note-ptBR Não saia do caminho para matá-los
    objective 432/1 |opt
    note-enUS Enter the cave
    note-ptBR Entre na caverna
    note-enUS Kill Rockjaw Bonesnappers inside the cave
    note-ptBR Mate Rockjaw Bonesnappers dentro da caverna
    note-enUS Be careful as they cast [Knockdown] (Melee Instant: Stuns for 2 seconds)
    note-ptBR Cuidado, eles lançam [Knockdown] (Instantâneo corpo a corpo: atordoa por 2 segundos)
    objective 433/1
step
    path closest 1426 @-1681.86,-5723.3 @-1641.97,-5758.11 @-1673.49,-5801.45 @-1629.66,-5826.4 @-1564.65,-5832.97 @-1604.05,-5765.33 @-1641.97,-5758.11
    note-enUS Kill Rockjaw Skullthumpers
    note-ptBR Mate Rockjaw Skullthumpers
    objective 432/1
step
    goto 1426 @-1589.76,-5714.44
    note-enUS Talk to Frast
    note-ptBR Fale com Frast
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
step
    path seq 1426 @-1600.3,-5726.59
    goto 1426 @-1579.91,-5714.77
    note-enUS Talk to Stonebrow and Mehr
    note-ptBR Fale com Stonebrow e Mehr
    turnin 432
    turnin 433
step
    goto 1426 @-1612.42,-5698.02
    note-enUS Talk to Dank
    note-ptBR Fale com Dank
    train 2575
    note-enUS Train [Mining]
    note-ptBR Treine [Mining]
step
    ifnotturnedin 419
    path seq 1426 @-1662.65,-5692.11 @-1671.03,-5674.71 @-1693.19,-5541.73 @-1788.24,-5511.85 @-1995.58,-5480.01 @-2198.49,-5277.75 @-2286.16,-5200.59
    goto 1426 @-2329.5,-5163.82
    note-enUS Take the shortcut up behind Dank
    note-ptBR Pegue o atalho subindo atrás de Dank
    note-enUS Kite the nearby Rockjaw Ambushers to the Ironforge Mountaineers that can patrol on the road (make sure to deal 51%+ damage to get credit)
    note-ptBR Atraia os Rockjaw Ambushers próximos até os Ironforge Mountaineers que patrulham a estrada (cause 51%+ do dano para receber crédito)
    note-enUS Kite a Scarred Crag Boar through the tunnel
    note-ptBR Leve um Scarred Crag Boar (kite) pelo túnel
    note-enUS Be careful as they cast [Charge] (Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)
    note-ptBR Cuidado, eles lançam [Charge] (Instantâneo em si: aumenta a velocidade por 3 segundos, causando 40-100 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)
    note-enUS Talk to Hammerfoot
    note-ptBR Fale com Hammerfoot
    accept 419
step
    path seq 1426 @-2205.39,-5092.57
    goto 1426 @-2121.66,-5064.66
    note-enUS Click the Dwarven Corpse on the ground
    note-ptBR Clique no Dwarven Corpse no chão
    note-enUS MAKE SURE You have a 1 free inventory slot for this turnin
    note-ptBR CERTIFIQUE-SE de ter 1 espaço livre no inventário para esta entrega
    note-enUS Remember you're going to kite Mangeclaw back to Hammerfoot
    note-ptBR Lembre-se: você vai kitar Mangeclaw de volta até Hammerfoot
    turnin 419
    accept 417
step
    path seq 1426 @-2059.61,-5118.18
    goto 1426 @-2329.5,-5163.82
    note-enUS Kill Mangeclaw. Loot him for the Mangy Claw
    note-ptBR Mate Mangeclaw. Saqueie-o para obter a Mangy Claw
    note-enUS Kite him all the way over to Hammerfoot (make sure to deal 51%+ damage to get credit)
    note-ptBR Leve-o (kite) até Hammerfoot (cause 51%+ do dano para receber o crédito)
    objective 417/1
step
    goto 1426 @-2329.6,-5163.76
    note-enUS Talk to Hammerfoot
    note-ptBR Fale com Hammerfoot
    turnin 417 |reward 1
step
    path seq 1426 @-2286.16,-5200.59 @-2198.49,-5277.75
    goto 1426 @-2075.37,-5511.2
    note-enUS Run back through the tunnel
    note-ptBR Volte correndo pelo túnel
    note-enUS Be careful as Scarred Crag Boars and Elder Crag Boars cast [Charge] (Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range), and Ice Claw Bears cast [Ice Claw] (Melee Instant: Deals an additional 4 melee damage)
    note-ptBR Cuidado, Scarred e Elder Crag Boars lançam [Charge] (Instantâneo em si: +velocidade por 3 segundos, 40-100 de dano corpo a corpo ao acertar. Só à distância) e Ice Claw Bears lançam [Ice Claw] (Instantâneo corpo a corpo: +4 de dano)
    level 9
    note-enUS Grind to 5450+/6500xp
    note-ptBR Mate monstros até 5450+/6500xp
step
    path seq 1426 @-2118.71,-5516.78 @-2192.09,-5510.87 @-2216.72,-5519.08 @-2314.72,-5491.83 @-2347.72,-5483.62
    goto 1426 @-2447.11,-5479.74
    note-enUS Kite a Scarred Crag Boar en route
    note-ptBR Leve um Scarred Crag Boar (kite) pelo caminho
    note-enUS Be careful as they cast [Charge] (Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)
    note-ptBR Cuidado, eles lançam [Charge] (Instantâneo em si: aumenta a velocidade por 3 segundos, causando 40-100 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)
    note-enUS Do the Mountain Skip. Remember to drop down carefully
    note-ptBR Faça o Mountain Skip. Lembre-se de descer com cuidado
    note-enUS Be careful as Scarred Crag Boars cast [Charge] (Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)
    note-ptBR Cuidado, Scarred Crag Boars lançam [Charge] (Instantâneo em si: aumenta a velocidade por 3 segundos, causando 40-100 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)
    level 9 |opt
    note-enUS Grind to 5990+/6500xp
    note-ptBR Mate monstros até 5990+/6500xp
    note-enUS Talk to Barleybrew
    note-ptBR Fale com Barleybrew
    turnin 413
    accept 414
step
    path seq 1426 @-2469.86,-5504.96
    goto 1426 @-2451.15,-5432.07
    level 9
    note-enUS Grind to 6320+/6500xp
    note-ptBR Mate monstros até 6320+/6500xp
    note-enUS Be careful as Scarred Crag Boars cast [Charge] (Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)
    note-ptBR Cuidado, Scarred Crag Boars lançam [Charge] (Instantâneo em si: aumenta a velocidade por 3 segundos, causando 40-100 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)
step
    path closest 1432 @-2447.5,-5564.39 @-2534.11,-5642.02 @-2576.86,-5805.01 @-2519.49,-5875.65 @-2570.52,-5916.3 @-2576.86,-5805.01
    note-enUS Kite a Scarred Crag Boar through the tunnel
    note-ptBR Leve um Scarred Crag Boar (kite) pelo túnel
    note-enUS Be careful as they cast [Charge] (Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)
    note-ptBR Cuidado, eles lançam [Charge] (Instantâneo em si: aumenta a velocidade por 3 segundos, causando 40-100 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)
    level 10
    note-enUS Grind to Level 10
    note-ptBR Mate monstros até o nível 10
step
    goto 1432 @-2602.54,-5832.73
    note-enUS Try to kite a nearby Elder Black Bear or Forest Lurker into the Bunker with you (remember to deal 51%+ damage to get credit)
    note-ptBR Tente kitar um Elder Black Bear ou Forest Lurker próximo para dentro do bunker com você (lembre-se de causar 51%+ do dano para receber o crédito)
    note-enUS Loot the Elder Black Bears for their [Bear Meat]
    note-ptBR Saqueie os Elder Black Bears para obter [Bear Meat]
    note-enUS Loot the Forest Lurkers for their [Spider Ichor]
    note-ptBR Saqueie os Forest Lurkers para obter [Spider Ichor]
    note-enUS Cobbleflint, Gravelgaw, and Wallbang won't assist you
    note-ptBR Cobbleflint, Gravelgaw e Wallbang não vão ajudar você
    collect 3173 3 |quest 418 |q 418/1 |opt
    collect 3174 3 |quest 418 |q 418/1 |opt
    note-enUS Talk to Cobbleflint
    note-ptBR Fale com Cobbleflint
    accept 224
step
    path seq 1432 @-2635.61,-5879.14 @-2645.27,-5874.91 @-2631.48,-5847.5
    goto 1432 @-2634.59,-5842.81
    note-enUS Enter the Bunker. Go to the top floor
    note-ptBR Entre no Bunker. Vá para o último andar
    note-enUS Talk to Rugelfuss
    note-ptBR Fale com Rugelfuss
    accept 267
step
    path seq 1432 @-2902.07,-5398.28 @-2945.1,-5360.2 @-3015.71,-5335.73 @-3025.09,-5318.44
    goto 1432 @-3017.64,-5274.66
    note-enUS Talk to Kadrell
    note-ptBR Fale com Kadrell
    note-enUS Kadrell patrols along the main Thelsamar road
    note-ptBR Kadrell patrulha a estrada principal de Thelsamar
    turnin 414
    accept 416
    accept 1339
step
    path seq 1432 @-3019.3,-5354.5
    goto 1432 @-3014.88,-5366.82
    note-enUS Talk to Brock
    note-ptBR Fale com Brock
    note-enUS He can be inside or outside the building
    note-ptBR Ele pode estar dentro ou fora do prédio
    accept 6387
step
    goto 1432 @-2929.93,-5424.95
    note-enUS Talk to Thorgrum
    note-ptBR Fale com Thorgrum
    fp
    note-enUS Get the Thelsamar flight path
    note-ptBR Pegue o ponto de voo de Thelsamar
    turnin 6387
    accept 6391
step
    ifonquest 6391
    goto 1432 @-2929.93,-5424.95
    note-enUS Talk to Thorgrum
    note-ptBR Fale com Thorgrum
    fly 1455 |opt
    note-enUS Fly to Ironforge
    note-ptBR Voe para Ironforge
    zone 1455
    note-enUS Travel to Ironforge
    note-ptBR Vá até Ironforge
step
    ifonquest 291
    path seq 1455 @-1154.84,-4771.58 @-1123.37,-4726.31 @-1106.29,-4718.18
    goto 1455 @-1121.08,-4708 10
    note-enUS Go inside the building
    note-ptBR Entre no prédio
    note-enUS Travel toward Golnir
    note-ptBR Vá em direção a Golnir
    note-enUS Talk to Golnir
    note-ptBR Fale com Golnir
    turnin 6391
    accept 6388
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
step
    path seq 1455 @-1106.29,-4718.18 @-1154.84,-4771.58 @-1152.31,-4821.12
    goto 1455 @-1152.39,-4820.91
    note-enUS Exit the building
    note-ptBR Saia do prédio
    note-enUS Travel toward Gryth
    note-ptBR Vá em direção a Gryth
    note-enUS Talk to Gryth
    note-ptBR Fale com Gryth
    turnin 6388
step
    path seq 1455 @-1148.99,-4840.22 @-1101.87,-4864.81 @-1082.58,-4836 @-1062.42,-4835
    goto 1455 @-1026.28,-4872.56 10
    note-enUS Travel toward Barin
    note-ptBR Vá em direção a Barin
    note-enUS Talk to Barin
    note-ptBR Fale com Barin
    turnin 291
step
    path seq 1455 @-1064.87,-4828.19 @-1062.1,-4815.1 @-1036.48,-4804.5 @-992.68,-4742.08 @-931.8,-4627.59
    goto 1455 @-928.4,-4614.51 10
    note-enUS Travel toward Dink
    note-ptBR Vá em direção a Dink
    note-enUS Talk to Dink
    note-ptBR Fale com Dink
    trainer
    note-enUS Train your class spells (Frost Armor r2, Frost Nova, Polymorph, Conjure Water r1 & r2)
    note-ptBR Treine suas magias de classe (Frost Armor r2, Frost Nova, Polymorph, Conjure Water r1 & r2)
    note-enUS Total Cost: 15s
    note-ptBR Custo total: 15s
    note-enUS Remember you may want money for Healing Potions (3s each), Bronze Tube (8s each), and level 5 food (20c per 5)
    note-ptBR Lembre-se: talvez você queira dinheiro para Poções de Cura (3s cada), Bronze Tube (8s cada) e comida de nível 5 (20c por 5)
step
    goto 1455 @-857.01,-4840.69 10
    note-enUS Go inside the building
    note-ptBR Entre no prédio
    note-enUS Travel toward Firebrew
    note-ptBR Vá em direção a Firebrew
    note-enUS Talk to Firebrew
    note-ptBR Fale com Firebrew
    home
    note-enUS Set your Hearthstone to Ironforge
    note-ptBR Defina sua pedra de regresso em Ironforge
]==])

register([==[
#format 1
#id forever.a.10-12-adv-darkshore-1-mage-aoe
#name 10-12 ADV Darkshore 1 Mage AoE
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 2
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#only Mage
#levels 10-12
#name-ptBR 10-12 Avançado Darkshore 1 Mago AoE
#group Mage AoE - Advanced (Alliance)
#group-ptBR Mago AoE - Avançado (Aliança)
#recommend Human Mage Gnome Mage
#next forever.a.12-14-adv-loch-modan-mage-aoe

step
    ifnotturnedin 983
    goto 1455 @-833.45,-5021.4 20
    path seq 1426 @-1145.04,-5504.3 @-831.81,-5108.33 @-859.39,-5144.45 @-1124.84,-5283.99 @-1161.78,-5289.24 @-1173.6,-5313.54 @-1187.88,-5327.66 @-1199.7,-5327 @-1224.33,-5245.58 @-1239.6,-5239.67 @-1243.54,-5243.93 @-1251.91,-5233.1 @-1241.07,-5180.89 @-1225.81,-5086.99 @-1224.82,-4952.7 @-1220.88,-4826.62 @-1197.73,-4626.34 @-1178.03,-4408.98 @-1178.53,-4396.18 @-1189.36,-4374.84 @-1173.11,-4348.24 @-1184.44,-4333.14 @-1221.87,-4312.78 @-1227.78,-4290.13
    goto 1426 @-1184.93,-4250.73 20
    zone 1426 |opt
    note-enUS Exit Ironforge
    note-ptBR Saia de Ironforge
    note-enUS Travel to the skip spot. Hug the left side of the mountain en route
    note-ptBR Vá até o ponto do skip. Fique colado ao lado esquerdo da montanha no caminho
    note-enUS Do the Deathless Dun Morogh -> Wetlands skip
    note-ptBR Faça o atalho Deathless de Dun Morogh para Wetlands
    note-enUS Eat to full after each fall if you don't feel confident
    note-ptBR Coma até encher após cada queda se não estiver confiante
    note-enUS Carefully drop down the mountain side
    note-ptBR Desça a encosta da montanha com cuidado
step
    ifnotturnedin 983
    path seq 1426 @-1192.32,-4216.25
    goto 1426 @-1182.96,-4196.55 8
    path seq 1437 @-1166.63,-4147.02 @-1162.91,-4104.03 @-1154.64,-4060.48 @-1118.24,-4031.81 @-1092.6,-4013.35 @-1049.6,-3998.74 @-1012.79,-3978.34 @-1022.72,-3952.43 @-1014.03,-3904.2
    goto 1437 @-914.37,-3828.4 15
    note-enUS Do the Deathless Dun Morogh -> Wetlands skip
    note-ptBR Faça o atalho Deathless de Dun Morogh para Wetlands
    note-enUS Be careful of Sludginn (rare) before you drop down toward the coast (if he's up)
    note-ptBR Cuidado com Sludginn (raro) antes de descer em direção à costa (se ele estiver presente)
    note-enUS Be careful of the Bluegill Raiders to the west when you reach the sea
    note-ptBR Cuidado com os Bluegill Raiders a oeste quando chegar ao mar
    note-enUS Avoid the Young Wetlands Crocolisks when crossing the sea. Wait for them to patrol away
    note-ptBR Evite os Young Wetlands Crocolisks ao atravessar o mar. Espere que se afastem na patrulha
    note-enUS Travel to Menethil Harbor
    note-ptBR Vá até Menethil Harbor
step
    path seq 1437 @-836.21,-3796.15 @-829.18,-3804.42
    goto 1437 @-823.8,-3807.18
    note-enUS Go inside the Inn
    note-ptBR Entre na estalagem
    note-enUS Jump onto the Chandelier downstairs
    note-ptBR Pule no lustre no andar de baixo
    note-enUS Talk to Samor through the wall
    note-ptBR Fale com Samor através da parede
    note-enUS NOTE: To do this, bind "Interact with Target" under Gameplay -> Controls in the Options menu
    note-ptBR NOTA: Para isso, defina um atalho para "Interagir com o alvo" em Jogabilidade -> Controles no menu de Opções
    note-enUS If the Boat has just arrived, skip this step
    note-ptBR Se o Barco acabou de chegar, pule esta etapa
    vendor
    note-enUS Buy [Healing Potions] from him (if they're up)
    note-ptBR Compre [Healing Potions] dele (se estiverem disponíveis)
step
    goto 1437 @-782.03,-3793.12
    note-enUS Talk to Shellei
    note-ptBR Fale com Shellei
    fp
    note-enUS Get the Menethil Harbor flight path
    note-ptBR Pegue o ponto de voo de Menethil Harbor
step
    goto 1437 @-715.87,-3697.48
    note-enUS If the Boat has just arrived, skip this step
    note-ptBR Se o Barco acabou de chegar, pule esta etapa
    note-enUS Cook any [Chunks of Boar Meat] you have from outside (there's a campfire inside)
    note-ptBR Cozinhe quaisquer [Chunks of Boar Meat] que trouxe de fora (há uma fogueira lá dentro)
    note-enUS Talk to Dewin through the wall
    note-ptBR Fale com Dewin através da parede
    note-enUS If the Boat has just arrived, skip this step
    note-ptBR Se o Barco acabou de chegar, pule esta etapa
    vendor
    note-enUS Buy [Healing Potions] from him (if they're up)
    note-ptBR Compre [Healing Potions] dele (se estiverem disponíveis)
step
    path seq 1437 @-641.43,-3758.94 @-575.68,-3719.53
    goto 1437 @-565.34,-3724.77
    note-enUS Travel toward the Darkshore Boat
    note-ptBR Vá em direção a Darkshore Boat
    note-enUS Start spam casting [Conjure Water r2] to conjure as much water as possible
    note-ptBR Comece a conjurar [Conjure Water r2] sem parar para fazer o máximo de água possível
    zone 1439
    note-enUS Take the boat to Darkshore
    note-ptBR Pegue o barco para Darkshore
step
    path seq 1439 @601.35,6358.29 @533.23,6399.77 @536.51,6389.29 @528.65,6404.14 @537.16,6417.68
    goto 1439 @519.48,6405.89 8
    note-enUS Jump off the boat when you're closest to the shore
    note-ptBR Pule do barco quando estiver mais perto da margem
    note-enUS Kite 2-3 Pygmy Tide Crawlers toward Wizbang (Remember to use [Frost Nova]) Kill them when you accept the quest
    note-ptBR Leve 2-3 Pygmy Tide Crawlers (kite) até Wizbang (lembre-se de usar [Frost Nova]). Mate-os quando aceitar a missão
    note-enUS Talk to Laird
    note-ptBR Fale com Laird
    note-enUS Buy up to 20 [Longjaw Mud Snappers] from him
    note-ptBR Compre até 20 [Longjaw Mud Snappers] dele
    vendor |opt
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
    collect 4592 20 |quest 983 |q 983/1 |opt
    note-enUS Go upstairs to the top floor
    note-ptBR Suba até o último andar
    note-enUS Travel toward Wizbang
    note-ptBR Vá em direção a Wizbang
    note-enUS Talk to Wizbang
    note-ptBR Fale com Wizbang
    accept 983
step
    ifnotturnedin 954
    path seq 1439 @489.35,6450.43 @470.35,6525.53 @492.62,6580.99
    goto 1439 @488.69,6564.83
    note-enUS Kill the Pygmy Tide Crawlers you kited. Loot them for their Crawler Legs
    note-ptBR Mate os Pygmy Tide Crawlers que você trouxe (kite). Saqueie-os para obter Crawler Legs
    objective 983/1 |opt
    note-enUS Travel toward Thundris
    note-ptBR Vá em direção a Thundris
    note-enUS Talk to Dalmond
    note-ptBR Fale com Dalmond
    vendor
    note-enUS Buy as many [Small Brown Pouches] as you need/can
    note-ptBR Compre quantas [Small Brown Pouches] precisar/puder
step
    ifskillbelow cooking 10
    goto 1439 @492.62,6580.99
    note-enUS Talk to Thundris
    note-ptBR Fale com Thundris
    accept 954
    accept 958
step
    path seq 1439 @492.62,6580.99
    goto 1439 @472.97,6557.85
    note-enUS Talk to Thundris and Alanndarian
    note-ptBR Fale com Thundris e Alanndarian
    accept 954
    accept 958
    accept 2178
step
    path seq 1439 @462.49,6525.97 @414.68,6472.7 @383.89,6445.62 @362.93,6434.27
    goto 1439 @397.65,6437.76
    note-enUS Travel toward Terenthis
    note-ptBR Vá em direção a Terenthis
    note-enUS Talk to Terenthis and Tharnariun
    note-ptBR Fale com Terenthis e Tharnariun
    accept 984
    accept 2118
step
    ifnotturnedin 983
    goto 1439 @533.23,6399.77
    note-enUS Talk to Laird
    note-ptBR Fale com Laird
    note-enUS Buy up to 20 [Longjaw Mud Snappers] from him
    note-ptBR Compre até 20 [Longjaw Mud Snappers] dele
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
    collect 4592 20 |quest 983 |q 983/1
step
    path seq 1439 @569.26,6373.14 @596.11,6334.27 @592.84,6265.72 @600.7,6228.6 @567.29,6154.37 @437.6,6025.99
    goto 1439 @393.72,5993.24
    note-enUS Kill Pygmy Tide Crawlers. Loot them for their Crawler Legs
    note-ptBR Mate Pygmy Tide Crawlers. Saqueie-os para obter Crawler Legs
    objective 983/1 |opt
    note-enUS Use [Tharnariun's Hope] on a Rabid Thistle Bear. It has a 50-yard range
    note-ptBR Use [Tharnariun's Hope] em um Rabid Thistle Bear. Tem alcance de 50 metros
    note-enUS Be careful as they cast [Rabies] (Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)
    note-ptBR Cuidado, eles lançam [Rabies] (Instantâneo corpo a corpo: reduz TODA a regeneração de vida em 50% por 10 minutos)
    objective 2118/1 |opt
    use 7586 |opt
    note-enUS Run toward the Furbolg Camp
    note-ptBR Corra em direção ao Furbolg Camp
    note-enUS Do not attempt to fight the Blackwood Windtalker
    note-ptBR Não tente lutar com o Blackwood Windtalker
    objective 984/1
step
    path seq 1439 @411.4,5873.15 @400.27,5788 @427.78,5680.58
    goto 1439 @415.33,5434.3
    note-enUS Use [Tharnariun's Hope] on a Rabid Thistle Bear. It has a 50-yard range
    note-ptBR Use [Tharnariun's Hope] em um Rabid Thistle Bear. Tem alcance de 50 metros
    note-enUS Be careful as they cast [Rabies] (Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)
    note-ptBR Cuidado, eles lançam [Rabies] (Instantâneo corpo a corpo: reduz TODA a regeneração de vida em 50% por 10 minutos)
    objective 2118/1
    use 7586
step
    goto 1439 @302.02,5726.43
    note-enUS Talk to Tysha
    note-ptBR Fale com Tysha
    accept 953
step
    goto 1439 @148.09,5575.78
    note-enUS Avoid pulling Lady Moongazer (rare) if she's up
    note-ptBR Evite puxar Lady Moongazer (rara) se ela estiver presente
    note-enUS Kill Cursed Highbornes and Writhing Highbornes. Loot them for Highborne Relics
    note-ptBR Mate Cursed Highbornes e Writhing Highbornes. Saqueie-os para obter Highborne Relics
    note-enUS Kill Wailing Highbornes only if they're in your way
    note-ptBR Mate Wailing Highbornes somente se estiverem no seu caminho
    objective 958/1 |opt
    note-enUS Click The Fall of Ameth'Aran on the ground
    note-ptBR Clique em The Fall of Ameth'Aran no chão
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    objective 953/2
step
    goto 1439 @105.52,5770.1
    note-enUS Click The Lay of Ameth'Aran on the ground
    note-ptBR Clique em The Lay of Ameth'Aran no chão
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    objective 953/1
step
    goto 1439 @302.02,5726.43
    note-enUS Talk to Tysha
    note-ptBR Fale com Tysha
    turnin 953
step
    path seq 1439 @206.39,5802.41 @117.96,5820.32 @71.46,5788 @87.18,5713.77 @93.07,5585.83 @165.78,5564.87 @242.41,5641.72
    goto 1439 @206.39,5802.41
    note-enUS Kill Cursed Highbornes and Writhing Highbornes
    note-ptBR Mate Cursed Highbornes e Writhing Highbornes
    note-enUS Kill Wailing Highbornes only if they're in your way
    note-ptBR Mate Wailing Highbornes somente se estiverem no seu caminho
    objective 958/1
step
    goto 1439 @48.53,6748.67
    note-enUS Kite 2-3 Vile Sprites toward Asterion (Remember to use [Frost Nova]) Kill them when you accept the quest
    note-ptBR Leve 2-3 Vile Sprites (kite) até Asterion (lembre-se de usar [Frost Nova]). Mate-os quando aceitar a missão
    note-enUS Talk to Asterion
    note-ptBR Fale com Asterion
    turnin 954
    accept 955
step
    path closest 1439 @22.33,6736.44 @28.88,6669.2 @58.36,6649.98 @-6.49,6603.26 @-45.79,6638.63 @-17.62,6695.4 @-62.16,6719.41 @-130.94,6712.86 @-36.62,6760.9 @22.33,6736.44
    note-enUS Be careful as Licillin (rare) may be up
    note-ptBR Cuidado, Licillin (raro) pode estar presente
    note-enUS He casts [Shadow Bolt] (Ranged Cast: Deals 55-70 Shadow damage)
    note-ptBR Ele lança [Shadow Bolt] (Lançamento à distância: causa 55-70 de dano de Sombra)
    note-enUS Kill Vile Sprites and Wild Grells. Loot them for their Grell Earrings
    note-ptBR Mate Vile Sprites e Wild Grells. Saqueie-os para obter Grell Earrings
    note-enUS Be careful as the Vile Sprites cast [Poison] (Melee Instant: Deals 3 damage every 3 seconds for 15 seconds) and Wild Grells cast [Crazed] (Self Instant: Increases attack speed by 20% at <20% health)
    note-ptBR Cuidado, os Vile Sprites lançam [Poison] (Instantâneo corpo a corpo: 3 de dano a cada 3 segundos por 15 segundos) e os Wild Grells lançam [Crazed] (Instantâneo em si: +20% de velocidade de ataque com <20% de vida)
    objective 955/1
step
    goto 1439 @48.53,6748.67
    note-enUS Talk to Asterion
    note-ptBR Fale com Asterion
    turnin 955
    accept 956
step
    path seq 1439 @-38.58,6739.5 @-66.75,6683.61 @-67.4,6672.25 @-34,6601.51 @-115.22,6626.4 @-160.41,6690.16 @-187.27,6708.93 @-165.65,6728.15 @-38.58,6739.5 @-66.75,6683.61 @-67.4,6672.25 @-34,6601.51 @-115.22,6626.4 @-160.41,6690.16 @-187.27,6708.93
    goto 1439 @-165.65,6728.15
    note-enUS Kill Deth'ryll Satyrs. Loot them for the Ancient Moonstone Seal
    note-ptBR Mate Deth'ryll Satyrs. Saqueie-os para obter o Ancient Moonstone Seal
    note-enUS Be careful as they cast [Shoot] (Ranged Cast: Deals 15-25 damage)
    note-ptBR Cuidado, eles lançam [Shoot] (Lançamento à distância: causa 15-25 de dano)
    objective 956/1
step
    path closest 1439 @22.33,6736.44 @28.88,6669.2 @58.36,6649.98 @-6.49,6603.26 @-45.79,6638.63 @-17.62,6695.4 @-62.16,6719.41 @-130.94,6712.86 @-36.62,6760.9 @22.33,6736.44
    level 11
    note-enUS Grind to 1100+/8800xp
    note-ptBR Mate monstros até 1100+/8800xp
step
    goto 1439 @48.53,6748.67
    note-enUS Talk to Asterion
    note-ptBR Fale com Asterion
    turnin 956
    accept 957
step
    ifnotturnedin 3524
    goto 1439 @488.69,6564.83
    note-enUS Talk to Dalmond
    note-ptBR Fale com Dalmond
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
step
    goto 1439 @491.97,6582.3
    note-enUS Talk to Thundris
    note-ptBR Fale com Thundris
    turnin 958
step
    goto 1439 @472.97,6557.85
    note-enUS Talk to Alanndarian
    note-ptBR Fale com Alanndarian
    turnin 2178
step
    path seq 1439 @362.93,6434.27
    goto 1439 @397.65,6437.76
    note-enUS Talk to Terenthis and Tharnariun
    note-ptBR Fale com Terenthis e Tharnariun
    turnin 984
    accept 985
    accept 4761
    turnin 2118
    accept 2138
step
    goto 1439 @543.06,6342.57
    note-enUS Talk to Gwennyth
    note-ptBR Fale com Gwennyth
    accept 3524
step
    goto 1439 @561.4,6343.01
    note-enUS Talk to Caylais
    note-ptBR Fale com Caylais
    fp
    note-enUS Get the Auberdine flight path
    note-ptBR Pegue o ponto de voo de Auberdine
step
    path seq 1439 @569.26,6373.14 @596.11,6334.27 @592.84,6265.72 @600.7,6228.6 @567.29,6154.37
    goto 1439 @558.78,6111.57
    note-enUS Kill Pygmy Tide Crawlers and Young Reef Crawlers. Loot them for their Crawler Legs
    note-ptBR Mate Pygmy Tide Crawlers e Young Reef Crawlers. Saqueie-os para obter Crawler Legs
    objective 983/1 |opt
    note-enUS Save the [Murloc Eyes] you loot from the Greymist Coastrunners and Greymist Raiders
    note-ptBR Guarde os [Murloc Eyes] que saquear dos Greymist Coastrunners e Greymist Raiders
    collect 730 3 |quest 38 |q 38/1 |opt
    note-enUS Loot the Beached Sea Creature
    note-ptBR Saqueie a Beached Sea Creature
    note-enUS Be careful as the nearby Greymist Coastrunners have [Increased Movespeed]
    note-ptBR Cuidado, os Greymist Coastrunners próximos têm [Increased Movespeed]
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    objective 3524/1
step
    goto 1439 @569.26,6373.14
    note-enUS Kill Pygmy Tide Crawlers and Young Reef Crawlers. Loot them for their Crawler Legs
    note-ptBR Mate Pygmy Tide Crawlers e Young Reef Crawlers. Saqueie-os para obter Crawler Legs
    objective 983/1
step
    goto 1439 @541.75,6313.31
    note-enUS Click Buzzbox 827
    note-ptBR Clique em Buzzbox 827
    turnin 983
    accept 1001
step
    path seq 1439 @536.51,6365.28
    goto 1439 @543.06,6342.57
    note-enUS Talk to Gwennyth
    note-ptBR Fale com Gwennyth
    turnin 3524
    accept 4681
step
    goto 1439 @533.23,6399.77
    note-enUS Talk to Laird
    note-ptBR Fale com Laird
    note-enUS Buy up to 40 [Longjaw Mud Snappers] from him
    note-ptBR Compre até 40 [Longjaw Mud Snappers] dele
    collect 4592 40 |quest 4681 |q 4681/1
step
    path seq 1439 @539.13,6409.82
    goto 1439 @600.7,6425.1
    note-enUS Talk to Cerellean
    note-ptBR Fale com Cerellean
    accept 963
step
    path seq 1439 @786.06,6488.85 @818.81,6419.86
    goto 1439 @854.84,6310.26
    note-enUS Kill Darkshore Threshers
    note-ptBR Mate Darkshore Threshers
    note-enUS Do NOT go out of your way for these
    note-ptBR NÃO saia do caminho por causa disso
    objective 1001/1 |opt
    note-enUS Run along the dock toward the Sea Turtle Remains
    note-ptBR Corra pelo cais em direção aos Sea Turtle Remains
    note-enUS Swim underwater
    note-ptBR Nade debaixo d'água
    note-enUS Loot the Sea Turtle Remains
    note-ptBR Saqueie os Sea Turtle Remains
    objective 4681/1
step
    path seq 1439 @575.81,6381.43 @596.77,6329.91 @581.05,6209.82 @575.15,6144.32 @545.68,6010.27 @634.1,5983.63 @634.76,5915.51 @537.82,5840.4 @575.81,6381.43 @596.77,6329.91 @581.05,6209.82 @575.15,6144.32 @545.68,6010.27 @634.1,5983.63 @634.76,5915.51
    goto 1439 @537.82,5840.4
    level 11
    note-enUS Grind to 7825+/8800xp
    note-ptBR Mate monstros até 7825+/8800xp
step
    path seq 1439 @539.78,6364.84
    goto 1439 @543.06,6342.57
    note-enUS Talk to Gwennyth
    note-ptBR Fale com Gwennyth
    turnin 4681 |reward 1
step
    goto 1439 @515.55,6406.32
    note-enUS ===PAY ATTENTION===
    note-ptBR ===PRESTE ATENÇÃO===
    note-enUS Talk to Shaussiy
    note-ptBR Fale com Shaussiy
    note-enUS If this is your first time doing a Hearthstone Batch, watch the guide for it below
    note-ptBR Se esta for sua primeira vez fazendo um Hearthstone Batch, assista ao guia abaixo
    note-enUS Open the "Set Hearthstone" menu, then cast [Hearthstone]
    note-ptBR Abra o menu "Definir Pedra de Regresso" e depois use a [Hearthstone]
    hearth
    note-enUS Hearthstone BATCH from Auberdine to Ironforge
    note-ptBR Use a pedra de regresso em BATCH de Auberdine para Ironforge
step
    goto 1455 @-928.4,-4614.51
    note-enUS Talk to Dink
    note-ptBR Fale com Dink
    trainer
    note-enUS Train your class spells (Fireball r3, Dampen Magic)
    note-ptBR Treine suas magias de classe (Fireball r3, Dampen Magic)
    note-enUS Total Cost: 12s
    note-ptBR Custo total: 12s
    note-enUS Remember you may want money for a [Bronze Tube] (8s each) and Thelsamar flying (1s 10c)
    note-ptBR Lembre-se: talvez você queira dinheiro para um [Bronze Tube] (8s cada) e o voo de Thelsamar (1s 10c)
step
    only Gnome
    goto 1455 @-1152.39,-4820.91
    note-enUS Start spam casting [Conjure Water r2] to conjure as much water as possible before taking the flight
    note-ptBR Comece a conjurar [Conjure Water r2] sem parar para fazer o máximo de água possível antes de pegar o voo
    note-enUS Talk to Gryth
    note-ptBR Fale com Gryth
    accept 6392
step
    goto 1455 @-1152.39,-4820.91
    note-enUS Talk to Gryth
    note-ptBR Fale com Gryth
    fp
    note-enUS Fly to Thelsamar
    note-ptBR Voe para Thelsamar
]==])

register([==[
#format 1
#id forever.a.10-12-launch-adv-darkshore-1-mage-aoe
#name 10-12 LAUNCH ADV Darkshore 1 Mage AoE
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 2
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#only Mage
#levels 10-12
#name-ptBR 10-12 Lançamento Avançado Darkshore 1 Mago AoE
#group Mage AoE - Advanced (Alliance)
#group-ptBR Mago AoE - Avançado (Aliança)
#next forever.a.12-14-adv-loch-modan-mage-aoe

step
    ifnotturnedin 983
    path seq 1426 @-831.81,-5108.33 @-859.39,-5144.45 @-1124.84,-5283.99 @-1161.78,-5289.24 @-1173.6,-5313.54 @-1187.88,-5327.66 @-1199.7,-5327 @-1224.33,-5245.58 @-1239.6,-5239.67 @-1243.54,-5243.93 @-1251.91,-5233.1 @-1241.07,-5180.89 @-1225.81,-5086.99 @-1224.82,-4952.7 @-1220.88,-4826.62 @-1197.73,-4626.34 @-1178.03,-4408.98 @-1178.53,-4396.18 @-1189.36,-4374.84 @-1173.11,-4348.24 @-1184.44,-4333.14 @-1221.87,-4312.78 @-1227.78,-4290.13
    goto 1426 @-1184.93,-4250.73 20
    note-enUS NOTE: The Launch route contains quests that are VERY difficult to do solo. This is specifically for either heavily crowded servers where you can group up for the harder quests, OR players who have mob taggers
    note-ptBR NOTA: A rota de lançamento contém missões MUITO difíceis de fazer sozinho. Ela é específica para servidores muito lotados, onde você pode formar grupo para as missões mais difíceis, OU para jogadores que têm quem marque os inimigos
    note-enUS Travel to the skip spot. Hug the left side of the mountain en route
    note-ptBR Vá até o ponto do skip. Fique colado ao lado esquerdo da montanha no caminho
    note-enUS Do the Deathless Dun Morogh -> Wetlands skip
    note-ptBR Faça o atalho Deathless de Dun Morogh para Wetlands
    note-enUS Eat to full after each fall if you don't feel confident
    note-ptBR Coma até encher após cada queda se não estiver confiante
    note-enUS Carefully drop down the mountain side
    note-ptBR Desça a encosta da montanha com cuidado
step
    ifnotturnedin 983
    path seq 1426 @-1192.32,-4216.25
    goto 1426 @-1182.96,-4196.55 8
    path seq 1437 @-1166.63,-4147.02 @-1162.91,-4104.03 @-1154.64,-4060.48 @-1118.24,-4031.81 @-1092.6,-4013.35 @-1049.6,-3998.74 @-1012.79,-3978.34 @-1022.72,-3952.43 @-1014.03,-3904.2
    goto 1437 @-914.37,-3828.4 15
    note-enUS Do the Deathless Dun Morogh -> Wetlands skip
    note-ptBR Faça o atalho Deathless de Dun Morogh para Wetlands
    note-enUS Be careful of Sludginn (rare) before you drop down toward the coast (if he's up)
    note-ptBR Cuidado com Sludginn (raro) antes de descer em direção à costa (se ele estiver presente)
    note-enUS Be careful of the Bluegill Raiders to the west when you reach the sea
    note-ptBR Cuidado com os Bluegill Raiders a oeste quando chegar ao mar
    note-enUS Avoid the Young Wetlands Crocolisks when crossing the sea. Wait for them to patrol away
    note-ptBR Evite os Young Wetlands Crocolisks ao atravessar o mar. Espere que se afastem na patrulha
    note-enUS Travel to Menethil Harbor
    note-ptBR Vá até Menethil Harbor
step
    path seq 1437 @-836.21,-3796.15 @-829.18,-3804.42
    goto 1437 @-823.8,-3807.18
    note-enUS Go inside the Inn
    note-ptBR Entre na estalagem
    note-enUS Jump onto the Chandelier downstairs
    note-ptBR Pule no lustre no andar de baixo
    note-enUS Talk to Samor through the wall
    note-ptBR Fale com Samor através da parede
    note-enUS NOTE: To do this, bind "Interact with Target" under Gameplay -> Controls in the Options menu
    note-ptBR NOTA: Para isso, defina um atalho para "Interagir com o alvo" em Jogabilidade -> Controles no menu de Opções
    note-enUS If the Boat has just arrived, skip this step
    note-ptBR Se o Barco acabou de chegar, pule esta etapa
    vendor
    note-enUS Buy [Healing Potions] from him (if they're up)
    note-ptBR Compre [Healing Potions] dele (se estiverem disponíveis)
step
    goto 1437 @-782.03,-3793.12
    note-enUS Talk to Shellei
    note-ptBR Fale com Shellei
    fp
    note-enUS Get the Menethil Harbor flight path
    note-ptBR Pegue o ponto de voo de Menethil Harbor
step
    goto 1437 @-715.87,-3697.48
    note-enUS If the Boat has just arrived, skip this step
    note-ptBR Se o Barco acabou de chegar, pule esta etapa
    note-enUS Cook any [Chunks of Boar Meat] you have from outside (there's a campfire inside)
    note-ptBR Cozinhe quaisquer [Chunks of Boar Meat] que trouxe de fora (há uma fogueira lá dentro)
    note-enUS Talk to Dewin through the wall
    note-ptBR Fale com Dewin através da parede
    note-enUS If the Boat has just arrived, skip this step
    note-ptBR Se o Barco acabou de chegar, pule esta etapa
    vendor
    note-enUS Buy [Healing Potions] from him (if they're up)
    note-ptBR Compre [Healing Potions] dele (se estiverem disponíveis)
step
    path seq 1437 @-641.43,-3758.94 @-575.68,-3719.53
    goto 1437 @-565.34,-3724.77
    note-enUS Travel toward the Darkshore Boat
    note-ptBR Vá em direção a Darkshore Boat
    note-enUS Start spam casting [Conjure Water r2] to conjure as much water as possible
    note-ptBR Comece a conjurar [Conjure Water r2] sem parar para fazer o máximo de água possível
    zone 1439
    note-enUS Take the boat to Darkshore
    note-ptBR Pegue o barco para Darkshore
step
    path seq 1439 @601.35,6358.29 @533.23,6399.77 @536.51,6389.29 @528.65,6404.14 @537.16,6417.68
    goto 1439 @519.48,6405.89 8
    note-enUS Jump off the boat when you're closest to the shore
    note-ptBR Pule do barco quando estiver mais perto da margem
    note-enUS Kite 2-3 Pygmy Tide Crawlers toward Wizbang (Remember to use [Frost Nova]) Kill them when you accept the quest
    note-ptBR Leve 2-3 Pygmy Tide Crawlers (kite) até Wizbang (lembre-se de usar [Frost Nova]). Mate-os quando aceitar a missão
    note-enUS Talk to Laird
    note-ptBR Fale com Laird
    note-enUS Buy up to 20 [Longjaw Mud Snappers] from him
    note-ptBR Compre até 20 [Longjaw Mud Snappers] dele
    vendor |opt
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
    collect 4592 20 |quest 983 |q 983/1 |opt
    note-enUS Go upstairs to the top floor
    note-ptBR Suba até o último andar
    note-enUS Travel toward Wizbang
    note-ptBR Vá em direção a Wizbang
    note-enUS Talk to Wizbang
    note-ptBR Fale com Wizbang
    accept 983
step
    ifnotturnedin 983
    goto 1439 @533.23,6399.77
    note-enUS Kill the Pygmy Tide Crawlers you kited. Loot them for their Crawler Legs
    note-ptBR Mate os Pygmy Tide Crawlers que você trouxe (kite). Saqueie-os para obter Crawler Legs
    objective 983/1 |opt
    note-enUS Talk to Laird
    note-ptBR Fale com Laird
    note-enUS Buy up to 20 [Longjaw Mud Snappers] from him
    note-ptBR Compre até 20 [Longjaw Mud Snappers] dele
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
    collect 4592 20 |quest 983 |q 983/1
step
    path seq 1439 @362.93,6434.27
    goto 1439 @397.65,6437.76
    note-enUS Talk to Terenthis and Tharnariun
    note-ptBR Fale com Terenthis e Tharnariun
    accept 984
    accept 2118
step
    ifnotturnedin 954
    goto 1439 @488.69,6564.83
    note-enUS Talk to Dalmond
    note-ptBR Fale com Dalmond
    vendor
    note-enUS Buy as many [Small Brown Pouches] as you need/can
    note-ptBR Compre quantas [Small Brown Pouches] precisar/puder
step
    ifskillbelow cooking 10
    goto 1439 @492.62,6580.99
    note-enUS Talk to Thundris
    note-ptBR Fale com Thundris
    accept 954
    accept 958
step
    path seq 1439 @492.62,6580.99
    goto 1439 @472.97,6557.85
    note-enUS Talk to Thundris and Alanndarian
    note-ptBR Fale com Thundris e Alanndarian
    accept 954
    accept 958
    accept 2178
step
    goto 1439 @-117.84,6820.72
    note-enUS If you find a Rabid Thistle Bear, use [Tharnariun's Hope] then aggro it
    note-ptBR Se encontrar um Rabid Thistle Bear, use [Tharnariun's Hope] e depois atraia-o
    note-enUS Be careful as they cast [Rabies] (Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)
    note-ptBR Cuidado, eles lançam [Rabies] (Instantâneo corpo a corpo: reduz TODA a regeneração de vida em 50% por 10 minutos)
    objective 2118/1
    use 7586
step
    goto 1439 @48.53,6748.67
    note-enUS Kite 2-3 Vile Sprites toward Asterion (Remember to use [Frost Nova]) Kill them when you accept the quest
    note-ptBR Leve 2-3 Vile Sprites (kite) até Asterion (lembre-se de usar [Frost Nova]). Mate-os quando aceitar a missão
    note-enUS Talk to Asterion
    note-ptBR Fale com Asterion
    turnin 954
    accept 955
step
    path closest 1439 @22.33,6736.44 @28.88,6669.2 @58.36,6649.98 @-6.49,6603.26 @-45.79,6638.63 @-17.62,6695.4 @-62.16,6719.41 @-130.94,6712.86 @-36.62,6760.9 @22.33,6736.44
    note-enUS Be careful as Licillin (rare) may be up
    note-ptBR Cuidado, Licillin (raro) pode estar presente
    note-enUS He casts [Shadow Bolt] (Ranged Cast: Deals 55-70 Shadow damage)
    note-ptBR Ele lança [Shadow Bolt] (Lançamento à distância: causa 55-70 de dano de Sombra)
    note-enUS Kill Vile Sprites and Wild Grells. Loot them for their Grell Earrings
    note-ptBR Mate Vile Sprites e Wild Grells. Saqueie-os para obter Grell Earrings
    note-enUS Be careful as the Vile Sprites cast [Poison] (Melee Instant: Deals 3 damage every 3 seconds for 15 seconds) and Wild Grells cast [Crazed] (Self Instant: Increases attack speed by 20% at <20% health)
    note-ptBR Cuidado, os Vile Sprites lançam [Poison] (Instantâneo corpo a corpo: 3 de dano a cada 3 segundos por 15 segundos) e os Wild Grells lançam [Crazed] (Instantâneo em si: +20% de velocidade de ataque com <20% de vida)
    objective 955/1
step
    goto 1439 @48.53,6748.67
    note-enUS Talk to Asterion
    note-ptBR Fale com Asterion
    turnin 955
    accept 956
step
    path seq 1439 @-38.58,6739.5 @-66.75,6683.61 @-67.4,6672.25 @-34,6601.51 @-115.22,6626.4 @-160.41,6690.16 @-187.27,6708.93 @-165.65,6728.15 @-38.58,6739.5 @-66.75,6683.61 @-67.4,6672.25 @-34,6601.51 @-115.22,6626.4 @-160.41,6690.16 @-187.27,6708.93
    goto 1439 @-165.65,6728.15
    note-enUS Kill Deth'ryll Satyrs. Loot them for the Ancient Moonstone Seal
    note-ptBR Mate Deth'ryll Satyrs. Saqueie-os para obter o Ancient Moonstone Seal
    note-enUS Be careful as they cast [Shoot] (Ranged Cast: Deals 15-25 damage)
    note-ptBR Cuidado, eles lançam [Shoot] (Lançamento à distância: causa 15-25 de dano)
    objective 956/1
step
    goto 1439 @48.53,6748.67
    note-enUS Talk to Asterion
    note-ptBR Fale com Asterion
    turnin 956
    accept 957
step
    goto 1439 @397.65,6437.76
    level 10
    note-enUS Grind to 6625+/7600xp en route back to Tharnariun
    note-ptBR Mate monstros até 6625+/7600xp no caminho de volta a Tharnariun
step
    goto 1439 @397.65,6437.76
    note-enUS Talk to Tharnariun
    note-ptBR Fale com Tharnariun
    turnin 2118
    accept 2138
step
    path seq 1439 @539.13,6409.82
    goto 1439 @600.7,6425.1
    note-enUS Talk to Cerellean
    note-ptBR Fale com Cerellean
    accept 963
step
    goto 1439 @543.06,6342.57
    note-enUS Kill Pygmy Tide Crawlers. Loot them for their Crawler Legs
    note-ptBR Mate Pygmy Tide Crawlers. Saqueie-os para obter Crawler Legs
    objective 983/1 |opt
    note-enUS Talk to Gwennyth
    note-ptBR Fale com Gwennyth
    accept 3524
step
    goto 1439 @561.4,6343.01
    note-enUS Talk to Caylais
    note-ptBR Fale com Caylais
    fp
    note-enUS Get the Auberdine flight path
    note-ptBR Pegue o ponto de voo de Auberdine
step
    path seq 1439 @569.26,6373.14 @596.11,6334.27 @592.84,6265.72 @600.7,6228.6 @567.29,6154.37
    goto 1439 @558.78,6111.57
    note-enUS Kill Pygmy Tide Crawlers and Young Reef Crawlers. Loot them for their Crawler Legs
    note-ptBR Mate Pygmy Tide Crawlers e Young Reef Crawlers. Saqueie-os para obter Crawler Legs
    objective 983/1 |opt
    note-enUS Save the [Murloc Eyes] you loot from the Greymist Coastrunners and Greymist Raiders
    note-ptBR Guarde os [Murloc Eyes] que saquear dos Greymist Coastrunners e Greymist Raiders
    collect 730 3 |quest 38 |q 38/1 |opt
    note-enUS Loot the Beached Sea Creature
    note-ptBR Saqueie a Beached Sea Creature
    note-enUS Be careful as the nearby Greymist Coastrunners have [Increased Movespeed]
    note-ptBR Cuidado, os Greymist Coastrunners próximos têm [Increased Movespeed]
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    objective 3524/1
step
    goto 1439 @569.26,6373.14
    note-enUS Kill Pygmy Tide Crawlers and Young Reef Crawlers. Loot them for their Crawler Legs
    note-ptBR Mate Pygmy Tide Crawlers e Young Reef Crawlers. Saqueie-os para obter Crawler Legs
    objective 983/1
step
    goto 1439 @393.72,5993.24
    note-enUS Run toward the Furbolg Camp
    note-ptBR Corra em direção ao Furbolg Camp
    note-enUS Do not attempt to fight the Blackwood Windtalker
    note-ptBR Não tente lutar com o Blackwood Windtalker
    objective 984/1
step
    goto 1439 @302.02,5726.43
    note-enUS Talk to Tysha
    note-ptBR Fale com Tysha
    accept 953
step
    path seq 1439 @161.19,5684.51
    goto 1439 @166.43,5633.86
    note-enUS Avoid pulling Lady Moongazer (rare) if she's up
    note-ptBR Evite puxar Lady Moongazer (rara) se ela estiver presente
    note-enUS Kill Anaya Dawnrunner. Loot her for Anaya's Pendant
    note-ptBR Mate Anaya Dawnrunner. Saqueie-a para obter o Anaya's Pendant
    objective 963/1 |opt
    note-enUS Kill Cursed Highbornes and Writhing Highbornes. Loot them for Highborne Relics
    note-ptBR Mate Cursed Highbornes e Writhing Highbornes. Saqueie-os para obter Highborne Relics
    note-enUS Kill Wailing Highbornes only if they're in your way
    note-ptBR Mate Wailing Highbornes somente se estiverem no seu caminho
    objective 958/1 |opt
    note-enUS Click the Ancient Flame
    note-ptBR Clique na Ancient Flame
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    objective 957/1
step
    goto 1439 @148.09,5575.78
    note-enUS Click The Fall of Ameth'Aran on the ground
    note-ptBR Clique em The Fall of Ameth'Aran no chão
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    objective 953/2
step
    goto 1439 @105.52,5770.1
    note-enUS Click The Lay of Ameth'Aran on the ground
    note-ptBR Clique em The Lay of Ameth'Aran no chão
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    objective 953/1
step
    goto 1439 @302.02,5726.43
    note-enUS Talk to Tysha
    note-ptBR Fale com Tysha
    turnin 953
step
    path seq 1439 @206.39,5802.41 @117.96,5820.32 @71.46,5788 @87.18,5713.77 @93.07,5585.83 @165.78,5564.87 @242.41,5641.72
    goto 1439 @206.39,5802.41
    note-enUS Kill Cursed Highbornes and Writhing Highbornes
    note-ptBR Mate Cursed Highbornes e Writhing Highbornes
    note-enUS Kill Wailing Highbornes only if they're in your way
    note-ptBR Mate Wailing Highbornes somente se estiverem no seu caminho
    objective 958/1
step
    goto 1439 @161.19,5684.51
    note-enUS Kill Anaya Dawnrunner. Loot her for Anaya's Pendant
    note-ptBR Mate Anaya Dawnrunner. Saqueie-a para obter o Anaya's Pendant
    objective 963/1
step
    ifonquest 958
    path seq 1439 @-22.21,5999.79 @-54.96,6015.51
    goto 1439 @210.32,6739.5 30
    note-enUS Go inside the cave
    note-ptBR Entre na caverna
    note-enUS Avoid Thistle Bears, Moonkins, and Raging Moonkins en route (if possible)
    note-ptBR Evite Thistle Bears, Moonkins e Raging Moonkins no caminho (se possível)
    note-enUS Kill the Moonkin Oracle inside the cave
    note-ptBR Mate o Moonkin Oracle dentro da caverna
    note-enUS Be careful as it casts [Wrath] (Ranged Cast: Deals 30-45 Nature damage), [Moonfire] (Ranged Instant: Deals 20-30 Nature damage, then 44 Nature damage over 12 seconds), and [Regrowth] (Self Cast: Heals for about 150 damage. Rare, but run if this happens)
    note-ptBR Cuidado, ele lança [Wrath] (à distância: 30-45 de dano de Natureza), [Moonfire] (instantâneo: 20-30 de dano de Natureza e mais 44 em 12 segundos) e [Regrowth] (em si: cura cerca de 150. Raro, mas fuja se acontecer)
    note-enUS You can LoS his [Wrath] behind the rocks inside the mouth of the cave
    note-ptBR Você pode usar as pedras na entrada da caverna para bloquear a linha de visão do [Wrath] dele
step
    goto 1439 @47.88,6748.67
    note-enUS Talk to Asterion
    note-ptBR Fale com Asterion
    turnin 957 |reward 3
step
    ifnotturnedin 3524
    goto 1439 @488.69,6564.83
    note-enUS Talk to Dalmond
    note-ptBR Fale com Dalmond
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
step
    goto 1439 @491.97,6582.3
    note-enUS Talk to Thundris
    note-ptBR Fale com Thundris
    turnin 958
step
    goto 1439 @472.97,6557.85
    note-enUS Talk to Alanndarian
    note-ptBR Fale com Alanndarian
    turnin 2178
step
    goto 1439 @362.93,6434.27
    note-enUS Talk to Terenthis
    note-ptBR Fale com Terenthis
    turnin 984
    accept 985
    accept 4761
step
    goto 1439 @541.75,6313.31
    note-enUS Click Buzzbox 827
    note-ptBR Clique em Buzzbox 827
    turnin 983
    accept 1001
step
    path seq 1439 @536.51,6365.28
    goto 1439 @543.06,6342.57
    note-enUS Talk to Gwennyth
    note-ptBR Fale com Gwennyth
    turnin 3524
    accept 4681
step
    goto 1439 @533.23,6399.77
    note-enUS Talk to Laird
    note-ptBR Fale com Laird
    note-enUS Buy up to 40 [Longjaw Mud Snappers] from him
    note-ptBR Compre até 40 [Longjaw Mud Snappers] dele
    collect 4592 40 |quest 4681 |q 4681/1
step
    path seq 1439 @539.13,6409.82
    goto 1439 @600.7,6425.1
    note-enUS Talk to Cerellean
    note-ptBR Fale com Cerellean
    turnin 963
step
    path seq 1439 @786.06,6488.85 @818.81,6419.86
    goto 1439 @854.84,6310.26
    note-enUS Kill Darkshore Threshers
    note-ptBR Mate Darkshore Threshers
    note-enUS Do NOT go out of your way for these
    note-ptBR NÃO saia do caminho por causa disso
    objective 1001/1 |opt
    note-enUS Run along the dock toward the Sea Turtle Remains
    note-ptBR Corra pelo cais em direção aos Sea Turtle Remains
    note-enUS Swim underwater
    note-ptBR Nade debaixo d'água
    note-enUS Loot the Sea Turtle Remains
    note-ptBR Saqueie os Sea Turtle Remains
    objective 4681/1
step
    path seq 1439 @575.81,6381.43 @596.77,6329.91 @581.05,6209.82 @575.15,6144.32 @545.68,6010.27 @634.1,5983.63 @634.76,5915.51 @537.82,5840.4 @575.81,6381.43 @596.77,6329.91 @581.05,6209.82 @575.15,6144.32 @545.68,6010.27 @634.1,5983.63 @634.76,5915.51
    goto 1439 @537.82,5840.4
    level 11
    note-enUS Grind to 7825+/8800xp
    note-ptBR Mate monstros até 7825+/8800xp
step
    path seq 1439 @539.78,6364.84
    goto 1439 @543.06,6342.57
    note-enUS Talk to Gwennyth
    note-ptBR Fale com Gwennyth
    turnin 4681 |reward 1
step
    goto 1439 @515.55,6406.32
    note-enUS ===PAY ATTENTION===
    note-ptBR ===PRESTE ATENÇÃO===
    note-enUS Talk to Shaussiy
    note-ptBR Fale com Shaussiy
    note-enUS If this is your first time doing a Hearthstone Batch, watch the guide for it below
    note-ptBR Se esta for sua primeira vez fazendo um Hearthstone Batch, assista ao guia abaixo
    note-enUS Open the "Set Hearthstone" menu, then cast [Hearthstone]
    note-ptBR Abra o menu "Definir Pedra de Regresso" e depois use a [Hearthstone]
    hearth
    note-enUS Hearthstone BATCH from Auberdine to Ironforge
    note-ptBR Use a pedra de regresso em BATCH de Auberdine para Ironforge
step
    goto 1455 @-928.4,-4614.51
    note-enUS Talk to Dink
    note-ptBR Fale com Dink
    trainer
    note-enUS Train your class spells (Fireball r3, Dampen Magic)
    note-ptBR Treine suas magias de classe (Fireball r3, Dampen Magic)
    note-enUS Total Cost: 12s
    note-ptBR Custo total: 12s
    note-enUS Remember you may want money for a [Bronze Tube] (8s each) and Thelsamar flying (1s 10c)
    note-ptBR Lembre-se: talvez você queira dinheiro para um [Bronze Tube] (8s cada) e o voo de Thelsamar (1s 10c)
step
    only Gnome
    goto 1455 @-1152.39,-4820.91
    note-enUS Start spam casting [Conjure Water r2] to conjure as much water as possible before taking the flight
    note-ptBR Comece a conjurar [Conjure Water r2] sem parar para fazer o máximo de água possível antes de pegar o voo
    note-enUS Talk to Gryth
    note-ptBR Fale com Gryth
    accept 6392
step
    goto 1455 @-1152.39,-4820.91
    note-enUS Talk to Gryth
    note-ptBR Fale com Gryth
    fp
    note-enUS Fly to Thelsamar
    note-ptBR Voe para Thelsamar
]==])

register([==[
#format 1
#id forever.a.12-14-adv-loch-modan-mage-aoe
#name 12-14 ADV Loch Modan Mage AoE
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 2
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#only Mage
#levels 12-14
#name-ptBR 12-14 Avançado Loch Modan Mago AoE
#group Mage AoE - Advanced (Alliance)
#group-ptBR Mago AoE - Avançado (Aliança)
#recommend Human Mage Gnome Mage
#next forever.a.14-16-adv-darkshore-2-mage-aoe

step
    note-enUS As you quest through Loch Modan, save ALL of the [Chunks of Boar Meat] you loot for later
    note-ptBR Enquanto faz missões em Loch Modan, guarde TODOS os [Chunks of Boar Meat] que saquear para depois
    zone 1432
    note-enUS Travel to Loch Modan
    note-ptBR Vá até Loch Modan
step
    goto 1432 @-2602.54,-5832.73
    note-enUS Talk to Cobbleflint
    note-ptBR Fale com Cobbleflint
    accept 224
step
    path seq 1432 @-2635.61,-5879.14 @-2645.27,-5874.91 @-2631.48,-5847.5
    goto 1432 @-2634.59,-5842.81
    note-enUS Enter the Bunker. Go to the top floor
    note-ptBR Entre no Bunker. Vá para o último andar
    note-enUS Talk to Rugelfuss
    note-ptBR Fale com Rugelfuss
    accept 267
step
    goto 1432 @-2729.4,-5534.96
    note-enUS Kill Mountain Boars. Loot them for their Boar Intestines
    note-ptBR Mate Mountain Boars. Saqueie-os para obter Boar Intestines
    note-enUS Kill Elder Black Bears. Loot them for their Bear Meat
    note-ptBR Mate Elder Black Bears. Saqueie-os para obter Bear Meat
    note-enUS Kill Forest Lurkers. Loot them for their Spider Ichor
    note-ptBR Mate Forest Lurkers. Saqueie-os para obter Spider Ichor
    note-enUS Remember to kite them to Mountaineers if needed
    note-ptBR Lembre-se de kitá-los até os Mountaineers, se necessário
    note-enUS Be careful as Mountain Boars cast [Charge] (Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)
    note-ptBR Cuidado, Mountain Boars lançam [Charge] (Instantâneo em si: aumenta a velocidade por 3 segundos, causando 40-100 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)
    collect 3172 3 |quest 418 |q 418/1 |opt
    collect 3173 3 |quest 418 |q 418/1 |opt
    collect 3174 3 |quest 418 |q 418/1 |opt
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
    goto 1432 @-2602.54,-5832.73
    note-enUS Talk to Cobbleflint
    note-ptBR Fale com Cobbleflint
    turnin 224
step
    path seq 1432 @-2635.61,-5879.14 @-2645.27,-5874.91 @-2631.48,-5847.5
    goto 1432 @-2634.59,-5842.81
    note-enUS Enter the Bunker. Go to the top floor
    note-ptBR Entre no Bunker. Vá para o último andar
    note-enUS Talk to Rugelfuss
    note-ptBR Fale com Rugelfuss
    turnin 267
step
    ifonquest 1339
    goto 1432 @-2643.89,-4817.34 30
    note-enUS Kill Mountain Boars. Loot them for their Boar Intestines
    note-ptBR Mate Mountain Boars. Saqueie-os para obter Boar Intestines
    note-enUS Kill Elder Black Bears. Loot them for their Bear Meat
    note-ptBR Mate Elder Black Bears. Saqueie-os para obter Bear Meat
    note-enUS Kill Forest Lurkers. Loot them for their Spider Ichor
    note-ptBR Mate Forest Lurkers. Saqueie-os para obter Spider Ichor
    note-enUS Remember to kite them to Mountaineers if needed
    note-ptBR Lembre-se de kitá-los até os Mountaineers, se necessário
    note-enUS Be careful as Mountain Boars cast [Charge] (Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)
    note-ptBR Cuidado, Mountain Boars lançam [Charge] (Instantâneo em si: aumenta a velocidade por 3 segundos, causando 40-100 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)
    collect 3172 3 |quest 418 |q 418/1 |opt
    collect 3173 3 |quest 418 |q 418/1 |opt
    collect 3174 3 |quest 418 |q 418/1 |opt
    note-enUS Travel to Algaz Station
    note-ptBR Vá até Algaz Station
step
    ifonquest 1339
    goto 1432 @-2659.34,-4822.3
    note-enUS Talk to Gothor
    note-ptBR Fale com Gothor
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
step
    goto 1432 @-2676.82,-4825.93
    note-enUS Go Upstairs
    note-ptBR Suba as escadas
    note-enUS Talk to Stormpike
    note-ptBR Fale com Stormpike
    turnin 353 |only Human
    turnin 1339
    accept 1338
    accept 307
step
    ifonquest 307
    goto 1432 @-2972.13,-4836.1 40
    note-enUS Kill Mountain Boars. Loot them for their Boar Intestines
    note-ptBR Mate Mountain Boars. Saqueie-os para obter Boar Intestines
    note-enUS Kill Elder Black Bears. Loot them for their Bear Meat
    note-ptBR Mate Elder Black Bears. Saqueie-os para obter Bear Meat
    note-enUS Kill Forest Lurkers. Loot them for their Spider Ichor
    note-ptBR Mate Forest Lurkers. Saqueie-os para obter Spider Ichor
    note-enUS Remember to kite them to Mountaineers if needed
    note-ptBR Lembre-se de kitá-los até os Mountaineers, se necessário
    note-enUS Be careful as Mountain Boars cast [Charge] (Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)
    note-ptBR Cuidado, Mountain Boars lançam [Charge] (Instantâneo em si: aumenta a velocidade por 3 segundos, causando 40-100 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)
    collect 3172 3 |quest 418 |q 418/1 |opt
    collect 3173 3 |quest 418 |q 418/1 |opt
    collect 3174 3 |quest 418 |q 418/1 |opt
    note-enUS Kill Tunnel Rats. Loot them for their Tunnel Rat Ears
    note-ptBR Mate Tunnel Rats. Saqueie-os para obter Tunnel Rat Ears
    objective 416/1 |opt
    note-enUS Travel to the entrance of the Mine
    note-ptBR Vá até a entrada da mina
step
    path seq 1432 @-2971.58,-4854.31 @-2998.33,-4868.66 @-2965.79,-4891.84 @-2983.99,-4892.58 @-2955.86,-4919.99 @-2989.51,-4910.05 @-2993.09,-4945.19 @-2957.24,-4945.37 @-2971.58,-4854.31 @-2998.33,-4868.66 @-2965.79,-4891.84 @-2983.99,-4892.58 @-2955.86,-4919.99 @-2989.51,-4910.05 @-2993.09,-4945.19
    goto 1432 @-2957.24,-4945.37
    note-enUS Loot the Miners' Gear on the ground. They share spawnpoints
    note-ptBR Saqueie o Miners' Gear no chão. Eles compartilham pontos de spawn
    note-enUS Be careful as the Tunnel Rat Geomancers cast [Quick Flame Ward] (Self Cast: Gives 10-second fire immunity) and [Fire Blast] (Ranged Instant: Deals 20-30 Fire damage)
    note-ptBR Cuidado, os Tunnel Rat Geomancers lançam [Quick Flame Ward] (Lançamento em si: imunidade a fogo por 10 segundos) e [Fire Blast] (Instantâneo à distância: causa 20-30 de dano de Fogo)
    objective 307/1
step
    ifonquest 307
    goto 1432 @-2972.13,-4836.1 40
    note-enUS Exit the Mine
    note-ptBR Saia da mina
step
    path closest 1432 @-2942.06,-4812.55 @-2971.3,-4769.69 @-3018.47,-4681.21 @-3079.98,-4688.38 @-3054.6,-4752.95 @-3087.98,-4820.83 @-3092.67,-4944.27 @-3023.71,-4980.88 @-3018.47,-4938.75 @-3065.36,-4878.41 @-3038.88,-4834.81 @-2942.06,-4812.55
    note-enUS Kill Tunnel Rat Scouts, Tunnel Rat Vermin, Tunnel Rat Kobolds, and Tunnel Rat Foragers. Loot them for their Tunnel Rat Ears
    note-ptBR Mate Tunnel Rat Scouts, Tunnel Rat Vermin, Tunnel Rat Kobolds e Tunnel Rat Foragers. Saqueie-os para obter Tunnel Rat Ears
    note-enUS Be careful as Tunnel Rat Kobolds cast [Thrash] (Charges 2 extra attacks every 10 seconds)
    note-ptBR Cuidado, Tunnel Rat Kobolds lançam [Thrash] (Carrega 2 ataques extras a cada 10 segundos)
    objective 416/1
step
    ifonquest 307
    goto 1432 @-2643.89,-4817.34 30
    note-enUS Kill Mountain Boars. Loot them for their Boar Intestines
    note-ptBR Mate Mountain Boars. Saqueie-os para obter Boar Intestines
    note-enUS Kill Elder Black Bears. Loot them for their Bear Meat
    note-ptBR Mate Elder Black Bears. Saqueie-os para obter Bear Meat
    note-enUS Kill Forest Lurkers. Loot them for their Spider Ichor
    note-ptBR Mate Forest Lurkers. Saqueie-os para obter Spider Ichor
    note-enUS Remember to kite them to Mountaineers if needed
    note-ptBR Lembre-se de kitá-los até os Mountaineers, se necessário
    note-enUS Be careful as Mountain Boars cast [Charge] (Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)
    note-ptBR Cuidado, Mountain Boars lançam [Charge] (Instantâneo em si: aumenta a velocidade por 3 segundos, causando 40-100 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)
    collect 3172 3 |quest 418 |q 418/1 |opt
    collect 3173 3 |quest 418 |q 418/1 |opt
    collect 3174 3 |quest 418 |q 418/1 |opt
    note-enUS Travel to Algaz Station
    note-ptBR Vá até Algaz Station
step
    ifonquest 307
    goto 1432 @-2659.34,-4822.3
    note-enUS Talk to Gothor
    note-ptBR Fale com Gothor
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
step
    goto 1432 @-2676.82,-4825.93
    note-enUS Go Upstairs
    note-ptBR Suba as escadas
    note-enUS Talk to Stormpike
    note-ptBR Fale com Stormpike
    turnin 307 |reward 2
step
    path closest 1432 @-2849.11,-4944.45 @-2895.45,-5014.91 @-2957.24,-5067.89 @-3008.26,-5098.06 @-3087.43,-5091.25 @-3046.05,-5189.48 @-2918.62,-5233.08 @-2817.66,-5471.86 @-2809.66,-5343.64 @-2819.87,-5220.39 @-2740.98,-5225.17 @-2794.49,-5102.66 @-2743.74,-5021.16 @-2704.57,-4958.43 @-2645.82,-4895.89 @-2849.11,-4944.45
    note-enUS Kill Mountain Boars. Loot them for their Boar Intestines
    note-ptBR Mate Mountain Boars. Saqueie-os para obter Boar Intestines
    note-enUS Kill Elder Black Bears. Loot them for their Bear Meat
    note-ptBR Mate Elder Black Bears. Saqueie-os para obter Bear Meat
    note-enUS Kill Forest Lurkers. Loot them for their Spider Ichor
    note-ptBR Mate Forest Lurkers. Saqueie-os para obter Spider Ichor
    note-enUS Remember to kite them to Mountaineers if needed
    note-ptBR Lembre-se de kitá-los até os Mountaineers, se necessário
    note-enUS Be careful as Mountain Boars cast [Charge] (Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)
    note-ptBR Cuidado, Mountain Boars lançam [Charge] (Instantâneo em si: aumenta a velocidade por 3 segundos, causando 40-100 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)
    collect 3172 3 |quest 418 |q 418/1
    collect 3173 3 |quest 418 |q 418/1
    collect 3174 3 |quest 418 |q 418/1
step
    path seq 1432 @-3019.3,-5354.5 @-3014.88,-5366.82
    goto 1432 @-3020.68,-5358.91
    note-enUS Kill Mangy Mountain Boars and Mountain Boars. Loot them for their Boar Intestines
    note-ptBR Mate Mangy Mountain Boars e Mountain Boars. Saqueie-os para obter Boar Intestines
    note-enUS Kill Grizzled Black Bears and Elder Black Bears. Loot them for their Bear Meat
    note-ptBR Mate Grizzled Black Bears e Elder Black Bears. Saqueie-os para obter Bear Meat
    note-enUS Kill Cliff Lurkers and Forest Lurkers. Loot them for their Spider Ichor
    note-ptBR Mate Cliff Lurkers e Forest Lurkers. Saqueie-os para obter Spider Ichor
    note-enUS Remember to kite them to Mountaineers if needed
    note-ptBR Lembre-se de kitá-los até os Mountaineers, se necessário
    note-enUS Be careful as Mountain Boars cast [Charge] (Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)
    note-ptBR Cuidado, Mountain Boars lançam [Charge] (Instantâneo em si: aumenta a velocidade por 3 segundos, causando 40-100 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)
    collect 3172 3 |quest 418 |q 418/1 |opt
    collect 3173 3 |quest 418 |q 418/1 |opt
    collect 3174 3 |quest 418 |q 418/1 |opt
    note-enUS Talk to Brock and Jern
    note-ptBR Fale com Brock e Jern
    note-enUS They can be inside or outside the building
    note-ptBR Eles podem estar dentro ou fora do prédio
    turnin 6392 |only Gnome
    accept 436
step
    ifturnedin 6392
    goto 1432 @-3020.68,-5358.91
    note-enUS Talk to Jern
    note-ptBR Fale com Jern
    note-enUS He can be inside or outside the building
    note-ptBR Ele pode estar dentro ou fora do prédio
    accept 436
step
    only Human
    path closest 1432 @-2849.11,-4944.45 @-2895.45,-5014.91 @-2957.24,-5067.89 @-3008.26,-5098.06 @-3087.43,-5091.25 @-3046.05,-5189.48 @-2918.62,-5233.08 @-2817.66,-5471.86 @-2809.66,-5343.64 @-2819.87,-5220.39 @-2740.98,-5225.17 @-2794.49,-5102.66 @-2743.74,-5021.16 @-2704.57,-4958.43 @-2645.82,-4895.89 @-2849.11,-4944.45
    level 13
    note-enUS Grind to 8675+/11400xp
    note-ptBR Mate monstros até 8675+/11400xp
step
    only Gnome
    ifonquest 6392
    path closest 1432 @-2849.11,-4944.45 @-2895.45,-5014.91 @-2957.24,-5067.89 @-3008.26,-5098.06 @-3087.43,-5091.25 @-3046.05,-5189.48 @-2918.62,-5233.08 @-2817.66,-5471.86 @-2809.66,-5343.64 @-2819.87,-5220.39 @-2740.98,-5225.17 @-2794.49,-5102.66 @-2743.74,-5021.16 @-2704.57,-4958.43 @-2645.82,-4895.89 @-2849.11,-4944.45
    level 13
    note-enUS Grind to 6545+/11400xp
    note-ptBR Mate monstros até 6545+/11400xp
step
    only Gnome
    ifonquest 436
    path seq 1432 @-3266.44,-5656.19 @-3354.99,-5726.64 @-3425.6,-5738.42 |only Gnome
    goto 1432 @-3781.98,-5702.54 20 |only Gnome
    path seq 1432 @-3812.59,-5694.63
    goto 1432 @-3783.63,-5713.77
    note-enUS Travel toward Aldren |only Gnome
    note-ptBR Vá em direção a Aldren |only Gnome
    note-enUS Talk to Aldren |only Gnome
    note-ptBR Fale com Aldren |only Gnome
    vendor |only Gnome |opt
    note-enUS Buy the [Wise Man's Belt] from him (if it's up) |only Gnome
    note-ptBR Compre o [Wise Man's Belt] dele (se estiver disponível) |only Gnome
    note-enUS Talk to Ironband and Magmar
    note-ptBR Fale com Ironband e Magmar
    accept 298
    turnin 436
step
    only Gnome
    ifturnedin 436
    goto 1432 @-3812.59,-5694.63
    note-enUS Talk to Ironband
    note-ptBR Fale com Ironband
    accept 298
step
    only Gnome
    ifonquest 298
    path seq 1432 @-3816.18,-5786.25 @-4013.68,-5791.58 @-4124.56,-5742.1 @-4258.62,-5650.48 |only Gnome
    goto 1432 @-4296.41,-5694.63 20 |only Gnome
    goto 1432 @-4296.41,-5694.63
    note-enUS Travel to Daryl |only Gnome
    note-ptBR Vá até Daryl |only Gnome
    note-enUS Talk to Daryl
    note-ptBR Fale com Daryl
    accept 257
step
    only Gnome
    ifonquest 257
    path closest 1432 @-4197.38,-5699.97 @-4109.39,-5856.89 @-4055.33,-5760.68 @-4118.49,-5601.37 @-4092.57,-5553.35 @-4128.42,-5517.3 @-4190.21,-5588.49 @-4197.38,-5699.97
    note-enUS Kill Mountain Buzzards
    note-ptBR Mate Mountain Buzzards
    objective 257/1
step
    only Gnome
    ifcomplete 257
    path seq 1432 @-4258.62,-5650.48 |only Gnome
    goto 1432 @-4296.41,-5694.63 20 |only Gnome
    goto 1432 @-4296.41,-5694.63
    note-enUS Travel to Daryl |only Gnome
    note-ptBR Vá até Daryl |only Gnome
    note-enUS Talk to Daryl
    note-ptBR Fale com Daryl
    turnin 257 |reward 2
step
    only Gnome
    path closest 1432 @-2849.11,-4944.45 @-2895.45,-5014.91 @-2957.24,-5067.89 @-3008.26,-5098.06 @-3087.43,-5091.25 @-3046.05,-5189.48 @-2918.62,-5233.08 @-2817.66,-5471.86 @-2809.66,-5343.64 @-2819.87,-5220.39 @-2740.98,-5225.17 @-2794.49,-5102.66 @-2743.74,-5021.16 @-2704.57,-4958.43 @-2645.82,-4895.89 @-2849.11,-4944.45
    note-enUS Kill Mangy Mountain Boars and Mountain Boars. Loot them for their Boar Intestines
    note-ptBR Mate Mangy Mountain Boars e Mountain Boars. Saqueie-os para obter Boar Intestines
    note-enUS Kill Grizzled Black Bears and Elder Black Bears. Loot them for their Bear Meat
    note-ptBR Mate Grizzled Black Bears e Elder Black Bears. Saqueie-os para obter Bear Meat
    note-enUS Kill Cliff Lurkers and Forest Lurkers. Loot them for their Spider Ichor
    note-ptBR Mate Cliff Lurkers e Forest Lurkers. Saqueie-os para obter Spider Ichor
    note-enUS Remember to kite them to Mountaineers if needed
    note-ptBR Lembre-se de kitá-los até os Mountaineers, se necessário
    note-enUS Be careful as Mountain Boars cast [Charge] (Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)
    note-ptBR Cuidado, Mountain Boars lançam [Charge] (Instantâneo em si: aumenta a velocidade por 3 segundos, causando 40-100 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)
    collect 3172 3 |quest 418 |q 418/1
    collect 3173 3 |quest 418 |q 418/1
    collect 3174 3 |quest 418 |q 418/1
step
    only Gnome
    ifonquest 298
    path closest 1432 @-2849.11,-4944.45 @-2895.45,-5014.91 @-2957.24,-5067.89 @-3008.26,-5098.06 @-3087.43,-5091.25 @-3046.05,-5189.48 @-2918.62,-5233.08 @-2817.66,-5471.86 @-2809.66,-5343.64 @-2819.87,-5220.39 @-2740.98,-5225.17 @-2794.49,-5102.66 @-2743.74,-5021.16 @-2704.57,-4958.43 @-2645.82,-4895.89 @-2849.11,-4944.45
    level 13
    note-enUS Grind to 6780+/11400xp
    note-ptBR Mate monstros até 6780+/11400xp
step
    path seq 1432 @-2902.07,-5398.28 @-2945.1,-5360.2 @-3015.71,-5335.73 @-3025.09,-5318.44
    goto 1432 @-3017.64,-5274.66
    note-enUS Talk to Kadrell
    note-ptBR Fale com Kadrell
    note-enUS Kadrell patrols along the main Thelsamar road
    note-ptBR Kadrell patrulha a estrada principal de Thelsamar
    turnin 416 |reward 2
step
    only Gnome
    ifonquest 298
    path seq 1432 @-3019.3,-5354.5 @-3014.88,-5366.82
    goto 1432 @-3020.68,-5358.91
    note-enUS Talk to Brock and Jern
    note-ptBR Fale com Brock e Jern
    note-enUS They can be inside or outside the building
    note-ptBR Eles podem estar dentro ou fora do prédio
    turnin 6392
    turnin 298
    accept 301
step
    only Gnome
    ifturnedin 298
    path seq 1432 @-3019.3,-5354.5 @-3014.88,-5366.82
    goto 1432 @-3020.68,-5358.91
    note-enUS Talk to Brock and Jern
    note-ptBR Fale com Brock e Jern
    note-enUS They can be inside or outside the building
    note-ptBR Eles podem estar dentro ou fora do prédio
    turnin 6392
    accept 301
step
    only Gnome
    path seq 1432 @-3019.3,-5354.5
    goto 1432 @-3014.88,-5366.82
    note-enUS Talk to Brock
    note-ptBR Fale com Brock
    note-enUS He can be inside or outside the building
    note-ptBR Ele pode estar dentro ou fora do prédio
    turnin 6392
step
    path seq 1432 @-2966.06,-5365.72 @-2969.92,-5377.12
    goto 1432 @-2954.42,-5394.1 10
    note-enUS Go inside the Inn
    note-ptBR Entre na estalagem
    note-enUS Travel toward Vidra
    note-ptBR Vá em direção a Vidra
    note-enUS Talk to Vidra
    note-ptBR Fale com Vidra
    accept 418
    turnin 418
step
    goto 1432 @-2952.55,-5381.91
    note-enUS Do NOT get rid of any of your extra [Chunks of Boar Meat]
    note-ptBR NÃO se desfaça de nenhum dos seus [Chunks of Boar Meat] extras
    skill cooking 10
    note-enUS Cook [Chunks of Boar Meat] into [Roasted Boar Meat] until your [Cooking] skill reaches 10
    note-ptBR Cozinhe [Chunks of Boar Meat] em [Roasted Boar Meat] até sua habilidade de [Cooking] chegar a 10
step
    ifonquest 1338
    goto 1432 @-2952.55,-5381.91
    note-enUS Talk to Yanni
    note-ptBR Fale com Yanni
    note-enUS Buy as many [Small Brown Pouches] as you need/can
    note-ptBR Compre quantas [Small Brown Pouches] precisar/puder
    note-enUS Do NOT go below 45 Silver
    note-ptBR NÃO fique abaixo de 45 de prata
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
step
    ifonquest 1338
    goto 1432 @-2929.93,-5424.95
    note-enUS Start spam casting [Conjure Water r2] to conjure as much water as possible before taking the flight
    note-ptBR Comece a conjurar [Conjure Water r2] sem parar para fazer o máximo de água possível antes de pegar o voo
    note-enUS Talk to Thorgrum
    note-ptBR Fale com Thorgrum
    fly 1455
    note-enUS Fly to Ironforge
    note-ptBR Voe para Ironforge
step
    only Gnome
    ifonquest 301
    goto 1455 @-1303.71,-4631.08
    note-enUS Talk to Stormpike
    note-ptBR Fale com Stormpike
    turnin 301
step
    goto 1455 @-1249.87,-4793.31
    note-enUS Talk to Cogspinner
    note-ptBR Fale com Cogspinner
    vendor
    note-enUS Buy a [Bronze Tube] from him if its up
    note-ptBR Compre um [Bronze Tube] dele, se estiver disponível
step
    only Gnome
    goto 1455 @-1317.71,-4839.48 30
    note-enUS Go inside the Deeprun Tram
    note-ptBR Entre no Deeprun Tram
    note-enUS Talk to Monty
    note-ptBR Fale com Monty
    accept 6661
step
    only Gnome
    note-enUS Use the [Rat Catcher's Flute] on the Deeprun Rats in the Deeprun Tram
    note-ptBR Use a [Rat Catcher's Flute] nos Deeprun Rats no Deeprun Tram
    objective 6661/1
    use 17117
step
    note-enUS Talk to Monty
    note-ptBR Fale com Monty
    note-enUS Wait out the RP |only Gnome
    note-ptBR Espere o RP terminar |only Gnome
    turnin 6661 |only Gnome
    accept 6662
step
    ifonquest 6662
    note-enUS Ride the Deeprun Tram whilst spam casting [Conjure Water r2]
    note-ptBR Pegue o Deeprun Tram enquanto conjura [Conjure Water r2] sem parar
    note-enUS Talk to Nipsy on the other side of the Deeprun Tram
    note-ptBR Fale com Nipsy do outro lado do Deeprun Tram
    turnin 6662
step
    ifonquest 1338
    zone 1453
    note-enUS Enter Stormwind City
    note-ptBR Entre em Stormwind City
step
    path seq 1453 @574.95,-8388.3 @614.33,-8380.77
    goto 1453 @638.26,-8342.22 15
    note-enUS Travel toward Billibub
    note-ptBR Vá em direção a Billibub
    note-enUS Talk to Billibub
    note-ptBR Fale com Billibub
    vendor
    note-enUS Buy a [Bronze Tube] from him if its up
    note-ptBR Compre um [Bronze Tube] dele, se estiver disponível
step
    goto 1453 @600.08,-8427.2
    note-enUS Talk to Furen
    note-ptBR Fale com Furen
    turnin 1338
step
    path seq 1453 @663.94,-8451.76 @686.79,-8473.27 @678.86,-8562.64 @711.26,-8587.38 @737.6,-8557.89
    goto 1453 @719.86,-8550.36 12
    note-enUS Travel toward Baros
    note-ptBR Vá em direção a Baros
    note-enUS Go inside the building
    note-ptBR Entre no prédio
    note-enUS Talk to Baros
    note-ptBR Fale com Baros
    accept 399
step
    path seq 1453 @739.49,-8661.68 @720.67,-8699.06 @728.33,-8718.06 @699.16,-8743.88 @674.29,-8775.79 @686.25,-8815.41 @684.24,-8820.34 @687.46,-8818.01 @854.42,-8965.28
    goto 1453 @861.95,-8990.47 10
    note-enUS Jump up onto the torch, then drop down to get under Stormwind
    note-ptBR Suba na tocha e depois desça para ficar embaixo de Stormwind
    note-enUS With Shadows on "Fair" or "Low", get in the middle of Derek the Dinosaur's feet (the lighter part of the dirt) just before the blue void, then walk straight forward
    note-ptBR Com Sombras em "Razoável" ou "Baixo", fique entre os pés de Derek the Dinosaur (a parte mais clara da terra) logo antes do vazio azul e ande reto para frente
    note-enUS NOTE: There is a small chance of dying using this method. You can also walk to the Mage Tower normally if you wish
    note-ptBR NOTA: Há uma pequena chance de morrer usando este método. Se preferir, você também pode andar normalmente até a Mage Tower
    note-enUS Travel toward Jennea
    note-ptBR Vá em direção a Jennea
    note-enUS Talk to Jennea
    note-ptBR Fale com Jennea
    accept 1861 |only Gnome
    trainer
    note-enUS Train your class spells (Fire Blast r2, Arcane Intellect r2, Arcane Explosion)
    note-ptBR Treine suas magias de classe (Fire Blast r2, Arcane Intellect r2, Arcane Explosion)
    note-enUS Total Cost: 27s
    note-ptBR Custo total: 27s
    note-enUS Remember you may want money for Potions (1-3s each) and Scrolls (50c-3s each)
    note-ptBR Lembre-se: talvez você queira dinheiro para Poções (1-3s cada) e Pergaminhos (50c-3s cada)
step
    path seq 1453 @887.22,-9017.8 @871.36,-9013.14 @868.8,-9004.27 @877,-9008.03 @863.96,-9001.4 @928.62,-9010.1 @962.63,-8990.73 @949.86,-9009.38 @942.34,-9001.49
    goto 1453 @948.65,-8994.5 10
    note-enUS Exit the Mage Tower
    note-ptBR Saia da Mage Tower
    note-enUS Travel toward Charys
    note-ptBR Vá em direção a Charys
    note-enUS Enter the building
    note-ptBR Entre no prédio
    note-enUS Talk to Charys
    note-ptBR Fale com Charys
    vendor
    note-enUS Buy [Lesser Mana Potions] and [Healing Potions] from her (if they're up)
    note-ptBR Compre [Lesser Mana Potions] e [Healing Potions] dela (se estiverem disponíveis)
step
    path seq 1453 @852.4,-8920.1 @829.01,-8901.28 @789.22,-8904.59 @758.31,-8878.78 @810.33,-8832.44 @827.54,-8850.19
    goto 1453 @822.16,-8865.6 10
    note-enUS Travel toward Adair
    note-ptBR Vá em direção a Adair
    note-enUS Enter the building
    note-ptBR Entre no prédio
    note-enUS Talk to Adair
    note-ptBR Fale com Adair
    vendor
    note-enUS Buy non-intellect [Scrolls] from him (if they're up)
    note-ptBR Compre [Scrolls] sem intelecto dele (se estiverem disponíveis)
step
    path seq 1453 @680.61,-8828.67
    goto 1453 @635.44,-8863.81 8
    note-enUS Travel toward Keldric
    note-ptBR Vá em direção a Keldric
    note-enUS Talk to Keldric through the wall
    note-ptBR Fale com Keldric através da parede
    vendor
    note-enUS Buy [Lesser Healing Potions] from him (if they're up)
    note-ptBR Compre [Lesser Healing Potions] dele (se estiverem disponíveis)
step
    path seq 1453 @637.59,-8889.81
    goto 1453 @614.33,-8932.92
    note-enUS Enter the Stormwind Bank
    note-ptBR Entre no banco de Stormwind
    note-enUS Talk to Newton
    note-ptBR Fale com Newton
    note-enUS Deposit the following items into the bank:
    note-ptBR Deposite os seguintes itens no banco:
    note-enUS [Chunk of Boar Meat]
    note-ptBR [Chunk of Boar Meat]
    note-enUS [Bronze Tube]
    note-ptBR [Bronze Tube]
    note-enUS [Murloc Eyes]
    note-ptBR [Murloc Eyes]
    note-enUS [Jennea's Flask]
    note-ptBR [Jennea's Flask]
    note-enUS [Cask of Merlot]
    note-ptBR [Cask of Merlot]
    note-enUS [Scrolls]
    note-ptBR [Scrolls]
    note-enUS [Small Egg]
    note-ptBR [Small Egg]
step
    path seq 1453 @662.46,-8860.76
    goto 1453 @673.75,-8867.93 10
    note-enUS Enter the Inn
    note-ptBR Entre na estalagem
    note-enUS Travel Toward Allison
    note-ptBR Vá em direção a Allison
    note-enUS ===PAY ATTENTION===
    note-ptBR ===PRESTE ATENÇÃO===
    note-enUS Talk to Allison
    note-ptBR Fale com Allison
    note-enUS Open the "Set Hearthstone" menu, then cast [Hearthstone]
    note-ptBR Abra o menu "Definir Pedra de Regresso" e depois use a [Hearthstone]
    hearth
    note-enUS Hearthstone BATCH from Stormwind to Auberdine
    note-ptBR Use a pedra de regresso em BATCH de Stormwind para Auberdine
]==])

register([==[
#format 1
#id forever.a.14-16-adv-darkshore-2-mage-aoe
#name 14-16 ADV Darkshore 2 Mage AoE
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 2
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#only Mage
#levels 14-16
#name-ptBR 14-16 Avançado Darkshore 2 Mago AoE
#group Mage AoE - Advanced (Alliance)
#group-ptBR Mago AoE - Avançado (Aliança)
#recommend Human Mage Gnome Mage
#next forever.a.16-18-adv-westfall-mage-aoe

step
    ifnotturnedin 982
    goto 1439 @533.23,6399.77
    note-enUS Save any [Light Feathers] you get for later
    note-ptBR Guarde as [Light Feathers] que conseguir para depois
    note-enUS Talk to Laird
    note-ptBR Fale com Laird
    note-enUS Buy up to 20 [Longjaw Mud Snappers] from him
    note-ptBR Compre até 20 [Longjaw Mud Snappers] dele
    collect 4592 20 |quest 982 |q 982/1
step
    path seq 1439 @497.21,6427.72
    goto 1439 @473.63,6439.07
    note-enUS Talk to Barithras and Glynda
    note-ptBR Fale com Barithras e Glynda
    accept 947
    accept 4811
step
    goto 1439 @445.46,6536.01
    note-enUS Talk to Gorbold
    note-ptBR Fale com Gorbold
    accept 982
step
    goto 1439 @492.62,6580.99
    note-enUS Talk to Thundris
    note-ptBR Fale com Thundris
    turnin 4761
    accept 4762
step
    path seq 1439 @592.18,6666.14 @565.33,6925.96 @478.21,6985.78
    goto 1439 @438.91,7077.48
    note-enUS Kill Darkshore Threshers in the water. Loot them for their Thresher Eyes
    note-ptBR Mate Darkshore Threshers na água. Saqueie-os para obter os Thresher Eyes
    objective 1001/1 |opt
    note-enUS Loot the Silver Dawning Lockbox through the wall of the boat
    note-ptBR Saqueie o Silver Dawning Lockbox através da parede do barco
    note-enUS Use your "Interact with Target" keybind underwater next to the arrow location
    note-ptBR Use seu atalho de "Interagir com o alvo" debaixo d'água, perto da seta
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    objective 982/1
step
    goto 1439 @349.18,7133.81
    note-enUS Loot the Mist Veil Lockbox through the wall of the boat
    note-ptBR Saqueie o Mist Veil Lockbox através da parede do barco
    note-enUS Use your "Interact with Target" keybind underwater next to the arrow location
    note-ptBR Use seu atalho de "Interagir com o alvo" debaixo d'água, perto da seta
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    objective 982/2
step
    path seq 1439 @292.85,7083.16 @592.18,6666.14 @565.33,6925.96 @478.21,6985.78 @292.85,7083.16 @592.18,6666.14 @565.33,6925.96
    goto 1439 @478.21,6985.78
    note-enUS Kill Darkshore Threshers in the water. Loot them for their Thresher Eyes
    note-ptBR Mate Darkshore Threshers na água. Saqueie-os para obter os Thresher Eyes
    objective 1001/1
step
    goto 1439 @196.56,6958.71
    note-enUS Save the [Murloc Eyes] you loot from the Greymist Coastrunners and Greymist Seers
    note-ptBR Guarde os [Murloc Eyes] que saquear dos Greymist Coastrunners e Greymist Seers
    note-enUS Loot the Beached Sea Creature on the ground
    note-ptBR Saqueie a Beached Sea Creature no chão
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    accept 4723
step
    goto 1439 @193.29,7084.03
    note-enUS Click Buzzbox 411
    note-ptBR Clique em Buzzbox 411
    turnin 1001
    accept 1002
step
    ifnotturnedin 4725
    path seq 1439 @81.28,7118.96
    goto 1439 @46.57,7433.8 80
    note-enUS AoE Foreststrider Fledglings. Loot them for their Strider Meat
    note-ptBR Use AoE em Foreststrider Fledglings. Saqueie-os para obter Strider Meat
    collect 5469 5 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Moonstalker Runts and Moonstalkers. Loot them for their Moonstalker Fangs
    note-ptBR Mate Moonstalker Runts e Moonstalkers. Saqueie-os para obter Moonstalker Fangs
    objective 1002/1 |opt
    note-enUS Kill Rabid Thistle Bears
    note-ptBR Mate Rabid Thistle Bears
    note-enUS Be careful as they cast [Rabies] (Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)
    note-ptBR Cuidado, eles lançam [Rabies] (Instantâneo corpo a corpo: reduz TODA a regeneração de vida em 50% por 10 minutos)
    objective 2138/1 |opt
    note-enUS Travel toward the Beached Sea Turtle
    note-ptBR Vá em direção a Beached Sea Turtle
step
    goto 1439 @46.57,7433.8
    note-enUS Save the [Murloc Eyes] you loot from the Greymist Warriors and Greymist Netters
    note-ptBR Guarde os [Murloc Eyes] que saquear dos Greymist Warriors e Greymist Netters
    note-enUS Loot the Beached Sea Turtle on the ground
    note-ptBR Saqueie a Beached Sea Turtle no chão
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    accept 4725
step
    goto 1439 @-383.77,7222.89
    note-enUS Kill Foreststrider Fledglings. Loot them for their Strider Meat
    note-ptBR Mate Foreststrider Fledglings. Saqueie-os para obter Strider Meat
    collect 5469 5 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Moonstalker Runts and Moonstalkers. Loot them for their Moonstalker Fangs
    note-ptBR Mate Moonstalker Runts e Moonstalkers. Saqueie-os para obter Moonstalker Fangs
    objective 1002/1 |opt
    note-enUS Kill Rabid Thistle Bears
    note-ptBR Mate Rabid Thistle Bears
    note-enUS Be careful as they cast [Rabies] (Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)
    note-ptBR Cuidado, eles lançam [Rabies] (Instantâneo corpo a corpo: reduz TODA a regeneração de vida em 50% por 10 minutos)
    objective 2138/1 |opt
    note-enUS Use the [Empty Sampling Tube] in the water
    note-ptBR Use o [Empty Sampling Tube] na água
    objective 4762/1
    use 12350
step
    ifonquest 4811
    goto 1439 @-144.04,6209.82 400
    note-enUS Kill Foreststriders. Loot them for their Strider Meat
    note-ptBR Mate Foreststriders. Saqueie-os para obter Strider Meat
    collect 5469 5 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Moonstalker Runts and Moonstalkers. Loot them for their Moonstalker Fangs
    note-ptBR Mate Moonstalker Runts e Moonstalkers. Saqueie-os para obter Moonstalker Fangs
    objective 1002/1 |opt
    note-enUS Travel toward The Red Crystal
    note-ptBR Vá em direção a The Red Crystal
step
    goto 1439 @-144.04,6209.82
    note-enUS Kill Foreststrider Fledglings. Loot them for their Strider Meat
    note-ptBR Mate Foreststrider Fledglings. Saqueie-os para obter Strider Meat
    collect 5469 5 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Moonstalker Runts. Loot them for their Moonstalker Fangs
    note-ptBR Mate Moonstalker Runts. Saqueie-os para obter Moonstalker Fangs
    objective 1002/1 |opt
    note-enUS Run up to The Red Crystal
    note-ptBR Suba até The Red Crystal
    note-enUS Remember to pull the Raging Moonkins that are leashed together
    note-ptBR Lembre-se de puxar os Raging Moonkins que estão presos juntos
    objective 4811/1
step
    ifonquest 957
    goto 1439 @166.43,5633.86 175
    note-enUS Travel toward the Ancient Flame
    note-ptBR Vá em direção a Ancient Flame
step
    path seq 1439 @161.19,5684.51
    goto 1439 @166.43,5633.86
    note-enUS Kill Anaya Dawnrunner. Loot her for Anaya's Pendant
    note-ptBR Mate Anaya Dawnrunner. Saqueie-a para obter o Anaya's Pendant
    objective 963/1 |opt
    note-enUS Click the Ancient Flame
    note-ptBR Clique na Ancient Flame
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    objective 957/1
step
    path seq 1439 @161.19,5684.51 @108.79,5608.1 @155.95,5757 @161.19,5684.51 @108.79,5608.1 @155.95,5757 @161.19,5684.51
    goto 1439 @108.79,5608.1
    note-enUS Kill Anaya Dawnrunner. Loot her for Anaya's Pendant
    note-ptBR Mate Anaya Dawnrunner. Saqueie-a para obter o Anaya's Pendant
    objective 963/1
step
    goto 1439 @511.62,5618.58
    note-enUS Kill Foreststrider Fledglings. Loot them for their Strider Meat
    note-ptBR Mate Foreststrider Fledglings. Saqueie-os para obter Strider Meat
    collect 5469 5 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Moonstalker Runts and Moonstalkers. Loot them for their Moonstalker Fangs
    note-ptBR Mate Moonstalker Runts e Moonstalkers. Saqueie-os para obter Moonstalker Fangs
    objective 1002/1 |opt
    note-enUS Save the [Murloc Eyes] you loot from the Greymist Coastrunners and Greymist Seers
    note-ptBR Guarde os [Murloc Eyes] que saquear dos Greymist Coastrunners e Greymist Seers
    note-enUS Click the Beached Sea Turtle
    note-ptBR Clique na Beached Sea Turtle
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    accept 4722
step
    path closest 1439 @404.2,5796.3 @327.56,5778.83 @372.1,5556.13 @330.18,5437.8 @322.98,5252.65 @491.97,5274.48 @411.4,5376.23 @419.92,5550.46 @404.2,5796.3
    note-enUS Kill Rabid Thistle Bears
    note-ptBR Mate Rabid Thistle Bears
    note-enUS Be careful as they cast [Rabies] (Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)
    note-ptBR Cuidado, eles lançam [Rabies] (Instantâneo corpo a corpo: reduz TODA a regeneração de vida em 50% por 10 minutos)
    objective 2138/1
step
    path closest 1439 @370.14,5856.56 @307.91,5877.96 @324.29,5922.06 @328.22,5958.74 @305.95,5998.48 @373.41,6018.56 @328.22,5958.74
    note-enUS Kill Blackwood Pathfinders and Blackwood Windtalkers
    note-ptBR Mate Blackwood Pathfinders e Blackwood Windtalkers
    note-enUS Be careful as Blackwood Pathfinders cast [Thrash] (Charges 2 extra attacks every 10 seconds), and Blackwood Windtalkers cast [Gust of Wind] (melee-range aoe stun)
    note-ptBR Cuidado, Blackwood Pathfinders lançam [Thrash] (Carrega 2 ataques extras a cada 10 segundos) e Blackwood Windtalkers lançam [Gust of Wind] (atordoamento em área corpo a corpo)
    objective 985/1
    objective 985/2
step
    path closest 1439 @411.4,6095.42 @431.05,6150 @440.88,6218.99 @404.85,6253.93 @355.07,6252.62 @229.97,6275.32 @212.28,6173.14 @226.69,6113.32 @411.4,6095.42
    note-enUS Kill Moonstalker Runts Loot them for their Moonstalker Fangs
    note-ptBR Mate Moonstalker Runts. Saqueie-os para obter Moonstalker Fangs
    objective 1002/1 |opt
    note-enUS Kill Foreststrider Fledglings. Loot them for their Strider Meat
    note-ptBR Mate Foreststrider Fledglings. Saqueie-os para obter Strider Meat
    collect 5469 5 |quest 2178 |q 2178/1
step
    ifonquest 982
    goto 1439 @543.06,6342.57 150
    note-enUS Travel toward Gwennyth
    note-ptBR Vá em direção a Gwennyth
step
    path seq 1439 @536.51,6365.28
    goto 1439 @543.06,6342.57
    note-enUS Talk to Gwennyth
    note-ptBR Fale com Gwennyth
    turnin 4722
    turnin 4723
    turnin 4725
step
    ifonquest 982
    goto 1439 @533.23,6399.77
    note-enUS Talk to Laird
    note-ptBR Fale com Laird
    note-enUS Buy up to 20 [Longjaw Mud Snappers] from him
    note-ptBR Compre até 20 [Longjaw Mud Snappers] dele
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
    collect 4592 20 |quest 4763 |q 4763/1
step
    path seq 1439 @539.13,6409.82
    goto 1439 @600.7,6425.1
    note-enUS Talk to Cerellean
    note-ptBR Fale com Cerellean
    turnin 963
step
    goto 1439 @533.23,6399.77
    note-enUS Equip the [Tear of Grief]
    note-ptBR Equipe a [Tear of Grief]
    use 5611 |opt
    note-enUS Talk to Allyndia
    note-ptBR Fale com Allyndia
    note-enUS Buy 15 [Melon Juice] from her
    note-ptBR Compre 15 [Melon Juice] dela
    collect 1205 15 |quest 4763 |q 4763/1
step
    goto 1439 @533.23,6399.77
    note-enUS Talk to Allyndia
    note-ptBR Fale com Allyndia
    note-enUS Buy 10 [Melon Juice] from her
    note-ptBR Compre 10 [Melon Juice] dela
    collect 1205 10 |quest 4763 |q 4763/1
step
    goto 1439 @533.23,6399.77
    note-enUS Talk to Allyndia
    note-ptBR Fale com Allyndia
    note-enUS Buy 5 [Melon Juice] from her
    note-ptBR Compre 5 [Melon Juice] dela
    collect 1205 5 |quest 4763 |q 4763/1
step
    path seq 1439 @488.69,6451.3 @487.38,6481.87
    goto 1439 @489.35,6506.32 15
    note-enUS Travel toward Hollee
    note-ptBR Vá em direção a Hollee
    note-enUS Talk to Hollee
    note-ptBR Fale com Hollee
    accept 729
step
    goto 1439 @488.69,6564.83
    note-enUS Talk to Dalmond
    note-ptBR Fale com Dalmond
    vendor
    note-enUS Buy as many [Small Brown Pouches] as you need/can
    note-ptBR Compre quantas [Small Brown Pouches] precisar/puder
step
    goto 1439 @488.69,6564.83
    note-enUS Talk to Dalmond
    note-ptBR Fale com Dalmond
    vendor
    note-enUS Buy a [Brown Leather Satchel] from him
    note-ptBR Compre uma [Brown Leather Satchel] dele
step
    goto 1439 @492.62,6580.99
    note-enUS Talk to Thundris
    note-ptBR Fale com Thundris
    turnin 4762
    accept 4763
step
    goto 1439 @472.97,6557.85
    note-enUS Talk to Alanndarian
    note-ptBR Fale com Alanndarian
    accept 2178
    turnin 2178
step
    goto 1439 @445.46,6536.01
    note-enUS Talk to Gorbold
    note-ptBR Fale com Gorbold
    turnin 982 |reward 2
step
    path seq 1439 @476.25,6479.25 @478.21,6446.5
    goto 1439 @473.63,6439.07 20
    note-enUS Travel toward Glynda
    note-ptBR Vá em direção a Glynda
    note-enUS Talk to Glynda
    note-ptBR Fale com Glynda
    turnin 4811
    accept 4812
step
    goto 1439 @465.11,6416.8
    note-enUS Use the [Empty Cleansing Bowl] and [Empty Water Tube] at the Moonwell
    note-ptBR Use o [Empty Cleansing Bowl] e o [Empty Water Tube] no Moonwell
    collect 12347 1 |quest 4763 |q 4763/1
    collect 14339 1 |quest 4812 |q 4812/1
    use 12346
    use 14338
step
    path seq 1439 @397.65,6437.33 @362.93,6434.27 @369.48,6449.99
    goto 1439 @384.55,6431.65
    note-enUS Talk to Tharnariun, Terenthis, and then Elissa upstairs
    note-ptBR Fale com Tharnariun, Terenthis e depois com Elissa no andar de cima
    turnin 2138
    accept 2139
    turnin 985
    accept 986
    accept 965
step
    goto 1439 @-157.79,6206.77
    note-enUS Equip the [Wise Man's Belt] |only Gnome
    note-ptBR Equipe o [Wise Man's Belt] |only Gnome
    use 4786 |only Gnome |opt
    note-enUS Click The Red Crystal
    note-ptBR Clique em The Red Crystal
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    note-enUS Remember to pull the Raging Moonkins that are leashed together
    note-ptBR Lembre-se de puxar os Raging Moonkins que estão presos juntos
    turnin 4812
    accept 4813
step
    goto 1439 @47.88,6748.67
    note-enUS Kill Moonstalker Runts and Moonstalkers. Loot them for their Moonstalker Fangs
    note-ptBR Mate Moonstalker Runts e Moonstalkers. Saqueie-os para obter Moonstalker Fangs
    objective 1002/1 |opt
    note-enUS Talk to Asterion
    note-ptBR Fale com Asterion
    turnin 957 |reward 3
step
    goto 1439 @-376.56,6805.87
    note-enUS Open the Blackwood Grain Stores. Loot it for the Blackwood Grain Sample
    note-ptBR Abra os Blackwood Grain Stores. Saqueie-os para obter a Blackwood Grain Sample
    note-enUS Aggro the Mobs protecting it, cast [Frost Nova], loot the Blackwood Grain Sample, then run away toward Den Mother from the mobs that spawn
    note-ptBR Puxe a atenção dos mobs que o protegem, lance [Frost Nova], saqueie o Blackwood Grain Sample e fuja em direção a Den Mother, longe dos mobs que surgirem
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    collect 12342 1 |quest 4673 |q 4673/1
step
    path seq 1439 @-485.95,6763.95 @-489.88,6724.22 @-436.82,6694.96
    goto 1439 @-432.24,6664.39
    note-enUS Kill Moonstalkers. Loot them for their Moonstalker Fangs
    note-ptBR Mate Moonstalkers. Saqueie-os para obter Moonstalker Fangs
    objective 1002/1 |opt
    note-enUS Travel toward Den Mother
    note-ptBR Vá em direção a Den Mother
    note-enUS Kill Den Mother
    note-ptBR Mate Den Mother
    note-enUS Be careful as Den Mother and her Thistle Cubs cast [Ravage] (2 second stun)
    note-ptBR Cuidado, Den Mother e seus Thistle Cubs lançam [Ravage] (atordoamento de 2 segundos)
    objective 2139/1
step
    goto 1439 @-432.24,6664.39
    note-enUS Kill Den Mother
    note-ptBR Mate Den Mother
    note-enUS Be careful as Den Mother and her Thistle Cubs cast [Ravage] (2 second stun)
    note-ptBR Cuidado, Den Mother e seus Thistle Cubs lançam [Ravage] (atordoamento de 2 segundos)
    note-enUS Split Pull Den Mother with your [Rough Dynamite]
    note-ptBR Separe a Den Mother do grupo usando sua [Rough Dynamite]
    objective 2139/1
step
    goto 1439 @-451.23,6870.06
    note-enUS Kill Moonstalkers. Loot them for their Moonstalker Fangs
    note-ptBR Mate Moonstalkers. Saqueie-os para obter Moonstalker Fangs
    objective 1002/1 |opt
    note-enUS Open the Blackwood Nut Stores. Loot it for the Blackwood Nut Sample :3
    note-ptBR Abra os Blackwood Nut Stores. Saqueie-os para obter a Blackwood Nut Sample :3
    note-enUS Aggro the Mobs protecting it, cast [Frost Nova], loot the Blackwood Nut Sample, then run north
    note-ptBR Puxe a atenção dos mobs que o protegem, lance [Frost Nova], saqueie o Blackwood Nut Sample e corra para o norte
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    collect 12343 1 |quest 4673 |q 4673/1
step
    goto 1439 @-520.01,6873.99
    note-enUS Open the Blackwood Fruit Stores. Loot it for the Blackwood Fruit Sample
    note-ptBR Abra os Blackwood Fruit Stores. Saqueie-os para obter a Blackwood Fruit Sample
    note-enUS Kill the Blackwood Warriors that aggro
    note-ptBR Mate os Blackwood Warriors que atacarem você
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    collect 12341 1 |quest 4673 |q 4673/1
step
    path seq 1439 @-497.74,6887.53
    goto 1439 @-480.05,6888.84
    note-enUS Use the [Filled Cleansing Bowl] near the campfire to summon Xabraxxis
    note-ptBR Use o [Filled Cleansing Bowl] perto da fogueira para invocar Xabraxxis
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    use 12347 |opt
    note-enUS Wait out the RP
    note-ptBR Espere o RP terminar
    note-enUS Kill Xabraxxis
    note-ptBR Mate Xabraxxis
    note-enUS Loot Xabraxxis' Demon Bag that drops on the ground. Loot it for the Talisman of Corruption
    note-ptBR Saqueie a Xabraxxis' Demon Bag que cai no chão. Saqueie-a para obter o Talisman of Corruption
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    objective 4763/1
step
    ifcomplete 1002
    goto 1439 @-417.83,7262.19
    note-enUS Click Buzzbox 323
    note-ptBR Clique em Buzzbox 323
    turnin 1002
    accept 1003
step
    ifturnedin 1002
    goto 1439 @-417.83,7262.19
    note-enUS Click Buzzbox 323
    note-ptBR Clique em Buzzbox 323
    accept 1003
step
    path seq 1439 @-578.3,6956.96 @-629.39,7042.98 @-538.35,7099.75 @-499.7,7221.14 @-674.59,7333.8 @-637.91,7415.02
    goto 1439 @-537.04,7542.97
    note-enUS Kill Moonstalkers. Loot them for their Moonstalker Fangs
    note-ptBR Mate Moonstalkers. Saqueie-os para obter Moonstalker Fangs
    objective 1002/1 |opt
    note-enUS Loot the Beached Sea Turtle
    note-ptBR Saqueie a Beached Sea Turtle
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    accept 4727
step
    path seq 1439 @-578.3,6956.96 @-629.39,7042.98 @-538.35,7099.75 @-499.7,7221.14 @-674.59,7333.8 @-637.91,7415.02 @-578.3,6956.96 @-629.39,7042.98 @-538.35,7099.75 @-499.7,7221.14 @-674.59,7333.8
    goto 1439 @-637.91,7415.02
    note-enUS Kill Moonstalkers. Loot them for their Moonstalker Fangs
    note-ptBR Mate Moonstalkers. Saqueie-os para obter Moonstalker Fangs
    objective 1002/1
step
    goto 1439 @-417.83,7262.19
    note-enUS Click Buzzbox 323
    note-ptBR Clique em Buzzbox 323
    turnin 1002
    accept 1003
step
    goto 1439 @-658.87,7246.47
    note-enUS Talk to Balthule
    note-ptBR Fale com Balthule
    turnin 965
    accept 966
step
    path seq 1439 @-684.41,7176.6 @-749.91,7153.9 @-875.02,7228.57 @-684.41,7176.6
    goto 1439 @-749.91,7153.9
    note-enUS Kill Dark Strand Fanatics. Loot them for Worn Parchments
    note-ptBR Mate Dark Strand Fanatics. Saqueie-os para obter Worn Parchments
    objective 966/1
step
    goto 1439 @-658.87,7246.47
    note-enUS Talk to Balthule
    note-ptBR Fale com Balthule
    turnin 966
    accept 967
step
    path seq 1439 @-660.83,6873.99 @-663.45,6877.49 @-679.17,6848.67 @-666.73,6819.41 @-680.48,6779.67 @-690.31,6751.29 @-706.68,6748.23
    goto 1439 @-719.13,6787.53 12
    note-enUS Go inside the Cave
    note-ptBR Entre na Cave
    note-enUS Loot the blue Scaber Stalks on the ground
    note-ptBR Saqueie as Scaber Stalks azuis no chão
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    objective 947/1 |opt
    note-enUS Stay on the upper level of the cave. Drop down if there's no Death Cap on the upper level
    note-ptBR Fique no nível superior da caverna. Desça se não houver Death Cap no nível superior
    note-enUS Loot the orange Death Cap on the ground at the end of the top path of the cave
    note-ptBR Saqueie o Death Cap laranja no chão, no fim do caminho superior da caverna
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    objective 947/2
step
    path seq 1439 @-663.45,6877.49 @-679.17,6848.67 @-666.73,6819.41
    goto 1439 @-680.48,6779.67
    note-enUS Loot the first Scaber Stalks at the mouth of the cave after looting the Death Cap
    note-ptBR Saqueie as primeiras Scaber Stalks na entrada da caverna depois de saquear o Death Cap
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    objective 947/1
step
    goto 1439 @492.62,6580.99
    note-enUS Travel to Auberdine
    note-ptBR Vá até Auberdine
    note-enUS Talk to Thundris
    note-ptBR Fale com Thundris
    turnin 4763 |reward 1
step
    goto 1439 @488.69,6564.83
    note-enUS Talk to Dalmond
    note-ptBR Fale com Dalmond
    vendor
    note-enUS Buy a [Brown Leather Satchel] from him
    note-ptBR Compre uma [Brown Leather Satchel] dele
    note-enUS Do NOT go below 30 Silver
    note-ptBR NÃO fique abaixo de 30 de prata
step
    goto 1439 @397.65,6437.33
    note-enUS Talk to Tharnariun
    note-ptBR Fale com Tharnariun
    turnin 2139 |reward 1
step
    path seq 1439 @473.63,6439.07 @497.21,6427.72
    goto 1439 @503.76,6402.39
    note-enUS Talk to Glynda, Barithras, and the Wanted Poster
    note-ptBR Fale com Glynda, Barithras e confira o cartaz de Procurado (Wanted Poster)
    turnin 4813 |reward 2
    turnin 947
    accept 948
    accept 4740
step
    goto 1439 @533.23,6399.77
    note-enUS Talk to Laird
    note-ptBR Fale com Laird
    note-enUS Buy up to 40 [Longjaw Mud Snappers] from him
    note-ptBR Compre até 40 [Longjaw Mud Snappers] dele
    collect 4592 40 |quest 729 |q 729/1
step
    goto 1439 @543.06,6342.57
    note-enUS Talk to Gwennyth
    note-ptBR Fale com Gwennyth
    turnin 4727
step
    goto 1439 @515.55,6406.32
    note-enUS ===PAY ATTENTION===
    note-ptBR ===PRESTE ATENÇÃO===
    note-enUS Talk to Shaussiy
    note-ptBR Fale com Shaussiy
    note-enUS Open the "Set Hearthstone" menu, then cast [Hearthstone]
    note-ptBR Abra o menu "Definir Pedra de Regresso" e depois use a [Hearthstone]
    hearth
    note-enUS Hearthstone BATCH from Auberdine to Stormwind City
    note-ptBR Use a pedra de regresso em BATCH de Auberdine para Stormwind City
]==])

register([==[
#format 1
#id forever.a.16-18-adv-westfall-mage-aoe
#name 16-18 ADV Westfall Mage AoE
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 2
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#only Mage
#levels 16-18
#name-ptBR 16-18 Avançado Westfall Mago AoE
#group Mage AoE - Advanced (Alliance)
#group-ptBR Mago AoE - Avançado (Aliança)
#recommend Human Mage Gnome Mage
#next forever.a.18-20-adv-darkshore-3-mage-aoe

step
    note-enUS NOTE: You need 12 stacks of each cloth ([Wool Cloth], [Silk Cloth], [Mageweave Cloth], and [Runecloth]) to do the cloth turnins later. You'll get these naturally as you level
    note-ptBR NOTA: Você precisa de 12 pilhas de cada tecido ([Wool Cloth], [Silk Cloth], [Mageweave Cloth] e [Runecloth]) para as entregas de tecido depois. Você os obterá naturalmente enquanto sobe de nível
    note-enUS Talk to Newton
    note-ptBR Fale com Newton
    note-enUS Deposit the following items into the bank:
    note-ptBR Deposite os seguintes itens no banco:
    note-enUS [Light Feather]
    note-ptBR [Light Feather]
    note-enUS [Letter to Delgren]
    note-ptBR [Letter to Delgren]
    note-enUS [Wool Cloth]
    note-ptBR [Wool Cloth]
    note-enUS [Small Egg]
    note-ptBR [Small Egg]
step
    goto 1453 @614.33,-8932.92
    note-enUS Talk to Newton
    note-ptBR Fale com Newton
    note-enUS Withdraw the following items from your bank: |only Gnome
    note-ptBR Retire os seguintes itens do seu banco: |only Gnome
    note-enUS Withdraw the following items from your bank: |only Human
    note-ptBR Retire os seguintes itens do seu banco: |only Human
    note-enUS [Murloc Eyes]
    note-ptBR [Murloc Eyes]
    note-enUS [Jennea's Flask] |only Gnome
    note-ptBR [Jennea's Flask] |only Gnome
    note-enUS [Osric's Crate] |only Human
    note-ptBR [Osric's Crate] |only Human
step
    path seq 1453 @686.25,-8815.41 @684.24,-8820.34 @687.46,-8818.01 @854.42,-8965.28
    goto 1453 @861.95,-8990.47 10
    note-enUS Jump up onto the torch, then drop down to get under Stormwind
    note-ptBR Suba na tocha e depois desça para ficar embaixo de Stormwind
    note-enUS With Shadows on "Fair" or "Low", get in the middle of Derek the Dinosaur's feet (the lighter part of the dirt) just before the blue void, then walk straight forward
    note-ptBR Com Sombras em "Razoável" ou "Baixo", fique entre os pés de Derek the Dinosaur (a parte mais clara da terra) logo antes do vazio azul e ande reto para frente
    note-enUS NOTE: There is a small chance of dying using this method. You can also walk to the Mage Tower normally if you wish
    note-ptBR NOTA: Há uma pequena chance de morrer usando este método. Se preferir, você também pode andar normalmente até a Mage Tower
    note-enUS Travel toward Jennea
    note-ptBR Vá em direção a Jennea
    note-enUS Talk to Jennea
    note-ptBR Fale com Jennea
    trainer
    note-enUS Train your class spells (Flamestrike)
    note-ptBR Treine your class spells (Flamestrike)
    note-enUS Total Cost: 15s
    note-ptBR Custo total: 15s
step
    goto 1453 @635.44,-8863.81
    note-enUS Talk to Keldric through the wall
    note-ptBR Fale com Keldric através da parede
    vendor
    note-enUS Buy [Lesser Healing Potions] from him (if they're up)
    note-ptBR Compre [Lesser Healing Potions] dele (se estiverem disponíveis)
step
    path seq 1453 @618.9,-8796.58
    goto 1453 @612.99,-8795.96 10
    note-enUS Travel toward Woo Ping
    note-ptBR Vá em direção a Woo Ping
    note-enUS Talk to Woo Ping
    note-ptBR Fale com Woo Ping
    train 1180
    note-enUS Train [Daggers]
    note-ptBR Treine [Daggers]
step
    only Human
    path seq 1453 @612.45,-8806.18 @528.43,-8850.28 @532.2,-8863.72
    goto 1453 @490.12,-8835.67 10
    note-enUS Travel toward Dungar
    note-ptBR Vá em direção a Dungar
    note-enUS Talk to Dungar
    note-ptBR Fale com Dungar
    turnin 6261
    accept 6285
step
    only Gnome
    goto 1453 @490.12,-8835.67
    path seq 1453 @494.56,-8865.78 @495.77,-8870.44 |only Gnome
    goto 1453 @504.24,-8956.31 40 |only Gnome
    goto 1429 @421.28,-9104.28 40 |only Gnome
    goto 1429 @529.57,-9363.05
    note-enUS Talk to Dungar
    note-ptBR Fale com Dungar
    fp |only Gnome |opt
    note-enUS Get the Stormwind City flight path |only Gnome
    note-ptBR Pegue o ponto de voo de Stormwind City |only Gnome
    fly 1436 |only Human |opt
    note-enUS Fly to Westfall |only Human
    note-ptBR Voe para Westfall |only Human
    note-enUS Drop down to the ledge below Dungar |only Gnome
    note-ptBR Desça até a plataforma abaixo de Dungar |only Gnome
    note-enUS Exit Stormwind |only Gnome
    note-ptBR Saia de Stormwind |only Gnome
    note-enUS Use [Jennea's Flask] at the waterfall
    note-ptBR Use [Jennea's Flask] na cachoeira
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    use 7207
    objective 1861/1
step
    path seq 1436 @918.42,-9851.5
    goto 1436 @919.82,-9852.9
    note-enUS Talk to Farmer Furlbrow and Verna
    note-ptBR Fale com Farmer Furlbrow e Verna
    accept 64
    accept 109
    accept 36
    accept 151
step
    path seq 1436 @1055.27,-10128.7
    goto 1436 @1041.97,-10112.13
    note-enUS Open the Sacks of Oats on the ground. Loot them for Handfuls of Oats |only Gnome
    note-ptBR Abra os Sacks of Oats no chão. Saqueie-os para obter Handfuls of Oats |only Gnome
    note-enUS This has a 5 second cast time |only Gnome
    note-ptBR Isto tem 5 segundos de tempo de conjuração |only Gnome
    objective 151/1 |only Gnome |opt
    note-enUS Talk to Farmer Saldean and then Salma inside
    note-ptBR Fale com Farmer Saldean e depois com Salma lá dentro
    accept 9
    turnin 36
    accept 38
    accept 22
step
    goto 1436 @1142.77,-10140.13 60 |only Gnome
    goto 1436 @1045.12,-10508.8
    goto 1436 @1021.6,-10500.61 |only Human
    goto 1436 @1041.97,-10511.13 |only Gnome
    note-enUS AoE Harvest Watchers and Harvest Golems. Loot them for their Flasks of Oil and Hops |only Gnome
    note-ptBR Use AoE em Harvest Watchers e Harvest Golems. Saqueie-os para obter Flasks of Oil e Hops |only Gnome
    note-enUS Remember to [Flamestrike]/[Arcane Explosion] AoE now |only Gnome
    note-ptBR Lembre-se de usar AoE com [Flamestrike]/[Arcane Explosion] agora |only Gnome
    objective 9/1 |only Gnome |opt
    collect 814 5 |quest 103 |q 103/1 |only Gnome |opt
    collect 1274 5 |quest 117 |q 117/1 |only Gnome |opt
    note-enUS AoE Young Goretusks. Loot them for their Goretusk Livers and Goretusk Snouts |only Gnome
    note-ptBR Use AoE em Young Goretusks. Saqueie-os para obter Goretusk Livers e Goretusk Snouts |only Gnome
    note-enUS AoE Young Fleshrippers. Loot them for their Stringy Vulture Meat |only Gnome
    note-ptBR Use AoE em Young Fleshrippers. Saqueie-os para obter Stringy Vulture Meat |only Gnome
    collect 723 8 |quest 22 |q 22/1 |only Gnome |opt
    collect 731 3 |quest 38 |q 38/1 |only Gnome |opt
    collect 729 3 |quest 38 |q 38/1 |only Gnome |opt
    note-enUS Talk to Gryan and Danuvin |only Gnome
    note-ptBR Fale com Gryan e Danuvin |only Gnome
    note-enUS Talk to Gryan and then Lewis inside |only Human
    note-ptBR Fale com Gryan e depois com Lewis lá dentro |only Human
    turnin 109 |only Gnome
    accept 65
    accept 12 |only Gnome
    turnin 6285 |only Human
    accept 102 |only Gnome
step
    goto 1436 @1127.37,-10636.43
    note-enUS Talk to Galiaan
    note-ptBR Fale com Galiaan
    accept 153
step
    goto 1436 @1166.57,-10653.47
    note-enUS Talk to Heather
    note-ptBR Fale com Heather
    note-enUS Buy 45 [Melon Juice] from her
    note-ptBR Compre 45 [Melon Juice] dela
    collect 1205 45 |quest 64 |q 64/1
step
    goto 1436 @1166.57,-10653.47
    note-enUS Talk to Heather
    note-ptBR Fale com Heather
    note-enUS Buy 40 [Melon Juice] from her
    note-ptBR Compre 40 [Melon Juice] dela
    collect 1205 40 |quest 64 |q 64/1
step
    goto 1436 @1166.57,-10653.47
    note-enUS Talk to Heather
    note-ptBR Fale com Heather
    note-enUS Buy 35 [Melon Juice] from her
    note-ptBR Compre 35 [Melon Juice] dela
    collect 1205 35 |quest 64 |q 64/1
step
    goto 1436 @1166.57,-10653.47
    note-enUS Talk to Heather
    note-ptBR Fale com Heather
    note-enUS Buy 30 [Melon Juice] from her
    note-ptBR Compre 30 [Melon Juice] dela
    collect 1205 30 |quest 64 |q 64/1
step
    goto 1436 @1166.57,-10653.47
    note-enUS Talk to Heather
    note-ptBR Fale com Heather
    note-enUS Buy 25 [Melon Juice] from her
    note-ptBR Compre 25 [Melon Juice] dela
    collect 1205 25 |quest 64 |q 64/1
step
    goto 1436 @1166.57,-10653.47
    note-enUS Talk to Heather
    note-ptBR Fale com Heather
    note-enUS Buy 20 [Melon Juice] from her
    note-ptBR Compre 20 [Melon Juice] dela
    collect 1205 20 |quest 64 |q 64/1
step
    goto 1436 @1166.57,-10653.47
    note-enUS Talk to Heather
    note-ptBR Fale com Heather
    note-enUS Buy 15 [Melon Juice] from her
    note-ptBR Compre 15 [Melon Juice] dela
    collect 1205 15 |quest 64 |q 64/1
step
    goto 1436 @1166.57,-10653.47
    note-enUS Talk to Heather
    note-ptBR Fale com Heather
    note-enUS Buy 10 [Melon Juice] from her
    note-ptBR Compre 10 [Melon Juice] dela
    collect 1205 10 |quest 64 |q 64/1
step
    goto 1436 @1166.57,-10653.47
    note-enUS Talk to Heather
    note-ptBR Fale com Heather
    note-enUS Buy 5 [Melon Juice] from her
    note-ptBR Compre 5 [Melon Juice] dela
    collect 1205 5 |quest 64 |q 64/1
step
    path seq 1436 @1635.92,-10621.27
    goto 1436 @1748.27,-10672.13
    note-enUS Open the Sacks of Oats on the ground. Loot them for Handfuls of Oats
    note-ptBR Abra os Sacks of Oats no chão. Saqueie-os para obter Handfuls of Oats
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    objective 151/1 |opt
    note-enUS AoE Goretusks. Loot them for their Goretusk Livers and Goretusk Snouts
    note-ptBR Use AoE em Goretusks. Saqueie-os para obter Goretusk Livers e Goretusk Snouts
    note-enUS AoE Fleshrippers. Loot them for their Stringy Vulture Meat
    note-ptBR Use AoE em Fleshrippers. Saqueie-os para obter Stringy Vulture Meat
    collect 723 8 |quest 22 |q 22/1 |opt
    collect 731 3 |quest 38 |q 38/1 |opt
    collect 729 3 |quest 38 |q 38/1 |opt
    note-enUS AoE Harvest Watchers. Loot them for their Flasks of Oil and Hops
    note-ptBR Use AoE em Harvest Watchers. Saqueie-os para obter Flasks of Oil e Hops
    objective 9/1 |opt
    collect 814 5 |quest 103 |q 103/1 |opt
    collect 1274 5 |quest 117 |q 117/1 |opt
    note-enUS AoE the Defias. Loot them for their Red Leather Bandanas
    note-ptBR Use AoE nos Defias. Saqueie-os para obter Red Leather Bandanas
    objective 153/1 |opt
    note-enUS Open Alexston's Chest. Loot it for A Simple Compass
    note-ptBR Abra o Alexston's Chest. Saqueie-o para obter A Simple Compass
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    objective 399/1
step
    path seq 1436 @1708.02,-10578.8 @1772.07,-10493.63 @1839.27,-10496.9 @1863.07,-10251.2 @1635.92,-10621.27 @1708.02,-10578.8 @1772.07,-10493.63 @1839.27,-10496.9 @1863.07,-10251.2
    goto 1436 @1635.92,-10621.27
    note-enUS AoE Harvest Watchers and Harvest Golems. Loot them for their Flasks of Oil and Hops
    note-ptBR Use AoE em Harvest Watchers e Harvest Golems. Saqueie-os para obter Flasks of Oil e Hops
    collect 814 5 |quest 103 |q 103/1
    collect 1274 5 |quest 117 |q 117/1
step
    path seq 1436 @1952.67,-10751.7 @1991.52,-10927.4 @1874.97,-10996 @1929.22,-11019.8
    goto 1436 @1917.67,-11086.77 30
    note-enUS Keep an eye out for Old Murk-Eye. Try to stay close to the edge of the ridge as to not miss him
    note-ptBR Fique atento a Old Murk-Eye. Tente ficar perto da beira do penhasco para não perdê-lo
    note-enUS AoE the Gnoll Camps
    note-ptBR Use dano em área nos acampamentos de Gnolls
    note-enUS AoE Riverpaw Herbalists, Riverpaw Mongrels, and Riverpaw Brutes. Loot them for their Gnoll Paws
    note-ptBR Use AoE em Riverpaw Herbalists, Riverpaw Mongrels e Riverpaw Brutes. Saqueie-os para obter Gnoll Paws
    note-enUS If you find Old Murk-Eye, skip this step
    note-ptBR Se encontrar Old Murk-Eye, pule esta etapa
    objective 102/1
step
    goto 1436 @1965.97,-11407.13
    note-enUS Find Old Murk-Eye. Kite him toward Grayson
    note-ptBR Encontre Old Murk-Eye. Atraia-o até Grayson
    note-enUS Talk to Grayson
    note-ptBR Fale com Grayson
    accept 104
step
    path seq 1436 @1829.47,-11357.2 @1795.87,-11402.47 @1778.37,-11374.7 @1829.47,-11357.2 @1900.52,-11319.87 @1955.12,-11284.17 @1984.17,-11236.33 @1999.57,-11160.5 @2009.37,-11093.53 @2042.27,-11064.37 @2062.22,-11032.4 @2076.57,-10959.13 @2097.22,-10934.4 @1829.47,-11357.2 @1795.87,-11402.47 @1778.37,-11374.7 @1829.47,-11357.2 @1900.52,-11319.87 @1955.12,-11284.17 @1984.17,-11236.33 @1999.57,-11160.5 @2009.37,-11093.53 @2042.27,-11064.37 @2062.22,-11032.4 @2076.57,-10959.13
    goto 1436 @2097.22,-10934.4
    note-enUS AoE Old Murk-Eye. Loot him for the Scale of Old Murk-Eye
    note-ptBR Use AoE em Old Murk-Eye. Saqueie-o para obter a Scale of Old Murk-Eye
    objective 104/1
step
    goto 1436 @1965.97,-11407.13
    note-enUS Talk to Grayson
    note-ptBR Fale com Grayson
    accept 103
    turnin 103 |reward 1
    turnin 104 |reward 3
step
    goto 1436 @1454.97,-11272.73
    note-enUS AoE Defias Knuckledusters and Defias Highwaymen. Loot them for their Red Leather Bandanas
    note-ptBR Use AoE em Defias Knuckledusters e Defias Highwaymen. Saqueie-os para obter Red Leather Bandanas
    note-enUS Be careful as the Defias Highwaymen cast [Backstab] (deals double damage from behind)
    note-ptBR Cuidado, os Defias Highwaymen lançam [Backstab] (causa dano dobrado pelas costas)
    objective 153/1 |opt
    note-enUS Talk to Grimbooze
    note-ptBR Fale com Grimbooze
    accept 117
    turnin 117
step
    ifonquest 153
    path seq 1436 @1309.72,-11213 @1206.12,-11142.3 @1177.07,-11100.3
    goto 1436 @1193.87,-11078.6 60
    note-enUS AoE Defias Knuckledusters and Defias Highwaymen. Loot them for their Red Leather Bandanas
    note-ptBR Use AoE em Defias Knuckledusters e Defias Highwaymen. Saqueie-os para obter Red Leather Bandanas
    note-enUS Be careful as the Defias Highwaymen cast [Backstab] (deals double damage from behind)
    note-ptBR Cuidado, os Defias Highwaymen lançam [Backstab] (causa dano dobrado pelas costas)
    objective 153/1 |opt
    note-enUS Travel toward the end of The Dagger Hills
    note-ptBR Vá em direção ao fim de The Dagger Hills
step
    ifonquest 153
    path seq 1436 @1383.92,-10636.43 @1328.97,-10454.9 @1414.72,-10314.43 @1389.52,-10270.33
    goto 1436 @1457.77,-10209.9 150
    note-enUS Open the Sacks of Oats on the ground. Loot them for Handfuls of Oats
    note-ptBR Abra os Sacks of Oats no chão. Saqueie-os para obter Handfuls of Oats
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    objective 151/1 |opt
    note-enUS AoE Goretusks. Loot them for their Goretusk Livers and Goretusk Snouts
    note-ptBR Use AoE em Goretusks. Saqueie-os para obter Goretusk Livers e Goretusk Snouts
    note-enUS AoE Fleshrippers. Loot them for their Stringy Vulture Meat
    note-ptBR Use AoE em Fleshrippers. Saqueie-os para obter Stringy Vulture Meat
    collect 723 8 |quest 22 |q 22/1 |opt
    collect 731 3 |quest 38 |q 38/1 |opt
    collect 729 3 |quest 38 |q 38/1 |opt
    note-enUS AoE Defias Trappers and Defias Smugglers. Loot them for their Red Leather Bandanas
    note-ptBR Use AoE em Defias Trappers e Defias Smugglers. Saqueie-os para obter Red Leather Bandanas
    note-enUS Be careful as the Defias Trappers cast [Backstab] (deals double damage from behind) and [Net] (Immobilizes for 9 seconds)
    note-ptBR Cuidado, os Defias Trappers lançam [Backstab] (causa dano dobrado pelas costas) e [Net] (imobiliza por 9 segundos)
    objective 153/1 |opt
    note-enUS Travel toward The Molsen Farm
    note-ptBR Vá em direção a The Molsen Farm
step
    path seq 1436 @1457.77,-10209.9 @1471.77,-10022.07 @1402.12,-10018.8
    goto 1436 @1310.77,-9885.1
    note-enUS AoE Harvest Watchers
    note-ptBR Use AoE em Harvest Watchers
    objective 9/1 |opt
    note-enUS AoE Young Goretusks. Loot them for their Goretusk Livers and Goretusk Snouts
    note-ptBR Use AoE em Young Goretusks. Saqueie-os para obter Goretusk Livers e Goretusk Snouts
    note-enUS AoE Fleshrippers and Young Fleshrippers. Loot them for their Stringy Vulture Meat
    note-ptBR Use AoE em Fleshrippers e Young Fleshrippers. Saqueie-os para obter Stringy Vulture Meat
    collect 723 8 |quest 22 |q 22/1 |opt
    collect 731 3 |quest 38 |q 38/1 |opt
    collect 729 3 |quest 38 |q 38/1 |opt
    note-enUS AoE Defias Trappers and Defias Smugglers. Loot them for their Red Leather Bandanas
    note-ptBR Use AoE em Defias Trappers e Defias Smugglers. Saqueie-os para obter Red Leather Bandanas
    note-enUS Be careful as the Defias Trappers cast [Backstab] and [Net]
    note-ptBR Cuidado, os Defias Trappers lançam [Backstab] e [Net]
    note-enUS Skip this step if you're not at least 10/15 on both Defias Trappers and Defias Smugglers
    note-ptBR Pule este passo se não estiver com pelo menos 10/15 em Defias Trappers e Defias Smugglers
    objective 153/1
    objective 12/1
    objective 12/2
step
    path seq 1436 @1310.77,-9885.1
    goto 1436 @1290.12,-9849.4
    note-enUS AoE Defias Trappers and Defias Smugglers. Loot them for their Red Leather Bandanas
    note-ptBR Use AoE em Defias Trappers e Defias Smugglers. Saqueie-os para obter Red Leather Bandanas
    note-enUS Be careful as the Defias Trappers cast [Backstab] and [Net]
    note-ptBR Cuidado, os Defias Trappers lançam [Backstab] e [Net]
    objective 153/1 |opt
    note-enUS Open Furlbrow's Wardrobe. Loot it for Furlbrow's Pocket Watch
    note-ptBR Abra o Furlbrow's Wardrobe. Saqueie-o para obter o Furlbrow's Pocket Watch
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    objective 64/1
step
    path seq 1436 @1249.17,-9898.87 @1207.17,-9940.4 @1195.97,-9750
    goto 1436 @1024.12,-9697.5
    note-enUS AoE Harvest Watchers
    note-ptBR Use AoE em Harvest Watchers
    objective 9/1 |opt
    note-enUS AoE Riverpaw Scouts and Riverpaw Gnolls. Loot them for their Gnoll Paws
    note-ptBR Use AoE em Riverpaw Scouts e Riverpaw Gnolls. Saqueie-os para obter Gnoll Paws
    objective 102/1
step
    path seq 1436 @1184.07,-9623.77 @1133.67,-9649.43
    goto 1436 @1058.07,-9591.8
    note-enUS AoE Murloc Coastrunners and Murloc Raiders. Loot them for their Murloc Eyes
    note-ptBR Use AoE em Murloc Coastrunners e Murloc Raiders. Saqueie-os para obter Murloc Eyes
    collect 730 3 |quest 38 |q 38/1
step
    goto 1436 @1037.07,-9849.17
    note-enUS AoE Defias Footpads Loot them for their Red Leather Bandanas
    note-ptBR Use AoE em Defias Footpads. Saqueie-os para obter Red Leather Bandanas
    note-enUS Be careful as Defias Footpads cast [Backstab]
    note-ptBR Cuidado, Defias Footpads lançam [Backstab]
    objective 153/1
step
    goto 1436 @1037.07,-9849.17
    note-enUS Open the Sacks of Oats on the ground. Loot them for Handfuls of Oats
    note-ptBR Abra os Sacks of Oats no chão. Saqueie-os para obter Handfuls of Oats
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    objective 151/1
step
    path seq 1436 @918.42,-9851.5
    goto 1436 @919.82,-9852.9
    note-enUS Talk to Farmer Furlbrow and Verna
    note-ptBR Fale com Farmer Furlbrow e Verna
    turnin 64
    turnin 151
step
    path seq 1436 @926.47,-10207.8
    goto 1436 @908.27,-10506
    note-enUS AoE Goretusks and Young Goretusks. Loot them for their Goretusk Livers and Goretusk Snouts
    note-ptBR Use AoE em Goretusks e Young Goretusks. Saqueie-os para obter Goretusk Livers e Goretusk Snouts
    note-enUS AoE Fleshrippers and Young Fleshrippers. Loot them for their Stringy Vulture Meat
    note-ptBR Use AoE em Fleshrippers e Young Fleshrippers. Saqueie-os para obter Stringy Vulture Meat
    collect 723 8 |quest 22 |q 22/1
    collect 731 3 |quest 38 |q 38/1
    collect 729 3 |quest 38 |q 38/1
step
    path seq 1436 @1167.27,-10110.73
    goto 1436 @1207.17,-9940.4
    note-enUS AoE Harvest Watchers
    note-ptBR Use AoE em Harvest Watchers
    objective 9/1
step
    ifcomplete 12
    goto 1436 @1207.17,-9940.4
    level 17
    note-enUS Grind to 11890+/17700xp
    note-ptBR Mate monstros até 11890+/17700xp
step
    goto 1436 @1207.17,-9940.4
    note-enUS Skip this step if you've finished the objective of The People's Militia
    note-ptBR Pule este passo se já concluiu o objetivo de The People's Militia
    level 17
    note-enUS Grind to 12800+/17700xp
    note-ptBR Mate monstros até 12800+/17700xp
step
    path seq 1436 @1055.27,-10128.7
    goto 1436 @1041.97,-10112.13
    note-enUS Talk to Farmer Saldean and then Salma inside
    note-ptBR Fale com Farmer Saldean e depois com Salma lá dentro
    turnin 9 |reward 1
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
    turnin 22
    turnin 38
step
    ifcomplete 12
    path seq 1436 @1045.12,-10508.8
    goto 1436 @1041.97,-10511.13
    note-enUS Talk to Gryan and Danuvin
    note-ptBR Fale com Gryan e Danuvin
    turnin 12
    turnin 102 |reward 1
step
    goto 1436 @1041.97,-10511.13
    note-enUS Talk to Danuvin
    note-ptBR Fale com Danuvin
    turnin 102 |reward 1
step
    goto 1436 @1127.37,-10636.43
    note-enUS Talk to Galiaan
    note-ptBR Fale com Galiaan
    turnin 153 |reward 2
step
    goto 1436 @1037.07,-10628.27
    path seq 1453 @686.25,-8815.41 @684.24,-8820.34 @687.46,-8818.01 @854.42,-8965.28
    goto 1453 @861.95,-8990.47 10
    note-enUS Start spam casting [Conjure Water r2] to conjure as much water as possible before taking the flight
    note-ptBR Comece a conjurar [Conjure Water r2] sem parar para fazer o máximo de água possível antes de pegar o voo
    note-enUS Talk to Thor
    note-ptBR Fale com Thor
    fly 1453 |opt
    note-enUS Fly to Stormwind
    note-ptBR Voe para Stormwind
    note-enUS Jump up onto the torch, then drop down to get under Stormwind
    note-ptBR Suba na tocha e depois desça para ficar embaixo de Stormwind
    note-enUS With Shadows on "Fair" or "Low", get in the middle of Derek the Dinosaur's feet (the lighter part of the dirt) just before the blue void, then walk straight forward
    note-ptBR Com Sombras em "Razoável" ou "Baixo", fique entre os pés de Derek the Dinosaur (a parte mais clara da terra) logo antes do vazio azul e ande reto para frente
    note-enUS NOTE: There is a small chance of dying using this method. You can also walk to the Mage Tower normally if you wish
    note-ptBR NOTA: Há uma pequena chance de morrer usando este método. Se preferir, você também pode andar normalmente até a Mage Tower
    note-enUS Travel toward Jennea
    note-ptBR Vá em direção a Jennea
    note-enUS Talk to Jennea
    note-ptBR Fale com Jennea
    turnin 1861 |reward 1
    trainer
    note-enUS Train your class spells (Fireball r4)
    note-ptBR Treine your class spells (Fireball r4)
    note-enUS Total Cost: 18s
    note-ptBR Custo total: 18s
step
    path seq 1453 @887.22,-9017.8 @871.36,-9013.14 @868.8,-9004.27 @877,-9008.03 @863.96,-9001.4 @928.62,-9010.1 @962.63,-8990.73 @949.86,-9009.38 @942.34,-9001.49
    goto 1453 @948.65,-8994.5 10
    note-enUS Exit the Mage Tower
    note-ptBR Saia da Mage Tower
    note-enUS Travel toward Charys
    note-ptBR Vá em direção a Charys
    note-enUS Enter the building
    note-ptBR Entre no prédio
    note-enUS Talk to Charys
    note-ptBR Fale com Charys
    vendor
    note-enUS Buy [Lesser Mana Potions] and [Healing Potions] from her (if they're up)
    note-ptBR Compre [Lesser Mana Potions] e [Healing Potions] dela (se estiverem disponíveis)
step
    path seq 1453 @958.74,-8987.87 @941.8,-8918.49 @916.79,-8891.96 @948.65,-8816.3 @946.64,-8803.31 @970.57,-8772.74 @1030.92,-8747.2 @1049.34,-8750.33
    goto 1453 @1093.16,-8779.02 10
    note-enUS Travel toward Argos
    note-ptBR Vá em direção a Argos
    note-enUS Talk to Argos
    note-ptBR Fale com Argos
    accept 3765
step
    goto 1453 @822.16,-8865.6
    note-enUS Enter the building
    note-ptBR Entre no prédio
    note-enUS Talk to Adair
    note-ptBR Fale com Adair
    vendor
    note-enUS Buy non-intellect [Scrolls] from him (if they're up)
    note-ptBR Compre [Scrolls] sem intelecto dele (se estiverem disponíveis)
step
    path seq 1453 @661.38,-8858.16 @680.61,-8829.39 @717.44,-8847.32 @693.24,-8891.51
    goto 1453 @681.28,-8888.01 10
    note-enUS Travel toward Roberto
    note-ptBR Vá em direção a Roberto
    note-enUS Go inside the building
    note-ptBR Entre no prédio
    note-enUS Talk to Roberto
    note-ptBR Fale com Roberto
    note-enUS Buy a [Cask of Merlot] from him
    note-ptBR Compre um [Cask of Merlot] dele
    collect 1941 1 |quest 116 |q 116/1
step
    path seq 1453 @680.61,-8828.67
    goto 1453 @635.44,-8863.81 8
    note-enUS Travel toward Keldric
    note-ptBR Vá em direção a Keldric
    note-enUS Talk to Keldric through the wall
    note-ptBR Fale com Keldric através da parede
    vendor
    note-enUS Buy [Lesser Healing Potions] from him (if they're up)
    note-ptBR Compre [Lesser Healing Potions] dele (se estiverem disponíveis)
step
    path seq 1453 @637.59,-8889.81
    goto 1453 @614.33,-8932.92
    note-enUS Enter the Stormwind Bank
    note-ptBR Entre no banco de Stormwind
    note-enUS Talk to Newton
    note-ptBR Fale com Newton
    note-enUS Withdraw the following items from your bank:
    note-ptBR Retire os seguintes itens do seu banco:
    note-enUS [Chunk of Boar Meat]
    note-ptBR [Chunk of Boar Meat]
    note-enUS [Letter to Delgren]
    note-ptBR [Letter to Delgren]
    note-enUS [Small Egg]
    note-ptBR [Small Egg]
step
    goto 1453 @614.33,-8932.92
    note-enUS Talk to Newton
    note-ptBR Fale com Newton
    note-enUS NOTE: You need 12 stacks of each cloth ([Wool Cloth], [Silk Cloth], [Mageweave Cloth], and [Runecloth]) to do the cloth turnins later. You'll get these naturally as you level
    note-ptBR NOTA: Você precisa de 12 pilhas de cada tecido ([Wool Cloth], [Silk Cloth], [Mageweave Cloth] e [Runecloth]) para as entregas de tecido depois. Você os obterá naturalmente enquanto sobe de nível
    note-enUS Deposit the following items into the bank:
    note-ptBR Deposite os seguintes itens no banco:
    note-enUS [Bronze Tube]
    note-ptBR [Bronze Tube]
    note-enUS [Scrolls]
    note-ptBR [Scrolls]
    note-enUS [Light Feather]
    note-ptBR [Light Feather]
    note-enUS [Wool Cloth]
    note-ptBR [Wool Cloth]
    note-enUS [A Simple Compass]
    note-ptBR [A Simple Compass]
    note-enUS [Cask of Merlot]
    note-ptBR [Cask of Merlot]
step
    path seq 1453 @662.46,-8860.76
    goto 1453 @673.75,-8867.93 10
    note-enUS Enter the Inn
    note-ptBR Entre na estalagem
    note-enUS Travel Toward Allison
    note-ptBR Vá em direção a Allison
    note-enUS ===PAY ATTENTION===
    note-ptBR ===PRESTE ATENÇÃO===
    note-enUS Talk to Allison
    note-ptBR Fale com Allison
    note-enUS Open the "Set Hearthstone" menu, then cast [Hearthstone]
    note-ptBR Abra o menu "Definir Pedra de Regresso" e depois use a [Hearthstone]
    hearth
    note-enUS Hearthstone BATCH from Stormwind to Auberdine
    note-ptBR Use a pedra de regresso em BATCH de Stormwind para Auberdine
]==])

register([==[
#format 1
#id forever.a.18-20-adv-darkshore-3-mage-aoe
#name 18-20 ADV Darkshore 3 Mage AoE
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 2
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#only Mage
#levels 18-20
#name-ptBR 18-20 Avançado Darkshore 3 Mago AoE
#group Mage AoE - Advanced (Alliance)
#group-ptBR Mago AoE - Avançado (Aliança)
#recommend Human Mage Gnome Mage
#next forever.a.20-22-adv-redridge-1-mage-aoe

step
    goto 1439 @529.3,6415.93
    note-enUS Talk to Taldan
    note-ptBR Fale com Taldan
    note-enUS Buy 45 [Melon Juice] from him
    note-ptBR Compre 45 [Melon Juice] dele
    collect 1205 45 |quest 4740 |q 4740/1
step
    goto 1439 @529.3,6415.93
    note-enUS Talk to Taldan
    note-ptBR Fale com Taldan
    note-enUS Buy 40 [Melon Juice] from him
    note-ptBR Compre 40 [Melon Juice] dele
    collect 1205 40 |quest 4740 |q 4740/1
step
    goto 1439 @529.3,6415.93
    note-enUS Talk to Taldan
    note-ptBR Fale com Taldan
    note-enUS Buy 35 [Melon Juice] from him
    note-ptBR Compre 35 [Melon Juice] dele
    collect 1205 35 |quest 4740 |q 4740/1
step
    goto 1439 @529.3,6415.93
    note-enUS Talk to Taldan
    note-ptBR Fale com Taldan
    note-enUS Buy 30 [Melon Juice] from him
    note-ptBR Compre 30 [Melon Juice] dele
    collect 1205 30 |quest 4740 |q 4740/1
step
    goto 1439 @529.3,6415.93
    note-enUS Talk to Taldan
    note-ptBR Fale com Taldan
    note-enUS Buy 25 [Melon Juice] from him
    note-ptBR Compre 25 [Melon Juice] dele
    collect 1205 25 |quest 4740 |q 4740/1
step
    goto 1439 @529.3,6415.93
    note-enUS Talk to Taldan
    note-ptBR Fale com Taldan
    note-enUS Buy 20 [Melon Juice] from him
    note-ptBR Compre 20 [Melon Juice] dele
    collect 1205 20 |quest 4740 |q 4740/1
step
    goto 1439 @529.3,6415.93
    note-enUS Talk to Taldan
    note-ptBR Fale com Taldan
    note-enUS Buy 15 [Melon Juice] from him
    note-ptBR Compre 15 [Melon Juice] dele
    collect 1205 15 |quest 4740 |q 4740/1
step
    goto 1439 @529.3,6415.93
    note-enUS Talk to Taldan
    note-ptBR Fale com Taldan
    note-enUS Buy 10 [Melon Juice] from him
    note-ptBR Compre 10 [Melon Juice] dele
    collect 1205 10 |quest 4740 |q 4740/1
step
    goto 1439 @529.3,6415.93
    note-enUS Talk to Taldan
    note-ptBR Fale com Taldan
    note-enUS Buy 5 [Melon Juice] from him
    note-ptBR Compre 5 [Melon Juice] dele
    collect 1205 5 |quest 4740 |q 4740/1
step
    goto 1439 @533.23,6399.77
    note-enUS Talk to Laird
    note-ptBR Fale com Laird
    note-enUS Buy up to 40 [Longjaw Mud Snappers] from him
    note-ptBR Compre até 40 [Longjaw Mud Snappers] dele
    collect 4592 40 |quest 4740 |q 4740/1
step
    goto 1439 @503.76,6402.39
    note-enUS REMOVE THIS STEP LATER
    note-ptBR REMOVER ESTE PASSO DEPOIS
    accept 4740
step
    goto 1439 @577.77,6371.39
    note-enUS Talk to Gubber
    note-ptBR Fale com Gubber
    accept 1138
step
    goto 1439 @89.14,5002
    note-enUS Talk to Onu
    note-ptBR Fale com Onu
    turnin 948
    accept 944
step
    goto 1439 @33.47,4996.33
    note-enUS Talk to Kerlonian
    note-ptBR Fale com Kerlonian
    note-enUS If Kerlonian is not there, skip this step
    note-ptBR Se Kerlonian não estiver lá, pule esta etapa
    accept 5321
step
    ifonquest 5321
    goto 1439 @34.12,5001.57
    note-enUS Open Kerlonian's Chest. Loot it for the Horn of Awakening
    note-ptBR Abra o Kerlonian's Chest. Saqueie-o para obter o Horn of Awakening
    note-enUS Use the [Horn of Awakening] on Kerlonian when he falls asleep
    note-ptBR Use o [Horn of Awakening] em Kerlonian quando ele adormecer
    note-enUS These both have a 5 second cast time
    note-ptBR Ambos têm 5 segundos de tempo de conjuração
    objective 5321/1
step
    ifonquest 5321
    goto 1439 @410.09,4519.49
    note-enUS AoE Moonstalker Sires. Loot them for their Fine Moonstalker Pelts
    note-ptBR Use AoE em Moonstalker Sires. Saqueie-os para obter Fine Moonstalker Pelts
    note-enUS Moonstalker Sires share spawns with Grizzled Thistle Bears and Giant Foreststriders
    note-ptBR Moonstalker Sires compartilham spawns com Grizzled Thistle Bears e Giant Foreststriders
    objective 986/1 |opt
    use 13536 |opt
    note-enUS AoE Grizzled Thistle Bears. Loot them for their Grizzled Scalps
    note-ptBR Use AoE em Grizzled Thistle Bears. Saqueie-os para obter Grizzled Scalps
    note-enUS Grizzled Thistle Bears share spawns with Moonstalker Sires and Giant Foreststriders
    note-ptBR Grizzled Thistle Bears compartilham pontos de ressurgimento com Moonstalker Sires e Giant Foreststriders
    objective 1003/1 |opt
    use 13536 |opt
    note-enUS Travel to The Master's Glaive
    note-ptBR Vá até The Master's Glaive
    objective 944/1
    use 13536
step
    ifonquest 5321
    goto 1439 @410.09,4519.49
    note-enUS AoE Twilight Disciples and Twilight Thugs. Loot them for the [Book: The Powers Below]
    note-ptBR Use AoE em Twilight Disciples e Twilight Thugs. Saqueie-os para obter o [Book: The Powers Below]
    note-enUS Use the [Book: The Powers Below] to start the quest
    note-ptBR Use o [Book: The Powers Below] para iniciar a missão
    collect 5352 1 |quest 968 |q 968/1 |opt
    accept 968 |opt
    use 13536 |opt
    note-enUS Place the [Phial of Scrying] on the ground
    note-ptBR Coloque o [Phial of Scrying] no chão
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    note-enUS Click the Phial of Scrying on the ground
    note-ptBR Clique no Phial of Scrying no chão
    turnin 944 |opt
    accept 949 |opt
    use 13536 |opt
    use 5251 |opt
    note-enUS Talk to Therylune
    note-ptBR Fale com Therylune
    note-enUS If Therylune is not there, AoE Twilight Disciples and Twilight Thugs for [Book: The Powers Below] until she's up
    note-ptBR Se Therylune não estiver lá, use AoE em Twilight Disciples e Twilight Thugs para obter [Book: The Powers Below] até ela aparecer
    accept 945
    use 13536
step
    ifonquest 5321
    goto 1439 @416.64,4576.69
    note-enUS Escort Therylune
    note-ptBR Escolte Therylune
    objective 945/1 |opt
    use 13536 |opt
    note-enUS Place the [Phial of Scrying] on the ground
    note-ptBR Coloque o [Phial of Scrying] no chão
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    note-enUS Click the Phial of Scrying on the ground
    note-ptBR Clique no Phial of Scrying no chão
    turnin 944
    accept 949
    use 13536
    use 5251
step
    ifonquest 5321
    goto 1439 @416.64,4576.69
    note-enUS Click the Twilight Tome
    note-ptBR Clique no Twilight Tome
    turnin 949
    accept 950
    use 13536
step
    ifonquest 950
    note-enUS Escort Therylune
    note-ptBR Escolte Therylune
    note-enUS Make sure Therylune stays in render range or you will fail the quest
    note-ptBR Mantenha Therylune dentro do alcance de visão ou você falhará na missão
    objective 945/1
    use 13536
step
    ifonquest 950
    goto 1439 @602.01,4678.87
    note-enUS AoE Moonstalker Sires. Loot them for their Fine Moonstalker Pelts
    note-ptBR Use AoE em Moonstalker Sires. Saqueie-os para obter Fine Moonstalker Pelts
    note-enUS Moonstalker Sires share spawns with Grizzled Thistle Bears and Giant Foreststriders
    note-ptBR Moonstalker Sires compartilham spawns com Grizzled Thistle Bears e Giant Foreststriders
    objective 986/1 |opt
    use 13536 |opt
    note-enUS AoE Grizzled Thistle Bears. Loot them for their Grizzled Scalps
    note-ptBR Use AoE em Grizzled Thistle Bears. Saqueie-os para obter Grizzled Scalps
    note-enUS Grizzled Thistle Bears share spawns with Moonstalker Sires and Giant Foreststriders
    note-ptBR Grizzled Thistle Bears compartilham pontos de ressurgimento com Moonstalker Sires e Giant Foreststriders
    objective 1003/1 |opt
    use 13536 |opt
    note-enUS Talk to Remtravel to start the escort
    note-ptBR Fale com Remtravel para iniciar a escolta
    turnin 729
    accept 731
    use 13536
step
    ifonquest 950
    path seq 1439 @626.24,4633.89 @569.26,4572.76 @626.24,4633.89 @602.01,4678.87
    goto 1439 @892.83,4517.3
    note-enUS Escort Remtravel
    note-ptBR Escolte Remtravel
    note-enUS When the Gravelflint Bonesnapper and Gravelflint Geomancer spawn, let the Gravelflint Geomancer cast [Fireball] on Remtravel, then cast [Polymorph] on it. Kill the Gravelflint Bonesnapper and then the Gravelflint Geomancer
    note-ptBR Quando o Gravelflint Bonesnapper e o Gravelflint Geomancer surgirem, deixe o Geomancer lançar [Fireball] em Remtravel e então use [Polymorph] nele. Mate o Bonesnapper e depois o Geomancer
    objective 731/1
    use 13536
step
    ifonquest 950
    goto 1439 @892.83,4517.3
    note-enUS AoE Moonstalker Sires. Loot them for their Fine Moonstalker Pelts
    note-ptBR Use AoE em Moonstalker Sires. Saqueie-os para obter Fine Moonstalker Pelts
    note-enUS Moonstalker Sires share spawns with Grizzled Thistle Bears and Giant Foreststriders
    note-ptBR Moonstalker Sires compartilham spawns com Grizzled Thistle Bears e Giant Foreststriders
    objective 986/1 |opt
    use 13536 |opt
    note-enUS AoE Grizzled Thistle Bears. Loot them for their Grizzled Scalps
    note-ptBR Use AoE em Grizzled Thistle Bears. Saqueie-os para obter Grizzled Scalps
    note-enUS Grizzled Thistle Bears share spawns with Moonstalker Sires and Giant Foreststriders
    note-ptBR Grizzled Thistle Bears compartilham pontos de ressurgimento com Moonstalker Sires e Giant Foreststriders
    objective 1003/1 |opt
    use 13536 |opt
    note-enUS Don't re-awaken Kerlonian from now on
    note-ptBR Não desperte Kerlonian novamente daqui em diante
    note-enUS Keep an eye out for Strider Clutchmother
    note-ptBR Fique atento a Strider Clutchmother
    note-enUS Loot the Beached Sea Creature on the ground
    note-ptBR Saqueie a Beached Sea Creature no chão
    note-enUS Loot it at the Neck
    note-ptBR Saqueie-o pelo pescoço
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    accept 4733
step
    ifonquest 950
    goto 1439 @896.76,4597.21
    abandon 5321 |opt
    note-enUS Abandon The Sleeper has Awakened
    note-ptBR Abandone The Sleeper has Awakened
    note-enUS Loot the Beached Sea Turtle on the ground
    note-ptBR Saqueie a Beached Sea Turtle no chão
    note-enUS The Turtle Shell has LoS
    note-ptBR O casco de tartaruga bloqueia a linha de visão
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    accept 4732
step
    ifonquest 950
    goto 1439 @865.32,4678.43
    note-enUS AoE Encrusted Tide Crawlers. Loot them for their Fine Crab Chunks
    note-ptBR Use AoE em Encrusted Tide Crawlers. Saqueie-os para obter Fine Crab Chunks
    objective 1138/1 |opt
    note-enUS Loot the Beached Sea Turtle on the ground
    note-ptBR Saqueie a Beached Sea Turtle no chão
    note-enUS The Turtle Shell has LoS
    note-ptBR O casco de tartaruga bloqueia a linha de visão
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    accept 4731
step
    ifonquest 950
    goto 1439 @799.82,4808.12
    note-enUS Loot the Beached Sea Creature on the ground
    note-ptBR Saqueie a Beached Sea Creature no chão
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    accept 4730
step
    ifonquest 950
    goto 1439 @549.61,4990.65
    note-enUS AoE Reef Crawlers. Loot them for their Fine Crab Chunks
    note-ptBR Use AoE em Reef Crawlers. Saqueie-os para obter Fine Crab Chunks
    objective 1138/1 |opt
    note-enUS Clear the Murloc Camp without moving to the center of the camp
    note-ptBR Limpe o Murloc Camp sem ir para o centro do acampamento
    note-enUS Once you clear everything, move to the center of the camp to summon 3 waves (3 Coastrunners, 2 Warriors, Murkdeep and a Hunter)
    note-ptBR Depois de limpar tudo, vá ao centro do acampamento para invocar 3 ondas (3 Coastrunners, 2 Warriors, Murkdeep e um Hunter)
    note-enUS If you're lucky, Murkdeep might already be up about 30 yards off the shore to the west (if someone died on him before)
    note-ptBR Com sorte, Murkdeep pode já estar ativo a uns 30 metros da costa, a oeste (se alguém morreu para ele antes)
    objective 4740/1
step
    ifonquest 950
    path seq 1439 @586.29,5048.73 @583.01,5124.71 @647.86,5180.6 @621.66,5210.29
    goto 1439 @585.63,5237.37
    note-enUS AoE Reef Crawlers. Loot them for their Fine Crab Chunks
    note-ptBR Use AoE em Reef Crawlers. Saqueie-os para obter Fine Crab Chunks
    objective 1138/1 |opt
    note-enUS Loot the Beached Sea Creature on the ground
    note-ptBR Saqueie a Beached Sea Creature no chão
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    accept 4728
step
    ifonquest 950
    path seq 1439 @621.66,5210.29 @647.86,5180.6 @583.01,5124.71 @586.29,5048.73 @609.21,4921.66 @631.48,4858.78
    goto 1439 @702.88,4809
    note-enUS AoE Reef Crawlers. Loot them for their Fine Crab Chunks
    note-ptBR Use AoE em Reef Crawlers. Saqueie-os para obter Fine Crab Chunks
    objective 1138/1
step
    ifcomplete 950
    goto 1439 @89.14,5002
    note-enUS AoE Moonstalker Sires. Loot them for their Fine Moonstalker Pelts
    note-ptBR Use AoE em Moonstalker Sires. Saqueie-os para obter Fine Moonstalker Pelts
    note-enUS Moonstalker Sires share spawns with Grizzled Thistle Bears and Giant Foreststriders
    note-ptBR Moonstalker Sires compartilham spawns com Grizzled Thistle Bears e Giant Foreststriders
    objective 986/1 |opt
    use 13536 |opt
    note-enUS AoE Grizzled Thistle Bears. Loot them for their Grizzled Scalps
    note-ptBR Use AoE em Grizzled Thistle Bears. Saqueie-os para obter Grizzled Scalps
    note-enUS Grizzled Thistle Bears share spawns with Moonstalker Sires and Giant Foreststriders
    note-ptBR Grizzled Thistle Bears compartilham pontos de ressurgimento com Moonstalker Sires e Giant Foreststriders
    objective 1003/1 |opt
    use 13536 |opt
    note-enUS Talk to Onu
    note-ptBR Fale com Onu
    turnin 950
step
    goto 1439 @585.63,5237.37
    note-enUS Loot the Beached Sea Creature on the ground
    note-ptBR Saqueie a Beached Sea Creature no chão
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    accept 4728
step
    path seq 1439 @621.66,5210.29 @647.86,5180.6 @583.01,5124.71 @586.29,5048.73
    goto 1439 @549.61,4990.65
    note-enUS AoE Reef Crawlers. Loot them for their Fine Crab Chunks
    note-ptBR Use AoE em Reef Crawlers. Saqueie-os para obter Fine Crab Chunks
    objective 1138/1 |opt
    note-enUS Clear the Murloc Camp without moving to the center of the camp
    note-ptBR Limpe o Murloc Camp sem ir para o centro do acampamento
    note-enUS Once you clear everything, move to the center of the camp to summon 3 waves (3 Coastrunners, 2 Warriors, Murkdeep and a Hunter)
    note-ptBR Depois de limpar tudo, vá ao centro do acampamento para invocar 3 ondas (3 Coastrunners, 2 Warriors, Murkdeep e um Hunter)
    note-enUS If you're lucky, Murkdeep might already be up about 30 yards off the shore to the west (if someone died on him before)
    note-ptBR Com sorte, Murkdeep pode já estar ativo a uns 30 metros da costa, a oeste (se alguém morreu para ele antes)
    objective 4740/1
step
    path seq 1439 @609.21,4921.66 @631.48,4858.78 @702.88,4809
    goto 1439 @799.82,4808.12
    note-enUS AoE Reef Crawlers. Loot them for their Fine Crab Chunks
    note-ptBR Use AoE em Reef Crawlers. Saqueie-os para obter Fine Crab Chunks
    objective 1138/1 |opt
    note-enUS Loot the Beached Sea Creature on the ground
    note-ptBR Saqueie a Beached Sea Creature no chão
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    accept 4730
step
    path seq 1439 @793.27,4764.89
    goto 1439 @840.43,4696.77
    note-enUS AoE Encrusted Tide Crawlers. Loot them for their Fine Crab Chunks
    note-ptBR Use AoE em Encrusted Tide Crawlers. Saqueie-os para obter Fine Crab Chunks
    objective 1138/1
step
    goto 1439 @865.32,4678.43
    note-enUS Loot the Beached Sea Turtle on the ground
    note-ptBR Saqueie a Beached Sea Turtle no chão
    note-enUS The Turtle Shell has LoS
    note-ptBR O casco de tartaruga bloqueia a linha de visão
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    accept 4731
step
    goto 1439 @896.76,4597.21
    note-enUS Loot the Beached Sea Turtle on the ground
    note-ptBR Saqueie a Beached Sea Turtle no chão
    note-enUS The Turtle Shell has LoS
    note-ptBR O casco de tartaruga bloqueia a linha de visão
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    accept 4732
step
    goto 1439 @892.83,4517.3
    note-enUS Loot the Beached Sea Creature on the ground
    note-ptBR Saqueie a Beached Sea Creature no chão
    note-enUS Loot it at the Neck
    note-ptBR Saqueie-o pelo pescoço
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    accept 4733
step
    goto 1439 @602.01,4678.87
    note-enUS AoE Moonstalker Sires. Loot them for their Fine Moonstalker Pelts
    note-ptBR Use AoE em Moonstalker Sires. Saqueie-os para obter Fine Moonstalker Pelts
    note-enUS Moonstalker Sires share spawns with Grizzled Thistle Bears and Giant Foreststriders
    note-ptBR Moonstalker Sires compartilham spawns com Grizzled Thistle Bears e Giant Foreststriders
    objective 986/1 |opt
    use 13536 |opt
    note-enUS AoE Grizzled Thistle Bears. Loot them for their Grizzled Scalps
    note-ptBR Use AoE em Grizzled Thistle Bears. Saqueie-os para obter Grizzled Scalps
    note-enUS Grizzled Thistle Bears share spawns with Moonstalker Sires and Giant Foreststriders
    note-ptBR Grizzled Thistle Bears compartilham pontos de ressurgimento com Moonstalker Sires e Giant Foreststriders
    objective 1003/1 |opt
    use 13536 |opt
    note-enUS Don't re-awaken Kerlonian from now on
    note-ptBR Não desperte Kerlonian novamente daqui em diante
    note-enUS Keep an eye out for Strider Clutchmother
    note-ptBR Fique atento a Strider Clutchmother
    note-enUS Talk to Remtravel to start the escort
    note-ptBR Fale com Remtravel para iniciar a escolta
    turnin 729
    accept 731
step
    path seq 1439 @626.24,4633.89 @569.26,4572.76 @626.24,4633.89 @602.01,4678.87
    goto 1439 @410.09,4519.49
    note-enUS Escort Remtravel
    note-ptBR Escolte Remtravel
    note-enUS When the Gravelflint Bonesnapper and Gravelflint Geomancer spawn, let the Gravelflint Geomancer cast [Fireball] on Remtravel, then cast [Polymorph] on it. Kill the Gravelflint Bonesnapper and then the Gravelflint Geomancer
    note-ptBR Quando o Gravelflint Bonesnapper e o Gravelflint Geomancer surgirem, deixe o Geomancer lançar [Fireball] em Remtravel e então use [Polymorph] nele. Mate o Bonesnapper e depois o Geomancer
    objective 731/1
step
    goto 1439 @410.09,4519.49
    note-enUS AoE Moonstalker Sires. Loot them for their Fine Moonstalker Pelts
    note-ptBR Use AoE em Moonstalker Sires. Saqueie-os para obter Fine Moonstalker Pelts
    note-enUS Moonstalker Sires share spawns with Grizzled Thistle Bears and Giant Foreststriders
    note-ptBR Moonstalker Sires compartilham spawns com Grizzled Thistle Bears e Giant Foreststriders
    objective 986/1 |opt
    note-enUS AoE Grizzled Thistle Bears. Loot them for their Grizzled Scalps
    note-ptBR Use AoE em Grizzled Thistle Bears. Saqueie-os para obter Grizzled Scalps
    note-enUS Grizzled Thistle Bears share spawns with Moonstalker Sires and Giant Foreststriders
    note-ptBR Grizzled Thistle Bears compartilham pontos de ressurgimento com Moonstalker Sires e Giant Foreststriders
    objective 1003/1 |opt
    note-enUS Travel to The Master's Glaive
    note-ptBR Vá até The Master's Glaive
    objective 944/1
step
    goto 1439 @410.09,4519.49
    note-enUS AoE Twilight Disciples and Twilight Thugs. Loot them for the [Book: The Powers Below]
    note-ptBR Use AoE em Twilight Disciples e Twilight Thugs. Saqueie-os para obter o [Book: The Powers Below]
    note-enUS Use the [Book: The Powers Below] to start the quest
    note-ptBR Use o [Book: The Powers Below] para iniciar a missão
    collect 5352 1 |quest 968 |q 968/1 |opt
    accept 968 |opt
    note-enUS Place the [Phial of Scrying] on the ground
    note-ptBR Coloque o [Phial of Scrying] no chão
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    note-enUS Click the Phial of Scrying on the ground
    note-ptBR Clique no Phial of Scrying no chão
    turnin 944 |opt
    accept 949 |opt
    use 5251 |opt
    note-enUS Talk to Therylune
    note-ptBR Fale com Therylune
    note-enUS If Therylune is not there, AoE Twilight Disciples and Twilight Thugs for [Book: The Powers Below] until she's up
    note-ptBR Se Therylune não estiver lá, use AoE em Twilight Disciples e Twilight Thugs para obter [Book: The Powers Below] até ela aparecer
    accept 945
step
    goto 1439 @416.64,4576.69
    note-enUS Escort Therylune
    note-ptBR Escolte Therylune
    objective 945/1 |opt
    note-enUS Place the [Phial of Scrying] on the ground
    note-ptBR Coloque o [Phial of Scrying] no chão
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    note-enUS Click the Phial of Scrying on the ground
    note-ptBR Clique no Phial of Scrying no chão
    turnin 944
    accept 949
    use 5251
step
    goto 1439 @416.64,4576.69
    note-enUS Click the Twilight Tome
    note-ptBR Clique no Twilight Tome
    turnin 949
    accept 950
    use 13536
step
    note-enUS Escort Therylune
    note-ptBR Escolte Therylune
    note-enUS Make sure Therylune stays in render range or you will fail the quest
    note-ptBR Mantenha Therylune dentro do alcance de visão ou você falhará na missão
    objective 945/1
    use 13536
step
    path seq 1439 @229.97,4815.55
    goto 1439 @89.14,5002
    note-enUS AoE Moonstalker Sires. Loot them for their Fine Moonstalker Pelts
    note-ptBR Use AoE em Moonstalker Sires. Saqueie-os para obter Fine Moonstalker Pelts
    note-enUS Moonstalker Sires share spawns with Grizzled Thistle Bears and Giant Foreststriders
    note-ptBR Moonstalker Sires compartilham spawns com Grizzled Thistle Bears e Giant Foreststriders
    objective 986/1 |opt
    note-enUS AoE Grizzled Thistle Bears. Loot them for their Grizzled Scalps
    note-ptBR Use AoE em Grizzled Thistle Bears. Saqueie-os para obter Grizzled Scalps
    note-enUS Grizzled Thistle Bears share spawns with Moonstalker Sires and Giant Foreststriders
    note-ptBR Grizzled Thistle Bears compartilham pontos de ressurgimento com Moonstalker Sires e Giant Foreststriders
    objective 1003/1 |opt
    note-enUS Click Buzzbox 525
    note-ptBR Clique em Buzzbox 525
    turnin 1003 |opt
    note-enUS Talk to Onu
    note-ptBR Fale com Onu
    turnin 950
step
    goto 1439 @33.47,4996.33
    note-enUS Talk to Kerlonian
    note-ptBR Fale com Kerlonian
    note-enUS If Kerlonian is not there, skip this step
    note-ptBR Se Kerlonian não estiver lá, pule esta etapa
    accept 5321
step
    ifonquest 5321
    goto 1439 @34.12,5001.57
    note-enUS Open Kerlonian's Chest. Loot it for the Horn of Awakening
    note-ptBR Abra o Kerlonian's Chest. Saqueie-o para obter o Horn of Awakening
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    objective 5321/1
step
    path seq 1439 @63.6,4833.89 @119.27,4764.89 @217.52,4686.29 @311.84,4708.13 @406.82,4733.45 @444.15,4850.92 @287.61,4815.11 @63.6,4833.89 @119.27,4764.89 @217.52,4686.29 @311.84,4708.13 @406.82,4733.45 @444.15,4850.92
    goto 1439 @287.61,4815.11
    note-enUS AoE Moonstalker Sires. Loot them for their Fine Moonstalker Pelts
    note-ptBR Use AoE em Moonstalker Sires. Saqueie-os para obter Fine Moonstalker Pelts
    note-enUS Moonstalker Sires share spawns with Grizzled Thistle Bears and Giant Foreststriders
    note-ptBR Moonstalker Sires compartilham spawns com Grizzled Thistle Bears e Giant Foreststriders
    objective 986/1 |opt
    note-enUS AoE Grizzled Thistle Bears. Loot them for their Grizzled Scalps
    note-ptBR Use AoE em Grizzled Thistle Bears. Saqueie-os para obter Grizzled Scalps
    note-enUS Grizzled Thistle Bears share spawns with Moonstalker Sires and Giant Foreststriders
    note-ptBR Grizzled Thistle Bears compartilham pontos de ressurgimento com Moonstalker Sires e Giant Foreststriders
    objective 1003/1
    use 13536
step
    goto 1439 @229.97,4815.55
    note-enUS Click Buzzbox 525
    note-ptBR Clique em Buzzbox 525
    turnin 1003
    use 13536
step
    path seq 1439 @249.62,4657.91 @296.78,4381.94 @545.68,4379.32 @537.82,4202.47 @140.89,4372.77 @205.73,4495.91 @22.33,4271.02 @249.62,4657.91 @296.78,4381.94 @545.68,4379.32 @537.82,4202.47 @140.89,4372.77 @205.73,4495.91
    goto 1439 @22.33,4271.02
    note-enUS AoE Moonstalker Matriarchs and Moonstalker Sires. Loot them for their Fine Moonstalker Pelts
    note-ptBR Use AoE em Moonstalker Matriarchs e Moonstalker Sires. Saqueie-os para obter Fine Moonstalker Pelts
    note-enUS Moonstalker Sires share spawns with Grizzled Thistle Bears and Giant Foreststriders
    note-ptBR Moonstalker Sires compartilham spawns com Grizzled Thistle Bears e Giant Foreststriders
    objective 986/1
    use 13536
step
    ifonquest 5321
    goto 1440 @128.01,3305.31
    level 19 |opt
    note-enUS Grind to 4635+/21300xp
    note-ptBR Mate monstros até 4635+/21300xp
    note-enUS AoE Ghostpaw Runners. Loot them for their Lean Wolf Flanks
    note-ptBR Use AoE em Ghostpaw Runners. Saqueie-os para obter Lean Wolf Flanks
    collect 1015 10 |quest 90 |q 90/1 |opt
    note-enUS Talk to Liladris
    note-ptBR Fale com Liladris
    turnin 5321 |reward 1
    use 13536
step
    goto 1440 @189.71,3185.39
    note-enUS Talk to Delgren
    note-ptBR Fale com Delgren
    turnin 967
step
    goto 1440 @394.43,2677.63
    note-enUS Talk to Therysil
    note-ptBR Fale com Therysil
    turnin 945
step
    goto 1440 @-284.31,2828.3
    level 19
    note-enUS Grind to 8720+/21300xp
    note-ptBR Mate monstros até 8720+/21300xp
step
    goto 1440 @-284.31,2828.3
    path seq 1439 @543.06,6342.13
    goto 1439 @577.77,6371.39
    note-enUS Talk to Daelyshia
    note-ptBR Fale com Daelyshia
    fp |opt
    note-enUS Fly to Auberdine
    note-ptBR Voe para Auberdine
    note-enUS Talk to Gwennyth and Gubber
    note-ptBR Fale com Gwennyth e Gubber
    turnin 4728
    turnin 4730
    turnin 4731
    turnin 4732
    turnin 4733
    turnin 1138 |reward 2
step
    goto 1439 @470.35,6439.07
    note-enUS Talk to Glynda
    note-ptBR Fale com Glynda
    turnin 4740
step
    path seq 1439 @362.93,6434.71
    goto 1439 @431.71,6453.92
    note-enUS Talk to Terenthis and Gershala
    note-ptBR Fale com Terenthis e Gershala
    turnin 986
    turnin 3765
step
    ifskillbelow cooking 50
    goto 1439 @445.46,6536.01
    note-enUS Talk to Gorbold
    note-ptBR Fale com Gorbold
    note-enUS Buy 20 [Mild Spices] from him
    note-ptBR Compre 20 [Mild Spices] dele
    collect 2678 20 |quest 90 |q 90/1
step
    ifskillbelow cooking 50
    goto 1439 @445.46,6536.01
    note-enUS Talk to Gorbold
    note-ptBR Fale com Gorbold
    note-enUS Buy 15 [Mild Spices] from him
    note-ptBR Compre 15 [Mild Spices] dele
    collect 2678 15 |quest 90 |q 90/1
step
    ifskillbelow cooking 50
    goto 1439 @445.46,6536.01
    note-enUS Talk to Gorbold
    note-ptBR Fale com Gorbold
    note-enUS Buy 10 [Mild Spices] from him
    note-ptBR Compre 10 [Mild Spices] dele
    collect 2678 10 |quest 90 |q 90/1
step
    ifskillbelow cooking 50
    goto 1439 @445.46,6536.01
    note-enUS Talk to Gorbold
    note-ptBR Fale com Gorbold
    note-enUS Buy 5 [Mild Spices] from him
    note-ptBR Compre 5 [Mild Spices] dele
    collect 2678 5 |quest 90 |q 90/1
step
    ifskillbelow cooking 50
    goto 1439 @488.69,6564.83
    note-enUS Talk to Dalmond
    note-ptBR Fale com Dalmond
    note-enUS Buy a [Simple Wood] and [Flint and Tinder] from him
    note-ptBR Compre um [Simple Wood] e [Flint and Tinder] dele
    collect 4470 1 |quest 90 |q 90/1
    collect 4471 1 |quest 90 |q 90/1
step
    goto 1439 @489.35,6506.32
    note-enUS Talk to Hollee
    note-ptBR Fale com Hollee
    turnin 731
    accept 741
step
    path seq 1439 @487.38,6479.68 @489.35,6454.36 @527.99,6409.82 @782.79,6504.57
    goto 1439 @765.1,6590.6 50
    goto 1438 @1018.75,8564.77 100
    note-enUS Travel toward the Darnassus Boat
    note-ptBR Vá em direção a Darnassus Boat
    note-enUS Cast [Basic Campfire] on the Boat (or Dock if the boat isn't visible yet)
    note-ptBR Lance [Basic Campfire] no barco (ou no cais se o barco ainda não estiver visível)
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    note-enUS Cook any [Chunks of Boar Meat] into [Roasted Boar Meat]
    note-ptBR Cozinhe quaisquer [Chunks of Boar Meat] em [Roasted Boar Meat]
    note-enUS Start spam casting [Conjure Water r2] to conjure as much water as possible
    note-ptBR Comece a conjurar [Conjure Water r2] sem parar para fazer o máximo de água possível
    note-enUS Take the Boat to Teldrassil
    note-ptBR Pegue o barco para Teldrassil
step
    path seq 1438 @987.69,8651.99 @922.52,8678.46 @888.4,8676.08
    goto 1438 @841.05,8641.12 20
    note-enUS Travel toward Vesprystus
    note-ptBR Vá em direção a Vesprystus
    note-enUS Talk to Vesprystus
    note-ptBR Fale com Vesprystus
    fp
    note-enUS Get the Rut'theran Village flight path
    note-ptBR Pegue o ponto de voo de Rut'theran Village
step
    goto 1438 55.88,89.35
    path seq 1457 @2536.83,9898.58 @2534.08,9772.82 @2549,9727.09
    goto 1457 @2607.74,9642.04 20
    zone 1457 |opt
    note-enUS Go through the purple portal into Darnassus
    note-ptBR Atravesse o portal roxo para Darnassus
    note-enUS Travel toward Greywhisker
    note-ptBR Vá em direção a Greywhisker
    note-enUS Talk to Greywhisker
    note-ptBR Fale com Greywhisker
    turnin 741 |reward 3
    accept 942
]==])

register([==[
#format 1
#id forever.a.20-22-adv-redridge-1-mage-aoe
#name 20-22 ADV Redridge 1 Mage AoE
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 2
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#only Mage
#levels 20-22
#name-ptBR 20-22 Avançado Redridge 1 Mago AoE
#group Mage AoE - Advanced (Alliance)
#group-ptBR Mago AoE - Avançado (Aliança)
#recommend Human Mage Gnome Mage

step
    goto 1453 @635.44,-8863.81
    hearth |opt
    note-enUS Hearth to Stormwind City
    note-ptBR Use a pedra de regresso para Stormwind City
    note-enUS Talk to Keldric through the wall
    note-ptBR Fale com Keldric através da parede
    vendor
    note-enUS Vendor Trash. Buy [Lesser Healing Potions] from him (if they're up)
    note-ptBR Venda o lixo. Compre [Lesser Healing Potions] dele (se estiverem disponíveis)
step
    path seq 1453 @637.59,-8889.81
    goto 1453 @614.33,-8932.92
    note-enUS Enter the Stormwind Bank
    note-ptBR Entre no banco de Stormwind
    note-enUS Talk to Newton
    note-ptBR Fale com Newton
    note-enUS Withdraw the following items from your bank:
    note-ptBR Retire os seguintes itens do seu banco:
    note-enUS [Bronze Tube]
    note-ptBR [Bronze Tube]
    note-enUS [Scrolls]
    note-ptBR [Scrolls]
    note-enUS [Cask of Merlot]
    note-ptBR [Cask of Merlot]
    note-enUS [A Simple Compass]
    note-ptBR [A Simple Compass]
step
    goto 1453 @614.33,-8932.92
    note-enUS Talk to Newton
    note-ptBR Fale com Newton
    note-enUS NOTE: You need 12 stacks of each cloth ([Wool Cloth], [Silk Cloth], [Mageweave Cloth], and [Runecloth]) to do the cloth turnins later. You'll get these naturally as you level
    note-ptBR NOTA: Você precisa de 12 pilhas de cada tecido ([Wool Cloth], [Silk Cloth], [Mageweave Cloth] e [Runecloth]) para as entregas de tecido depois. Você os obterá naturalmente enquanto sobe de nível
    note-enUS Deposit the following items into the bank:
    note-ptBR Deposite os seguintes itens no banco:
    note-enUS [Light Feather]
    note-ptBR [Light Feather]
    note-enUS [Wool Cloth]
    note-ptBR [Wool Cloth]
    note-enUS [Lean Wolf Flank]
    note-ptBR [Lean Wolf Flank]
    note-enUS [Mysterious Fossil]
    note-ptBR [Mysterious Fossil]
step
    path seq 1453 @679.8,-8829.57 @716.77,-8847.23 @693.24,-8891.33
    goto 1453 @681.28,-8888.01
    note-enUS Travel toward Roberto
    note-ptBR Vá em direção a Roberto
    note-enUS Go inside the building
    note-ptBR Entre no prédio
    note-enUS Talk to Roberto
    note-ptBR Fale com Roberto
    note-enUS Buy a [Cask of Merlot] from him
    note-ptBR Compre um [Cask of Merlot] dele
    collect 1941 1 |quest 116 |q 116/1
step
    path seq 1453 @686.25,-8815.41 @684.24,-8820.34 @687.46,-8818.01 @854.42,-8965.28 @861.95,-8990.47
    goto 1453 @847.43,-8991.99
    note-enUS Jump up onto the torch, then drop down to get under Stormwind
    note-ptBR Suba na tocha e depois desça para ficar embaixo de Stormwind
    note-enUS With Shadows on "Fair" or "Low", get in the middle of Derek the Dinosaur's feet (the lighter part of the dirt) just before the blue void, then walk straight forward
    note-ptBR Com Sombras em "Razoável" ou "Baixo", fique entre os pés de Derek the Dinosaur (a parte mais clara da terra) logo antes do vazio azul e ande reto para frente
    note-enUS NOTE: There is a small chance of dying using this method. You can also walk to the Mage Tower normally if you wish
    note-ptBR NOTA: Há uma pequena chance de morrer usando este método. Se preferir, você também pode andar normalmente até a Mage Tower
    note-enUS Travel toward Larimaine
    note-ptBR Vá em direção a Larimaine
    note-enUS Talk to Larimaine
    note-ptBR Fale com Larimaine
    train 3561
    note-enUS Train [Teleport: Stormwind]
    note-ptBR Treine [Teleport: Stormwind]
    note-enUS Total Cost: 20s
    note-ptBR Custo total: 20s
step
    goto 1453 @861.95,-8990.47
    note-enUS Talk to Jennea
    note-ptBR Fale com Jennea
    trainer
    note-enUS Train your class spells (Blink, Evocation, Frost Armor r3, Mana Shield, Conjure Water r3)
    note-ptBR Treine suas magias de classe (Blink, Evocation, Frost Armor r3, Mana Shield, Conjure Water r3)
    note-enUS Do NOT train Blizzard yet
    note-ptBR NÃO treine Blizzard ainda
    note-enUS Total Cost: 1g
    note-ptBR Custo total: 1g
step
    path seq 1453 @887.22,-9017.8 @871.36,-9013.14 @868.8,-9004.27 @877,-9008.03 @863.96,-9001.4 @928.62,-9010.1 @962.63,-8990.73 @949.86,-9009.38 @942.34,-9001.49
    goto 1453 @948.65,-8994.5 10
    note-enUS Exit the Mage Tower
    note-ptBR Saia da Mage Tower
    note-enUS Travel toward Charys
    note-ptBR Vá em direção a Charys
    note-enUS Enter the building
    note-ptBR Entre no prédio
    note-enUS Talk to Charys
    note-ptBR Fale com Charys
    note-enUS Buy 2 [Runes of Teleportation], [Lesser Mana Potions], [Healing Potions], and a [Cloth Belt] from her (if they're up)
    note-ptBR Compre 2 [Runes of Teleportation], [Lesser Mana Potions], [Healing Potions] e um [Cloth Belt] dela (se estiverem disponíveis)
    note-enUS DON'T go below 18s 31c
    note-ptBR NÃO fique abaixo de 18s 31c
    collect 17031 2 |quest 344 |q 344/1
step
    goto 1453 @948.65,-8994.5
    note-enUS Enter the building
    note-ptBR Entre no prédio
    note-enUS Talk to Charys
    note-ptBR Fale com Charys
    note-enUS Buy two [Runes of Teleportation], [Lesser Mana Potions], [Healing Potions], and a [Cloth Belt] from her (if they're up)
    note-ptBR Compre duas [Runes of Teleportation], [Lesser Mana Potions], [Healing Potions] e um [Cloth Belt] dela (se estiverem disponíveis)
    note-enUS DON'T go below 26s 31c
    note-ptBR NÃO fique abaixo de 26s 31c
    collect 17031 2 |quest 344 |q 344/1
step
    path seq 1453 @852.4,-8920.1 @829.01,-8901.28 @789.22,-8904.59 @758.31,-8878.78 @810.33,-8832.44 @827.54,-8850.19
    goto 1453 @822.16,-8865.6 10
    note-enUS Travel toward Adair
    note-ptBR Vá em direção a Adair
    note-enUS Enter the building
    note-ptBR Entre no prédio
    note-enUS Talk to Adair
    note-ptBR Fale com Adair
    vendor
    note-enUS Buy non-intellect [Scrolls] from him (if they're up)
    note-ptBR Compre [Scrolls] sem intelecto dele (se estiverem disponíveis)
    note-enUS DON'T go below 18s 31c
    note-ptBR NÃO fique abaixo de 18s 31c
step
    goto 1453 @822.16,-8865.6
    note-enUS Enter the building
    note-ptBR Entre no prédio
    note-enUS Talk to Adair
    note-ptBR Fale com Adair
    vendor
    note-enUS Buy non-intellect [Scrolls] from him (if they're up)
    note-ptBR Compre [Scrolls] sem intelecto dele (se estiverem disponíveis)
    note-enUS DON'T go below 26s 31c
    note-ptBR NÃO fique abaixo de 26s 31c
step
    path seq 1453 @872.3,-8803.22 @872.7,-8682.39
    goto 1453 @766.64,-8623.23
    note-enUS Run up the edge of the wall instead of going around
    note-ptBR Suba correndo pela borda da parede em vez de contornar
    note-enUS Talk to Kristoff
    note-ptBR Fale com Kristoff
    accept 343
step
    path seq 1453 @737.74,-8571.69 @736.26,-8558.06
    goto 1453 @719.86,-8550.36 12
    note-enUS Travel toward Baros
    note-ptBR Vá em direção a Baros
    note-enUS Go inside the building
    note-ptBR Entre no prédio
    note-enUS Talk to Baros
    note-ptBR Fale com Baros
    turnin 399
step
    goto 1453 @638.26,-8342.22
    note-enUS Talk to Billibub
    note-ptBR Fale com Billibub
    vendor
    note-enUS Buy a [Bronze Tube] from him if its up
    note-ptBR Compre um [Bronze Tube] dele, se estiver disponível
step
    path seq 1453 @453.16,-8533.33 @405.03,-8486.89 @442.94,-8427.47 @435.41,-8381.66
    goto 1453 @383.66,-8345.63 12
    note-enUS Travel toward Milton
    note-ptBR Vá em direção a Milton
    note-enUS Talk to Milton
    note-ptBR Fale com Milton
    turnin 343
    accept 344
step
    path seq 1453 @435.41,-8381.66 @442.94,-8427.47 @405.03,-8486.89 @450.74,-8539.51 @551.02,-8658.37 @509.88,-8819.71
    goto 1453 @518.35,-8822.04 12
    note-enUS Travel toward Felicia
    note-ptBR Vá em direção a Felicia
    note-enUS Talk to Felicia
    note-ptBR Fale com Felicia
    note-enUS Buy the [Stormwind Seasoning Herbs] from her
    note-ptBR Compre as [Stormwind Seasoning Herbs] dela
    collect 2665 1 |quest 90 |q 90/1
step
    path seq 1453 @508.41,-8803.04 @575.62,-8741.37 @603.58,-8771.67 @530.45,-8847.41 @532.33,-8863.54 @494.56,-8865.78 @495.77,-8870.44
    goto 1453 @504.24,-8956.31 40
    path seq 1429 @44.35,-9458.41
    goto 1429 @8.25,-9460.03
    note-enUS Drop down to the ledge below Dungar
    note-ptBR Desça até a plataforma abaixo de Dungar
    note-enUS Travel toward the Goldshire Inn
    note-ptBR Vá em direção a Goldshire Inn
    note-enUS Talk to Dobbins
    note-ptBR Fale com Dobbins
    note-enUS Buy a [Skin of Sweet Rum] from him
    note-ptBR Compre um [Skin of Sweet Rum] dele
    collect 1939 1 |quest 116 |q 116/1
step
    goto 1429 @16.23,-9462.58
    note-enUS Talk to Farley
    note-ptBR Fale com Farley
    home
    note-enUS Set your Hearthstone to Goldshire
    note-ptBR Defina sua pedra de regresso em Goldshire
step
    path seq 1429 @-158,-8901.52 @-174.32,-8881.39
    goto 1429 @-186.46,-8874.91 10
    note-enUS Travel toward Paxton
    note-ptBR Vá em direção a Paxton
    note-enUS Talk to Paxton
    note-ptBR Fale com Paxton
    turnin 344
    accept 345
step
    path seq 1429 @-174.32,-8881.39 @-158,-8901.52 @-140.3,-8916.57 @-464.48,-9142.47 @-701.54,-9538.96
    goto 1429 @-716.46,-9541.04
    note-enUS Take the Mountain Path toward the Tower of Azora
    note-ptBR Pegue o Mountain Path em direção à Tower of Azora
    note-enUS Talk to Dawn upstairs
    note-ptBR Fale com Dawn no andar de cima
    vendor
    note-enUS Buy non-intellect [Scrolls], [Minor Mana Potions], and [Lesser Healing Potions] from her (if they're up)
    note-ptBR Compre [Scrolls] sem intelecto, [Minor Mana Potions] e [Lesser Healing Potions] dela (se estiverem disponíveis)
    note-enUS DON'T go below 11s 38c
    note-ptBR NÃO fique abaixo de 11s 38c
step
    goto 1429 @-716.46,-9541.04
    note-enUS Talk to Dawn upstairs
    note-ptBR Fale com Dawn no andar de cima
    vendor
    note-enUS Buy non-intellect [Scrolls], [Minor Mana Potions], and [Lesser Healing Potions] from her (if they're up)
    note-ptBR Compre [Scrolls] sem intelecto, [Minor Mana Potions] e [Lesser Healing Potions] dela (se estiverem disponíveis)
    note-enUS DON'T go below 19s 38c
    note-ptBR NÃO fique abaixo de 19s 38c
step
    goto 1429 @-728.26,-9553.08
    note-enUS Go upstairs
    note-ptBR Suba as escadas
    note-enUS Talk to Theocritus
    note-ptBR Fale com Theocritus
    accept 94
step
    path seq 1431 @-1159,-10544.31 @-1164.94,-10533.15
    goto 1431 @-1159.54,-10509.03
    note-enUS Go Inside the Inn
    note-ptBR Entre na estalagem
    note-enUS Talk to Hann
    note-ptBR Fale com Hann
    note-enUS Buy the [Bottle of Moonshine] from him
    note-ptBR Compre a [Bottle of Moonshine] dele
    collect 1942 1 |quest 116 |q 116/1
step
    path seq 1431 @-1164.94,-10533.15 @-1159,-10544.31 @-1197.61,-10585.35
    goto 1431 @-1200.85,-10593.99
    note-enUS Exit the Inn
    note-ptBR Saia da estalagem
    note-enUS Go inside the building
    note-ptBR Entre no prédio
    note-enUS Talk to Elaine
    note-ptBR Fale com Elaine
    accept 163
    accept 164
    accept 165
step
    goto 1431 @-1272.67,-10586.07
    note-enUS Talk to Herble
    note-ptBR Fale com Herble
    vendor
    note-enUS Buy a [Bronze Tube] from him if its up
    note-ptBR Compre um [Bronze Tube] dele, se estiver disponível
step
    goto 1431 @-1320.73,-10581.75
    note-enUS Talk to Viktori
    note-ptBR Fale com Viktori
    accept 174
    turnin 174
    accept 175
step
    ifturnedin 174
    goto 1431 @-1320.73,-10581.75
    note-enUS Talk to Viktori
    note-ptBR Fale com Viktori
    accept 175
step
    ifturnedin 174
    goto 1431 @-1366.09,-10779.03
    note-enUS Talk to Mary
    note-ptBR Fale com Mary
    turnin 175
    accept 177
step
    goto 1431 @-1258.63,-10513.89
    note-enUS Talk to Felicia
    note-ptBR Fale com Felicia
    fp
    note-enUS Get the Duskwood flight path
    note-ptBR Pegue o ponto de voo de Duskwood
step
    path seq 1431 @-1236.49,-10139.49
    goto 1431 @-1375.81,-10072.35 20
    note-enUS Travel toward Kzixx
    note-ptBR Vá em direção a Kzixx
    note-enUS Talk to Kzixx
    note-ptBR Fale com Kzixx
    vendor
    note-enUS Buy [Lesser Mana Potions] and [Healing Potions] from him (if they're up)
    note-ptBR Compre [Lesser Mana Potions] e [Healing Potions] dele (se estiverem disponíveis)
step
    goto 1431 @-1375.81,-10072.35
    note-enUS Talk to Kzixx
    note-ptBR Fale com Kzixx
    vendor
    note-enUS Buy [Lesser Mana Potions] and [Healing Potions] from him (if they're up)
    note-ptBR Compre [Lesser Mana Potions] e [Healing Potions] dele (se estiverem disponíveis)
step
    goto 1431 @-1375.81,-10072.35
    note-enUS Talk to Kzixx
    note-ptBR Fale com Kzixx
    vendor
    note-enUS Buy [Lesser Mana Potions] and [Healing Potions] from him (if they're up)
    note-ptBR Compre [Lesser Mana Potions] e [Healing Potions] dele (se estiverem disponíveis)
step
    goto 1431 @-1375.81,-10072.35
    note-enUS Talk to Kzixx
    note-ptBR Fale com Kzixx
    vendor
    note-enUS Buy [Lesser Mana Potions], [Healing Potions], and a [Cloth Belt] from him (if they're up, and if needed)
    note-ptBR Compre [Lesser Mana Potions], [Healing Potions] e um [Cloth Belt] dele (se estiverem disponíveis e se precisar)
step
    path seq 1433 @-1907.75,-9625.9 @-1893.64,-9592.88
    goto 1433 @-1938.36,-9591.44
    note-enUS AoE Tarantulas. Loot them for Crisp Spider Meat
    note-ptBR Use AoE em Tarantulas. Saqueie-as para obter Crisp Spider Meat
    note-enUS AoE Great Goretusks. Loot them for Great Goretusk Snouts and [Chunks of Boar Meat]
    note-ptBR Use AoE em Great Goretusks. Saqueie-os para obter Great Goretusk Snouts e [Chunks of Boar Meat]
    collect 1081 5 |quest 92 |q 92/1 |opt
    collect 2296 5 |quest 92 |q 92/1 |opt
    collect 769 50 |quest 90 |q 90/1 |opt
    note-enUS AoE Tarantulas. Loot them for Crisp Spider Meat
    note-ptBR Use AoE em Tarantulas. Saqueie-as para obter Crisp Spider Meat
    note-enUS AoE Great Goretusks. Loot them for Great Goretusk Snouts
    note-ptBR Use AoE em Great Goretusks. Saqueie-os para obter Great Goretusk Snouts
    collect 1081 5 |quest 92 |q 92/1 |opt
    collect 2296 5 |quest 92 |q 92/1 |opt
    note-enUS Talk to Parker
    note-ptBR Fale com Parker
    accept 244
step
    goto 1433 @-2238.15,-9443.6
    note-enUS Talk to Feldon
    note-ptBR Fale com Feldon
    turnin 244
    accept 246
step
    goto 1433 @-2234.89,-9435.06
    note-enUS Talk to Ariena
    note-ptBR Fale com Ariena
    fp
    note-enUS Get the Redridge Mountains flight path
    note-ptBR Pegue o ponto de voo de Redridge Mountains
step
    path seq 1433 @-2298.28,-9283.9
    goto 1433 @-2268.54,-9279.27
    note-enUS Talk to Marris and Oslow
    note-ptBR Fale com Marris e Oslow
    accept 20
    accept 125
    turnin 345
    accept 347
step
    goto 1433 @-2219.7,-9260.73
    note-enUS Talk to Karen
    note-ptBR Fale com Karen
    note-enUS Buy a [Mining Pick] from her
    note-ptBR Compre uma [Mining Pick] dela
    note-enUS You'll need this for later
    note-ptBR Você vai precisar disto depois
    collect 2901 1 |quest 125 |q 125/1
step
    goto 1433 @-2216,-9215.85
    note-enUS Talk to Conacher
    note-ptBR Fale com Conacher
    accept 91
step
    path seq 1433 @-2172.59,-9261.02
    goto 1433 @-2151.53,-9247.12
    note-enUS Talk to Baren and the Wanted Poster
    note-ptBR Fale com Baren e confira o cartaz de Procurado (Wanted Poster)
    accept 127
    accept 180
step
    goto 1433 @-2155.22,-9225.84
    note-enUS Go Inside the Inn
    note-ptBR Entre na estalagem
    note-enUS Talk to Darcy
    note-ptBR Fale com Darcy
    accept 129
step
    goto 1433 @-2145.89,-9211.36
    note-enUS Inside the Inn
    note-ptBR Dentro da estalagem
    note-enUS Talk to Daniels
    note-ptBR Fale com Daniels
    accept 116
    turnin 116
step
    goto 1433 @-2145.45,-9231.34
    note-enUS Inside the Inn
    note-ptBR Dentro da estalagem
    note-enUS Talk to Wiley by jumping from the bannister downstairs
    note-ptBR Fale com Wiley pulando do corrimão para o andar de baixo
    turnin 65
step
    goto 1433 @-2207.32,-9351.66
    note-enUS Talk to Shawn
    note-ptBR Fale com Shawn
    accept 3741
step
    path seq 1433 @-2250.09,-9360.78 @-2174.32,-9386.56 @-2147.41,-9308.08 @-2090.96,-9373.82 @-1986.76,-9324.3 @-2246.4,-9359.92 @-2309.57,-9376.28
    goto 1433 @-2397.7,-9363.97
    note-enUS Swim underwater and check the spawn locations. There are 8 locations with 2 spawns up at once
    note-ptBR Nade debaixo d'água e verifique os locais de surgimento. São 8 locais com 2 surgimentos ativos ao mesmo tempo
    note-enUS Open the Glinting Mud. Loot it for Hilary's Necklace
    note-ptBR Abra a Glinting Mud. Saqueie-a para obter o Hilary's Necklace
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    objective 3741/1
step
    goto 1433 @-2205.58,-9351.52
    note-enUS Talk to Hilary
    note-ptBR Fale com Hilary
    turnin 3741
step
    goto 1433 @-1912.31,-9479.51
    note-enUS AoE Great Goretusks. Loot them for Great Goretusk Snouts and [Chunks of Boar Meat]
    note-ptBR Use AoE em Great Goretusks. Saqueie-os para obter Great Goretusk Snouts e [Chunks of Boar Meat]
    collect 2296 5 |quest 92 |q 92/1 |opt
    collect 769 50 |quest 90 |q 90/1 |opt
    note-enUS AoE Great Goretusks. Loot them for Great Goretusk Snouts
    note-ptBR Use AoE em Great Goretusks. Saqueie-os para obter Great Goretusk Snouts
    collect 2296 5 |quest 92 |q 92/1 |opt
    note-enUS AoE the Redridge Mongrels and Redridge Thrashers
    note-ptBR Use AoE em Redridge Mongrels e Redridge Thrashers
    objective 246/1
step
    path seq 1433 @-1907.75,-9625.9 @-1893.64,-9592.88
    goto 1433 @-1938.36,-9591.44
    note-enUS AoE Tarantulas. Loot them for Crisp Spider Meat
    note-ptBR Use AoE em Tarantulas. Saqueie-as para obter Crisp Spider Meat
    note-enUS AoE Great Goretusks. Loot them for Great Goretusk Snouts and [Chunks of Boar Meat]
    note-ptBR Use AoE em Great Goretusks. Saqueie-os para obter Great Goretusk Snouts e [Chunks of Boar Meat]
    collect 1081 5 |quest 92 |q 92/1 |opt
    collect 2296 5 |quest 92 |q 92/1 |opt
    collect 769 50 |quest 90 |q 90/1 |opt
    note-enUS AoE Tarantulas. Loot them for Crisp Spider Meat
    note-ptBR Use AoE em Tarantulas. Saqueie-as para obter Crisp Spider Meat
    note-enUS AoE Great Goretusks. Loot them for Great Goretusk Snouts
    note-ptBR Use AoE em Great Goretusks. Saqueie-os para obter Great Goretusk Snouts
    collect 1081 5 |quest 92 |q 92/1 |opt
    collect 2296 5 |quest 92 |q 92/1 |opt
    note-enUS Talk to Parker
    note-ptBR Fale com Parker
    turnin 129
    accept 130
step
    path seq 1433 @-2209.06,-9790.24 @-2242.71,-9792.7 @-2271.14,-9774.31 @-2321.94,-9776.63 @-2512.32,-9603.17 @-2209.06,-9790.24 @-2242.71,-9792.7 @-2271.14,-9774.31 @-2321.94,-9776.63
    goto 1433 @-2512.32,-9603.17
    note-enUS AoE the Redridge Mongrels, Redridge Thrashers, and Redridge Poachers
    note-ptBR Use AoE em Redridge Mongrels, Redridge Thrashers e Redridge Poachers
    note-enUS Remember to deadzone the Redridge Poachers
    note-ptBR Lembre-se de fazer deadzone nos Redridge Poachers
    objective 246/1
    objective 246/2
step
    goto 1433 @-2238.15,-9443.6
    note-enUS Talk to Feldon
    note-ptBR Fale com Feldon
    turnin 246
step
    goto 1433 @-2472.16,-9366.72
    note-enUS Go underwater
    note-ptBR Mergulhe
    note-enUS Open the Sunken Chest. Loot it for Oslow's Toolbox
    note-ptBR Abra o Sunken Chest. Saqueie-o para obter Oslow's Toolbox
    note-enUS This has a 5 second cast time
    note-ptBR Isto tem 5 segundos de tempo de conjuração
    objective 125/1
step
    path seq 1433 @-2445.68,-9240.75
    goto 1433 @-2268.54,-9279.12
    note-enUS AoE Murloc Flesheaters and Murloc Scouts. Loot them for some of the Spotted Sunfish and Murloc Fins
    note-ptBR Use AoE em Murloc Flesheaters e Murloc Scouts. Saqueie-os para obter Spotted Sunfish e Murloc Fins
    objective 127/1 |opt
    collect 1468 8 |quest 150 |q 150/1 |opt
    note-enUS Talk to Oslow
    note-ptBR Fale com Oslow
    turnin 125
    accept 89
step
    ifonquest 89
    goto 1433 @-2240.1,-9248.14
    note-enUS Talk to Dorin
    note-ptBR Fale com Dorin
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
step
    path closest 1433 @-2377.51,-9229.46 @-2403.56,-9173.57 @-2415.07,-9034.28 @-2509.72,-9067.73 @-2599.16,-9078.44 @-2772.39,-9226.85 @-2808.64,-9313.58 @-2791.71,-9355.86 @-2838.17,-9350.5 @-2840.12,-9220.92 @-2854.01,-9211.65 @-2867.69,-9183.27 @-2924.13,-9179.65 @-2928.91,-9231.77 @-2377.51,-9229.46 @-2403.56,-9173.57 @-2441.12,-9163.43 @-2501.9,-9143.45 @-2859.44,-9220.19 @-2868.77,-9183.85 @-2929.34,-9175.31 @-2929.12,-9233.51 @-2859.44,-9220.19 @-2831.22,-9328.06 @-2809.95,-9313.87 @-2789.11,-9350.36 @-2831.22,-9328.06 @-2509.72,-9067.73 @-2599.16,-9078.44 @-2655.6,-9061.5 @-2697.5,-9150.55 @-2760.67,-9163.72 @-2758.28,-9225.55 @-2821.88,-9247.99 @-2705.31,-9104.36 @-2744.82,-9129.26 @-2764.36,-9158.65 @-2803.65,-9173.86 @-2813.85,-9264.21 @-2759.58,-9234.96 @-2714.21,-9193.69 @-2667.1,-9176.61 @-2705.31,-9104.36 @-2415.07,-9034.28
    note-enUS AoE Blackrock Outrunners, Blackrock Renegades and Blackrock Grunts. Loot them for their Battleworn Axes
    note-ptBR Use AoE em Blackrock Outrunners, Blackrock Renegades e Blackrock Grunts. Saqueie-os para obter Battleworn Axes
    note-enUS AoE Murloc Tidecallers and Murloc Scouts. Loot them for their Spotted Sunfish and Murloc Fins
    note-ptBR Use AoE em Murloc Tidecallers e Murloc Scouts. Saqueie-os para obter Spotted Sunfish e Murloc Fins
    note-enUS AoE Dire Condors. Loot them for their Tough Condor Meat
    note-ptBR Use AoE em Dire Condors. Saqueie-os para obter Tough Condor Meat
    note-enUS AoE Greater Tarantulas. Loot them for their Crisp Spider Meat
    note-ptBR Use AoE em Greater Tarantulas. Saqueie-as para obter Crisp Spider Meat
    note-enUS AoE Great Goretusks. Loot them for Great Goretusk Snouts
    note-ptBR Use AoE em Great Goretusks. Saqueie-os para obter Great Goretusk Snouts
    note-enUS AoE Redridge Mystics and Redridge Brutes Loot them for their Iron Pikes and Iron Rivets
    note-ptBR Use AoE em Redridge Mystics e Redridge Brutes. Saqueie-os para obter Iron Pikes e Iron Rivets
    note-enUS Be careful as Blackrock Outrunners cast [Net], Dire Condors cast [Knockdown]
    note-ptBR Cuidado, Blackrock Outrunners lançam [Net] e Dire Condors lançam [Knockdown]
    objective 20/1
    objective 127/1
    collect 1468 8 |quest 150 |q 150/1
    collect 1080 5 |quest 92 |q 92/1
    collect 1081 5 |quest 92 |q 92/1
    collect 2296 5 |quest 92 |q 92/1
    objective 89/1
    objective 89/2
step
    path seq 1433 @-2366.23,-9110.87 @-2270.06,-9155.47
    goto 1433 @-2063.18,-9209.62
    note-enUS AoE Redridge Mystics and Redridge Brutes Loot them for their Iron Pikes and Iron Rivets
    note-ptBR Use AoE em Redridge Mystics e Redridge Brutes. Saqueie-os para obter Iron Pikes e Iron Rivets
    objective 89/1 |opt
    objective 89/2 |opt
    note-enUS Go inside
    note-ptBR Entre
    note-enUS Talk to Breanna
    note-ptBR Fale com Breanna
    accept 92
    turnin 92
step
    goto 1433 @-2045.38,-9245.82
    note-enUS Talk to Martie
    note-ptBR Fale com Martie
    turnin 130
    accept 131
    accept 34
step
    path seq 1433 @-1955.5,-9381.63 @-1920.12,-9343.55
    goto 1433 @-1910.79,-9288.97
    note-enUS AoE Great Goretusks. Loot them for Great Goretusk Snouts
    note-ptBR Use AoE em Great Goretusks. Saqueie-os para obter Great Goretusk Snouts
    collect 2296 5 |quest 92 |q 92/1 |opt
    note-enUS Kill Bellygrub
    note-ptBR Mate Bellygrub
    note-enUS Kite her toward the fence north of Lamar. Jump back and forth to safespot her without taking any damage
    note-ptBR Leve-a (kite) até a cerca ao norte de Lamar. Pule para frente e para trás para ficar em um ponto seguro sem sofrer dano
    note-enUS Be careful as Bellygrub casts [Charge] and [Tremor]
    note-ptBR Cuidado, Bellygrub lança [Charge] e [Tremor]
    objective 34/1
step
    goto 1433 @-2045.38,-9245.82
    note-enUS Talk to Martie
    note-ptBR Fale com Martie
    turnin 34
step
    path seq 1433 @-1950.08,-9206.58 @-2024.97,-9145.04 @-1955.5,-9381.63 @-1920.12,-9343.55 @-1950.08,-9206.58 @-2024.97,-9145.04 @-1955.5,-9381.63
    goto 1433 @-1920.12,-9343.55
    note-enUS AoE Great Goretusks. Loot them for Great Goretusk Snouts
    note-ptBR Use AoE em Great Goretusks. Saqueie-os para obter Great Goretusk Snouts
    collect 2296 5 |quest 92 |q 92/1
step
    ifonquest 347
    path seq 1433 @-2034.31,-9101.17 @-1994.15,-9037.03
    goto 1433 @-2017.59,-8984.62 40
    note-enUS AoE Redridge Mystics and Redridge Brutes Loot them for their Iron Pikes and Iron Rivets
    note-ptBR Use AoE em Redridge Mystics e Redridge Brutes. Saqueie-os para obter Iron Pikes e Iron Rivets
    objective 89/1 |opt
    objective 89/2 |opt
    note-enUS Travel to the Rethban Caverns
    note-ptBR Vá até Rethban Caverns
step
    path closest 1433 @-1982.21,-8929.74 @-2040.17,-8918.45 @-2046.03,-8793.06 @-2009.56,-8766.85 @-1979.38,-8792.62 @-1919.47,-8822.3 @-1950.29,-8858.07 @-1919.25,-8879.64 @-1982.21,-8929.74
    note-enUS AoE Redridge Drudgers. Loot them for their Rethban Ore, Iron Pikes, and Iron Rivets
    note-ptBR Use AoE em Redridge Drudgers. Saqueie-os para obter Rethban Ore, Iron Pikes e Iron Rivets
    note-enUS AoE Redridge Bashers. Loot them for their Iron Pikes and Iron Rivets
    note-ptBR Use AoE em Redridge Bashers. Saqueie-os para obter Iron Pikes e Iron Rivets
    note-enUS Mine the Copper Veins in the cave. Loot them for the Rethban Ore
    note-ptBR Minere os Copper Veins na caverna. Saqueie-os para obter o Rethban Ore
    objective 347/1
    objective 89/1
    objective 89/2
step
    ifnotturnedin 92
    path closest 1433 @-1982.21,-8929.74 @-2040.17,-8918.45 @-2046.03,-8793.06 @-2009.56,-8766.85 @-1979.38,-8792.62 @-1919.47,-8822.3 @-1950.29,-8858.07 @-1919.25,-8879.64 @-1982.21,-8929.74
    level 21
    note-enUS Grind to 14365+/25200xp
    note-ptBR Mate monstros até 14365+/25200xp
step
    ifturnedin 92
    path closest 1433 @-1982.21,-8929.74 @-2040.17,-8918.45 @-2046.03,-8793.06 @-2009.56,-8766.85 @-1979.38,-8792.62 @-1919.47,-8822.3 @-1950.29,-8858.07 @-1919.25,-8879.64 @-1982.21,-8929.74
    level 21
    note-enUS Grind to 15715+/25200xp
    note-ptBR Mate monstros até 15715+/25200xp
step
    path seq 1433 @-2298.28,-9283.9
    goto 1433 @-2268.54,-9279.27
    note-enUS Return to Lakeshire
    note-ptBR Volte para Lakeshire
    note-enUS Talk to Marris and Oslow
    note-ptBR Fale com Marris e Oslow
    turnin 20
    accept 19
    turnin 89 |reward 1
step
    goto 1433 @-2242.49,-9259
    note-enUS Talk to Verner
    note-ptBR Fale com Verner
    accept 118
step
    goto 1433 @-2172.59,-9261.02
    note-enUS Talk to Baren
    note-ptBR Fale com Baren
    turnin 127
    accept 150
    turnin 150
step
    goto 1433 @-2158.69,-9234.38
    vendor
    note-enUS Vendor Trash. You can sell the [Mining Pick] now if you wish
    note-ptBR Venda o lixo. Você pode vender o [Mining Pick] agora, se quiser
step
    goto 1433 @-2155.22,-9225.84
    note-enUS Go Inside the Inn
    note-ptBR Entre na estalagem
    note-enUS Talk to Darcy
    note-ptBR Fale com Darcy
    turnin 131
step
    path seq 1433 @-2146.54,-9246.54 @-2067.09,-9220.34
    goto 1433 @-2063.18,-9209.62
    note-enUS Travel toward Breanna
    note-ptBR Vá em direção a Breanna
    note-enUS Go inside
    note-ptBR Entre
    note-enUS Talk to Breanna
    note-ptBR Fale com Breanna
    accept 92
    turnin 92
step
    goto 1429 @87.73,-9456.79
    hearth |opt
    note-enUS Hearth to Goldshire
    note-ptBR Use a pedra de regresso para Goldshire
    note-enUS Talk to Argus
    note-ptBR Fale com Argus
    turnin 118
    accept 119
step
    path seq 1429 @-158,-8901.52 @-174.32,-8881.39
    goto 1429 @-186.46,-8874.91 10
    note-enUS Travel toward Paxton
    note-ptBR Vá em direção a Paxton
    note-enUS Talk to Paxton
    note-ptBR Fale com Paxton
    turnin 347
    accept 346
step
    goto 1453 @867.06,-9012.61
    note-enUS Cast [Teleport: Stormwind]
    note-ptBR Lance [Teleport: Stormwind]
    note-enUS ===PAY ATTENTION===
    note-ptBR ===PRESTE ATENÇÃO===
    note-enUS Respec to the Frost AoE spec
    note-ptBR Troque para a especialização Frost AoE
    note-enUS Talk to Dumas
    note-ptBR Fale com Dumas
    train 10
    note-enUS Train Blizzard
    note-ptBR Treine Blizzard
step
    path seq 1453 @887.22,-9017.8 @871.36,-9013.14 @868.8,-9004.27 @877,-9008.03 @863.96,-9001.4 @928.62,-9010.1 @962.63,-8990.73 @949.86,-9009.38 @942.34,-9001.49
    goto 1453 @948.65,-8994.5 10
    note-enUS Exit the Mage Tower
    note-ptBR Saia da Mage Tower
    note-enUS Travel toward Charys
    note-ptBR Vá em direção a Charys
    note-enUS DON'T Go below 1g 43s 30c
    note-ptBR NÃO fique abaixo de 1g 43s 30c
    note-enUS Enter the building
    note-ptBR Entre no prédio
    note-enUS Talk to Charys
    note-ptBR Fale com Charys
    vendor
    note-enUS Buy [Lesser Mana Potions] and [Healing Potions] from him (if they're up)
    note-ptBR Compre [Lesser Mana Potions] e [Healing Potions] dele (se estiverem disponíveis)
step
    goto 1453 @948.65,-8994.5
    note-enUS Enter the building
    note-ptBR Entre no prédio
    note-enUS Talk to Charys
    note-ptBR Fale com Charys
    vendor
    note-enUS Buy [Lesser Mana Potions] and [Healing Potions] from him (if they're up)
    note-ptBR Compre [Lesser Mana Potions] e [Healing Potions] dele (se estiverem disponíveis)
step
    goto 1453 @948.65,-8994.5
    note-enUS Enter the building
    note-ptBR Entre no prédio
    note-enUS Talk to Charys
    note-ptBR Fale com Charys
    vendor
    note-enUS Buy [Lesser Mana Potions] and [Healing Potions] from him (if they're up)
    note-ptBR Compre [Lesser Mana Potions] e [Healing Potions] dele (se estiverem disponíveis)
step
    goto 1453 @948.65,-8994.5
    note-enUS Enter the building
    note-ptBR Entre no prédio
    note-enUS Talk to Charys
    note-ptBR Fale com Charys
    vendor
    note-enUS Buy [Lesser Mana Potions], [Healing Potions], and a [Cloth Belt] from him (if they're up, and if needed)
    note-ptBR Compre [Lesser Mana Potions], [Healing Potions] e um [Cloth Belt] dele (se estiverem disponíveis e se precisar)
step
    path seq 1453 @852.4,-8920.1 @829.01,-8901.28 @789.22,-8904.59 @758.31,-8878.78 @810.33,-8832.44 @827.54,-8850.19
    goto 1453 @822.16,-8865.6 10
    note-enUS Travel toward Adair
    note-ptBR Vá em direção a Adair
    note-enUS Enter the building
    note-ptBR Entre no prédio
    note-enUS Talk to Adair
    note-ptBR Fale com Adair
    vendor
    note-enUS Buy non-intellect [Scrolls] from him (if they're up)
    note-ptBR Compre [Scrolls] sem intelecto dele (se estiverem disponíveis)
step
    path seq 1453 @872.3,-8803.22 @872.7,-8682.39
    goto 1453 @766.64,-8623.23
    note-enUS Run up the edge of the wall instead of going around
    note-ptBR Suba correndo pela borda da parede em vez de contornar
    note-enUS Talk to Kristoff
    note-ptBR Fale com Kristoff
    turnin 346
step
    ifnotturnedin 174
    goto 1453 @638.26,-8342.22
    note-enUS Talk to Billibub
    note-ptBR Fale com Billibub
    vendor
    note-enUS Buy a [Bronze Tube] from him if its up
    note-ptBR Compre um [Bronze Tube] dele, se estiver disponível
step
    goto 1453 @522.12,-8352.8 20
    note-enUS Travel to the Deeprun Tram
    note-ptBR Vá até Deeprun Tram
    note-enUS Ride the Deeprun Tram whilst spam casting [Conjure Water r3]
    note-ptBR Pegue o Deeprun Tram enquanto conjura [Conjure Water r3] sem parar
    zone 1455
    note-enUS Take the Deeprun Tram to Ironforge
    note-ptBR Pegue o Deeprun Tram para Ironforge
step
    ifnotturnedin 174
    goto 1455 @-1249.87,-4793.31
    note-enUS Talk to Cogspinner
    note-ptBR Fale com Cogspinner
    vendor
    note-enUS Buy a [Bronze Tube] from him if its up
    note-ptBR Compre um [Bronze Tube] dele, se estiver disponível
step
    path seq 1455 @-977.98,-4904.59
    goto 1455 @-997.66,-4886.49
    note-enUS Enter the Ironforge Bank
    note-ptBR Entre no banco de Ironforge
    note-enUS Talk to Bailey
    note-ptBR Fale com Bailey
    note-enUS NOTE: You need 12 stacks of each cloth ([Wool Cloth], [Silk Cloth], [Mageweave Cloth], and [Runecloth]) to do the cloth turnins later. You'll get these naturally as you level
    note-ptBR NOTA: Você precisa de 12 pilhas de cada tecido ([Wool Cloth], [Silk Cloth], [Mageweave Cloth] e [Runecloth]) para as entregas de tecido depois. Você os obterá naturalmente enquanto sobe de nível
    note-enUS Deposit the following items into the bank:
    note-ptBR Deposite os seguintes itens no banco:
    note-enUS [Light Feather]
    note-ptBR [Light Feather]
    note-enUS [Wool Cloth]
    note-ptBR [Wool Cloth]
    note-enUS [Lean Wolf Flank]
    note-ptBR [Lean Wolf Flank]
    note-enUS [Glyph of Azora]
    note-ptBR [Glyph of Azora]
    note-enUS [Stormwind Seasoning Herbs]
    note-ptBR [Stormwind Seasoning Herbs]
    note-enUS [Supplies for Sven]
    note-ptBR [Supplies for Sven]
    note-enUS [Crate of Horseshoes]
    note-ptBR [Crate of Horseshoes]
step
    goto 1455 @-997.66,-4886.49
    note-enUS Withdraw the following items from your bank:
    note-ptBR Retire os seguintes itens do seu banco:
    note-enUS [Mysterious Fossil]
    note-ptBR [Mysterious Fossil]
step
    goto 1455 @-915.2,-4606.38
    note-enUS Talk to Milstaff
    note-ptBR Fale com Milstaff
    train 3562
    note-enUS Train [Teleport: Ironforge]
    note-ptBR Treine [Teleport: Ironforge]
step
    goto 1455 @-928.48,-4614.62
    note-enUS ===PAY ATTENTION===
    note-ptBR ===PRESTE ATENÇÃO===
    note-enUS Respec to the Frost AoE spec
    note-ptBR Troque para a especialização Frost AoE
    note-enUS Talk to Dink
    note-ptBR Fale com Dink
    train 10
    note-enUS Train Blizzard
    note-ptBR Treine Blizzard
step
    goto 1455 @-1152.39,-4820.91
    note-enUS Start spam casting [Conjure Water r3] to conjure as much water as possible before taking the flight
    note-ptBR Comece a conjurar [Conjure Water r3] sem parar para fazer o máximo de água possível antes de pegar o voo
    note-enUS Talk to Gryth
    note-ptBR Fale com Gryth
    fp |opt
    note-enUS Fly to Menethil Harbor
    note-ptBR Voe para Menethil Harbor
    zone 1437
    note-enUS Travel to Wetlands
    note-ptBR Vá até Wetlands
]==])
