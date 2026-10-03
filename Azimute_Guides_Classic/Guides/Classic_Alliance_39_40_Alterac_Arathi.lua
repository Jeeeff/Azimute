-- Convertido automaticamente de Guidelime_Zarant (Alliance/39-40_Alterac-Arathi.lua).
-- (c) Zarant - GNU GPL v3 (ver LICENSE.txt). Gerado por tools/guidelime2azimute.py.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id classic.a.39-40-alterac-arathi
#name 39-40 Alterac/Arathi
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 39-40
#zones 1416 1417
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    note-enUS Make sure you have water breathing pots for this segment
    note-ptBR Certifique-se de ter poções de respiração aquática para este segmento
    accept 659
step
    accept 522 |opt
    turnin 522 |opt
    accept 523 |opt
    note-enUS Kill Syndicate Assassins in Southshore Accept/turn in Accept The scripted event related to this quest only happens once every several hours, skip this step if you have to
    note-ptBR Mate os Syndicate Assassins em Southshore. Aceite/entregue. Aceite. O evento roteirizado desta missão só acontece uma vez a cada várias horas, pule esta etapa se precisar
step
    home
    note-enUS Set your HS to
    note-ptBR Defina sua Pedra de Regresso em
step
    turnin 1052
step
    accept 500
step
    turnin 525
    accept 537
    accept 512
step
    goto 1424 50.6,57.1
    turnin 538
    accept 540
    note-enUS Skip this step if you haven't found the old history book in duskwood Turn in Accept
    note-ptBR Pule esta etapa se não tiver encontrado o old history book em duskwood. Entregue. Aceite
step
    turnin 602
    accept 603
step
    goto 1416 32.36,68.22 20
    note-enUS Head to ruins of alterac
    note-ptBR Vá até ruins of alterac
step
    complete 543
    note-enUS Kill Grel'borg, he patrols around the ruins of alterac
    note-ptBR Mate Grel'borg, ele patrulha pelas ruins of alterac
step
    objective 540/2 |opt
    accept 540 |opt
    note-enUS Click on the bookshelf inside the town hall Skip this step if you don't have
    note-ptBR Clique na estante dentro da prefeitura Pule esta etapa se não tiver
step
    objective 537/2
step
    accept 551
    note-enUS Click on the wooden chest on the ground Accept
    note-ptBR Clique no baú de madeira no chão Aceite
step
    complete 523 |opt
    note-enUS Kill Baron Vardus, he can spawn in any one of the 4 syndicate camps
    note-ptBR Mate Baron Vardus, ele pode surgir em qualquer um dos 4 acampamentos do syndicate
step
    objective 537/1
step
    complete 512
step
    goto 1416 48.31,41.55 100
    complete 500
step
    complete 540
    note-enUS Keep killing ogres for (if you have the quest)
    note-ptBR Continue matando ogros para (se tiver a missão)
step
    only Hunter
    note-enUS Grind mobs until your HS cooldown is < 6min
    note-ptBR Faça grind de mobs até a recarga da sua Pedra de Regresso ficar < 6min
step
    goto 1416 59.52,62.68 60
    path seq 1424 71.43,21.04
    goto 1424 84.23,31.99 40
    note-enUS Head to The Hinterlands
    note-ptBR Vá até The Hinterlands
step
    turnin 1449
    accept 1450
step
    fp
step
    turnin 1450
    accept 1451
step
    turnin 1451
step
    accept 1452
step
    hearth |opt
    turnin 500
step
    turnin 512
    turnin 537
step
    turnin 523 |opt
    note-enUS Turn in if you have the quest
    note-ptBR Entregue se tiver a missão
    turnin 551
    accept 554
step
    turnin 540 |opt
    accept 542 |opt
    note-enUS Skip this step if you don't have this quest Turn in Accept
    note-ptBR Pule esta etapa se não tiver esta missão. Entregue. Aceite
step
    complete 658 |opt
    note-enUS Look for the forsaken courier She patrols the road between Go'shek farm and Tarren Mill
    note-ptBR Procure a forsaken courier. Ela patrulha a estrada entre Go'shek farm e Tarren Mill
step
    fly 1417 |opt
    accept 691
    note-enUS Speak with Apprentice Kryten Accept
    note-ptBR Fale com Apprentice Kryten. Aceite
step
    only Hunter Druid Rogue
    accept 684
    note-enUS Click on the Wanted Poster Accept
    note-ptBR Clique no Wanted Poster Aceite
step
    accept 642
step
    complete 642
step
    turnin 642
    accept 651
step
    objective 651/2
    note-enUS Loot the Cresting Key
    note-ptBR Saqueie a Cresting Key
step
    goto 1417 68.33,75.39
    complete 691
step
    turnin 659
    accept 658
step
    turnin 658
step
    accept 657
step
    goto 1417 60.23,53.91 20
    turnin 657
    accept 660
    note-enUS Speak with Kinelory and start the escort quest Turn in Accept
    note-ptBR Fale com Kinelory e inicie a missão de escolta. Entregue. Aceite
step
    complete 660
step
    turnin 660
    accept 661
step
    objective 651/3
    note-enUS Loot the Thundering Key
    note-ptBR Saqueie a Thundering Key
step
    turnin 691
step
    accept 693
step
    complete 693
step
    objective 651/1
    note-enUS Loot the Burning Key
    note-ptBR Saqueie a Burning Key
step
    only Hunter Druid Rogue
    complete 684
    note-enUS Head to Stromgarde Keep Do Use eagle eye to find her first, she has 2 different spawn locations Getting there can be tricky, you can skip this quest if necessary
    note-ptBR Vá até Stromgarde Keep Faça Use o eagle eye para encontrá-la primeiro, ela tem 2 locais de surgimento diferentes Chegar lá pode ser complicado, você pode pular esta missão se necessário
step
    turnin 651
step
    accept 652
step
    only Hunter
    complete 652 |opt
    note-enUS Use your eagle eye macro to find Fozruk Make sure to kill Sleeby and the rest of the kobolds first, you can kill one add at a time and reset the fight Kill Fozruk by kiting him around Refuge Point
    note-ptBR Use sua macro de eagle eye para encontrar Fozruk. Mate Sleeby e o resto dos kobolds primeiro, você pode matar um add por vez e resetar a luta. Mate Fozruk fazendo kite ao redor de Refuge Point
step
    only Druid Mage Paladin Priest Rogue Warlock Warrior
    complete 652
    note-enUS Find and kill Fozruk but don't go out of your way to finish this step, he patrols the whole zone This is a difficult elite to solo, consider skipping this step
    note-ptBR Encontre e mate Fozruk, mas não se desvie do caminho para concluir esta etapa, ele patrulha a zona inteira É um elite difícil de solar, considere pular esta etapa
step
    turnin 693
step
    only Hunter Druid Rogue
    turnin 684
step
    turnin 652
    accept 653
    note-enUS Turn in Accept Skip this step if you haven't found Fozruk
    note-ptBR Entregue. Aceite. Pule esta etapa se não tiver encontrado Fozruk
step
    goto 1417 21.5,72.6 20
    note-enUS Head to Faldir's Cove, follow the path between the mountains and Stromgarde's southeastern wall
    note-ptBR Vá até Faldir's Cove, siga o caminho entre as montanhas e a muralha sudeste de Stromgarde
step
    accept 663
step
    turnin 663
step
    accept 662
step
    accept 664 |opt
step
    accept 665
step
    complete 665
    note-enUS Do the escort quest
    note-ptBR Faça a missão de escolta
step
    turnin 665
    accept 666
step
    complete 664 |opt
step
    complete 666 |opt
    note-enUS Look for Elven Gems underwater, use the goggles provided to track them on your minimap
    note-ptBR Procure Elven Gems debaixo d'água, use os óculos fornecidos para rastreá-las no minimapa
step
    goto 1417 23.39,85.09 1
    objective 662/2
    note-enUS Enter the ship through the stairs at the front side of the deck Loot the book inside the cauldron next to the stairs
    note-ptBR Entre no navio pela escada na parte da frente do convés Saqueie o livro dentro do caldeirão ao lado da escada
step
    goto 1417 23.05,84.52 1
    objective 662/1
    note-enUS Move towards the back of the ship Loot the chart hanging on the ledge of the wooden ring that supports the ship's mast
    note-ptBR Vá para a parte de trás do navio. Saqueie o mapa pendurado na borda do anel de madeira que sustenta o mastro do navio
step
    goto 1417 20.46,85.62 1
    objective 662/3
    note-enUS Enter the ship through the opening on the front side of the deck Loot the chart on top of a box next to a cannon
    note-ptBR Entre no navio pela abertura na parte da frente do convés Saqueie a carta náutica em cima de uma caixa ao lado de um canhão
step
    goto 1417 20.65,85.1 1
    objective 662/4
    note-enUS Exit the ship and enter it from the hole on the hull Loot the ledger on the floor
    note-ptBR Saia do navio e entre pelo buraco no casco Saqueie o livro-razão no chão
step
    complete 664
step
    complete 666
step
    turnin 662
step
    turnin 664
    turnin 666
    accept 668
step
    turnin 668
    accept 669
step
    hearth
step
    turnin 661
step
    only Warlock
    fly 1455 |only Warlock |opt
    turnin 653 |opt
    note-enUS Turn in Skip the follow up
    note-ptBR Entregue. Pule a continuação
step
    only Warlock
    accept 4487
    accept 4965
    note-enUS Speak with the Warlock trainers in IF Accept Accept
    note-ptBR Fale com os instrutores de Bruxo em IF. Aceite. Aceite
step
    only Druid Mage Paladin Priest Rogue Warlock Warrior
    fly 1437
step
    only Hunter
    fly 1437
]==])
