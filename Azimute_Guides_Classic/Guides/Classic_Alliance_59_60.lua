-- Convertido automaticamente de Guidelime_Zarant (Alliance/59-60.lua).
-- (c) Zarant - GNU GPL v3 (ver LICENSE.txt). Gerado por tools/guidelime2azimute.py.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id classic.a.59-59-winterspring-ungoro-silithus-part-1
#name 59-59 Winterspring/Un'Goro/Silithus part 1
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 59-59
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    note-enUS Take the tram to SW
    note-ptBR Pegue o bonde para SW
    turnin 6186
step
    goto 1453 44.27,73.99
    accept 7791 |opt
    turnin 7791 |opt
    accept 7793 |opt
    turnin 7793 |opt
    accept 7794 |opt
    turnin 7794 |opt
    accept 7795 |opt
    turnin 7795 |opt
    note-enUS Do the Stormwind cloth turn ins: Wool Silk Mageweave Runecloth
    note-ptBR Faça as entregas de tecido de Stormwind: Wool Silk Mageweave Runecloth
step
    fp
step
    note-enUS Take the boat to ratchet
    note-ptBR Pegue o barco para ratchet
    vendor |opt
    note-enUS Withdraw Tinkee's Letter from your bank -BANKFRAME_OPENED,
    note-ptBR Retire a Tinkee's Letter do seu banco -BANKFRAME_OPENED,
step
    fly 1452
step
    only Hunter
    note-enUS Once you get to level 59, stable your current pet, head to northern winterspring and replace it by a level 59 Owl
    note-ptBR Ao chegar ao nível 59, coloque seu mascote atual no estábulo, vá para o norte de winterspring e substitua-o por uma Owl nível 59
step
    home
    note-enUS Set your HS to Everlook
    note-ptBR Defina sua Pedra de Regresso em Everlook
step
    turnin 4808
    accept 4809
step
    accept 969
step
    accept 3783
step
    complete 3783
step
    turnin 3783
step
    accept 977
step
    complete 4809 |opt
    note-enUS Kill chillwind chimeras, don't go out of your way to finish it
    note-ptBR Mate chillwind chimeras, não saia do caminho para concluir
step
    complete 5121
step
    accept 5123
    note-enUS Loot the Crudely-written Log from the High Chief Accept
    note-ptBR Saqueie o Crudely-written Log do High Chief. Aceite
step
    complete 977
step
    accept 4901
    note-enUS Start the escort quest Accept
    note-ptBR Inicie a missão de escolta. Aceite
step
    complete 4901
    note-enUS Escort Ranshalla and click on the torches once she enters one of the caves
    note-ptBR Escolte Ranshalla e clique nas tochas quando ela entrar em uma das cavernas
step
    complete 969
    note-enUS Head south to Frowstwhisper Gorge Do The elite giants are immune to frost, not every class can solo this quest
    note-ptBR Siga para o sul até Frowstwhisper Gorge Faça Os gigantes elite são imunes a gelo, nem toda classe consegue solar esta missão
step
    hearth
    note-enUS Hearth to Everlook - Do not skip this step
    note-ptBR Use a Pedra de Regresso para Everlook. Não pule esta etapa
step
    turnin 977
    accept 5163
step
    objective 5163/1
    note-enUS Use the Mechanical Yet on Legacki
    note-ptBR Use o Mechanical Yet em Legacki
step
    turnin 969
step
    vendor |opt
    note-enUS Withdraw the following: Rabine's Letter Silvery Claws Irontree Heart Remains of Trey Lightforge Shadow Lord Fel'dan's Head-BANKFRAME_OPENED,
    note-ptBR Retire o seguinte: Rabine's Letter Silvery Claws Irontree Heart Remains of Trey Lightforge Shadow Lord Fel'dan's Head-BANKFRAME_OPENED,
step
    turnin 5121
    turnin 5123
    accept 5128
step
    turnin 6762
    accept 1124
step
    accept 5527
    note-enUS Finish the dialogue with Rabine Accept Skip this step if the Dire Maul dialogue is not available
    note-ptBR Termine o diálogo com Rabine Aceite Pule esta etapa se o diálogo de Dire Maul não estiver disponível
step
    goto 1450 48.13,67.34
    note-enUS Unstuck to the Moonglade graveyard and spirit rez
    note-ptBR Use o unstuck para ir ao cemitério de Moonglade e ressuscite pelo curandeiro espiritual
    fp
step
    path seq 1448 40.84,66.78
    goto 1448 56.4,86.8 40
    note-enUS Head back to the fulborg tunnel Once the zone text changes to Felwood, unstuck back to the graveyard and spirit rez
    note-ptBR Volte para o túnel dos fulborgs Quando o texto da zona mudar para Felwood, use o unstuck para voltar ao cemitério e ressuscite com o Spirit Healer
    note-enUS Run south to the slime pond Death warp to southern Felwood
    note-ptBR Corra para o sul até o lago de slime. Faça um death warp para o sul de Felwood
step
    turnin 5242
step
    turnin 5385
step
    turnin 5128
step
    turnin 4084
    accept 4005
step
    note-enUS Run south to Ashenvale unstuck and spirit rez at Astranaar
    note-ptBR Corra para o sul até Ashenvale, use o unstuck e ressuscite pelo curandeiro espiritual em Astranaar
    fly 1446
step
    accept 4507
step
    objective 5163/2
    note-enUS Use the Mechanical Yeti on Sprinkle
    note-ptBR Use o Mechanical Yeti em Sprinkle
step
    accept 4504
step
    goto 1446 70.43,49.93
    complete 4005
    note-enUS Head to the pirate area Right click on Eridan's Supplies Use the book of Aquor to summon
    note-ptBR Vá até a área dos piratas Clique com o botão direito em Eridan's Supplies Use o book of Aquor para invocar
step
    fly 1449
    note-enUS Head back to Gadgetzan Fly to
    note-ptBR Volte para Gadgetzan Voe até
step
    turnin 4005
    accept 3961
step
    turnin 3961
    accept 3962
step
    goto 1449 43.67,9.38
    objective 5163/3
    note-enUS Use the Mechanical Yeti on Quixxil
    note-ptBR Use o Mechanical Yeti em Quixxil
step
    complete 4513 |opt
    note-enUS Kill slimes as you go along, use the sample jar on their corpses
    note-ptBR Mate slimes pelo caminho, use o sample jar nos cadáveres deles
step
    complete 4504
step
    goto 1449 50.28,49.98
    objective 3962/2 |opt
    note-enUS Click on the chest at the back of the cave
    note-ptBR Clique no baú no fundo da caverna
step
    objective 3962/1 |opt
    note-enUS Equip the Silver Totem of Aquementas on your off-hand Use it on Blazerunner at the top of the volcano
    note-ptBR Equipe o Silver Totem of Aquementas na mão secundária Use-o em Blazerunner no topo do vulcão
step
    goto 1449 44.13,81.41
    complete 4507
    note-enUS Head south and enter the bug hole Use the Gorishi Queen Lure after clearing the circular room Clear all 3 waves of mobs
    note-ptBR Siga para o sul e entre no buraco de insetos Use o Gorishi Queen Lure depois de limpar a sala circular Limpe as 3 ondas de mobs
step
    goto 1451 88.4,23.81 60
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
    note-enUS 48540 if you don't have reliquary of purity (pre Dire Maul)
    note-ptBR 48540 se você não tiver o reliquary of purity (pré Dire Maul)
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
#id classic.a.59-60-winterspring-ungoro-silithus-part-2
#name 59-60 Winterspring/Un'Goro/Silithus part 2
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 59-60
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    turnin 3962
    note-enUS Turn in (7300xp) -It's Dangerous to Go Alone
    note-ptBR Entregue (7300xp) -It's Dangerous to Go Alone
step
    fly 1446 |opt
    turnin 4507
    accept 4508
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
    turnin 4809 |opt
    note-enUS Finish off/Turn in (5450xp) Skip this quest if you have enough xp to ding from all the quest turn-ins from moonglade/darnassus (about 35k xp total)
    note-ptBR Termine/Entregue (5450xp) Pule esta missão se tiver XP suficiente para subir de nível com todas as entregas de missão de moonglade/darnassus (cerca de 35k xp no total)
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
    note-enUS Fly to Felwood ang grind fulborgs if you don't have enough XP to ding 60 from quest turn ins in Darnassus-PLAYER_XP_UPDATE,QUEST_LOG_UPDATE,OnStepActivation,OnStepCompletion
    note-ptBR Voe até Felwood e faça grind de fulborgs se não tiver XP suficiente para chegar ao 60 com as entregas de missão em Darnassus-PLAYER_XP_UPDATE,QUEST_LOG_UPDATE,OnStepActivation,OnStepCompletion
step
    fly 1438
step
    turnin 4901
step
    accept 4902
step
    goto 1457 41.85,85.64
    turnin 4508
    accept 4510
    note-enUS Turn in (540xp) Accept -Calm Before the Storm part 1
    note-ptBR Entregue (540xp). Aceite -Calm Before the Storm part 1
step
    turnin 4510
    note-enUS Turn in (8150xp) -Calm Before the Storm part 2
    note-ptBR Entregue (8150xp) -Calm Before the Storm part 2
step
    turnin 4986
    note-enUS Turn in at the middle floor (5800xp) -Glyphed Oaken Branch
    note-ptBR Entregue no andar do meio (5800xp) -Glyphed Oaken Branch
step
    turnin 4902
    note-enUS Turn in at the top floor (6000xp)
    note-ptBR Entregue no último andar (6000xp)
]==])
