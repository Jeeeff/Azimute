-- Convertido automaticamente de Guidelime_Zarant (Alliance/53-54_Ungoro.lua).
-- (c) Zarant - GNU GPL v3 (ver LICENSE.txt). Gerado por tools/guidelime2azimute.py.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id classic.a.53-54-ungoro-crater
#name 53-54 UnGoro Crater
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 53-54
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    turnin 5158
    accept 5159
step
    accept 4502
step
    complete 3444
    note-enUS Loot the small chest outside the metal hut
    note-ptBR Saqueie o pequeno baú do lado de fora da cabana de metal
step
    vendor |opt
    note-enUS Withdraw the follwing items: Torwa's Pouch Webbed Diemetradon Scale Webbed Pterrordax Scale Dinosaur Bone -BANKFRAME_OPENED,
    note-ptBR Retire os seguintes itens: Torwa's Pouch Webbed Diemetradon Scale Webbed Pterrordax Scale Dinosaur Bone -BANKFRAME_OPENED,
step
    goto 1446 52.51,27.91
    home
    note-enUS Set your HS to
    note-ptBR Defina sua Pedra de Regresso em
step
    accept 4504
    note-enUS Accept -Super sticky tar, do that quest later due to quest log constraints
    note-ptBR Aceite -Super sticky tar, faça essa missão depois por causa do limite do registro de missões
step
    turnin 2641
step
    turnin 4493
    accept 4496
step
    accept 2661
step
    turnin 2661
    accept 2662
    turnin 2662
step
    turnin 3444
step
    fp
step
    accept 3881
    accept 3883
step
    accept 3882
step
    accept 4284
    turnin 4284
step
    accept 4285
    accept 4288
    accept 4287
step
    accept 4501
    note-enUS Click on the Wanted Poster Accept
    note-ptBR Clique no Wanted Poster Aceite
step
    accept 4492
step
    accept 4503
step
    complete 4503 |opt
    complete 3882 |opt
    note-enUS Kill dinos as you quest through Un'Goro
    note-ptBR Mate dinossauros enquanto faz missões por Un'Goro
step
    complete 4504
step
    goto 1449 56.81,9.2 50
    objective 4501/1 |opt
    complete 4285
    note-enUS Click on the Northern Pylon
    note-ptBR Clique no Northern Pylon
step
    complete 4289
step
    goto 1449 68.47,36.53
    objective 3881/1
    note-enUS Loot the Crate of Foodstuffs
    note-ptBR Saqueie a Crate of Foodstuffs
step
    goto 1449 77.21,49.85
    complete 4287
    note-enUS Right click on the eastern pylon
    note-ptBR Clique com o botão direito no pilar leste
step
    goto 1449 79.95,49.86
    complete 4292
    note-enUS Open Torwa's Pouch, set up the threshadon meat and the pheromone mixture and kill Lar'kowi
    note-ptBR Abra a Torwa's Pouch, prepare a threshadon meat e a pheromone mixture e mate Lar'kowi
step
    turnin 4292
    turnin 4289
    accept 4301
step
    goto 1449 56.46,90.38
    objective 4501/1
step
    goto 1449 48.67,85.37
    complete 3883
    note-enUS Enter the silithid hive Use the scraping vial on the middle of the room
    note-ptBR Entre na colmeia silithid Use o scraping vial no meio da sala
step
    objective 4496/1
    note-enUS Keep killing bugs until you get a
    note-ptBR Continue matando insetos até conseguir um
step
    objective 4501/2 |opt
    note-enUS Kill any Frenzied Pterrodax you see
    note-ptBR Mate todos os Frenzied Pterrodax que vir
step
    goto 1449 38.44,66.01
    objective 3881/2
    note-enUS Loot the Research Equipment
    note-ptBR Saqueie o Research Equipment
step
    goto 1449 23.84,59.08
    complete 4288
    note-enUS Click on the Western Pylon
    note-ptBR Clique no Western Pylon
step
    accept 974
step
    path seq 1449 52.95,42.81
    goto 1449 49.75,45.72
    complete 4502 |opt
    complete 974
    note-enUS Climb the volcano Climb to the top of the volcano and use the quest item on the flaming protuberance
    note-ptBR Suba o vulcão Suba até o topo do vulcão e use o item de missão na protuberância flamejante
step
    complete 4502
step
    turnin 974
    accept 980
step
    complete 4501
    complete 4503
step
    turnin 4492
    accept 4491
    note-enUS Start the Ringo escort quest Turn in Accept
    note-ptBR Inicie a missão de escolta de Ringo. Entregue. Aceite
step
    complete 4491
    turnin 4491
    note-enUS Escort Ringo to Marshal's Refuge Turn in
    note-ptBR Escolte Ringo até Marshal's Refuge Entregue
step
    turnin 4501
step
    turnin 3882
step
    turnin 3883
    turnin 3881
step
    turnin 4285
    turnin 4287
    turnin 4288
    accept 4321
    turnin 4321
step
    turnin 4503
step
    accept 4243
step
    turnin 4243
step
    goto 1449 68.41,12.47
    complete 4301
step
    turnin 4301
step
    note-enUS Make sure you have 20 Un'Goro soil before leaving Un'Goro
    note-ptBR Certifique-se de ter 20 Un'Goro soil antes de sair de Un'Goro
step
    hearth
    note-enUS Hearth to Ratchet You can also pull a mob, death skip at the Tanaris border and use HS batching in Gadgetzan to save you 5 minutes later on
    note-ptBR Use a Pedra de Regresso para Ratchet Você também pode puxar um mob, fazer death skip na fronteira de Tanaris e usar o HS batching em Gadgetzan para economizar 5 minutos depois
step
    turnin 4502
step
    vendor |opt
    note-enUS Withdraw the following: Eridan's vial Purified Moonwell Water Cenarion beacon Moontouched Feathers -BANKFRAME_OPENED,
    note-ptBR Retire o seguinte: Eridan's vial Purified Moonwell Water Cenarion beacon Moontouched Feathers -BANKFRAME_OPENED,
step
    fly 1438
step
    accept 978
step
    turnin 978
    accept 979
    note-enUS Turn in Accept Skip this step if you just got this quest (Moontouched Wildkin)
    note-ptBR Entregue. Aceite. Pule esta etapa se você acabou de pegar esta missão (Moontouched Wildkin)
step
    accept 5250
step
    goto 1457 63.8,22.8
    accept 7792 |opt
    turnin 7792 |opt
    accept 7798 |opt
    turnin 7798 |opt
    accept 7799 |opt
    turnin 7799 |opt
    accept 7800 |opt
    turnin 7800 |opt
    note-enUS Do the Darnassus cloth turn ins: Wool Silk Mageweave Runecloth
    note-ptBR Faça as entregas de tecido de Darnassus: Wool Silk Mageweave Runecloth
step
    accept 1047 |opt
    note-enUS Accept from the courier that roams darnassus
    note-ptBR Aceite com o mensageiro que circula por darnassus
step
    goto 1457 39.19,85.12
    complete 4441
    note-enUS Use Eridan's Vial at the fountain inside the temple
    note-ptBR Use o Eridan's Vial na fonte dentro do templo
step
    vendor |opt
step
    goto 1457 67.38,15.68
    accept 3763
step
    only Hunter
    accept 8151 |opt
    note-enUS Accept (Sunken Temple class quest)
    note-ptBR Aceite (missão de classe de Sunken Temple)
step
    turnin 3763
    accept 3764
step
    turnin 1047 |opt
    accept 6761
step
    turnin 3764
step
    accept 3781
    note-enUS Run upstairs and speak with the Arch Druid Accept
    note-ptBR Suba as escadas e fale com o Arch Druid. Aceite
step
    note-enUS Run down to the middle floor, speak with Mathrengyl Bearwalker
    note-ptBR Desça até o andar do meio e fale com Mathrengyl Bearwalker
    turnin 6761 |opt
    accept 6762
step
    turnin 3781
    note-enUS Turn in at the middle floor
    note-ptBR Entregue no andar do meio
step
    fly 1448
]==])
