-- Convertido automaticamente de RXPGuides (Horde-1-12_Mulgore.lua)
-- (c) RestedXP - CC BY-NC-SA 4.0 (ver LICENSE.txt). Não edite à mão:
-- rode tools/rxp2azimute.py de novo.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id forever.h.1-6-mulgore
#name 1-6 Mulgore
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 11
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Horde
#levels 1-6
#zone 1412
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup Speedrun 1-22
#subgroup-ptBR Rota rápida 1-22
#recommend Tauren
#next forever.h.6-12-mulgore

step
    note-enUS You have selected a guide meant for Tauren. This zone will NOT work well for you due to missing one of the main questlines that are gated for Tauren only. It is recommended you choose the same starter zone that you start in |only !Tauren
    note-ptBR Você selecionou um guia feito para Taurens. Esta zona NÃO vai funcionar bem para você, pois falta uma das principais linhas de missões exclusivas de Taurens. Recomenda-se escolher a mesma zona inicial em que você começou |only !Tauren
    note-enUS Talk to Grull Hawkwind
    note-ptBR Fale com Grull Hawkwind
    accept 747
step
    note-enUS Talk to Chief Hawkwind
    note-ptBR Fale com Chief Hawkwind
    accept 752
step
    only Warrior Shaman
    goto 1412 @-317.9,-2852.63 30 |only Warrior Shaman
    note-enUS Kill Plainstriders. Loot them until you have 10 copper worth of vendor items (including your armor) |only Warrior Shaman
    note-ptBR Mate Plainstriders. Saqueie-os até ter 10 cobres em itens para vender (incluindo sua armadura) |only Warrior Shaman
    note-enUS Talk to Kawnie Softbreeze
    note-ptBR Fale com Kawnie Softbreeze
    vendor
step
    only Warrior
    note-enUS Talk to Harutt Thunderhorn
    note-ptBR Fale com Harutt Thunderhorn
    train 6673
step
    only Shaman
    note-enUS Talk to Meela Dawnstrider
    note-ptBR Fale com Meela Dawnstrider
    train 8017
step
    note-enUS Kill Plainstriders. Loot them for their Meat and Feathers
    note-ptBR Mate Plainstriders. Saqueie-os para obter carne e penas
    objective 747/1 |opt
    objective 747/2 |opt
    note-enUS Talk to Greatmother Hawkwind
    note-ptBR Fale com Greatmother Hawkwind
    turnin 752
    accept 753
step
    note-enUS Loot the Water Pitcher on the well behind Greatmother Hawkwind
    note-ptBR Saqueie o Water Pitcher no poço atrás de Greatmother Hawkwind
    objective 753/1
step
    path closest 1412 @-385.2,-3117.38 @-532.65,-2991.68 @-573.24,-2967.71 @-564.5,-2864.96 @-440.17,-2916.33 @-371.85,-2894.41 @-303.52,-3026.27 @-292.73,-3094.77 @-385.2,-3117.38
    note-enUS Kill Plainstriders. Loot them for their Meat and Feathers
    note-ptBR Mate Plainstriders. Saqueie-os para obter carne e penas
    objective 747/1
    objective 747/2
step
    note-enUS Talk to Grull Hawkwind
    note-ptBR Fale com Grull Hawkwind
    turnin 747 |reward 1 |only Druid
    turnin 747 |only !Druid
    accept 3091 |only Warrior
    accept 3092 |only Hunter
    accept 3093 |only Shaman
    accept 3094 |only Druid
    accept 750
step
    note-enUS Talk to Kawnie Softbreeze
    note-ptBR Fale com Kawnie Softbreeze
    note-enUS Buy [Light Shots] from her |only Hunter
    note-ptBR Compre [Light Shots] dela |only Hunter
    collect 2516 1000 |quest 750 |q 750/1 |only Hunter
    vendor
step
    note-enUS Talk to Chief Hawkwind
    note-ptBR Fale com Chief Hawkwind
    turnin 753
    accept 755
step
    only Shaman
    note-enUS Talk to Marjak Keenblade. Buy a [Short Staff] from him
    note-ptBR Fale com Marjak Keenblade. Compre [Short Staff] dele
    collect 2132 1 |quest 750 |q 750/1
step
    path closest 1412 @-243.41,-3384.87 @-172,-3330.07 @-245.46,-3409.53 @-306.09,-3373.23 @-333.31,-3405.08 @-420.65,-3418.09 @-482.3,-3379.05 @-571.18,-3368.09 @-474.6,-3338.29 @-369.79,-3308.84 @-267.04,-3351.65 @-243.41,-3384.87
    note-enUS Equip the [Short Staff] |only Shaman
    note-ptBR Equipe o [Short Staff] |only Shaman
    use 2132 |only Shaman |opt
    note-enUS Kill Mountain Cougars. Loot them for their Pelts
    note-ptBR Mate Mountain Cougars. Saqueie-os para obter as peles
    objective 750/1
step
    note-enUS Talk to Seer Graytongue
    note-ptBR Fale com Seer Graytongue
    note-enUS This starts a 10-minute timed quest
    note-ptBR Isto inicia uma missão com tempo de 10 minutos
    turnin 755
    accept 757
    accept 95805
step
    path closest 1412 @-292.73,-3285.2 @-362.6,-3281.44 @-452.5,-3246.84 @-554.23,-3213.96 @-572.72,-3139.98 @-626.67,-3065.32 @-616.9,-2998.53 @-606.63,-2923.52 @-621.01,-2847.15 @-537.27,-2887.22 @-461.75,-2869.75 @-387.77,-2851.94 @-356.43,-2951.61 @-307.11,-3026.96 @-265.5,-3086.55 @-217.21,-3146.15 @-207.45,-3221.16
    level 3
step
    note-enUS Grind Plainstriders. Loot them until you have 2 silver worth of vendor items |only Warrior Druid
    note-ptBR Faça grind de Plainstriders. Saqueie-os até ter 2 de prata em itens para vender |only Warrior Druid
    note-enUS Grind Plainstriders. Loot them until you have 1 silver worth of vendor items |only !Warrior !Druid
    note-ptBR Faça grind de Plainstriders. Saqueie-os até ter 1 de prata em itens para vender |only !Warrior !Druid
    note-enUS Talk to Grull Hawkwind
    note-ptBR Fale com Grull Hawkwind
    turnin 750
    accept 780
step
    note-enUS Talk to Kawnie Softbreeze
    note-ptBR Fale com Kawnie Softbreeze
    vendor
step
    note-enUS Talk to Brave Windfeather
    note-ptBR Fale com Brave Windfeather
    note-enUS She patrols around
    note-ptBR Ela patrulha a área
    accept 3376
step
    only Warrior
    note-enUS Talk to Harutt Thunderhorn
    note-ptBR Fale com Harutt Thunderhorn
    turnin 3091
    train 100
    train 772
step
    only Warrior
    note-enUS Talk to Harutt Thunderhorn
    note-ptBR Fale com Harutt Thunderhorn
    turnin 3091
    train 772
step
    only Hunter
    note-enUS Talk to Lanka Farshot
    note-ptBR Fale com Lanka Farshot
    turnin 3092
    train 1978
step
    only Druid
    note-enUS Talk to Gart Mistrunner
    note-ptBR Fale com Gart Mistrunner
    turnin 3094
    train 8921
step
    only Shaman
    note-enUS Talk to Seer Ravenfeather
    note-ptBR Fale com Seer Ravenfeather
    accept 1519
step
    only Shaman
    note-enUS Talk to Meela Dawnstrider
    note-ptBR Fale com Meela Dawnstrider
    turnin 3093
    train 8042
step
    goto 1412 @-1005.5,-3372.7
    note-enUS Kill Battleboars. Loot them for their Flanks and Snouts
    note-ptBR Mate Battleboars. Saqueie-os para obter Flanks e Snouts
    objective 780/2 |opt
    objective 780/1 |opt
    note-enUS Click the Shrine
    note-ptBR Clique no Shrine
    note-enUS Make sure the timer does not run out
    note-ptBR Não deixe o cronômetro acabar
    turnin 95805
step
    path closest 1412 @-828.57,-3199.92 @-659.55,-2989.63 @-736.09,-3007.09 @-815.21,-3022.51 @-853.74,-3070.11 @-810.07,-3145.12 @-830.62,-3202.32 @-818.81,-3276.98 @-866.07,-3330.41 @-927.72,-3330.41 @-915.91,-3244.79 @-896.38,-3197.52 @-828.57,-3199.92
    note-enUS Kill Battleboars. Loot them for their Flanks and Snouts
    note-ptBR Mate Battleboars. Saqueie-os para obter Flanks e Snouts
    objective 780/2
    objective 780/1
step
    path seq 1412 @-1017.63,-3126.97 @-1062.33,-3048.54 @-1155.31,-3056.41
    goto 1412 @-1162.51,-2971.13 35
    note-enUS Kill Bristleback Quilboars. Loot them for their Belts
    note-ptBR Mate Bristleback Quilboars. Saqueie-os para obter os cintos
    objective 757/1 |opt
    note-enUS Kill Bristleback Shamans. Loot them for their Salves |only Shaman
    note-ptBR Mate Bristleback Shamans. Saqueie-os para obter os unguentos |only Shaman
    objective 1519/1 |only Shaman |opt
    note-enUS Kill Chief Sharptusk Thornmantle inside the big hut. Loot him for his Head
    note-ptBR Mate Chief Sharptusk Thornmantle dentro da cabana grande. Saqueie-o para obter a cabeça dele
    objective 3376/1
step
    goto 1412 @-1201.04,-3105.39 40
    note-enUS Loot the [Dirt-stained Map] on the ground. Use it to start the quest
    note-ptBR Saqueie o [Dirt-stained Map] no chão. Use-o para iniciar a missão
    collect 4851 1 |quest 781
    accept 781
    use 4851
step
    path closest 1412 @-1236.49,-2956.06 @-1230.32,-2898.18 @-1184.6,-2907.08 @-1101.88,-2917.7 @-1115.76,-2974.9 @-1164.56,-2996.48 @-1250.36,-2979.01 @-1333.59,-2948.87 @-1236.49,-2956.06
    note-enUS Kill Bristleback Shamans. Loot them for their Salves |only Shaman
    note-ptBR Mate Bristleback Shamans. Saqueie-os para obter os unguentos |only Shaman
    objective 1519/1 |only Shaman |opt
    note-enUS Kill Bristleback Quilboars. Loot them for their Belts
    note-ptBR Mate Bristleback Quilboars. Saqueie-os para obter os cintos
    objective 757/1
step
    only Shaman
    path closest 1412 @-1232.89,-3017.71 @-1226.73,-3053.33 @-1232.89,-3011.89 @-1291.46,-2964.97 @-1345.4,-2938.59 @-1339.24,-2913.59 @-1217.99,-2884.48 @-1232.89,-3017.71
    note-enUS Kill Bristleback Shamans. Loot them for their Salves
    note-ptBR Mate Bristleback Shamans. Saqueie-os para obter os unguentos
    objective 1519/1
step
    path closest 1412 @-1239.06,-3015.66 @-1256.01,-2954.35 @-1223.13,-2882.08 @-1171.75,-2879.34 @-1103.43,-2914.62 @-1122.95,-2977.98 @-1152.23,-3065.32 @-1076.71,-3040.66 @-1038.69,-3079.02 @-1087.5,-3092.38 @-1151.2,-3082.44
    level 5 |only !Shaman
    level 5 |only Shaman
step
    hearth |opt
    use 6948 |opt
    note-enUS Talk to Grull Hawkwind
    note-ptBR Fale com Grull Hawkwind
    turnin 780
step
    note-enUS Talk to Brave Windfeather
    note-ptBR Fale com Brave Windfeather
    note-enUS She patrols around
    note-ptBR Ela patrulha a área
    turnin 3376 |opt
    note-enUS Talk to Kawnie Softbreeze
    note-ptBR Fale com Kawnie Softbreeze
    vendor
step
    note-enUS Talk to Brave Windfeather
    note-ptBR Fale com Brave Windfeather
    note-enUS She patrols around
    note-ptBR Ela patrulha a área
    turnin 3376
step
    only Shaman
    note-enUS Talk to Seer Ravenfeather
    note-ptBR Fale com Seer Ravenfeather
    turnin 1519
    accept 1520
step
    note-enUS Talk to Chief Hawkwind
    note-ptBR Fale com Chief Hawkwind
    turnin 781
    turnin 757
    accept 763
    accept 96659
step
    only Shaman
    goto 1412 @-712.98,-3018.05 30 |only Shaman
    use 6635 |only Shaman |opt
    note-enUS Talk to the Manifestation
    note-ptBR Fale com a Manifestation
    turnin 1520
    accept 1521
step
    only Shaman
    note-enUS Talk to Seer Ravenfeather
    note-ptBR Fale com Seer Ravenfeather
    turnin 1521
step
    only Shaman
    note-enUS Talk to Meela Dawnstrider
    note-ptBR Fale com Meela Dawnstrider
    train 332
step
    only Hunter
    note-enUS Talk to Lanka Farshot
    note-ptBR Fale com Lanka Farshot
    train 1130
    train 3044
step
    only Hunter
    note-enUS Talk to Lanka Farshot
    note-ptBR Fale com Lanka Farshot
    train 3044
step
    only Druid
    note-enUS Talk to Gart Mistrunner
    note-ptBR Fale com Gart Mistrunner
    train 467
    train 5177
step
    only Druid
    note-enUS Talk to Gart Mistrunner
    note-ptBR Fale com Gart Mistrunner
    train 5177
step
    only Warrior
    note-enUS Talk to Harutt Thunderhorn
    note-ptBR Fale com Harutt Thunderhorn
    train 3127
    train 6343
step
    only Warrior
    note-enUS Talk to Harutt Thunderhorn
    note-ptBR Fale com Harutt Thunderhorn
    train 3127
step
    note-enUS Talk to Antur Fallow
    note-ptBR Fale com Antur Fallow
    accept 1656
]==])

register([==[
#format 1
#id forever.h.6-12-mulgore
#name 6-12 Mulgore
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 11
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Horde
#levels 6-12
#zone 1412
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup Speedrun 1-22
#subgroup-ptBR Rota rápida 1-22
#recommend Tauren
#next forever.h.12-17-the-barrens

step
    goto 1412 @-408.9,-2179.8
    note-enUS Talk to Yaw Sharpmane
    note-ptBR Fale com Yaw Sharpmane
    accept 96130
step
    note-enUS Talk to Maur
    note-ptBR Fale com Maur
    accept 766
step
    only Shaman Druid
    note-enUS Talk to Mahnott
    note-ptBR Fale com Mahnott
    vendor
step
    only Shaman Druid
    note-enUS Talk to Mahnott. Buy a [Walking Stick] from him
    note-ptBR Fale com Mahnott. Compre [Walking Stick] dele
    collect 2495 1 |quest 761 |q 761/1
step
    only Warrior
    note-enUS Talk to Mahnott
    note-ptBR Fale com Mahnott
    vendor
step
    only Warrior
    note-enUS Talk to Mahnott. Buy a [Wooden Mallet] from him
    note-ptBR Fale com Mahnott. Compre [Wooden Mallet] dele
    collect 2493 1 |quest 761 |q 761/1
step
    only Hunter
    note-enUS Talk to Kennah
    note-ptBR Fale com Kennah
    vendor
step
    only Hunter
    note-enUS Talk to Kennah. Buy a [Ornate Blunderbuss] from him
    note-ptBR Fale com Kennah. Compre [Ornate Blunderbuss] dele
    collect 2509 1 |quest 761 |q 761/1
step
    only Hunter
    note-enUS Talk to Kennah
    note-ptBR Fale com Kennah
    note-enUS Buy [Light Shots] from him |only Hunter
    note-ptBR Compre [Light Shots] dele |only Hunter
    collect 2516 1000 |quest 750 |q 750/1 |only Hunter
step
    note-enUS Equip the [Walking Stick] |only Shaman Druid
    note-ptBR Equipe o [Walking Stick] |only Shaman Druid
    use 2495 |only Shaman Druid |opt
    note-enUS Equip the [Wooden Mallet] |only Warrior
    note-ptBR Equipe o [Wooden Mallet] |only Warrior
    use 2493 |only Warrior |opt
    note-enUS Equip the [Ornate Blunderbuss] |only Hunter
    note-ptBR Equipe o [Ornate Blunderbuss] |only Hunter
    use 2509 |only Hunter |opt
    note-enUS Talk to Innkeeper Kauth
    note-ptBR Fale com Innkeeper Kauth
    turnin 1656
step
    note-enUS Talk to Innkeeper Kauth
    note-ptBR Fale com Innkeeper Kauth
    turnin 1656
    home
step
    note-enUS Talk to Baine
    note-ptBR Fale com Baine
    turnin 763
    accept 745
    accept 767
    accept 746
step
    note-enUS Talk to Zarlman
    note-ptBR Fale com Zarlman
    turnin 767
    accept 771
step
    note-enUS Talk to Harken
    note-ptBR Fale com Harken
    accept 761
step
    goto 1412 @-496.2,-2347.9
    note-enUS Talk to Krang Stonehoof
    note-ptBR Fale com Krang Stonehoof
    accept 99108
step
    goto 1412 @-521.6,-2345.4
    note-enUS Talk to a Novice Warrior, then defeat it in combat
    note-ptBR Fale com um Novice Warrior e derrote-o em combate
    objective 99108/1
step
    goto 1412 @-496.1,-2348.1
    note-enUS Talk to Krang Stonehoof
    note-ptBR Fale com Krang Stonehoof
    turnin 99108
step
    only Tauren
    note-enUS Talk to Mull
    note-ptBR Fale com Mull
    accept 748
step
    goto 1412 @-426.8,-2373.4
    note-enUS Talk to Brave Wildrunner
    note-ptBR Fale com Brave Wildrunner
    note-enUS He patrols around a bit
    note-ptBR Ele patrulha um pouco por perto
    accept 99079
step
    note-enUS Talk to Ruul
    note-ptBR Fale com Ruul
    accept 743
step
    goto 1412 @-363,-2490.7
    note-enUS Talk to Kaga Wildhoof
    note-ptBR Fale com Kaga Wildhoof
    turnin 96659
    accept 96605
step
    goto 1412 @-363,-2490.7
    note-enUS Type /sit at the campfire and wait for one minute until you get the "Camp Benefits" buff
    note-ptBR Digite /sit na fogueira e espere um minuto até receber o bônus "Camp Benefits"
    objective 96605/1
    objective 96605/2
step
    goto 1412 @-363,-2490.7
    note-enUS Talk to Kaga Wildhoof
    note-ptBR Fale com Kaga Wildhoof
    turnin 96605
    accept 96661
step
    path closest 1412 @-539.33,-2550.2 @-454.56,-2479.99 @-539.33,-2550.2 @-619.47,-2459.78 @-578.89,-2706.72 @-539.33,-2550.2
    note-enUS Get the items for Mazzranache as you quest throughout the zone
    note-ptBR Pegue os itens para Mazzranache enquanto faz missões pela zona
    objective 766/1 |opt
    objective 766/2 |opt
    objective 766/3 |opt
    objective 766/4 |opt
    note-enUS Kill Prairie Wolves and Adult Plainstriders. Loot them for their Paws and Talons |only Tauren
    note-ptBR Mate Prairie Wolves e Adult Plainstriders. Saqueie-os para obter patas e garras |only Tauren
    objective 748/1 |only Tauren |opt
    objective 748/2 |only Tauren |opt
    note-enUS Collect the Ambercorns
    note-ptBR Colete os Ambercorns
    note-enUS They can be found under the trees on the ground
    note-ptBR Podem ser encontrados no chão, debaixo das árvores
    objective 771/2
step
    only Tauren
    path closest 1412 @-562.96,-2556.02 @-575.29,-2452.24 @-664.17,-2398.47 @-725.31,-2385.46 @-812.13,-2422.79 @-852.72,-2496.77 @-830.11,-2594.38 @-778.74,-2658.43 @-640.54,-2672.81 @-541.38,-2678.64 @-448.91,-2650.89 @-314.31,-2660.14 @-447.88,-2580.34
    note-enUS Kill Swoops throughout Mulgore. Loot them for their Quills
    note-ptBR Mate Swoops por toda Mulgore. Saqueie-os para obter as penas
    objective 761/1 |opt
    note-enUS Kill Prairie Wolves and Adult Plainstriders. Loot them for their Paws and Talons
    note-ptBR Mate Prairie Wolves e Adult Plainstriders. Saqueie-os para obter patas e garras
    objective 748/1
    objective 748/2
step
    only Tauren
    note-enUS Talk to Mull
    note-ptBR Fale com Mull
    turnin 748
    accept 754
step
    only Tauren
    note-enUS Collect the Well Stones around the Well |only Tauren
    note-ptBR Colete as Well Stones ao redor do Well |only Tauren
    objective 771/1 |only Tauren |opt
    note-enUS Use the [Winterhoof Cleansing Totem] at the Well
    note-ptBR Use o [Winterhoof Cleansing Totem] no poço
    objective 754/1
step
    path closest 1412 @-729.42,-2547.12 @-692.94,-2525.88 @-710.92,-2519.37 @-725.31,-2531.36 @-729.42,-2547.12
    note-enUS Collect the Well Stones around the Well
    note-ptBR Colete as Well Stones ao redor do Well
    objective 771/1
step
    note-enUS Talk to Jhawna
    note-ptBR Fale com Jhawna
    note-enUS Buy [Ice Cold Milk] from her |only Shaman Druid
    note-ptBR Compre [Ice Cold Milk] dela |only Shaman Druid
    note-enUS Buy [Freshly Baked Bread] from her |only Warrior
    note-ptBR Compre [Freshly Baked Bread] dela |only Warrior
    vendor
    collect 1179 10 |quest 746 |q 746/1 |only Shaman Druid
    collect 4541 10 |quest 746 |q 746/1 |only Warrior
step
    only Tauren
    note-enUS Talk to Mull
    note-ptBR Fale com Mull
    turnin 754
    accept 756
step
    only Warrior
    note-enUS Talk to Vira
    note-ptBR Fale com Vira
    train 3273
step
    only Shaman Druid
    note-enUS Talk to Mahnott
    note-ptBR Fale com Mahnott
    vendor
step
    only Shaman Druid
    note-enUS Talk to Mahnott. Buy a [Walking Stick] from him
    note-ptBR Fale com Mahnott. Compre [Walking Stick] dele
    collect 2495 1 |quest 749 |q 749/1
step
    only Warrior
    note-enUS Talk to Mahnott
    note-ptBR Fale com Mahnott
    vendor
step
    only Warrior
    note-enUS Talk to Mahnott. Buy a [Wooden Mallet] from him
    note-ptBR Fale com Mahnott. Compre [Wooden Mallet] dele
    collect 2493 1 |quest 749 |q 749/1
step
    only Hunter
    note-enUS Talk to Kennah
    note-ptBR Fale com Kennah
    vendor
step
    only Hunter
    note-enUS Talk to Kennah. Buy a [Ornate Blunderbuss] from him
    note-ptBR Fale com Kennah. Compre [Ornate Blunderbuss] dele
    collect 2509 1 |quest 749 |q 749/1
step
    goto 1412 @-285,-2263.4
    note-enUS Equip the [Walking Stick] |only Shaman Druid
    note-ptBR Equipe o [Walking Stick] |only Shaman Druid
    use 2495 |only Shaman Druid |opt
    note-enUS Equip the [Wooden Mallet] |only Warrior
    note-ptBR Equipe o [Wooden Mallet] |only Warrior
    use 2493 |only Warrior |opt
    note-enUS Equip the [Ornate Blunderbuss] |only Hunter
    note-ptBR Equipe o [Ornate Blunderbuss] |only Hunter
    use 2509 |only Hunter |opt
    note-enUS Talk to Pyall
    note-ptBR Fale com Pyall
    train 2550
    turnin 96661
step
    note-enUS Talk to Zarlman
    note-ptBR Fale com Zarlman
    note-enUS Do not follow the wolf that spawns
    note-ptBR Não siga o lobo que surgir
    turnin 771
    accept 772
step
    only Hunter
    note-enUS Talk to Yaw
    note-ptBR Fale com Yaw
    train 5116
step
    only Druid
    note-enUS Talk to Gennia
    note-ptBR Fale com Gennia
    train 5186
step
    only Warrior
    note-enUS Talk to Krang
    note-ptBR Fale com Krang
    train 284
step
    only Shaman
    note-enUS Talk to Narm
    note-ptBR Fale com Narm
    train 8044
step
    path closest 1412 @-784.9,-2350.18 @-597.9,-2301.54 @-674.96,-2336.14 @-784.9,-2350.18 @-904.6,-2371.07 @-1016.6,-2410.12 @-784.9,-2350.18
    note-enUS Talk to Morin
    note-ptBR Fale com Morin
    note-enUS He patrols along the eastern road
    note-ptBR Ele patrulha pela estrada leste
    accept 749
step
    goto 1412 @-1066.4,-2325.2
    note-enUS Talk to Malah Longwind
    note-ptBR Fale com Malah Longwind
    turnin 99079
    accept 99081
step
    note-enUS Get the items for Mazzranache as you quest throughout the zone
    note-ptBR Pegue os itens para Mazzranache enquanto faz missões pela zona
    objective 766/1 |opt
    objective 766/2 |opt
    objective 766/3 |opt
    objective 766/4 |opt
    note-enUS Kill Stalkers and Cougars. Loot them for their Claws |only Tauren
    note-ptBR Mate Stalkers e Cougars. Saqueie-os para obter as garras |only Tauren
    objective 756/1 |only Tauren |opt
    objective 756/2 |only Tauren |opt
    note-enUS Kill Swoops throughout Mulgore. Loot them for their Quills
    note-ptBR Mate Swoops por toda Mulgore. Saqueie-os para obter as penas
    objective 761/1 |opt
    note-enUS Click the Sealed Supply Crate
    note-ptBR Clique na Sealed Supply Crate
    turnin 749
    accept 751
step
    only Tauren
    path closest 1412 @-936.97,-1937.47 @-752.02,-1646.34 @-335.88,-2009.39
    note-enUS Kill Stalkers and Cougars. Loot them for their Claws
    note-ptBR Mate Stalkers e Cougars. Saqueie-os para obter as garras
    objective 756/1
    objective 756/2
step
    goto 1412 @54.8,-2442.2
    note-enUS Loot Chakuyak. Loot it for its Pelt
    note-ptBR Saqueie Chakuyak. Saqueie-o para obter Pelt
    objective 96130/1
step
    path seq 1412 @297.8,-2398.5 @395.8,-2339.3
    goto 1412 @442.3,-2439.1
    note-enUS Kill Palemane Tanners, Palemane Skinners and Palemane Poachers
    note-ptBR Mate Palemane Tanners, Palemane Skinners e Palemane Poachers
    objective 745/1 |opt
    objective 745/2 |opt
    objective 745/3 |opt
    note-enUS Talk to Perith Stormhoof
    note-ptBR Fale com Perith Stormhoof
    note-enUS This starts an escort quest
    note-ptBR Isto inicia uma missão de escolta
    accept 98430
step
    goto 1412 @192.5,-2394
    note-enUS Escort Perith Stormhoof out of the cave
    note-ptBR Escolte Perith Stormhoof para fora da caverna
    objective 98430/1
step
    path closest 1412 @229.1,-2403.9 @367.9,-2364.2 @442.3,-2340.6 @450,-2407.9 @460,-2341.2 @479.7,-2345.9
    note-enUS Kill Palemane Tanners, Palemane Skinners and Palemane Poachers
    note-ptBR Mate Palemane Tanners, Palemane Skinners e Palemane Poachers
    objective 745/1
    objective 745/2
    objective 745/3
step
    goto 1412 @-408.7,-2180
    note-enUS Talk to Yaw Sharpmane
    note-ptBR Fale com Yaw Sharpmane
    turnin 96130
step
    only Hunter
    note-enUS Talk to Yaw
    note-ptBR Fale com Yaw
    train 5116
step
    ifcomplete 766
    note-enUS Talk to Maur
    note-ptBR Fale com Maur
    turnin 766
step
    only Shaman Druid
    note-enUS Talk to Mahnott
    note-ptBR Fale com Mahnott
    vendor
step
    only Shaman Druid
    note-enUS Talk to Mahnott. Buy a [Walking Stick] from him
    note-ptBR Fale com Mahnott. Compre [Walking Stick] dele
    collect 2495 1 |quest 743 |q 743/1
step
    only Warrior
    note-enUS Talk to Mahnott
    note-ptBR Fale com Mahnott
    vendor
step
    only Warrior
    note-enUS Talk to Mahnott. Buy a [Wooden Mallet] from him
    note-ptBR Fale com Mahnott. Compre [Wooden Mallet] dele
    collect 2493 1 |quest 743 |q 743/1
step
    only Hunter
    note-enUS Talk to Kennah
    note-ptBR Fale com Kennah
    vendor
step
    only Hunter
    note-enUS Talk to Kennah. Buy a [Ornate Blunderbuss] from him
    note-ptBR Fale com Kennah. Compre [Ornate Blunderbuss] dele
    collect 2509 1 |quest 743 |q 743/1
step
    only Hunter
    note-enUS Talk to Moorat
    note-ptBR Fale com Moorat
    collect 2516 1000 |quest 743 |q 743/1 |only Hunter
step
    goto 1412 @-392.5,-2318.5
    note-enUS Equip the [Walking Stick] |only Shaman Druid
    note-ptBR Equipe o [Walking Stick] |only Shaman Druid
    use 2495 |only Shaman Druid |opt
    note-enUS Equip the [Wooden Mallet] |only Warrior
    note-ptBR Equipe o [Wooden Mallet] |only Warrior
    use 2493 |only Warrior |opt
    note-enUS Equip the [Ornate Blunderbuss] |only Hunter
    note-ptBR Equipe o [Ornate Blunderbuss] |only Hunter
    use 2509 |only Hunter |opt
    note-enUS Talk to Harant
    note-ptBR Fale com Harant
    vendor |opt
    note-enUS Talk to Brave Wildrunner
    note-ptBR Fale com Brave Wildrunner
    note-enUS He patrols around a bit
    note-ptBR Ele patrulha um pouco por perto
    turnin 99081
    accept 99101
step
    goto 1412 @-392.9,-2333.6
    note-enUS Talk to Baine Bloodhoof
    note-ptBR Fale com Baine Bloodhoof
    turnin 745
    turnin 99101
    accept 99080
step
    ifcomplete 761
    note-enUS Talk to Harken
    note-ptBR Fale com Harken
    turnin 761
step
    only Tauren
    note-enUS Talk to Mull
    note-ptBR Fale com Mull
    turnin 756
    accept 758
step
    only Shaman
    note-enUS Talk to Narm
    note-ptBR Fale com Narm
    train 8044
step
    only Druid
    note-enUS Talk to Gennia
    note-ptBR Fale com Gennia
    train 5186
step
    only Warrior
    note-enUS Talk to Krang
    note-ptBR Fale com Krang
    train 284
step
    only Hunter
    note-enUS Talk to Yaw
    note-ptBR Fale com Yaw
    train 5116
step
    note-enUS Talk to Innkeeper Kauth
    note-ptBR Fale com Innkeeper Kauth
    note-enUS Buy [Ice Cold Milk] from him |only Shaman Druid
    note-ptBR Compre [Ice Cold Milk] dele |only Shaman Druid
    note-enUS Buy [Freshly Baked Bread] from him |only Warrior
    note-ptBR Compre [Freshly Baked Bread] dele |only Warrior
    vendor |only !Hunter
    collect 1179 10 |quest 746 |q 746/1 |only Shaman Druid
    collect 4541 10 |quest 746 |q 746/1 |only Warrior
step
    only Tauren
    note-enUS Finish getting the items for Mazzranache
    note-ptBR Termine de pegar os itens para Mazzranache
    objective 766/1 |opt
    objective 766/2 |opt
    objective 766/3 |opt
    objective 766/4 |opt
    note-enUS Kill Swoops throughout Mulgore. Loot them for their Quills
    note-ptBR Mate Swoops por toda Mulgore. Saqueie-os para obter as penas
    objective 761/1 |opt
    note-enUS Use the [Thunderhorn Cleansing Totem] at the Well
    note-ptBR Use o [Thunderhorn Cleansing Totem] no poço
    objective 758/1
step
    note-enUS Kill Bael'dun Diggers and Bael'dun Appraisers. Loot them for their Prospector's Picks
    note-ptBR Mate Bael'dun Diggers e Bael'dun Appraisers. Saqueie-os para obter os Prospector's Picks
    use 4702
    note-enUS Be careful as Bael'dun Appraisers cast [Lesser Heal] (Ranged Cast: Heals themselves or a nearby mob below 50% health for about 75 health)
    note-ptBR Cuidado, os Bael'dun Appraisers lançam [Lesser Heal] (Lançamento à distância: cura a si mesmos ou um mob próximo abaixo de 50% de vida em cerca de 75 de vida)
    objective 746/1
step
    path closest 1412 @417.27,-1653.53 @297.06,-1769.98 @353.57,-1744.3 @418.3,-1748.41 @451.18,-1714.5 @449.13,-1672.71 @417.27,-1653.53 @381.31,-1682.99 @323.26,-1687.44 @310.41,-1651.82 @276.51,-1684.36 @275.48,-1721.35
    note-enUS Kill Windfury Wind Witches and Windfury Harpies. Loot them for their Talons
    note-ptBR Mate Windfury Wind Witches e Windfury Harpies. Saqueie-as para obter as garras
    objective 743/1
step
    goto 1412 @333.53,-1523.73 50
    note-enUS Talk to Wiserunner
    note-ptBR Fale com Wiserunner
    turnin 772
    accept 773
step
    path seq 1456 @186.8,-1309.4 @147.9,-1290.6
    goto 1456 @104.5,-1308.4
    note-enUS Talk to Boarton Shadetotem
    note-ptBR Fale com Boarton Shadetotem
    note-enUS He is [Stealthed]
    note-ptBR Ele está [Stealthed]
    accept 76156
step
    note-enUS Talk to Innkeeper Pala
    note-ptBR Fale com Innkeeper Pala
    home
step
    path seq 1456 @186.8,-1309.4
    goto 1456 @147.9,-1290.6 30
    zone 1412 |opt
    note-enUS Finish getting the items for Mazzranache
    note-ptBR Termine de pegar os itens para Mazzranache
    objective 766/1 |opt
    objective 766/2 |opt
    objective 766/3 |opt
    objective 766/4 |opt
    note-enUS Keep an eye out for Ghost Howl. Loot him for his [Demon Scarred Cloak]. Use it to start the quest
    note-ptBR Fique atento a Ghost Howl. Saqueie-o para obter o [Demon Scarred Cloak]. Use-o para iniciar a missão
    note-enUS Be careful as Ghost Howl is difficult due to being level 12
    note-ptBR Cuidado, Ghost Howl é difícil por ser nível 12
    collect 4854 1 |quest 770 |opt
    accept 770 |opt
    use 4854 |opt
    note-enUS Kill Swoops throughout Mulgore. Loot them for their Quills
    note-ptBR Mate Swoops por toda Mulgore. Saqueie-os para obter as penas
    objective 761/1 |opt
    note-enUS Talk to Raintotem
    note-ptBR Fale com Raintotem
    accept 833
step
    note-enUS Kill Bristleback Interlopers
    note-ptBR Mate Bristleback Interlopers
    objective 833/1 |opt
    note-enUS Talk to the Ancestral Spirit
    note-ptBR Fale com o Ancestral Spirit
    turnin 773
    accept 775
step
    path closest 1412 @-1026.88,-1150.4 @-1093.15,-1058.27 @-1125.52,-1043.2 @-1146.58,-1028.13 @-1153.77,-988.4 @-1117.81,-940.79 @-1057.19,-940.79 @-1042.8,-994.22 @-1055.65,-1025.05 @-1092.12,-1056.56
    note-enUS Kill Bristleback Interlopers
    note-ptBR Mate Bristleback Interlopers
    objective 833/1
step
    note-enUS Talk to Raintotem
    note-ptBR Fale com Raintotem
    turnin 833
step
    path closest 1412 @-572.21,-903.12 @-1009.92,-1073 @-906.66,-926.41 @-788.5,-912.36 @-674.44,-866.81 @-572.21,-903.12 @-512.61,-983.26 @-511.59,-1084.3 @-496.17,-1166.84 @-506.45,-1236.71 @-561.42,-1278.84 @-635.91,-1302.81 @-737.12,-1315.14 @-836.79,-1312.4 @-920.02,-1316.86 @-972.42,-1249.73 @-1063.35,-1159.31 @-1009.92,-1073
    note-enUS Finish getting the items for Mazzranache
    note-ptBR Termine de pegar os itens para Mazzranache
    objective 766/1 |opt
    objective 766/2 |opt
    objective 766/3 |opt
    objective 766/4 |opt
    note-enUS Kill Swoops. Loot them for their Quills
    note-ptBR Mate Swoops. Saqueie-os para obter as penas
    objective 761/1
step
    path closest 1412 @-780.79,-1385.36 @-718.11,-1670.32 @-684.72,-1819.65 @-903.58,-1946.37 @-985.26,-2080.97 @-989.37,-2262.5 @-452.5,-1808.69
    note-enUS Finish getting the items for Mazzranache
    note-ptBR Termine de pegar os itens para Mazzranache
    objective 766/1
    objective 766/2
    objective 766/3
    objective 766/4
step
    ifcomplete 761
    ifcomplete 766
    path closest 1412 @-1009.92,-1073 @-906.66,-926.41 @-788.5,-912.36 @-674.44,-866.81 @-572.21,-903.12 @-512.61,-983.26 @-511.59,-1084.3 @-496.17,-1166.84 @-506.45,-1236.71 @-561.42,-1278.84 @-635.91,-1302.81 @-737.12,-1315.14 @-836.79,-1312.4 @-920.02,-1316.86 @-972.42,-1249.73 @-1063.35,-1159.31 @-1009.92,-1073
    level 9
step
    ifcomplete 761
    path closest 1412 @-1009.92,-1073 @-906.66,-926.41 @-788.5,-912.36 @-674.44,-866.81 @-572.21,-903.12 @-512.61,-983.26 @-511.59,-1084.3 @-496.17,-1166.84 @-506.45,-1236.71 @-561.42,-1278.84 @-635.91,-1302.81 @-737.12,-1315.14 @-836.79,-1312.4 @-920.02,-1316.86 @-972.42,-1249.73 @-1063.35,-1159.31 @-1009.92,-1073
    level 9
step
    ifcomplete 766
    path closest 1412 @-1009.92,-1073 @-906.66,-926.41 @-788.5,-912.36 @-674.44,-866.81 @-572.21,-903.12 @-512.61,-983.26 @-511.59,-1084.3 @-496.17,-1166.84 @-506.45,-1236.71 @-561.42,-1278.84 @-635.91,-1302.81 @-737.12,-1315.14 @-836.79,-1312.4 @-920.02,-1316.86 @-972.42,-1249.73 @-1063.35,-1159.31 @-1009.92,-1073
    level 9
step
    path closest 1412 @-1009.92,-1073 @-906.66,-926.41 @-788.5,-912.36 @-674.44,-866.81 @-572.21,-903.12 @-512.61,-983.26 @-511.59,-1084.3 @-496.17,-1166.84 @-506.45,-1236.71 @-561.42,-1278.84 @-635.91,-1302.81 @-737.12,-1315.14 @-836.79,-1312.4 @-920.02,-1316.86 @-972.42,-1249.73 @-1063.35,-1159.31 @-1009.92,-1073
    level 9
step
    ifnotturnedin 870
    goto 1412 @-598.9,-1603.7
    note-enUS Talk to Innkeeper Kauth
    note-ptBR Fale com Innkeeper Kauth
    vendor
step
    ifonquest 770
    note-enUS Talk to Skorn
    note-ptBR Fale com Skorn
    turnin 770
step
    note-enUS Talk to Skorn
    note-ptBR Fale com Skorn
    accept 861
step
    only Tauren
    ifcomplete 761
    note-enUS Talk to Baine, Ruul, Mull and Harken
    note-ptBR Fale com Baine, Ruul, Mull e Harken
    turnin 746
    turnin 743
    turnin 758
    accept 759
    turnin 761
step
    only Tauren
    note-enUS Talk to Baine, Ruul, and Mull
    note-ptBR Fale com Baine, Ruul e Mull
    turnin 746
    turnin 743
    turnin 758
    accept 759
step
    only !Tauren
    ifcomplete 761
    note-enUS Talk to Baine, Ruul and Harken
    note-ptBR Fale com Baine, Ruul e Harken
    turnin 746
    turnin 743
    turnin 761
step
    only !Tauren
    note-enUS Talk to Baine and Ruul
    note-ptBR Fale com Baine e Ruul
    turnin 746
    turnin 743
step
    only Hunter
    note-enUS Talk to Kennah
    note-ptBR Fale com Kennah
    note-enUS Buy [Heavy Shots] from him |only Hunter
    note-ptBR Compre [Heavy Shots] dele |only Hunter
    collect 2519 1000 |quest 6061 |q 6061/1 |only Hunter
step
    ifcomplete 766
    note-enUS Talk to Maur
    note-ptBR Fale com Maur
    turnin 766
step
    only Warrior
    note-enUS Talk to Krang
    note-ptBR Fale com Krang
    trainer
    accept 1505
step
    only Shaman
    note-enUS Talk to Narm
    note-ptBR Fale com Narm
    accept 2984
    trainer
step
    only Hunter
    note-enUS Talk to Yaw
    note-ptBR Fale com Yaw
    accept 6061
    trainer
step
    only Druid
    ifnotturnedin 5928
    note-enUS Talk to Gennia
    note-ptBR Fale com Gennia
    trainer
    accept 5928 |only Tauren
step
    only Druid
    note-enUS Talk to Gennia
    note-ptBR Fale com Gennia
    train 8924
step
    only Hunter
    path closest 1412 @24.77,-2239.89 @-154.53,-2152.56 @-44.59,-2177.22 @24.77,-2239.89
    use 15914
    objective 6061/1
step
    only Hunter
    note-enUS Talk to Yaw
    note-ptBR Fale com Yaw
    turnin 6061
    accept 6087
step
    only Hunter
    path closest 1412 @-494.63,-1720.66 @-375.96,-1990.55 @-348.73,-1890.2 @-427.33,-1823.41 @-494.63,-1720.66
    use 15915
    objective 6087/1
step
    only Hunter
    note-enUS Talk to Yaw
    note-ptBR Fale com Yaw
    turnin 6087
    accept 6088
step
    only Hunter
    path closest 1412 @-379.55,-1688.47 @-285.02,-1652.85 @-601.49,-1793.62
    use 15916
    note-enUS If you fail and run out of Taming Rod Charges, abandon the quest, then pick it up again and come back
    note-ptBR Se falhar e acabarem as cargas do Taming Rod, abandone a missão, pegue-a novamente e volte
    objective 6088/1
step
    only Hunter
    note-enUS Talk to Yaw
    note-ptBR Fale com Yaw
    turnin 6088
    accept 6089
step
    note-enUS Talk to Jhawna
    note-ptBR Fale com Jhawna
    note-enUS Buy [Ice Cold Milk] from her |only Shaman Druid
    note-ptBR Compre [Ice Cold Milk] dela |only Shaman Druid
    note-enUS Buy [Freshly Baked Bread] from her |only Warrior
    note-ptBR Compre [Freshly Baked Bread] dela |only Warrior
    collect 1179 20 |quest 818 |q 818/1 |only Shaman Druid
    collect 4541 20 |quest 818 |q 818/1 |only Warrior
step
    note-enUS Talk to Skorn
    note-ptBR Fale com Skorn
    accept 861
step
    path closest 1412 @-784.9,-2350.18 @-597.9,-2301.54 @-674.96,-2336.14 @-784.9,-2350.18 @-904.6,-2371.07 @-1016.6,-2410.12 @-784.9,-2350.18
    note-enUS Talk to Morin
    note-ptBR Fale com Morin
    note-enUS He patrols along the eastern road
    note-ptBR Ele patrulha pela estrada leste
    turnin 751
    accept 764
    accept 765
step
    only Hunter
    path closest 1412 @-1360.3,-2568.01 @-1403.97,-2457.38 @-1360.3,-2568.01 @-1232.89,-2544.03 @-1127.57,-2516.98 @-1117.3,-2373.13 @-1218.51,-2345.38 @-1320.23,-2306.34 @-1426.06,-2295.72
    note-enUS Kill Flatland Prowlers. Loot them for their Claws
    note-ptBR Mate Flatland Prowlers. Saqueie-os para obter as garras
    objective 861/1 |opt
    note-enUS This will allow you to train [Bite Rank 2]
    note-ptBR Isto permitirá treinar [Bite Rank 2]
step
    goto 1412 @-1246.1,-2181.7
    note-enUS Kill Prairie Wolf Alphas in the area. Loot them for their Teeth |only Tauren
    note-ptBR Mate Prairie Wolf Alphas na área. Saqueie-os para obter os dentes |only Tauren
    objective 759/1 |only Tauren |opt
    note-enUS Kill Galak Outrunners and Galak Centaurs
    note-ptBR Mate Galak Outrunners e Galak Centaurs
    objective 99080/2 |opt
    objective 99080/1 |opt
    note-enUS Kill Herak the Pillager. Loot him for his Head
    note-ptBR Mate Herak the Pillager. Saqueie-o para obter Head
    objective 99080/3
step
    path closest 1412 @-1248.7,-2265.3 @-1394.5,-2316.5 @-1188,-2216.4
    note-enUS Kill Galak Outrunners and Galak Centaurs
    note-ptBR Mate Galak Outrunners e Galak Centaurs
    objective 99080/2
    objective 99080/1
step
    only Tauren
    path closest 1412 @-1360.3,-2568.01 @-1403.97,-2457.38 @-1360.3,-2568.01 @-1232.89,-2544.03 @-1127.57,-2516.98 @-1117.3,-2373.13 @-1218.51,-2345.38 @-1320.23,-2306.34 @-1426.06,-2295.72
    note-enUS Kill Prairie Wolf Alphas in the area. Loot them for their Teeth
    note-ptBR Mate Prairie Wolf Alphas na área. Saqueie-os para obter os dentes
    objective 759/1
step
    goto 1412 @-1112.16,-1892.6 20
    note-enUS Kill Venture Co. Workers and Venture Co. Supervisors
    note-ptBR Mate Venture Co. Workers e Venture Co. Supervisors
    objective 764/1 |opt
    objective 764/2 |opt
    note-enUS Open the Blasting Supplies inside the mine and outside on the other side. Loot them for the Seaforium Mining Charges
    note-ptBR Abra os Blasting Supplies dentro da mina e fora, do outro lado. Saqueie-os para obter Seaforium Mining Charges
    note-enUS Stay on the upper levels of the cave if possible
    note-ptBR Fique nos andares superiores da caverna, se possível
    objective 76156/1 |opt
    note-enUS Kill Supervisor Fizsprocket. Loot him for his Clipboard and [Mulgore Expansion Plans]
    note-ptBR Mate Supervisor Fizsprocket. Saqueie-o para obter Clipboard e [Mulgore Expansion Plans]
    note-enUS Use the [Mulgore Expansion Plans] to start the quest
    note-ptBR Use os [Mulgore Expansion Plans] para iniciar a missão
    objective 765/1
    collect 281031 1 |quest 98424
    accept 98424
step
    goto 1412 @-1128.7,-1674.6
    note-enUS Loot the Documents on the ground
    note-ptBR Saqueie os Documents no chão
    objective 98424/1
step
    goto 1412 @-1315.8,-1672.1
    note-enUS Loot the Documents on the ground
    note-ptBR Saqueie os Documents no chão
    objective 98424/2
step
    goto 1412 @-1153.9,-1637.8
    note-enUS Loot the Documents on the ground
    note-ptBR Saqueie os Documents no chão
    objective 98424/3
step
    path closest 1412 @-1103.94,-1901.5 @-1039.72,-1911.44 @-1008.9,-1924.11 @-1018.14,-1946.03 @-1041.78,-1955.96 @-1137.85,-1942.26 @-1131.68,-1911.44
    note-enUS Kill Venture Co. Workers and Venture Co. Supervisors
    note-ptBR Mate Venture Co. Workers e Venture Co. Supervisors
    objective 764/1
    objective 764/2
step
    path closest 1412 63.77,43.97 62.81,42.81 60.38,42.78 61.64,41.33 63.51,39.29 63.39,40.8 60.99,37 59.64,36.05 61.72,35.15
    note-enUS Open the Blasting Supplies inside the mine and outside on the other side. Loot them for the Seaforium Mining Charges
    note-ptBR Abra os Blasting Supplies dentro da mina e fora, do outro lado. Saqueie-os para obter Seaforium Mining Charges
    note-enUS Stay on the upper levels of the cave if possible
    note-ptBR Fique nos andares superiores da caverna, se possível
    objective 76156/1
step
    path closest 1412 @-784.9,-2350.18 @-597.9,-2301.54 @-674.96,-2336.14 @-784.9,-2350.18 @-904.6,-2371.07 @-1016.6,-2410.12 @-784.9,-2350.18
    note-enUS Talk to Morin
    note-ptBR Fale com Morin
    note-enUS He patrols along the eastern road
    note-ptBR Ele patrulha pela estrada leste
    turnin 764
    turnin 765
    turnin 98424
step
    goto 1412 @-393.1,-2333.4
    note-enUS Talk to Baine Bloodhoof
    note-ptBR Fale com Baine Bloodhoof
    turnin 99080
    accept 99082
step
    only Tauren
    note-enUS Talk to Mull
    note-ptBR Fale com Mull
    turnin 759
    accept 760
step
    goto 1456 @104.5,-1308.4
    hearth |only !Druid |opt
    use 6948 |only !Druid |opt
    zone 1456 |only Druid |opt
    note-enUS Talk to Boarton Shadetotem
    note-ptBR Fale com Boarton Shadetotem
    note-enUS He is [Stealthed]
    note-ptBR Ele está [Stealthed]
    turnin 76156
    accept 76160
step
    only Hunter
    ifcomplete 861
    note-enUS Talk to Melor
    note-ptBR Fale com Melor
    turnin 861
    accept 860
step
    only Hunter
    ifturnedin 861
    note-enUS Talk to Melor
    note-ptBR Fale com Melor
    accept 860
step
    only Hunter
    note-enUS Talk to Holt
    note-ptBR Fale com Holt
    turnin 6089
step
    only Hunter
    note-enUS Talk to Hesuwa
    note-ptBR Fale com Hesuwa
    train 24547
step
    only Shaman Druid
    note-enUS Drag [Beast Training] onto your Action Bars. Teach skills to your pet |only Hunter
    note-ptBR Arraste [Beast Training] para suas barras de ação. Ensine habilidades ao seu mascote |only Hunter
    note-enUS Talk to Ansekhwa
    note-ptBR Fale com Ansekhwa
    train 199
step
    only Hunter
    note-enUS Talk to Ansekhwa
    note-ptBR Fale com Ansekhwa
    train 227
step
    note-enUS Talk to Eyahn
    note-ptBR Fale com Eyahn
    accept 744
step
    ifcomplete 99082
    note-enUS Talk to Cairne
    note-ptBR Fale com Cairne
    turnin 775
    accept 776
    turnin 99082
    turnin 98430
step
    note-enUS Talk to Cairne
    note-ptBR Fale com Cairne
    turnin 775
    accept 776
    turnin 98430
step
    only Tauren Druid
    note-enUS Talk to Hamuul Runetotem
    note-ptBR Fale com Hamuul Runetotem
    accept 886
step
    only Tauren Druid
    ifonquest 5928
    goto 1456 @-230.66,-1059.79 80 |only Tauren Druid
    note-enUS Talk to Turak
    note-ptBR Fale com Turak
    turnin 5928
    accept 5922
step
    only Tauren Druid
    note-enUS Talk to Turak
    note-ptBR Fale com Turak
    accept 5922
step
    only Tauren Druid
    note-enUS Talk to Dendrite
    note-ptBR Fale com Dendrite
    turnin 5922
    accept 5930
step
    only Tauren Druid
    note-enUS Talk to the Great Bear Spirit
    note-ptBR Fale com o Great Bear Spirit
    objective 5930/1
step
    only Tauren Druid
    note-enUS Talk to Dendrite
    note-ptBR Fale com Dendrite
    turnin 5930
    accept 5932
step
    only Tauren Druid
    hearth |only Tauren Druid |opt
    use 6948 |only Tauren Druid |opt
    note-enUS Talk to Bunthen |only Tauren Druid
    note-ptBR Fale com Bunthen |only Tauren Druid
    fly 1456 |only Tauren Druid |opt
    note-enUS Talk to Turak
    note-ptBR Fale com Turak
    turnin 5932
    accept 6002
step
    only Hunter
    note-enUS Talk to Kaga
    note-ptBR Fale com Kaga
    note-enUS Buy [Tough Jerky] from her to feed your pet
    note-ptBR Compre [Tough Jerky] dela para alimentar seu mascote
    collect 117 5 |quest 744 |q 744/1
step
    path closest 1456 @186.8,-1309.4 @147.9,-1290.6
    path closest 1412 @419.33,-1238.77 @496.39,-940.79 @419.33,-1238.77 @496.39,-940.79
    zone 1412 |opt
    note-enUS Keep an eye out for Ghost Howl. Loot him for his [Demon Scarred Cloak]. Use it to start the quest
    note-ptBR Fique atento a Ghost Howl. Saqueie-o para obter o [Demon Scarred Cloak]. Use-o para iniciar a missão
    note-enUS Skip this step if you're unable to find him
    note-ptBR Pule este passo se não conseguir encontrá-lo
    collect 4854 1 |quest 770 |opt
    accept 770 |opt
    use 4854 |opt
    note-enUS Kill Flatland Prowlers. Loot them for their Claws
    note-ptBR Mate Flatland Prowlers. Saqueie-os para obter as garras
    objective 861/1 |opt
    note-enUS Loot Windfury Cones on the ground
    note-ptBR Saqueie os Windfury Cones no chão
    note-enUS They are mainly found underneath/near the trees
    note-ptBR Ficam principalmente embaixo ou perto das árvores
    collect 206170 8 |quest 76160 |q 76160/1 |opt
    note-enUS Kill Windfury Sorceresses. Loot them for their Azure Feathers
    note-ptBR Mate Windfury Sorceresses. Saqueie-as para obter Azure Feathers
    note-enUS Kill Windfury Matriarchs. Loot them for their Bronze Feathers
    note-ptBR Mate Windfury Matriarchs. Saqueie-as para obter Bronze Feathers
    objective 744/1
    objective 744/2
step
    path closest 1412 @460,-1055.7 @517.8,-1163.9 @530,-1074.1 @593.2,-1003.2 @460,-1055.7
    note-enUS Loot Windfury Cones on the ground
    note-ptBR Saqueie os Windfury Cones no chão
    note-enUS They are mainly found underneath/near the trees
    note-ptBR Ficam principalmente embaixo ou perto das árvores
    collect 206170 8 |quest 76160 |q 76160/1
step
    only Tauren
    use 5416
    objective 760/1
step
    path closest 1412 @-654.41,-690.77 @-448.91,-824.34 @-613.31,-1430.57 @-839.36,-1399.74
    note-enUS Kill Arra'Chea (Big black kodo). Kill and loot him for his Horn
    note-ptBR Mate Arra'Chea (kodo grande e preto). Mate e saqueie-o para obter o chifre dele
    note-enUS He patrols clockwise around Northern Mulgore
    note-ptBR Ele patrulha em sentido horário pelo norte de Mulgore
    objective 776/1
step
    path closest 1412 @-201.28,-648.3 @12.44,-730.15 @140.88,-849.69 @-241.87,-868.52 @-454.05,-987.03
    note-enUS Kill Flatland Prowlers. Loot them for their Claws
    note-ptBR Mate Flatland Prowlers. Saqueie-os para obter as garras
    objective 861/1
step
    ifdungeon RFC
    zone 1456 |opt
    note-enUS Talk to Rahauro
    note-ptBR Fale com Rahauro
    accept 5722
    accept 5723
step
    ifcomplete 776
    note-enUS Talk to Cairne
    note-ptBR Fale com Cairne
    turnin 776
step
    note-enUS Talk to Eyahn
    note-ptBR Fale com Eyahn
    turnin 744
step
    goto 1456 39.45,65.86
    note-enUS Talk to Boarton Shadetotem
    note-ptBR Fale com Boarton Shadetotem
    note-enUS He is [Stealthed]
    note-ptBR Ele está [Stealthed]
    turnin 76160
    accept 76240
step
    note-enUS Use the [Knife Set] to create [Fish Chunks]
    note-ptBR Use o [Knife Set] para criar [Fish Chunks]
    objective 76240/1
    use 206344
step
    goto 1456 39.45,65.86
    note-enUS Talk to Boarton Shadetotem
    note-ptBR Fale com Boarton Shadetotem
    note-enUS He is [Stealthed]
    note-ptBR Ele está [Stealthed]
    turnin 76240
step
    note-enUS Talk to Melor
    note-ptBR Fale com Melor
    turnin 861
    accept 860
step
    ifonquest 770
    path seq 1456 @-141.4,-1432.7
    goto 1456 @-161.3,-1454.2 10
    zone 1412 |opt
    note-enUS Follow the arrow precisely to avoid dying. Regain some health before the second jump
    note-ptBR Siga a seta com precisão para não morrer. Recupere um pouco de vida antes do segundo pulo
    note-enUS Talk to Skorn
    note-ptBR Fale com Skorn
    turnin 770
step
    only Tauren
    note-enUS Talk to Mull
    note-ptBR Fale com Mull
    turnin 760
step
    only Shaman
    note-enUS Talk to Narm
    note-ptBR Fale com Narm
    train 547
step
    only Druid
    note-enUS Talk to Gennia
    note-ptBR Fale com Gennia
    train 8936
step
    only Warrior
    note-enUS Talk to Krang
    note-ptBR Fale com Krang
    train 7384
step
    only Hunter
    note-enUS Talk to Yaw
    note-ptBR Fale com Yaw
    train 14281
step
    only Tauren Druid
    goto 1412 @-1527.78,-2341.62 100
    zone 1413 |opt
    use 15710
    note-enUS Kill Lunaclaw as he spawns. Talk to the Lunaclaw Spirit afterwards
    note-ptBR Mate Lunaclaw quando ele aparecer. Depois fale com o Lunaclaw Spirit
    note-enUS Be careful! Lunaclaw casts [Thrash] (Charges 2 extra attacks every 10 seconds)
    note-ptBR Cuidado! Lunaclaw lança [Thrash] (Carrega 2 ataques extras a cada 10 segundos)
    note-enUS Steer clear of the Thunderheads in the area
    note-ptBR Mantenha distância dos Thunderheads da área
    objective 6002/1
step
    only !Druid
    ifnotturnedin 848
    note-enUS Talk to Omusa
    note-ptBR Fale com Omusa
    fp
step
    only Druid
    ifnotturnedin 848
    note-enUS Talk to Omusa
    note-ptBR Fale com Omusa
    fp
    fly 1456 |only Tauren
step
    only Tauren Druid
    goto 1456 @-230.66,-1059.79 80 |only Tauren Druid
    note-enUS Talk to Turak
    note-ptBR Fale com Turak
    turnin 6002
step
    only Tauren Druid
    goto 1456 47,49.82
    note-enUS Talk to Tal
    note-ptBR Fale com Tal
    fp
step
    only Tauren
    note-enUS Talk to Kirge Sternhorn
    note-ptBR Fale com Kirge Sternhorn
    accept 854
step
    note-enUS Talk to Tonga
    note-ptBR Fale com Tonga
    turnin 886 |only Tauren Druid
    accept 870
step
    note-enUS Talk to Sergra
    note-ptBR Fale com Sergra
    turnin 860
    accept 844
step
    note-enUS Talk to Thork
    note-ptBR Fale com Thork
    turnin 854 |only Tauren
    accept 871
    accept 5041
step
    note-enUS Talk to Darsok
    note-ptBR Fale com Darsok
    note-enUS He is at the top of the tower
    note-ptBR Ele está no topo da torre
    accept 867
step
    note-enUS Talk to Helbrim
    note-ptBR Fale com Helbrim
    accept 848
    accept 1492
step
    note-enUS Talk to Jahan
    note-ptBR Fale com Jahan
    accept 6361
step
    note-enUS Talk to Devrak
    note-ptBR Fale com Devrak
    note-enUS Do NOT fly anywhere!
    note-ptBR NÃO voe para lugar nenhum!
    turnin 6361
    accept 6362
step
    note-enUS Talk to Gazrog
    note-ptBR Fale com Gazrog
    accept 869
step
    only Shaman
    note-enUS Check for Chen's Empty Keg next to Kranal. Loot it and start the quest |only Shaman
    note-ptBR Procure o Chen's Empty Keg ao lado de Kranal. Saqueie-o e inicie a missão |only Shaman
    note-enUS You can get it later if it's not there |only Shaman
    note-ptBR Você pode pegá-lo depois se não estiver lá |only Shaman
    collect 4926 1 |quest 819 |only Shaman |opt
    accept 819 |only Shaman |opt
    use 4926 |only Shaman |opt
    note-enUS Talk to Kranal
    note-ptBR Fale com Kranal
    turnin 2984
    accept 1524
step
    only Shaman
    path seq 1411 @-3905.13,-228.41 @-3899.31,-241.45 @-3906.71,-270.71 @-3910.94,-247.45 @-3931.56,-240.75 @-3964.35,-242.51 @-3974.39,-228.76 @-4020.92,-219.95 @-4034.67,-232.64 |only Shaman
    goto 1411 @-4033.08,-255.91 10 |only Shaman
    note-enUS Be careful to not fall of the mountain, the path is very narrow. You could die if you fall |only Shaman
    note-ptBR Cuidado para não cair da montanha, o caminho é muito estreito. Você pode morrer se cair |only Shaman
    note-enUS Talk to Telf
    note-ptBR Fale com Telf
    turnin 1524
    accept 1525
step
    only Warrior
    note-enUS Talk to Uzzek
    note-ptBR Fale com Uzzek
    turnin 1505
    accept 1498
step
    only Warrior
    path closest 1411 @-4042.6,812.52 @-4030.44,724.04 @-4042.6,812.52 @-4030.44,875.62 @-4045.25,925.32 @-4077.5,960.22 @-4210.22,952.11 @-4042.6,812.52
    note-enUS Kill Lightning Hides. Loot them for their Scales
    note-ptBR Mate Lightning Hides. Saqueie-os para obter as escamas
    objective 1498/1
step
    only Warrior
    note-enUS Talk to Uzzek
    note-ptBR Fale com Uzzek
    turnin 1498
    accept 1502
]==])
