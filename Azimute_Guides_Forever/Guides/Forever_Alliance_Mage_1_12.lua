-- Convertido automaticamente de RXPGuides (Alliance-Mage-1-12.lua)
-- (c) RestedXP - CC BY-NC-SA 4.0 (ver LICENSE.txt). Não edite à mão:
-- rode tools/rxp2azimute.py de novo.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id forever.n.1-10-elwynn-forest-mage-aoe
#name 1-10 Elwynn Forest Mage AoE
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#only Human Mage
#levels 1-10
#zones 1429
#suffix Mage AoE
#suffix-ptBR Mago AoE
#name-ptBR 1-10 Elwynn Forest Mago AoE
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup Mage AoE
#subgroup-ptBR Mago AoE
#recommend Human

step
    goto 1429 @-136.52,-8933.53
    note-enUS You have selected a guide meant for Humans. You should choose the same starter zone that you start in |only Gnome
    note-ptBR Você selecionou um guia feito para Humanos. Escolha a mesma zona inicial em que você começou |only Gnome
    note-enUS Note that you have selected the AoE guide. AoE is typically a lot harder than single target mage, but a LOT faster
    note-ptBR Observe que você selecionou o guia de AoE. AoE costuma ser bem mais difícil que o Mago de alvo único, mas MUITO mais rápido
    note-enUS Delete your Hearthstone
    note-ptBR Apague sua Pedra de Regresso
    note-enUS Talk to Deputy Willem
    note-ptBR Fale com Deputy Willem
    accept 783
step
    goto 1429 @-162.62,-8902.59
    note-enUS Talk to Marshal McBride
    note-ptBR Fale com Marshal McBride
    turnin 783
    accept 7
step
    goto 1429 @-136.52,-8933.53
    note-enUS Talk to Deputy Willem
    note-ptBR Fale com Deputy Willem
    accept 5261
step
    goto 1429 @-68.11,-8874.67
    vendor
    note-enUS Kill wolves until you have 50c worth of vendor trash. Vendor, then buy x10 water from Brother Danil.
    note-ptBR Mate lobos até ter 50c em itens para vender. Venda e depois compre 10 águas de Brother Danil.
    collect 159 10
step
    level 2
    note-enUS Grind to 2
    note-ptBR Mate monstros até o nível 2
step
    goto 1429 @-161.82,-8870.05
    note-enUS Talk to Eagan Peltskinner
    note-ptBR Fale com Eagan Peltskinner
    turnin 5261
    accept 33
step
    path seq 1429 @-64.64,-8881.62 @-68.11,-8809.87 @-116.7,-8800.61 @-64.64,-8881.62 @-68.11,-8809.87
    goto 1429 @-116.7,-8800.61 40
    note-enUS Kill Young Wolves in the area for Meat
    note-ptBR Mate Young Wolves na área para obter carne
    objective 33/1
step
    path seq 1429 @-109.76,-8756.63 @-189.59,-8777.46 @-109.76,-8756.63 @-189.59,-8777.46 @-109.76,-8756.63
    goto 1429 @-189.59,-8777.46 40
    note-enUS Kill Kobold Vermin in the area
    note-ptBR Mate Kobold Vermin na área
    objective 7/1
step
    goto 1429 @-161.82,-8870.05
    note-enUS Talk to Eagan Peltskinner
    note-ptBR Fale com Eagan Peltskinner
    turnin 33
step
    goto 1429 @-116.7,-8900.14
    vendor
    note-enUS vendor trash, then buy x10 more water from Brother Danil
    note-ptBR venda o lixo e depois compre mais 10 águas de Brother Danil
step
    goto 1429 @-162.62,-8902.59
    note-enUS Talk to Marshal McBride
    note-ptBR Fale com Marshal McBride
    turnin 7
    accept 15
    accept 3104
step
    level 3
    note-enUS Grind to 3
    note-ptBR Mate monstros até o nível 3
step
    path seq 1429 @-113.23,-8779.78 @-81.99,-8684.88 @-151.41,-8726.54 @-113.23,-8779.78 @-81.99,-8684.88
    goto 1429 @-151.41,-8726.54 40
    note-enUS Kill Kobold Workers
    note-ptBR Mate Kobold Workers
    objective 15/1
step
    goto 1429 @-120.17,-8897.82
    level 3
    note-enUS Grind to 1110+/1400xp on your way back to town
    note-ptBR Mate monstros até 1110+/1400xp na volta para a cidade
step
    goto 1429 @-120.17,-8897.82
    vendor
    note-enUS vendor trash
    note-ptBR venda o lixo
step
    goto 1429 @-162.62,-8902.59
    note-enUS Talk to Marshal McBride
    note-ptBR Fale com Marshal McBride
    turnin 15
    accept 21
step
    path seq 1429 @-175.7,-8881.62 @-182.65,-8865.42
    goto 1429 @-188.23,-8851.58
    note-enUS Go upstairs
    note-ptBR Suba as escadas
    note-enUS Talk to Khelden Bremen
    note-ptBR Fale com Khelden Bremen
    turnin 3104
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    goto 1429 @-136.52,-8933.53
    note-enUS Talk to Deputy Willem
    note-ptBR Fale com Deputy Willem
    accept 18
step
    path seq 1429 @-328.42,-9147.8 @-397.84,-9036.7 @-363.13,-8909.39 @-328.42,-9147.8 @-397.84,-9036.7
    goto 1429 @-363.13,-8909.39 60
    note-enUS Kill Defias Thugs. Loot them for Bandanas
    note-ptBR Mate Defias Thugs. Saqueie-os para obter bandanas
    objective 18/1
step
    goto 1429 @-136.52,-8933.53
    note-enUS Talk to Deputy Willem
    note-ptBR Fale com Deputy Willem
    turnin 18
    accept 6
    accept 3903
step
    goto 1429 @-120.17,-8897.82
    vendor
    note-enUS vendor trash, repair
    note-ptBR venda o lixo, repare
step
    path seq 1429 @-363.13,-8909.39 @-120.17,-8673.31 @-213.88,-8564.52 @-120.17,-8673.31 @-213.88,-8564.52 @-120.17,-8673.31 @-213.88,-8564.52 @-120.17,-8673.31
    goto 1429 @-213.88,-8564.52 60
    note-enUS Kill Laborers in the mine
    note-ptBR Mate Laborers na mina
    objective 21/1
step
    level 5
    note-enUS Grind to 5
    note-ptBR Mate monstros até o nível 5
step
    goto 1429 @-224.3,-8846.9
    note-enUS Talk to Milly Osworth
    note-ptBR Fale com Milly Osworth
    turnin 3903
    accept 3904
step
    goto 1429 @-356.19,-9082.99
    note-enUS Loot the Buckets of Grapes in the field
    note-ptBR Saqueie os Buckets of Grapes no campo
    objective 3904/1
step
    goto 1429 @-460.31,-9055.21
    note-enUS Kill Garrick and loot his Head
    note-ptBR Mate Garrick e saqueie a cabeça dele
    objective 6/1
step
    goto 1429 @-224.3,-8846.9
    level 5
    note-enUS Grind on your way back to 1175+/2800xp
    note-ptBR Mate monstros na volta até 1175+/2800xp
step
    goto 1429 @-224.3,-8846.9
    note-enUS Talk to Milly Osworth
    note-ptBR Fale com Milly Osworth
    turnin 3904
    accept 3905
step
    goto 1429 @-136.52,-8933.53
    note-enUS Talk to Deputy Willem
    note-ptBR Fale com Deputy Willem
    turnin 6
step
    goto 1429 @-162.62,-8902.59
    note-enUS Talk to Marshal McBride
    note-ptBR Fale com Marshal McBride
    turnin 21
    accept 54
step
    path seq 1429 @-186.12,-8902.45 @-161.82,-8895.51
    goto 1429 @-181.64,-8902.13
    note-enUS Go upstairs the main staircase
    note-ptBR Suba pela escadaria principal
    note-enUS Talk to Brother Neals
    note-ptBR Fale com Brother Neals
    turnin 3905
step
    goto 1429 @-47.28,-9043.64
    note-enUS Talk to Falkhaan Isenstrider
    note-ptBR Fale com Falkhaan Isenstrider
    accept 2158
step
    path seq 1429 @164.44,-9339.91
    goto 1429 @88.08,-9464.89
    note-enUS Die and respawn at the Spirit Healer, or run to Goldshire
    note-ptBR Morra e renasça no Spirit Healer, ou corra até Goldshire
    vendor
    note-enUS vendor trash, repair
    note-ptBR venda o lixo, repare
step
    goto 1429 @74.02,-9465.52
    note-enUS Talk to Marshal Dughan
    note-ptBR Fale com Marshal Dughan
    turnin 54
    accept 62
step
    path seq 1429 @46.43,-9460.26
    goto 1429 @33.14,-9460.75
    note-enUS On your close left as you go in the Inn
    note-ptBR Logo à sua esquerda ao entrar na estalagem
    note-enUS Talk to William Pestle
    note-ptBR Fale com William Pestle
    accept 60
step
    goto 1429 @16.2,-9462.65
    note-enUS Talk to Innkeeper Farley
    note-ptBR Fale com Innkeeper Farley
    turnin 2158
    home
    note-enUS Set your Hearthstone to Goldshire
    note-ptBR Defina sua pedra de regresso em Goldshire
step
    level 6
    note-enUS Grind to 6
    note-ptBR Mate monstros até o nível 6
step
    path seq 1429 @18.66,-9476.47
    goto 1429 @36.02,-9471.84
    trainer
    note-enUS Go Upstairs. Train your class spells
    note-ptBR Suba as escadas. Treine suas magias de classe
step
    goto 1429 @74.2,-9497.3
    note-enUS Talk to Remy "Two Times"
    note-ptBR Fale com Remy "Two Times"
    accept 47
step
    goto 1429 @338.47,-9889.69
    note-enUS Start killing some boars you see for Boar Meat
    note-ptBR Comece a matar os javalis que encontrar para obter Boar Meat
    collect 769 4 |opt
    note-enUS Talk to "Auntie" Bernice Stonefield
    note-ptBR Fale com "Auntie" Bernice Stonefield
    accept 85
    note-enUS Talk to Ma Stonefield
    note-ptBR Fale com Ma Stonefield
    accept 88
step
    goto 1429 @38.38,-9923.69
    note-enUS Get some Candles from nearby Kobolds
    note-ptBR Pegue algumas Candles dos Kobolds próximos
    objective 60/1 |opt
    note-enUS Get some Gold Dust from nearby Kobolds
    note-ptBR Pegue um pouco de Gold Dust dos Kobolds próximos
    objective 47/1 |opt
    note-enUS Grind mobs east through the outside of the mine
    note-ptBR Faça grind de mobs para o leste pelo lado de fora da mina
    note-enUS Talk to Billy Maclure
    note-ptBR Fale com Billy Maclure
    turnin 85
    accept 86
step
    goto 1429 @36.02,-10013.45
    note-enUS Talk to Maybell Maclure
    note-ptBR Fale com Maybell Maclure
    accept 106
step
    goto 1429 @63.78,-10008.82
    vendor
    note-enUS Vendor, buy as much milk as you can
    note-ptBR Venda, compre o máximo de leite que puder
step
    note-enUS Kill boars you see for Boar Meat
    note-ptBR Mate os javalis que vir para obter Boar Meat
    collect 769 4 |opt
    note-enUS Talk to Tommy Joe Stonefield
    note-ptBR Fale com Tommy Joe Stonefield
    turnin 106
    accept 111
step
    goto 1429 @407.4,-9918.55
    note-enUS Finish off getting the Boar Meat
    note-ptBR Termine de pegar a Boar Meat
    objective 86/1
step
    goto 1429 @338.47,-9889.69
    note-enUS Talk to "Auntie" Bernice Stonefield
    note-ptBR Fale com "Auntie" Bernice Stonefield
    turnin 86
    accept 84
step
    goto 1429 34.95,83.86
    note-enUS Talk to Gramma Stonefield
    note-ptBR Fale com Gramma Stonefield
    turnin 111
    accept 107
step
    note-enUS Get some Candles from nearby Kobolds
    note-ptBR Pegue algumas Candles dos Kobolds próximos
    objective 60/1
step
    note-enUS Get some Gold Dust from nearby Kobolds
    note-ptBR Pegue um pouco de Gold Dust dos Kobolds próximos
    objective 47/1
step
    goto 1429 @38.38,-9923.69
    note-enUS Grind mobs east through the outside of the mine
    note-ptBR Faça grind de mobs para o leste pelo lado de fora da mina
    note-enUS Talk to Billy Maclure
    note-ptBR Fale com Billy Maclure
    turnin 84
    accept 87
step
    goto 1429 @129.73,-9844.49
    note-enUS Go into the mine
    note-ptBR Entre na mina
    objective 62/1
step
    note-enUS Kill Goldtooth for Bernice's Necklace
    note-ptBR Mate Goldtooth para obter o Bernice's Necklace
    objective 87/1
step
    level 7
    note-enUS Grind until 1600+/4500xp
    note-ptBR Mate monstros até 1600+/4500xp
step
    goto 1429 @338.47,-9889.69
    note-enUS Talk to "Auntie" Bernice Stonefield
    note-ptBR Fale com "Auntie" Bernice Stonefield
    turnin 87
step
    goto 1429 @74.2,-9497.3
    note-enUS Grind some mobs back to Goldshire
    note-ptBR Faça grind de alguns mobs no caminho de volta a Goldshire
    level 7
    note-enUS Grind until 2690+/4500xp
    note-ptBR Mate monstros até 2690+/4500xp
step
    goto 1429 @74.2,-9497.3
    note-enUS Talk to Remy "Two Times"
    note-ptBR Fale com Remy "Two Times"
    turnin 47
    accept 40
step
    goto 1429 @88.08,-9464.89
    vendor
    note-enUS vendor trash, repair
    note-ptBR venda o lixo, repare
step
    goto 1429 @74.02,-9465.52
    note-enUS Talk to Marshal Dughan
    note-ptBR Fale com Marshal Dughan
    turnin 40
    accept 35
    turnin 62
    accept 76
step
    goto 1429 @88.08,-9464.89
    vendor
    note-enUS vendor trash, repair
    note-ptBR venda o lixo, repare
step
    goto 1429 @33.14,-9460.75
    note-enUS Talk to William Pestle
    note-ptBR Fale com William Pestle
    turnin 60
    accept 61
    turnin 107
    accept 112
    note-enUS Collecting Kelp
    note-ptBR Collecting Kelp
step
    level 8
    note-enUS Grind to 8
    note-ptBR Mate monstros até o nível 8
step
    goto 1429 @8.25,-9464.89
    vendor
    note-enUS Buy a 6 slot bag from Brog
    note-ptBR Compre uma bolsa de 6 espaços de Brog
step
    path seq 1429 @18.66,-9476.47
    goto 1429 @36.02,-9471.84
    trainer
    note-enUS Go Upstairs. Train your class spells
    note-ptBR Suba as escadas. Treine suas magias de classe
step
    goto 1429 @16.2,-9462.65
    vendor
    note-enUS Buy level 5 Water up to 40
    note-ptBR Compre água de nível 5 até 40
step
    path seq 1429 @-116.7,-9404.71 @-248.59,-9434.8 @-463.78,-9393.14 @-422.13,-9481.1
    goto 1429 @-331.89,-9485.73 50
    note-enUS Grind Murlocs toward the east and loot them for Kelp Frond. kill mobs on the island if you still need some
    note-ptBR Faça grind de Murlocs em direção ao leste e saqueie-os para obter Kelp Frond. Mate mobs na ilha se ainda precisar de alguns
    objective 112/1
step
    path seq 1429 @-609.56,-9189.46
    goto 1429 @-560.97,-9101.5
    note-enUS Go in the mine, and keep following the middle path
    note-ptBR Entre na mina e continue seguindo o caminho do meio
    objective 76/1
step
    goto 1429 @-1032.06,-9610.23
    note-enUS Talk to Guard Thomas
    note-ptBR Fale com Guard Thomas
    turnin 35
    accept 37
    accept 52
step
    goto 1429 @-987.88,-9335.28
    note-enUS Kill Prowlers as you do other quests
    note-ptBR Mate Prowlers enquanto faz outras missões
    objective 52/1 |opt
    note-enUS Kill Bears as you do other quests. Kill any you see
    note-ptBR Mate ursos enquanto faz outras missões. Mate todos que vir
    objective 52/2 |opt
    turnin 37
    accept 45
step
    goto 1429 @-1289.22,-9469.8
    note-enUS Talk to Supervisor Raelen
    note-ptBR Fale com Supervisor Raelen
    accept 5545
step
    goto 1429 @-1355.79,-9469.52
    vendor
    note-enUS vendor trash, repair
    note-ptBR venda o lixo, repare
step
    goto 1429 @-1234.31,-9224.18 60
    note-enUS Keep an eye out for the bundles of logs at the base of the trees
    note-ptBR Fique atento aos feixes de toras na base das árvores
    collect 13872 8 |opt
    note-enUS Go toward the guard's corpse
    note-ptBR Vá em direção ao cadáver do guarda
step
    goto 1429 @-1234.31,-9224.18
    note-enUS Kill mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away and sheep one whilst killing the other, then kill the sheeped mob. Loot the carcass on the ground
    note-ptBR Mate os inimigos ao redor do cadáver. Puxe os 2 inimigos em frente às cabanas, afaste-se e transforme um em ovelha enquanto mata o outro, depois mate o transformado. Saqueie a carcaça no chão
    note-enUS Be careful as this quest can be difficult
    note-ptBR Cuidado, esta missão pode ser difícil
    turnin 45
    accept 71
step
    path seq 1429 @-1130.18,-9383.88 @-1369.67,-9314.45 @-1130.18,-9383.88 @-1369.67,-9314.45 @-1130.18,-9383.88
    goto 1429 @-1369.67,-9314.45 40
    note-enUS Start running back, finish off the bundles
    note-ptBR Comece a voltar correndo e termine os fardos
    collect 13872 8
step
    goto 1429 @-1289.22,-9469.8
    note-enUS Talk to Supervisor Raelen
    note-ptBR Fale com Supervisor Raelen
    turnin 5545
step
    level 9
    note-enUS Grind to 9
    note-ptBR Mate monstros até o nível 9
step
    goto 1429 @-1222.4,-9531.76
    note-enUS Talk to Sara Timberlain
    note-ptBR Fale com Sara Timberlain
    accept 83
step
    path seq 1429 @-1126.71,-9689.41 @-1230.84,-9876.89 @-1310.67,-9717.18 @-1126.71,-9689.41 @-1230.84,-9876.89
    goto 1429 @-1310.67,-9717.18 40
    note-enUS Kill the last mobs for Protect the Frontier
    note-ptBR Mate os últimos inimigos para Protect the Frontier
    objective 52/1
    objective 52/2
step
    goto 1429 @-1032.06,-9610.23
    note-enUS Talk to Guard Thomas
    note-ptBR Fale com Guard Thomas
    turnin 52
    turnin 71
    accept 39
    note-enUS Talk to Farmer Saldean
    note-ptBR Fale com Farmer Saldean
    accept 109
step
    ifonquest 83
    path seq 1429 @-911.52,-9735.7 @-828.22,-9733.39 @-831.69,-9823.65 @-921.93,-9812.08 @-911.52,-9735.7 @-828.22,-9733.39 @-831.69,-9823.65 @-921.93,-9812.08 @-911.52,-9735.7 @-828.22,-9733.39 @-831.69,-9823.65
    goto 1429 @-921.93,-9812.08 60
    note-enUS Keep an eye out for Westfall Deed from the Defias (lucky drop)
    note-ptBR Fique atento ao Westfall Deed dos Defias (drop de sorte)
    collect 1972 1 |quest 184 |opt
    accept 184 |opt
    note-enUS Start circling the farm, killing Defias and looting them for Bandanas
    note-ptBR Comece a circular a fazenda, matando Defias e saqueando-os para obter Bandanas
    objective 83/1
step
    goto 1429 @-873.34,-9772.73
    note-enUS Kill Princess. Use a Lesser Heal Potion from before if needed. Loot her for the Collar
    note-ptBR Mate Princess. Use uma Lesser Heal Potion de antes, se necessário. Saqueie-a para obter a coleira
    note-enUS You can also jump back and forth between the fences on the edge of the farm to kill Princess and her guards
    note-ptBR Você também pode pular de um lado para o outro das cercas na borda da fazenda para matar Princess e seus guardas
    objective 88/1
step
    ifcomplete 83
    path seq 1429 @-1366.2,-9552.85
    goto 1429 @-1223.9,-9534.33
    note-enUS Die and respawn at the Spirit Healer if you're low health, otherwise just run back and handin
    note-ptBR Morra e renasça no Spirit Healer se estiver com pouca vida; senão, apenas corra de volta e entregue
    note-enUS Talk to Sara Timberlain
    note-ptBR Fale com Sara Timberlain
    turnin 83
step
    goto 1433 @-1741.68,-9644.29
    zone 1433
    note-enUS Grind en route to Redridge
    note-ptBR Mate monstros no caminho até Redridge
step
    path seq 1433 @-1813.97,-9710.17
    goto 1433 @-2022.37,-9394.52 100
    note-enUS Die to the mobs here
    note-ptBR Morra para os mobs daqui
    note-enUS Respawn at the Spirit Healer
    note-ptBR Ressuscite no Curandeiro Espiritual
    note-enUS Respawn at the Spirit Healer
    note-ptBR Ressuscite no Curandeiro Espiritual
step
    goto 1433 @-2235.11,-9435.06
    fp
    note-enUS Get the Redridge Mountains flight path
    note-ptBR Pegue o ponto de voo de Redridge Mountains
step
    hearth
    note-enUS Hearth to Goldshire
    note-ptBR Use a pedra de regresso para Goldshire
step
    goto 1429 @33.14,-9460.75
    note-enUS Don't wait for his rp event
    note-ptBR Não espere o evento de RP dele
    note-enUS Talk to William Pestle
    note-ptBR Fale com William Pestle
    turnin 112
step
    goto 1429 @70.72,-9462.58
    note-enUS Talk to Marshal Dughan
    note-ptBR Fale com Marshal Dughan
    turnin 39
    turnin 76
    accept 239
step
    goto 1429 @87.87,-9456.65
    note-enUS Talk to Verner Osgood
    note-ptBR Fale com Verner Osgood
    accept 1097
step
    goto 1429 @88.08,-9464.89
    vendor
    note-enUS vendor trash, repair
    note-ptBR venda o lixo, repare
step
    goto 1429 @33.14,-9460.75
    note-enUS Talk to William Pestle
    note-ptBR Fale com William Pestle
    accept 114
step
    goto 1429 @36.02,-10013.45
    note-enUS Run out of the inn and go south
    note-ptBR Saia da estalagem e vá para o sul
    note-enUS Talk to Maybell Maclure
    note-ptBR Fale com Maybell Maclure
    turnin 114
step
    note-enUS Talk to Ma Stonefield
    note-ptBR Fale com Ma Stonefield
    turnin 88
step
    goto 1429 @695.47,-9663.95
    note-enUS Talk to Deputy Rainer
    note-ptBR Fale com Deputy Rainer
    turnin 239
step
    ifonquest 184
    goto 1436 @916.67,-9852.67
    note-enUS Talk to Farmer Furlbrow
    note-ptBR Fale com Farmer Furlbrow
    turnin 184
step
    goto 1436 @919.54,-9853.04
    note-enUS Talk to Verna Furlbrow
    note-ptBR Fale com Verna Furlbrow
    accept 36
step
    goto 1436 @1042.11,-10112.11
    note-enUS Talk to Salma Saldean
    note-ptBR Fale com Salma Saldean
    turnin 36
step
    path seq 1436 @1207.17,-10552.67
    goto 1436 @1045.22,-10508.8
    note-enUS Die and respawn at the Spirit Healer, or run to Sentinel Hill
    note-ptBR Morra e renasça no Spirit Healer, ou corra até Sentinel Hill
    note-enUS Talk to Gryan Stoutmantle
    note-ptBR Fale com Gryan Stoutmantle
    turnin 109
step
    goto 1436 @1021.6,-10500.61
    vendor
    note-enUS vendor trash
    note-ptBR venda o lixo
    note-enUS Talk to Quartermaster Lewis
    note-ptBR Fale com Quartermaster Lewis
    accept 6181
step
    goto 1436 @1042.11,-10112.11
    level 11
    note-enUS Grind to 3750+/8800xp
    note-ptBR Mate monstros até 3750+/8800xp
step
    goto 1436 @1035.67,-10627.33
    fp
    note-enUS Get the Sentinel Hill flight path
    note-ptBR Pegue o ponto de voo de Sentinel Hill
    note-enUS Talk to Thor
    note-ptBR Fale com Thor
    turnin 6181
    accept 6281
    fly 1453
    note-enUS Fly to Stormwind
    note-ptBR Voe para Stormwind
step
    goto 1453 @625.49,-8857.89
    note-enUS Choose rockets. These have very good damage, and can be used for splitpulling
    note-ptBR Escolha os foguetes. Eles têm dano muito bom e podem ser usados para separar puxadas
    note-enUS Talk to Morgan Pestle
    note-ptBR Fale com Morgan Pestle
    turnin 61
step
    goto 1453 @613.39,-8796.05
    trainer
    note-enUS Train 1h Swords
    note-ptBR Treine 1h Swords
step
    goto 1453 @382.18,-8701.93
    note-enUS Talk to Osric Strang
    note-ptBR Fale com Osric Strang
    turnin 6281
    note-enUS Vendor and Repair
    note-ptBR Venda o lixo e conserte
step
    goto 1453 @684.64,-8387.31
    note-enUS Talk to Grimand Elmore
    note-ptBR Fale com Grimand Elmore
    turnin 1097 |opt
    note-enUS Talk to Grimand Elmore
    note-ptBR Fale com Grimand Elmore
    accept 353
step
    goto 1453 @521.98,-8353.25 20
    note-enUS Enter the Deeprun Tram
    note-ptBR Entre no Deeprun Tram
    note-enUS Take the tram when it arrives, then get off when it arrives on the other side
    note-ptBR Pegue o bonde quando ele chegar e desça quando chegar ao outro lado
    note-enUS Talk to Monty
    note-ptBR Fale com Monty
    accept 6661
step
    note-enUS Use your flute on the rats scattered around
    note-ptBR Use sua flauta nos ratos espalhados pela área
    objective 6661/1
step
    note-enUS Talk to Monty
    note-ptBR Fale com Monty
    turnin 6661
step
    goto 1455 @-1322.37,-4838.32 30
    note-enUS Enter Ironforge
    note-ptBR Entre em Ironforge
step
    goto 1455 @-1152.4,-4821.13
    fp
    note-enUS Get the Ironforge flight path
    note-ptBR Pegue o ponto de voo de Ironforge
step
    goto 1455 @-928.4,-4614.46
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    path seq 1426 @-832.79,-5022.97 @-1157.84,-5604.12
    goto 1426 @-1305.59,-5512.18
    note-enUS Run out of Ironforge
    note-ptBR Saia correndo de Ironforge
    note-enUS Talk to Rudra Amberstill
    note-ptBR Fale com Rudra Amberstill
    accept 314
step
    path seq 1426 @-1266.19,-5528.6 @-1261.27,-5499.05 @-1280.97,-5390.7
    goto 1426 @-1289.83,-5669.78
    note-enUS Run up this part of the mountain
    note-ptBR Suba correndo esta parte da montanha
    note-enUS Kill Vagash. Loot him for his Fang
    note-ptBR Mate Vagash. Saqueie-o para obter a presa dele
    note-enUS Kite him to the guard south of the ranch. Make sure you do 51%+ damage to him
    note-ptBR Leve-o (kite) até o guarda ao sul do rancho. Certifique-se de causar 51%+ do dano nele
    note-enUS Be careful as this quest can be difficult
    note-ptBR Cuidado, esta missão pode ser difícil
    objective 314/1
step
    goto 1426 @-1305.59,-5512.18
    note-enUS Talk to Rudra Amberstill
    note-ptBR Fale com Rudra Amberstill
    turnin 314
step
    goto 1426 @-1576.47,-5673.07
    note-enUS Grind a little en route
    note-ptBR Faça um pouco de grind no caminho
    vendor
    note-enUS Vendor, buy food+water
    note-ptBR Venda, compre comida+água
step
    goto 1426 @-1581.39,-5715.75
    note-enUS Talk to Senator Mehr Stonehallow
    note-ptBR Fale com Senator Mehr Stonehallow
    accept 433
step
    goto 1426 @-1600.3,-5726.59
    note-enUS Talk to Foreman Stonebrow
    note-ptBR Fale com Foreman Stonebrow
    accept 432
step
    path seq 1426 @-1674.97,-5735.45 @-1684.82,-5627.1 @-1738.99,-5541.73 @-1788.24,-5620.53 @-1674.97,-5735.45 @-1684.82,-5627.1 @-1738.99,-5541.73
    goto 1426 @-1788.24,-5620.53 30
    note-enUS Kill Troggs in the cave
    note-ptBR Mate Troggs na caverna
    objective 432/1
    objective 433/1
step
    level 10
    note-enUS Grind until 6350+/7600
    note-ptBR Mate monstros até 6350+/7600
step
    goto 1426 @-1600.3,-5726.59
    note-enUS Talk to Foreman Stonebrow
    note-ptBR Fale com Foreman Stonebrow
    turnin 432
step
    path seq 1426 @-1591.24,-5712.47
    goto 1426 @-1581.39,-5715.75
    vendor |opt
    note-enUS vendor trash, repair
    note-ptBR venda o lixo, repare
    note-enUS Talk to Senator Mehr Stonehallow
    note-ptBR Fale com Senator Mehr Stonehallow
    turnin 433
step
    level 11
step
    goto 1426 @-1576.47,-5673.07
    vendor
    note-enUS vendor trash, buy x30 level 5 drink from Kazan
    note-ptBR venda o lixo, compre 30 bebidas de nível 5 de Kazan
    trainer
    note-enUS Train Cooking from Ghilm. You'll need this to pick up 2 extra quests later
    note-ptBR Treine Cooking com Ghilm. Você vai precisar disso para pegar 2 missões extras depois
step
    goto 1426 @-2329.6,-5163.76
    note-enUS Talk to Pilot Hammerfoot
    note-ptBR Fale com Pilot Hammerfoot
    accept 419
step
    goto 1426 @-2123.14,-5065.65
    turnin 419
    accept 417
step
    goto 1426 @-2137.92,-5072.22
    note-enUS Kill Mangeclaw. Loot him for his Claw
    note-ptBR Mate Mangeclaw. Saqueie-o para obter a garra dele
    objective 417/1
step
    goto 1426 @-2329.6,-5163.76
    note-enUS Talk to Pilot Hammerfoot
    note-ptBR Fale com Pilot Hammerfoot
    turnin 417
step
    goto 1426 @-2354.62,-4898.2 25
    note-enUS Go through the tunnel to Loch Modan
    note-ptBR Atravesse o túnel até Loch Modan
]==])

register([==[
#format 1
#id forever.n.1-10-dun-morogh-mage-aoe
#name 1-10 Dun Morogh Mage AoE
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#only Gnome Mage
#levels 1-10
#zones 1426
#suffix Mage AoE
#suffix-ptBR Mago AoE
#name-ptBR 1-10 Dun Morogh Mago AoE
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup Mage AoE
#subgroup-ptBR Mago AoE
#recommend Dwarf Gnome

step
    goto 1426 @328.18,-6214.85
    note-enUS You have selected a guide meant for Gnomes and Dwarves. You should choose the same starter zone that you start in |only Human
    note-ptBR Você selecionou um guia feito para Gnomos e Anões. Escolha a mesma zona inicial em que você começou |only Human
    note-enUS Note that you have selected the AoE guide. AoE is typically a lot harder than single target mage, but a LOT faster
    note-ptBR Observe que você selecionou o guia de AoE. AoE costuma ser bem mais difícil que o Mago de alvo único, mas MUITO mais rápido
    note-enUS You have selected a guide meant for Gnomes and Dwarves. You should choose the same starter zone that you start in |only Human
    note-ptBR Você selecionou um guia feito para Gnomos e Anões. Escolha a mesma zona inicial em que você começou |only Human
    note-enUS Note that you have selected the AoE guide. AoE is typically a lot harder than single target mage, but with the recent 100% quest xp changes, is also slower
    note-ptBR Observe que você selecionou o guia de AoE. AoE costuma ser bem mais difícil que o Mago de alvo único e, com as recentes mudanças de 100% de XP de missões, também é mais lento
    note-enUS Delete your Hearthstone
    note-ptBR Apague sua Pedra de Regresso
    note-enUS Talk to Sten Stoutarm
    note-ptBR Fale com Sten Stoutarm
    accept 179
step
    goto 1426 @388.61,-6333.02
    note-enUS Kill Wolves. Loot them for Meat
    note-ptBR Mate lobos. Saqueie-os para obter carne
    objective 179/1
step
    level 2
    note-enUS Grind to 2
    note-ptBR Mate monstros até o nível 2
step
    goto 1426 @324.58,-6224.67
    note-enUS vendor trash. Buy 15 Water. Grind extra wolves if you don't have enough money
    note-ptBR Venda o lixo. Compre 15 Água. Farme lobos extras se não tiver dinheiro suficiente
    collect 159 15
step
    goto 1426 @328.18,-6214.85
    note-enUS Talk to Sten Stoutarm
    note-ptBR Fale com Sten Stoutarm
    turnin 179
    accept 233
    accept 3114
step
    goto 1426 @339.36,-6214.82
    note-enUS Talk to Balir Frosthammer
    note-ptBR Fale com Balir Frosthammer
    accept 170
step
    path seq 1426 @477.26,-6264.07 @565.91,-6244.37 @477.26,-6264.07
    goto 1426 @565.91,-6244.37 30
    note-enUS Kill Normal Rockjaw Troggs that you see
    note-ptBR Mate os Rockjaw Troggs normais que vir
    objective 170/1 |opt
    note-enUS Kill Burly Rockjaw Troggs
    note-ptBR Mate Burly Rockjaw Troggs
    objective 170/2
step
    goto 1426 @688.98,-6222.47
    note-enUS Talk to Talin Keeneye
    note-ptBR Fale com Talin Keeneye
    turnin 233
    accept 183
    accept 234
step
    path seq 1426 @708.73,-6257.5 @792.46,-6221.38 @762.91,-6142.58 @679.18,-6162.28 @708.73,-6257.5 @792.46,-6221.38 @762.91,-6142.58
    goto 1426 @679.18,-6162.28 40
    note-enUS Kill Boars in the area
    note-ptBR Mate javalis na área
    objective 183/1
step
    goto 1426 @688.98,-6222.47
    note-enUS Talk to Talin Keeneye
    note-ptBR Fale com Talin Keeneye
    turnin 183
step
    path seq 1426 @669.33,-6339.58 @610.23,-6257.5 @437.86,-6382.27 @669.33,-6339.58 @610.23,-6257.5
    goto 1426 @437.86,-6382.27 40
    level 3
    note-enUS Grind to 860+/1400xp
    note-ptBR Mate monstros até 860+/1400xp
step
    goto 1426 @567.09,-6362.99
    note-enUS Talk to Grelin Whitebeard
    note-ptBR Fale com Grelin Whitebeard
    turnin 234
    accept 182
step
    goto 1426 @570.83,-6372.42
    note-enUS Talk to Nori Pridedrift
    note-ptBR Fale com Nori Pridedrift
    accept 3364
    note-enUS Once accepted, a 5 minute timer will start. Relax and follow the guide
    note-ptBR Após aceitar, um cronômetro de 5 minutos começará. Relaxe e siga o guia
step
    goto 1426 @388.61,-6421.67
    note-enUS Go up here and kill Troggs if you're not done with them by now
    note-ptBR Suba aqui e mate Troggs se ainda não tiver terminado com eles
    objective 170/1
step
    path seq 1426 @570.83,-6372.42
    goto 1426 @383.68,-6057.22
    note-enUS If you were too slow and failed the timed quest, go and pick it up again
    note-ptBR Se demorou demais e falhou na missão com tempo, vá pegá-la novamente
    note-enUS Talk to Nori Pridedrift
    note-ptBR Fale com Nori Pridedrift
    accept 3364 |opt
    note-enUS Talk to Durnan Furcutter
    note-ptBR Fale com Durnan Furcutter
    turnin 3364 |opt
    note-enUS Talk to Durnan Furcutter
    note-ptBR Fale com Durnan Furcutter
    turnin 3364
    accept 3365
    vendor
    note-enUS vendor trash
    note-ptBR venda o lixo
step
    goto 1426 @388.17,-6056.1
    note-enUS Talk to Marryk Nurribit
    note-ptBR Fale com Marryk Nurribit
    turnin 3114
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    goto 1426 @339.36,-6214.82
    note-enUS Run back out the bunker
    note-ptBR Saia correndo do bunker
    note-enUS Talk to Balir Frosthammer
    note-ptBR Fale com Balir Frosthammer
    turnin 170
step
    goto 1426 @324.58,-6224.67
    vendor
    note-enUS Vendor, buy 10 water
    note-ptBR Venda, compre 10 águas
    collect 159 10
step
    path seq 1426 @506.81,-6477.48 @684.11,-6480.77 @772.76,-6362.57 @684.11,-6480.77 @772.76,-6362.57 @684.11,-6480.77
    goto 1426 @772.76,-6362.57 30
    note-enUS Kill Frostmane Troll Whelps
    note-ptBR Mate Frostmane Troll Whelps
    objective 182/1
step
    goto 1426 @570.83,-6372.42
    note-enUS Talk to Nori Pridedrift
    note-ptBR Fale com Nori Pridedrift
    turnin 3365
step
    goto 1426 @567.09,-6362.99
    note-enUS Talk to Grelin Whitebeard
    note-ptBR Fale com Grelin Whitebeard
    turnin 182
    accept 218
step
    path seq 1426 @482.18,-6500.47 @373.83,-6470.92
    goto 1426 @295.03,-6513.6
    note-enUS Enter the Troll cave. Kill Grik'nir, then loot him for Grelin's journal
    note-ptBR Entre na caverna dos Trolls. Mate Grik'nir e saqueie-o para obter o diário de Grelin
    objective 218/1
step
    goto 1426 @565.91,-6365.85
    note-enUS Grind a bit back to here
    note-ptBR Faça um pouco de grind no caminho de volta até aqui
    note-enUS Talk to Grelin Whitebeard
    note-ptBR Fale com Grelin Whitebeard
    turnin 218
    accept 282
step
    goto 1426 @153,-6235.86
    note-enUS Grind some mobs up to here
    note-ptBR Faça grind de alguns mobs até aqui
    note-enUS Talk to Mountaineer Thalos
    note-ptBR Fale com Mountaineer Thalos
    turnin 282
    accept 420
step
    goto 1426 @132.51,-6247.65
    note-enUS Talk to Hands Springsprocket
    note-ptBR Fale com Hands Springsprocket
    accept 2160
step
    path seq 1426 @122.66,-6227.95
    goto 1426 @43.86,-6044.08 20
    note-enUS Go through the tunnel
    note-ptBR Atravesse o túnel
step
    path seq 1426 @9.38,-5942.3 @-54.64,-5863.5
    goto 1426 @-359.99,-5705.9
    note-enUS Kill boars to get 4 Boar Meat for later
    note-ptBR Mate javalis para obter 4 Boar Meat para depois
    objective 317/1 |opt
    note-enUS Kill boars to get 6 Boar Ribs for later
    note-ptBR Mate javalis para obter 6 Boar Ribs para depois
    collect 2886 6 |opt
    note-enUS grind boars north-east to Kharanos
    note-ptBR Farme javalis a nordeste até Kharanos
    level 5
    note-enUS Grind to 2415/+2800xp
    note-ptBR Mate monstros até 2415/+2800xp
step
    goto 1426 @-512.67,-5686.2 120
    note-enUS Die and respawn at the Spirit Healer, or run to Kharanos. Make sure your subzone is NOT Coldridge Pass
    note-ptBR Morra e renasça no Spirit Healer, ou corra até Kharanos. Certifique-se de que sua subzona NÃO seja Coldridge Pass
step
    goto 1426 @-499.17,-5644.37
    note-enUS Talk to Senir Whitebeard
    note-ptBR Fale com Senir Whitebeard
    turnin 420
step
    path seq 1426 @-497.89,-5633.67
    goto 1426 @-502.82,-5597.55
    vendor |opt
    note-enUS vendor trash
    note-ptBR venda o lixo
    note-enUS Talk to Ragnar Thunderbrew
    note-ptBR Fale com Ragnar Thunderbrew
    accept 384
step
    goto 1426 @-576.69,-5748.58
    level 6
    note-enUS Grind to 6
    note-ptBR Mate monstros até o nível 6
step
    goto 1426 @-523.35,-5590.82
    note-enUS Talk to Tannok Frosthammer
    note-ptBR Fale com Tannok Frosthammer
    turnin 2160
step
    goto 1426 @-537.29,-5587.7
    note-enUS Upstairs
    note-ptBR No andar de cima
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    goto 1426 @-532.37,-5600.83
    home
    note-enUS Set your Hearthstone to Thunderbrew Distillery
    note-ptBR Defina sua pedra de regresso em Thunderbrew Distillery
    vendor
    note-enUS Buy as much level 5 drink as you can afford
    note-ptBR Compre o máximo de bebida de nível 5 que puder pagar
step
    goto 1426 @-464.45,-5573.78
    note-enUS Talk to Tharek Blackstone
    note-ptBR Fale com Tharek Blackstone
    accept 400
step
    goto 1426 @-632.15,-5466.54
    note-enUS DON'T kill bears en route
    note-ptBR NÃO mate ursos no caminho
    note-enUS Talk to Pilot Bellowfiz
    note-ptBR Fale com Pilot Bellowfiz
    accept 317
step
    goto 1426 @-641.8,-5473.18
    note-enUS Talk to Pilot Stonegear
    note-ptBR Fale com Pilot Stonegear
    accept 313
step
    goto 1426 @-680.12,-5489.2
    note-enUS Talk to Beldin Steelgrill
    note-ptBR Fale com Beldin Steelgrill
    turnin 400
step
    goto 1426 @-664.55,-5499.71
    note-enUS Talk to Loslor Rudge
    note-ptBR Fale com Loslor Rudge
    accept 5541
step
    path seq 1426 @-758.92,-5522.03 @-734.29,-5646.8 @-665.34,-5646.8 @-655.49,-5548.3 @-561.92,-5502.33 @-571.77,-5416.97 @-340.29,-5600.83 @-758.92,-5522.03 @-734.29,-5646.8 @-665.34,-5646.8 @-655.49,-5548.3 @-561.92,-5502.33 @-571.77,-5416.97 @-340.29,-5600.83 @-758.92,-5522.03 @-734.29,-5646.8 @-665.34,-5646.8 @-655.49,-5548.3 @-561.92,-5502.33 @-571.77,-5416.97 @-340.29,-5600.83 @-758.92,-5522.03 @-734.29,-5646.8 @-665.34,-5646.8 @-655.49,-5548.3 @-561.92,-5502.33 @-571.77,-5416.97
    goto 1426 @-340.29,-5600.83 40
    note-enUS Get the items for Stocking Jetsteam
    note-ptBR Pegue os itens para Stocking Jetsteam
    objective 317/1
    objective 317/2
step
    goto 1426 @-632.15,-5466.54
    note-enUS Talk to Pilot Bellowfiz
    note-ptBR Fale com Pilot Bellowfiz
    turnin 317
    accept 318
step
    path seq 1426 @-507.74,-5587.7
    goto 1426 @-532.37,-5600.83
    note-enUS Go back to the Inn
    note-ptBR Volte para a estalagem
    vendor
    note-enUS Buy as much level 5 drink as you can afford
    note-ptBR Compre o máximo de bebida de nível 5 que puder pagar
    note-enUS You can buy a Skinning Knife outside the inn if you want, it's better than a staff until you get a +stats weapon
    note-ptBR Você pode comprar uma Skinning Knife fora da estalagem se quiser, é melhor que um cajado até conseguir uma arma com atributos
step
    path seq 1426 @-291.04,-5676.35 @-286.12,-5590.98 @-217.17,-5499.05 @-291.04,-5676.35 @-286.12,-5590.98 @-217.17,-5499.05 @-291.04,-5676.35 @-286.12,-5590.98 @-217.17,-5499.05 @-291.04,-5676.35 @-286.12,-5590.98
    goto 1426 @-217.17,-5499.05 40
    note-enUS Go into the cave. Kill Wendigos. Loot them for their Manes
    note-ptBR Entre na caverna. Mate Wendigos. Saqueie-os para obter as Crinas
    objective 313/1
step
    goto 1426 @-369.84,-5745.3
    note-enUS Loot the crate
    note-ptBR Saqueie o caixote
    objective 5541/1
step
    path seq 1426 @-197.47,-5932.45
    goto 1426 @-201.51,-6015.52
    note-enUS Talk to Hegnar Rumbleshot
    note-ptBR Fale com Hegnar Rumbleshot
    turnin 5541
    vendor
    note-enUS Vendor and repair
    note-ptBR Venda e repare
step
    level 7
    note-enUS Grind to 7
    note-ptBR Mate monstros até o nível 7
step
    path seq 1426 @68.48,-5728.88 @29.08,-5584.42
    goto 1426 @98.03,-5574.57
    note-enUS Grind some mobs en route
    note-ptBR Faça grind de alguns mobs no caminho
    note-enUS Talk to Tundra MacGrann
    note-ptBR Fale com Tundra MacGrann
    accept 312
step
    goto 1426 @299.96,-5387.42
    vendor
    note-enUS Vendor. Buy up to 20 level 5 drink
    note-ptBR Venda. Compre até 20 bebidas de nível 5
step
    goto 1426 @314.73,-5380.85
    note-enUS Talk to Rejold Barleybrew
    note-ptBR Fale com Rejold Barleybrew
    turnin 318
    accept 319
    accept 315
step
    goto 1426 @315.42,-5372.02
    note-enUS Talk to Marleth Barleybrew
    note-ptBR Fale com Marleth Barleybrew
    accept 310
step
    path seq 1426 @250.71,-5154.3 @408.31,-5187.13 @388.61,-5311.9 @531.43,-5426.82 @324.58,-5577.85 @250.71,-5154.3 @408.31,-5187.13 @388.61,-5311.9 @531.43,-5426.82
    goto 1426 @324.58,-5577.85 60
    note-enUS Kill Bears, Boars and Leopards. Go from north->west->south
    note-ptBR Mate ursos, javalis e leopardos. Vá de norte -> oeste -> sul
    objective 319/1
    objective 319/2
    objective 319/3
step
    note-enUS Finish off getting the Boar Ribs
    note-ptBR Termine de pegar as Boar Ribs
    objective 384/1
step
    goto 1426 @315.28,-5378.39
    note-enUS Talk to Rejold Barleybrew
    note-ptBR Fale com Rejold Barleybrew
    turnin 319
    accept 320
step
    ifturnedin 384
    level 7
    note-enUS Grind until 4360+/4500xp
    note-ptBR Mate monstros até 4360+/4500xp
step
    level 7
    note-enUS Grind until 3735+/4500xp
    note-ptBR Mate monstros até 3735+/4500xp
step
    hearth
    note-enUS Hearth to Kharanos
    note-ptBR Use a pedra de regresso para Kharanos
step
    goto 1426 @-532.37,-5600.83
    note-enUS Buy a Rhapsody Malt and Thunder Ale from Belm
    note-ptBR Compre um Rhapsody Malt e um Thunder Ale de Belm
    objective 384/2
    collect 2686 1
step
    path seq 1426 @-542.22,-5597.55
    goto 1426 @-547.63,-5607.07
    note-enUS Go downstairs, then talk to Jarven, and give him the Thunder Ale
    note-ptBR Desça as escadas, fale com Jarven e dê o Thunder Ale a ele
    note-enUS Wait for the barrel mouseover to become "unguarded", then handin
    note-ptBR Espere o barril mostrar "unguarded" ao passar o mouse e então entregue
    turnin 310
    accept 311
step
    goto 1426 @-502.82,-5597.55
    note-enUS Talk to Ragnar Thunderbrew
    note-ptBR Fale com Ragnar Thunderbrew
    turnin 384
    note-enUS Sell the recipe when you next vendor
    note-ptBR Venda a receita na próxima vez que for a um vendedor
step
    level 8
    note-enUS Grind to 8
    note-ptBR Mate monstros até o nível 8
step
    goto 1426 @-537.29,-5587.7
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
    note-enUS Make sure you train Polymorph
    note-ptBR Treine Polymorph
step
    goto 1426 @-532.37,-5600.83
    vendor
    note-enUS Buy up to 30 level 5 drink from the innkeeper
    note-ptBR Compre até 30 bebidas de nível 5 do estalajadeiro
step
    goto 1426 @-499.17,-5644.37
    note-enUS Talk to Senir Whitebeard
    note-ptBR Fale com Senir Whitebeard
    accept 287
step
    goto 1426 @-641.8,-5473.18
    note-enUS Talk to Pilot Stonegear
    note-ptBR Fale com Pilot Stonegear
    turnin 313
step
    goto 1426 @-632.15,-5466.54
    note-enUS Talk to Pilot Bellowfiz
    note-ptBR Fale com Pilot Bellowfiz
    turnin 320
step
    goto 1426 @-453.57,-5499.05
    note-enUS Inside the building
    note-ptBR Dentro do edifício
    note-enUS Talk to Razzle Sprysprocket
    note-ptBR Fale com Razzle Sprysprocket
    accept 412
step
    path seq 1426 @-320.59,-5354.58
    goto 1426 @-271.34,-5367.72 25
    note-enUS Run up the ramp to Shimmerweed
    note-ptBR Suba a rampa correndo até Shimmerweed
step
    path seq 1426 @-212.24,-5364.43 @-241.79,-5308.62 @-153.14,-5190.42
    goto 1426 @-271.34,-5003.27 30
    note-enUS Clear mobs in this area. Be careful if you need to clear the middle camp. You can pull the mobs in the huts and line of sight (LoS) them behind the huts if you need 2 more mobs. If you get unlucky, run to the other area
    note-ptBR Limpe os mobs desta área. Cuidado se precisar limpar o acampamento do meio. Você pode puxar os mobs das cabanas e quebrar a linha de visão (LoS) atrás delas se precisar de mais 2 mobs. Se der azar, corra para a outra área
    note-enUS Loot boxes on the ground
    note-ptBR Saqueie as caixas no chão
    objective 315/1
step
    goto 1426 @-94.04,-5646.8
    note-enUS Polymorph Old Icebeard, then loot the meats
    note-ptBR Use Polymorph em Old Icebeard e depois saqueie as carnes
    objective 312/1
step
    goto 1426 @98.03,-5574.57
    note-enUS Talk to Tundra MacGrann
    note-ptBR Fale com Tundra MacGrann
    turnin 312
step
    goto 1426 @304.88,-5380.85
    vendor
    note-enUS Buy up to 20 more level 5 drink
    note-ptBR Compre até mais 20 bebidas de nível 5
step
    goto 1426 @315.28,-5378.39
    note-enUS Talk to Rejold Barleybrew
    note-ptBR Fale com Rejold Barleybrew
    turnin 315
    accept 413
step
    goto 1426 @315.42,-5372.02
    note-enUS Talk to Marleth Barleybrew
    note-ptBR Fale com Marleth Barleybrew
    turnin 311
step
    path seq 1426 @462.48,-5288.92 @580.68,-5167.43 @541.28,-5302.05 @605.31,-5321.75
    goto 1426 @551.13,-5367.72 40
    note-enUS Kill Leper Gnomes. Loot them for Gears and Cogs
    note-ptBR Mate Leper Gnomes. Saqueie-os para obter Gears e Cogs
    objective 412/2
    objective 412/1
step
    level 9
    note-enUS Grind to 9
    note-ptBR Mate monstros até o nível 9
step
    goto 1426 @595.46,-5545.02 35
    note-enUS Enter the cave
    note-ptBR Entre na caverna
step
    path seq 1426 @713.66,-5528.6
    goto 1426 @753.06,-5613.97 40
    note-enUS Kill Headhunters inside the cave
    note-ptBR Mate Headhunters dentro da caverna
    objective 287/1
step
    goto 1426 @649.63,-5568 15
    note-enUS Go back up the cave
    note-ptBR Volte subindo pela caverna
step
    goto 1426 @669.33,-5590.98
    note-enUS Jump down, you die after
    note-ptBR Pule para baixo, você morre em seguida
    objective 287/2
step
    note-enUS Die and respawn at the Spirit Healer
    note-ptBR Morra e renasça no Spirit Healer
step
    goto 1426 @-499.17,-5644.37
    note-enUS Talk to Senir Whitebeard
    note-ptBR Fale com Senir Whitebeard
    turnin 287
    accept 291
step
    goto 1426 @-453.57,-5499.05
    note-enUS Talk to Razzle Sprysprocket
    note-ptBR Fale com Razzle Sprysprocket
    turnin 412
step
    path seq 1426 @-1157.84,-5604.12
    goto 1426 @-1305.59,-5512.18
    note-enUS Talk to Rudra Amberstill
    note-ptBR Fale com Rudra Amberstill
    accept 314
step
    path seq 1426 @-1266.19,-5528.6 @-1261.27,-5499.05
    goto 1426 @-1280.97,-5390.7
    note-enUS Run up this part of the mountain
    note-ptBR Suba correndo esta parte da montanha
    note-enUS Kill Vagash. Loot him for his Fang
    note-ptBR Mate Vagash. Saqueie-o para obter a presa dele
    note-enUS Kite him to the guard south of the ranch. Make sure you do 51%+ damage to him
    note-ptBR Leve-o (kite) até o guarda ao sul do rancho. Certifique-se de causar 51%+ do dano nele
    note-enUS Be careful as this quest can be difficult
    note-ptBR Cuidado, esta missão pode ser difícil
    objective 314/1
step
    goto 1426 @-1305.59,-5512.18
    note-enUS Talk to Rudra Amberstill
    note-ptBR Fale com Rudra Amberstill
    turnin 314
step
    goto 1426 @-1576.47,-5673.07
    note-enUS Grind a little en route
    note-ptBR Faça um pouco de grind no caminho
    vendor
    note-enUS vendor trash. Buy some food/water if needed
    note-ptBR venda o lixo. Compre comida/água se precisar
step
    goto 1426 @-1581.39,-5715.75
    note-enUS Talk to Senator Mehr Stonehallow
    note-ptBR Fale com Senator Mehr Stonehallow
    accept 433
step
    path seq 1426 @-1591.24,-5712.47
    goto 1426 @-1600.3,-5726.59
    vendor |opt
    note-enUS vendor trash, repair
    note-ptBR venda o lixo, repare
    note-enUS Talk to Foreman Stonebrow
    note-ptBR Fale com Foreman Stonebrow
    accept 432
step
    path seq 1426 @-1674.97,-5735.45 @-1684.82,-5627.1 @-1738.99,-5541.73 @-1788.24,-5620.53 @-1674.97,-5735.45 @-1684.82,-5627.1 @-1738.99,-5541.73
    goto 1426 @-1788.24,-5620.53 30
    note-enUS Kill Troggs in the cave
    note-ptBR Mate Troggs na caverna
    objective 432/1
    objective 433/1
step
    goto 1426 @-1600.3,-5726.59
    note-enUS Talk to Foreman Stonebrow
    note-ptBR Fale com Foreman Stonebrow
    turnin 432
step
    path seq 1426 @-1591.24,-5712.47
    goto 1426 @-1581.39,-5715.75
    vendor |opt
    note-enUS vendor trash, repair
    note-ptBR venda o lixo, repare
    note-enUS Talk to Senator Mehr Stonehallow
    note-ptBR Fale com Senator Mehr Stonehallow
    turnin 433
step
    path seq 1426 @-1502.59,-5837.23 @-1679.89,-5787.98
    goto 1426 @-1694.67,-5646.8 40
    level 10
    note-enUS Grind to 10 at the troggs
    note-ptBR Mate monstros até o nível 10 nos troggs
step
    goto 1426 @-1576.47,-5673.07
    vendor
    note-enUS vendor trash, buy up to 30 level 5 drink from Kazan
    note-ptBR venda o lixo, compre até 30 bebidas de nível 5 de Kazan
    trainer
    note-enUS Train Cooking from Ghilm. You'll need this to pick up 2 extra quests later
    note-ptBR Treine Cooking com Ghilm. Você vai precisar disso para pegar 2 missões extras depois
step
    goto 1426 @-2325.07,-5164.15
    note-enUS Talk to Pilot Hammerfoot
    note-ptBR Fale com Pilot Hammerfoot
    accept 419
step
    goto 1426 @-2123.14,-5065.65
    note-enUS Grind en route
    note-ptBR Faça grind no caminho
    turnin 419
    accept 417
step
    goto 1426 @-2137.92,-5072.22
    note-enUS Kill Mangeclaw. Loot him for his Claw
    note-ptBR Mate Mangeclaw. Saqueie-o para obter a garra dele
    objective 417/1
step
    goto 1426 @-2329.6,-5163.76
    note-enUS Talk to Pilot Hammerfoot
    note-ptBR Fale com Pilot Hammerfoot
    turnin 417
step
    path seq 1426 @-2118.22,-5541.73 @-2251.19,-5633.67
    goto 1426 @-2447.11,-5479.74
    note-enUS Go back through the tunnel you came from
    note-ptBR Volte pelo túnel de onde veio
    note-enUS Talk to Mountaineer Barleybrew
    note-ptBR Fale com Mountaineer Barleybrew
    turnin 413
    accept 414
]==])

register([==[
#format 1
#id forever.a.10-12-loch-modan-mage-aoe
#name 10-12 Loch Modan Mage AoE
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#only Mage
#levels 10-12
#zones 1432
#suffix Mage AoE
#suffix-ptBR Mago AoE
#name-ptBR 10-12 Loch Modan Mago AoE
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup Mage AoE
#subgroup-ptBR Mago AoE
#recommend Human Mage Gnome Mage
#next forever.a.12-18-darkshore-mage-aoe

step
    only Gnome
    goto 1432 @-2602.54,-5832.73
    note-enUS As you quest through Loch Modan, save ALL of the Chunks of Boar Meat you get and DO NOT vendor it. You'll need it for later
    note-ptBR Enquanto faz missões em Loch Modan, guarde TODOS os Chunks of Boar Meat que conseguir e NÃO os venda. Você vai precisar deles depois
    note-enUS Talk to Mountaineer Cobbleflint
    note-ptBR Fale com Mountaineer Cobbleflint
    accept 224
step
    only Gnome
    goto 1432 @-2634.59,-5842.81
    note-enUS Go into the bunker from behind
    note-ptBR Entre no bunker pelos fundos
    note-enUS Talk to Captain Rugelfuss
    note-ptBR Fale com Captain Rugelfuss
    accept 267
step
    only Gnome
    goto 1432 @-2818.49,-5742.1 45
    note-enUS Run to the Troggs Entrance
    note-ptBR Corra até a Troggs Entrance
step
    only Gnome
    path seq 1432 @-2821.25,-5819.36 @-2950.89,-5804.64 @-2846.07,-5979.4 @-2821.25,-5819.36 @-2950.89,-5804.64
    goto 1432 @-2846.07,-5979.4 50
    note-enUS Kill Stonesplinter Troggs. Loot them for their Teeth
    note-ptBR Mate Stonesplinter Troggs. Saqueie-os para obter os dentes
    note-enUS Be careful as this quest can be difficult. Run if you misspull 2 mobs at once
    note-ptBR Cuidado, esta missão pode ser difícil. Fuja se puxar 2 mobs de uma vez sem querer
    objective 224/1
    objective 224/2
    objective 267/1
step
    only Gnome
    goto 1432 @-2602.54,-5832.73
    note-enUS Talk to Mountaineer Cobbleflint
    note-ptBR Fale com Mountaineer Cobbleflint
    turnin 224
step
    only Gnome
    goto 1432 @-2634.59,-5842.81
    note-enUS Go into the bunker from behind
    note-ptBR Entre no bunker pelos fundos
    note-enUS Talk to Captain Rugelfuss
    note-ptBR Fale com Captain Rugelfuss
    turnin 267
step
    only Human
    goto 1432 @-2658.51,-4822.3
    vendor
    note-enUS Vendor and repair
    note-ptBR Venda e repare
step
    only Human
    goto 1432 @-2676.82,-4825.93
    note-enUS Talk to Mountaineer Stormpike
    note-ptBR Fale com Mountaineer Stormpike
    turnin 353
    accept 307
step
    only Human
    goto 1432 @-2961.92,-5366.82 130
    note-enUS Kill Spiders in the zone for Spider Ichor |only Human
    note-ptBR Mate aranhas na zona para obter Spider Ichor |only Human
    collect 3174 3 |only Human |opt
    note-enUS Kill Bears in the zone for Bear Meat |only Human
    note-ptBR Mate ursos na zona para obter Bear Meat |only Human
    collect 3173 3 |only Human |opt
    note-enUS Kill Boars in the zone for Boar Intestines |only Human
    note-ptBR Mate javalis na zona para obter Boar Intestines |only Human
    collect 3172 3 |only Human |opt
    note-enUS Grind mobs en route for cooking quest later
    note-ptBR Mate monstros no caminho para a missão de culinária mais tarde
step
    goto 1432 @-2954.42,-5394.1
    note-enUS Run up to Thelsamar. do NOT set your hearth |only Gnome
    note-ptBR Suba até Thelsamar. NÃO defina sua Pedra de Regresso |only Gnome
    note-enUS Talk to Vidra Hearthstove
    note-ptBR Fale com Vidra Hearthstove
    accept 418
step
    only Human
    abandon 1338
    note-enUS Abandon Stormpike's Order. This is to unlock Mountaineer Stormpike's Task
    note-ptBR Abandone Stormpike's Order. Isso serve para liberar Mountaineer Stormpike's Task
step
    goto 1432 @-2953.65,-5381.54
    vendor
    note-enUS Buy 1-2 6 slot bags to fill your bag slots
    note-ptBR Compre 1-2 bolsas de 6 espaços para preencher seus espaços de bolsa
step
    goto 1432 @-2972.96,-5377.86
    vendor
    note-enUS Buy food/water (try to have 40 level 5 drink, 20 level 5 food)
    note-ptBR Compre comida/água (tente ter 40 bebidas de nível 5 e 20 comidas de nível 5)
step
    path seq 1432 @-2892.97,-5405.45 @-3019.85,-5335.55
    goto 1432 @-3006.06,-5252.77
    note-enUS Find Kadrell. He patrols along the Thelsamar road
    note-ptBR Encontre Kadrell. Ele patrulha a estrada de Thelsamar
    note-enUS Talk to Mountaineer Kadrell
    note-ptBR Fale com Mountaineer Kadrell
    accept 416
    accept 1339
step
    only Gnome
    goto 1432 @-2658.51,-4822.3
    note-enUS Kill Spiders in the zone for Thelsamar Blood Sausages
    note-ptBR Mate aranhas na zona para obter Thelsamar Blood Sausages
    collect 3174 3 |quest 418 |q 418/1 |opt
    note-enUS Kill Bears in the zone for Thelsamar Blood Sausages
    note-ptBR Mate ursos na zona para obter Thelsamar Blood Sausages
    collect 3173 3 |quest 418 |q 418/1 |opt
    note-enUS Kill Boars in the zone for Thelsamar Blood Sausages
    note-ptBR Mate javalis na zona para obter Thelsamar Blood Sausages
    collect 3172 3 |quest 418 |q 418/1 |opt
    vendor
    note-enUS Vendor and repair
    note-ptBR Venda e repare
step
    only Gnome
    goto 1432 @-2676.82,-4825.93
    note-enUS Talk to Mountaineer Stormpike
    note-ptBR Fale com Mountaineer Stormpike
    turnin 1339
    accept 1338
    accept 307
step
    only Gnome
    goto 1432 @-2923.58,-4803.91 130
    note-enUS Grind some mobs for Boar Intestines, Bear Meat and Spider Ichor en route
    note-ptBR Mate alguns monstros no caminho para conseguir Boar Intestines, Bear Meat e Spider Ichor
step
    only Human
    goto 1432 @-3077.77,-4984.19 130
    note-enUS Grind some mobs for Boar Intestines, Bear Meat and Spider Ichor en route
    note-ptBR Mate alguns monstros no caminho para conseguir Boar Intestines, Bear Meat e Spider Ichor
step
    goto 1432 @-2972.96,-4822.3 45
    note-enUS Kill Tunnel Rats. Loot them for their Ears
    note-ptBR Mate Tunnel Rats. Saqueie-os para obter as orelhas
    objective 416/1 |opt
    note-enUS Go to the entrance of the cave whilst killing rats
    note-ptBR Vá até a entrada da caverna matando ratos
step
    path seq 1432 @-2972.96,-4853.58 @-2997.78,-4868.29 @-2967.44,-4892.21 @-2983.99,-4894.05 @-2995.02,-4941.88 @-2978.47,-4934.52 @-2956.41,-4945.56 @-2978.47,-4934.52 @-2995.02,-4941.88 @-2983.99,-4894.05 @-2967.44,-4892.21 @-2997.78,-4868.29
    goto 1432 @-2972.96,-4853.58 12
    note-enUS Collect the crates you find in the cave. Be careful because this is difficult at level 11
    note-ptBR Colete as caixas que encontrar na caverna. Cuidado, isso é difícil no nível 11
    note-enUS Be careful as the Geomancers cast Flame Ward (Fire Immunity) after a few seconds
    note-ptBR Cuidado, os Geomancers lançam Flame Ward (imunidade a Fogo) após alguns segundos
    objective 307/1
step
    goto 1432 @-3081.36,-4902.88
    note-enUS Kill Tunnel Rats. Loot them for their Ears
    note-ptBR Mate Tunnel Rats. Saqueie-os para obter as orelhas
    note-enUS Try to kill the Vermin instead of Kobolds/Geomancers
    note-ptBR Tente matar os Vermin em vez dos Kobolds/Geomancers
    objective 416/1
step
    goto 1432 @-2636.44,-4816.79 60
    note-enUS Kill Spiders in the zone for Thelsamar Blood Sausages
    note-ptBR Mate aranhas na zona para obter Thelsamar Blood Sausages
    collect 3174 3 |quest 418 |q 418/1 |opt
    note-enUS Kill Bears in the zone for Thelsamar Blood Sausages
    note-ptBR Mate ursos na zona para obter Thelsamar Blood Sausages
    collect 3173 3 |quest 418 |q 418/1 |opt
    note-enUS Kill Boars in the zone for Thelsamar Blood Sausages
    note-ptBR Mate javalis na zona para obter Thelsamar Blood Sausages
    collect 3172 3 |quest 418 |q 418/1 |opt
    note-enUS Run back to the bunker, grinding en route
    note-ptBR Volte correndo para o bunker, matando monstros no caminho
step
    goto 1432 @-2658.51,-4822.3
    vendor
    note-enUS vendor and repair
    note-ptBR venda e repare
step
    goto 1432 @-2675.06,-4824.14
    note-enUS Talk to Mountaineer Stormpike
    note-ptBR Fale com Mountaineer Stormpike
    turnin 307
    turnin 1339 |only Human
    accept 1338 |only Human
step
    path seq 1432 @-2735.74,-4684.34 @-2846.07,-4682.5 @-2782.63,-4770.8 @-2835.04,-4976.83 @-2915.03,-5044.89 @-3080.53,-5100.08 @-2735.74,-4684.34 @-2846.07,-4682.5 @-2782.63,-4770.8 @-2835.04,-4976.83 @-2915.03,-5044.89 @-3080.53,-5100.08
    goto 1432 @-2735.74,-4684.34
    note-enUS Kill Bears. Loot them for Meat
    note-ptBR Mate ursos. Saqueie-os para obter carne
    collect 3173 3 |quest 418 |q 418/1
step
    path seq 1432 @-2873.66,-4789.19 @-2766.08,-4866.45 @-2926.07,-5232.53 @-2992.27,-5055.93 @-3069.5,-5078.01 @-2873.66,-4789.19 @-2766.08,-4866.45 @-2926.07,-5232.53 @-2992.27,-5055.93 @-3069.5,-5078.01
    goto 1432 @-2873.66,-4789.19
    note-enUS Kill Spiders. Loot them for Ichor
    note-ptBR Mate aranhas. Saqueie-as para obter icor
    collect 3174 3 |quest 418 |q 418/1
step
    path seq 1432 @-3041.92,-5129.51 @-3017.09,-5219.65 @-2815.73,-5147.91 @-2757.81,-4952.91 @-2782.63,-4903.25 @-3041.92,-5129.51 @-3017.09,-5219.65 @-2815.73,-5147.91 @-2757.81,-4952.91 @-2782.63,-4903.25
    goto 1432 @-3041.92,-5129.51
    note-enUS Kill Boars. Loot them for Intestines
    note-ptBR Mate javalis. Saqueie-os para obter intestinos
    collect 3172 3 |quest 418 |q 418/1
step
    path seq 1432 @-2892.97,-5405.45 @-3019.85,-5335.55
    goto 1432 @-3006.06,-5252.77
    note-enUS Find Kadrell. He patrols along the Thelsamar road
    note-ptBR Encontre Kadrell. Ele patrulha a estrada de Thelsamar
    note-enUS Talk to Mountaineer Kadrell
    note-ptBR Fale com Mountaineer Kadrell
    turnin 416
step
    goto 1432 @-2954.42,-5394.1
    note-enUS Talk to Vidra Hearthstove
    note-ptBR Fale com Vidra Hearthstove
    turnin 418
step
    goto 1432 @-2952.55,-5381.91
    vendor
    note-enUS Buy 6 slots until your bag containers are full. Also buy 1 Flint and Tinder, and 2 Simple Wood
    note-ptBR Compre bolsas de 6 espaços até encher seus slots de bolsa. Compre também 1 Flint and Tinder e 2 Simple Wood
    collect 4470 2
    collect 4471 1
step
    level 12
    note-enUS Grind to 12
    note-ptBR Mate monstros até o nível 12
step
    only Gnome
    goto 1432 @-3781.7,-5702.36 |only Gnome
    goto 1432 @-3812.59,-5694.63
    vendor |only Gnome |opt
    note-enUS Check Aldren for a Wise Man's Belt. Buy it if you can afford it. Save it for later |only Gnome
    note-ptBR Procure Aldren por um Wise Man's Belt. Compre se puder pagar. Guarde para depois |only Gnome
    note-enUS Talk to Prospector Ironband
    note-ptBR Fale com Prospector Ironband
    accept 298
step
    only Gnome
    goto 1432 @-3872.73,-5646.07
    note-enUS Die and respawn back in Thelsamar
    note-ptBR Morra e renasça em Thelsamar
step
    only Gnome
    path seq 1432 @-3018.75,-5350.08
    goto 1432 @-3014.88,-5367
    note-enUS Go inside the building
    note-ptBR Entre no prédio
    note-enUS Talk to Brock Stoneseeker
    note-ptBR Fale com Brock Stoneseeker
    accept 6387
    note-enUS Talk to Jern Hornhelm
    note-ptBR Fale com Jern Hornhelm
    turnin 298
    accept 301
step
    goto 1432 @-2929.93,-5424.95
    fp
    note-enUS Get the Thelsamar flight path
    note-ptBR Pegue o ponto de voo de Thelsamar
    note-enUS Talk to Thorgrum Borrelson
    note-ptBR Fale com Thorgrum Borrelson
    turnin 6387 |only Gnome
    accept 6391 |only Gnome
    fly 1455
    note-enUS Fly to Ironforge
    note-ptBR Voe para Ironforge
step
    only Human
    goto 1455 @-928.25,-4614.46
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Human
    goto 1455 @-810.36,-5039.71 120
    note-enUS Exit Ironforge
    note-ptBR Saia de Ironforge
step
    only Gnome
    goto 1455 @-1303.79,-4631.18
    note-enUS Talk to Prospector Stormpike
    note-ptBR Fale com Prospector Stormpike
    turnin 301
    accept 302
step
    only Gnome
    path seq 1455 @-1105.66,-4722.04
    goto 1455 @-1120.92,-4708.11
    note-enUS Go back toward The Great Forge, then take a right and go inside the building
    note-ptBR Volte em direção a The Great Forge, vire à direita e entre no prédio
    note-enUS Talk to Golnir Bouldertoe
    note-ptBR Fale com Golnir Bouldertoe
    turnin 6391
    accept 6388
step
    only Gnome
    goto 1455 @-1026.28,-4872.56
    note-enUS Talk to Senator Barin Redstone
    note-ptBR Fale com Senator Barin Redstone
    turnin 291
step
    only Gnome
    goto 1455 @-1152.39,-4820.91
    note-enUS Talk to Gryth Thurden
    note-ptBR Fale com Gryth Thurden
    turnin 6388
    accept 6392
    fp
    note-enUS Fly to Thelsamar
    note-ptBR Voe para Thelsamar
step
    only Gnome
    path seq 1432 @-3018.75,-5350.08
    goto 1432 @-3014.88,-5367
    note-enUS Go inside the building
    note-ptBR Entre no prédio
    note-enUS Talk to Brock Stoneseeker
    note-ptBR Fale com Brock Stoneseeker
    turnin 6392
    note-enUS Talk to Jern Hornhelm
    note-ptBR Fale com Jern Hornhelm
    turnin 302
step
    only Gnome
    hearth
    note-enUS Hearth to Kharanos
    note-ptBR Use a pedra de regresso para Kharanos
step
    only Gnome
    goto 1426 @-537.29,-5587.04
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    goto 1426 @309.81,-5108.33 50
    note-enUS Run to here
    note-ptBR Corra até aqui
step
    goto 1426 @280.26,-4963.87 15
    note-enUS Run up the mountain north
    note-ptBR Suba a montanha correndo para o norte
step
    goto 1426 @206.38,-4832.53 15
    note-enUS Follow it up to here
    note-ptBR Siga por ele até aqui
step
    path seq 1426 @176.83,-4770.15
    goto 1426 @176.83,-4704.48 15
    goto 1437 @-869.29,-3344.13 60
    note-enUS Keep running straight north, drop down and die, then respawn
    note-ptBR Continue correndo reto para o norte, pule e morra, depois renasça
step
    path seq 1437 @-914.78,-3435.09 @-819.67,-3691.42 @-807.26,-3716.22 @-827.94,-3724.49
    goto 1437 10.76,56.72
    note-enUS Swim to shore
    note-ptBR Nade até a margem
    vendor
    note-enUS If you have 8s, Check for Bronze Tube from Neal Allen and buy it if it's there
    note-ptBR Se tiver 8 de prata, veja se Neal Allen tem um Bronze Tube e compre se tiver
step
    goto 1437 @-724.55,-3699.69
    vendor
    note-enUS Check Dewin for Heal Potions, buy down to 1s
    note-ptBR Procure Dewin por Heal Potions, compre até ficar com 1 de prata
step
    goto 1437 @-782.45,-3793.4
    fp
    note-enUS Get the Menethil Harbor flight path
    note-ptBR Pegue o ponto de voo de Menethil Harbor
step
    goto 1437 @-583.95,-3727.25
    note-enUS Wait here for the boat. Make a Campfire from your spellbook and start cooking the chunks of boar meat you saved from earlier. You need at least 10 skill now, and 50 later (so cook all of it)
    note-ptBR Espere o barco aqui. Faça uma fogueira pelo grimório e cozinhe os pedaços de carne de javali que você guardou. Você precisa de pelo menos 10 de habilidade agora e 50 depois (então cozinhe tudo)
    zone 1439
    note-enUS Get onto the boat when it comes. Take it to Darkshore. If you've finished cooking food, start conjuring as much level 5 water as possible
    note-ptBR Entre no barco quando ele chegar. Leve-o até Darkshore. Se já terminou de cozinhar, comece a conjurar o máximo de água de nível 5 possível
]==])
