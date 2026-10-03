-- Convertido automaticamente de Guidelime_Zarant (Alliance/29-32_Duskwood.lua).
-- (c) Zarant - GNU GPL v3 (ver LICENSE.txt). Gerado por tools/guidelime2azimute.py.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id classic.a.29-32-duskwood
#name 29-32 Duskwood
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 29-32
#zones 1431
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    note-enUS This segment has a long grinding session, you can substitute that for a Gnomeregan run
    note-ptBR Este segmento tem uma longa sessão de farm, você pode substituí-la por uma run de Gnomeregan
step
    vendor |opt
    note-enUS Withdraw the follwing: A Torn Journal Page Bottle of Zombie Juice Skeleton Finger Vial of Spider Venom An Old History Book (if you have it) -BANKFRAME_OPENED,
    note-ptBR Retire o seguinte: A Torn Journal Page Bottle of Zombie Juice Skeleton Finger Vial of Spider Venom An Old History Book (se tiver) -BANKFRAME_OPENED,
step
    turnin 637
    accept 683
    note-enUS Turn in Wait for the RP sequence Accept
    note-ptBR Entregue. Espere a sequência de RP. Aceite
step
    turnin 683
    accept 686
step
    turnin 686
    accept 689
step
    trainer |opt
    note-enUS Train skills Train pet skills Make sure you have frost/nature resistance maxed out on your pet
    note-ptBR Treine habilidades. Treine habilidades do mascote. Certifique-se de que seu mascote esteja com as resistências a gelo/natureza no máximo
step
    accept 1179
step
    note-enUS Take the tram to Stormwind
    note-ptBR Pegue o bonde para Stormwind
    turnin 322
    accept 325
step
    vendor |opt
    note-enUS Deposit the following items: Musquash Root Crate of Crash Helmets Turtle Meat -BANKFRAME_OPENED,
    note-ptBR Guarde os seguintes itens: Musquash Root Crate of Crash Helmets Turtle Meat -BANKFRAME_OPENED,
step
    trainer |opt
    note-enUS Train first aid at the cathedral
    note-ptBR Aprenda primeiros socorros na catedral
step
    trainer |opt
    note-enUS If you get level 30 turning in the next few quests in SW, remember to buy class/pet skills
    note-ptBR Se chegar ao nível 30 entregando as próximas missões em SW, lembre-se de comprar as habilidades de classe/pet
step
    goto 1453 39.6,27.2
    turnin 293 |opt
step
    accept 1274
step
    turnin 1274
    accept 1241
step
    goto 1453 74.16,7.49
    accept 337 |opt
    turnin 337 |opt
    accept 538 |opt
    note-enUS Skip this step if you haven't found the quest item Turn in Accept
    note-ptBR Pule esta etapa se não tiver encontrado o item de missão. Entregue. Aceite
step
    turnin 1241
    accept 1242
step
    turnin 1242
    accept 1243
step
    fly 1431
step
    goto 1431 79.8,48.02
    accept 174
    turnin 174
    note-enUS Accept Turn in Skip this step if you haven't found a bronze tube
    note-ptBR Aceite Entregue Pule esta etapa se não tiver encontrado um bronze tube
step
    goto 1431 79.8,48.02
    accept 175
step
    path seq 1431 81.46,59.02
    goto 1431 81.98,59.08
    turnin 175
    accept 177
    note-enUS Head south towards the chapel Turn in pt.2 Accept pt.3
    note-ptBR Siga para o sul em direção à capela Entregue a pt.2 Aceite a pt.3
step
    complete 177
    note-enUS Kill the Insane Ghoul inside the chapel
    note-ptBR Mate o Insane Ghoul dentro da capela
step
    turnin 177
step
    accept 181
step
    accept 173
step
    accept 58
step
    home
    note-enUS Set your HS to
    note-ptBR Defina sua Pedra de Regresso em
step
    turnin 1243
    accept 1244
step
    goto 1431 63,41.6 120
    complete 173
step
    turnin 173
    accept 221
step
    goto 1431 61.8,45.3 120
    complete 221
step
    turnin 74
    accept 75
    note-enUS Head northeast to Elwynn Forest Turn in pt.7 Accept pt.8
    note-ptBR Siga para o nordeste até Elwynn Forest Entregue a pt.7 Aceite a pt.8
step
    complete 75
    note-enUS Loot the chest inside the house
    note-ptBR Saqueie o baú dentro da casa
step
    turnin 75
    accept 78
step
    turnin 159
    accept 133
step
    complete 101 |opt
step
    complete 58
    complete 133
step
    turnin 133
    accept 134
step
    complete 1244
    note-enUS Loot the chest inside the farmhouse
    note-ptBR Saqueie o baú dentro da casa da fazenda
step
    complete 134
    note-enUS Click on the crate on the ground
    note-ptBR Clique no caixote no chão
step
    complete 181
step
    turnin 134
    accept 160
step
    accept 225
step
    accept 323
step
    complete 323
step
    turnin 323
    accept 269
step
    turnin 325
    accept 55
step
    hearth
step
    vendor |opt
    note-enUS Make sure you have 2 stacks of food/water Buy extra stacks of ammo, long grinding session ahead
    note-ptBR Certifique-se de ter 2 pilhas de comida/água. Compre pilhas extras de munição, vem aí uma longa sessão de farm
step
    turnin 78
    accept 79
step
    turnin 58
    turnin 79
    accept 80
step
    turnin 80
    accept 97
step
    turnin 225
    accept 227
step
    turnin 160
    accept 251
step
    turnin 251
    accept 401
    turnin 401
    accept 252
step
    turnin 252
    note-enUS Talk to the mayor again Turn in
    note-ptBR Fale com o prefeito novamente. Entregue
step
    accept 253
step
    turnin 97
    accept 98
    turnin 227
    accept 228
step
    turnin 1244
    accept 1245
step
    goto 1431 77.3,36.2
    complete 98 |opt
    note-enUS Kill Stalvan inside the farmhouse
    note-ptBR Mate Stalvan dentro da casa da fazenda
step
    objective 335/1
    note-enUS Loot the small flower at the farm
    note-ptBR Saqueie a pequena flor na fazenda
step
    turnin 98
    turnin 101
step
    turnin 221
step
    accept 222
step
    turnin 181
step
    goto 1431 59.8,80.3 40
    complete 222 |opt
    complete 222
step
    accept 337 |opt
    note-enUS Grind mobs until you find An Old History Book Accept
    note-ptBR Faça grind de mobs até encontrar An Old History Book Aceite
step
    path seq 1431 72.8,73 62.9,81.4
    goto 1431 63.7,71.5
    note-enUS Grind until you are anywhere between level 31.5 and level 32 Keep grinding until your HS cooldown is <25 minutes
    note-ptBR Faça grind até estar entre o nível 31,5 e o nível 32 Continue o grind até a recarga da sua Pedra de Regresso ficar <25 minutos
step
    goto 1431 28.8,31
    complete 253
    note-enUS Click on the grave to summon Eliza Kill Eliza and loot her heart To avoid dealing with her skeleton adds use the wagon to jump on top of Abercrombie's shed -<<
    note-ptBR Clique no túmulo para invocar Eliza Mate Eliza e saqueie o coração dela Para evitar lidar com os esqueletos que a acompanham, use a carroça para pular no telhado do galpão de Abercrombie -<<
step
    complete 55
    note-enUS Equip Morbent's Bane in your off-hand Kill Morbent Fel Pull with Eyes of the Beast, don't touch any mobs, let Morbent Fel and all his adds proxy aggro your pet so you can split pull him away
    note-ptBR Equipe Morbent's Bane na mão secundária Mate Morbent Fel Puxe com Eyes of the Beast, não toque em nenhum mob, deixe Morbent Fel e todos os adds dele pegarem aggro no seu pet por proximidade para puxá-lo separado
step
    turnin 55
step
    complete 228 |opt
    note-enUS Kill Mor'Ladim, kite him to STV (Level 35 elite roaming the cemetery)
    note-ptBR Mate Mor'Ladim, leve-o (kite) até STV (elite nível 35 que vaga pelo cemitério)
step
    accept 583
    turnin 583
step
    accept 185
    accept 190
step
    accept 215 |opt
    turnin 215 |opt
    note-enUS Look out for Private Thorsen's RP event while you quest He patrols down the road every ~30 minutes ( )
    note-ptBR Fique atento ao evento de RP do Private Thorsen enquanto faz missões. Ele patrulha a estrada a cada ~30 minutos ( )
step
    path seq 1434 41.5,12
    goto 1434 35.4,12.5 110
    complete 190 |opt
    complete 185
step
    goto 1434 41.5,12 100
    complete 190
step
    turnin 185
    accept 186
step
    turnin 190
step
    hearth
step
    turnin 228
    accept 229
step
    turnin 253
step
    turnin 229
    accept 231
step
    goto 1431 75.75,47.56 20
    turnin 222
    accept 223
step
    goto 1431 75.32,49.02 20
    turnin 223
step
    fly 1453
step
    vendor |opt
    note-enUS Withdraw the following items: Crate of Crash Helmets Turtle Meat Musquash Root An Old History Book -BANKFRAME_OPENED,
    note-ptBR Retire os seguintes itens: Crate of Crash Helmets Turtle Meat Musquash Root An Old History Book -BANKFRAME_OPENED,
step
    turnin 1245
    accept 1246
step
    turnin 1246
    accept 1447
step
    complete 1447
step
    turnin 1447
    accept 1247
step
    turnin 1247
    accept 1248
step
    turnin 1078
step
    accept 690
step
    accept 1301
step
    turnin 335
    accept 336
step
    only Warlock
    accept 1798
step
    only Warlock
    accept 4738
    note-enUS Accept Skip this step if you already have the same quest from the Ironforge Warlock trainer
    note-ptBR Aceite Pule esta etapa se já tiver a mesma missão do instrutor de Bruxo de Ironforge
step
    turnin 269
    accept 270
step
    turnin 336
step
    turnin 337
    accept 538
    note-enUS Turn in Accept -An Old History Book
    note-ptBR Entregue. Aceite -An Old History Book
step
    only Hunter
    trainer |opt
    note-enUS You don't need to train skills if you already purchased your level 30 spells
    note-ptBR Você não precisa treinar habilidades se já comprou suas magias de nível 30
step
    goto 1455 55.5,47.7
    note-enUS Take the Tram to Ironforge
    note-ptBR Pegue o bonde para Ironforge
    fly 1437
]==])
