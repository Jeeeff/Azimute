-- Convertido automaticamente de Guidelime_Zarant (Alliance/49-51_STV-BL-SG.lua).
-- (c) Zarant - GNU GPL v3 (ver LICENSE.txt). Gerado por tools/guidelime2azimute.py.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id classic.a.50-50-stv
#name 50-50 STV
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 50-50
#zones 1434
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    note-enUS Take the boat to Booty Bay
    note-ptBR Pegue o barco para Booty Bay
    accept 8551
step
    turnin 2767
step
    turnin 648
step
    turnin 836
step
    accept 3721
    turnin 3721
step
    accept 348
step
    turnin 2874
step
    turnin 1122
step
    turnin 580
step
    home
    note-enUS Set HS to Booty Bay Skip this step if your HS is set to Stormwind-OnStepActivation
    note-ptBR Defina sua Pedra de Regresso em Booty Bay. Pule esta etapa se sua Pedra de Regresso estiver em Stormwind-OnStepActivation
step
    accept 608
step
    turnin 1122
step
    turnin 580
step
    turnin 2874
step
    accept 348
step
    turnin 2767
step
    turnin 648
step
    turnin 836
step
    accept 3721
    turnin 3721
    note-enUS Turn in -OOX of your own
    note-ptBR Entregue -OOX of your own
step
    accept 8551
step
    goto 1434 23.25,71.85
    accept 8552 |opt
    note-enUS Use eagle eye at the goblin statue and look for Mok'rash Kill him by running in circles around the goblin statue Loot and right click Skip this step if you can't find him
    note-ptBR Use o eagle eye na estátua do goblin e procure Mok'rash. Mate-o correndo em círculos ao redor da estátua do goblin. Saqueie e clique com o botão direito. Pule esta etapa se não conseguir encontrá-lo
step
    accept 594 |opt
    note-enUS Loot the green bottles at the beach Accept
    note-ptBR Saqueie as garrafas verdes na praia. Aceite
step
    objective 608/2
step
    objective 608/3
step
    objective 608/1
step
    turnin 594
    accept 630
step
    complete 630
    note-enUS Kill King Mukla by running in circles around a big tree
    note-ptBR Mate King Mukla correndo em círculos ao redor de uma árvore grande
step
    turnin 630
step
    complete 8551
step
    goto 1434 35.27,60.42
    complete 348
step
    turnin 8551
    note-enUS Go back to Booty Bay Turn in
    note-ptBR Volte para Booty Bay Entregue
step
    turnin 8552
step
    accept 615 |opt
    turnin 615 |opt
step
    accept 8553
    turnin 8553
step
    turnin 348
step
    turnin 608
step
    note-enUS Make sure you have 15 Silk Cloth in your bags before starting the next segment
    note-ptBR Certifique-se de ter 15 Silk Cloth nas bolsas antes de começar o próximo segmento
step
    only Hunter
    trainer |opt
    note-enUS Train skills Train Pet skills Retrain your pet, learn fire resistance rank 4 and shadow resistance rank 3
    note-ptBR Treine habilidades. Treine habilidades do mascote. Retreine seu mascote, aprenda resistência a fogo rank 4 e resistência a sombra rank 3
step
    hearth
    note-enUS Use your HS back to SW if you used the website unstuck in the previous segment
    note-ptBR Use sua Pedra de Regresso para voltar a SW se usou o unstuck do site no segmento anterior
step
    goto 1453 52.8,65.6
    fly 1453 |opt
    home |opt
    note-enUS Set your HS to Stormwind-OnStepActivation
    note-ptBR Defina sua Pedra de Regresso em Stormwind-OnStepActivation
    turnin 1469
step
    note-enUS Take the tram to Ironforge
    note-ptBR Pegue o bonde para Ironforge
    fly 1427
]==])

register([==[
#format 1
#id classic.a.50-51-searing-gorge
#name 50-51 Searing Gorge
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 50-51
#zones 1427
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    note-enUS Make sure you have 15 Silk Cloth on your bags before starting this segment
    note-ptBR Certifique-se de ter 15 Silk Cloth nas bolsas antes de começar este segmento
step
    accept 7723
    accept 7724
    note-enUS Talk to Hansel Heavyhands Accept Accept
    note-ptBR Fale com Hansel Heavyhands. Aceite. Aceite
step
    accept 7728
    accept 7729
    note-enUS Click on the wanted board Accept Accept
    note-ptBR Clique no quadro de procurados Aceite Aceite
step
    accept 3441
step
    complete 3441
    note-enUS Talk to Kalaran Windblade Go through his whole dialogue
    note-ptBR Fale com Kalaran Windblade. Passe por todo o diálogo dele
step
    turnin 3441
    accept 3442
step
    complete 3442 |opt
    note-enUS Make sure you prioritize Fire Elementals/Golems
    note-ptBR Priorize Fire Elementals/Golems
step
    goto 1427 34.08,53.99
    objective 7728/2 |opt
    note-enUS Kill Dark Iron Lookouts around the tower They respawn roughly every 7 minutes
    note-ptBR Mate Dark Iron Lookouts ao redor da torre Eles ressurgem mais ou menos a cada 7 minutos
step
    goto 1427 40.9,50.31 40
    objective 7728/1 |opt
    note-enUS Kill Steamsmiths around the cauldron
    note-ptBR Mate os Steamsmiths ao redor do caldeirão
step
    complete 7724 |opt
    note-enUS Kill Lava Spiders along the western edge of the map
    note-ptBR Mate Lava Spiders ao longo da borda oeste do mapa
step
    complete 7723 |opt
step
    turnin 3442
    accept 3443
step
    turnin 7723
    turnin 7724
    turnin 7728
step
    accept 7727
    accept 7722
step
    goto 1427 35.27,42.61 25
    note-enUS Jump down into the square hole just outside Thorium Point
    note-ptBR Pule no buraco quadrado logo do lado de fora de Thorium Point
step
    goto 1427 40.44,35.73
    complete 7722 |opt
    note-enUS Find the steel ramp that leads to the 2nd floor Pull mobs away with your pet Loot the plans laying on top of the bench
    note-ptBR Encontre a rampa de aço que leva ao 2º andar Afaste os mobs com seu pet Saqueie os planos em cima da bancada
step
    complete 7729
    complete 3443
    note-enUS Finish off Loot 8 Thorium Plated Daggers
    note-ptBR Termine Saqueie 8 Thorium Plated Daggers
step
    accept 4451
    note-enUS Keep grinding dwarves until you get the Grimesilt Outhouse Key Accept
    note-ptBR Continue o grind de anões até conseguir a Grimesilt Outhouse Key Aceite
step
    complete 7727
step
    turnin 3443
    accept 3452
step
    complete 3452 |opt
    turnin 3452
    note-enUS Turn in Skip this step if you are having trouble soloing the elite mobs
    note-ptBR Entregue. Pule esta etapa se estiver com dificuldade para solar os mobs elite
step
    accept 3453
    turnin 3453
    accept 3454
    note-enUS Accept Turn in Stay next to the NPC while the RP event is going Accept
    note-ptBR Aceite Entregue Fique ao lado do NPC enquanto o evento de RP acontece Aceite
step
    turnin 3454
    note-enUS Click on the Torch of Retribution Turn in
    note-ptBR Clique na Torch of Retribution Entregue
step
    accept 3462
    turnin 3462
    accept 3463
step
    objective 3463/4
    note-enUS Set the first tower ablaze by equipping the Torch of Retribution and clicking on the brazier at the top of the tower
    note-ptBR Incendeie a primeira torre equipando a Torch of Retribution e clicando no braseiro no topo da torre
step
    objective 3463/1
    note-enUS Set the western tower on fire
    note-ptBR Incendeie a torre oeste
step
    objective 3463/2
    note-enUS Set the third tower on fire
    note-ptBR Incendeie a terceira torre
step
    turnin 4451
    accept 4449
step
    goto 1427 50.1,54.7
    objective 3463/3 |opt
    note-enUS Set the fourth tower on fire
    note-ptBR Incendeie a quarta torre
step
    goto 1427 72.2,73.64 20
    accept 3181 |opt
    note-enUS Kill Margol the Rager Loot Margol's Horn and right click it Accept
    note-ptBR Mate Margol the Rager Saqueie Margol's Horn e clique nele com o botão direito Aceite
step
    turnin 4449
step
    turnin 4449
step
    accept 3367
    note-enUS Start the escort quest Accept
    note-ptBR Inicie a missão de escolta. Aceite
step
    complete 3367
step
    turnin 3367
    accept 3368
    note-enUS Click on the singed letter on the ground Turn in pt.1 Accept pt.2
    note-ptBR Clique na carta chamuscada no chão Entregue a pt.1 Aceite a pt.2
step
    goto 1427 38.9,39
    turnin 3463 |opt
    accept 3481 |opt
    note-enUS Turn in Accept Open the Hoard of the Black Dragonflight and keep the Black Dragonflight Molt
    note-ptBR Entregue. Aceite. Abra o Hoard of the Black Dragonflight e guarde o Black Dragonflight Molt
step
    only Hunter
    vendor |opt
    note-enUS Buy a few extra stacks of ammo for the next segment
    note-ptBR Compre algumas pilhas extras de munição para a próxima parte
step
    turnin 7727
    turnin 7729
    turnin 7722
step
    fly 1432
step
    turnin 3181
    accept 3182
step
    goto 1453 44.27,73.99
    hearth |opt
    note-enUS Hearth to Stormwind Skip this step if your HS is not set to Stormwind
    note-ptBR Use a Pedra de Regresso para Stormwind Pule esta etapa se sua Pedra de Regresso não estiver definida em Stormwind
    accept 7791 |opt
    turnin 7791 |opt
    accept 7793 |opt
    turnin 7793 |opt
    accept 7794 |opt
    turnin 7794 |opt
    note-enUS Do the Stormwind cloth turn ins: Wool Silk Mageweave
    note-ptBR Faça as entregas de tecido de Stormwind: Wool Silk Mageweave
step
    fly 1419
]==])

register([==[
#format 1
#id classic.a.51-51-blasted-lands
#name 51-51 Blasted Lands
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 51-51
#zones 1419
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    note-enUS Head to Blasted Lands
    note-ptBR Vá até Blasted Lands
    vendor |only Hunter |opt
    note-enUS Make sure you buy ammo before starting this segment |only Hunter
    note-ptBR Compre munição antes de começar este segmento |only Hunter
    accept 2783
    note-enUS Climb the tower and accept
    note-ptBR Suba a torre e aceite
step
    goto 1435 34.29,66.15
    turnin 2783
    accept 2801
step
    complete 2801
    note-enUS Go through his whole dialogue.
    note-ptBR Passe por todo o diálogo dele.
step
    turnin 2801
step
    goto 1419 51.98,35.65
    accept 3501 |opt
    turnin 3501 |opt
    note-enUS Turn in if you find an Imperfect Draenethyst Fragment
    note-ptBR Entregue se encontrar um Imperfect Draenethyst Fragment
step
    note-enUS Collect the following items: 14 Vulture Gizzard 11 Basilisk Brain 6 Scorpok Pincer 6 Blasted Boar Lung 5 Snickerfang Jowl -BAG_UPDATE,OnStepActivation
    note-ptBR Colete os seguintes itens: 14 Vulture Gizzard 11 Basilisk Brain 6 Scorpok Pincer 6 Blasted Boar Lung 5 Snickerfang Jowl -BAG_UPDATE,OnStepActivation
    accept 2585
    turnin 2585
    note-enUS Turn in once you have: 3 Scorpok Pincer 2 Vulture Gizzard 1 Blasted Boar Lung
    note-ptBR Entregue quando tiver: 3 Scorpok Pincer 2 Vulture Gizzard 1 Blasted Boar Lung
step
    note-enUS Collect the following items: 12 Vulture Gizzard 11 Basilisk Brain 3 Scorpok Pincer 5 Blasted Boar Lung 5 Snickerfang Jowl -BAG_UPDATE,OnStepActivation
    note-ptBR Colete os seguintes itens: 12 Vulture Gizzard 11 Basilisk Brain 3 Scorpok Pincer 5 Blasted Boar Lung 5 Snickerfang Jowl -BAG_UPDATE,OnStepActivation
    accept 2583
    turnin 2583
    accept 2581
    turnin 2581
    accept 2601
    turnin 2601
    accept 2603
    turnin 2603
step
    fp
step
    accept 3823
    note-enUS Head to Burning Steppes Accept
    note-ptBR Vá até Burning Steppes Aceite
step
    complete 3823
step
    turnin 3823
step
    fly 1455
step
    vendor |opt
    note-enUS Withdraw the following items from your bank: Super Snapper FX Snapshot of Gammerita Wildkin Feather-BANKFRAME_OPENED,
    note-ptBR Retire os seguintes itens do seu banco: Super Snapper FX Snapshot of Gammerita Wildkin Feather-BANKFRAME_OPENED,
step
    goto 1455 43.22,31.57
    accept 7807 |opt
    turnin 7807 |opt
    accept 7808 |opt
    turnin 7808 |opt
    accept 7809 |opt
    turnin 7809 |opt
    note-enUS Do the Gnomeregan cloth turn ins: Wool Silk Mageweave
    note-ptBR Faça as entregas de tecido de Gnomeregan: Wool Silk Mageweave
step
    goto 1455 43.22,31.57
    accept 7802 |opt
    turnin 7802 |opt
    accept 7803 |opt
    turnin 7803 |opt
    accept 7804 |opt
    turnin 7804 |opt
    note-enUS Do the Ironforge cloth turn ins: Wool Silk Mageweave
    note-ptBR Faça as entregas de tecido de Ironforge: Wool Silk Mageweave
step
    accept 5090 |opt
    note-enUS Accept Skip this quest if you can't find the courier
    note-ptBR Aceite Pule esta missão se não encontrar o mensageiro
step
    accept 4512 |opt
step
    turnin 3182
    accept 3201
step
    turnin 3368
step
    accept 3448
step
    only Warlock
    goto 1455 51.1,6.6
    accept 8419
step
    turnin 3448
    accept 3449
    accept 3450
step
    goto 1455 18.1,51.6
    home
    note-enUS Set your HS to Ironforge
    note-ptBR Defina sua Pedra de Regresso em Ironforge
step
    only Hunter
    goto 1455 70.9,83.6
    accept 8151
step
    turnin 3450
    accept 3451
    turnin 3451
step
    fly 1432 |opt
    turnin 3201
step
    fly 1425 |opt
    turnin 2877
    turnin 2989
step
    fly 1422
]==])
