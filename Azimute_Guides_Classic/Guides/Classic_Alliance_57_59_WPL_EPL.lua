-- Convertido automaticamente de Guidelime_Zarant (Alliance/57-59_WPL-EPL.lua).
-- (c) Zarant - GNU GPL v3 (ver LICENSE.txt). Gerado por tools/guidelime2azimute.py.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id classic.a.57-58-western-eastern-plaguelands-part-1
#name 57-58 Western/Eastern Plaguelands part 1
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 57-58
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    turnin 5022
    accept 5048
step
    goto 1453 52.48,41.95
    turnin 5048
    accept 5050
    note-enUS Find Ol'Emma, she can roam around SW from time to time Turn in Accept
    note-ptBR Encontre Ol'Emma, ela às vezes circula por SW Entregue Aceite
step
    accept 6182
step
    turnin 6182
    accept 6183
    turnin 6183
    accept 6184
step
    note-enUS Before starting this segment make sure you have 2 stacks of Noggenfogger Elixir or some other form of slow fall
    note-ptBR Antes de começar esta parte, certifique-se de ter 2 pilhas de Noggenfogger Elixir ou outra forma de queda lenta
    home
    note-enUS Set your HS to Southshore
    note-ptBR Defina sua Pedra de Regresso em Southshore
step
    fly 1422
step
    accept 5219
step
    accept 5903
step
    turnin 6184
    accept 6185
step
    accept 5097
step
    turnin 6028
step
    goto 1422 46.62,71.19
    objective 5097/4
    note-enUS Mark the fourth tower
    note-ptBR Marque a quarta torre
step
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
    complete 5219 |opt
    turnin 5219
    accept 5220
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
    turnin 5050
    accept 5051
step
    complete 5051
    note-enUS Look for the Jabbering Ghoul around the farm Right click the Other-Half-Charm to create a Good Luck Charm
    note-ptBR Procure o Jabbering Ghoul ao redor da fazenda. Clique com o botão direito no Other-Half-Charm para criar um Good Luck Charm
step
    turnin 5051
step
    complete 4984
step
    goto 1422 44.21,63.21
    objective 5097/3
    note-enUS Mark the third tower
    note-ptBR Marque a terceira torre
step
    goto 1422 42.35,66.17
    objective 5097/2
    note-enUS Mark the second tower
    note-ptBR Marque a segunda torre
step
    goto 1422 40.07,71.62
    objective 5097/1
    note-enUS Mark the first tower
    note-ptBR Marque a primeira torre
step
    turnin 5097
    accept 5533
step
    note-enUS Throw away the Beacon Torch
    note-ptBR Jogue fora a Beacon Torch
step
    turnin 5533
    accept 5537
step
    turnin 5220
    accept 5222
step
    complete 5537 |opt
    note-enUS Stop by Andorhal and kill skeletons for fragments
    note-ptBR Passe por Andorhal e mate esqueletos para obter fragmentos
step
    complete 5222 |opt
    turnin 5222
    accept 5223
step
    turnin 4984
    accept 4985
step
    complete 4985
step
    turnin 4985
    accept 4986
step
    accept 5542
    accept 5543
    accept 5544
step
    complete 5544 |opt
    note-enUS Kill worms as you go along
    note-ptBR Mate vermes pelo caminho
step
    complete 5543 |opt
step
    objective 5542/1 |opt
step
    goto 1423 28.81,79.85
    objective 6185/1
    note-enUS Click on the first skeleton on the ground
    note-ptBR Clique no primeiro esqueleto no chão
step
    goto 1423 28.81,74.88
    objective 6185/3
    note-enUS Click on the second skeleton on the ground
    note-ptBR Clique no segundo esqueleto no chão
step
    goto 1423 27.17,74.99
    objective 6185/2
    note-enUS Click on the third skeleton on the ground
    note-ptBR Clique no terceiro esqueleto no chão
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
    objective 5542/2
step
    accept 5281
    accept 6021
step
    turnin 6030
step
    turnin 5241
    accept 5211
step
    fp
step
    home
    note-enUS Set your HS to Light's Hope Chapel -Not available until later
    note-ptBR Defina sua Pedra de Regresso em Light's Hope Chapel -Não disponível até mais tarde
step
    complete 5211 |opt
    note-enUS Kill all ghouls you encounter
    note-ptBR Mate todos os ghouls que encontrar
step
    objective 5542/3 |opt
step
    turnin 5245
step
    complete 5903
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
step
    hearth
step
    fly 1422
]==])

register([==[
#format 1
#id classic.a.58-59-western-eastern-plaguelands-part-2
#name 58-59 Western/Eastern Plaguelands part 2
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 58-59
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    turnin 5223
    accept 5225
step
    turnin 5903
    accept 5904
step
    turnin 6185
    accept 6186
step
    complete 5537 |opt
    note-enUS Kill skeletons as you go along
    note-ptBR Mate esqueletos pelo caminho
step
    turnin 5152
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
    turnin 5537
step
    fly 1423
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
    goto 1423 51.11,49.94
    objective 5181/1
    note-enUS Loot Horgus' Skull underwater
    note-ptBR Saqueie a Horgus' Skull debaixo d'água
step
    goto 1423 53.91,65.76
    complete 5181
step
    turnin 6024
    note-enUS Click on the mound of dirt next to the wooden cart Turn in
    note-ptBR Clique no monte de terra ao lado da carroça de madeira Entregue
step
    turnin 5845
    accept 5846
step
    goto 1422 63.79,57.19
    objective 5168/2
    note-enUS Head to Western Plaguelands Loot the shield on the ground
    note-ptBR Vá até Western Plaguelands Saqueie o escudo no chão
step
    complete 5225 |opt
    turnin 5225
    accept 5226
step
    turnin 4985
    accept 4986
step
    goto 1422 48.39,31.91
    turnin 5904
    accept 6389
    note-enUS Click on the crate at the middle of the lumber mill and place the termite barrel Click on the termite barrel, turn in Accept
    note-ptBR Clique no caixote no meio da serraria e coloque o barril de cupins Clique no barril de cupins, entregue Aceite
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
    hearth
    note-enUS Grind mobs around the Lumber mill until your HS is off cooldown Use your Hearthstone
    note-ptBR Faça grind de mobs ao redor da serraria até sua Pedra de Regresso sair da recarga Use sua Pedra de Regresso
step
    fly 1423 |opt
    turnin 5168
    turnin 5181
    accept 5206
step
    goto 1423 83.28,42.02 130
    complete 5206
    note-enUS Kill Scourge Champions, loot Fetid Skulls and use the Mystic Crystal Scourge Champions share spawns with several different mobs, make sure to keep grinding mobs if you can't find any
    note-ptBR Mate Scourge Champions, saqueie Fetid Skulls e use o Mystic Crystal Scourge Champions compartilham pontos de surgimento com vários mobs diferentes, continue o grind de mobs se não encontrar nenhum
step
    turnin 5211
    turnin 5206
    accept 5941
step
    fly 1422
step
    turnin 5226
step
    accept 5237
    turnin 5237
step
    note-enUS Make sure to turn in all your scourgestones before continuing to the next step-OnStepActivation,
    note-ptBR Entregue todas as suas scourgestones antes de continuar para a próxima etapa-OnStepActivation,
step
    turnin 6389
step
    turnin 5941
step
    turnin 5846
step
    fly 1455
    note-enUS Use the website unstuck tool to teleport to SW OR Throw away your HS and unstuck back to Chillwind Camp, then fly to -OnStepCompletion
    note-ptBR Use a ferramenta de unstuck do site para teleportar para SW OU jogue fora sua Pedra de Regresso e use o unstuck para voltar a Chillwind Camp, depois voe para -OnStepCompletion
]==])
