-- Convertido automaticamente de Guidelime_Zarant (Horde/55-60.lua).
-- (c) Zarant - GNU GPL v3 (ver LICENSE.txt). Gerado por tools/guidelime2azimute.py.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id classic.h.56-58-wpl-epl-part-1
#name 56-58 WPL/EPL part 1
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Horde
#levels 56-58
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    note-enUS Withdraw 2 stacks of noggenfogger elixir from your bank
    note-ptBR Retire 2 pilhas de noggenfogger elixir do seu banco
step
    vendor |opt
    note-enUS Deposit the following items: Rabine's Letter Cenarion Beacon Silvery Claws Irontree Heart Remains of Trey Lightforge Shadow Lord Fel'dan's Head
    note-ptBR Guarde os seguintes itens: Rabine's Letter Cenarion Beacon Silvery Claws Irontree Heart Remains of Trey Lightforge Shadow Lord Fel'dan's Head
step
    note-enUS Withdraw the following items: Filled Vial Labeled #1-4 Tablet of Markri Un'Goro Slime Sample Felwood Slime Sample
    note-ptBR Retire os seguintes itens: Filled Vial Labeled #1-4 Tablet of Markri Un'Goro Slime Sample Felwood Slime Sample
step
    goto 1458 67.7,38.1
    note-enUS Take the Zeppelin to Undercity
    note-ptBR Pegue o zepelim para Undercity
    home
    note-enUS Set your HS to Undercity
    note-ptBR Defina sua Pedra de Regresso em Undercity
step
    accept 5093 |opt
step
    goto 1458 54.7,75.7
    turnin 3542
step
    accept 3564
step
    goto 1458 48.4,71.5
    turnin 3568
step
    accept 3569
step
    goto 1458 48.8,70.8
    turnin 3569
step
    goto 1458 47.7,73.5
    complete 4293 |opt
    note-enUS Use the Felwood test equipment
    note-ptBR Use o Felwood test equipment
step
    turnin 4293
step
    goto 1458 57.9,91.8
    accept 5961
step
    note-enUS Run outside and head to the WPL border
    note-ptBR Saia e vá até a divisa com WPL
step
    goto 1420 83.1,69
    turnin 5093 |opt
    accept 5096
step
    goto 1420 83.1,69
    vendor
    note-enUS Loot the box on the ground right next to the NPC you just spoke with
    note-ptBR Saqueie a caixa no chão, bem ao lado do NPC com quem você acabou de falar
step
    goto 1420 83.2,68.5
    turnin 6029
step
    goto 1422 40.7,52
    objective 5096/1
    note-enUS Destroy the tent and plant the banner
    note-ptBR Destrua a tenda e finque o estandarte
step
    goto 1422 26.5,56.1
    turnin 5096
step
    accept 5098
step
    accept 5228
step
    goto 1422 26.4,59.2
    turnin 5228
step
    accept 5229
step
    goto 1422 37.3,56.7
    turnin 5229
    note-enUS Kill the cauldron lord and turn in
    note-ptBR Mate o cauldron lord e entregue
step
    accept 5230
step
    goto 1422 38.4,54.2
    accept 5021
step
    goto 1422 38.8,55.2
    turnin 5021
step
    accept 5023
step
    goto 1422 42.3,66.2
    objective 5098/2
step
    goto 1422 44.3,63.3
    objective 5098/3
step
    goto 1422 46.6,70.9
    objective 5098/4
step
    goto 1422 40,71.6
    objective 5098/1
step
    goto 1420 83.1,69
    turnin 5098
step
    accept 838
step
    goto 1420 83.2,69.3
    turnin 838
step
    accept 964
step
    goto 1422 26.4,59.1
    turnin 5230
step
    accept 5231
step
    objective 964/1 |opt
    note-enUS Collect Skeletal Fragments in Andorhal
    note-ptBR Colete Skeletal Fragments em Andorhal
step
    goto 1422 53.7,64.7
    accept 4984
step
    complete 4984 |opt
    note-enUS Kill wolves as you quest Make sure to kill Carrion Lurkers if you can't find any wolves since they share spawn points
    note-ptBR Mate lobos enquanto faz missões. Certifique-se de matar Carrion Lurkers se não encontrar lobos, pois eles compartilham pontos de surgimento
step
    goto 1422 47.8,50.67 1
    accept 5058
    turnin 5058
    note-enUS Click on Mrs. Dalson's Diary Turn in
    note-ptBR Clique em Mrs. Dalson's Diary Entregue
step
    note-enUS Look for the Wandering Skeleton as you quest around Dalson's Tears Loot the Dalson Outhouse Key
    note-ptBR Procure o Wandering Skeleton enquanto faz missões por Dalson's Tears. Saqueie a Dalson Outhouse Key
step
    goto 1422 46.2,52
    turnin 5231
step
    accept 5232
step
    path seq 1422 48.15,49.69
    goto 1422 47.37,49.66 1
    accept 5059 |opt
    turnin 5059 |opt
    note-enUS Click on the Outhouse to summon Farmer Dalson Turn in
    note-ptBR Clique no Outhouse para invocar Farmer Dalson Entregue
    note-enUS Kill Farmer Dalson and loot Dalson Cabinet Key
    note-ptBR Mate Farmer Dalson e saqueie a Dalson Cabinet Key
    accept 5060
    turnin 5060
    note-enUS Click on the cabinet upstairs Turn in
    note-ptBR Clique no armário no andar de cima Entregue
step
    hearth
step
    goto 1458 71.7,29.1
    note-enUS Do the Undercity cloth turn-ins
    note-ptBR Faça as entregas de tecido de Undercity
step
    goto 1422 4.9,61.6
    turnin 5023
step
    accept 5049
step
    goto 1422 4.5,61.9
    turnin 5049
step
    accept 5050
step
    goto 1420 83,71.9
    note-enUS Run to the WPL/Tirisfal border
    note-ptBR Corra até a divisa de WPL/Tirisfal
    turnin 5232
step
    accept 5233
step
    goto 1420 83.3,72.3
    accept 5901
step
    goto 1420 83.3,69.3
    turnin 964
step
    goto 1422 38.4,54
    turnin 5050
step
    accept 5051
step
    complete 5051
    note-enUS Kill and loot a Jabbering Ghoul
    note-ptBR Mate e saqueie um Jabbering Ghoul
step
    goto 1422 38.4,54
    turnin 5051
step
    complete 4984
step
    goto 1422 53,65.7
    turnin 5233
step
    goto 1422 53,65.7
    accept 5234
step
    goto 1422 53.7,64.7
    turnin 4984
step
    accept 4985
step
    goto 1423 7.6,43.7
    accept 5542
step
    accept 5543
step
    accept 5544
step
    goto 1423 26.6,74.7
    turnin 5961
step
    accept 6022
step
    accept 6042
step
    complete 5544 |opt
    note-enUS Kill worms as you go along
    note-ptBR Mate vermes pelo caminho
step
    complete 5543 |opt
step
    objective 5542/1 |opt
step
    goto 1423 59.7,68.7
    objective 6022/1
step
    turnin 6022
step
    turnin 5601 |opt
    accept 5149
step
    complete 5149
    note-enUS Find the 3 doll parts around Darrowshire
    note-ptBR Encontre as 3 partes da boneca ao redor de Darrowshire
step
    turnin 5149
    accept 5152
    accept 5241
step
    objective 5542/2 |opt
step
    objective 6042/1
step
    turnin 6030
step
    turnin 5241
    accept 5211
step
    accept 5281
    accept 6021
step
    home
    note-enUS Set your HS to Light's Hope Chapel-Not available until later
    note-ptBR Defina sua Pedra de Regresso em Light's Hope Chapel-Não disponível até mais tarde
step
    fp
step
    objective 6042/2 |opt
step
    complete 5211 |opt
    note-enUS Kill all ghouls you encounter
    note-ptBR Mate todos os ghouls que encontrar
step
    objective 5542/3 |opt
step
    complete 5901
    note-enUS Look for termite mounds around Plaguewood
    note-ptBR Procure cupinzeiros ao redor de Plaguewood
step
    turnin 5281
step
    accept 6164
step
    goto 1423 17.44,31.12 1
    complete 6164
    note-enUS Go upstairs and loot the book on the ground
    note-ptBR Suba as escadas e saqueie o livro no chão
step
    turnin 6164
step
    goto 1423 29.76,43.21
    note-enUS Head to the mountain shortcut
    note-ptBR Vá até o atalho da montanha
step
    goto 1423 23.33,41.6 7
    note-enUS Climb to the top of the hill
    note-ptBR Suba até o topo da colina
step
    goto 1423 21.79,40.34
    note-enUS Use noggenfogger to slow fall to the other side
    note-ptBR Use noggenfogger para cair lentamente até o outro lado
step
    turnin 5542
    turnin 5543
    turnin 5544
step
    accept 5742
step
    complete 5742
    note-enUS Sit down and listen to his story
    note-ptBR Sente-se e ouça a história dele
step
    turnin 5742
    accept 5781
step
    goto 1423 26.6,74.7
    turnin 6042
step
    accept 6133
step
    complete 6021
    note-enUS Enter the crypt and slay
    note-ptBR Entre na cripta e mate
step
    accept 6024
    note-enUS Click on the scroll on the ground Accept
    note-ptBR Clique no pergaminho no chão Aceite
step
    goto 1423 28.3,86.88
    complete 5781
    note-enUS Summon Mercutio and his goons by clicking on the dirt pile, kill him while kiting the adds
    note-ptBR Invoque Mercutio e seus capangas clicando no monte de terra, mate-o enquanto faz kite nos adds
step
    turnin 5781
    accept 5845
]==])

register([==[
#format 1
#id classic.h.58-59-wpl-epl-part-2
#name 58-59 WPL/EPL part 2
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Horde
#levels 58-59
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    goto 1422 53.6,64.7
    turnin 4985
step
    accept 4987
step
    goto 1422 49.2,78.6
    turnin 5152
step
    accept 5153
step
    goto 1422 49.68,76.78
    complete 5153
    note-enUS Click on the gravestone
    note-ptBR Clique na lápide
step
    accept 4971
    turnin 5153
    accept 5154
step
    goto 1422 43.56,69.25 20
    complete 5154
    note-enUS Loot books inside the Andorhal town hall until you get the correct one The correct book's pages has a lighter shade of grey and sometimes the correct book won't spawn If you're unlucky, you have to keep looting bad tomes until the good one spawns
    note-ptBR Saqueie livros dentro da prefeitura de Andorhal até conseguir o correto. As páginas do livro correto têm um tom de cinza mais claro e às vezes ele não surge. Se tiver azar, continue saqueando tomos errados até o certo surgir
step
    goto 1422 46.32,62.67 60
    complete 4971
    note-enUS Use the temporal displacer on the grain silos
    note-ptBR Use o temporal displacer nos silos de grãos
step
    turnin 4971
    accept 4972
    note-enUS Quest turn in order here is important Turn in Accept
    note-ptBR A ordem de entrega das missões aqui é importante. Entregue. Aceite
step
    turnin 5154
step
    complete 4972
    note-enUS Go outside and look for steel lockboxes
    note-ptBR Saia e procure steel lockboxes
step
    turnin 4972
    accept 5210
step
    goto 1422 26.4,59.1
    turnin 5234
step
    accept 5235
step
    goto 1422 26.7,59.6
    turnin 5901
step
    accept 5902
step
    hearth
    note-enUS Hearth to Light's Hope Chapel
    note-ptBR Use a Pedra de Regresso para Light's Hope Chapel
step
    turnin 5210
    accept 5168
    accept 5181
step
    turnin 6021
step
    goto 1423 71.29,33.95
    complete 5845
step
    complete 6024
    note-enUS Kill Infiltrator Hameya, he patrols around the troll temple
    note-ptBR Mate Infiltrator Hameya, ele patrulha ao redor do templo troll
step
    goto 1423 51.2,19.1 120
    complete 6133 |opt
step
    goto 1423 52.2,18.4
    objective 6133/4
step
    goto 1423 51.11,49.94
    objective 5181/1
    note-enUS Loot Horgus' Skull underwater
    note-ptBR Saqueie a Horgus' Skull debaixo d'água
step
    goto 1423 53.91,65.76
    complete 5181
step
    turnin 6133
step
    turnin 6024
    note-enUS Click on the mound of dirt next to the wooden cart Turn in
    note-ptBR Clique no monte de terra ao lado da carroça de madeira Entregue
step
    turnin 5845
    accept 5846
step
    note-enUS Head to Western Plaguelands
    note-ptBR Vá até Western Plaguelands
step
    goto 1422 48.3,32
    turnin 5902
step
    accept 6390
step
    accept 6004
step
    complete 6004
step
    turnin 6004
    accept 6023
step
    goto 1422 54.94,23.4
    objective 6023/2
    note-enUS Kill Cavalier Durgen, he spawns at the top of the tower and patrols all the way down Do your best to avoid the level 63 elite mob on top of the tower, keep grinding mobs until you have an opening.
    note-ptBR Mate Cavalier Durgen, ele surge no topo da torre e patrulha até embaixo Faça o possível para evitar o mob elite de nível 63 no topo da torre, continue o grind de mobs até surgir uma brecha.
step
    goto 1422 57.81,36.12
    objective 6023/1
step
    turnin 6023
    accept 6025
step
    goto 1422 45.78,18.57
    complete 6025
    note-enUS Head to Hearthglen Climb to the top of the tower
    note-ptBR Vá até Hearthglen Suba até o topo da torre
step
    goto 1422 42.53,18.99 1
    objective 5168/1
    note-enUS Loot Davil's Libram inside the town hall, use your pet to pull mobs away Pay attention to the rare mob that patrols the building.
    note-ptBR Saqueie o Davil's Libram dentro da prefeitura, use seu mascote para afastar os mobs. Fique atento ao mob raro que patrulha o prédio.
step
    turnin 6025
step
    goto 1422 63.79,57.19
    objective 5168/2
    note-enUS Loot the shield on the ground
    note-ptBR Saqueie o escudo no chão
step
    turnin 5235
step
    goto 1422 62.6,58.6
    accept 5236
step
    turnin 5846
step
    goto 1422 26.4,59
    note-enUS Drown yourself while heading west away from Caer Darrow then respawn at the Bulwark graveyard
    note-ptBR Afogue-se enquanto nada para o oeste, para longe de Caer Darrow, e depois ressuscite no cemitério de Bulwark
    turnin 5236
step
    goto 1422 26.7,59.6
    turnin 6390
step
    goto 1422 26.5,56.1
    accept 5238
    turnin 5238
step
    hearth
step
    turnin 5168
    turnin 5181
    accept 5206
step
    note-enUS Make sure to turn in all your scourgestones before continuing to the next step-OnStepActivation,
    note-ptBR Entregue todas as suas scourgestones antes de continuar para a próxima etapa-OnStepActivation,
step
    note-enUS Fly to Undercity and take the Zeppelin to Orgrimmar OR Use the website unstuck request to teleport you to durotar
    note-ptBR Voe até Undercity e pegue o Zeppelin para Orgrimmar OU use o pedido de unstuck do site para se teletransportar para durotar
]==])

register([==[
#format 1
#id classic.h.59-59-winterspring-silithus
#name 59-59 Winterspring/Silithus
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Horde
#levels 59-59
#zones 1452 1451
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    home
    note-enUS Set your HS to Orgrimmar
    note-ptBR Defina sua Pedra de Regresso em Orgrimmar
step
    goto 1454 37.8,87.8
    accept 7833 |opt
    turnin 7833 |opt
    accept 7834 |opt
    turnin 7834 |opt
    accept 7835 |opt
    turnin 7835 |opt
    accept 7836 |opt
    turnin 7836 |opt
    note-enUS Do the Darkspear cloth turn ins: Wool Silk Mageweave Runecloth
    note-ptBR Faça as entregas de tecido de Darkspear: Wool Silk Mageweave Runecloth
step
    goto 1447 22.5,51.4
    fly 1447 |opt
    turnin 3564
step
    fly 1452
step
    goto 1452 61.6,38.6
    accept 4809
step
    goto 1452 61.9,38.4
    accept 5056
step
    goto 1452 60.9,37.7
    accept 977
step
    complete 8464 |opt
    note-enUS Kill Fulborgs at the village west Skip this step if the village is too crowded
    note-ptBR Mate Fulborgs na vila a oeste Pule esta etapa se a vila estiver cheia demais
step
    goto 1452 69.7,38.3
    objective 5121/1
step
    accept 5123
    note-enUS Loot the Crudely-written Log Accept
    note-ptBR Saqueie o Crudely-written Log. Aceite
step
    goto 1452 67.7,41.7
    objective 977/1
    note-enUS Collect Pristine Yeti Horn (x2)
    note-ptBR Colete Pristine Yeti Horn (x2)
step
    goto 1452 60.9,37.7
    turnin 977
step
    accept 5163
step
    goto 1452 61.5,38.6
    objective 5163/1
step
    goto 1452 65.1,21.1
    objective 4741/1
step
    goto 1452 49.7,9.8
    note-enUS Kill frostsabers until you get a sacred meat
    note-ptBR Mate frostsabers até conseguir uma sacred meat
    objective 5056/1
step
    goto 1452 61.9,38.4
    note-enUS Death skip to Everlook
    note-ptBR Faça death skip até Everlook
    turnin 5056
step
    accept 5057
    turnin 5057
step
    vendor |opt
    note-enUS Withdraw the following items: Rabine's Letter Silvery Claws Irontree Heart Remains of Trey Lightforge Shadow Lord Fel'dan's Head
    note-ptBR Retire os seguintes itens: Rabine's Letter Silvery Claws Irontree Heart Remains of Trey Lightforge Shadow Lord Fel'dan's Head
step
    goto 1452 31.3,45.2
    turnin 5121
step
    turnin 5123
step
    accept 5128
step
    accept 8464
step
    goto 1450 51.7,45
    note-enUS Head to moonglade, turn in Winterfall Activity on the way if you completed it earlier
    note-ptBR Vá até moonglade, entregue Winterfall Activity no caminho se a tiver concluído antes
    turnin 1123
step
    accept 1124
step
    accept 5527
    note-enUS Finish the dialogue with Rabine Accept Skip this step if the Dire Maul dialogue is not available
    note-ptBR Termine o diálogo com Rabine Aceite Pule esta etapa se o diálogo de Dire Maul não estiver disponível
step
    goto 1450 32.1,66.6
    fly 1448
step
    goto 1448 34.7,52.8
    turnin 4741
step
    accept 4721
step
    goto 1452 13.9,96.1
    turnin 5242
step
    goto 1452 14,96
    turnin 5385
step
    goto 1452 13.9,95.8
    turnin 5128
step
    goto 1452 14,95.6
    turnin 4084
step
    accept 4005
step
    goto 1440 62.7,39.8 20
    hearth |opt
    note-enUS Hearth back to winterspring
    note-ptBR Use a Pedra de Regresso para voltar a winterspring
    note-enUS If your HS is on cooldown, head to Splintertree Post
    note-ptBR Se sua Pedra de Regresso estiver em recarga, vá até Splintertree Post
    fly 1456
step
    goto 1456 43.1,42.8
    note-enUS Do the Thunder Bluff cloth turn-ins
    note-ptBR Faça as entregas de tecido de Thunder Bluff
step
    goto 1456 75.8,31.2
    turnin 4987
step
    fly 1446
step
    accept 4504
step
    goto 1446 51.1,26.9
    objective 5163/2
step
    goto 1446 50.9,27
    accept 4507
step
    goto 1446 70.4,49.9
    objective 4005/1
    note-enUS Collect Silver Totem of Aquementas
    note-ptBR Colete Silver Totem of Aquementas
step
    fly 1449
step
    goto 1446 11.6,3.4
    turnin 4005
step
    accept 3961
step
    goto 1446 13.1,6.4
    turnin 3961
step
    accept 3962
step
    goto 1449 43.7,9.4
    objective 5163/3
step
    complete 4504
step
    goto 1449 50.2,50
    objective 3962/2 |opt
step
    objective 3962/1 |opt
step
    goto 1449 50,81.5 30
    note-enUS Head south towards the silithid hive
    note-ptBR Siga para o sul em direção à colmeia silithid
step
    goto 1449 43.6,81.1
    objective 4507/1
step
    goto 1449 29.2,22.1 30
step
    turnin 1124
    accept 1125
step
    goto 1451 51.8,38.6
    note-enUS Head to Cenarion Hold-PLAYER_XP_UPDATE,QUEST_LOG_UPDATE,OnStepActivation,OnStepCompletion
    note-ptBR Vá até Cenarion Hold-PLAYER_XP_UPDATE,QUEST_LOG_UPDATE,OnStepActivation,OnStepCompletion
    accept 8277
    note-enUS Talk to the goblin at the 2nd floor of the inn Accept
    note-ptBR Fale com o goblin no 2º andar da estalagem. Aceite
step
    goto 1451 51.3,38.2
    accept 8283
    note-enUS Click on the wanted poster Accept
    note-ptBR Clique no cartaz de procurado Aceite
step
    goto 1451 51.2,38.2
    turnin 8275 |opt
    accept 8280
step
    goto 1451 49.6,37.3
    accept 8284
step
    goto 1451 49.2,34.2
    accept 8304
step
    goto 1451 48.6,37.8
    accept 8318
step
    objective 8280/1 |opt
step
    objective 8277/1 |opt
    note-enUS Collect Stonelash Scorpid Stinger (x8)
    note-ptBR Colete Stonelash Scorpid Stinger (x8)
step
    objective 8277/2 |opt
    note-enUS Collect Sand Skitterer Fang (x8)
    note-ptBR Colete Sand Skitterer Fang (x8)
step
    goto 1451 63.22,55.35
    complete 5527
    note-enUS Click on the small urn inside the lodge
    note-ptBR Clique na pequena urna dentro do chalé
step
    complete 1125
step
    turnin 1125
    accept 1126
step
    goto 1451 60.22,52.55
    complete 1126
    note-enUS Clear the 3 bugs that spawn at the base of the tower Click on the object at the top of the tower Kill the 2 ambushers that spawn after clicking it
    note-ptBR Limpe os 3 insetos que surgem na base da torre Clique no objeto no topo da torre Mate os 2 emboscadores que surgem depois de clicar nele
step
    turnin 1126
    accept 6844
    note-enUS Turn in Accept -Hive in the Tower
    note-ptBR Entregue. Aceite -Hive in the Tower
step
    note-enUS From this point forward, stop questing in silithus and skip straight to the part 2 of this guide once you have enough XP to ding from turn ins You need about 55k xp total, assuming you haven't skipped any quests-PLAYER_XP_UPDATE,QUEST_LOG_UPDATE,OnStepActivation,OnStepCompletion
step
    goto 1451 23.5,13.7
    objective 8284/1
    note-enUS Collect Twilight Tablet Fragment (x8)
    note-ptBR Colete Twilight Tablet Fragment (x8)
step
    complete 8277
    complete 8280
step
    goto 1451 49.7,37.3
    turnin 8284
step
    accept 8285
step
    goto 1451 51.1,38.2
    turnin 8280
step
    accept 8281
step
    goto 1451 51.7,38.5
    turnin 8277
step
    accept 8278
step
    objective 8278/1 |opt
    note-enUS Collect Stonelash Flayer Stinger (x3)
    note-ptBR Colete Stonelash Flayer Stinger (x3)
step
    objective 8278/2 |opt
    note-enUS Collect Stonelash Pincer Stinger (x3)
    note-ptBR Colete Stonelash Pincer Stinger (x3)
step
    objective 8278/3 |opt
    note-enUS Collect Rock Stalker Fang (x3)
    note-ptBR Colete Rock Stalker Fang (x3)
step
    objective 8281/1
step
    goto 1451 41.3,88.5
    objective 8304/2
step
    goto 1451 40.8,88.8
    objective 8304/1
step
    goto 1451 45,92.2
    objective 8283/1
step
    goto 1451 67.2,69.7
    turnin 8285
step
    accept 8279
step
    goto 1451 51.1,38.2
    turnin 8281
    note-enUS Make sure to finish off all quests before heading back to Cenarion Hold Turn in
    note-ptBR Certifique-se de terminar todas as missões antes de voltar para Cenarion Hold. Entregue
step
    goto 1451 51.7,38.5
    turnin 8278
    accept 8282
step
    goto 1451 49.2,34.3
    turnin 8304
step
    goto 1451 50.8,33.6
    turnin 8283
step
    objective 8318/1 |opt
    note-enUS Kill twilight cultists as you quest Collect Encrypted Twilight Text (x10)
    note-ptBR Mate cultistas do Crepúsculo enquanto faz missões. Colete Encrypted Twilight Text (x10)
step
    objective 8279/3
    note-enUS Kill Twilight Keeper Havunth He patrols the twilight camp next to Cenarion Hold
    note-ptBR Mate Twilight Keeper Havunth. Ele patrulha o acampamento do Crepúsculo ao lado de Cenarion Hold
step
    objective 8279/1
    note-enUS Kill Twilight Keeper Mayna She patrols the twilight camp directly west of Cenarion Hold
    note-ptBR Mate Twilight Keeper Mayna. Ela patrulha o acampamento do Crepúsculo logo a oeste de Cenarion Hold
step
    objective 8279/2
    note-enUS Kill Twilight Keeper Exeter He is at the back of the southwestern twilight camp
    note-ptBR Mate Twilight Keeper Exeter. Ele fica no fundo do acampamento do Crepúsculo a sudoeste
step
    goto 1451 44.5,91.4
    objective 8282/1
step
    goto 1451 67.2,69.8
    turnin 8279
step
    accept 8287
step
    accept 8323
step
    goto 1451 51.7,38.5
    turnin 8282
    note-enUS Head to Cenarion Hold Turn in
    note-ptBR Vá até Cenarion Hold Entregue
step
    goto 1451 49.2,34.2
    turnin 8287
step
    goto 1451 48.7,37.5 50
    complete 8318
step
    goto 1451 48.6,37.7
    turnin 8318
step
    turnin 8323
    note-enUS Grind mobs at the twilight camps until you get 10 Encrypted Twilight Texts Turn in
    note-ptBR Faça grind de mobs nos acampamentos twilight até conseguir 10 Encrypted Twilight Texts Entregue
step
    goto 1451 50.59,34.45
    fly 1449
]==])

register([==[
#format 1
#id classic.h.59-60-winterspring
#name 59-60 Winterspring
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Horde
#levels 59-60
#zones 1452
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    turnin 3962
    note-enUS Turn in (7300xp) -It's Dangerous to Go Alone
    note-ptBR Entregue (7300xp) -It's Dangerous to Go Alone
step
    fly 1446 |opt
    turnin 4507
    accept 4509
    note-enUS Turn in (5450xp) Accept -Pawn Captures Queen
    note-ptBR Entregue (5450xp). Aceite -Pawn Captures Queen
step
    turnin 4504
step
    hearth
step
    turnin 5163
    note-enUS Turn in (7750xp) -Are We There, Yeti? part 3
    note-ptBR Entregue (7750xp) -Are We There, Yeti? part 3
step
    goto 1452 65.2,20.3
    objective 4721/1
step
    turnin 4809 |opt
    note-enUS Finish off/Turn in (5450xp) Skip this quest if you have enough xp to ding from all the quest turn-ins from moonglade/Orgrimmar (about 35k xp total)
    note-ptBR Termine/Entregue (5450xp) Pule esta missão se tiver XP suficiente para subir de nível com todas as entregas de missão de moonglade/Orgrimmar (cerca de 35k xp no total)
    note-enUS Grind until you are xp away from 60
    note-ptBR Faça grind até faltar xp para o 60
    fly 1450
step
    turnin 6844
    accept 6845
step
    turnin 6845
    note-enUS Turn in (7550xp) -Uncovering Past Secrets
    note-ptBR Entregue (7550xp) -Uncovering Past Secrets
step
    turnin 5527
    note-enUS Turn in (6600xp) -A Reliquary of Purity
    note-ptBR Entregue (6600xp) -A Reliquary of Purity
step
    goto 1450 44.87,35.62
    accept 1185
    turnin 1185
    note-enUS Turn in (3000xp) -Under the Chitin Was...
    note-ptBR Entregue (3000xp) -Under the Chitin Was...
step
    note-enUS Make sure you are 15.100xp away from level 60 before flying to Felwood, grind fulborgs in northern felwood if you have to-PLAYER_XP_UPDATE,QUEST_LOG_UPDATE,OnStepActivation,OnStepCompletion
    note-ptBR Certifique-se de estar a 15.100xp do nível 60 antes de voar para Felwood, farme fulborgs no norte de felwood se precisar-PLAYER_XP_UPDATE,QUEST_LOG_UPDATE,OnStepActivation,OnStepCompletion
step
    fly 1448
step
    goto 1452 0.5,72.3
    turnin 4721
step
    fly 1454
step
    goto 1454 56.5,46.4
    turnin 4509
step
    accept 4511
step
    goto 1454 49.7,69.3
    turnin 4511
]==])
