-- Convertido automaticamente de RXPGuides (Horde-Mage-12-21.lua)
-- (c) RestedXP - CC BY-NC-SA 4.0 (ver LICENSE.txt). Não edite à mão:
-- rode tools/rxp2azimute.py de novo.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id forever.h.12-17-the-barrens-aoe
#name 12-17 The Barrens AoE
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Horde
#only Mage
#levels 12-17
#zones 1413
#suffix AoE
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup Mage AoE
#subgroup-ptBR Mago AoE
#recommend Horde Mage
#next forever.h.17-21-stonetalon-barrens-aoe

step
    note-enUS Note that you have selected the AoE guide. AoE is typically a lot harder than single target mage, but a LOT faster |only Mage
    note-ptBR Observe que você selecionou o guia de AoE. AoE costuma ser bem mais difícil que o Mago de alvo único, mas MUITO mais rápido |only Mage
    note-enUS Talk to Tonga Runetotem
    note-ptBR Fale com Tonga Runetotem
    accept 870
step
    goto 1413 @-2666.68,-481.94
    note-enUS Talk to Sergra Darkthorn
    note-ptBR Fale com Sergra Darkthorn
    turnin 842
    accept 844
step
    only Troll Mage
    goto 1413 @-2697.08,-400.86
    note-enUS Talk to Zargh
    note-ptBR Fale com Zargh
    accept 6365
step
    goto 1413 @-2636.28,-434.64
    note-enUS Talk to Gazrog
    note-ptBR Fale com Gazrog
    accept 869
step
    goto 1413 @-2645.4,-406.94
    note-enUS Talk to Innkeeper Boorand
    note-ptBR Fale com Innkeeper Boorand
    home
    note-enUS Set your Hearthstone to Crossroads
    note-ptBR Defina sua pedra de regresso em Crossroads
step
    goto 1413 @-2595.75,-468.43
    note-enUS Talk to Thork
    note-ptBR Fale com Thork
    accept 871
    accept 5041
step
    goto 1413 @-2595.75,-441.4
    fp
    note-enUS Get the The Crossroads flight path
    note-ptBR Pegue o ponto de voo de The Crossroads
step
    only Troll Mage
    goto 1413 @-2595.75,-434.64
    note-enUS do NOT go to Orgrimmar
    note-ptBR NÃO vá para Orgrimmar
    note-enUS Talk to Devrak
    note-ptBR Fale com Devrak
    turnin 6365
    accept 6384
step
    goto 1413 @-2595.75,-421.13
    note-enUS Talk to Apothecary Helbrim
    note-ptBR Fale com Apothecary Helbrim
    accept 848
    accept 1492
step
    path seq 1413 @-3021.35,-231.96
    goto 1413 @-3011.22,-184.66
    note-enUS Check this location for Chen's Empty Keg. Loot it and start the quest, otherwise you'll get it later
    note-ptBR Procure o Chen's Empty Keg neste local. Saqueie-o e inicie a missão, senão você o pegará depois
    collect 4926 1 |quest 819 |opt
    accept 819 |opt
    note-enUS Kill Quilboars in the area
    note-ptBR Mate Quilboars na área
    objective 871/2
    objective 871/1
    objective 871/3
step
    only !Scourge
    goto 1413 @-2484.28,126.12 20
    note-enUS If the Flawed Power Stone in your bags has less than 10 minutes left, drop it, then go back and loot the Purple Stone next to Ak'Zeloth again |only !Scourge
    note-ptBR Se a Flawed Power Stone nas suas bolsas tiver menos de 10 minutos restantes, solte-a, volte e saqueie a Purple Stone ao lado de Ak'Zeloth novamente |only !Scourge
    turnin 926 |only !Scourge |opt
    note-enUS Kill some Plainstriders en route if you have time on Flawed Power Stone. Loot them for Beaks |only !Scourge
    note-ptBR Mate alguns Plainstriders pelo caminho se tiver tempo sobrando na Flawed Power Stone. Saqueie-os para obter bicos |only !Scourge
    objective 844/1 |only !Scourge |opt
    note-enUS Run up the mountain here
    note-ptBR Suba a montanha correndo aqui
step
    only !Scourge
    goto 1413 @-2200.55,315.3 20
    note-enUS Go to the cave surrounded by Burning Blade orcs
    note-ptBR Vá até a caverna cercada por orcs Burning Blade
step
    only !Scourge
    goto 1413 @-2241.08,322.06
    note-enUS Right click the Altar
    note-ptBR Clique com o botão direito no Altar
    collect 4986 1 |quest 924
    objective 924/1
step
    goto 1413 @-2524.82,-556.26
    note-enUS Kill Raptors that you see. Loot them for some Raptor Heads - you'll get more later
    note-ptBR Mate os Raptors que vir. Saqueie-os para obter algumas Raptor Heads - você conseguirá mais depois
    objective 869/1 |opt
    note-enUS Kill Plainstriders. Loot them for Beaks
    note-ptBR Mate Plainstriders. Saqueie-os para obter bicos
    objective 844/1
step
    goto 1413 @-2595.75,-475.18
    note-enUS Top of the tower
    note-ptBR Topo da torre
    note-enUS Talk to Thork
    note-ptBR Fale com Thork
    turnin 871
    accept 872
    note-enUS Talk to Darsok Swiftdagger
    note-ptBR Fale com Darsok Swiftdagger
    accept 867
step
    goto 1413 @-2666.68,-481.94
    note-enUS Talk to Sergra Darkthorn
    note-ptBR Fale com Sergra Darkthorn
    turnin 844
    accept 845
step
    goto 1413 @-3315.22,-218.44
    note-enUS Kill Razormanes while getting the Crates and killing Kreenig
    note-ptBR Mate Razormanes enquanto pega os caixotes e mata Kreenig
    objective 872/1 |opt
    objective 872/2 |opt
    note-enUS Loot the brown boxes found in the area
    note-ptBR Saqueie as caixas marrons na área
    objective 5041/1 |opt
    note-enUS Kill Kreenig Snarlsnout. Loot him for his Tusk
    note-ptBR Mate Kreenig Snarlsnout. Saqueie-o para obter a presa dele
    objective 872/3
step
    path seq 1413 @-3305.08,-231.96 @-3305.08,-130.61
    goto 1413 @-3396.28,-63.05 40
    note-enUS Loot the brown boxes found in the area
    note-ptBR Saqueie as caixas marrons na área
    objective 5041/1
step
    goto 1413 @-3122.68,-96.83
    note-enUS Finish killing the Razormanes
    note-ptBR Termine de matar os Razormanes
    objective 872/1
    objective 872/2
step
    only !Scourge
    goto 1413 @-3690.15,254.49
    note-enUS Kill any Zhevras you see. Loot them for Hooves |only !Scourge
    note-ptBR Mate os Zhevras que vir. Saqueie-os para obter cascos |only !Scourge
    objective 845/1 |only !Scourge |opt
    note-enUS Talk to Ak'Zeloth
    note-ptBR Fale com Ak'Zeloth
    turnin 924
step
    goto 1413 @-3257.46,277.46 150 |only Scourge
    goto 1413 @-3852.28,-806.24
    note-enUS Kill any Zhevras you see. Loot them for Hooves. Make sure you have 4 before entering Ratchet
    note-ptBR Mate os Zhevras que vir. Saqueie-os para obter cascos. Tenha 4 antes de entrar em Ratchet
    objective 845/1
step
    goto 1413 @-3730.68,-840.02
    note-enUS Top floor of the building
    note-ptBR Último andar do prédio
    note-enUS Talk to Gazlowe
    note-ptBR Fale com Gazlowe
    accept 887
step
    goto 1413 @-3771.22,-894.07
    fp
    note-enUS Get the Ratchet flight path
    note-ptBR Pegue o ponto de voo de Ratchet
step
    goto 1413 @-3761.08,-900.83
    note-enUS Talk to Sputtervalve
    note-ptBR Fale com Sputtervalve
    accept 894
step
    goto 1413 @-3720.55,-921.09
    note-enUS Click the Wanted poster. You can bank here too if you want
    note-ptBR Clique no cartaz Wanted. Você também pode usar o banco aqui se quiser
    accept 895
step
    goto 1413 @-3700.28,-934.61
    note-enUS Talk to Mebok Mizzyrix
    note-ptBR Fale com Mebok Mizzyrix
    accept 865
step
    goto 1413 @-3690.15,-981.9
    note-enUS Talk to Brewmaster Drohn
    note-ptBR Fale com Brewmaster Drohn
    turnin 819
    accept 821
step
    note-enUS Kill Southsea mobs in the area
    note-ptBR Mate os inimigos Southsea na área
    objective 887/1
    objective 887/2
step
    path seq 1413 @-3882.68,-1569.69 @-3821.88,-1704.82 @-3720.55,-1745.36 @-3882.68,-1569.69 @-3821.88,-1704.82 @-3720.55,-1745.36 @-3882.68,-1569.69 @-3821.88,-1704.82
    goto 1413 @-3720.55,-1745.36 40
    note-enUS Kill Baron Longshore. Loot him for his Head
    note-ptBR Mate Baron Longshore. Saqueie-o para obter a cabeça dele
    objective 895/1
step
    goto 1413 @-3730.68,-840.02
    note-enUS Talk to Gazlowe
    note-ptBR Fale com Gazlowe
    turnin 887
    accept 890
    turnin 895
step
    goto 1413 @-3791.48,-981.9
    note-enUS Talk to Wharfmaster Dizzywig
    note-ptBR Fale com Wharfmaster Dizzywig
    turnin 1492
    turnin 890
    accept 892
    accept 896
step
    goto 1413 @-3730.68,-840.02
    note-enUS Talk to Gazlowe
    note-ptBR Fale com Gazlowe
    turnin 892
    accept 888
step
    goto 1413 @-3769.19,-898.12
    fp
    note-enUS Fly to The Crossroads
    note-ptBR Voe para The Crossroads
step
    goto 1413 @-2595.75,-468.43
    note-enUS Talk to Thork
    note-ptBR Fale com Thork
    turnin 5041
    turnin 872
step
    goto 1413 @-2666.68,-481.94
    note-enUS Talk to Sergra Darkthorn
    note-ptBR Fale com Sergra Darkthorn
    turnin 845
    accept 903
step
    goto 1413 @-1972.55,-306.95
    note-enUS Kill Plainstriders. Loot them for their Kidneys
    note-ptBR Mate Plainstriders. Saqueie-os para obter os rins
    objective 821/2 |opt
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    accept 850
    accept 855
step
    goto 1413 @-1943.16,89.64
    note-enUS Kill Kolkar Wranglers and Kolkar Stormers. Loot them for their Bracers
    note-ptBR Mate Kolkar Wranglers e Kolkar Stormers. Saqueie-os para obter os braçais
    note-enUS This quest does not have to be completed now
    note-ptBR Esta missão não precisa ser concluída agora
    objective 855/1 |opt
    note-enUS Collect Laden Mushrooms around The Forgotten Pools
    note-ptBR Colete Laden Mushrooms ao redor de The Forgotten Pools
    note-enUS This quest does not have to be completed now
    note-ptBR Esta missão não precisa ser concluída agora
    objective 848/1 |opt
    note-enUS Dive underwater to the Bubbling Fissure
    note-ptBR Mergulhe até a Bubbling Fissure
    objective 870/1
step
    goto 1413 @-1716.18,23.43
    note-enUS Kill Barak Kodobane. Loot him for his Head
    note-ptBR Mate Barak Kodobane. Saqueie-o para obter a cabeça dele
    note-enUS Be careful as Barak Kodobane's melee hits deal a LOT of damage and he is protected by a Kolkar Wrangler. They can net you and shoot at you from ranged distance
    note-ptBR Cuidado, os golpes corpo a corpo de Barak Kodobane causam MUITO dano e ele é protegido por um Kolkar Wrangler. Eles podem lançar rede em você e atirar à distância
    objective 850/1
step
    ifcomplete 855
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    turnin 850
    accept 851
    turnin 855
step
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    turnin 850
    accept 851
step
    path seq 1413 @-1572.28,-42.78 @-1470.95,261.25 @-1572.28,-42.78 @-1470.95,261.25
    goto 1413 @-1572.28,-42.78
    note-enUS Kill Raptors that you see. Loot them for some Raptor Heads - you'll get more later
    note-ptBR Mate os Raptors que vir. Saqueie-os para obter algumas Raptor Heads - você conseguirá mais depois
    objective 869/1 |opt
    note-enUS Don't focus on getting all of them now
    note-ptBR Não se preocupe em pegar todos agora
    objective 821/1 |opt
    note-enUS Kill Prowlers. Loot them for their Claws and Tusks
    note-ptBR Mate Prowlers. Saqueie-os para obter garras e presas
    objective 903/1
step
    path seq 1413 @-1450.68,335.57 @-1501.35,626.09 @-1693.88,592.31 @-1450.68,335.57 @-1501.35,626.09
    goto 1413 @-1693.88,592.31 40
    note-enUS Kill Harpies. Loot them for their Talons
    note-ptBR Mate harpias. Saqueie-as para obter as garras
    objective 867/1
step
    path seq 1413 @-1815.48,788.24 @-2879.48,781.48 @-2909.88,484.21 @-1693.88,592.31 @-2879.48,781.48 @-2909.88,484.21
    goto 1413 @-1693.88,592.31 40
    note-enUS If you still didn't get the Heavy Spiked Mace consider try to buy it from Vrang Wildgore |only Druid Warrior
    note-ptBR Se ainda não conseguiu a Heavy Spiked Mace, tente comprá-la de Vrang Wildgore |only Druid Warrior
    vendor |opt
    note-enUS Go vendor at this guy if needed
    note-ptBR Venda itens para este NPC se precisar
    note-enUS Kill Plainstriders. Loot them for their Kidneys
    note-ptBR Mate Plainstriders. Saqueie-os para obter os rins
    objective 821/2 |opt
    note-enUS Kill Raptors. Loot them for their heads
    note-ptBR Mate Raptors. Saqueie-os para obter as cabeças
    objective 869/1
step
    goto 1413 @-2686.95,828.77
    note-enUS Click on the Control Console
    note-ptBR Clique no Control Console
    turnin 894
    accept 900
step
    goto 1413 @-2686.95,842.29
    note-enUS Click the Valve
    note-ptBR Clique na Valve
    objective 900/2
step
    path seq 1413 @-2676.82,842.29
    goto 1413 @-2676.82,828.77
    note-enUS Click the Valve. Mobs will spawn when you click either
    note-ptBR Clique na Valve. Mobs surgirão quando você clicar em qualquer uma
    objective 900/3
    objective 900/1
step
    goto 1413 @-2686.95,828.77
    note-enUS Click on the Control Console
    note-ptBR Clique no Control Console
    turnin 900
    accept 901
step
    goto 1413 @-2727.48,909.85
    note-enUS Kill Tinkerer Sniggles in the building. Loot him for the Console Key
    note-ptBR Mate Tinkerer Sniggles no edifício. Saqueie-o para obter a Console Key
    objective 901/1
step
    goto 1413 @-2686.95,828.77
    turnin 901
    accept 902
step
    goto 1413 @-3102.42,1105.78
    note-enUS Accept Ignition from the Shredder
    note-ptBR Aceite Ignition no Shredder
    note-enUS Talk to Wizzlecrank's Shredder
    note-ptBR Fale com Wizzlecrank's Shredder
    accept 858
step
    note-enUS Grinding to level 16 here is important, due to the next 3 quests being quite hard.
    note-ptBR Fazer grind até o nível 16 aqui é importante, pois as próximas 3 missões são bem difíceis.
    level 16
    note-enUS Grind to 16
    note-ptBR Mate monstros até o nível 16
step
    goto 1413 @-3082.15,1031.46
    note-enUS Kill Supervisor Lugwizzle (He patrols all over the tower). Loot him for the Ignition Key
    note-ptBR Mate Supervisor Lugwizzle (ele patrulha a torre toda). Saqueie-o para obter a Ignition Key
    objective 858/1
step
    goto 1413 @-3102.42,1105.78
    note-enUS This will begin an escort
    note-ptBR Isto iniciará uma escolta
    note-enUS Talk to Wizzlecrank's Shredder
    note-ptBR Fale com Wizzlecrank's Shredder
    turnin 858
    accept 863
step
    goto 1413 @-2980.82,1085.51
    note-enUS 2 Mobs will spawn at some point. Kill them then wait for his RP event at the end
    note-ptBR 2 mobs vão surgir em algum momento. Mate-os e depois espere o evento de RP dele no final
    objective 863/1
step
    goto 1413 @-3609.08,1321.98
    note-enUS Grind mobs in the area. Loot them until Cats Eye Emerald drops
    note-ptBR Faça grind de mobs na área. Saqueie-os até cair a Cats Eye Emerald
    objective 896/1
step
    path seq 1454 @-3841.9,1647.15
    goto 1454 @-4224.67,1472.41
    note-enUS Run to the west entrance of Orgrimmar
    note-ptBR Corra até a entrada oeste de Orgrimmar
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Troll Mage
    goto 1454 @-4440.81,1632.18
    note-enUS Talk to Innkeeper Gryshka
    note-ptBR Fale com Innkeeper Gryshka
    turnin 6384
    accept 6385
step
    note-enUS Run up to the Flight Master. Do NOT fly anywhere
    note-ptBR Vá até o mestre de voo. NÃO voe para lugar nenhum
    fp |only Scourge
    note-enUS Get the Orgrimmar flight path |only Scourge
    note-ptBR Pegue o ponto de voo de Orgrimmar |only Scourge
    note-enUS Talk to Doras
    note-ptBR Fale com Doras
    turnin 6385 |only Troll Mage
    accept 6386 |only Troll Mage
step
    goto 1454 @-4229.02,1917.48
    note-enUS Run to Grommash Hold
    note-ptBR Corra até Grommash Hold
    note-enUS Talk to Zor Lonetree
    note-ptBR Fale com Zor Lonetree
    accept 1061
step
    only Troll Mage
    goto 1413 @-2707.22,-407.62
    hearth |opt
    note-enUS Hearth to Crossroads
    note-ptBR Use a pedra de regresso para Crossroads
    note-enUS Talk to Zargh
    note-ptBR Fale com Zargh
    turnin 6386
step
    goto 1413 @-2636.28,-434.64
    note-enUS Talk to Gazrog
    note-ptBR Fale com Gazrog
    turnin 869
    accept 3281
step
    note-enUS Talk to Sergra Darkthorn
    note-ptBR Fale com Sergra Darkthorn
    turnin 903
    accept 881
step
    goto 1413 @-3001.08,443.67
    note-enUS Use the Horn of Echeyakee in your bags to summon Echeyakee. Kill him and loot him for his Hide
    note-ptBR Use o Horn of Echeyakee das suas bolsas para invocar Echeyakee. Mate-o e saqueie-o para obter o Hide
    objective 881/1
step
    goto 1413 @-2666.68,-481.94
    note-enUS Talk to Sergra Darkthorn
    note-ptBR Fale com Sergra Darkthorn
    turnin 881
    accept 905
step
    note-enUS Talk to Tonga Runetotem
    note-ptBR Fale com Tonga Runetotem
    turnin 870
    accept 877
step
    goto 1413 @-2646.42,-522.48
    note-enUS Talk to Mankrik
    note-ptBR Fale com Mankrik
    accept 899
    accept 4921
step
    goto 1413 @-2605.88,-475.18
    note-enUS Top of the tower
    note-ptBR Topo da torre
    note-enUS Talk to Darsok Swiftdagger
    note-ptBR Fale com Darsok Swiftdagger
    turnin 867
    accept 875
step
    goto 1413 @-2595.75,-427.89
    note-enUS Talk to Apothecary Helbrim
    note-ptBR Fale com Apothecary Helbrim
    turnin 848
step
    goto 1413 @-2595.75,-434.64
    fp
    note-enUS Fly to Ratchet
    note-ptBR Voe para Ratchet
step
    goto 1413 @-3761.08,-900.83
    note-enUS Talk to Sputtervalve
    note-ptBR Fale com Sputtervalve
    turnin 902
    turnin 863
    accept 1483
step
    goto 1413 @-3791.48,-981.9
    note-enUS Talk to Wharfmaster Dizzywig
    note-ptBR Fale com Wharfmaster Dizzywig
    turnin 896
step
    goto 1413 @-3700.28,-934.61
    note-enUS Talk to Mebok Mizzyrix
    note-ptBR Fale com Mebok Mizzyrix
    accept 1069
step
    goto 1413 @-3821.88,-1711.58
    note-enUS Loot the crate
    note-ptBR Saqueie o caixote
    objective 888/2
step
    goto 1413 @-3720.55,-1738.6
    note-enUS Loot the crate
    note-ptBR Saqueie o caixote
step
    path seq 1413 @-3193.62,-1927.77
    goto 1413 @-3254.42,-2029.12
    note-enUS Kill any raptors you see. Loot them for their Horns and Feathers. Be careful as they thrash
    note-ptBR Mate os raptores que vir. Saqueie-os para obter chifres e penas. Cuidado, eles usam Thrash
    objective 865/1 |opt
    note-enUS Loot the chest for Stolen Silver
    note-ptBR Saqueie o baú para obter o Stolen Silver
    note-enUS Save any Sunscale feathers you get for later
    note-ptBR Guarde as penas de Sunscale que conseguir para depois
    objective 3281/1
step
    goto 1413 @-3011.22,-1272.42
    note-enUS Collect Laden Mushrooms around The Stagnant Oasis
    note-ptBR Colete Laden Mushrooms ao redor de The Stagnant Oasis
    objective 848/1 |opt
    note-enUS Click the Bubbling Fissure underwater
    note-ptBR Clique na Bubbling Fissure debaixo d'água
    objective 877/1
step
    goto 1413 @-2742.68,-1209.59
    note-enUS Kill Centaurs. Loot them for their bracers
    note-ptBR Mate centauros. Saqueie-os para obter os braçais
    objective 855/1 |opt
    note-enUS Grind any Centaur around the lake until they spawn Verog (you'll see a Yell in chat when he spawns)
    note-ptBR Faça grind de qualquer Centauro ao redor do lago até surgir Verog (você verá um Grito no chat quando ele surgir)
    objective 851/1
step
    path closest 1413 @-3023.38,-1234.58 @-3000.07,-1208.23 @-2959.54,-1196.75 @-2953.46,-1241.34 @-2977.78,-1304.17 @-3029.46,-1324.44 @-3066.95,-1311.61 @-3059.86,-1264.31 @-3023.38,-1234.58
    note-enUS Collect Laden Mushrooms around The Stagnant Oasis
    note-ptBR Colete Laden Mushrooms ao redor de The Stagnant Oasis
    objective 848/1
step
    goto 1413 @-2707.22,-1508.89
    note-enUS Click the egg. You need the sunscale feathers from the raptors
    note-ptBR Clique no ovo. Você precisa das sunscale feathers dos raptores
    objective 905/1
step
    goto 1413 @-2697.08,-1535.91
    note-enUS Click the egg. You need the sunscale feathers from the raptors
    note-ptBR Clique no ovo. Você precisa das sunscale feathers dos raptores
    objective 905/3
step
    goto 1413 @-2646.42,-1529.16
    note-enUS Click the egg. You need the sunscale feathers from the raptors
    note-ptBR Clique no ovo. Você precisa das sunscale feathers dos raptores
    objective 905/2
step
    path seq 1413 @-3183.48,-2015.61 @-2646.42,-1529.16 @-3183.48,-2015.61 @-2646.42,-1529.16 @-3183.48,-2015.61 @-2646.42,-1529.16 @-3183.48,-2015.61
    goto 1413 @-2646.42,-1529.16 40
    note-enUS Finish killing Raptors. Loot them for their Horns
    note-ptBR Termine de matar Raptores. Saqueie-os para obter os Chifres
    objective 865/1
step
    goto 1413 @-2372.82,-1792.65
    note-enUS Talk to Mankrik's Wife
    note-ptBR Fale com a esposa de Mankrik (Mankrik's Wife)
    objective 4921/1
step
    goto 1413 @-1997.88,-2373.69
    home
    note-enUS Set your Hearthstone to Camp Taurajo
    note-ptBR Defina sua pedra de regresso em Camp Taurajo
step
    goto 1413 @-1886.42,-2387.2
    note-enUS Talk to Mangletooth
    note-ptBR Fale com Mangletooth
    accept 878
step
    goto 1413 @-1886.42,-2387.2
    fp
    note-enUS Get the Camp Taurajo flight path
    note-ptBR Pegue o ponto de voo de Camp Taurajo
    fp
    note-enUS Fly to Crossroads
    note-ptBR Voe para Crossroads
step
    goto 1413 @-2636.28,-434.64
    note-enUS Talk to Gazrog
    note-ptBR Fale com Gazrog
    turnin 3281
step
    goto 1413 @-2666.68,-481.94
    note-enUS Talk to Sergra Darkthorn
    note-ptBR Fale com Sergra Darkthorn
    turnin 905
    accept 3261
step
    note-enUS Talk to Tonga Runetotem
    note-ptBR Fale com Tonga Runetotem
    turnin 877
    accept 880
step
    goto 1413 @-2646.42,-522.48
    note-enUS Talk to Mankrik
    note-ptBR Fale com Mankrik
    turnin 4921
step
    goto 1413 @-1976.6,-308.3
    note-enUS Kill Plainstriders. Loot them for their Kidneys
    note-ptBR Mate Plainstriders. Saqueie-os para obter os rins
    objective 821/2 |opt
    note-enUS Talk to Regthar Deathgate
    note-ptBR Fale com Regthar Deathgate
    turnin 851
    accept 852
step
    ifcomplete 855
    goto 1413 @-1976.6,-308.3
    note-enUS Talk to Regthar Deathgate
    note-ptBR Fale com Regthar Deathgate
    turnin 855
step
    goto 1413 @-1976.6,-308.3
    note-enUS Talk to Regthar Deathgate
    note-ptBR Fale com Regthar Deathgate
    turnin 851
    accept 852
step
    note-enUS Kill Centaurs. Loot them for their bracers
    note-ptBR Mate centauros. Saqueie-os para obter os braçais
    objective 855/1
step
    goto 1413 @-2025.24,-1144.05
    note-enUS Hezrul patrols around the big WC lake
    note-ptBR Hezrul patrulha ao redor do grande lago de WC
    objective 852/1
step
    goto 1413 @-1974.58,-308.3
    note-enUS Talk to Regthar Deathgate
    note-ptBR Fale com Regthar Deathgate
    turnin 852
    turnin 855
step
    goto 1413 @-1974.58,-308.3
    note-enUS Talk to Regthar Deathgate
    note-ptBR Fale com Regthar Deathgate
    accept 4021
step
    goto 1413 @-1869.19,-288.71
    note-enUS This quest can be very hard to solo, if you got no one to group with consider grouping up for it or kite it near the building of the quest giver.
    note-ptBR Esta missão pode ser muito difícil sozinho. Se não tiver com quem agrupar, procure um grupo ou kite-o perto do prédio de quem dá a missão.
    note-enUS Skip this if it's too difficult
    note-ptBR Pule se estiver difícil demais
    objective 4021/1
step
    ifcomplete 4021
    goto 1413 @-1976.6,-308.98
    note-enUS Talk to Regthar Deathgate
    note-ptBR Fale com Regthar Deathgate
    turnin 4021
step
    path seq 1413 @-1410.15,443.67 @-1166.95,545.01 @-1460.82,585.55 @-1410.15,443.67 @-1166.95,545.01 @-1460.82,585.55 @-1410.15,443.67 @-1166.95,545.01 @-1460.82,585.55
    goto 1413 @-1410.15,443.67
    note-enUS Kill Witchwing Slayers. Loot them for Harpy Lieutenant Rings
    note-ptBR Mate Witchwing Slayers. Saqueie-as para obter Harpy Lieutenant Rings
    objective 875/1
step
    goto 1413 @-1572.28,-42.78
    note-enUS Kill Savannah Prowlers in the area. Loot them for their Tusks
    note-ptBR Mate Savannah Prowlers na área. Saqueie-os para obter as presas
    objective 821/1
step
    goto 1413 @-954.15,-272.49
    note-enUS Talk to Seereth Stonebreak
    note-ptBR Fale com Seereth Stonebreak
    turnin 1061
    accept 1062
    note-enUS Talk to Makaba Flathoof
    note-ptBR Fale com Makaba Flathoof
    accept 6548
]==])

register([==[
#format 1
#id forever.h.17-21-stonetalon-barrens-aoe
#name 17-21 Stonetalon/Barrens AoE
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Horde
#only Mage
#levels 17-21
#zones 1442 1413
#suffix AoE
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup Mage AoE
#subgroup-ptBR Mago AoE
#recommend Horde Mage

step
    path seq 1442 @-695.02,12.09 @-758.5,116.29 @-890.35,171.65 @-695.02,12.09 @-758.5,116.29
    goto 1442 @-890.35,171.65 50
    note-enUS Kill Grimtotems in the area
    note-ptBR Mate Grimtotems na área
    objective 6548/2
    objective 6548/1
step
    goto 1413 @-943.1,-265.13
    note-enUS Talk to Makaba Flathoof
    note-ptBR Fale com Makaba Flathoof
    turnin 6548
    accept 6629
step
    path seq 1442 @-255.52,93.5
    goto 1442 @-367.83,109.78
    note-enUS Enter the village through the Western path. Make sure you kill all 6 brutes before starting the quest inside. Kill Grundig in front of the main tent
    note-ptBR Entre na vila pelo caminho oeste. Mate todos os 6 brutos antes de começar a missão lá dentro. Mate Grundig em frente à tenda principal
    objective 6629/1
    objective 6629/2
step
    goto 1442 @-343.42,122.8
    note-enUS Start the Kaya Escort
    note-ptBR Inicie a escolta de Kaya
    note-enUS Talk to Kaya Flathoof
    note-ptBR Fale com Kaya Flathoof
    accept 6523
step
    goto 1442 @-455.73,-59.55
    note-enUS Escort Kaya and stay close to her. 3 Grimtotems will spawn at the bonfire. Eat/drink before she gets to the camp
    note-ptBR Escolte Kaya e fique perto dela. 3 Grimtotems surgirão na fogueira. Coma/beba antes que ela chegue ao acampamento
    objective 6523/1
step
    goto 1442 @-240.87,-180.03
    note-enUS Talk to Xen'Zilla
    note-ptBR Fale com Xen'Zilla
    accept 6461
step
    note-enUS Click the spider eggs near the trees
    note-ptBR Clique nos ovos de aranha perto das árvores
    objective 1069/1
step
    path seq 1442 @437.92,435.4 @574.65,575.42 @677.2,578.68 @696.73,454.94 @613.72,500.53 @574.65,575.42 @677.2,578.68 @696.73,454.94 @613.72,500.53
    goto 1442 @574.65,575.42
    note-enUS Kill the Deepmoss Spiders in the area
    note-ptBR Mate os Deepmoss Spiders na área
    objective 6461/1
    objective 6461/2
step
    goto 1442 @365.2,878.29
    note-enUS Talk to Ziz Fizziks
    note-ptBR Fale com Ziz Fizziks
    turnin 1483
    accept 1093
step
    path seq 1442 @179.1,1168.06 @232.82,1239.7 @-16.23,1441.59 @-255.52,1291.8 @-382.48,1135.5
    goto 1442 @179.1,1168.06 40
    note-enUS Kill Loggers as you search for Operators to get the Blueprints
    note-ptBR Mate Loggers enquanto procura Operators para obter os Blueprints
    objective 1062/1 |opt
    note-enUS Kill Venture Co. Operators until you get the Blueprints
    note-ptBR Mate Venture Co. Operators até obter os Blueprints
    objective 1093/1
step
    path seq 1442 @115.62,1070.37 @-338.53,1148.52 @115.62,1070.37 @-338.53,1148.52 @115.62,1070.37 @-338.53,1148.52 @115.62,1070.37
    goto 1442 @-338.53,1148.52 40
    note-enUS Finish killing Loggers
    note-ptBR Termine de matar Loggers
    objective 1062/1
step
    goto 1442 @365.2,878.29
    note-enUS Talk to Ziz Fizziks
    note-ptBR Fale com Ziz Fizziks
    turnin 1093
    accept 1094
step
    hearth
    note-enUS Hearth to Camp Taurajo
    note-ptBR Use a pedra de regresso para Camp Taurajo
step
    goto 1413 @-1926.95,-2380.44
    note-enUS Talk to Jorn Skyseer
    note-ptBR Fale com Jorn Skyseer
    turnin 3261
    accept 882
step
    note-enUS Kill Stormsnouts. Loot them for a Horn
    note-ptBR Mate Stormsnouts. Saqueie-os para obter um chifre
    objective 821/3
step
    path seq 1413 @-2443.75,-1975.07 @-2038.42,-1711.58 @-1967.48,-1934.53 @-1937.08,-1887.24 @-1866.15,-1921.02 @-2149.88,-1988.58 @-1957.35,-2056.14 @-1866.15,-1921.02 @-2149.88,-1988.58 @-1957.35,-2056.14 @-1866.15,-1921.02 @-2149.88,-1988.58 @-1957.35,-2056.14 @-1866.15,-1921.02 @-2149.88,-1988.58
    goto 1413 @-1957.35,-2056.14 50
    note-enUS Find & kill Lakota'mani (Gray Kodo) around the area. Loot his Hoof. If you can't find him, skip this quest.
    note-ptBR Encontre e mate Lakota'mani (Kodo Cinzento) pela área. Saqueie o Casco dele. Se não o encontrar, pule esta missão.
    collect 5099 1 |quest 883 |opt
    accept 883 |opt
    note-enUS Kill a LOT of Quilboars. Loot them for their tusks. Save the Blood Shards you get
    note-ptBR Mate MUITOS Quilboars. Saqueie-os para obter as presas. Guarde os Blood Shards que conseguir
    objective 878/1
    objective 878/2
    objective 878/3
    objective 899/1
step
    goto 1413 @-3001.08,-1265.66
    note-enUS Kill Plainstriders. Loot them for their Kidneys
    note-ptBR Mate Plainstriders. Saqueie-os para obter os rins
    objective 821/2 |opt
    note-enUS Go around the lake and AoE Turtles. Loot them for their Shells
    note-ptBR Contorne o lago e use AoE nas Tartarugas. Saqueie-as para obter os Cascos
    objective 880/1
step
    path seq 1413 @-3558.42,-563.01
    goto 1413 @-3446.95,-441.4
    note-enUS Kill a Zhevra in the area. Loot it for a Carcass
    note-ptBR Mate um Zhevra na área. Saqueie-o para obter uma carcaça
    collect 10338 1 |opt
    note-enUS Use the Fresh Zhevra Carcass at the dead tree to summon Ishamuhale. Kill and loot him for his Fang
    note-ptBR Use o Fresh Zhevra Carcass na árvore morta para invocar Ishamuhale. Mate-o e saqueie-o para obter o Fang
    objective 882/1
step
    note-enUS Kill Plainstriders. Loot them for their Kidneys
    note-ptBR Mate Plainstriders. Saqueie-os para obter os rins
    objective 821/2
step
    goto 1413 @-3730.68,-840.02
    note-enUS Run back to Ratchet
    note-ptBR Volte correndo para Ratchet
    note-enUS Talk to Gazlowe
    note-ptBR Fale com Gazlowe
    turnin 888
step
    goto 1413 @-3761.08,-900.83
    note-enUS Talk to Sputtervalve
    note-ptBR Fale com Sputtervalve
    turnin 1094
    accept 1095
step
    goto 1413 @-3700.28,-927.85
    note-enUS Talk to Mebok Mizzyrix
    note-ptBR Fale com Mebok Mizzyrix
    turnin 865
    turnin 1069
step
    goto 1413 @-3690.15,-981.9
    note-enUS Talk to Brewmaster Drohn
    note-ptBR Fale com Brewmaster Drohn
    turnin 821
step
    goto 1413 @-3771.22,-894.07
    fp
    note-enUS Fly to Crossroads
    note-ptBR Voe para Crossroads
step
    note-enUS Talk to Tonga Runetotem
    note-ptBR Fale com Tonga Runetotem
    turnin 880
    accept 1489
    accept 3301
step
    goto 1413 @-2646.42,-522.48
    note-enUS Talk to Mankrik
    note-ptBR Fale com Mankrik
    turnin 899
step
    goto 1413 @-2605.88,-475.18
    note-enUS Top of the tower
    note-ptBR Topo da torre
    note-enUS Talk to Darsok Swiftdagger
    note-ptBR Fale com Darsok Swiftdagger
    turnin 875
    accept 876
step
    goto 1413 @-2585.62,-427.89
    note-enUS This starts a timed quest
    note-ptBR Isto inicia uma missão com tempo
    note-enUS Talk to Apothecary Helbrim
    note-ptBR Fale com Apothecary Helbrim
    turnin 848
    accept 853
step
    goto 1413 @-2595.75,-434.64
    fp
    note-enUS Fly to Camp Taurajo
    note-ptBR Voe para Camp Taurajo
step
    goto 1413 @-2747.75,-1907.51
    note-enUS Kill Quilboars for a Blood Shard
    note-ptBR Mate Quilboars para obter um Blood Shard
    collect 5075 1
step
    goto 1413 @-1896.55,-2387.2
    note-enUS Talk to Mangletooth
    note-ptBR Fale com Mangletooth
    turnin 878
    accept 5052
    turnin 5052
step
    goto 1413 @-1916.82,-2380.44
    note-enUS Talk to Jorn Skyseer
    note-ptBR Fale com Jorn Skyseer
    turnin 882
    accept 907
    accept 1130
step
    ifonquest 883
    goto 1413 @-1916.82,-2380.44
    note-enUS Talk to Jorn Skyseer
    note-ptBR Fale com Jorn Skyseer
    turnin 883
step
    goto 1413 @-1916.82,-2380.44
    note-enUS Talk to Jorn Skyseer
    note-ptBR Fale com Jorn Skyseer
    turnin 882
    accept 907
    accept 1130
step
    path seq 1413 @-1856.02,-2583.13 @-2362.68,-2616.91 @-1683.75,-2461.52 @-2149.88,-2691.23
    goto 1413 @-2443.75,-2515.57 30
    note-enUS Search for Owatanka (Blue Thunder Lizard) around this area. If you find him, loot his Tailspike and start the quest. If you can't find him, skip this quest
    note-ptBR Procure Owatanka (Thunder Lizard azul) por esta área. Se encontrá-lo, saqueie a Tailspike dele e inicie a missão. Se não encontrar, pule esta missão
    collect 5102 1 |quest 884 |opt
    accept 884 |opt
    note-enUS Kill Thunder Lizards. Loot them for their blood
    note-ptBR Mate Thunder Lizards. Saqueie-os para obter o sangue
    objective 907/1
step
    goto 1413 @-1926.95,-2380.44
    note-enUS Talk to Jorn Skyseer
    note-ptBR Fale com Jorn Skyseer
    turnin 907
    accept 913
step
    ifonquest 884
    goto 1413 @-1926.95,-2380.44
    note-enUS Talk to Jorn Skyseer
    note-ptBR Fale com Jorn Skyseer
    turnin 884
step
    goto 1413 @-1926.95,-2380.44
    note-enUS Talk to Jorn Skyseer
    note-ptBR Fale com Jorn Skyseer
    turnin 907
    accept 913
step
    path seq 1413 @-1916.82,-2657.45 @-2139.75,-2549.35 @-1916.82,-2657.45 @-2139.75,-2549.35 @-1916.82,-2657.45
    goto 1413 @-2139.75,-2549.35 30
    note-enUS Kill a Thunderhawk. Loot it for its Wings
    note-ptBR Mate um Thunderhawk. Saqueie-o para obter as asas
    objective 913/1
step
    goto 1413 @-1916.82,-2380.44
    note-enUS Talk to Jorn Skyseer
    note-ptBR Fale com Jorn Skyseer
    turnin 913
step
    goto 1413 @-1890.47,-2391.93
    goto 1456 @182.67,-1315.51 60
    note-enUS Turn in your Blood Shards for the Spirit of the Wind buff from Mangletooth. If you accidentally sold any shards, skip this step
    note-ptBR Entregue seus Blood Shards a Mangletooth pelo bônus Spirit of the Wind. Se vendeu algum fragmento por engano, pule esta etapa
    note-enUS Talk to Mangletooth
    note-ptBR Fale com Mangletooth
    turnin 889 |opt
    note-enUS Run to the lift and take it into Thunder Bluff
    note-ptBR Corra até o elevador e suba para Thunder Bluff
step
    goto 1456 @38.48,-1300.28
    home
    note-enUS Set your Hearthstone to Thunder Bluff
    note-ptBR Defina sua pedra de regresso em Thunder Bluff
step
    goto 1456 @-125.64,-1413.06
    note-enUS Talk to Melor Stonehoof
    note-ptBR Fale com Melor Stonehoof
    turnin 1130
    accept 1131
step
    goto 1456 @276.6,-996.12
    note-enUS Go into The Pools of Vision
    note-ptBR Entre em The Pools of Vision
    note-enUS Talk to Apothecary Zamah
    note-ptBR Fale com Apothecary Zamah
    turnin 853
step
    goto 1456 @254.06,-995.78
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
    note-enUS Don't respec to AoE yet (if you've gone fire spec)
    note-ptBR Não mude a especialização para AoE ainda (se estiver com especialização de fogo)
step
    goto 1456 @220.24,-1042.75
    note-enUS Talk to Clarice Foster
    note-ptBR Fale com Clarice Foster
    accept 264
step
    goto 1456 @26.07,-1196.75
    fp
    note-enUS Get the Thunder Bluff flight path
    note-ptBR Pegue o ponto de voo de Thunder Bluff
    fp
    note-enUS Fly to Crossroads
    note-ptBR Voe para Crossroads
step
    goto 1413 @-1349.35,788.24
    note-enUS Kill Serena Bloodfeather. Loot her for her Head
    note-ptBR Mate Serena Bloodfeather. Saqueie-a para obter a cabeça dela
    objective 876/1
step
    goto 1413 @-954.15,-272.49
    note-enUS Talk to Seereth Stonebreak
    note-ptBR Fale com Seereth Stonebreak
    turnin 1062
    note-enUS Talk to Makaba Flathoof
    note-ptBR Fale com Makaba Flathoof
    turnin 6629
    turnin 6523
    accept 6401
    accept 1063
step
    goto 1442 @-235.98,-180.03
    note-enUS Talk to Xen'Zilla
    note-ptBR Fale com Xen'Zilla
    turnin 6461
step
    goto 1442 @365.2,878.29
    note-enUS Talk to Ziz Fizziks
    note-ptBR Fale com Ziz Fizziks
    turnin 1095
step
    goto 1442 @926.25,1015.02
    note-enUS Talk to Tammra Windfield
    note-ptBR Fale com Tammra Windfield
    turnin 6401
step
    goto 1442 @1042.47,968.13
    fp
    note-enUS Get the Sun Rock Retreat flight path
    note-ptBR Pegue o ponto de voo de Sun Rock Retreat
step
    goto 1456 @-213.96,-1065.01
    hearth |opt
    note-enUS Hearth to Thunder Bluff
    note-ptBR Use a pedra de regresso para Thunder Bluff
    note-enUS Talk to Magatha Grimtotem
    note-ptBR Fale com Magatha Grimtotem
    turnin 1063
    accept 1064
step
    goto 1456 @-303.93,-1048.73
    note-enUS Talk to Arch Druid Hamuul Runetotem
    note-ptBR Fale com Arch Druid Hamuul Runetotem
    turnin 1489
    accept 1490
step
    goto 1456 @-272.93,-1070.02
    note-enUS Talk to Nara Wildmane
    note-ptBR Fale com Nara Wildmane
    turnin 1490
step
    goto 1456 @276.6,-996.12
    note-enUS Talk to Apothecary Zamah
    note-ptBR Fale com Apothecary Zamah
    turnin 1064
    accept 1065
step
    goto 1456 @254.06,-995.78
    trainer
    note-enUS Train your class spells if needed
    note-ptBR Treine your class spells if needed
    note-enUS Respec to Frost AoE if you haven't already
    note-ptBR Troque para a especialização Frost AoE se ainda não trocou
step
    fp
    note-enUS Fly to The Crossroads
    note-ptBR Voe para The Crossroads
step
    goto 1413 @-2605.88,-475.18
    note-enUS Go upstairs
    note-ptBR Suba as escadas
    note-enUS Talk to Darsok Swiftdagger
    note-ptBR Fale com Darsok Swiftdagger
    turnin 876
step
    goto 1413 @-2595.75,-437.35
    fly 1454
    note-enUS Fly to Orgrimmar
    note-ptBR Voe para Orgrimmar
]==])
