-- Convertido automaticamente de Guidelime_Zarant (Alliance/48-49_Tanaris.lua).
-- (c) Zarant - GNU GPL v3 (ver LICENSE.txt). Gerado por tools/guidelime2azimute.py.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id classic.a.48-49-tanaris-hinterlands
#name 48-49 Tanaris/Hinterlands
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 48-49
#zones 1446 1425
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    vendor |opt
    note-enUS Withdraw Roc Gizzard from your bank if you have it-BANKFRAME_OPENED,
    note-ptBR Retire o Roc Gizzard do seu banco se tiver-BANKFRAME_OPENED,
step
    accept 2605
step
    turnin 2941
    accept 2944
    note-enUS Turn in Accept -the borrower/super snapper fx
    note-ptBR Entregue. Aceite -the borrower/super snapper fx
step
    goto 1446 52.3,27 1
    accept 2741
    turnin 2741
    note-enUS Click on the Egg-O-Matic and turn in your Hippogryph Egg ( ) It's a small metal console sitting next to the teleporter looking thing
    note-ptBR Clique no Egg-O-Matic e entregue seu Hippogryph Egg ( ) É um pequeno console de metal ao lado da coisa que parece um teletransportador
step
    accept 3362
step
    accept 992
step
    objective 1452/1 |opt
    note-enUS Kill vultures as you go
    note-ptBR Mate vultures pelo caminho
step
    goto 1446 39,29.4 40
    complete 992
step
    turnin 992
    accept 82
step
    complete 82
step
    goto 1446 44.6,39.6 120
    objective 1452/1
step
    complete 2605 |opt
    complete 3362
step
    complete 2605
step
    note-enUS Throw away your HS and unstuck to Gadgetzan
    note-ptBR Jogue fora sua Pedra de Regresso e use o unstuck para ir a Gadgetzan
    turnin 2605
    accept 2606
step
    home
    note-enUS Set your Hearthstone to Gadgetzan
    note-ptBR Defina sua Pedra de Regresso em Gadgetzan
step
    turnin 2606
    accept 2641
step
    turnin 82
    accept 10
step
    fp
step
    note-enUS Take the boat to Wetlands-OnStepActivation,ZONE_CHANGED,ZONE_CHANGED_NEW_AREA,
    note-ptBR Pegue o barco para Wetlands-OnStepActivation,ZONE_CHANGED,ZONE_CHANGED_NEW_AREA,
step
    fly 1425 |opt
    accept 2988
step
    accept 2880
step
    home
    note-enUS Run to the second floor of the big building Set your HS to Aerie Peak
    note-ptBR Corra até o segundo andar do prédio grande. Defina sua Pedra de Regresso em Aerie Peak
step
    complete 3661 |opt
    note-enUS Loot wildkin feathers on the ground
    note-ptBR Saqueie penas de wildkin no chão
step
    turnin 1452
    accept 1469
step
    objective 2988/3
    note-enUS Click on the third cage
    note-ptBR Clique na terceira jaula
step
    complete 2880 |opt
step
    objective 2988/2
    note-enUS Click on the second cage
    note-ptBR Clique na segunda jaula
step
    objective 2988/1
    note-enUS Click on the first cage
    note-ptBR Clique na primeira jaula
step
    turnin 2880
    accept 2877
step
    turnin 2988
    accept 2989
step
    complete 2641
step
    goto 1425 48.86,68.5
    complete 2989
step
    complete 2877
step
    accept 485
    note-enUS Grind until your HS cooldown is <6 minutes Accept if you have a distress beacon in your bags, skip this step if you don't
    note-ptBR Faça grind até a recarga da sua Pedra de Regresso ficar <6 minutos Aceite se tiver um distress beacon nas bolsas, pule esta etapa se não tiver
step
    turnin 485
step
    accept 836
    note-enUS Start the escort quest Accept
    note-ptBR Inicie a missão de escolta. Aceite
step
    complete 836
    note-enUS Escort the robot chicken
    note-ptBR Escolte a galinha robô
step
    complete 2944 |opt
    note-enUS Head down to the coast, find Gammerita and use the Super Snapper FX on her.
    note-ptBR Desça até a costa, encontre Gammerita e use o Super Snapper FX nela.
step
    complete 580
    note-enUS Look for small blue bottles along the coast
    note-ptBR Procure pequenas garrafas azuis ao longo da costa
step
    turnin 626
step
    hearth
    note-enUS Grind mobs until your HS is off cooldown Hearth to back Tanaris-OnStepCompletion
    note-ptBR Faça grind de mobs até sua Pedra de Regresso sair da recarga Use a Pedra de Regresso para voltar a Tanaris-OnStepCompletion
]==])

register([==[
#format 1
#id classic.a.49-50-tanaris-ungoro
#name 49-50 Tanaris/Un'goro
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 49-50
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    vendor |opt
    note-enUS Deposit the following items: Wildkin Feather Raschal's Report -BANKFRAME_OPENED,
    note-ptBR Guarde os seguintes itens: Wildkin Feather Raschal's Report -BANKFRAME_OPENED,
step
    accept 10
step
    turnin 2641
    accept 2661
step
    turnin 3362
step
    goto 1446 51.84,27.02
    accept 2781
    accept 2875
    note-enUS Click on the wanted poster Accept Accept
    note-ptBR Clique no cartaz de procurado Aceite Aceite
step
    accept 5863
step
    accept 1691
step
    turnin 2661
    accept 2662
    turnin 2662
step
    note-enUS Make sure you carry 1 stack of noggenfogger with you at all times, buy 2 extra stacks and bank it
    note-ptBR Carregue sempre 1 pilha de noggenfogger com você, compre 2 pilhas extras e guarde no banco
    accept 3161
step
    turnin 3445
    accept 3444
step
    complete 2781
    complete 1691
    note-enUS Kill Caliph Scorpid Sting, he patrols around Do
    note-ptBR Mate Caliph Scorpid Sting, ele patrulha pela área Faça
step
    path seq 1446 68.85,41.55
    goto 1446 73.2,47.1 140
    note-enUS Head to Lost Rigger Cove
    note-ptBR Vá até Lost Rigger Cove
step
    complete 2875 |opt
    note-enUS Kill Andre Firebeard by the campfire
    note-ptBR Mate Andre Firebeard perto da fogueira
step
    complete 8365 |opt
    complete 8366 |opt
    complete 2873
step
    complete 8365
    complete 8366
step
    level 49 |opt
step
    note-enUS Grind pirates until your HS cooldown is <25min Make sure you have a distress beacon
    note-ptBR Faça grind de piratas até a recarga da sua Pedra de Regresso ficar <25min Certifique-se de ter um distress beacon
step
    accept 351
    note-enUS Accept Skip this step and grind an extra 5% xp if you don't find it
    note-ptBR Aceite Pule esta etapa e faça grind de 5% de XP extra se não encontrá-lo
step
    path seq 1446 47.31,65.14
    goto 1446 40.68,72.98
    complete 3161
step
    path seq 1446 54.63,70.75
    goto 1446 55.97,71.18
    complete 10
    note-enUS Enter the eastern bug hole Loot the machine console looking thing
    note-ptBR Entre no buraco de insetos do leste Saqueie a coisa que parece um console de máquina
step
    turnin 351
    accept 648
    note-enUS Turn in Start the escort quest
    note-ptBR Entregue. Inicie a missão de escolta
step
    complete 648
    note-enUS Escort the robot chicken
    note-ptBR Escolte a galinha robô
step
    turnin 2875
    turnin 8366
    turnin 2873
    accept 2874
step
    vendor |opt
step
    turnin 8365
step
    turnin 3520
step
    hearth
    note-enUS Hearth back to Gadgetzan
    note-ptBR Use a Pedra de Regresso para voltar a Gadgetzan
step
    vendor |opt
    turnin 1691
    turnin 2781
step
    accept 5863
step
    accept 2605
step
    turnin 10
    accept 110
step
    turnin 110
    accept 113
step
    accept 3362
step
    turnin 113
step
    turnin 3161
step
    accept 3444
step
    objective 5863/3 |opt
    objective 5863/1
    objective 5863/2
step
    complete 5863
step
    complete 2605 |opt
    complete 3362
step
    complete 2605
step
    accept 4289
    accept 4290
    note-enUS Run to Un'goro Crater Accept Accept
    note-ptBR Corra até Un'goro Crater. Aceite. Aceite
step
    note-enUS Save Un'Goro Soil, you will need 25 later
    note-ptBR Guarde o Un'Goro Soil, você vai precisar de 25 mais tarde
    note-enUS As you quest through Un'Goro, loot 7 crystals of each color
    note-ptBR Enquanto faz as missões em Un'Goro, saqueie 7 cristais de cada cor
step
    accept 3844
    note-enUS Click on the Wrecked Raft Accept
    note-ptBR Clique no Wrecked Raft Aceite
step
    turnin 3844
    accept 3845
    note-enUS Click on the small pack underwater Turn in Accept
    note-ptBR Clique na pequena mochila debaixo d'água Entregue Aceite
step
    complete 4290
    note-enUS Loot the threshadon carcass
    note-ptBR Saqueie a carcaça do threshadon
step
    note-enUS Run to Marshal's Refuge
    note-ptBR Corra até Marshal's Refuge
    accept 4503
step
    accept 4141
step
    accept 3882
step
    complete 3845 |opt
    note-enUS Open the small pack in your inventory
    note-ptBR Abra a pequena mochila no seu inventário
    turnin 3845
    accept 3908
step
    note-enUS Destroy the faded photograph
    note-ptBR Destrua a fotografia desbotada
step
    fp
step
    complete 4503 |opt
    complete 3882 |opt
    note-enUS Kill dinos as you quest - This step is going to be finished later,don't go out of your way to complete this-OnStepActivation,ZONE_CHANGED,ZONE_CHANGED_NEW_AREA,
    note-ptBR Mate dinossauros enquanto faz missões. Esta etapa será concluída depois, não saia do caminho para completá-la-OnStepActivation,ZONE_CHANGED,ZONE_CHANGED_NEW_AREA,
step
    complete 4141 |opt
    note-enUS Kill level 48-50 Lashers in northeastern Un'goro
    note-ptBR Mate Lashers nível 48-50 no nordeste de Un'goro
step
    turnin 4290
    accept 4291
step
    path seq 1449 67.3,73.1
    goto 1449 66.6,66.7
    complete 4291
    note-enUS Do by stepping on a raptor nest
    note-ptBR Faça pisando em um ninho de raptor
step
    turnin 4291
    accept 4292
step
    complete 4141
step
    accept 3884
    note-enUS Grind raptors until you find A Mangled Journal Accept
    note-ptBR Faça grind de raptors até encontrar A Mangled Journal Aceite
step
    note-enUS Make sure you have 7 crystals of each color
    note-ptBR Certifique-se de ter 7 cristais de cada cor
step
    hearth |opt
    note-enUS Hearth back to tanaris Alternatively you can run to tanaris, throw away your HS and unstuck to Gadgetzan
    note-ptBR Use a Pedra de Regresso para voltar a tanaris Como alternativa, você pode correr até tanaris, jogar fora sua Pedra de Regresso e usar o unstuck para ir a Gadgetzan
    vendor |opt
    note-enUS Withdraw the following items: Carefully Folded Note (if you have it) Gorilla Fangs Fool's Stout Report Pupellyverbos Port Atal'ai Tablet Fragment-BANKFRAME_OPENED,
    note-ptBR Retire os seguintes itens: Carefully Folded Note (se tiver) Gorilla Fangs Fool's Stout Report Pupellyverbos Port Atal'ai Tablet Fragment-BANKFRAME_OPENED,
step
    vendor |opt
    note-enUS Deposit the following items in your bank: Torwa's Pouch Webbed Diemetradon Scale Webbed Pterrordax Scale Dinosaur Bone Un'Goro Soil Linken's Training Sword Insect Analysis Report -BANKFRAME_OPENED,
    note-ptBR Guarde os seguintes itens no seu banco: Torwa's Pouch Webbed Diemetradon Scale Webbed Pterrordax Scale Dinosaur Bone Un'Goro Soil Linken's Training Sword Insect Analysis Report -BANKFRAME_OPENED,
step
    turnin 2605
    accept 2606
step
    turnin 5863
step
    turnin 2606
    accept 2641
step
    accept 162
step
    fly 1449
step
    turnin 3884
step
    turnin 3882
step
    turnin 4141
    accept 4142
step
    accept 4284
    turnin 4284
step
    goto 1453 52.8,65.4
    home |opt
    note-enUS Use the website unstuck self service to teleport to Stormwind and set your HS to SW
    note-ptBR Use o unstuck de autoatendimento do site para teleportar para Stormwind e defina sua Pedra de Regresso em SW
    fp
    fp
    note-enUS Fly to OR Fly to and take the boat to STV-OnStepCompletion
    note-ptBR Voe até OU voe até e pegue o barco para STV-OnStepCompletion
]==])
