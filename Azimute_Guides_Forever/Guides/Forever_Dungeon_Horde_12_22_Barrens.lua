-- Convertido automaticamente de RXPGuides (Dungeon Horde-12-22_Barrens.lua)
-- (c) RestedXP - CC BY-NC-SA 4.0 (ver LICENSE.txt). Não edite à mão:
-- rode tools/rxp2azimute.py de novo.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id forever.dg.h.12-17-the-barrens
#name 12-17 The Barrens (dungeons)
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 11
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Horde
#levels 12-17
#zone 1413
#name-ptBR 12-17 The Barrens (masmorras)
#group Leveling with dungeons (Horde)
#group-ptBR Evolução com masmorras (Horda)
#subgroup Speedrun 1-22
#subgroup-ptBR Rota rápida 1-22
#next forever.dg.h.17-22-stonetalon-barrens-ashenvale

step
    only Tauren Shaman
    goto 1411 @-4648.55,271.43
    note-enUS Talk to Takrin
    note-ptBR Fale com Takrin
    accept 840
step
    only Tauren Shaman
    path closest 1411 @-4834.14,418.07 @-4754.3,796.66 |only Tauren Shaman
    path closest 1411 @-4706.71,902.41 @-4774.39,780.8 @-4749.01,822.39 @-4767.52,825.92 @-4772.28,848.12 @-4756.41,863.63 @-4715.7,861.87 @-4706.71,902.41
    note-enUS Kill Cultists. Loot them for a Reagent Pouch
    note-ptBR Mate Cultists. Saqueie-os para obter uma Reagent Pouch
    objective 1525/2
step
    only Tauren Shaman
    goto 1413 @-3687.11,303.14
    note-enUS Talk to Kargal
    note-ptBR Fale com Kargal
    turnin 840
    accept 842
step
    only Tauren Warrior
    path seq 1413 @-2902.79,-276.55 @-3004.12,-298.17 |only Tauren Warrior
    goto 1413 @-3110.52,-320.46 30 |only Tauren Warrior
    goto 1413 @-3176.39,-437.35
    note-enUS Talk to Thun'grim
    note-ptBR Fale com Thun'grim
    turnin 1502
    accept 1503
step
    only Tauren Warrior
    goto 1413 @-2955.48,-188.04
    note-enUS Loot the Stolen Iron Chest for its Forged Steel Bars
    note-ptBR Saqueie o Stolen Iron Chest para obter as Forged Steel Bars
    objective 1503/1
step
    only Tauren Warrior
    path seq 1413 @-2902.79,-276.55 @-3004.12,-298.17 |only Tauren Warrior
    goto 1413 @-3110.52,-320.46 30 |only Tauren Warrior
    goto 1413 @-3176.39,-437.35
    note-enUS Talk to Thun'grim
    note-ptBR Fale com Thun'grim
    turnin 1503
step
    only !Tauren
    goto 1413 @-2516.71,-590.71 |only !Tauren
    goto 1413 @-2672.76,-544.77
    note-enUS Talk to Tonga
    note-ptBR Fale com Tonga
    accept 870
step
    only !Tauren
    ifonquest 842
    goto 1413 @-2670.74,-482.61
    note-enUS Talk to Sergra
    note-ptBR Fale com Sergra
    turnin 842 |only !Druid
    accept 844
step
    only !Tauren
    goto 1413 @-2670.74,-482.61
    note-enUS Talk to Sergra
    note-ptBR Fale com Sergra
    accept 844
step
    only !Tauren
    goto 1413 @-2595.75,-473.15
    note-enUS Talk to Thork
    note-ptBR Fale com Thork
    accept 871
    accept 5041
step
    only Scourge Skyborne
    ifnotturnedin 1492
    goto 1413 @-2595.75,-437.35
    note-enUS Talk to Devrak
    note-ptBR Fale com Devrak
    fp
step
    ifonquest 1358
    goto 1413 @-2589.67,-424.51
    note-enUS Talk to Helbrim
    note-ptBR Fale com Helbrim
    accept 1492
    accept 848
    turnin 1358 |only !Tauren !Skyborne !Shaman !Hunter
step
    goto 1413 @-2589.67,-424.51
    note-enUS Talk to Helbrim
    note-ptBR Fale com Helbrim
    accept 1492
    accept 848
step
    only Orc Hunter Troll Hunter
    goto 1413 @-2556.23,-351.54
    note-enUS Talk to Uthrok. Buy a [Laminated Recurve Bow] from him
    note-ptBR Fale com Uthrok. Compre [Laminated Recurve Bow] dele
    collect 2507 1 |quest 871 |q 871/1
step
    only Tauren Hunter
    goto 1413 @-2556.23,-351.54
    note-enUS Equip the [Laminated Recurve Bow] |only Orc Hunter Troll Hunter
    note-ptBR Equipe o [Laminated Recurve Bow] |only Orc Hunter Troll Hunter
    use 2507 |only Orc Hunter Troll Hunter |opt
    note-enUS Talk to Uthrok. Buy a [Hunter's Boomstick] from him
    note-ptBR Fale com Uthrok. Compre [Hunter's Boomstick] dele
    collect 2511 1 |quest 871 |q 871/1
step
    only !Tauren
    goto 1413 @-2639.32,-436
    note-enUS Equip the [Hunter's Boomstick] |only Tauren Hunter
    note-ptBR Equipe o [Hunter's Boomstick] |only Tauren Hunter
    use 2511 |only Tauren Hunter |opt
    note-enUS Talk to Gazrog
    note-ptBR Fale com Gazrog
    accept 869
step
    only !Tauren
    ifnotturnedin 1492
    goto 1413 @-2645.4,-406.94
    note-enUS Talk to Innkeeper Boorand
    note-ptBR Fale com Innkeeper Boorand
    home
step
    only Orc Troll
    goto 1413 @-2709.24,-403.57
    note-enUS Talk to Zargh
    note-ptBR Fale com Zargh
    accept 6365
step
    only !Tauren !Scourge !Skyborne
    ifonquest 924
    path seq 1413 @-2554.2,80.18 @-2477.19,136.26 @-2363.7,232.87 |only !Tauren !Scourge !Skyborne
    goto 1413 @-2205.62,314.62 100 |only !Tauren !Scourge !Skyborne
    goto 1413 @-2238.04,324.08
    note-enUS Kill Plainstriders. Loot them for their Beaks
    note-ptBR Mate Plainstriders. Saqueie-os para obter os bicos
    objective 844/1 |opt
    note-enUS Right click the Altar
    note-ptBR Clique com o botão direito no Altar
    note-enUS Make sure you have a [Flawed Power Stone] (30 minute duration) on you
    note-ptBR Tenha uma [Flawed Power Stone] (duração de 30 minutos) com você
    collect 4986 1 |quest 924
    objective 924/1
step
    only Shaman
    path seq 1413 @-2947.38,-92.1 @-2869.35,-49.54
    goto 1413 @-2805.51,-111.02
    note-enUS Kill a Razormane Water Seeker or Razormane Thornweaver. Loot them for a Fire Tar
    note-ptBR Mate um Razormane Water Seeker ou Razormane Thornweaver. Saqueie-o para obter um Fire Tar
    objective 1525/1
step
    goto 1413 @-3021.35,-231.96
    note-enUS Kill Water Seekers, Thornweavers and Hunters
    note-ptBR Mate Water Seekers, Thornweavers e Hunters
    objective 871/1 |opt
    objective 871/2 |opt
    objective 871/3 |opt
    use 4926
    note-enUS You can get it later if it's not there
    note-ptBR Você pode pegá-lo depois se não estiver lá
    collect 4926 1 |quest 819
    accept 819
step
    path closest 1413 @-2811.59,-42.78 @-2875.43,-52.24 @-2931.16,-89.4 @-3001.08,-117.78 @-3037.56,-164.39 @-3034.52,-221.82 @-2991.96,-239.39 @-2899.75,-209.66 @-2854.15,-151.56 @-2799.43,-92.78
    note-enUS Kill Water Seekers, Thornweavers and Hunters
    note-ptBR Mate Water Seekers, Thornweavers e Hunters
    objective 871/1
    objective 871/2
    objective 871/3
step
    path closest 1413 @-2819.7,-359.65 @-2784.23,-163.04 @-2771.06,-306.95 @-2805.51,-386 @-2738.63,-610.31 @-2576.5,-610.98 @-2494.42,-485.32 @-2448.82,-398.84 @-2537.99,-260.33 @-2730.52,-273.17 @-2819.7,-359.65
    note-enUS Kill every Raptor you see. Loot them for their Heads
    note-ptBR Mate todos os Raptors que vir. Saqueie-os para obter as cabeças
    objective 869/1 |opt
    note-enUS Kill Plainstriders. Loot them for their Beaks
    note-ptBR Mate Plainstriders. Saqueie-os para obter os bicos
    objective 844/1
step
    path seq 1413 @-2670.74,-482.61
    goto 1413 @-2595.75,-473.15
    note-enUS Talk to Sergra and Thork
    note-ptBR Fale com Sergra e Thork
    turnin 842 |only Tauren Shaman
    turnin 844
    accept 845
    turnin 871
    accept 872
step
    only Tauren Shaman
    path seq 1413 @-2670.74,-482.61
    goto 1413 @-2595.75,-473.15
    note-enUS Talk to Sergra and Thork
    note-ptBR Fale com Sergra e Thork
    turnin 844
    accept 845
    turnin 871
    accept 872
step
    goto 1413 @-2607.91,-475.18
    note-enUS Talk to Darsok
    note-ptBR Fale com Darsok
    note-enUS He is at the top of the tower
    note-ptBR Ele está no topo da torre
    accept 867
step
    only Orc Troll
    goto 1413 @-2595.75,-437.35
    note-enUS Talk to Devrak
    note-ptBR Fale com Devrak
    note-enUS Do NOT fly to Orgrimmar!
    note-ptBR NÃO voe para Orgrimmar!
    fp
    turnin 6365
    accept 6384
step
    only Orc Hunter Troll Hunter
    goto 1413 @-2556.23,-351.54
    note-enUS Talk to Uthrok. Buy a [Laminated Recurve Bow] from him
    note-ptBR Fale com Uthrok. Compre [Laminated Recurve Bow] dele
    collect 2507 1 |quest 871 |q 871/1
step
    only Tauren Hunter
    goto 1413 @-2556.23,-351.54
    note-enUS Talk to Uthrok. Buy a [Hunter's Boomstick] from him
    note-ptBR Fale com Uthrok. Compre [Hunter's Boomstick] dele
    collect 2511 1 |quest 871 |q 871/1
step
    only Tauren
    ifdungeon RFC
    goto 1413 @-2697.08,-461.67 |only Orc Warrior Troll Warrior Tauren Warrior
    goto 1413 @-2595.75,-437.35 |only !Scourge !Tauren
    path seq 1413 @-3021.35,-231.96
    goto 1413 @-3029.46,261.25
    vendor |only Orc Warrior Troll Warrior Tauren Warrior |opt
    note-enUS Talk to Devrak |only !Scourge !Tauren
    note-ptBR Fale com Devrak |only !Scourge !Tauren
    fly 1454 |only !Scourge !Tauren |opt
    use 4926
    note-enUS You can get it later if it's not there
    note-ptBR Você pode pegá-lo depois se não estiver lá
    collect 4926 1 |quest 819
    accept 819
step
    only Tauren
    ifdungeon RFC
    path seq 1413 @-3127.75,-55.62 |only Tauren
    goto 1413 @-3382.1,-54.27 50 |only Tauren
    goto 1413 @-3324.34,-217.09
    note-enUS Kill Razormane Geomancers and Razormane Defenders |only Tauren
    note-ptBR Mate Razormane Geomancers e Razormane Defenders |only Tauren
    objective 872/1 |only Tauren |opt
    objective 872/2 |only Tauren |opt
    note-enUS Loot the Crossroads' Supply Crates |only Tauren
    note-ptBR Saqueie os Crossroads' Supply Crates |only Tauren
    note-enUS It has multiple spawn locations |only Tauren
    note-ptBR Tem vários locais de spawn |only Tauren
    objective 5041/1 |only Tauren |opt
    note-enUS Kill Kreenig Snarlsnout. Loot him for his Tusk
    note-ptBR Mate Kreenig Snarlsnout. Saqueie-o para obter a presa dele
    objective 872/3
step
    only Tauren
    ifdungeon RFC
    path seq 1413 @-3127.75,-55.62 |only Tauren
    goto 1413 @-3382.1,-54.27 50 |only Tauren
    path seq 1413 @-3292.92,-212.36
    goto 1413 @-3402.36,-48.19
    note-enUS Kill Razormane Geomancers and Razormane Defenders |only Tauren
    note-ptBR Mate Razormane Geomancers e Razormane Defenders |only Tauren
    objective 872/1 |only Tauren |opt
    objective 872/2 |only Tauren |opt
    note-enUS Loot the Crossroads' Supply Crates
    note-ptBR Saqueie os Crossroads' Supply Crates
    note-enUS It has multiple spawn locations
    note-ptBR Tem vários locais de spawn
    objective 5041/1
step
    only Tauren
    ifdungeon RFC
    path closest 1413 @-3345.62,-101.56 @-3393.24,-102.24 @-3419.59,-40.08 @-3419.59,-0.89 @-3361.83,-1.57 @-3317.24,-7.65 @-3237.19,-27.92 @-3139.91,-46.16 @-3126.74,-101.56 @-3178.42,-107.64 @-3205.78,-119.13 @-3218.95,-81.97 @-3278.74,-75.21 @-3345.62,-101.56
    note-enUS Kill Razormane Geomancers and Razormane Defenders
    note-ptBR Mate Razormane Geomancers e Razormane Defenders
    objective 872/1
    objective 872/2
step
    only Tauren Shaman
    ifdungeon RFC
    path seq 1411 @-3905.13,-228.41 @-3899.31,-241.45 @-3906.71,-270.71 @-3910.94,-247.45 @-3931.56,-240.75 @-3964.35,-242.51 @-3974.39,-228.76 @-4020.92,-219.95 @-4034.67,-232.64 |only Tauren Shaman
    goto 1411 @-4033.08,-255.91 10 |only Tauren Shaman
    goto 1411 @-3999.24,-268.95
    note-enUS Kill any Zhevra you see. Loot them for their Hooves |only Tauren
    note-ptBR Mate os Zhevras que vir. Saqueie-os para obter os cascos |only Tauren
    objective 845/1 |only Tauren |opt
    note-enUS Talk to Telf
    note-ptBR Fale com Telf
    turnin 1525
    accept 1526
step
    only Tauren Shaman
    ifdungeon RFC
    goto 1411 @-3981.27,-256.61 |only Tauren Shaman
    goto 1411 @-4022.51,-243.92
    use 6636 |only Tauren Shaman |opt
    note-enUS Kill the Minor Manifestation of Fire. Loot him for a Glowing Ember
    note-ptBR Mate a Minor Manifestation of Fire. Saqueie-a para obter uma Glowing Ember
    objective 1526/1
step
    only Tauren Shaman
    ifdungeon RFC
    goto 1411 @-4022.51,-243.92
    note-enUS Click the Brazier on the ground
    note-ptBR Clique no Brazier no chão
    turnin 1526
    accept 1527
step
    only Tauren Shaman
    ifdungeon RFC
    goto 1413 @-3037.56,264.63
    note-enUS Talk to Kranal
    note-ptBR Fale com Kranal
    turnin 1527
step
    only Tauren Shaman
    ifdungeon RFC
    goto 1413 @-3029.46,261.25
    use 4926
    note-enUS Wait for the respawn if it's not up
    note-ptBR Espere reaparecer se não estiver lá
    collect 4926 1 |quest 819
    accept 819
step
    only Tauren
    ifnotturnedin 5728
    ifdungeon RFC
    goto 1454 @-4367.46,1405.44 50 |only Tauren
    goto 1454 @-4313.6,1676.24
    zone 1454 |only Tauren |opt
    note-enUS Talk to Doras
    note-ptBR Fale com Doras
    note-enUS Don't fly anywhere!
    note-ptBR Não voe para lugar nenhum!
    fp
step
    only !Scourge
    ifdungeon RFC
    goto 1454 @-4125.79,1920.1
    note-enUS Talk to Thrall
    note-ptBR Fale com Thrall
    accept 5726
step
    only !Scourge
    ifdungeon RFC
    goto 1411 @-4769.1,1484.39
    note-enUS Kill Burning Blade mobs in Skull Rock until Lieutenant's Insignia drops
    note-ptBR Mate mobs Burning Blade em Skull Rock até Lieutenant's Insignia dropar
    objective 5726/1
step
    only !Scourge
    ifdungeon RFC
    goto 1454 @-4125.79,1920.1
    note-enUS Talk to Thrall
    note-ptBR Fale com Thrall
    turnin 5726
    accept 5727
step
    only !Scourge
    ifdungeon RFC
    goto 1454 @-4376.29,1802.43
    note-enUS Talk to Neeru Fireblade
    note-ptBR Fale com Neeru Fireblade
    accept 5761
step
    only !Scourge
    ifdungeon RFC
    goto 1454 @-4376.29,1802.43
    note-enUS Talk to Neeru Fireblade
    note-ptBR Fale com Neeru Fireblade
    objective 5727/1
step
    only !Scourge
    ifdungeon RFC
    goto 1454 @-4125.79,1920.1
    note-enUS Talk to Thrall
    note-ptBR Fale com Thrall
    turnin 5727
    accept 5728
step
    only !Scourge
    ifdungeon RFC
    goto 1454 @-4420.76,1815.8
step
    only !Scourge
    ifdungeon RFC
    note-enUS If possible, have party members share the following quests
    note-ptBR Se possível, peça aos membros do grupo que compartilhem as seguintes missões
    accept 5722
    accept 5723
step
    only !Scourge
    ifonquest 5722
    ifdungeon RFC
    note-enUS Kill Ragefire Troggs and Ragefire Shamans |only !Scourge
    note-ptBR Mate Ragefire Troggs e Ragefire Shamans |only !Scourge
    objective 5723/1 |only !Scourge |opt
    objective 5723/2 |only !Scourge |opt
    note-enUS Talk to Maur
    note-ptBR Fale com Maur
    turnin 5722
    accept 5724
step
    only !Scourge
    ifturnedin 5722
    ifdungeon RFC
    note-enUS Talk to Maur
    note-ptBR Fale com Maur
    accept 5724
step
    only !Scourge
    ifonquest 5723
    ifdungeon RFC
    note-enUS Kill Ragefire Troggs and Ragefire Shamans
    note-ptBR Mate Ragefire Troggs e Ragefire Shamans
    objective 5723/1
    objective 5723/2
step
    only !Scourge
    ifonquest 5761
    ifdungeon RFC
    note-enUS Kill Searing Blade Cultists and Searing Blade Warlocks. Loot them for the Spells of Shadow and Incantations from the Nether |only !Scourge
    note-ptBR Mate Searing Blade Cultists e Searing Blade Warlocks. Saqueie-os para obter Spells of Shadow e Incantations from the Nether |only !Scourge
    objective 5725/1 |only !Scourge |opt
    objective 5725/2 |only !Scourge |opt
    note-enUS Kill Taragaman the Hungerer. Loot him for his Heart
    note-ptBR Mate Taragaman the Hungerer. Saqueie-o para obter Heart
    objective 5761/1
step
    only !Scourge
    ifonquest 5728
    ifdungeon RFC
    note-enUS Kill Bazzalan and Jergosh the Invoker
    note-ptBR Mate Bazzalan e Jergosh the Invoker
    objective 5728/1
    objective 5728/2
step
    only !Scourge
    ifonquest 5725
    ifdungeon RFC
    note-enUS Kill Searing Blade Cultists and Searing Blade Warlocks. Loot them for the Spells of Shadow and Incantations from the Nether
    note-ptBR Mate Searing Blade Cultists e Searing Blade Warlocks. Saqueie-os para obter Spells of Shadow e Incantations from the Nether
    objective 5725/1
    objective 5725/2
step
    only !Scourge
    ifcomplete 5761
    ifdungeon RFC
    goto 1454 @-4376.29,1802.43
    note-enUS Talk to Neeru Fireblade
    note-ptBR Fale com Neeru Fireblade
    turnin 5761
step
    only !Scourge
    ifcomplete 5728
    ifdungeon RFC
    goto 1454 @-4125.79,1920.1
    note-enUS Talk to Thrall
    note-ptBR Fale com Thrall
    turnin 5728
    accept 5729
step
    only !Scourge
    ifturnedin 5728
    ifdungeon RFC
    goto 1454 @-4125.79,1920.1
    note-enUS Talk to Thrall
    note-ptBR Fale com Thrall
    accept 5729
step
    only !Scourge
    ifdungeon RFC
    ifturnedin 5728
    goto 1454 @-4376.29,1802.43
    note-enUS Talk to Neeru Fireblade
    note-ptBR Fale com Neeru Fireblade
    turnin 5729
    accept 5730
step
    only !Scourge
    ifturnedin 5728
    ifdungeon RFC
    goto 1454 @-4125.79,1920.1
    note-enUS Talk to Thrall
    note-ptBR Fale com Thrall
    turnin 5730
step
    only Tauren Orc Warrior Troll Warrior Orc Shaman Troll Shaman
    ifonquest 5724
    ifcomplete 5723
    ifdungeon RFC
    goto 1413 @-2595.75,-437.35 |only Orc Warrior Troll Warrior Orc Shaman Troll Shaman
    goto 1456 @-212.71,-1065.01 80 |only Tauren Orc Warrior Troll Warrior Orc Shaman Troll Shaman
    goto 1456 @-218.13,-1055.97
    note-enUS Talk to Doras |only Tauren
    note-ptBR Fale com Doras |only Tauren
    fly 1456 |only Tauren |opt
    hearth |only !Tauren |opt
    use 6948 |only !Tauren |opt
    note-enUS Talk to Devrak |only Orc Warrior Troll Warrior Orc Shaman Troll Shaman
    note-ptBR Fale com Devrak |only Orc Warrior Troll Warrior Orc Shaman Troll Shaman
    fly 1456 |only Orc Warrior Troll Warrior Orc Shaman Troll Shaman |opt
    note-enUS Talk to Rahauro
    note-ptBR Fale com Rahauro
    turnin 5724
    turnin 5723
step
    only Tauren Orc Warrior Troll Warrior Orc Shaman Troll Shaman
    ifonquest 5724
    ifdungeon RFC
    goto 1456 @-218.13,-1055.97
    note-enUS Talk to Rahauro
    note-ptBR Fale com Rahauro
    turnin 5724
step
    only Tauren Orc Warrior Troll Warrior Orc Shaman Troll Shaman
    ifcomplete 5723
    ifdungeon RFC
    goto 1456 @-218.13,-1055.97
    note-enUS Talk to Rahauro
    note-ptBR Fale com Rahauro
    turnin 5723
step
    goto 1456 @26.1,-1196.66
    path seq 1413 @-3021.35,-231.96
    goto 1413 @-3029.46,261.25
    hearth |opt
    use 6948 |opt
    note-enUS Talk to Tal
    note-ptBR Fale com Tal
    fp |opt
    use 4926
    note-enUS Wait for the respawn if it's not up
    note-ptBR Espere reaparecer se não estiver lá
    collect 4926 1 |quest 819
    accept 819
step
    path seq 1413 @-3127.75,-55.62 @-3382.1,-54.27
    goto 1413 @-3324.34,-217.09
    note-enUS Kill Razormane Geomancers and Razormane Defenders
    note-ptBR Mate Razormane Geomancers e Razormane Defenders
    objective 872/1 |opt
    objective 872/2 |opt
    note-enUS Loot the Crossroads' Supply Crates
    note-ptBR Saqueie os Crossroads' Supply Crates
    note-enUS It has multiple spawn locations
    note-ptBR Tem vários locais de spawn
    objective 5041/1 |opt
    note-enUS Kill Kreenig Snarlsnout. Loot him for his Tusk
    note-ptBR Mate Kreenig Snarlsnout. Saqueie-o para obter a presa dele
    objective 872/3
step
    path closest 1413 @-3127.75,-55.62 @-3382.1,-54.27 @-3292.92,-212.36 @-3402.36,-48.19 @-3292.92,-212.36 @-3402.36,-48.19
    note-enUS Kill Razormane Geomancers and Razormane Defenders
    note-ptBR Mate Razormane Geomancers e Razormane Defenders
    objective 872/1 |opt
    objective 872/2 |opt
    note-enUS Loot the Crossroads' Supply Crates
    note-ptBR Saqueie os Crossroads' Supply Crates
    note-enUS It has multiple spawn locations
    note-ptBR Tem vários locais de spawn
    objective 5041/1
step
    path closest 1413 @-3345.62,-101.56 @-3393.24,-102.24 @-3419.59,-40.08 @-3419.59,-0.89 @-3361.83,-1.57 @-3317.24,-7.65 @-3237.19,-27.92 @-3139.91,-46.16 @-3126.74,-101.56 @-3178.42,-107.64 @-3205.78,-119.13 @-3218.95,-81.97 @-3278.74,-75.21 @-3345.62,-101.56
    note-enUS Kill Razormane Geomancers and Razormane Defenders
    note-ptBR Mate Razormane Geomancers e Razormane Defenders
    objective 872/1
    objective 872/2
step
    only !Tauren !Scourge
    ifcomplete 924
    goto 1413 @-3694.2,256.52
    note-enUS Kill any Zhevra you see. Loot them for their Hooves |only !Tauren !Scourge
    note-ptBR Mate os Zhevras que vir. Saqueie-os para obter os cascos |only !Tauren !Scourge
    objective 845/1 |only !Tauren !Scourge |opt
    note-enUS Talk to Ak'Zeloth
    note-ptBR Fale com Ak'Zeloth
    turnin 924
step
    only Shaman
    path seq 1411 @-3905.13,-228.41 @-3899.31,-241.45 @-3906.71,-270.71 @-3910.94,-247.45 @-3931.56,-240.75 @-3964.35,-242.51 @-3974.39,-228.76 @-4020.92,-219.95 @-4034.67,-232.64 |only Shaman
    goto 1411 @-4033.08,-255.91 10 |only Shaman
    goto 1411 @-3999.24,-268.95
    note-enUS Kill every Raptor you see. Loot them for their Heads |only Shaman
    note-ptBR Mate todos os Raptors que vir. Saqueie-os para obter as cabeças |only Shaman
    objective 869/1 |only Shaman |opt
    note-enUS Kill any Zhevra you see. Loot them for their Hooves |only Shaman
    note-ptBR Mate os Zhevras que vir. Saqueie-os para obter os cascos |only Shaman
    objective 845/1 |only Shaman |opt
    zone 1411 |only Shaman |opt
    note-enUS Talk to Telf
    note-ptBR Fale com Telf
    turnin 1525
    accept 1526
step
    only Shaman
    goto 1411 @-3981.27,-256.61 |only Shaman
    goto 1411 @-4022.51,-243.92
    use 6636 |only Shaman |opt
    note-enUS Kill the Minor Manifestation of Fire. Loot him for a Glowing Ember
    note-ptBR Mate a Minor Manifestation of Fire. Saqueie-a para obter uma Glowing Ember
    objective 1526/1
step
    only Shaman
    goto 1411 @-4022.51,-243.92
    note-enUS Click the Brazier on the ground
    note-ptBR Clique no Brazier no chão
    turnin 1526
    accept 1527
step
    only Shaman
    goto 1413 @-3037.56,264.63
    note-enUS Kill every Raptor you see. Loot them for their Heads |only Shaman
    note-ptBR Mate todos os Raptors que vir. Saqueie-os para obter as cabeças |only Shaman
    objective 869/1 |only Shaman |opt
    note-enUS Kill any Zhevra you see. Loot them for their Hooves |only Shaman
    note-ptBR Mate os Zhevras que vir. Saqueie-os para obter os cascos |only Shaman
    objective 845/1 |only Shaman |opt
    note-enUS Talk to Kranal
    note-ptBR Fale com Kranal
    turnin 1527
step
    only Shaman
    goto 1413 @-3029.46,261.25
    use 4926
    note-enUS Wait for the respawn if it's not up
    note-ptBR Espere reaparecer se não estiver lá
    collect 4926 1 |quest 819
    accept 819
step
    ifonquest 845
    path seq 1413 @-3851.27,-526.53
    goto 1413 @-3728.66,-835.29
    note-enUS Kill Zhevra Runners. Loot them for their Hooves
    note-ptBR Mate Zhevra Runners. Saqueie-os para obter os cascos
    objective 845/1 |opt
step
    goto 1413 @-3728.66,-835.29
    note-enUS Talk to Gazlowe
    note-ptBR Fale com Gazlowe
    accept 887
step
    path seq 1413 @-3770.2,-898.12 @-3759.06,-902.18
    goto 1413 @-3719.54,-919.07
    note-enUS Talk to Bragok
    note-ptBR Fale com Bragok
    fp |opt
    note-enUS Talk to Sputtervalve and the Wanted Poster
    note-ptBR Fale com Sputtervalve e com o Wanted Poster
    accept 894
    accept 895
step
    only Scourge Warrior
    goto 1413 @-3684.07,-919.74
    note-enUS Talk to Ironzar. Buy a [Espadon] from him
    note-ptBR Fale com Ironzar. Compre [Espadon] dele
    collect 2024 1 |quest 895 |q 895/1
step
    only Troll Warrior
    goto 1413 @-3684.07,-919.74
    note-enUS Equip the [Espadon] when you are level 16 |only Scourge Warrior
    note-ptBR Equipe o [Espadon] quando estiver no nível 16 |only Scourge Warrior
    use 2024 |only Scourge Warrior |opt
    note-enUS Equip the [Espadon] |only Scourge Warrior
    note-ptBR Equipe o [Espadon] |only Scourge Warrior
    use 2024 |only Scourge Warrior |opt
    note-enUS Talk to Ironzar. Buy a [Gnarled Staff] from him
    note-ptBR Fale com Ironzar. Compre [Gnarled Staff] dele
    collect 2030 1 |quest 850 |q 850/1
step
    only Orc Warrior
    goto 1413 @-3684.07,-919.74
    note-enUS Equip the [Gnarled Staff] |only Troll Warrior
    note-ptBR Equipe o [Gnarled Staff] |only Troll Warrior
    use 2030 |only Troll Warrior |opt
    note-enUS Talk to Ironzar. Buy a [Bearded Axe] from him
    note-ptBR Fale com Ironzar. Compre [Bearded Axe] dele
    collect 2025 1 |quest 850 |q 850/1
step
    only Tauren Warrior
    goto 1413 @-3684.07,-919.74
    note-enUS Equip the [Bearded Axe] |only Orc Warrior
    note-ptBR Equipe o [Bearded Axe] |only Orc Warrior
    use 2025 |only Orc Warrior |opt
    note-enUS Talk to Ironzar. Buy a [Rock Hammer] from him
    note-ptBR Fale com Ironzar. Compre [Rock Hammer] dele
    collect 2026 1 |quest 850 |q 850/1
step
    only Shaman
    goto 1413 @-3684.07,-919.74
    note-enUS Equip the [Rock Hammer] when you are level 16 |only Tauren Warrior
    note-ptBR Equipe o [Rock Hammer] quando estiver no nível 16 |only Tauren Warrior
    use 2026 |only Tauren Warrior |opt
    note-enUS Equip the [Rock Hammer] |only Tauren Warrior
    note-ptBR Equipe o [Rock Hammer] |only Tauren Warrior
    use 2026 |only Tauren Warrior |opt
    note-enUS Talk to Ironzar. Buy a [Gnarled Staff] from him
    note-ptBR Fale com Ironzar. Compre [Gnarled Staff] dele
    collect 2030 1 |quest 895 |q 895/1
step
    only Rogue
    goto 1413 @-3684.07,-919.74
    note-enUS Equip the [Gnarled Staff] |only Shaman
    note-ptBR Equipe o [Gnarled Staff] |only Shaman
    use 2030 |only Shaman |opt
    note-enUS Talk to Ironzar. Buy a [Scimitar] from him
    note-ptBR Fale com Ironzar. Compre [Scimitar] dele
    collect 2027 1 |quest 895 |q 895/1
step
    only Rogue
    goto 1413 @-3684.07,-919.74
    note-enUS Equip the [Scimitar] |only Rogue
    note-ptBR Equipe a [Scimitar] |only Rogue
    use 2027 |only Rogue |opt
    note-enUS Talk to Ironzar. Buy a second [Scimitar] from him for your off-hand
    note-ptBR Fale com Ironzar. Compre uma segunda [Scimitar] dele para a mão secundária
    collect 2027 2 |quest 895 |q 895/1
step
    goto 1413 @-3687.11,-981.22
    note-enUS Talk to Drohn
    note-ptBR Fale com Drohn
    turnin 819
    accept 821
step
    ifonquest 887
    goto 1413 @-3664.82,-1050.14
    note-enUS Talk to Innkeeper Wiley
    note-ptBR Fale com Innkeeper Wiley
    note-enUS Buy [Longjaw Mud Snappers] from him
    note-ptBR Compre [Longjaw Mud Snappers] dele
    note-enUS Buy [Melon Juice] from him |only Mage Warlock Priest Shaman Druid
    note-ptBR Compre [Melon Juice] dele |only Mage Warlock Priest Shaman Druid
    note-enUS [Longjaw Mud Snappers] are extremely cheap, buy as many as you want
    note-ptBR [Longjaw Mud Snappers] são extremamente baratos, compre quantos quiser
    vendor
    collect 4592 20 |quest 895 |q 895/1
    collect 1205 10 |quest 895 |q 895/1 |only Mage Warlock Priest Shaman Druid
step
    path closest 1413 @-3883.7,-1572.4 @-3818.84,-1707.52 @-3724.6,-1746.71 @-3883.7,-1572.4 @-3818.84,-1707.52 @-3724.6,-1746.71
    note-enUS Kill Southsea Brigands and Southsea Cannoneers
    note-ptBR Mate Southsea Brigands e Southsea Cannoneers
    objective 887/1 |opt
    objective 887/2 |opt
    note-enUS Kill Tazan. Loot him for his Satchel |only Orc Rogue Troll Rogue
    note-ptBR Mate Tazan. Saqueie-o para obter a bolsa dele |only Orc Rogue Troll Rogue
    note-enUS He patrols up and down the hill |only Orc Rogue Troll Rogue
    note-ptBR Ele patrulha subindo e descendo a colina |only Orc Rogue Troll Rogue
    objective 1963/1 |only Orc Rogue Troll Rogue |opt
    note-enUS Kill Baron Longshore. Loot him for his Head
    note-ptBR Mate Baron Longshore. Saqueie-o para obter a cabeça dele
    note-enUS He can be found in one of the camps
    note-ptBR Ele pode ser encontrado em um dos acampamentos
    objective 895/1
step
    path closest 1413 @-3885.72,-1569.69 @-3902.95,-1366.33 @-3823.91,-1512.94 @-3885.72,-1569.69
    note-enUS Kill Southsea Brigands and Southsea Cannoneers
    note-ptBR Mate Southsea Brigands e Southsea Cannoneers
    objective 887/1
    objective 887/2
step
    only Orc Rogue Troll Rogue
    path seq 1413 @-3832.02,-1381.87 @-3730.68,-1364.98
    goto 1413 @-3677.99,-1392
    note-enUS Kill Tazan. Loot him for his Satchel
    note-ptBR Mate Tazan. Saqueie-o para obter a bolsa dele
    note-enUS He patrols up and down the hill
    note-ptBR Ele patrulha subindo e descendo a colina
    objective 1963/1
step
    goto 1413 @-3728.66,-835.29
    note-enUS Talk to Gazlowe
    note-ptBR Fale com Gazlowe
    turnin 887
    turnin 895
    accept 890
step
    goto 1413 @-3796.55,-985.28
    note-enUS Talk to Dizzywig
    note-ptBR Fale com Dizzywig
    turnin 1492
    turnin 890
    accept 892
    accept 896
step
    goto 1413 @-3728.66,-835.29
    note-enUS Talk to Gazlowe
    note-ptBR Fale com Gazlowe
    turnin 892
    accept 888
step
    only Scourge Warrior
    goto 1413 @-3684.07,-919.74
    note-enUS Talk to Ironzar. Buy a [Espadon] from him
    note-ptBR Fale com Ironzar. Compre [Espadon] dele
    collect 2024 1 |quest 850 |q 850/1
step
    only Troll Warrior
    goto 1413 @-3684.07,-919.74
    note-enUS Equip the [Espadon] when you are level 16 |only Scourge Warrior
    note-ptBR Equipe o [Espadon] quando estiver no nível 16 |only Scourge Warrior
    use 2024 |only Scourge Warrior |opt
    note-enUS Equip the [Espadon] |only Scourge Warrior
    note-ptBR Equipe o [Espadon] |only Scourge Warrior
    use 2024 |only Scourge Warrior |opt
    note-enUS Talk to Ironzar. Buy a [Gnarled Staff] from him
    note-ptBR Fale com Ironzar. Compre [Gnarled Staff] dele
    collect 2030 1 |quest 850 |q 850/1
step
    only Orc Warrior
    goto 1413 @-3684.07,-919.74
    note-enUS Equip the [Gnarled Staff] |only Troll Warrior
    note-ptBR Equipe o [Gnarled Staff] |only Troll Warrior
    use 2030 |only Troll Warrior |opt
    note-enUS Talk to Ironzar. Buy a [Bearded Axe] from him
    note-ptBR Fale com Ironzar. Compre [Bearded Axe] dele
    collect 2025 1 |quest 850 |q 850/1
step
    only Tauren Warrior
    goto 1413 @-3684.07,-919.74
    note-enUS Equip the [Bearded Axe] |only Orc Warrior
    note-ptBR Equipe o [Bearded Axe] |only Orc Warrior
    use 2025 |only Orc Warrior |opt
    note-enUS Talk to Ironzar. Buy a [Rock Hammer] from him
    note-ptBR Fale com Ironzar. Compre [Rock Hammer] dele
    collect 2026 1 |quest 850 |q 850/1
step
    only Shaman
    goto 1413 @-3684.07,-919.74
    note-enUS Equip the [Rock Hammer] when you are level 16 |only Tauren Warrior
    note-ptBR Equipe o [Rock Hammer] quando estiver no nível 16 |only Tauren Warrior
    use 2026 |only Tauren Warrior |opt
    note-enUS Equip the [Rock Hammer] |only Tauren Warrior
    note-ptBR Equipe o [Rock Hammer] |only Tauren Warrior
    use 2026 |only Tauren Warrior |opt
    note-enUS Talk to Ironzar. Buy a [Gnarled Staff] from him
    note-ptBR Fale com Ironzar. Compre [Gnarled Staff] dele
    collect 2030 1 |quest 850 |q 850/1
step
    only Rogue
    goto 1413 @-3684.07,-919.74
    note-enUS Equip the [Gnarled Staff] |only Shaman
    note-ptBR Equipe o [Gnarled Staff] |only Shaman
    use 2030 |only Shaman |opt
    note-enUS Talk to Ironzar. Buy a [Scimitar] from him
    note-ptBR Fale com Ironzar. Compre [Scimitar] dele
    collect 2027 1 |quest 850 |q 850/1
step
    only Rogue
    goto 1413 @-3684.07,-919.74
    note-enUS Equip the [Scimitar] |only Rogue
    note-ptBR Equipe a [Scimitar] |only Rogue
    use 2027 |only Rogue |opt
    note-enUS Talk to Ironzar. Buy a second [Scimitar] from him for your off-hand
    note-ptBR Fale com Ironzar. Compre uma segunda [Scimitar] dele para a mão secundária
    collect 2027 2 |quest 850 |q 850/1
step
    path closest 1413 @-3770.2,-898.12 @-2977.78,-942.71 @-2274.52,-870.42 @-2977.78,-942.71 @-2832.87,-990.01 @-2710.26,-959.6 @-2392.07,-900.83 @-2274.52,-870.42
    note-enUS Talk to Bragok
    note-ptBR Fale com Bragok
    fp |opt
    note-enUS Kill every Raptor you see. Loot them for their Heads
    note-ptBR Mate todos os Raptors que vir. Saqueie-os para obter as cabeças
    objective 869/1 |opt
    note-enUS Finish killing Zhevras. Loot them for their Hooves
    note-ptBR Termine de matar Zhevras. Saqueie-as para obter os Cascos
    objective 845/1
step
    path seq 1413 @-2595.75,-473.15
    goto 1413 @-2669.72,-481.94
    note-enUS Talk to Thork and Sergra
    note-ptBR Fale com Thork e Sergra
    turnin 5041
    turnin 872
    turnin 845
    accept 903
step
    only Troll Hunter Orc Hunter
    goto 1413 @-2612.98,-411
    note-enUS Talk to Barg
    note-ptBR Fale com Barg
    note-enUS Buy [Sharp Arrows] from him
    note-ptBR Compre [Sharp Arrows] dele
    collect 2515 1200 |quest 850 |q 850/1 |only Hunter
step
    only Tauren Hunter
    goto 1413 @-2612.98,-411
    note-enUS Talk to Barg
    note-ptBR Fale com Barg
    note-enUS Buy [Heavy Shots] from him
    note-ptBR Compre [Heavy Shots] dele
    collect 2519 1000 |quest 850 |q 850/1 |only Hunter
step
    only Troll Hunter Orc Hunter
    ifonquest 903
    goto 1413 @-2556.23,-351.54
    note-enUS Talk to Uthrok
    note-ptBR Fale com Uthrok
    vendor
    note-enUS If it's not up, buy a [Reinforced Bow] instead
    note-ptBR Se não estiver disponível, compre um [Reinforced Bow]
    collect 2515 1200 |quest 870 |q 870/1 |only Hunter
step
    only Tauren Hunter
    goto 1413 @-2556.23,-351.54
    note-enUS Talk to Uthrok. Buy a [Hunter's Boomstick] from him
    note-ptBR Fale com Uthrok. Compre [Hunter's Boomstick] dele
    collect 2511 1 |quest 871 |q 871/1
step
    goto 1413 @-1972.55,-306.95
    note-enUS Kill Plainstriders. Loot them for their Kidneys
    note-ptBR Mate Plainstriders. Saqueie-os para obter os rins
    objective 821/2 |opt
    note-enUS Kill every Raptor you see. Loot them for their Heads
    note-ptBR Mate todos os Raptors que vir. Saqueie-os para obter as cabeças
    objective 869/1 |opt
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    accept 850
    accept 855
step
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    accept 850
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
    ifturnedin 850
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    accept 851
step
    path closest 1413 @-1594.58,30.19 @-1562.15,-29.94 @-1483.11,66.67 @-1531.75,180.85 @-1462.84,214.63
    note-enUS Kill every Raptor you see. Loot them for their Heads
    note-ptBR Mate todos os Raptors que vir. Saqueie-os para obter as cabeças
    note-enUS This quest does not have to be completed now
    note-ptBR Esta missão não precisa ser concluída agora
    objective 869/1 |opt
    note-enUS Kill Savannah Prowlers. Loot them for their Claws and Tusks
    note-ptBR Mate Savannah Prowlers. Saqueie-os para obter garras e presas
    objective 903/1
    objective 821/1
step
    path closest 1413 @-1616.87,611.9 @-1583.43,322.73 @-1513.51,380.84 @-1526.68,477.45 @-1555.06,545.69 @-1553.03,615.95 @-1616.87,611.9
    note-enUS Kill Witchwing Harpies and Witchwing Roguefeathers. Loot them for their Talons
    note-ptBR Mate Witchwing Harpies e Witchwing Roguefeathers. Saqueie-as para obter as garras
    objective 867/1
step
    ifdungeon RFC
    abandon 5723
step
    ifdungeon RFC
    abandon 5725
step
    ifdungeon RFC
    abandon 5728
step
    ifdungeon RFC
    abandon 5761
step
    goto 1413 @-1815.48,786.89
    note-enUS Be careful of Sunscale Scytheclaws in the area. They are up to level 18 and can [Thrash]
    note-ptBR Cuidado com os Sunscale Scytheclaws na área. Eles vão até o nível 18 e podem usar [Thrash]
    note-enUS Kill Plainstriders. Loot them for their Kidneys
    note-ptBR Mate Plainstriders. Saqueie-os para obter os rins
    objective 821/2 |opt
    note-enUS Talk to Vrang
    note-ptBR Fale com Vrang
    note-enUS Vrang sells [Heavy Spiked Mace] which is a limited supply item |only Orc Warrior Troll Warrior Tauren Warrior
    note-ptBR Vrang vende [Heavy Spiked Mace], que é um item de estoque limitado |only Orc Warrior Troll Warrior Tauren Warrior
    vendor
step
    goto 1413 @-2686.95,825.4
    note-enUS Click on the Control Console
    note-ptBR Clique no Control Console
    turnin 894
    accept 900
step
    goto 1413 @-2679.86,830.8
    note-enUS Click the Valve
    note-ptBR Clique na Valve
    note-enUS Be careful! Two mobs will spawn after you shut off the Valve
    note-ptBR Cuidado! Dois mobs surgirão depois que você fechar a Valve
    objective 900/2
step
    goto 1413 @-2675.8,842.29
    note-enUS Click the Valve
    note-ptBR Clique na Valve
    note-enUS One mob will spawn after you shut off the Valve
    note-ptBR Um inimigo aparecerá depois que você fechar a válvula
    objective 900/3
step
    goto 1413 @-2686.95,842.29
    note-enUS Click the Valve
    note-ptBR Clique na Valve
    objective 900/1
step
    goto 1413 @-2686.95,825.4
    note-enUS Click the Control Console
    note-ptBR Clique no Control Console
    turnin 900
    accept 901
step
    goto 1413 @-2731.54,909.85
    note-enUS Kill Tinkerer Sniggles in the building. Loot him for his Console Key
    note-ptBR Mate Tinkerer Sniggles no edifício. Saqueie-o para obter a Console Key dele
    objective 901/1
step
    goto 1413 @-2686.95,825.4
    note-enUS Click the Control Console
    note-ptBR Clique no Control Console
    turnin 901
    accept 902
step
    path closest 1413 @-2879.48,781.48 @-2909.88,484.21 @-1693.88,592.31
    note-enUS Kill Plainstriders. Loot them for their Kidneys
    note-ptBR Mate Plainstriders. Saqueie-os para obter os rins
    objective 821/2 |opt
    note-enUS Kill Raptors. Loot them for their Heads
    note-ptBR Mate Raptors. Saqueie-os para obter as cabeças
    objective 869/1
step
    goto 1413 @-3102.42,1105.78
    note-enUS Grinding to level 16 here is important, due to the next 3 quests being quite hard
    note-ptBR Fazer grind até o nível 16 aqui é importante, pois as próximas 3 missões são bem difíceis
    level 16
step
    goto 1413 @-3104.44,1109.16
    note-enUS Talk to Wizzlecrank's Shredder in The Sludge Ven
    note-ptBR Fale com Wizzlecrank's Shredder em The Sludge Ven
    note-enUS Wizzlecrank's Shredder has a long respawn timer. Consider skipping this quest if there is a lot of competition
    note-ptBR O Wizzlecrank's Shredder demora a reaparecer. Considere pular esta missão se houver muita concorrência
    accept 858
step
    ifonquest 858
    path seq 1413 @-3104.44,1040.25 @-3086.2,1055.78 @-3063.91,1049.7 @-3056.82,1038.89 @-3064.92,1034.16
    goto 1413 @-3086.2,1055.78
    note-enUS Be careful if Foreman Grills or Sludge Beast is up. They are strong level 19 rare mobs
    note-ptBR Cuidado se Foreman Grills ou Sludge Beast estiverem presentes. São mobs raros fortes de nível 19
    note-enUS Kill Supervisor Lugwizzle. Loot him for his Key
    note-ptBR Mate Supervisor Lugwizzle. Saqueie-o para obter a chave dele
    note-enUS He patrols up and down the platform
    note-ptBR Ele patrulha subindo e descendo a plataforma
    objective 858/1
step
    ifcomplete 858
    goto 1413 @-3104.44,1109.16
    note-enUS Talk to Wizzlecrank's Shredder
    note-ptBR Fale com Wizzlecrank's Shredder
    note-enUS Wizzlecrank's Shredder has a long respawn timer. Consider skipping this quest if there is a lot of competition
    note-ptBR O Wizzlecrank's Shredder demora a reaparecer. Considere pular esta missão se houver muita concorrência
    note-enUS This will begin an escort. Make sure you're at full health
    note-ptBR Isto iniciará uma escolta. Certifique-se de estar com a vida cheia
    turnin 858
    accept 863 |noauto
step
    ifturnedin 858
    goto 1413 @-3104.44,1109.16
    note-enUS Talk to Wizzlecrank's Shredder
    note-ptBR Fale com Wizzlecrank's Shredder
    note-enUS Wizzlecrank's Shredder has a long respawn timer. Consider skipping this quest if there is a lot of competition
    note-ptBR O Wizzlecrank's Shredder demora a reaparecer. Considere pular esta missão se houver muita concorrência
    note-enUS This will begin an escort. Make sure you're at full health
    note-ptBR Isto iniciará uma escolta. Certifique-se de estar com a vida cheia
    accept 863 |noauto
step
    ifonquest 863
    path seq 1413 @-3031.48,1088.21
    goto 1413 @-3002.1,1130.78
    note-enUS Two Venture Co. Mercenaries will spawn when the shredder moves onto the higher ground. Kill them then wait for his RP event at the end
    note-ptBR Dois Venture Co. Mercenaries surgirão quando o shredder subir para o terreno mais alto. Mate-os e espere o evento de RP dele no final
    objective 863/1
step
    path closest 1413 @-3610.1,1313.2 @-3605.03,1308.47 @-3564.5,1367.25 @-3622.26,1384.81 @-3673.94,1374.68 @-3653.67,1306.44 @-3644.55,1249.69 @-3603,1236.85 @-3575.64,1271.31 @-3610.1,1313.2
    note-enUS Kill Plainstriders. Loot them for their Kidneys
    note-ptBR Mate Plainstriders. Saqueie-os para obter os rins
    objective 821/2 |opt
    note-enUS Kill Venture Co. Enforcers and Venture Co. Overseers. Loot them for Cats Eye Emerald
    note-ptBR Mate Venture Co. Enforcers e Venture Co. Overseers. Saqueie-os para obter Cats Eye Emerald
    note-enUS If it hasn't dropped after 25+ mobs, feel free to skip this quest
    note-ptBR Se não cair após 25+ mobs, fique à vontade para pular esta missão
    objective 896/1
step
    goto 1414 @-3839.37,1644.65
    goto 1454 @-4160.01,1483.17
    zone 1454 |opt
    skill firstaid 40 |opt
    note-enUS Talk to Arnok
    note-ptBR Fale com Arnok
    note-enUS Skip this step if you did not have enough [Linen Cloth] to reach 40 skill
    note-ptBR Pule este passo se não tinha [Linen Cloth] suficiente para chegar a 40 de perícia
    train 3276
step
    goto 1454 @-4160.01,1483.17
    skill firstaid 50 |opt
    note-enUS Talk to Arnok
    note-ptBR Fale com Arnok
    note-enUS Skip this step if you did not have enough [Linen Cloth] to reach 50 skill
    note-ptBR Pule este passo se não tinha [Linen Cloth] suficiente para chegar a 50 de perícia
    train 3274
step
    only Priest
    goto 1454 @-4179.79,1452.58
    note-enUS Make sure you don't sell your [Flask of Oil]
    note-ptBR Não venda seu [Flask of Oil]
    note-enUS Talk to Ur'kyo
    note-ptBR Fale com Ur'kyo
    train 8102
step
    only Priest
    goto 1454 @-4179.79,1452.58
    note-enUS Talk to Ur'kyo
    note-ptBR Fale com Ur'kyo
    train 970
step
    only Mage
    goto 1454 @-4218.64,1473.72
    note-enUS Talk to Pephredo
    note-ptBR Fale com Pephredo
    train 2120
step
    only Mage
    goto 1454 @-4218.64,1473.72
    note-enUS Talk to Pephredo
    note-ptBR Fale com Pephredo
    train 3140
step
    only !Tauren !Scourge !Shaman !Warrior
    ifonquest 6384
    goto 1454 @-4439.37,1633.99
    note-enUS Talk to Gryshka
    note-ptBR Fale com Gryshka
    turnin 6384
    accept 6385
step
    only !Tauren !Scourge !Shaman !Warrior
    ifonquest 6385
    note-enUS Talk to Doras
    note-ptBR Fale com Doras
    turnin 6385
    accept 6386
step
    only !Tauren !Scourge !Shaman !Warrior
    ifturnedin 6385
    note-enUS Talk to Doras
    note-ptBR Fale com Doras
    accept 6386
step
    only Tauren Scourge
    ifnotturnedin 4921
    goto 1454 @-4313.6,1676.24
    note-enUS Talk to Doras
    note-ptBR Fale com Doras
    note-enUS Don't fly anywhere!
    note-ptBR Não voe para lugar nenhum!
    fp
step
    only Shaman
    goto 1454 @-4225.09,1933.29
    note-enUS Talk to Kardris
    note-ptBR Fale com Kardris
    train 8019
step
    only Shaman
    goto 1454 @-4225.09,1933.29
    note-enUS Talk to Kardris
    note-ptBR Fale com Kardris
    train 913
step
    goto 1454 @-4226.78,1914.77
    note-enUS Talk to Zor
    note-ptBR Fale com Zor
    accept 1061
step
    only Rogue
    goto 1454 @-4284.42,1771.28
    note-enUS Talk to Shenthul
    note-ptBR Fale com Shenthul
    train 1804
    train 921
    accept 2379
step
    only Orc Rogue Troll Rogue
    goto 1454 @-4280.07,1772.96
    note-enUS Talk to Therzok
    note-ptBR Fale com Therzok
    turnin 1963
    accept 1858
step
    only Rogue
    goto 1454 @-4279.79,1778.57
    note-enUS Talk to Zando'zan
    note-ptBR Fale com Zando'zan
    turnin 2379
    accept 2382
step
    only Orc Rogue Troll Rogue
    goto 1454 @-4271.1,1810.75 |only Orc Rogue Troll Rogue
    goto 1454 @-4280.07,1773.24
    note-enUS Talk to Rekkul. Buy a [Thieves' Tools] from him |only Orc Rogue Troll Rogue
    note-ptBR Fale com Rekkul. Compre [Thieves' Tools] dele |only Orc Rogue Troll Rogue
    collect 5060 1 |quest 1858 |q 1858/1 |only Orc Rogue Troll Rogue |opt
    note-enUS Use [Pick Lock] to open [Tazan's Satchel]
    note-ptBR Use [Pick Lock] para abrir [Tazan's Satchel]
    objective 1858/1
step
    only Orc Rogue Troll Rogue
    goto 1454 @-4280.07,1772.96
    note-enUS Talk to Therzok
    note-ptBR Fale com Therzok
    turnin 1858
step
    only Orc Rogue Troll Rogue
    ifonquest 1858
    goto 1454 @-4437.87,1637.33
    note-enUS Use [Pick Pocket] on Gamon in the Inn. Use his key to open [Tazan's Satchel]
    note-ptBR Use [Pick Pocket] em Gamon na estalagem. Use a chave dele para abrir [Tazan's Satchel]
    collect 7208 1 |quest 1858 |q 1858/1
    objective 1858/1
step
    only Orc Rogue Troll Rogue
    goto 1454 @-4280.07,1772.96
    note-enUS Talk to Therzok
    note-ptBR Fale com Therzok
    turnin 1858
step
    only Warlock
    goto 1454 @-4362.55,1834.7
    note-enUS Talk to Mirket
    note-ptBR Fale com Mirket
    train 1455
step
    only Warlock
    goto 1454 @-4362.55,1834.7
    note-enUS Talk to Mirket
    note-ptBR Fale com Mirket
    train 1014
step
    only Warlock
    goto 1454 @-4347.4,1836.57
    note-enUS Talk to Kurgul and buy [Grimoire of Sacrifice]
    note-ptBR Fale com Kurgul e compre [Grimoire of Sacrifice]
    collect 16351 1 |quest 896 |q 896/1
step
    only Warlock
    goto 1454 @-4347.4,1836.57
    note-enUS Talk to Kurgul and buy [Grimoire of Firebolt (Rank 3)]
    note-ptBR Fale com Kurgul e compre [Grimoire of Firebolt (Rank 3)]
    collect 16316 1 |quest 896 |q 896/1
step
    only Warrior
    goto 1454 @-4801.42,1980.53
    note-enUS Talk to Grezz
    note-ptBR Fale com Grezz
    train 285
step
    only Warrior
    goto 1454 @-4801.42,1980.53
    note-enUS Talk to Grezz
    note-ptBR Fale com Grezz
    train 8198
step
    only Hunter
    goto 1454 @-4607.02,2100.64
    note-enUS Talk to Ormak
    note-ptBR Fale com Ormak
    train 13795
step
    only Hunter
    goto 1454 @-4607.02,2100.64
    note-enUS Talk to Ormak
    note-ptBR Fale com Ormak
    train 2643
step
    only Hunter
    goto 1454 @-4611.09,2135.15
    note-enUS Talk to Xao'tsu
    note-ptBR Fale com Xao'tsu
    train 24557
step
    only Troll Hunter Orc Hunter Priest
    goto 1454 @-4824,2090.54
    note-enUS Talk to Hanashi
    note-ptBR Fale com Hanashi
    train 227
step
    only Tauren Hunter
    goto 1454 @-4824,2090.54
    note-enUS Talk to Hanashi
    note-ptBR Fale com Hanashi
    train 264
step
    only Troll Warrior Tauren Warrior Scourge Warrior
    goto 1454 @-4824,2090.54
    note-enUS Talk to Hanashi
    note-ptBR Fale com Hanashi
    train 197
    train 227
step
    only Hunter
    goto 1454 @-4819.1,2099.05
    note-enUS Talk to Zendo'jian. Buy a [Reinforced Bow] from him
    note-ptBR Fale com Zendo'jian. Compre [Reinforced Bow] dele
    collect 3026 1 |quest 3281 |q 3281/1
    train 227
step
    only Warrior
    goto 1454 @-4819.1,2099.05
    note-enUS Equip the [Reinforced Bow] |only Hunter
    note-ptBR Equipe o [Reinforced Bow] |only Hunter
    use 3026 |only Hunter |opt
    note-enUS Talk to Zendo'jian. Buy a [Battle Axe] from him
    note-ptBR Fale com Zendo'jian. Compre [Battle Axe] dele
    collect 926 1 |quest 3281 |q 3281/1
    train 227
step
    note-enUS Equip the [Battle Axe] when you are level 20 |only Warrior
    note-ptBR Equipe o [Battle Axe] quando estiver no nível 20 |only Warrior
    use 926 |only Warrior |opt
    note-enUS Equip the [Battle Axe] |only Warrior
    note-ptBR Equipe o [Battle Axe] |only Warrior
    use 926 |only Warrior |opt
step
    ifnotturnedin 3281
    goto 1413 @-2645.4,-406.94
    hearth |opt
    use 6948 |opt
    note-enUS Talk to Doras
    note-ptBR Fale com Doras
    fp |opt
    note-enUS Talk to Innkeeper Boorand
    note-ptBR Fale com Innkeeper Boorand
    vendor |only !Rogue !Warrior
    vendor |only Rogue Warrior
step
    goto 1413 @-2639.32,-436
    note-enUS Talk to Gazrog
    note-ptBR Fale com Gazrog
    turnin 869
    accept 3281
step
    ifcomplete 848
    goto 1413 @-2589.67,-424.51
    note-enUS Talk to Helbrim
    note-ptBR Fale com Helbrim
    turnin 848
step
    goto 1413 @-2607.91,-475.18
    note-enUS Talk to Darsok
    note-ptBR Fale com Darsok
    turnin 867
    accept 875
step
    goto 1413 @-2672.76,-544.77
    note-enUS Talk to Tonga
    note-ptBR Fale com Tonga
    turnin 870
    accept 877
step
    goto 1413 @-2670.74,-482.61
    note-enUS Talk to Sergra
    note-ptBR Fale com Sergra
    turnin 903
    accept 881
step
    only !Tauren !Scourge !Warrior !Shaman
    ifonquest 6386
    goto 1413 @-2709.24,-404.24
    note-enUS Talk to Zargh
    note-ptBR Fale com Zargh
    turnin 6386
step
    goto 1413 @-3031.48,461.91
    note-enUS Use the [Horn of Echeyakee] to summon Echeyakee
    note-ptBR Use o [Horn of Echeyakee] para invocar Echeyakee
    note-enUS Kill Echeyakee. Loot him for Echeyakee's Hide
    note-ptBR Mate Echeyakee. Saqueie-o para obter Echeyakee's Hide
    note-enUS If Echeyakee doesn't spawn after using the [Horn of Echeyakee] or you didn't get the tag when it did spawn, skip this step
    note-ptBR Se Echeyakee não surgir após usar o [Horn of Echeyakee] ou você não conseguir marcá-lo quando surgir, pule esta etapa
    objective 881/1
    use 10327
step
    goto 1413 @-2669.72,-481.94
    abandon 881
step
    goto 1413 @-2670.74,-482.61
    note-enUS Talk to Sergra
    note-ptBR Fale com Sergra
    accept 881
step
    goto 1413 @-3031.48,461.91
    note-enUS Use the [Horn of Echeyakee] to summon Echeyakee
    note-ptBR Use o [Horn of Echeyakee] para invocar Echeyakee
    note-enUS Kill Echeyakee. Loot him for Echeyakee's Hide
    note-ptBR Mate Echeyakee. Saqueie-o para obter Echeyakee's Hide
    objective 881/1
    use 10327
step
    goto 1413 @-2670.74,-482.61
    note-enUS Talk to Sergra
    note-ptBR Fale com Sergra
    turnin 881
    accept 905
step
    goto 1413 @-2641.35,-521.12
    note-enUS Talk to Mankrik
    note-ptBR Fale com Mankrik
    accept 899
    accept 4921
step
    only Hunter
    goto 1413 @-2612.98,-411
    note-enUS Talk to Barg
    note-ptBR Fale com Barg
    note-enUS Buy [Sharp Arrows] from him
    note-ptBR Compre [Sharp Arrows] dele
    collect 2515 1800 |quest 888 |q 888/1 |only Hunter
step
    only Rogue
    path seq 1413 @-2595.75,-437.35
    goto 1413 @-3768.18,-840.69
    note-enUS Talk to Devrak
    note-ptBR Fale com Devrak
    fp |opt
    note-enUS Talk to Wrenix
    note-ptBR Fale com Wrenix
    turnin 2382
    accept 2381
step
    only Rogue
    goto 1413 @-3773.24,-841.37
    note-enUS Talk to Wrenix's Gizmotronic Apparatus
    note-ptBR Fale com Wrenix's Gizmotronic Apparatus
    note-enUS Obtain an [E.C.A.C.] and a [Thieves' Tools]
    note-ptBR Obtenha um [E.C.A.C.] e um [Thieves' Tools]
    collect 7970 1 |quest 888 |q 888/1
    collect 5060 1 |quest 888 |q 888/1
step
    ifcomplete 896
    ifcomplete 863
    path seq 1413 @-3759.06,-902.18
    goto 1413 @-3796.55,-985.28
    note-enUS Talk to Sputtervalve and Dizzywig
    note-ptBR Fale com Sputtervalve e Dizzywig
    turnin 902
    turnin 863
    accept 3921 |only Hunter
    accept 1483
    turnin 896
step
    ifcomplete 896
    path seq 1413 @-3759.06,-902.18
    goto 1413 @-3796.55,-985.28
    note-enUS Talk to Sputtervalve and Dizzywig
    note-ptBR Fale com Sputtervalve e Dizzywig
    turnin 902
    accept 3921 |only Hunter
    accept 1483
    turnin 896
step
    ifcomplete 863
    goto 1413 @-3759.06,-902.18
    note-enUS Talk to Sputtervalve
    note-ptBR Fale com Sputtervalve
    turnin 863
    accept 1483
step
    goto 1413 @-3759.06,-902.18
    note-enUS Talk to Sputtervalve
    note-ptBR Fale com Sputtervalve
    accept 1483
step
    goto 1413 @-3697.24,-929.2
    note-enUS Talk to Mebok
    note-ptBR Fale com Mebok
    accept 865
    accept 1069
step
    goto 1413 @-3664.82,-1050.14
    note-enUS Talk toInnkeeper Wiley
    note-ptBR Fale com Innkeeper Wiley
    note-enUS Buy [Longjaw Mud Snappers] from him
    note-ptBR Compre [Longjaw Mud Snappers] dele
    note-enUS Buy [Melon Juice] from him |only Mage Warlock Priest Shaman Druid
    note-ptBR Compre [Melon Juice] dele |only Mage Warlock Priest Shaman Druid
    note-enUS [Longjaw Mud Snappers] are extremely cheap, buy as many as you want
    note-ptBR [Longjaw Mud Snappers] são extremamente baratos, compre quantos quiser
    vendor
    collect 4592 20 |quest 888 |q 888/1
    collect 1205 10 |quest 888 |q 888/1 |only Mage Warlock Priest Shaman Druid
step
    only Rogue
    goto 1413 @-3967.8,-1457.54 |only Rogue
    goto 1413 @-3958.68,-1457.54
    note-enUS Jump onto the ship, go down to the 2nd floor and level your lockpicking up to at least 70 |only Rogue
    note-ptBR Pule no navio, desça ao 2º andar e suba seu arrombamento para pelo menos 70 |only Rogue
    note-enUS Once your lockpicking is 70, go to the bottom floor of the ship and open The Jewel of the Southsea
    note-ptBR Quando seu arrombamento estiver em 70, vá ao andar mais baixo do navio e abra The Jewel of the Southsea
    note-enUS Use the [E.C.A.C.] on Polly
    note-ptBR Use o [E.C.A.C.] em Polly
    objective 2381/1
    use 7970
step
    goto 1413 @-3819.86,-1714.95
    note-enUS Loot the Crate on the ground
    note-ptBR Saqueie o caixote no chão
    objective 888/2
step
    goto 1413 @-3723.59,-1741.3
    note-enUS Loot the Crate on the ground
    note-ptBR Saqueie o caixote no chão
    objective 888/1
step
    path seq 1413 @-3192.6,-1919.67
    goto 1413 @-3258.47,-2027.09
    note-enUS Kill Plainstriders. Loot them for their Kidneys
    note-ptBR Mate Plainstriders. Saqueie-os para obter os rins
    objective 821/2 |opt
    note-enUS Kill Sunscale Scytheclaws. Loot them for their Horns and Feathers
    note-ptBR Mate Sunscale Scytheclaws. Saqueie-os para obter chifres e penas
    note-enUS Be careful as they cast [Thrash] (Charges 2 extra attacks every 10 seconds)
    note-ptBR Cuidado, eles lançam [Thrash] (Carrega 2 ataques extras a cada 10 segundos)
    objective 865/1 |opt
    collect 5165 3 |quest 905 |opt
    note-enUS Loot the Stolen Silver on the ground
    note-ptBR Saqueie o Stolen Silver no chão
    objective 3281/1
step
    goto 1413 @-3012.23,-1275.8
    note-enUS Collect Laden Mushrooms around The Stagnant Oasis
    note-ptBR Colete Laden Mushrooms ao redor de The Stagnant Oasis
    objective 848/1 |opt
    note-enUS Click the Bubbling Fissure underwater
    note-ptBR Clique na Bubbling Fissure debaixo d'água
    objective 877/1
step
    ifonquest 851
    path seq 1413 @-3031.48,-1480.51 @-3127.75,-1320.39 @-3154.1,-1172.43 @-2996.02,-1182.56 @-2949.4,-1146.75 @-2789.3,-1107.57 @-2746.74,-1409.57 @-2880.5,-1550.1
    goto 1413 @-2742.68,-1208.23
    note-enUS Kill Kolkar around the oasis. Loot them for their Bracers
    note-ptBR Mate Kolkar ao redor do oásis. Saqueie-os para obter os braçais
    objective 855/1 |opt
    note-enUS Kill Verog. Loot him for his Head
    note-ptBR Mate Verog. Saqueie-o para obter a cabeça dele
    note-enUS He has a chance of spawning every time a Kolkar is killed
    note-ptBR Ele tem chance de surgir toda vez que um Kolkar é morto
    note-enUS On a highly populated server or fresh launch, your best option is camping his spawnpoint
    note-ptBR Em um servidor muito populoso ou em lançamento recente, sua melhor opção é acampar o ponto de spawn dele
    objective 851/1
step
    path closest 1413 @-3023.38,-1234.58 @-3000.07,-1208.23 @-2959.54,-1196.75 @-2953.46,-1241.34 @-2977.78,-1304.17 @-3029.46,-1324.44 @-3066.95,-1311.61 @-3059.86,-1264.31
    note-enUS Collect Laden Mushrooms around The Stagnant Oasis
    note-ptBR Colete Laden Mushrooms ao redor de The Stagnant Oasis
    objective 848/1
step
    goto 1413 @-2707.22,-1502.13
    note-enUS Kill Plainstriders. Loot them for their Kidneys
    note-ptBR Mate Plainstriders. Saqueie-os para obter os rins
    objective 821/2 |opt
    note-enUS Click the Blue Raptor Nest. Kill more Sunscale Scytheclaws if you don't have a [Sunscale Feather]
    note-ptBR Clique no Blue Raptor Nest. Mate mais Sunscale Scytheclaws se não tiver uma [Sunscale Feather]
    note-enUS Be careful as they cast [Thrash] (Charges 2 extra attacks every 10 seconds)
    note-ptBR Cuidado, eles lançam [Thrash] (Carrega 2 ataques extras a cada 10 segundos)
    objective 905/1
    collect 5165 3 |quest 905
step
    goto 1413 @-2692.02,-1533.89
    note-enUS Click the Red Raptor Nest. Kill more Sunscale Scytheclaws if you don't have a [Sunscale Feather]
    note-ptBR Clique no Red Raptor Nest. Mate mais Sunscale Scytheclaws se não tiver uma [Sunscale Feather]
    note-enUS Be careful as they cast [Thrash] (Charges 2 extra attacks every 10 seconds)
    note-ptBR Cuidado, eles lançam [Thrash] (Carrega 2 ataques extras a cada 10 segundos)
    objective 905/3
    collect 5165 3 |quest 905
step
    goto 1413 @-2648.44,-1527.13
    note-enUS Click the Yellow Raptor Nest. Kill more Sunscale Scytheclaws if you don't have a [Sunscale Feather]
    note-ptBR Clique no Yellow Raptor Nest. Mate mais Sunscale Scytheclaws se não tiver uma [Sunscale Feather]
    note-enUS Be careful as they cast [Thrash] (Charges 2 extra attacks every 10 seconds)
    note-ptBR Cuidado, eles lançam [Thrash] (Carrega 2 ataques extras a cada 10 segundos)
    objective 905/2
    collect 5165 3 |quest 905
step
    goto 1413 @-2375.86,-1787.24
    note-enUS Kill Sunscale Scytheclaws. Loot them for their Horns
    note-ptBR Mate Sunscale Scytheclaws. Saqueie-os para obter os chifres
    note-enUS Be careful as they cast [Thrash] (Charges 2 extra attacks every 10 seconds)
    note-ptBR Cuidado, eles lançam [Thrash] (Carrega 2 ataques extras a cada 10 segundos)
    objective 865/1 |opt
    note-enUS Talk to the Beaten Corpse
    note-ptBR Fale com o Beaten Corpse
    objective 4921/1
step
    ifnotturnedin 1093
    path seq 1413 @-1951.27,-1956.15 @-2031.32,-1703.47 @-2183.32,-1858.19 @-2453.88,-1991.28 @-1960.39,-2333.83
    goto 1413 @-1995.86,-2376.39
    note-enUS Kill Stormsnouts. Loot them for a Thunder Lizard Horn
    note-ptBR Mate Stormsnouts. Saqueie-os para obter um Thunder Lizard Horn
    objective 821/3 |opt
    note-enUS Kill Lakota'mani. Loot him for the [Hoof of Lakota'mani]
    note-ptBR Mate Lakota'mani. Saqueie-o para obter o [Hoof of Lakota'mani]
    note-enUS Use the [Hoof of Lakota'mani] to start the quest
    note-ptBR Use o [Hoof of Lakota'mani] para iniciar a missão
    note-enUS He has 4 spawnpoints (marked on the map)
    note-ptBR Ele tem 4 pontos de ressurgimento (marcados no mapa)
    note-enUS Skip this step if you can't find him
    note-ptBR Pule este passo se não conseguir encontrá-lo
    collect 5099 1 |quest 883 |opt
    accept 883 |opt
    use 5099 |opt
    note-enUS Kill Stormsnouts. Loot them for a Horn. This does not have to be completed now
    note-ptBR Mate Stormsnouts. Saqueie-os para obter um chifre. Isto não precisa ser concluído agora
    objective 821/3 |opt
    note-enUS Talk to Innkeeper Byula
    note-ptBR Fale com Innkeeper Byula
    home
step
    ifonquest 883
    goto 1413 @-1921.88,-2383.15
    note-enUS Talk to Jorn Skyseer
    note-ptBR Fale com Jorn Skyseer
    turnin 883
step
    goto 1413 @-1891.48,-2391.93
    note-enUS Talk to Mangletooth
    note-ptBR Fale com Mangletooth
    accept 878
step
    ifonquest 5724
    ifdungeon RFC
    goto 1413 @-1881.35,-2384.5
    note-enUS Talk to Omusa
    note-ptBR Fale com Omusa
    fp |only !Tauren
step
    ifonquest 5724
    ifcomplete 5723
    ifdungeon RFC
    goto 1412 @-1480.52,-2339.56 120
    path seq 1456 @184.96,-1308.69 @-212.71,-1065.01
    goto 1456 @-218.13,-1055.97
    zone 1412 |opt
    zone 1456 |opt
    note-enUS If you have the Thunder Bluff flight path, fly there instead
    note-ptBR Se tiver o caminho de voo de Thunder Bluff, voe para lá
    note-enUS Talk to Rahauro
    note-ptBR Fale com Rahauro
    turnin 5724
    turnin 5723
step
    ifonquest 5724
    ifdungeon RFC
    goto 1456 @-218.13,-1055.97
    note-enUS Talk to Rahauro
    note-ptBR Fale com Rahauro
    turnin 5724
step
    ifcomplete 5723
    ifdungeon RFC
    goto 1456 @-218.13,-1055.97
    note-enUS Talk to Rahauro
    note-ptBR Fale com Rahauro
    turnin 5723
step
    ifdungeon RFC
    goto 1456 @26.1,-1196.66
    note-enUS Talk to Tal
    note-ptBR Fale com Tal
    fp
step
    ifcomplete 848
    path seq 1413 @-1881.35,-2384.5
    goto 1413 @-2589.67,-424.51
    note-enUS Talk to Omusa
    note-ptBR Fale com Omusa
    fp |only !Tauren |opt
    fp |opt
    note-enUS Talk to Helbrim
    note-ptBR Fale com Helbrim
    turnin 848
step
    path seq 1413 @-2641.35,-521.12 @-2672.76,-544.77 @-2670.74,-482.61
    goto 1413 @-2639.32,-436
    note-enUS Talk to Mankrik, Tonga, Sergra and Gazrog
    note-ptBR Fale com Mankrik, Tonga, Sergra e Gazrog
    turnin 4921
    turnin 877
    accept 880
    turnin 905
    accept 3261
    turnin 3281
step
    only Hunter
    goto 1413 @-2556.23,-351.54
    note-enUS Talk to Uthrok. Buy a [Medium Quiver] from him
    note-ptBR Fale com Uthrok. Compre [Medium Quiver] dele
    collect 11362 1 |quest 896 |q 896/1
    collect 2515 2200 |quest 896 |q 896/1
step
    ifcomplete 855
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    turnin 851
    accept 852
    turnin 855
step
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    turnin 851
    accept 852
step
    ifturnedin 851
    path closest 1413 @-2001.94,-965.69 @-2022.2,-945.42 @-2016.12,-915.01 @-2033.35,-894.74 @-2031.32,-881.23 @-2052.6,-877.18 @-2057.67,-879.21 @-2066.79,-877.85 @-2085.03,-898.8 @-2097.19,-908.26 @-2102.26,-950.15 @-2114.42,-981.22 @-2167.11,-1021.09 @-2187.38,-1040.68 @-2261.35,-1060.95 @-2281.62,-1061.62 @-2301.88,-1056.89 @-2295.8,-1087.3 @-2299.86,-1125.13 @-2268.44,-1145.4 @-2247.16,-1145.4 @-2226.9,-1166.35 @-2189.4,-1179.86 @-2174.2,-1198.78 @-2162.04,-1200.8 @-2124.55,-1228.5 @-2095.16,-1220.4 @-2065.78,-1208.91 @-2041.46,-1167.7 @-2024.23,-1179.18 @-2047.54,-1156.21 @-2046.52,-1135.94 @-2009.03,-1127.84 @-2001.94,-965.69
    note-enUS Kill Oasis Snapjaws as you're looking for Hezrul Bloodmark. Loot them for their Shells
    note-ptBR Mate Oasis Snapjaws enquanto procura Hezrul Bloodmark. Saqueie-os para obter os cascos
    objective 880/1 |opt
    note-enUS Kill Kolkar around the oasis. Loot them for their Bracers
    note-ptBR Mate Kolkar ao redor do oásis. Saqueie-os para obter os braçais
    objective 855/1 |opt
    note-enUS Find & kill Hezrul Bloodmark. Loot him for his Head
    note-ptBR Encontre e mate Hezrul Bloodmark. Saqueie-o para obter a Cabeça dele
    note-enUS Hezrul patrols around the lake
    note-ptBR Hezrul patrulha ao redor do lago
    objective 852/1
step
    ifonquest 855
    path seq 1413 @-2001.94,-965.69 @-2022.2,-945.42 @-2016.12,-915.01 @-2033.35,-894.74 @-2031.32,-881.23 @-2052.6,-877.18 @-2057.67,-879.21 @-2066.79,-877.85 @-2085.03,-898.8 @-2097.19,-908.26 @-2102.26,-950.15 @-2114.42,-981.22 @-2167.11,-1021.09 @-2187.38,-1040.68 @-2261.35,-1060.95 @-2281.62,-1061.62 @-2301.88,-1056.89 @-2295.8,-1087.3 @-2299.86,-1125.13 @-2268.44,-1145.4 @-2247.16,-1145.4 @-2226.9,-1166.35 @-2189.4,-1179.86 @-2174.2,-1198.78 @-2162.04,-1200.8 @-2124.55,-1228.5 @-2095.16,-1220.4 @-2065.78,-1208.91 @-2041.46,-1167.7 @-2024.23,-1179.18 @-2047.54,-1156.21 @-2046.52,-1135.94 @-2009.03,-1127.84
    goto 1413 @-2001.94,-965.69 50
    note-enUS Kill Kolkar around the oasis. Loot them for their Bracers
    note-ptBR Mate Kolkar ao redor do oásis. Saqueie-os para obter os braçais
    note-enUS Feel free to skip this quest if you haven't had many drops yet so far
    note-ptBR Fique à vontade para pular esta missão se ainda não tiver conseguido muitas quedas
    objective 855/1
step
    ifcomplete 852
    ifcomplete 855
    goto 1413 @-1972.55,-306.95
    abandon 855 |opt
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    turnin 852
    turnin 855
step
    ifcomplete 852
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    turnin 852
step
    ifcomplete 855
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    turnin 855
step
    ifturnedin 852
    goto 1413 @-1972.55,-306.95
    note-enUS This next quest is very hard & grouping up is recommended. You can kite Warlord Krom'zar around using the building where the quest giver is located
    note-ptBR A próxima missão é muito difícil e é recomendado formar um grupo. Você pode kitar Warlord Krom'zar ao redor do prédio onde fica quem dá a missão
    note-enUS Skip it if you can't do this quest. You will have another opportunity to complete it at higher level
    note-ptBR Pule se não conseguir fazer esta missão. Você terá outra chance de completá-la em um nível mais alto
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    accept 4021
step
    ifonquest 4021
    goto 1413 @-1884.39,-289.38
    note-enUS Kill Warlord Krom'zar once he appears. Loot the Banner that he drops on the ground
    note-ptBR Mate Warlord Krom'zar quando ele aparecer. Saqueie o estandarte que ele deixa cair no chão
    note-enUS Be careful! He is a strong elite and is guarded by at least two Kolkar mobs
    note-ptBR Cuidado! Ele é um elite forte e é protegido por pelo menos dois mobs Kolkar
    note-enUS It can take up to 3 minutes until he spawns
    note-ptBR Pode levar até 3 minutos para ele aparecer
    objective 4021/1
step
    ifcomplete 4021
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    turnin 4021
step
    ifcomplete 855
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    turnin 855
step
    ifcomplete 4021
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    turnin 4021
step
    ifcomplete 855
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    turnin 855
step
    ifonquest 875
    path closest 1413 @-1458.79,565.96 @-1379.75,620.68 @-1376.71,717.97 @-1323,747.7 @-1245.99,763.91 @-1223.7,699.05 @-1290.58,670 @-1245.99,624.74 @-1241.94,559.2 @-1155.8,553.12 @-1150.74,513.93 @-1194.31,508.53 @-1263.22,458.53 @-1311.86,415.97 @-1366.58,449.75 @-1417.24,486.91 @-1445.62,532.85
    note-enUS Kill Plainstriders. Loot them for their Kidneys
    note-ptBR Mate Plainstriders. Saqueie-os para obter os rins
    objective 821/2 |opt
    note-enUS Kill Witchwing Slayers. Loot them for their Rings
    note-ptBR Mate Witchwing Slayers. Saqueie-as para obter os anéis
    note-enUS Be careful as Witchwing Slayers cast [Execute] (deals a LOT of damage when you're at <20% health), and Witchwing Ambushers are [Stealthed] and patrol around
    note-ptBR Cuidado, Witchwing Slayers lançam [Execute] (causa MUITO dano quando você está com <20% de vida) e Witchwing Ambushers ficam em [Stealthed] e patrulham a área
    note-enUS Watch out for Witchwing Ambushers. They are stealthed and patrol in the area
    note-ptBR Cuidado com os Witchwing Ambushers. Eles ficam furtivos e patrulham a área
    objective 875/1
step
    path seq 1413 @-950.1,-271.14
    goto 1413 @-943,-265.06
    note-enUS Talk to Seereth and Makaba
    note-ptBR Fale com Seereth e Makaba
    turnin 1061
    accept 1062
    accept 6548
step
    goto 1413 @-950.1,-271.14
    note-enUS Talk to Seereth
    note-ptBR Fale com Seereth
    turnin 1061
    accept 1062
]==])

register([==[
#format 1
#id forever.dg.h.17-22-stonetalon-barrens-ashenvale
#name 17-22 Stonetalon/Barrens/Ashenvale (dungeons)
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 11
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Horde
#levels 17-22
#zones 1442 1413 1440
#name-ptBR 17-22 Stonetalon/Barrens/Ashenvale (masmorras)
#group Leveling with dungeons (Horde)
#group-ptBR Evolução com masmorras (Horda)
#subgroup Speedrun 1-22
#subgroup-ptBR Rota rápida 1-22

step
    ifonquest 6548
    path closest 1442 @-691.11,-13.63 @-650.58,26.74 @-718.94,65.49 @-743.85,101.96 @-771.2,113.04 @-785.36,141.69 @-838.59,148.2 @-865.93,142.34 @-846.4,103.92 @-819.54,76.24 @-774.61,-5.17 @-774.61,-27.96 @-726.27,-39.36
    note-enUS Kill Grimtotem Ruffians and Grimtotem Mercenaries in the area
    note-ptBR Mate Grimtotem Ruffians e Grimtotem Mercenaries na área
    objective 6548/1
    objective 6548/2
step
    ifcomplete 6548
    goto 1413 @-943,-265.06
    note-enUS Talk to Makaba
    note-ptBR Fale com Makaba
    turnin 6548
    accept 6629
step
    ifturnedin 6548
    goto 1413 @-943,-265.06
    note-enUS Talk to Makaba
    note-ptBR Fale com Makaba
    accept 6629
step
    ifturnedin 6548
    path seq 1442 @-460.13,67.77
    goto 1442 @-350.74,112.06
    note-enUS Kill Grundig Darkcloud and Grimtotem Brutes
    note-ptBR Mate Grundig Darkcloud e Grimtotem Brutes
    note-enUS Make sure you kill all six Grimtotem Brutes before starting the quest inside
    note-ptBR Mate todos os seis Grimtotem Brutes antes de iniciar a missão lá dentro
    objective 6629/1
    objective 6629/2
step
    ifturnedin 6548
    goto 1442 @-342.44,129.64
    note-enUS Talk to Kaya
    note-ptBR Fale com Kaya
    accept 6523 |noauto
step
    ifturnedin 6548
    path seq 1442 @-261.38,90.57 @-261.86,-7.12
    goto 1442 @-501.15,-41.64
    note-enUS Escort Kaya and stay close to her
    note-ptBR Escolte Kaya e fique perto dela
    note-enUS Be careful! Three Grimtotems will spawn when you reach the bonfire in Camp Aparaje
    note-ptBR Cuidado! Três Grimtotems surgirão quando você chegar à fogueira em Camp Aparaje
    objective 6523/1
step
    goto 1442 @-233.54,-177.42
    note-enUS Talk to Xen'Zilla
    note-ptBR Fale com Xen'Zilla
    accept 6461
step
    only Warlock Priest Mage
    path seq 1442 @-103.64,40.1 @74.11,185.32 |only Priest Mage Warlock
    goto 1442 @244.05,262.5 100 |only Priest Mage Warlock
    goto 1442 @360.76,451.69
    note-enUS Kill every Deepmoss Creeper you see |only Priest Mage Warlock
    note-ptBR Mate todos os Deepmoss Creepers que vir |only Priest Mage Warlock
    objective 6461/1 |only Priest Mage Warlock |opt
    note-enUS Click the Wanted Poster
    note-ptBR Clique no Wanted Poster
    accept 6284
step
    only Warlock Priest Mage
    path closest 1442 @569.77,573.79 @711.87,513.23 @684.04,582.91 @569.77,573.79
    note-enUS Kill Deepmoss Venomspitters and Deepmoss Creepers |only Warlock Priest Mage
    note-ptBR Mate Deepmoss Venomspitters e Deepmoss Creepers |only Warlock Priest Mage
    objective 6461/2 |only Warlock Priest Mage |opt
    objective 6461/1 |only Warlock Priest Mage |opt
    note-enUS Loot the Spider Eggs near the trees |only Warlock Priest Mage
    note-ptBR Saqueie os Spider Eggs perto das árvores |only Warlock Priest Mage
    note-enUS Be careful! The Deepmoss Hatchlings have a chance of summoning a level 22 Deepmoss Matriarch |only Warlock Priest Mage
    note-ptBR Cuidado! Os Deepmoss Hatchlings têm chance de invocar uma Deepmoss Matriarch nível 22 |only Warlock Priest Mage
    objective 1069/1 |only Warlock Priest Mage |opt
    note-enUS Kill Besseleth. Loot her for for her Fang
    note-ptBR Mate Besseleth. Saqueie-a para obter a presa dela
    note-enUS Clear the area around Besseleth. Be careful as she webs you. Keep her permanently feared with dots |only Warlock
    note-ptBR Limpe a área ao redor de Besseleth. Cuidado, ela prende você com teia. Mantenha-a com medo permanentemente usando DoTs |only Warlock
    note-enUS This quest is optional. If you can't do it, skip this quest. You can try it again later |only Warlock
    note-ptBR Esta missão é opcional. Se não conseguir fazê-la, pule esta missão. Você pode tentar de novo mais tarde |only Warlock
    objective 6284/1
step
    only Warlock Priest Mage
    goto 1442 @560.49,440.94
    note-enUS Kill Deepmoss Creepers
    note-ptBR Mate Deepmoss Creepers
    objective 6461/1
step
    only !Warlock
    path seq 1442 @-44.56,84.05 @245.51,255.01 @392.01,445.17
    goto 1442 @560.49,440.94
    note-enUS Kill Deepmoss Creepers
    note-ptBR Mate Deepmoss Creepers
    note-enUS Save any [Small Venom Sacs] you loot |only Rogue
    note-ptBR Guarde os [Small Venom Sacs] que saquear |only Rogue
    objective 6461/1
step
    ifnotturnedin 1093
    path seq 1442 @735.8,925.8 @806.12,929.05
    goto 1442 @927.72,893.56
    note-enUS Talk to Innkeeper Jayka
    note-ptBR Fale com Innkeeper Jayka
    vendor |only !Rogue !Warrior
    vendor |only Rogue Warrior
step
    ifnotturnedin 1093
    goto 1442 @920.88,911.47
    note-enUS Talk to Jeeda on the second floor of the inn
    note-ptBR Fale com Jeeda no segundo andar da estalagem
    vendor |only !Warrior
    vendor |only Warrior
step
    ifcomplete 6284
    goto 1442 @940.9,925.14
    note-enUS Talk to Maggran
    note-ptBR Fale com Maggran
    turnin 6284
step
    goto 1442 @1041.99,967.8
    note-enUS Talk to Tharm
    note-ptBR Fale com Tharm
    fp
step
    goto 1442 @365.16,878.25 15
    note-enUS Talk to Ziz
    note-ptBR Fale com Ziz
    turnin 1483
    accept 1093
step
    path closest 1442 @352.46,912.44 @297.77,959.66 @250.4,990.59 @259.68,1032.93 @246.98,1068.09 @207.91,1010.13 @163.47,962.27 @86.81,961.94 @181.05,907.89 @193.75,867.83 @194.73,827.78 @225.49,765.26 @281.16,763.63 @268.95,832.99 @303.63,858.39
    note-enUS Loot the Spider Eggs near the trees
    note-ptBR Saqueie os Spider Eggs perto das árvores
    note-enUS Be careful! The Deepmoss Hatchlings have a chance of summoning a level 22 Deepmoss Matriarch
    note-ptBR Cuidado! Os Deepmoss Hatchlings têm chance de invocar uma Deepmoss Matriarch nível 22
    objective 1069/1 |opt
    note-enUS Kill Deepmoss Venomspitters
    note-ptBR Mate Deepmoss Venomspitters
    note-enUS Save any [Small Venom Sacs] you loot |only Rogue
    note-ptBR Guarde os [Small Venom Sacs] que saquear |only Rogue
    objective 6461/2
step
    only Troll Warrior Orc Warrior Tauren Warrior
    goto 1442 @402.76,1231.88
    note-enUS Talk to Veenix. Buy a [Long Staff] from him
    note-ptBR Fale com Veenix. Compre [Long Staff] dele
    collect 928 1 |quest 899 |q 899/1
step
    only Scourge Warrior
    goto 1442 @402.76,1231.88
    note-enUS Equip the [Long Staff] |only Troll Warrior Orc Warrior Tauren Warrior
    note-ptBR Equipe o [Long Staff] |only Troll Warrior Orc Warrior Tauren Warrior
    use 928 |only Troll Warrior Orc Warrior Tauren Warrior |opt
    note-enUS Talk to Veenix
    note-ptBR Fale com Veenix
    vendor
    note-enUS If it's not up, buy a [Dacian Falx] instead
    note-ptBR Se não estiver disponível, compre uma [Dacian Falx]
step
    only Shaman
    goto 1442 @402.76,1231.88
    note-enUS Equip the [Executioner's Sword] |only Scourge Warrior
    note-ptBR Equipe a [Executioner's Sword] |only Scourge Warrior
    use 4818 |only Scourge Warrior |opt
    note-enUS Equip the [Dacian Falx] |only Scourge Warrior
    note-ptBR Equipe a [Dacian Falx] |only Scourge Warrior
    use 922 |only Scourge Warrior |opt
    note-enUS Talk to Veenix. Buy a [Long Staff] from him
    note-ptBR Fale com Veenix. Compre [Long Staff] dele
    collect 928 1 |quest 899 |q 899/1
step
    only Rogue
    goto 1442 @402.76,1231.88
    note-enUS Equip the [Long Staff] |only Shaman
    note-ptBR Equipe o [Long Staff] |only Shaman
    use 928 |only Shaman |opt
    note-enUS Talk to Veenix. Buy a [Longsword] from him.
    note-ptBR Fale com Veenix. Compre [Longsword] dele.
    collect 923 1 |quest 899 |q 899/1
step
    ifonquest 1093
    note-enUS Equip the [Longsword] |only Rogue
    note-ptBR Equipe a [Longsword] |only Rogue
    use 923 |only Rogue |opt
step
    path closest 1442 @179.1,1168.06 @232.82,1239.7 @-16.23,1441.59 @-255.52,1291.8 @-382.48,1135.5
    note-enUS Kill Venture Co. Loggers
    note-ptBR Mate Venture Co. Loggers
    objective 1062/1 |opt
    note-enUS Kill Venture Co. Operators. Loot them for their Blueprints
    note-ptBR Mate Venture Co. Operators. Saqueie-os para obter os Blueprints
    objective 1093/1
step
    path closest 1442 @242.58,1121.82 @292.39,1122.47 @325.6,1168.39 @338.79,1206.48 @276.77,1248.49 @215.24,1145.59 @187.4,1114.33 @138.57,1144.62 @51.16,1153.41 @-17.7,1128.33 @-106.09,1157.31 @-165.66,1173.6 @-189.1,1079.82 @-69.95,1061.91 @10.63,1072.33 @57.51,1056.05 @107.32,1040.09
    note-enUS Kill Venture Co. Loggers
    note-ptBR Mate Venture Co. Loggers
    objective 1062/1
step
    path closest 1442 @246.98,1068.09 @352.46,912.44 @297.77,959.66 @250.4,990.59 @259.68,1032.93 @246.98,1068.09 @207.91,1010.13 @163.47,962.27 @86.81,961.94 @181.05,907.89 @193.75,867.83 @194.73,827.78 @225.49,765.26 @281.16,763.63 @268.95,832.99 @303.63,858.39
    note-enUS Loot the Spider Eggs near the trees
    note-ptBR Saqueie os Spider Eggs perto das árvores
    note-enUS Be careful! The Deepmoss Hatchlings have a chance of summoning a level 22 Deepmoss Matriarch
    note-ptBR Cuidado! Os Deepmoss Hatchlings têm chance de invocar uma Deepmoss Matriarch nível 22
    objective 1069/1
step
    goto 1442 @365.16,878.25
    note-enUS If you have over 15 Deepmoss Eggs, split the stack of any extras (shift click), then delete them
    note-ptBR Se tiver mais de 15 Deepmoss Eggs, divida a pilha dos extras (shift + clique) e depois destrua-os
    note-enUS Talk to Ziz
    note-ptBR Fale com Ziz
    turnin 1093
    accept 1094
step
    path closest 1442 @362.71,539.28 @275.3,577.38 @362.71,539.28 @298.25,432.8 @244.05,262.5 @74.11,185.32 @-103.64,40.1 @362.71,539.28
    note-enUS Finish killing Deepmoss Creepers
    note-ptBR Termine de matar Deepmoss Creepers
    note-enUS Save any [Small Venom Sacs] you loot |only Rogue
    note-ptBR Guarde os [Small Venom Sacs] que saquear |only Rogue
    objective 6461/1
step
    only Druid
    goto 1450 @-2593.82,7866.9
    note-enUS Talk to Loganaar
    note-ptBR Fale com Loganaar
    train 1430
step
    only Druid
    goto 1450 @-2593.82,7866.9
    note-enUS Talk to Loganaar
    note-ptBR Fale com Loganaar
    train 768
step
    ifonquest 3261
    goto 1413 @-1995.86,-2375.71
    hearth |opt
    use 6948 |opt
    note-enUS Talk to Innkeeper Byula
    note-ptBR Fale com Innkeeper Byula
    vendor |only !Rogue !Warrior
    vendor |only Rogue Warrior
step
    goto 1413 @-1921.88,-2383.15
    note-enUS Talk to Jorn Skyseer
    note-ptBR Fale com Jorn Skyseer
    turnin 3261
    accept 882
step
    path closest 1413 @-1951.27,-1956.15 @-2031.32,-1703.47 @-2183.32,-1858.19 @-2453.88,-1991.28 @-1951.27,-1956.15 @-2031.32,-1703.47 @-2183.32,-1858.19 @-2453.88,-1991.28
    note-enUS Kill Stormsnouts. Loot them for a Horn
    note-ptBR Mate Stormsnouts. Saqueie-os para obter um chifre
    objective 821/3 |opt
    note-enUS Kill Bristleback Quilboars. Loot them for their Tusks. Save the [Blood Shards] you get
    note-ptBR Mate Bristleback Quilboars. Saqueie-os para obter as presas. Guarde os [Blood Shards] que conseguir
    objective 878/1 |opt
    objective 878/2 |opt
    objective 878/3 |opt
    objective 899/1 |opt
    note-enUS Kill Lakota'mani. Loot him for the [Hoof of Lakota'mani]
    note-ptBR Mate Lakota'mani. Saqueie-o para obter o [Hoof of Lakota'mani]
    note-enUS Use the [Hoof of Lakota'mani] to start the quest
    note-ptBR Use o [Hoof of Lakota'mani] para iniciar a missão
    note-enUS He has 4 spawnpoints (marked on the map)
    note-ptBR Ele tem 4 pontos de ressurgimento (marcados no mapa)
    note-enUS Skip this step if you can't find him
    note-ptBR Pule este passo se não conseguir encontrá-lo
    collect 5099 1 |quest 883
    accept 883
    use 5099
step
    path closest 1413 @-2515.7,-2076.41 @-2518.74,-2125.73 @-2517.72,-2223.7 @-2486.31,-2254.1 @-2494.42,-2282.48 @-2531.91,-2272.34 @-2571.43,-2295.31 @-2620.07,-2285.18 @-2625.14,-2245.32 @-2755.86,-2082.49 @-2813.62,-2054.12 @-2811.59,-2004.12 @-2783.22,-1949.39 @-2747.75,-1889.26 @-2709.24,-1913.59 @-2706.2,-1948.72 @-2687.96,-1973.04 @-2678.84,-2016.28 @-2584.6,-2050.74
    note-enUS Kill Stormsnouts. Loot them for a Horn
    note-ptBR Mate Stormsnouts. Saqueie-os para obter um chifre
    objective 821/3 |opt
    note-enUS Kill Bristleback Quilboars. Loot them for their Tusks. Save the [Blood Shards] you get
    note-ptBR Mate Bristleback Quilboars. Saqueie-os para obter as presas. Guarde os [Blood Shards] que conseguir
    objective 878/1
    objective 878/2
    objective 878/3
    objective 899/1
step
    only Warlock Shaman
    path closest 1413 @-2515.7,-2076.41 @-2518.74,-2125.73 @-2517.72,-2223.7 @-2486.31,-2254.1 @-2494.42,-2282.48 @-2531.91,-2272.34 @-2571.43,-2295.31 @-2620.07,-2285.18 @-2625.14,-2245.32 @-2755.86,-2082.49 @-2813.62,-2054.12 @-2811.59,-2004.12 @-2783.22,-1949.39 @-2747.75,-1889.26 @-2709.24,-1913.59 @-2706.2,-1948.72 @-2687.96,-1973.04 @-2678.84,-2016.28 @-2584.6,-2050.74
    level 19
step
    path closest 1413 @-2532.92,-1965.61 @-2449.83,-1953.45 @-2377.88,-2018.31 @-2397.14,-2108.84 @-2345.46,-2187.21 @-2415.38,-2179.78
    note-enUS Kill Stormsnouts. Loot them for a Horn
    note-ptBR Mate Stormsnouts. Saqueie-os para obter um chifre
    objective 821/3
step
    path closest 1413 @-2847.06,-1879.13 @-2859.22,-1804.81 @-2833.88,-1749.41 @-2881.51,-1723.74 @-2973.72,-1627.8
    note-enUS Kill Sunscale Scytheclaws. Loot them for their Horns
    note-ptBR Mate Sunscale Scytheclaws. Saqueie-os para obter os chifres
    note-enUS Be careful as they cast [Thrash] (Charges 2 extra attacks every 10 seconds)
    note-ptBR Cuidado, eles lançam [Thrash] (Carrega 2 ataques extras a cada 10 segundos)
    objective 865/1 |opt
    note-enUS Finish killing Plainstriders. Loot them for their Kidneys
    note-ptBR Termine de matar Plainstriders. Saqueie-os para obter os Rins
    objective 821/2
step
    path closest 1413 @-3183.48,-2015.61 @-2646.42,-1529.16 @-3183.48,-2015.61 @-2646.42,-1529.16
    note-enUS Finish killing Sunscale Scytheclaws. Loot them for their Horns
    note-ptBR Termine de matar Sunscale Scytheclaws. Saqueie-os para obter os Chifres
    note-enUS Be careful as they cast [Thrash] (Charges 2 extra attacks every 10 seconds)
    note-ptBR Cuidado, eles lançam [Thrash] (Carrega 2 ataques extras a cada 10 segundos)
    objective 865/1
step
    path closest 1413 @-3010.2,-1319.04 @-2959.54,-1292.69 @-2953.46,-1239.31 @-2998.04,-1192.02 @-3050.74,-1225.13 @-3066.95,-1260.93 @-3052.76,-1319.71
    note-enUS Kill any Zhevra. Loot it for a Fresh Zhevra Carcass
    note-ptBR Mate qualquer Zhevra. Saqueie-o para obter uma Fresh Zhevra Carcass
    collect 10338 1 |opt
    note-enUS Kill Oasis Snapjaws in and around the lake. Loot them for their Shells
    note-ptBR Mate Oasis Snapjaws dentro e ao redor do lago. Saqueie-os para obter os cascos
    objective 880/1
step
    goto 1413 @-3427.7,-436.67
    note-enUS Kill any Zhevra. Loot it for a Fresh Zhevra Carcass
    note-ptBR Mate qualquer Zhevra. Saqueie-o para obter uma Fresh Zhevra Carcass
    collect 10338 1 |opt
    use 10338
    note-enUS The Carcass only has a 30 minute duration!
    note-ptBR A carcaça dura apenas 30 minutos!
    objective 882/1
step
    only Rogue
    goto 1413 @-3768.18,-840.69
    note-enUS Talk to Wrenix
    note-ptBR Fale com Wrenix
    turnin 2381
step
    goto 1413 @-3728.66,-835.29
    note-enUS Talk to Gazlowe
    note-ptBR Fale com Gazlowe
    turnin 888
step
    ifdungeon WC
    path seq 1413 @-3759.06,-902.18 @-3697.24,-929.2
    goto 1413 @-3687.11,-981.22
    note-enUS Talk to Sputtervalve, Mebok and Drohn
    note-ptBR Fale com Sputtervalve, Mebok e Drohn
    turnin 1094
    accept 1095
    turnin 865
    turnin 1069
    accept 1491
    turnin 821
step
    path seq 1413 @-3759.06,-902.18 @-3697.24,-929.2
    goto 1413 @-3687.11,-981.22
    note-enUS Talk to Sputtervalve, Mebok and Drohn
    note-ptBR Fale com Sputtervalve, Mebok e Drohn
    turnin 1094
    accept 1095
    turnin 865
    turnin 1069
    turnin 821
step
    only Warrior
    ifturnedin 865
    goto 1413 @-3680.02,-982.58
    note-enUS Talk to Grazlix
    note-ptBR Fale com Grazlix
    vendor
step
    only Rogue Hunter Warrior Shaman Druid
    ifturnedin 865
    goto 1413 @-3675.96,-985.28
    note-enUS Talk to Vexspindle
    note-ptBR Fale com Vexspindle
    vendor
step
    ifdungeon WC
    ifturnedin 865
    goto 1413 @-3664.82,-1050.14
    note-enUS Equip the [Mighty Chain Pants] |only Warrior
    note-ptBR Equipe as [Mighty Chain Pants] |only Warrior
    use 4800 |only Warrior |opt
    note-enUS Equip the [Wolf Bracers] |only Rogue Hunter Warrior Shaman Druid
    note-ptBR Equipe as [Wolf Bracers] |only Rogue Hunter Warrior Shaman Druid
    use 4794 |only Rogue Hunter Warrior Shaman Druid |opt
    note-enUS Talk to Innkeeper Wiley
    note-ptBR Fale com Innkeeper Wiley
    home
step
    ifdungeon WC
    goto 1413 @-3770.2,-928.53
    note-enUS Talk to Bigglefuzz
    note-ptBR Fale com Bigglefuzz
    accept 959
step
    only Hunter
    path seq 1413 @-3770.2,-898.12
    goto 1413 @-2595.75,-473.15
    note-enUS Talk to Bragok
    note-ptBR Fale com Bragok
    fp |opt
    note-enUS Talk to Thork
    note-ptBR Fale com Thork
    accept 6541
step
    ifcomplete 875
    goto 1413 @-2607.91,-475.18
    note-enUS Talk to Darsok
    note-ptBR Fale com Darsok
    note-enUS He is at the top of the tower
    note-ptBR Ele está no topo da torre
    turnin 875
    accept 876
step
    ifturnedin 875
    goto 1413 @-2607.91,-475.18
    note-enUS Talk to Darsok
    note-ptBR Fale com Darsok
    note-enUS He is at the top of the tower
    note-ptBR Ele está no topo da torre
    accept 876
step
    path seq 1413 @-2641.35,-521.12
    goto 1413 @-2672.76,-544.77
    note-enUS Talk to Mankrik and Tonga
    note-ptBR Fale com Mankrik e Tonga
    turnin 899
    turnin 880
    accept 1489
    accept 3301
step
    ifnotdungeon WC
    ifdungeon DM
    goto 1413 @-2645.4,-406.94
    note-enUS Talk to Innkeeper Boorand
    note-ptBR Fale com Innkeeper Boorand
    home
    vendor |only !Rogue !Warrior
    vendor |only Rogue Warrior
step
    goto 1413 @-2555.22,-387.35
    note-enUS Talk to Korran
    note-ptBR Fale com Korran
    accept 868
step
    only Shaman
    goto 1413 @-2595.75,-437.35 |only Shaman
    goto 1454 @-4213.03,1920.94
    note-enUS Talk to Devrak |only Shaman
    note-ptBR Fale com Devrak |only Shaman
    fly 1454 |only Shaman |opt
    note-enUS Talk to Searn
    note-ptBR Fale com Searn
    accept 1528
step
    only Shaman
    goto 1454 @-4225.09,1933.29
    note-enUS Talk to Kardris
    note-ptBR Fale com Kardris
    train 2645
step
    only Warlock
    goto 1413 @-2595.75,-437.35 |only Warlock
    goto 1454 @-4357.36,1850.41
    note-enUS Talk to Devrak |only Warlock
    note-ptBR Fale com Devrak |only Warlock
    fly 1454 |only Warlock |opt
    note-enUS Talk to Gan'rul
    note-ptBR Fale com Gan'rul
    trainer
    accept 1507
step
    only Warlock
    goto 1454 @-4347.4,1836.57
    note-enUS Talk to Kurgul and buy [Grimoire of Torment (Rank 2)]
    note-ptBR Fale com Kurgul e compre [Grimoire of Torment (Rank 2)]
    collect 16346 1 |quest 1507 |q 1507/1
step
    only Warlock
    goto 1454 @-4340.53,1839.19
    note-enUS Talk to Cazul
    note-ptBR Fale com Cazul
    turnin 1507
    accept 1508
step
    only Warlock
    goto 1454 @-4299.99,1820.67
    note-enUS Talk to Katis. Buy a [Burning Wand] from her
    note-ptBR Fale com Katis. Compre [Burning Wand] dela
    collect 5210 1 |quest 1507 |q 1507/1
step
    only Warlock
    goto 1454 @-4199.99,1717.49
    note-enUS Talk to Zankaja
    note-ptBR Fale com Zankaja
    turnin 1508
    accept 1509
step
    only Shaman
    ifdungeon DM
    goto 1454 @-4225.09,1933.29
    note-enUS Talk to Devrak
    note-ptBR Fale com Devrak
    fly 1454 |opt
    note-enUS Talk to Kardris
    note-ptBR Fale com Kardris
    train 8052
step
    only Shaman
    ifdungeon DM
    goto 1454 @-4225.09,1933.29
    note-enUS Talk to Kardris
    note-ptBR Fale com Kardris
    train 2645
step
    only Hunter
    ifdungeon DM
    goto 1454 @-4607.02,2100.64
    note-enUS Talk to Ormak
    note-ptBR Fale com Ormak
    train 14318
step
    only Hunter
    ifdungeon DM
    goto 1454 @-4607.02,2100.64
    note-enUS Talk to Ormak
    note-ptBR Fale com Ormak
    train 14290
step
    only Hunter
    ifdungeon DM
    goto 1454 @-4610.95,2135.15
    note-enUS Talk to Xao'tsu
    note-ptBR Fale com Xao'tsu
    train 5118
step
    only Warrior
    ifdungeon DM
    goto 1454 @-4801.42,1980.53
    note-enUS Talk to Grezz
    note-ptBR Fale com Grezz
    train 8198
step
    only Warrior
    ifdungeon DM
    goto 1454 @-4801.42,1980.53
    note-enUS Talk to Grezz
    note-ptBR Fale com Grezz
    train 845
step
    only Rogue
    ifdungeon DM
    goto 1454 @-4296.34,1762.67
    note-enUS Talk to Ormok
    note-ptBR Fale com Ormok
    train 1943
step
    only Warlock
    ifdungeon DM
    goto 1458 @408.18,1587.21
    note-enUS Talk to Zevrost
    note-ptBR Fale com Zevrost
    train 1014
step
    only Warlock
    ifdungeon DM
    goto 1458 @408.18,1587.21
    note-enUS Talk to Zevrost
    note-ptBR Fale com Zevrost
    train 706
step
    only Mage
    ifdungeon DM
    goto 1454 @-4218.64,1473.72
    note-enUS Talk to Pephredo
    note-ptBR Fale com Pephredo
    train 3140
step
    only Mage
    ifdungeon DM
    goto 1454 @-4218.64,1473.72
    note-enUS Talk to Pephredo
    note-ptBR Fale com Pephredo
    train 1953
step
    only Priest
    ifdungeon DM
    goto 1454 @-4179.79,1452.58
    note-enUS Talk to Ur'kyo
    note-ptBR Fale com Ur'kyo
    train 970
step
    only Priest
    ifdungeon DM
    goto 1454 @-4179.79,1452.58
    note-enUS Talk to Ur'kyo
    note-ptBR Fale com Ur'kyo
    train 14914
step
    ifdungeon DM
    goto 1411 @-4648.55,1321.88 40
    zone 1411 |opt
    zone 1434
step
    ifdungeon DM
    path seq 1434 @273.91,-12406.71 @492.15,-12499.03 @759.53,-12494.77 @1178.78,-12166.78
    goto 1434 @1360,-11978.74 60
    path seq 1436 @1578.87,-11699.5 @1718.17,-11480.4
    goto 1436 @1966.32,-11407.13 200
    note-enUS Steer clear from the island. Follow the waypoint for safety!
    note-ptBR Fique longe da ilha. Siga o waypoint por segurança!
step
    ifdungeon DM
    goto 1436 @1966.32,-11407.13 40
    note-enUS Talk to Captain Grayson
    note-ptBR Fale com Captain Grayson
    accept 103
step
    ifdungeon DM
    goto 1436 @1966.32,-11407.13
    note-enUS Talk to Captain Grayson
    note-ptBR Fale com Captain Grayson
    turnin 103
step
    ifdungeon DM
    goto 1436 @1966.32,-11407.13
    note-enUS Talk to Captain Grayson
    note-ptBR Fale com Captain Grayson
    accept 104
step
    ifdungeon DM
    goto 1436 @1811.62,-11358.37
    note-enUS Kill Old Murk-Eye. Loot him for his Scale
    note-ptBR Mate Old Murk-Eye. Saqueie-o para obter Scale
    note-enUS Old Murk-Eye patrols up and down the Longshore. If you don't see him along the Longshore, wait for him to spawn in the most southern Murloc camp
    note-ptBR Old Murk-Eye patrulha para cima e para baixo em Longshore. Se não o vir por lá, espere ele surgir no acampamento de Murlocs mais ao sul
    objective 104/1
step
    ifdungeon DM
    goto 1436 @1966.32,-11407.13
    note-enUS Talk to Captain Grayson
    note-ptBR Fale com Captain Grayson
    turnin 104
step
    ifdungeon DM
    abandon 103
step
    ifdungeon DM
    path seq 1415 @1596.2,-11768.97 @1596.2,-11780.71 @1606.76,-11797.13 @1582.12,-11799.48 @1596.2,-11813.56 @1631.4,-11846.41 @1649,-11898.04 @1659.56,-11919.16 @1698.28,-11891
    goto 1415 @1744.04,-11881.61
step
    ifdungeon DM
    hearth
    zone 1413
    use 6948
step
    ifdungeon WC
    goto 1413 @-3664.82,-1050.14
    note-enUS Talk to Innkeeper Wiley
    note-ptBR Fale com Innkeeper Wiley
    vendor |only !Rogue !Warrior
    vendor |only Rogue Warrior
step
    ifdungeon DM
    goto 1413 @-2645.4,-406.94
    note-enUS Talk to Innkeeper Boorand
    note-ptBR Fale com Innkeeper Boorand
    vendor |only !Rogue !Warrior
    vendor |only Rogue Warrior
step
    only Warlock
    goto 1413 @-3770.2,-898.12 |only Warlock
    goto 1454 @-4313.6,1676.24 |only Warlock
    goto 1413 @-2639.32,-436
    note-enUS Talk to Bragok |only Warlock
    note-ptBR Fale com Bragok |only Warlock
    fp |only Warlock |opt
    note-enUS Talk to Doras |only Warlock
    note-ptBR Fale com Doras |only Warlock
    fp |only Warlock |opt
    note-enUS Talk to Gazrog
    note-ptBR Fale com Gazrog
    turnin 1509
    accept 1510
step
    only Shaman
    goto 1454 @-4313.6,1676.24 |only Shaman
    goto 1413 @-4047.86,-1345.39
    note-enUS Talk to Doras |only Shaman
    note-ptBR Fale com Doras |only Shaman
    fp |only Shaman |opt
    note-enUS Talk to Islen
    note-ptBR Fale com Islen
    turnin 1528
    accept 1530
step
    ifturnedin 848
    ifnotturnedin 853
    goto 1413 @-3770.2,-898.12 |only !Warlock !Shaman
    goto 1413 @-3770.2,-898.12 |only Shaman
    goto 1413 @-2589.67,-424.51
    note-enUS Talk to Bragok |only !Warlock !Shaman
    note-ptBR Fale com Bragok |only !Warlock !Shaman
    fp |only !Warlock !Shaman |opt
    note-enUS Talk to Bragok |only Shaman
    note-ptBR Fale com Bragok |only Shaman
    fp |only Shaman |opt
    note-enUS Talk to Helbrim
    note-ptBR Fale com Helbrim
    note-enUS Helbrim Starts a 45-minute timed quest
    note-ptBR Helbrim inicia uma missão com tempo limite de 45 minutos
    accept 853
step
    goto 1413 @-3770.2,-898.12 |only !Warlock !Shaman
    goto 1413 @-3770.2,-898.12 |only Shaman
    path seq 1413 @-2595.75,-437.35
    goto 1413 @-1891.48,-2391.93
    note-enUS You are on a timed quest, don't go afk. It will get turned 20-30 minutes after pick-up
    note-ptBR Você está em uma missão com tempo, não fique AFK. Ela será entregue 20-30 minutos após pegá-la
    note-enUS Talk to Bragok |only !Warlock !Shaman
    note-ptBR Fale com Bragok |only !Warlock !Shaman
    fp |only !Warlock !Shaman |opt
    note-enUS Talk to Bragok |only Shaman
    note-ptBR Fale com Bragok |only Shaman
    fp |only Shaman |opt
    note-enUS Talk to Devrak
    note-ptBR Fale com Devrak
    fp |opt
    note-enUS Kill Bristleback Quilboars. Loot them for a [Blood Shard
    note-ptBR Mate Bristleback Quilboars. Saqueie-os para obter um [Blood Shard
    collect 5075 1 |quest 5052 |q 5052/1
step
    goto 1413 @-1891.48,-2391.93
    note-enUS Talk to Mangletooth
    note-ptBR Fale com Mangletooth
    turnin 878
    accept 5052
    turnin 5052
step
    ifonquest 883
    path seq 1413 @-1891.48,-2391.93
    goto 1413 @-1921.88,-2383.15
    note-enUS Talk to Mangletooth
    note-ptBR Fale com Mangletooth
    note-enUS Use your [Blood Shards] to get buffs. Save at least 4 of them for later |only Tauren Shaman Orc Warrior Troll Warrior
    note-ptBR Use seus [Blood Shards] para obter bônus. Guarde pelo menos 4 deles para depois |only Tauren Shaman Orc Warrior Troll Warrior
    note-enUS Use your [Blood Shards] to get buffs. Save at least 4 of them for later |only !Tauren !Shaman !Warrior Scourge
    note-ptBR Use seus [Blood Shards] para obter bônus. Guarde pelo menos 4 deles para depois |only !Tauren !Shaman !Warrior Scourge
    note-enUS Make sure to turn off any autocomplete functions from addons such as Questie or Leatrix Plus for this!
    note-ptBR Desative qualquer função de conclusão automática de addons como Questie ou Leatrix Plus para isto!
    note-enUS Talk to Jorn Skyseer
    note-ptBR Fale com Jorn Skyseer
    turnin 882
    accept 907
    turnin 883
step
    goto 1413 @-1921.88,-2383.15
    note-enUS Talk to Jorn Skyseer
    note-ptBR Fale com Jorn Skyseer
    turnin 882
    accept 907
step
    path closest 1413 @-1899.59,-2624.34 @-2016.12,-2650.02 @-2400.18,-2398.01 @-2363.7,-2537.19 @-1899.59,-2624.34 @-2016.12,-2650.02 @-2363.7,-2537.19 @-2400.18,-2398.01 @-1868.18,-2498 @-1861.08,-2561.51 @-1842.84,-2618.94 @-1888.44,-2650.69 @-2004.98,-2683.8 @-2133.67,-2590.56 @-2182.31,-2479.76 @-2232.98,-2478.41 @-2273.51,-2456.79 @-2356.6,-2513.54 @-2428.55,-2517.6 @-2406.26,-2424.36 @-2363.7,-2395.98 @-2253.24,-2345.99
    note-enUS Kill Owatanka. Loot him for [Owatanka's Tailspike]
    note-ptBR Mate Owatanka. Saqueie-o para obter [Owatanka's Tailspike]
    note-enUS Use the [Owatanka's Tailspike] to start the quest
    note-ptBR Use o [Owatanka's Tailspike] para iniciar a missão
    note-enUS He has 4 spawnpoints (marked on the map)
    note-ptBR Ele tem 4 pontos de ressurgimento (marcados no mapa)
    collect 5102 1 |quest 884 |q 884/1 |opt
    accept 884 |opt
    use 5102 |opt
    note-enUS Kill Thunder Lizards. Loot them for their Blood
    note-ptBR Mate Thunder Lizards. Saqueie-os para obter o sangue
    objective 907/1
step
    ifonquest 884
    goto 1413 @-1921.88,-2383.15
    note-enUS Talk to Jorn
    note-ptBR Fale com Jorn
    turnin 884
    turnin 907
    accept 913
step
    goto 1413 @-1921.88,-2383.15
    note-enUS Talk to Jorn
    note-ptBR Fale com Jorn
    turnin 907
    accept 913
step
    only Shaman
    path seq 1413 @-1899.59,-2624.34 @-2016.12,-2650.02 @-2400.18,-2398.01 @-2363.7,-2537.19 @-1899.59,-2624.34 @-2016.12,-2650.02 @-2363.7,-2537.19 @-2400.18,-2398.01 |only Shaman
    goto 1413 @-1776.98,-3617.51 60 |only Shaman
    goto 1413 @-1776.98,-3617.51
    note-enUS Kill Owatanka. Loot him for [Owatanka's Tailspike] |only Shaman
    note-ptBR Mate Owatanka. Saqueie-o para obter [Owatanka's Tailspike] |only Shaman
    note-enUS Use the [Owatanka's Tailspike] to start the quest |only Shaman
    note-ptBR Use o [Owatanka's Tailspike] para iniciar a missão |only Shaman
    note-enUS He has 4 spawnpoints (marked on the map) |only Shaman
    note-ptBR Ele tem 4 pontos de ressurgimento (marcados no mapa) |only Shaman
    collect 5102 1 |quest 884 |q 884/1 |only Shaman |opt
    accept 884 |only Shaman |opt
    use 5102 |only Shaman |opt
    note-enUS Kill a Thunderhawk. Loot it for its Wings |only Shaman
    note-ptBR Mate um Thunderhawk. Saqueie-o para obter as asas |only Shaman
    objective 913/1 |only Shaman |opt
    note-enUS Talk to Brine
    note-ptBR Fale com Brine
    turnin 1530
    accept 1535
step
    only Shaman
    goto 1413 @-1858.04,-3572.92
    use 7766
    objective 1535/1
step
    only Shaman
    goto 1413 @-1776.98,-3617.51
    note-enUS Talk to Brine
    note-ptBR Fale com Brine
    turnin 1535
    accept 1536
step
    path closest 1413 @-1899.59,-2624.34 @-2016.12,-2650.02 @-2400.18,-2398.01 @-2363.7,-2537.19 @-1899.59,-2624.34 @-2016.12,-2650.02 @-2363.7,-2537.19 @-2400.18,-2398.01 @-1919.86,-2652.04 @-2096.18,-2531.11 @-2341.4,-2352.74 @-1982.68,-2217.62 @-1775.96,-2235.86
    note-enUS Kill Owatanka. Loot him for [Owatanka's Tailspike]
    note-ptBR Mate Owatanka. Saqueie-o para obter [Owatanka's Tailspike]
    note-enUS Use the [Owatanka's Tailspike] to start the quest
    note-ptBR Use o [Owatanka's Tailspike] para iniciar a missão
    note-enUS He has 4 spawnpoints (marked on the map)
    note-ptBR Ele tem 4 pontos de ressurgimento (marcados no mapa)
    collect 5102 1 |quest 884 |q 884/1 |opt
    accept 884 |opt
    use 5102 |opt
    note-enUS Kill a Thunderhawk Hatchling or a Thunderhawk Cloudscraper. Loot it for its Thunderhawk Wings
    note-ptBR Mate um Thunderhawk Hatchling ou Thunderhawk Cloudscraper. Saqueie-o para obter as Thunderhawk Wings
    objective 913/1
step
    ifonquest 884
    goto 1413 @-1921.88,-2383.15
    note-enUS Talk to Jorn Skyseer
    note-ptBR Fale com Jorn Skyseer
    turnin 884
    turnin 913
    accept 874
    accept 6382 |only Hunter
step
    goto 1413 @-1921.88,-2383.15
    note-enUS Talk to Jorn Skyseer
    note-ptBR Fale com Jorn Skyseer
    turnin 913
    accept 874
    accept 6382 |only Hunter
step
    only !Tauren !Shaman !Warrior Scourge
    goto 1413 @-1891.48,-2391.93
    note-enUS Talk to Mangletooth
    note-ptBR Fale com Mangletooth
    note-enUS Skip this step if you have the Thunder Bluff flight path
    note-ptBR Pule este passo se já tiver o caminho de voo de Thunder Bluff
step
    only Scourge Warrior Orc Warrior Troll Warrior
    goto 1412 @-1480.52,-2339.56 120 |only !Tauren !Shaman !Warrior Scourge
    goto 1456 @184.96,-1308.69 |only !Tauren !Shaman !Warrior Scourge
    goto 1413 @-1881.35,-2384.5 |only Tauren Shaman Orc Warrior Troll Warrior
    goto 1456 @89.46,-1286.5
    zone 1412 |only !Tauren !Shaman !Warrior Scourge |opt
    zone 1456 |only !Tauren !Shaman !Warrior Scourge |opt
    note-enUS If you have the Thunder Bluff flight path, fly there instead |only !Tauren !Shaman !Warrior Scourge
    note-ptBR Se tiver o caminho de voo de Thunder Bluff, voe para lá |only !Tauren !Shaman !Warrior Scourge
    note-enUS Talk to Omusa |only Tauren Shaman Orc Warrior Troll Warrior
    note-ptBR Fale com Omusa |only Tauren Shaman Orc Warrior Troll Warrior
    fly 1456 |only Tauren Shaman Orc Warrior Troll Warrior |opt
    note-enUS Talk to Ansekhwa
    note-ptBR Fale com Ansekhwa
    train 199
    train 227
step
    only Troll Hunter Orc Hunter Scourge Warrior Warlock Priest
    goto 1456 @89.46,-1286.5
    note-enUS Talk to Ansekhwa
    note-ptBR Fale com Ansekhwa
    train 227
step
    only Rogue
    goto 1456 @89.46,-1286.5
    note-enUS Talk to Ansekhwa
    note-ptBR Fale com Ansekhwa
    train 198
step
    only Rogue
    goto 1456 @110.13,-1299.65
    note-enUS Talk to Kuruk. Buy [Deadly Throwing Axe] from him
    note-ptBR Fale com Kuruk. Compre [Deadly Throwing Axe] dele
    collect 3137 200 |quest 6562 |q 6562/1
step
    ifonquest 868
    goto 1456 @24.85,-1252.75
    note-enUS Talk to Chesmu
    note-ptBR Fale com Chesmu
step
    goto 1456 @24.85,-1252.75
    note-enUS Talk to Chesmu
    note-ptBR Fale com Chesmu
step
    ifnotturnedin 6442
    ifnotdungeon WC
    goto 1456 @38.32,-1300.48
    note-enUS Talk to Innkeeper Pala
    note-ptBR Fale com Innkeeper Pala
    home
step
    ifonquest 853
    ifdungeon WC
    path seq 1456 @222.96,-1079.42 @219.09,-1051.44 @218.68,-1028.41
    goto 1456 @278.48,-995.29
    note-enUS Talk to Clarice
    note-ptBR Fale com Clarice
    accept 264 |opt
    note-enUS Talk to Zamah
    note-ptBR Fale com Zamah
    turnin 853
    accept 962
step
    ifdungeon WC
    goto 1456 @278.48,-995.29
    note-enUS Talk to Zamah
    note-ptBR Fale com Zamah
    accept 962
step
    ifonquest 853
    goto 1456 @278.48,-995.29
    note-enUS Talk to Zamah
    note-ptBR Fale com Zamah
    turnin 853
step
    only Priest
    goto 1456 @252.49,-956.04
    note-enUS Talk to Miles
    note-ptBR Fale com Miles
    accept 5644 |only Scourge Priest
    accept 5642 |only Troll Priest
    trainer
step
    only Mage
    goto 1456 @279.32,-950.76
    note-enUS Talk to Shymm
    note-ptBR Fale com Shymm
    train 12051
step
    only Mage
    goto 1456 @279.32,-950.76
    note-enUS Talk to Shymm
    note-ptBR Fale com Shymm
    train 2138
step
    only Shaman
    goto 1456 @269.92,-980.4
    note-enUS Talk to Tigor
    note-ptBR Fale com Tigor
    train 2645
step
    only Shaman
    goto 1456 @269.92,-980.4
    note-enUS Talk to Tigor
    note-ptBR Fale com Tigor
    train 8498
step
    goto 1456 @206.88,-997.45
    skill firstaid 80 |opt
    note-enUS Talk to Pand
    note-ptBR Fale com Pand
    note-enUS Skip this step if you did not have enough [Linen Cloth] to reach 80 skill
    note-ptBR Pule este passo se não tinha [Linen Cloth] suficiente para chegar a 80 de perícia
    train 3277
    train 7934 |only Rogue
step
    only Rogue
    note-enUS Create [Anti-Venom] if you found any [Small Venom Sacs]
    note-ptBR Crie [Anti-Venom] se tiver encontrado [Small Venom Sacs]
    note-enUS Save them for later
    note-ptBR Guarde-os para depois
    collect 6452 1
step
    path seq 1456 @-212.71,-1065.01
    goto 1456 @-303.83,-1048.66
    note-enUS Talk to Hamuul
    note-ptBR Fale com Hamuul
    turnin 1489
    accept 1490
step
    ifdungeon WC
    goto 1456 @-272.93,-1069.67
    note-enUS Talk to Nara
    note-ptBR Fale com Nara
    turnin 1490
    accept 914
step
    goto 1456 @-272.93,-1069.67
    note-enUS Talk to Nara
    note-ptBR Fale com Nara
    turnin 1490
step
    only Druid
    goto 1456 @-281.59,-1039.61
    note-enUS Talk to Turak
    note-ptBR Fale com Turak
    trainer
    accept 27
step
    only Druid
    goto 1450 @-2678.76,8019.94
    note-enUS Talk to Dendrite
    note-ptBR Fale com Dendrite
    turnin 27
    accept 28
step
    only Druid
    goto 1450 @-2634.67,7634.43 |only Druid
    goto 1450 @-2221.48,7844.89
    collect 15877 1 |quest 28 |q 28/1 |only Druid |opt
    note-enUS Do not go underwater until you arive right above the Bauble |only Druid
    note-ptBR Não mergulhe até estar logo acima do Bauble |only Druid
    objective 28/1
    use 15877
step
    only Druid
    goto 1450 @-2224.25,7874.29
    note-enUS Talk to Tajarri
    note-ptBR Fale com Tajarri
    turnin 28
    accept 30
step
    only Druid
    ifnotdungeon WC
    hearth
    use 6948
step
    only Hunter
    goto 1450 @-2403.61,7785.31 |only Druid
    goto 1456 @-123.26,-1394.49 60 |only Hunter
    goto 1456 @-100.5,-1454.75
    note-enUS Talk to Bunthen |only Druid
    note-ptBR Fale com Bunthen |only Druid
    fly 1456 |only Druid |opt
    note-enUS Talk to Bunthen |only Druid
    note-ptBR Fale com Bunthen |only Druid
    fly 1456 |only Druid |opt
    note-enUS Talk to Urek
    note-ptBR Fale com Urek
    train 5118
step
    only Hunter
    goto 1456 @-100.5,-1454.75
    note-enUS Talk to Urek
    note-ptBR Fale com Urek
    train 5118
step
    only Hunter
    goto 1456 @-47.69,-1434.64
    note-enUS Talk to Hesuwa
    note-ptBR Fale com Hesuwa
    train 24494
step
    only Warrior
    goto 1456 @-123.26,-1394.49 60 |only Warrior
    goto 1456 @-81.09,-1457.74
    note-enUS Talk to Torm
    note-ptBR Fale com Torm
    train 845
    accept 1823
step
    only Rogue
    goto 1456 @-36.52,-1244.05
    note-enUS Talk to Kard. Buy a [Longsword] from him.
    note-ptBR Fale com Kard. Compre [Longsword] dele.
    collect 923 1 |quest 493 |q 493/1
step
    only Warrior
    goto 1456 @-38.71,-1255.32
    note-enUS Equip the [Longsword] |only Rogue
    note-ptBR Equipe a [Longsword] |only Rogue
    use 923 |only Rogue |opt
    note-enUS Talk to Etu. Buy a [Long Staff] from him
    note-ptBR Fale com Etu. Compre [Long Staff] dele
    collect 928 1 |quest 493 |q 493/1
step
    only Shaman
    goto 1456 @-38.71,-1255.32
    note-enUS Equip the [Long Staff] |only Warrior
    note-ptBR Equipe o [Long Staff] |only Warrior
    use 928 |only Warrior |opt
    note-enUS Talk to Etu. Buy a [Long Staff] from him
    note-ptBR Fale com Etu. Compre [Long Staff] dele
    collect 928 1 |quest 493 |q 493/1
step
    only Hunter
    goto 1456 @26.31,-1167.93
    note-enUS Equip the [Long Staff] |only Shaman
    note-ptBR Equipe o [Long Staff] |only Shaman
    use 928 |only Shaman |opt
    note-enUS Talk to Kuna. Buy a [Heavy Recurve Bow] from her
    note-ptBR Fale com Kuna. Compre [Heavy Recurve Bow] dela
    collect 3027 1 |quest 493 |q 493/1
step
    only Hunter
    goto 1456 @26.31,-1167.93
    note-enUS Equip the [Heavy Recurve Bow] |only Hunter
    note-ptBR Equipe o [Heavy Recurve Bow] |only Hunter
    use 3027 |only Hunter |opt
    note-enUS Talk to Kuna
    note-ptBR Fale com Kuna
    note-enUS Buy [Sharp Arrows] from her
    note-ptBR Compre [Sharp Arrows] dela
    collect 2515 1600 |quest 493 |q 493/1 |only Hunter
step
    ifonquest 914
    ifdungeon WC
    goto 1456 @26.1,-1196.66
    goto 1413 @-2053.62,-882.58 100
    note-enUS Talk to Tal
    note-ptBR Fale com Tal
    fp |opt
    note-enUS Now you should be looking for a group to Wailing Caverns
    note-ptBR Agora procure um grupo para Wailing Caverns
    note-enUS Grind Quilboars while assembling a Wailing Caverns group
    note-ptBR Farme Quilboars enquanto monta um grupo para Wailing Caverns
step
    ifdungeon WC
    path seq 1413 @-2134.68,-764.35
    goto 1413 @-2122.52,-734.62 20
    path seq 1414 @-2061.94,-781.68 @-2028.82,-828.29 @-2021.46,-816.03 @-2036.18,-796.4
    goto 1414 @-2039.86,-801.31
    note-enUS Follow the arrow closely to reach the hidden cave
    note-ptBR Siga a seta de perto para chegar à caverna escondida
    note-enUS Talk to Nalpak and Ebru
    note-ptBR Fale com Nalpak e Ebru
    note-enUS They are located above the the Wailing Caverns cave entrance
    note-ptBR Eles ficam acima da entrada da caverna de Wailing Caverns
    accept 1486
    accept 1487
step
    ifonquest 959
    ifdungeon WC
    path closest 1414 @-2058.26,-749.79 @-2003.06,-659.01 @-2072.98,-698.27 @-2124.5,-730.16 @-2058.26,-749.79 @-2003.06,-659.01 @-2072.98,-698.27 @-2124.5,-730.16
    note-enUS Loot the Serpentbloom on the ground
    note-ptBR Saqueie a Serpentbloom no chão
    note-enUS Cast [Find Herbs] to see them on your minimap
    note-ptBR Lance [Find Herbs] para vê-las no minimapa
    objective 962/1 |opt
    note-enUS Loot the Serpentbloom on the ground
    note-ptBR Saqueie a Serpentbloom no chão
    objective 962/1 |opt
    note-enUS Kill all the Deviate Beasts you see. Loot them for their Hides
    note-ptBR Mate todos os Deviate Beasts que ver. Saqueie-os para obter Hides
    objective 1486/1 |opt
    note-enUS Kill Ectoplasms. Loot them for their Essence
    note-ptBR Mate Ectoplasms. Saqueie-os para obter Essence
    objective 1491/1 |opt
    note-enUS Kill Mad Magglish. Loot him for the 99-Year-Old Port
    note-ptBR Mate Mad Magglish. Saqueie-o para obter 99-Year-Old Port
    note-enUS He has a long respawn timer. Skip this step if you cannot find him
    note-ptBR Ele demora para renascer. Pule esta etapa se não o encontrar
    objective 959/1
step
    ifdungeon WC
    path seq 1414 @-2028.82,-636.93 @-2050.9,-585.41 @-2168.66,-607.49
    goto 1414 @-2216.5,-742.43 30
step
    ifonquest 914
    ifdungeon WC
    note-enUS Loot the Serpentbloom on the ground
    note-ptBR Saqueie a Serpentbloom no chão
    note-enUS Cast [Find Herbs] to see them on your minimap
    note-ptBR Lance [Find Herbs] para vê-las no minimapa
    objective 962/1 |opt
    note-enUS Loot the Serpentbloom on the ground
    note-ptBR Saqueie a Serpentbloom no chão
    objective 962/1 |opt
    note-enUS Kill Ectoplasms. Loot them for their Essence
    note-ptBR Mate Ectoplasms. Saqueie-os para obter Essence
    objective 1491/1 |opt
    note-enUS Kill Deviate Ravagers, Vipers, Shamblers and Dreadfangs
    note-ptBR Mate Deviate Ravagers, Vipers, Shamblers e Dreadfangs
    objective 1487/1 |opt
    objective 1487/2 |opt
    objective 1487/3 |opt
    objective 1487/4 |opt
    objective 1486/1 |opt
    note-enUS Kill Lord Cobrahn, Lady Anacondra, Lord Pythas and Lord Serpentis. Loot them for their Gems
    note-ptBR Mate Lord Cobrahn, Lady Anacondra, Lord Pythas e Lord Serpentis. Saqueie-os para obter Gems
    objective 914/1
    objective 914/2
    objective 914/3
    objective 914/4
step
    ifdungeon WC
    note-enUS Talk to the Disciple of Naralex at the entrance of Wailing Caverns. Escort him safely to Naralex
    note-ptBR Fale com Disciple of Naralex na entrada de Wailing Caverns. Escolte-o com segurança até Naralex
    note-enUS Once you have reached Naralex you will get attack by two waves of enemies and finally by Mutanus the Devourer
    note-ptBR Ao chegar em Naralex, você será atacado por duas ondas de inimigos e, por fim, por Mutanus the Devourer
    note-enUS Kill him and loot him for the [Glowing Shard] and use it to start the quest
    note-ptBR Mate-o e saqueie o [Glowing Shard], depois use-o para iniciar a missão
    collect 10441 1
    accept 6981
    use 10441
step
    ifonquest 1487
    ifonquest 1486
    ifdungeon WC
    note-enUS Kill Ectoplasms. Loot them for their Essence
    note-ptBR Mate Ectoplasms. Saqueie-os para obter Essence
    objective 1491/1 |opt
    note-enUS Loot the Serpentbloom on the ground
    note-ptBR Saqueie a Serpentbloom no chão
    note-enUS Cast [Find Herbs] to see them on your minimap
    note-ptBR Lance [Find Herbs] para vê-las no minimapa
    objective 962/1 |opt
    note-enUS Loot the Serpentbloom on the ground
    note-ptBR Saqueie a Serpentbloom no chão
    objective 962/1 |opt
    note-enUS Kill Deviate Ravagers, Vipers, Shamblers and Dreadfangs. . Loot them for their Hides
    note-ptBR Mate Deviate Ravagers, Vipers, Shamblers e Dreadfangs. Saqueie-os para obter Hides
    objective 1487/1
    objective 1487/2
    objective 1487/3
    objective 1487/4
    objective 1486/1
step
    ifonquest 1487
    ifdungeon WC
    note-enUS Kill Deviate Ravagers, Vipers, Shamblers and Dreadfangs
    note-ptBR Mate Deviate Ravagers, Vipers, Shamblers e Dreadfangs
    objective 1487/1
    objective 1487/2
    objective 1487/3
    objective 1487/4
step
    ifonquest 1486
    ifdungeon WC
    note-enUS Kill Deviate Raptors. Loot them for their Hides
    note-ptBR Mate Deviate Raptors. Saqueie-os para obter Hides
    objective 1486/1
step
    ifonquest 1491
    ifdungeon WC
    note-enUS Kill Ectoplasms. Loot them for their Essence
    note-ptBR Mate Ectoplasms. Saqueie-os para obter Essence
    objective 1491/1
step
    ifonquest 962
    ifdungeon WC
    note-enUS Loot the Serpentbloom on the ground
    note-ptBR Saqueie a Serpentbloom no chão
    note-enUS Cast [Find Herbs] to see them on your minimap
    note-ptBR Lance [Find Herbs] para vê-las no minimapa
    objective 962/1
step
    ifskillbelow herbalism 1
    ifonquest 962
    ifdungeon WC
    note-enUS Loot the Serpentbloom on the ground
    note-ptBR Saqueie a Serpentbloom no chão
    objective 962/1
step
    ifcomplete 1491
    ifdungeon WC
    goto 1413 @-3697.24,-929.2
    hearth |opt
    use 6948 |opt
    note-enUS Talk to Mebok
    note-ptBR Fale com Mebok
    turnin 1491
step
    ifcomplete 959
    ifdungeon WC
    goto 1413 @-3770.2,-928.53
    note-enUS Talk to Bigglefuzz
    note-ptBR Fale com Bigglefuzz
    turnin 959
step
    ifonquest 6981
    ifdungeon WC
    goto 1413 @-3760.07,-902.18
    note-enUS Talk to Sputtervalve
    note-ptBR Fale com Sputtervalve
    objective 6981/1
step
    ifonquest 6981
    ifdungeon WC
    goto 1413 @-3770.2,-898.12
    note-enUS Talk to Bragok
    note-ptBR Fale com Bragok
    fp
step
    ifonquest 6981
    ifdungeon WC
    path seq 1413 @-2493.4,-708.95 @-2404.23,-721.11 @-2356.6,-685.98
    goto 1413 @-2259.32,-602.2 50
    note-enUS Talk to Falla
    note-ptBR Fale com Falla
    turnin 6981
    accept 3369
step
    ifturnedin 6981
    ifdungeon WC
    goto 1413 @-2259.32,-602.2
    note-enUS Talk to Falla
    note-ptBR Fale com Falla
    accept 3369
step
    ifcomplete 1487
    ifcomplete 1486
    ifdungeon WC
    path seq 1414 @-2036.18,-796.4
    goto 1414 @-2039.86,-801.31
    note-enUS Talk to Nalpak and Ebru
    note-ptBR Fale com Nalpak e Ebru
    note-enUS They are located above the the Wailing Caverns cave entrance
    note-ptBR Eles ficam acima da entrada da caverna de Wailing Caverns
    turnin 1486
    turnin 1487
step
    ifcomplete 1487
    ifdungeon WC
    goto 1414 @-2039.86,-801.31
    note-enUS Talk to Ebru
    note-ptBR Fale com Ebru
    note-enUS He is located above the the Wailing Caverns cave entrance
    note-ptBR Ele fica acima da entrada da caverna de Wailing Caverns
    turnin 1487
step
    ifcomplete 1486
    ifdungeon WC
    goto 1414 @-2036.18,-796.4
    note-enUS Talk to Nalpak
    note-ptBR Fale com Nalpak
    note-enUS He is located above the the Wailing Caverns cave entrance
    note-ptBR Ele fica acima da entrada da caverna de Wailing Caverns
    turnin 1486
step
    ifcomplete 914
    ifdungeon WC
    goto 1413 @-2595.75,-437.35
    goto 1456 @-272.93,-1069.67
    note-enUS Talk to Devrak
    note-ptBR Fale com Devrak
    fly 1456 |opt
    note-enUS Talk to Nara
    note-ptBR Fale com Nara
    turnin 914
step
    ifonquest 3369
    ifdungeon WC
    goto 1456 @-303.83,-1048.66
    note-enUS Talk to Hamuul
    note-ptBR Fale com Hamuul
    turnin 3369
step
    ifcomplete 962
    ifdungeon WC
    path seq 1456 @219.09,-1051.44
    goto 1456 @276.6,-996.12
    note-enUS Talk to Apothecary Zamah
    note-ptBR Fale com Apothecary Zamah
    turnin 962
step
    ifnotturnedin 6442
    ifdungeon WC
    goto 1456 @38.32,-1300.48
    note-enUS Talk to Innkeeper Pala
    note-ptBR Fale com Innkeeper Pala
    home
step
    abandon 1486
step
    abandon 1487
step
    abandon 1491
step
    abandon 959
step
    abandon 914
step
    abandon 962
step
    ifcomplete 852
    goto 1456 @26.1,-1196.66
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Tal
    note-ptBR Fale com Tal
    fp |opt
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    turnin 852
step
    ifcomplete 855
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    turnin 855
step
    ifturnedin 852
    goto 1413 @-1972.55,-306.95
    abandon 855 |opt
    note-enUS This next quest is very hard & grouping up is recommended. You can kite Warlord Krom'zar around using the building where the quest giver is located
    note-ptBR A próxima missão é muito difícil e é recomendado formar um grupo. Você pode kitar Warlord Krom'zar ao redor do prédio onde fica quem dá a missão
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    accept 4021
step
    ifturnedin 852
    goto 1413 @-1884.39,-289.38
    note-enUS Kill Warlord Krom'zar once he appears. Loot the Banner that he drops on the ground
    note-ptBR Mate Warlord Krom'zar quando ele aparecer. Saqueie o estandarte que ele deixa cair no chão
    note-enUS Be careful! He is a strong elite and is guarded by at least two Kolkar mobs
    note-ptBR Cuidado! Ele é um elite forte e é protegido por pelo menos dois mobs Kolkar
    note-enUS It can take up to 3 minutes until he spawns
    note-ptBR Pode levar até 3 minutos para ele aparecer
    objective 4021/1
step
    ifcomplete 4021
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    turnin 4021
step
    ifcomplete 855
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    turnin 855
step
    ifturnedin 875
    goto 1413 @-1345.3,790.94
    note-enUS Kill Serena Bloodfeather. Loot her for her Head
    note-ptBR Mate Serena Bloodfeather. Saqueie-a para obter a cabeça dela
    objective 876/1
step
    only Hunter
    ifonquest 3921
    goto 1413 @-2347.48,857.83
    note-enUS Talk to Wenikee
    note-ptBR Fale com Wenikee
    turnin 3921
step
    only Hunter
    goto 1413 @-2253.24,1246.31
    note-enUS Talk to Torek
    note-ptBR Fale com Torek
    turnin 6541
step
    only Hunter
    goto 1440 @-2240.94,1778.57
    note-enUS Talk to Torek to start the escort
    note-ptBR Fale com Torek para iniciar a escolta
    note-enUS Torek has a 5 minute respawn time
    note-ptBR Torek leva 5 minutos para reaparecer
    accept 6544
step
    only Hunter
    path seq 1440 @-2110.61,1809.32 @-2052.37,1776.27 @-2006.81,1777.42
    goto 1440 @-2037.38,1777.04
    note-enUS Follow Torek
    note-ptBR Siga Torek
    note-enUS Let Torek and his Splintertree Raiders tank the Silverwing Warriors and Silverwing Sentinels
    note-ptBR Deixe Torek e seus Splintertree Raiders tanquearem os Silverwing Warriors e Silverwing Sentinels
    note-enUS When you clear the building, run toward the Balcony. When Duriel Moonfire comes, let Torek and his Splintertree Raiders take aggro before you deal damage
    note-ptBR Depois de limpar o prédio, corra até a sacada. Quando Duriel Moonfire chegar, deixe Torek e seus Splintertree Raiders pegarem o aggro antes de causar dano
    objective 6544/1
step
    only Hunter
    ifcomplete 6544
    goto 1440 @-2511.97,2271.73
    note-enUS Talk to Ertog
    note-ptBR Fale com Ertog
    turnin 6544
step
    only Hunter
    goto 1440 @-2554.65,2310.55
    note-enUS Talk to Senani
    note-ptBR Fale com Senani
    turnin 6382
    turnin 6383
step
    only Hunter
    goto 1440 @-2520.05,2305.55
    note-enUS Talk to Vhulgra
    note-ptBR Fale com Vhulgra
    fp
step
    ifcomplete 876
    goto 1440 @-2520.05,2305.55 |only Hunter
    goto 1413 @-2607.91,-474.51
    note-enUS Talk to Vhulgra |only Hunter
    note-ptBR Fale com Vhulgra |only Hunter
    fp |only Hunter |opt
    note-enUS Talk to Darsok
    note-ptBR Fale com Darsok
    turnin 876
    accept 1060
step
    ifturnedin 876
    goto 1413 @-2607.91,-474.51
    note-enUS Talk to Darsok
    note-ptBR Fale com Darsok
    accept 1060
step
    goto 1413 @-2555.22,-387.35
    note-enUS Talk to Korran
    note-ptBR Fale com Korran
    accept 868
step
    ifcomplete 6629
    ifcomplete 6523
    path seq 1413 @-950.1,-271.14
    goto 1413 @-943,-265.06
    zone 1442 |opt
    note-enUS Talk to Seereth and Makaba
    note-ptBR Fale com Seereth e Makaba
    turnin 1062
    accept 1063
    accept 1068
    turnin 6629
    turnin 6523
    accept 6401
step
    ifcomplete 6629
    path seq 1413 @-950.1,-271.14
    goto 1413 @-943,-265.06
    note-enUS Talk to Seereth and Makaba
    note-ptBR Fale com Seereth e Makaba
    turnin 1062
    accept 1063
    accept 1068
    turnin 6629
step
    ifcomplete 6523
    path seq 1413 @-950.1,-271.14
    goto 1413 @-943,-265.06
    note-enUS Talk to Seereth and Makaba
    note-ptBR Fale com Seereth e Makaba
    turnin 1062
    accept 1063
    accept 1068
    turnin 6523
    accept 6401
step
    goto 1413 @-950.1,-271.14
    note-enUS Talk to Seereth
    note-ptBR Fale com Seereth
    turnin 1062
    accept 1063
    accept 1068
step
    ifturnedin 876
    path seq 1442 @-786.33,-294.97 @-665.72,-280.97 @-522.63,-294.32
    goto 1442 @-394.2,-272.5
    note-enUS Talk to Jin'Zil
    note-ptBR Fale com Jin'Zil
    turnin 1060
    accept 1058
step
    goto 1442 @-394.2,-272.5
    note-enUS Talk to Jin'Zil
    note-ptBR Fale com Jin'Zil
    accept 1058
step
    only Warlock
    goto 1442 @-331.21,-181
    note-enUS Talk to Ken'zigla
    note-ptBR Fale com Ken'zigla
    turnin 1510
    accept 1511
step
    goto 1442 @-233.54,-177.42
    note-enUS Talk to Xen'Zilla
    note-ptBR Fale com Xen'Zilla
    turnin 6461
step
    only Hunter
    goto 1442 @360.76,451.69
    note-enUS Click the Wanted Poster
    note-ptBR Clique no Wanted Poster
    accept 6284
step
    only Hunter
    path closest 1442 @569.77,573.79 @711.87,513.23 @684.04,582.91 @569.77,573.79
    note-enUS Kill Besseleth. Loot her for for her Fang
    note-ptBR Mate Besseleth. Saqueie-a para obter a presa dela
    note-enUS Clear the area around Besseleth. Be careful as she webs you
    note-ptBR Limpe a área ao redor de Besseleth. Cuidado, ela prende você com teia
    note-enUS This quest is optional. If you can't do it, skip this quest
    note-ptBR Esta missão é opcional. Se não conseguir fazê-la, pule esta missão
    objective 6284/1
step
    ifcomplete 6284
    goto 1442 @940.9,925.14
    note-enUS Talk to Maggran
    note-ptBR Fale com Maggran
    turnin 6284
step
    ifturnedin 6523
    goto 1442 @928.2,1015.99
    note-enUS Talk to Tammra
    note-ptBR Fale com Tammra
    turnin 6401
step
    ifonquest 1095
    goto 1442 @927.72,893.56
    note-enUS Talk to Innkeeper Jayka
    note-ptBR Fale com Innkeeper Jayka
    note-enUS Do NOT set your [Hearthstone]
    note-ptBR NÃO defina sua [Hearthstone]
    vendor |only !Rogue !Warrior
    vendor |only Rogue Warrior
    vendor
step
    ifonquest 1095
    path seq 1442 @925.27,885.42
    goto 1442 @920.88,911.47
    note-enUS Talk to Jeeda on the second floor of the inn
    note-ptBR Fale com Jeeda no segundo andar da estalagem
    vendor |only !Warrior
    vendor |only Warrior
step
    path seq 1442 @834.44,908.21 @856.91,874.67 @896.46,836.57 @940.41,831.04
    goto 1442 @933.09,824.53
    note-enUS Talk to Tsunaman
    note-ptBR Fale com Tsunaman
    accept 6562
    accept 6393
step
    goto 1442 @365.16,878.25
    note-enUS Talk to Ziz
    note-ptBR Fale com Ziz
    turnin 1095
step
    path closest 1442 @265.54,1213 @299.72,1233.84 @332.44,1218.86 @325.11,1174.25 @267.98,1156.34 @262.12,1136.15 @238.68,1122.47 @202.54,1089.58 @169.82,1085.03 @134.17,1067.12 @102.43,1077.86 @64.83,1059.95 @35.53,1054.09 @2.81,1083.07 @-23.07,1085.03 @-63.6,1094.14 @-100.23,1091.86 @-160.78,1070.37 @-197.89,1086 @-212.54,1117.59 @332.44,1218.86
    note-enUS Kill XT:9. It patrols the southern side of the river
    note-ptBR Mate XT:9. Ele patrulha o lado sul do rio
    note-enUS Skip this step if you can't find it
    note-ptBR Pule este passo se não conseguir encontrá-lo
    objective 1068/2
step
    path closest 1442 @-34.79,1390.46 @-3.05,1387.86 @36.51,1448.42 @133.69,1450.7 @134.17,1421.4 @148.34,1400.23 @99.5,1414.56 @85.34,1398.28 @80.46,1362.78 @66.3,1343.57 @23.81,1331.85 @11.11,1299.94 @-8.91,1302.22 @-20.14,1322.73 @-94.85,1302.22 @-145.64,1400.56 @-183.24,1333.48 @-218.89,1337.71 @-241.35,1433.77 @-233.54,1501.83 @80.46,1378.74
    note-enUS Kill XT:4. It patrols the northern side of the river
    note-ptBR Mate XT:4. Ele patrulha o lado norte do rio
    note-enUS Skip this step if you can't find it
    note-ptBR Pule este passo se não conseguir encontrá-lo
    objective 1068/1
step
    path seq 1442 @-357.09,978.55
    goto 1442 @-263.82,962.92
    note-enUS Talk to Piznik
    note-ptBR Fale com Piznik
    note-enUS This quest takes 5 minutes, and will spawn 3 waves of Kobolds at set times:
    note-ptBR Esta missão dura 5 minutos e fará surgir 3 ondas de Kobolds em momentos definidos:
    note-enUS First wave at 15 seconds (3 Kobolds), Second wave at 2 minutes 15 seconds (4 Kobolds, 2 casters 2 melee), and the Third wave at 3 minutes 20 seconds (4 Kobolds). The objective completes at 5 minutes
    note-ptBR Primeira onda aos 15 segundos (3 Kobolds), segunda onda aos 2 minutos e 15 segundos (4 Kobolds, 2 conjuradores e 2 corpo a corpo) e terceira onda aos 3 minutos e 20 segundos (4 Kobolds). O objetivo é concluído aos 5 minutos
    accept 1090
step
    goto 1442 @-258.93,956.73
    note-enUS Protect Piznik from incoming Windshear Vermin
    note-ptBR Proteja Piznik dos Windshear Vermin que vierem atacar
    note-enUS First wave at 15 seconds (3 Kobolds), Second wave at 2 minutes 15 seconds (4 Kobolds, 2 casters 2 melee), and the Third wave at 3 minutes 20 seconds (4 Kobolds). The objective completes at 5 minutes
    note-ptBR Primeira onda aos 15 segundos (3 Kobolds), segunda onda aos 2 minutos e 15 segundos (4 Kobolds, 2 conjuradores e 2 corpo a corpo) e terceira onda aos 3 minutos e 20 segundos (4 Kobolds). O objetivo é concluído aos 5 minutos
    objective 1090/1
step
    goto 1442 @-263.82,962.92
    note-enUS Talk to Piznik
    note-ptBR Fale com Piznik
    turnin 1090
    accept 1092
step
    ifturnedin 1090
    goto 1442 @365.16,878.25
    note-enUS Talk to Ziz
    note-ptBR Fale com Ziz
    turnin 1092
step
    ifturnedin 1092
    path closest 1442 @265.54,1213 @299.72,1233.84 @332.44,1218.86 @325.11,1174.25 @267.98,1156.34 @262.12,1136.15 @238.68,1122.47 @202.54,1089.58 @169.82,1085.03 @134.17,1067.12 @102.43,1077.86 @64.83,1059.95 @35.53,1054.09 @2.81,1083.07 @-23.07,1085.03 @-63.6,1094.14 @-100.23,1091.86 @-160.78,1070.37 @-197.89,1086 @-212.54,1117.59 @332.44,1218.86
    note-enUS Kill XT:9. It patrols the southern side of the river
    note-ptBR Mate XT:9. Ele patrulha o lado sul do rio
    note-enUS Skip this step if you can't find it
    note-ptBR Pule este passo se não conseguir encontrá-lo
    objective 1068/2
step
    ifturnedin 1092
    path closest 1442 @-34.79,1390.46 @-3.05,1387.86 @36.51,1448.42 @133.69,1450.7 @134.17,1421.4 @148.34,1400.23 @99.5,1414.56 @85.34,1398.28 @80.46,1362.78 @66.3,1343.57 @23.81,1331.85 @11.11,1299.94 @-8.91,1302.22 @-20.14,1322.73 @-94.85,1302.22 @-145.64,1400.56 @-183.24,1333.48 @-218.89,1337.71 @-241.35,1433.77 @-233.54,1501.83 @80.46,1378.74
    note-enUS Kill XT:4. It patrols the northern side of the river
    note-ptBR Mate XT:4. Ele patrulha o lado norte do rio
    note-enUS Skip this step if you can't find it
    note-ptBR Pule este passo se não conseguir encontrá-lo
    objective 1068/1
step
    path closest 1442 @-577.33,1532.43
    path closest 1440 @-268.74,2612.28 @637.2,3406.79 @1010.31,3355.28 @1073.74,3635.49 @1052.4,3683.92 @1017.8,3683.15 @978.59,3746.96 @882.29,3749.26 @843.65,3785.78 @885.17,3874.57 @850.57,3921.08 @858.64,3984.89 @928.42,4042.93 @914.58,4116.34 @884.02,4084.44 @784.25,4080.21 @811.93,4021.02 @822.31,3949.91 @815.97,3874.19 @815.97,3807.69 @816.55,3715.82 @848.84,3691.99 @856.91,3654.71 @862.68,3587.06 @918.62,3544.39 @984.36,3552.46 @1052.98,3479.82 @1101.42,3535.17 @1065.09,3574.76
    note-enUS Make sure to avoid Astranaar guards en route. Follow the waypoint for safety
    note-ptBR Evite os guardas de Astranaar pelo caminho. Siga o waypoint para sua segurança
    level 21
step
    ifnotturnedin 6442
    goto 1440 @994.16,3373.73
    note-enUS Talk to Andruk
    note-ptBR Fale com Andruk
    fp
step
    path seq 1440 @1033.37,3354.89 @1013.77,3345.67 @1028.18,3333.37
    goto 1440 @1025.88,3331.45
    note-enUS Talk to Je'neu, Karang, Mitsuwa and Marukai
    note-ptBR Fale com Je'neu, Karang, Mitsuwa e Marukai
    turnin 6562
    accept 216
    accept 6462
    accept 6442
step
    goto 1440 @1004.54,3341.83
    note-enUS Talk to Muglash
    note-ptBR Fale com Muglash
    note-enUS This will start an escort quest. Be careful as it's difficult
    note-ptBR Isto iniciará uma missão de escolta. Cuidado, pois é difícil
    accept 6641 |noauto
step
    goto 1440 @1144.67,3610.89
    note-enUS Kill Wrathtail Nagas. Loot them for their Heads
    note-ptBR Mate Wrathtail Nagas. Saqueie-as para obter as cabeças
    objective 6442/1 |opt
    note-enUS Click the Brazier when you get there
    note-ptBR Clique no Brazier quando chegar lá
    note-enUS There will be waves of Naga that spawn. Be careful once Vorsha comes out, he hits very hard
    note-ptBR Surgirão ondas de Naga. Cuidado quando Vorsha aparecer, ele bate muito forte
    note-enUS You can let Muglash get some aggro before fighting him
    note-ptBR Você pode deixar Muglash pegar um pouco de aggro antes de enfrentá-lo
    objective 6641/1
step
    path closest 1440 @1065.09,3574.76 @1073.74,3635.49 @1052.4,3683.92 @1017.8,3683.15 @978.59,3746.96 @882.29,3749.26 @843.65,3785.78 @885.17,3874.57 @850.57,3921.08 @858.64,3984.89 @928.42,4042.93 @914.58,4116.34 @884.02,4084.44 @784.25,4080.21 @811.93,4021.02 @822.31,3949.91 @815.97,3874.19 @815.97,3807.69 @816.55,3715.82 @848.84,3691.99 @856.91,3654.71 @862.68,3587.06 @918.62,3544.39 @984.36,3552.46 @1052.98,3479.82 @1101.42,3535.17 @1065.09,3574.76
    note-enUS Kill Wrathtail Nagas. Loot them for their Heads
    note-ptBR Mate Wrathtail Nagas. Saqueie-as para obter as cabeças
    objective 6442/1
step
    ifnotdungeon BFD
    path closest 1440 @1073.74,3635.49 @1052.4,3683.92 @1017.8,3683.15 @978.59,3746.96 @882.29,3749.26 @843.65,3785.78 @885.17,3874.57 @850.57,3921.08 @858.64,3984.89 @928.42,4042.93 @914.58,4116.34 @884.02,4084.44 @784.25,4080.21 @811.93,4021.02 @822.31,3949.91 @815.97,3874.19 @815.97,3807.69 @816.55,3715.82 @848.84,3691.99 @856.91,3654.71 @862.68,3587.06 @918.62,3544.39 @984.36,3552.46 @1052.98,3479.82 @1101.42,3535.17 @1065.09,3574.76
    level 21
step
    path seq 1440 @995.31,3357.97
    goto 1440 @1025.88,3331.45
    note-enUS Talk to Warsong Runner and Marukai
    note-ptBR Fale com Warsong Runner e Marukai
    turnin 6641
    turnin 6442
step
    goto 1440 @1013.77,3345.67
    note-enUS Talk to Karang
    note-ptBR Fale com Karang
    accept 216
step
    goto 1440 @994.16,3373.73
    goto 1456 @-212.71,-1065.01 80
    note-enUS Talk to Andruk
    note-ptBR Fale com Andruk
    fly 1456 |opt
    hearth |opt
    use 6948 |opt
    note-enUS Talk to Magatha
    note-ptBR Fale com Magatha
    note-enUS Wait for the RP to finish
    note-ptBR Espere o RP terminar
    turnin 1063
    accept 1064
step
    goto 1456 @278.48,-995.29
    note-enUS Talk to Zamah
    note-ptBR Fale com Zamah
    turnin 1064
    accept 1065
step
    only Warlock
    goto 1456 @26.1,-1196.66
    note-enUS Talk to Tal
    note-ptBR Fale com Tal
    fp
step
    only !Warlock
    goto 1456 @26.1,-1196.66
    note-enUS Talk to Tal
    note-ptBR Fale com Tal
    fly 1454
step
    only Warlock
    goto 1440 @994.16,3373.73
    note-enUS Talk to Andruk
    note-ptBR Fale com Andruk
    fp
step
    only !Warlock
    goto 1440 @994.16,3373.73
    note-enUS Talk to Andruk
    note-ptBR Fale com Andruk
    fly 1454
step
    only Warlock
    goto 1413 @-1898.58,-2391.93
    note-enUS Talk to Logmar
    note-ptBR Fale com Logmar
    turnin 1511
    accept 1515
step
    only Warlock
    goto 1413 @-1765.83,-1622.39
    note-enUS Talk to Dogran
    note-ptBR Fale com Dogran
    turnin 1515
    accept 1512
step
    only Warlock
    goto 1413 @-1881.35,-2384.5
    note-enUS Talk to Omusa
    note-ptBR Fale com Omusa
    fly 1454
step
    only Warlock
    goto 1454 @-4357.36,1850.41
    note-enUS Talk to Gan'rul
    note-ptBR Fale com Gan'rul
    turnin 1512
    accept 1513
step
    only Warlock
    goto 1454 @-4377.13,1804.77
    use 6626 |only Warlock |opt
    note-enUS Kill the Summoned Succubus
    note-ptBR Mate a Summoned Succubus
    objective 1513/1
    use 6626
step
    only Warlock
    goto 1454 @-4357.36,1850.41
    note-enUS Talk to Gan'rul
    note-ptBR Fale com Gan'rul
    turnin 1513
step
    only Warlock
    goto 1454 @-4362.55,1834.7
    note-enUS Talk to Mirket
    note-ptBR Fale com Mirket
    train 6202
step
    only Warlock
    goto 1454 @-4362.55,1834.7
    note-enUS Talk to Mirket
    note-ptBR Fale com Mirket
    train 6223
step
    only Rogue
    goto 1454 @-4320.75,1750.51 |only Rogue
    goto 1454 @-4284.42,1771.28
    note-enUS Talk to Kareth. Buy a [Jambiya] from him if you do not have a dagger |only Rogue
    note-ptBR Fale com Kareth. Compre uma [Jambiya] dele se não tiver uma adaga |only Rogue
    collect 2207 1 |only Rogue |opt
    note-enUS Talk to Shenthul
    note-ptBR Fale com Shenthul
    train 921
    train 8676
    train 1943
    train 1856
    train 1725
    train 1785
    accept 2460
step
    only Rogue
    goto 1454 @-4284.42,1771.28
    note-enUS After Shenthul does his salute, type /Salute while targeting him
    note-ptBR Depois que Shenthul fizer a saudação, digite /Salute com ele como alvo
    objective 2460/1
step
    only Rogue
    goto 1454 @-4284.42,1771.28
    note-enUS Talk to Shenthul
    note-ptBR Fale com Shenthul
    turnin 2460
    accept 2458
step
    only Rogue
    goto 1454 @-4271.1,1810.94
    note-enUS Talk to Rekkul. Buy [Flash Powder] from him
    note-ptBR Fale com Rekkul. Compre [Flash Powder] dele
    collect 2928 40 |quest 2479 |q 2479/1
    collect 3371 40 |quest 2479 |q 2479/1
    collect 5140 20 |quest 2479 |q 2479/1
step
    only Priest Warlock
    goto 1454 @-4299.99,1820.67
    note-enUS Talk to Katis. Buy a [Burning Wand] from her
    note-ptBR Fale com Katis. Compre [Burning Wand] dela
    collect 5210 1 |quest 1507 |q 1507/1
step
    only Mage
    goto 1454 @-4218.64,1473.72
    note-enUS Talk to Pephredo
    note-ptBR Fale com Pephredo
    train 2138
step
    only Mage
    goto 1454 @-4218.64,1473.72
    note-enUS Talk to Pephredo
    note-ptBR Fale com Pephredo
    train 2121
step
    only Mage
    goto 1454 @-4222.85,1474.94
    note-enUS Talk to Thuul at the top of the hut
    note-ptBR Fale com Thuul no topo da cabana
    train 3567
step
    only Troll Priest
    goto 1454 @-4179.79,1452.58
    note-enUS Talk to Ur'kyo
    note-ptBR Fale com Ur'kyo
    turnin 5642
    trainer
step
    only Scourge Priest
    goto 1454 @-4179.79,1452.58
    note-enUS Talk to Ur'kyo
    note-ptBR Fale com Ur'kyo
    train 8103
step
    only Scourge Priest
    goto 1454 @-4179.79,1452.58
    note-enUS Talk to Ur'kyo
    note-ptBR Fale com Ur'kyo
    train 3747
step
    only Druid
    path seq 1454 @-4048.36,1697.85 @-3900.25,1681.48 |only Rogue Druid
    goto 1454 @-3933.49,1707.86 50 |only Rogue Druid
    goto 1413 @-3216.92,1107.13 120 |only Rogue Druid
    goto 1413 @-3119.64,1050.38
    note-enUS Loot the Strange Lockbox in the water for the [Half Pendant of Aquatic Agility]
    note-ptBR Saqueie a Strange Lockbox na água para obter o [Half Pendant of Aquatic Agility]
    collect 15883 1 |quest 31 |q 31/1
step
    only Rogue
    goto 1413 @-3021.35,1214.56 |only Rogue
    goto 1413 @-2995,1236.85
    note-enUS Target Taskmaster Fizzule, then use your [Flare Gun] TWICE and type /Salute |only Rogue
    note-ptBR Selecione Taskmaster Fizzule como alvo, use sua [Flare Gun] DUAS vezes e digite /Salute |only Rogue
    note-enUS Be careful! Do NOT approach him until he becomes friendly or he will attack you! |only Rogue
    note-ptBR Cuidado! NÃO se aproxime dele até que ele fique amistoso, ou ele atacará você! |only Rogue
    use 8051 |only Rogue |opt
    note-enUS Talk to Taskmaster Fizzule
    note-ptBR Fale com Taskmaster Fizzule
    turnin 2458
    accept 2478
step
    only Rogue
    goto 1413 @-2930.15,1209.15
    note-enUS Use [Pick Pocket] on Foreman Silixiz for his Tower Key
    note-ptBR Use [Pick Pocket] em Foreman Silixiz para pegar a Tower Key dele
    objective 2478/5
step
    only Rogue
    goto 1413 @-2922.04,1224.69
    note-enUS Each mob here will take increased damage to certain abilities |only Rogue
    note-ptBR Cada mob aqui recebe dano aumentado de certas habilidades |only Rogue
    note-enUS Use [Ambush] on the Mutated Venture Co. Drones |only Rogue
    note-ptBR Use [Ambush] nos Mutated Venture Co. Drones |only Rogue
    note-enUS Use [Rupture] on the Venture Co. Patrollers |only Rogue
    note-ptBR Use [Rupture] nos Venture Co. Patrollers |only Rogue
    note-enUS Use [Eviscerate] on the Venture Co. Lookouts once (1 combo point) |only Rogue
    note-ptBR Use [Eviscerate] nos Venture Co. Lookouts uma vez (1 ponto de combo) |only Rogue
    note-enUS Run into the Rogue Tower and kill Drones, Patrollers and Lookouts
    note-ptBR Entre na Rogue Tower e mate Drones, Patrollers e Lookouts
    objective 2478/1
    objective 2478/3
    objective 2478/2
step
    only Rogue
    goto 1413 @-2927.11,1236.18
    note-enUS At the top of the tower you'll find Gallywix. Loot him for his Head
    note-ptBR No topo da torre você encontrará Gallywix. Saqueie-o para obter a Cabeça dele
    note-enUS Use [Ambush] to reduce his HP to half. Use [Gouge] to restore energy and use [Evasion]
    note-ptBR Use [Ambush] para reduzir a vida dele pela metade. Use [Gouge] para recuperar energia e use [Evasion]
    note-enUS Remember to use a Potion and [Thistle Tea] if needed
    note-ptBR Lembre-se de usar uma poção e [Thistle Tea] se necessário
    objective 2478/4
step
    only Rogue
    goto 1413 @-2927.11,1236.18
    note-enUS Use your lock picking to open Gallywix's Lockbox & loot the Mixture
    note-ptBR Use seu arrombamento para abrir a Gallywix's Lockbox e saqueie a Mixture
    objective 2478/6
step
    only Rogue Druid
    goto 1413 @-2595.75,-437.35
    note-enUS Talk to Devrak
    note-ptBR Fale com Devrak
    fly 1454
step
    only Rogue
    goto 1454 @-4284.42,1771.28
    note-enUS Talk to Shenthul
    note-ptBR Fale com Shenthul
    turnin 2478
    accept 2479
step
    only Rogue
    goto 1454 @-4271.1,1810.94
    note-enUS Talk to Rekkul. Buy [Dust of Decay] and [Empty Vials] from him
    note-ptBR Fale com Rekkul. Compre [Dust of Decay] e [Empty Vials] dele
    collect 2928 20 |quest 2479 |q 2479/1
    collect 3371 20 |quest 2479 |q 2479/1
step
    only Shaman
    goto 1454 @-4225.09,1933.29
    note-enUS Talk to Kardris
    note-ptBR Fale com Kardris
    train 8498
step
    only Shaman
    goto 1454 @-4225.09,1933.29
    note-enUS Talk to Kardris
    note-ptBR Fale com Kardris
    train 905
step
    only Troll Warrior Scourge Warrior Tauren Warrior
    goto 1454 @-4824,2090.54
    note-enUS Talk to Hanashi
    note-ptBR Fale com Hanashi
    train 197
step
    only Warrior
    goto 1454 @-4801.42,1980.53
    note-enUS Talk to Grezz
    note-ptBR Fale com Grezz
    train 6192
step
    only Warrior
    goto 1454 @-4801.42,1980.53
    note-enUS Talk to Grezz
    note-ptBR Fale com Grezz
    train 5308
step
    only Hunter
    goto 1454 @-4607.02,2100.64
    note-enUS Talk to Ormak
    note-ptBR Fale com Ormak
    train 14323
step
    only Hunter
    goto 1454 @-4607.02,2100.64
    note-enUS Talk to Ormak
    note-ptBR Fale com Ormak
    train 14262
step
    only Hunter
    goto 1454 @-4611.09,2135.15
    note-enUS Talk to Xao'tsu
    note-ptBR Fale com Xao'tsu
    train 24558
step
    only Rogue
    goto 1454 @-4355.53,1520.68
    note-enUS Talk to Trak'gen. Buy [Deadly Throwing Axe] from him
    note-ptBR Fale com Trak'gen. Compre [Deadly Throwing Axe] dele
    collect 3137 200 |quest 6544 |q 6544/1
step
    only Rogue
    note-enUS If you have any [Anti-Venom], use one to cure yourself of [Touch of Zanzil]
    note-ptBR Se tiver algum [Anti-Venom], use um para se curar do [Touch of Zanzil]
    use 6452
step
    abandon 6421
step
    abandon 4021
step
    abandon 6481
step
    abandon 6284
step
    abandon 6641
step
    abandon 6563
]==])

register([==[
#format 1
#id forever.dg.h.13-20-the-barrens
#name 13-20 The Barrens (dungeons)
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Horde
#levels 13-20
#zone 1413
#name-ptBR 13-20 The Barrens (masmorras)
#group Leveling with dungeons (Horde)
#group-ptBR Evolução com masmorras (Horda)
#subgroup Speedrun 1-22
#subgroup-ptBR Rota rápida 1-22
#next forever.dg.h.20-24-stonetalon-barrens

step
    only !Tauren
    goto 1413 @-2516.71,-590.71 |only !Tauren
    goto 1413 @-2672.76,-544.77
    note-enUS Talk to Tonga
    note-ptBR Fale com Tonga
    accept 870
step
    only !Tauren
    ifonquest 842
    goto 1413 @-2670.74,-482.61
    note-enUS Talk to Sergra
    note-ptBR Fale com Sergra
    turnin 842
    accept 844
step
    only !Tauren
    goto 1413 @-2670.74,-482.61
    note-enUS Talk to Sergra
    note-ptBR Fale com Sergra
    accept 844
step
    only !Tauren
    goto 1413 @-2595.75,-473.15
    note-enUS Talk to Thork
    note-ptBR Fale com Thork
    accept 871
    accept 5041
step
    only Scourge
    ifnotturnedin 1492
    goto 1413 @-2595.75,-437.35
    note-enUS Talk to Devrak
    note-ptBR Fale com Devrak
    fp
step
    only !Tauren
    ifnotturnedin 848
    goto 1413 @-2589.67,-424.51
    note-enUS Talk to Helbrim
    note-ptBR Fale com Helbrim
    accept 1492
    accept 848
step
    only !Tauren
    goto 1413 @-2589.67,-424.51
    note-enUS Talk to Helbrim
    note-ptBR Fale com Helbrim
    accept 1492
step
    only Orc Hunter Troll Hunter
    goto 1413 @-2556.23,-351.54
    note-enUS Talk to Uthrok. Buy a [Laminated Recurve Bow] from him
    note-ptBR Fale com Uthrok. Compre [Laminated Recurve Bow] dele
    collect 2507 1 |quest 871 |q 871/1
step
    only Troll Hunter Orc Hunter
    goto 1413 @-2556.23,-351.54
    note-enUS Equip the [Laminated Recurve Bow] |only Orc Hunter Troll Hunter
    note-ptBR Equipe o [Laminated Recurve Bow] |only Orc Hunter Troll Hunter
    use 2507 |only Orc Hunter Troll Hunter |opt
    note-enUS Talk to Uthrok
    note-ptBR Fale com Uthrok
    vendor
    note-enUS If it's not up, buy a [Reinforced Bow] instead
    note-ptBR Se não estiver disponível, compre um [Reinforced Bow]
    collect 2515 1200 |quest 870 |q 870/1 |only Hunter
step
    only Orc Warrior
    goto 1413 @-2568.39,-356.95
    note-enUS Talk to Nargal. Buy a [Tabar] from him
    note-ptBR Fale com Nargal. Compre [Tabar] dele
    collect 1196 1 |quest 871 |q 871/1
step
    only Orc Shaman Troll Shaman
    goto 1413 @-2568.39,-356.95
    note-enUS Equip the [Tabar] |only Orc Warrior
    note-ptBR Equipe o [Tabar] |only Orc Warrior
    use 1196 |only Orc Warrior |opt
    note-enUS Talk to Nargal. Buy a [Mace] from him
    note-ptBR Fale com Nargal. Compre [Mace] dele
    collect 852 1 |quest 871 |q 871/1
step
    only !Tauren
    goto 1413 @-2639.32,-436
    note-enUS Equip the [Mace] |only Orc Shaman Troll Shaman
    note-ptBR Equipe a [Mace] |only Orc Shaman Troll Shaman
    use 852 |only Orc Shaman Troll Shaman |opt
    note-enUS Talk to Gazrog
    note-ptBR Fale com Gazrog
    accept 869
step
    only !Tauren
    ifnotturnedin 1492
    goto 1413 @-2645.4,-406.94
    note-enUS Talk to Innkeeper Boorand
    note-ptBR Fale com Innkeeper Boorand
    home
step
    only !Scourge !Tauren
    goto 1413 @-2709.24,-403.57
    note-enUS Talk to Zargh
    note-ptBR Fale com Zargh
    accept 6365
step
    only !Tauren !Scourge
    ifonquest 924
    path seq 1413 @-2554.2,80.18 @-2477.19,136.26 @-2363.7,232.87 |only !Tauren !Scourge
    goto 1413 @-2205.62,314.62 100 |only !Tauren !Scourge
    goto 1413 @-2238.04,324.08
    note-enUS Kill Plainstriders. Loot them for their Beaks
    note-ptBR Mate Plainstriders. Saqueie-os para obter os bicos
    objective 844/1 |opt
    note-enUS Right click the Altar
    note-ptBR Clique com o botão direito no Altar
    note-enUS Make sure you have a [Flawed Power Stone] (30 minute duration) on you
    note-ptBR Tenha uma [Flawed Power Stone] (duração de 30 minutos) com você
    collect 4986 1 |quest 924
    objective 924/1
step
    only Shaman
    path seq 1413 @-2947.38,-92.1 @-2869.35,-49.54
    goto 1413 @-2805.51,-111.02
    note-enUS Kill a Razormane Water Seeker or Razormane Thornweaver. Loot them for a Fire Tar
    note-ptBR Mate um Razormane Water Seeker ou Razormane Thornweaver. Saqueie-o para obter um Fire Tar
    objective 1525/1
step
    goto 1413 @-3021.35,-231.96
    note-enUS Kill Water Seekers, Thornweavers and Hunters
    note-ptBR Mate Water Seekers, Thornweavers e Hunters
    objective 871/1 |opt
    objective 871/2 |opt
    objective 871/3 |opt
    use 4926
    note-enUS If it's not up you'll get it later
    note-ptBR Se não estiver disponível, você o pegará depois
    collect 4926 1 |quest 819
    accept 819
step
    path closest 1413 @-2811.59,-42.78 @-2875.43,-52.24 @-2931.16,-89.4 @-3001.08,-117.78 @-3037.56,-164.39 @-3034.52,-221.82 @-2991.96,-239.39 @-2899.75,-209.66 @-2854.15,-151.56 @-2799.43,-92.78 @-2811.59,-42.78
    note-enUS Kill Water Seekers, Thornweavers and Hunters
    note-ptBR Mate Water Seekers, Thornweavers e Hunters
    objective 871/1
    objective 871/2
    objective 871/3
step
    only Warrior !Scourge
    path seq 1413 @-2902.79,-276.55 @-3004.12,-298.17 |only Warrior !Scourge
    goto 1413 @-3110.52,-320.46 30 |only Warrior !Scourge
    goto 1413 @-3176.39,-437.35
    note-enUS Talk to Thun'grim
    note-ptBR Fale com Thun'grim
    turnin 1502
    accept 1503
step
    only Warrior !Scourge
    goto 1413 @-2955.48,-188.04
    note-enUS Loot the Stolen Iron Chest for its Forged Steel Bars
    note-ptBR Saqueie o Stolen Iron Chest para obter as Forged Steel Bars
    objective 1503/1
step
    only Warrior !Scourge
    path seq 1413 @-2902.79,-276.55 @-3004.12,-298.17 |only Warrior !Scourge
    goto 1413 @-3110.52,-320.46 30 |only Warrior !Scourge
    goto 1413 @-3176.39,-437.35
    note-enUS Talk to Thun'grim
    note-ptBR Fale com Thun'grim
    turnin 1503
step
    path closest 1413 @-2819.7,-359.65 @-2784.23,-163.04 @-2771.06,-306.95 @-2805.51,-386 @-2738.63,-610.31 @-2576.5,-610.98 @-2494.42,-485.32 @-2448.82,-398.84 @-2537.99,-260.33 @-2730.52,-273.17 @-2819.7,-359.65
    note-enUS Kill every Raptor you see. Loot them for their Heads
    note-ptBR Mate todos os Raptors que vir. Saqueie-os para obter as cabeças
    objective 869/1 |opt
    note-enUS Kill Plainstriders. Loot them for their Beaks
    note-ptBR Mate Plainstriders. Saqueie-os para obter os bicos
    objective 844/1
step
    goto 1413 @-2697.08,-461.67 |only Tauren Warrior
    goto 1413 @-2670.74,-482.61
    vendor |only Tauren Warrior |opt
    note-enUS Talk to Sergra
    note-ptBR Fale com Sergra
    turnin 842 |only Tauren Shaman
    turnin 844
    accept 845
step
    ifcomplete 871
    goto 1413 @-2595.75,-473.15
    note-enUS Talk to Thork
    note-ptBR Fale com Thork
    turnin 871
    accept 872
step
    ifturnedin 871
    goto 1413 @-2595.75,-473.15
    note-enUS Talk to Thork
    note-ptBR Fale com Thork
    accept 872
step
    goto 1413 @-2607.91,-475.18
    note-enUS Talk to Darsok
    note-ptBR Fale com Darsok
    note-enUS He is at the top of the tower
    note-ptBR Ele está no topo da torre
    accept 867
step
    only !Tauren !Scourge
    goto 1413 @-2595.75,-437.35
    note-enUS Talk to Devrak
    note-ptBR Fale com Devrak
    turnin 6365
    accept 6384
step
    only Orc Hunter Troll Hunter
    goto 1413 @-2556.23,-351.54
    note-enUS Talk to Uthrok. Buy a [Laminated Recurve Bow] from him
    note-ptBR Fale com Uthrok. Compre [Laminated Recurve Bow] dele
    collect 2507 1 |quest 872 |q 872/1
step
    only Troll Hunter Orc Hunter
    goto 1413 @-2556.23,-351.54
    note-enUS Equip the [Laminated Recurve Bow] |only Orc Hunter Troll Hunter
    note-ptBR Equipe o [Laminated Recurve Bow] |only Orc Hunter Troll Hunter
    use 2507 |only Orc Hunter Troll Hunter |opt
    note-enUS Talk to Uthrok
    note-ptBR Fale com Uthrok
    vendor
    note-enUS If it's not up, buy a [Reinforced Bow] instead
    note-ptBR Se não estiver disponível, compre um [Reinforced Bow]
    collect 2515 1200 |quest 870 |q 870/1 |only Hunter
step
    only Tauren Hunter
    goto 1413 @-2556.23,-351.54
    note-enUS Talk to Uthrok. Buy a [Hunter's Boomstick] from him
    note-ptBR Fale com Uthrok. Compre [Hunter's Boomstick] dele
    collect 2511 1 |quest 872 |q 872/1
step
    only Orc Warrior
    goto 1413 @-2568.39,-356.95
    note-enUS Equip the [Hunter's Boomstick] |only Tauren Hunter
    note-ptBR Equipe o [Hunter's Boomstick] |only Tauren Hunter
    use 2511 |only Tauren Hunter |opt
    note-enUS Talk to Nargal. Buy a [Tabar] from him
    note-ptBR Fale com Nargal. Compre [Tabar] dele
    collect 1196 1 |quest 872 |q 872/1
step
    only Orc Shaman Troll Shaman
    goto 1413 @-2568.39,-356.95
    note-enUS Equip the [Tabar] |only Orc Warrior
    note-ptBR Equipe o [Tabar] |only Orc Warrior
    use 1196 |only Orc Warrior |opt
    note-enUS Talk to Nargal. Buy a [Mace] from him
    note-ptBR Fale com Nargal. Compre [Mace] dele
    collect 852 1 |quest 871 |q 871/1
step
    only Tauren
    ifdungeon RFC
    goto 1413 @-2595.75,-437.35 |only !Scourge !Tauren
    path seq 1413 @-3021.35,-231.96
    goto 1413 @-3029.46,261.25
    note-enUS Equip the [Mace] |only Orc Shaman Troll Shaman
    note-ptBR Equipe a [Mace] |only Orc Shaman Troll Shaman
    use 852 |only Orc Shaman Troll Shaman |opt
    note-enUS Talk to Devrak |only !Scourge !Tauren
    note-ptBR Fale com Devrak |only !Scourge !Tauren
    fly 1454 |only !Scourge !Tauren |opt
    use 4926
    note-enUS You can get it later if it's not there
    note-ptBR Você pode pegá-lo depois se não estiver lá
    collect 4926 1 |quest 819
    accept 819
step
    only Tauren
    ifdungeon RFC
    ifonquest 872
    path seq 1413 @-3127.75,-55.62 |only Tauren
    goto 1413 @-3382.1,-54.27 50 |only Tauren
    goto 1413 @-3324.34,-217.09
    note-enUS Kill Razormane Geomancers and Razormane Defenders |only Tauren
    note-ptBR Mate Razormane Geomancers e Razormane Defenders |only Tauren
    objective 872/1 |only Tauren |opt
    objective 872/2 |only Tauren |opt
    note-enUS Loot the Crossroads' Supply Crates |only Tauren
    note-ptBR Saqueie os Crossroads' Supply Crates |only Tauren
    note-enUS It has multiple spawn locations |only Tauren
    note-ptBR Tem vários locais de spawn |only Tauren
    objective 5041/1 |only Tauren |opt
    note-enUS Kill Kreenig Snarlsnout. Loot him for his Tusk
    note-ptBR Mate Kreenig Snarlsnout. Saqueie-o para obter a presa dele
    objective 872/3
step
    only Tauren
    ifdungeon RFC
    ifonquest 872
    path seq 1413 @-3127.75,-55.62 |only Tauren
    goto 1413 @-3382.1,-54.27 50 |only Tauren
    path seq 1413 @-3292.92,-212.36
    goto 1413 @-3402.36,-48.19
    note-enUS Kill Razormane Geomancers and Razormane Defenders |only Tauren
    note-ptBR Mate Razormane Geomancers e Razormane Defenders |only Tauren
    objective 872/1 |only Tauren |opt
    objective 872/2 |only Tauren |opt
    note-enUS Loot the Crossroads' Supply Crates
    note-ptBR Saqueie os Crossroads' Supply Crates
    note-enUS It has multiple spawn locations
    note-ptBR Tem vários locais de spawn
    objective 5041/1
step
    only Tauren
    ifdungeon RFC
    ifonquest 872
    path closest 1413 @-3345.62,-101.56 @-3393.24,-102.24 @-3419.59,-40.08 @-3419.59,-0.89 @-3361.83,-1.57 @-3317.24,-7.65 @-3237.19,-27.92 @-3139.91,-46.16 @-3126.74,-101.56 @-3178.42,-107.64 @-3205.78,-119.13 @-3218.95,-81.97 @-3278.74,-75.21 @-3345.62,-101.56
    note-enUS Kill Razormane Geomancers and Razormane Defenders
    note-ptBR Mate Razormane Geomancers e Razormane Defenders
    objective 872/1
    objective 872/2
step
    only Tauren Shaman
    ifdungeon RFC
    path seq 1411 @-3905.13,-228.41 @-3899.31,-241.45 @-3906.71,-270.71 @-3910.94,-247.45 @-3931.56,-240.75 @-3964.35,-242.51 @-3974.39,-228.76 @-4020.92,-219.95 @-4034.67,-232.64 |only Tauren Shaman
    goto 1411 @-4033.08,-255.91 10 |only Tauren Shaman
    goto 1411 @-3999.24,-268.95
    note-enUS Kill any Zhevra you see. Loot them for their Hooves |only Tauren
    note-ptBR Mate os Zhevras que vir. Saqueie-os para obter os cascos |only Tauren
    objective 845/1 |only Tauren |opt
    note-enUS Talk to Telf
    note-ptBR Fale com Telf
    turnin 1525
    accept 1526
step
    only Tauren Shaman
    ifdungeon RFC
    goto 1411 @-3981.27,-256.61 |only Tauren Shaman
    goto 1411 @-4022.51,-243.92
    use 6636 |only Tauren Shaman |opt
    note-enUS Kill the Minor Manifestation of Fire. Loot him for a Glowing Ember
    note-ptBR Mate a Minor Manifestation of Fire. Saqueie-a para obter uma Glowing Ember
    objective 1526/1
step
    only Tauren Shaman
    ifdungeon RFC
    goto 1411 @-4022.51,-243.92
    note-enUS Click the Brazier on the ground
    note-ptBR Clique no Brazier no chão
    turnin 1526
    accept 1527
step
    only Tauren Shaman
    ifdungeon RFC
    goto 1413 @-3037.56,264.63
    note-enUS Talk to Kranal
    note-ptBR Fale com Kranal
    turnin 1527
step
    only Tauren Shaman
    ifdungeon RFC
    goto 1413 @-3029.46,261.25
    use 4926
    collect 4926 1 |quest 819
    accept 819
step
    only Tauren
    ifnotturnedin 5728
    ifdungeon RFC
    goto 1454 @-4367.46,1405.44 50 |only Tauren
    goto 1454 @-4313.6,1676.24
    zone 1454 |only Tauren |opt
    note-enUS Talk to Doras
    note-ptBR Fale com Doras
    note-enUS Don't fly anywhere!
    note-ptBR Não voe para lugar nenhum!
    fp
step
    only !Scourge
    ifdungeon RFC
    goto 1454 @-4125.79,1920.1
    note-enUS Talk to Thrall
    note-ptBR Fale com Thrall
    accept 5726
step
    only !Scourge
    ifdungeon RFC
    goto 1411 @-4769.1,1484.39
    note-enUS Kill Burning Blade mobs in Skull Rock until Lieutenant's Insignia drops
    note-ptBR Mate mobs Burning Blade em Skull Rock até Lieutenant's Insignia dropar
    objective 5726/1
step
    only !Scourge
    ifdungeon RFC
    goto 1454 @-4125.79,1920.1
    note-enUS Talk to Thrall
    note-ptBR Fale com Thrall
    turnin 5726
    accept 5727
step
    only !Scourge
    ifdungeon RFC
    goto 1454 @-4376.29,1802.43
    note-enUS Talk to Neeru Fireblade
    note-ptBR Fale com Neeru Fireblade
    accept 5761
step
    only !Scourge
    ifdungeon RFC
    goto 1454 @-4376.29,1802.43
    note-enUS Talk to Neeru Fireblade
    note-ptBR Fale com Neeru Fireblade
    objective 5727/1
step
    only !Scourge
    ifdungeon RFC
    goto 1454 @-4125.79,1920.1
    note-enUS Talk to Thrall
    note-ptBR Fale com Thrall
    turnin 5727
    accept 5728
step
    only !Scourge
    ifdungeon RFC
    goto 1454 @-4420.76,1815.8
step
    only !Scourge
    ifdungeon RFC
    note-enUS If possible, have party members share the following quests
    note-ptBR Se possível, peça aos membros do grupo que compartilhem as seguintes missões
    accept 5722
    accept 5723
step
    only !Scourge
    ifonquest 5722
    ifdungeon RFC
    note-enUS Kill Ragefire Troggs and Ragefire Shamans |only !Scourge
    note-ptBR Mate Ragefire Troggs e Ragefire Shamans |only !Scourge
    objective 5723/1 |only !Scourge |opt
    objective 5723/2 |only !Scourge |opt
    note-enUS Talk to Maur
    note-ptBR Fale com Maur
    turnin 5722
    accept 5724
step
    only !Scourge
    ifturnedin 5722
    ifdungeon RFC
    note-enUS Talk to Maur
    note-ptBR Fale com Maur
    accept 5724
step
    only !Scourge
    ifonquest 5723
    ifdungeon RFC
    note-enUS Kill Ragefire Troggs and Ragefire Shamans
    note-ptBR Mate Ragefire Troggs e Ragefire Shamans
    objective 5723/1
    objective 5723/2
step
    only !Scourge
    ifonquest 5761
    ifdungeon RFC
    note-enUS Kill Searing Blade Cultists and Searing Blade Warlocks. Loot them for the Spells of Shadow and Incantations from the Nether |only !Scourge
    note-ptBR Mate Searing Blade Cultists e Searing Blade Warlocks. Saqueie-os para obter Spells of Shadow e Incantations from the Nether |only !Scourge
    objective 5725/1 |only !Scourge |opt
    objective 5725/2 |only !Scourge |opt
    note-enUS Kill Taragaman the Hungerer. Loot him for his Heart
    note-ptBR Mate Taragaman the Hungerer. Saqueie-o para obter Heart
    objective 5761/1
step
    only !Scourge
    ifonquest 5728
    ifdungeon RFC
    note-enUS Kill Bazzalan and Jergosh the Invoker
    note-ptBR Mate Bazzalan e Jergosh the Invoker
    objective 5728/1
    objective 5728/2
step
    only !Scourge
    ifonquest 5725
    ifdungeon RFC
    note-enUS Kill Searing Blade Cultists and Searing Blade Warlocks. Loot them for the Spells of Shadow and Incantations from the Nether
    note-ptBR Mate Searing Blade Cultists e Searing Blade Warlocks. Saqueie-os para obter Spells of Shadow e Incantations from the Nether
    objective 5725/1
    objective 5725/2
step
    only !Scourge
    ifcomplete 5761
    ifdungeon RFC
    goto 1454 @-4376.29,1802.43
    note-enUS Talk to Neeru Fireblade
    note-ptBR Fale com Neeru Fireblade
    turnin 5761
step
    only !Scourge
    ifcomplete 5728
    ifdungeon RFC
    goto 1454 @-4125.79,1920.1
    note-enUS Talk to Thrall
    note-ptBR Fale com Thrall
    turnin 5728
    accept 5729
step
    only !Scourge
    ifturnedin 5728
    ifdungeon RFC
    goto 1454 @-4125.79,1920.1
    note-enUS Talk to Thrall
    note-ptBR Fale com Thrall
    accept 5729
step
    only !Scourge
    ifdungeon RFC
    ifturnedin 5728
    goto 1454 @-4376.29,1802.43
    note-enUS Talk to Neeru Fireblade
    note-ptBR Fale com Neeru Fireblade
    turnin 5729
    accept 5730
step
    only !Scourge
    ifturnedin 5728
    ifdungeon RFC
    goto 1454 @-4125.79,1920.1
    note-enUS Talk to Thrall
    note-ptBR Fale com Thrall
    turnin 5730
step
    only Tauren Orc Warrior Troll Warrior Orc Shaman Troll Shaman
    ifonquest 5724
    ifcomplete 5723
    ifdungeon RFC
    goto 1413 @-2595.75,-437.35 |only Orc Warrior Troll Warrior Orc Shaman Troll Shaman
    goto 1456 @-212.71,-1065.01 80 |only Tauren Orc Warrior Troll Warrior Orc Shaman Troll Shaman
    goto 1456 @-218.13,-1055.97
    note-enUS Talk to Doras |only Tauren
    note-ptBR Fale com Doras |only Tauren
    fly 1456 |only Tauren |opt
    hearth |only !Tauren |opt
    use 6948 |only !Tauren |opt
    note-enUS Talk to Devrak |only Orc Warrior Troll Warrior Orc Shaman Troll Shaman
    note-ptBR Fale com Devrak |only Orc Warrior Troll Warrior Orc Shaman Troll Shaman
    fly 1456 |only Orc Warrior Troll Warrior Orc Shaman Troll Shaman |opt
    note-enUS Talk to Rahauro
    note-ptBR Fale com Rahauro
    turnin 5724
    turnin 5723
step
    only Tauren Orc Warrior Troll Warrior Orc Shaman Troll Shaman
    ifonquest 5724
    ifdungeon RFC
    goto 1456 @-218.13,-1055.97
    note-enUS Talk to Rahauro
    note-ptBR Fale com Rahauro
    turnin 5724
step
    only Tauren Orc Warrior Troll Warrior Orc Shaman Troll Shaman
    ifcomplete 5723
    ifdungeon RFC
    goto 1456 @-218.13,-1055.97
    note-enUS Talk to Rahauro
    note-ptBR Fale com Rahauro
    turnin 5723
step
    goto 1456 @26.1,-1196.66
    path seq 1413 @-3021.35,-231.96
    goto 1413 @-3029.46,261.25
    hearth |opt
    use 6948 |opt
    note-enUS Talk to Tal
    note-ptBR Fale com Tal
    fp |opt
    use 4926
    note-enUS Wait for the respawn if it's not up
    note-ptBR Espere reaparecer se não estiver lá
    collect 4926 1 |quest 819
    accept 819
step
    ifonquest 872
    path seq 1413 @-3127.75,-55.62 @-3382.1,-54.27
    goto 1413 @-3324.34,-217.09
    note-enUS Kill Razormane Geomancers and Razormane Defenders
    note-ptBR Mate Razormane Geomancers e Razormane Defenders
    objective 872/1 |opt
    objective 872/2 |opt
    note-enUS Loot the Crossroads' Supply Crates
    note-ptBR Saqueie os Crossroads' Supply Crates
    note-enUS It has multiple spawn locations
    note-ptBR Tem vários locais de spawn
    objective 5041/1 |opt
    note-enUS Kill Kreenig Snarlsnout. Loot him for his Tusk
    note-ptBR Mate Kreenig Snarlsnout. Saqueie-o para obter a presa dele
    objective 872/3
step
    ifonquest 872
    path seq 1413 @-3127.75,-55.62 @-3382.1,-54.27 @-3292.92,-212.36
    goto 1413 @-3402.36,-48.19
    note-enUS Kill Razormane Geomancers and Razormane Defenders
    note-ptBR Mate Razormane Geomancers e Razormane Defenders
    objective 872/1 |opt
    objective 872/2 |opt
    note-enUS Loot the Crossroads' Supply Crates
    note-ptBR Saqueie os Crossroads' Supply Crates
    note-enUS It has multiple spawn locations
    note-ptBR Tem vários locais de spawn
    objective 5041/1
step
    ifonquest 872
    path closest 1413 @-3345.62,-101.56 @-3393.24,-102.24 @-3419.59,-40.08 @-3419.59,-0.89 @-3361.83,-1.57 @-3317.24,-7.65 @-3237.19,-27.92 @-3139.91,-46.16 @-3126.74,-101.56 @-3178.42,-107.64 @-3205.78,-119.13 @-3218.95,-81.97 @-3278.74,-75.21 @-3345.62,-101.56
    note-enUS Kill Razormane Geomancers and Razormane Defenders
    note-ptBR Mate Razormane Geomancers e Razormane Defenders
    objective 872/1
    objective 872/2
step
    only !Tauren !Scourge
    ifcomplete 924
    goto 1413 @-3694.2,256.52
    note-enUS Kill any Zhevra you see. Loot them for their Hooves |only !Tauren !Scourge
    note-ptBR Mate os Zhevras que vir. Saqueie-os para obter os cascos |only !Tauren !Scourge
    objective 845/1 |only !Tauren !Scourge |opt
    note-enUS Talk to Ak'Zeloth
    note-ptBR Fale com Ak'Zeloth
    turnin 924
step
    only Shaman
    path seq 1411 @-3905.13,-228.41 @-3899.31,-241.45 @-3906.71,-270.71 @-3910.94,-247.45 @-3931.56,-240.75 @-3964.35,-242.51 @-3974.39,-228.76 @-4020.92,-219.95 @-4034.67,-232.64 |only Shaman
    goto 1411 @-4033.08,-255.91 10 |only Shaman
    goto 1411 @-3999.24,-268.95
    note-enUS Kill every Raptor you see. Loot them for their Heads |only Shaman
    note-ptBR Mate todos os Raptors que vir. Saqueie-os para obter as cabeças |only Shaman
    objective 869/1 |only Shaman |opt
    note-enUS Kill any Zhevra you see. Loot them for their Hooves |only Shaman
    note-ptBR Mate os Zhevras que vir. Saqueie-os para obter os cascos |only Shaman
    objective 845/1 |only Shaman |opt
    zone 1411 |only Shaman |opt
    note-enUS Talk to Telf
    note-ptBR Fale com Telf
    turnin 1525
    accept 1526
step
    only Shaman
    goto 1411 @-3981.27,-256.61 |only Shaman
    goto 1411 @-4022.51,-243.92
    use 6636 |only Shaman |opt
    note-enUS Kill the Minor Manifestation of Fire. Loot him for a Glowing Ember
    note-ptBR Mate a Minor Manifestation of Fire. Saqueie-a para obter uma Glowing Ember
    objective 1526/1
step
    only Shaman
    goto 1411 @-4022.51,-243.92
    note-enUS Click the Brazier on the ground
    note-ptBR Clique no Brazier no chão
    turnin 1526
    accept 1527
step
    only Shaman
    goto 1413 @-3037.56,264.63
    note-enUS Kill every Raptor you see. Loot them for their Heads |only Shaman
    note-ptBR Mate todos os Raptors que vir. Saqueie-os para obter as cabeças |only Shaman
    objective 869/1 |only Shaman |opt
    note-enUS Kill any Zhevra you see. Loot them for their Hooves |only Shaman
    note-ptBR Mate os Zhevras que vir. Saqueie-os para obter os cascos |only Shaman
    objective 845/1 |only Shaman |opt
    note-enUS Talk to Kranal
    note-ptBR Fale com Kranal
    turnin 1527
step
    only Shaman
    goto 1413 @-3029.46,261.25
    use 4926
    note-enUS Wait for the respawn if it's not up
    note-ptBR Espere reaparecer se não estiver lá
    collect 4926 1 |quest 819
    accept 819
step
    ifonquest 845
    path seq 1413 @-3851.27,-526.53
    goto 1413 @-3728.66,-835.29
    note-enUS Kill Zhevra Runners. Loot them for their Hooves
    note-ptBR Mate Zhevra Runners. Saqueie-os para obter os cascos
    objective 845/1 |opt
step
    goto 1413 @-3728.66,-835.29
    note-enUS Talk to Gazlowe
    note-ptBR Fale com Gazlowe
    accept 887
step
    path seq 1413 @-3770.2,-898.12
    goto 1413 @-3759.06,-902.18
    note-enUS Talk to Bragok
    note-ptBR Fale com Bragok
    fp |opt
    note-enUS Talk to Sputtervalve and the Wanted Poster
    note-ptBR Fale com Sputtervalve e com o Wanted Poster
    accept 894
step
    goto 1413 @-3719.54,-919.07
    note-enUS Talk to Wanted Poster
    note-ptBR Fale com o Wanted Poster
    accept 895
step
    only Scourge Warrior
    goto 1413 @-3684.07,-919.74
    note-enUS Talk to Ironzar. Buy a [Espadon] from him
    note-ptBR Fale com Ironzar. Compre [Espadon] dele
    collect 2024 1 |quest 895 |q 895/1
step
    only Troll Warrior
    goto 1413 @-3684.07,-919.74
    note-enUS Equip the [Espadon] when you are level 16 |only Scourge Warrior
    note-ptBR Equipe o [Espadon] quando estiver no nível 16 |only Scourge Warrior
    use 2024 |only Scourge Warrior |opt
    note-enUS Equip the [Espadon] |only Scourge Warrior
    note-ptBR Equipe o [Espadon] |only Scourge Warrior
    use 2024 |only Scourge Warrior |opt
    note-enUS Talk to Ironzar. Buy a [Gnarled Staff] from him
    note-ptBR Fale com Ironzar. Compre [Gnarled Staff] dele
    collect 2030 1 |quest 850 |q 850/1
step
    only Orc Warrior
    goto 1413 @-3684.07,-919.74
    note-enUS Equip the [Gnarled Staff] |only Troll Warrior
    note-ptBR Equipe o [Gnarled Staff] |only Troll Warrior
    use 2030 |only Troll Warrior |opt
    note-enUS Talk to Ironzar. Buy a [Bearded Axe] from him
    note-ptBR Fale com Ironzar. Compre [Bearded Axe] dele
    collect 2025 1 |quest 850 |q 850/1
step
    only Tauren Warrior
    goto 1413 @-3684.07,-919.74
    note-enUS Equip the [Bearded Axe] |only Orc Warrior
    note-ptBR Equipe o [Bearded Axe] |only Orc Warrior
    use 2025 |only Orc Warrior |opt
    note-enUS Talk to Ironzar. Buy a [Rock Hammer] from him
    note-ptBR Fale com Ironzar. Compre [Rock Hammer] dele
    collect 2026 1 |quest 850 |q 850/1
step
    only Shaman
    goto 1413 @-3684.07,-919.74
    note-enUS Equip the [Rock Hammer] when you are level 16 |only Tauren Warrior
    note-ptBR Equipe o [Rock Hammer] quando estiver no nível 16 |only Tauren Warrior
    use 2026 |only Tauren Warrior |opt
    note-enUS Equip the [Rock Hammer] |only Tauren Warrior
    note-ptBR Equipe o [Rock Hammer] |only Tauren Warrior
    use 2026 |only Tauren Warrior |opt
    note-enUS Talk to Ironzar. Buy a [Gnarled Staff] from him
    note-ptBR Fale com Ironzar. Compre [Gnarled Staff] dele
    collect 2030 1 |quest 895 |q 895/1
step
    only Rogue
    goto 1413 @-3684.07,-919.74
    note-enUS Equip the [Gnarled Staff] |only Shaman
    note-ptBR Equipe o [Gnarled Staff] |only Shaman
    use 2030 |only Shaman |opt
    note-enUS Talk to Ironzar. Buy a [Scimitar] from him
    note-ptBR Fale com Ironzar. Compre [Scimitar] dele
    collect 2027 1 |quest 895 |q 895/1
step
    only Rogue
    goto 1413 @-3684.07,-919.74
    note-enUS Equip the [Scimitar] |only Rogue
    note-ptBR Equipe a [Scimitar] |only Rogue
    use 2027 |only Rogue |opt
    note-enUS Talk to Ironzar. Buy a second [Scimitar] from him for your off-hand
    note-ptBR Fale com Ironzar. Compre uma segunda [Scimitar] dele para a mão secundária
    collect 2027 2 |quest 895 |q 895/1
step
    goto 1413 @-3687.11,-981.22
    note-enUS Talk to Drohn
    note-ptBR Fale com Drohn
    turnin 819
    accept 821
step
    ifonquest 887
    goto 1413 @-3664.82,-1050.14
    note-enUS Talk to Innkeeper Wiley
    note-ptBR Fale com Innkeeper Wiley
    note-enUS Buy [Longjaw Mud Snappers] from him
    note-ptBR Compre [Longjaw Mud Snappers] dele
    note-enUS Buy [Melon Juice] from him |only Mage Warlock Priest Shaman Druid
    note-ptBR Compre [Melon Juice] dele |only Mage Warlock Priest Shaman Druid
    note-enUS [Longjaw Mud Snappers] are extremely cheap, buy as many as you want
    note-ptBR [Longjaw Mud Snappers] são extremamente baratos, compre quantos quiser
    vendor
    collect 4592 20 |quest 895 |q 895/1
    collect 1205 10 |quest 895 |q 895/1 |only Mage Warlock Priest Shaman Druid
step
    ifonquest 895
    path closest 1413 @-3883.7,-1572.4 @-3818.84,-1707.52 @-3724.6,-1746.71 @-3883.7,-1572.4 @-3818.84,-1707.52 @-3724.6,-1746.71
    note-enUS Kill Southsea Brigands and Southsea Cannoneers
    note-ptBR Mate Southsea Brigands e Southsea Cannoneers
    objective 887/1 |opt
    objective 887/2 |opt
    note-enUS Kill Tazan. Loot him for his Satchel |only Orc Rogue Troll Rogue
    note-ptBR Mate Tazan. Saqueie-o para obter a bolsa dele |only Orc Rogue Troll Rogue
    note-enUS He patrols up and down the hill |only Orc Rogue Troll Rogue
    note-ptBR Ele patrulha subindo e descendo a colina |only Orc Rogue Troll Rogue
    objective 1963/1 |only Orc Rogue Troll Rogue |opt
    note-enUS Kill Baron Longshore. Loot him for his Head
    note-ptBR Mate Baron Longshore. Saqueie-o para obter a cabeça dele
    note-enUS He can be found in one of the camps
    note-ptBR Ele pode ser encontrado em um dos acampamentos
    objective 895/1
step
    ifonquest 887
    path closest 1413 @-3885.72,-1569.69 @-3902.95,-1366.33 @-3823.91,-1512.94 @-3885.72,-1569.69
    note-enUS Kill Southsea Brigands and Southsea Cannoneers
    note-ptBR Mate Southsea Brigands e Southsea Cannoneers
    objective 887/1
    objective 887/2
step
    only Orc Rogue Troll Rogue
    ifonquest 1963
    path seq 1413 @-3832.02,-1381.87 @-3730.68,-1364.98
    goto 1413 @-3677.99,-1392
    note-enUS Kill Tazan. Loot him for his Satchel
    note-ptBR Mate Tazan. Saqueie-o para obter a bolsa dele
    note-enUS He patrols up and down the hill
    note-ptBR Ele patrulha subindo e descendo a colina
    objective 1963/1
step
    ifcomplete 887
    ifcomplete 895
    goto 1413 @-3728.66,-835.29
    note-enUS Talk to Gazlowe
    note-ptBR Fale com Gazlowe
    turnin 887
    turnin 895
    accept 890
step
    ifturnedin 887
    goto 1413 @-3728.66,-835.29
    note-enUS Talk to Gazlowe
    note-ptBR Fale com Gazlowe
    accept 890
step
    ifturnedin 887
    goto 1413 @-3796.55,-985.28
    note-enUS Talk to Dizzywig
    note-ptBR Fale com Dizzywig
    turnin 1492
    turnin 890
    accept 892
    accept 896
step
    goto 1413 @-3796.55,-985.28
    note-enUS Talk to Dizzywig
    note-ptBR Fale com Dizzywig
    turnin 1492
    accept 896
step
    ifturnedin 887
    goto 1413 @-3728.66,-835.29
    note-enUS Talk to Gazlowe
    note-ptBR Fale com Gazlowe
    turnin 892
    accept 888
step
    only Scourge Warrior
    goto 1413 @-3684.07,-919.74
    note-enUS Talk to Ironzar. Buy a [Espadon] from him
    note-ptBR Fale com Ironzar. Compre [Espadon] dele
    collect 2024 1 |quest 850 |q 850/1
step
    only Troll Warrior
    goto 1413 @-3684.07,-919.74
    note-enUS Equip the [Espadon] when you are level 16 |only Scourge Warrior
    note-ptBR Equipe o [Espadon] quando estiver no nível 16 |only Scourge Warrior
    use 2024 |only Scourge Warrior |opt
    note-enUS Equip the [Espadon] |only Scourge Warrior
    note-ptBR Equipe o [Espadon] |only Scourge Warrior
    use 2024 |only Scourge Warrior |opt
    note-enUS Talk to Ironzar. Buy a [Gnarled Staff] from him
    note-ptBR Fale com Ironzar. Compre [Gnarled Staff] dele
    collect 2030 1 |quest 850 |q 850/1
step
    only Orc Warrior
    goto 1413 @-3684.07,-919.74
    note-enUS Equip the [Gnarled Staff] |only Troll Warrior
    note-ptBR Equipe o [Gnarled Staff] |only Troll Warrior
    use 2030 |only Troll Warrior |opt
    note-enUS Talk to Ironzar. Buy a [Bearded Axe] from him
    note-ptBR Fale com Ironzar. Compre [Bearded Axe] dele
    collect 2025 1 |quest 850 |q 850/1
step
    only Tauren Warrior
    goto 1413 @-3684.07,-919.74
    note-enUS Equip the [Bearded Axe] |only Orc Warrior
    note-ptBR Equipe o [Bearded Axe] |only Orc Warrior
    use 2025 |only Orc Warrior |opt
    note-enUS Talk to Ironzar. Buy a [Rock Hammer] from him
    note-ptBR Fale com Ironzar. Compre [Rock Hammer] dele
    collect 2026 1 |quest 850 |q 850/1
step
    only Shaman
    goto 1413 @-3684.07,-919.74
    note-enUS Equip the [Rock Hammer] when you are level 16 |only Tauren Warrior
    note-ptBR Equipe o [Rock Hammer] quando estiver no nível 16 |only Tauren Warrior
    use 2026 |only Tauren Warrior |opt
    note-enUS Equip the [Rock Hammer] |only Tauren Warrior
    note-ptBR Equipe o [Rock Hammer] |only Tauren Warrior
    use 2026 |only Tauren Warrior |opt
    note-enUS Talk to Ironzar. Buy a [Gnarled Staff] from him
    note-ptBR Fale com Ironzar. Compre [Gnarled Staff] dele
    collect 2030 1 |quest 850 |q 850/1
step
    only Rogue
    goto 1413 @-3684.07,-919.74
    note-enUS Equip the [Gnarled Staff] |only Shaman
    note-ptBR Equipe o [Gnarled Staff] |only Shaman
    use 2030 |only Shaman |opt
    note-enUS Talk to Ironzar. Buy a [Scimitar] from him
    note-ptBR Fale com Ironzar. Compre [Scimitar] dele
    collect 2027 1 |quest 850 |q 850/1
step
    only Rogue
    goto 1413 @-3684.07,-919.74
    use 2027 |only Rogue |opt
    note-enUS Talk to Ironzar. Buy a second [Scimitar] from him for your off-hand
    note-ptBR Fale com Ironzar. Compre uma segunda [Scimitar] dele para a mão secundária
    collect 2027 2 |quest 850 |q 850/1
step
    path closest 1413 @-3770.2,-898.12 @-2977.78,-942.71 @-2274.52,-870.42 @-2977.78,-942.71 @-2832.87,-990.01 @-2710.26,-959.6 @-2392.07,-900.83 @-2274.52,-870.42
    note-enUS Equip the [Scimitar] |only Rogue
    note-ptBR Equipe a [Scimitar] |only Rogue
    use 2027 |only Rogue |opt
    note-enUS Talk to Bragok
    note-ptBR Fale com Bragok
    fp |opt
    note-enUS Kill every Raptor you see. Loot them for their Heads
    note-ptBR Mate todos os Raptors que vir. Saqueie-os para obter as cabeças
    objective 869/1 |opt
    note-enUS Finish killing Zhevras. Loot them for their Hooves
    note-ptBR Termine de matar Zhevras. Saqueie-as para obter os Cascos
    objective 845/1
step
    ifcomplete 5041
    ifcomplete 872
    goto 1413 @-2595.75,-473.15
    note-enUS Talk to Thork and Sergra
    note-ptBR Fale com Thork e Sergra
    turnin 5041
    turnin 872
step
    ifcomplete 5041
    goto 1413 @-2595.75,-473.15
    note-enUS Talk to Thork and Sergra
    note-ptBR Fale com Thork e Sergra
    turnin 872
step
    ifcomplete 5041
    goto 1413 @-2595.75,-473.15
    note-enUS Talk to Thork and Sergra
    note-ptBR Fale com Thork e Sergra
    turnin 5041
step
    goto 1413 @-2669.72,-481.94
    abandon 871 |opt
    abandon 5041 |opt
    note-enUS Talk to Thork and Sergra
    note-ptBR Fale com Thork e Sergra
    turnin 845
    accept 903
step
    only Tauren Hunter
    goto 1413 @-2612.98,-411
    note-enUS Talk to Barg
    note-ptBR Fale com Barg
    note-enUS Buy [Heavy Shots] from him
    note-ptBR Compre [Heavy Shots] dele
    collect 2519 1000 |quest 850 |q 850/1 |only Hunter
step
    only Troll Hunter Orc Hunter
    goto 1413 @-2556.23,-351.54
    note-enUS Talk to Uthrok
    note-ptBR Fale com Uthrok
    vendor
    note-enUS If it's not up, buy a [Reinforced Bow] instead
    note-ptBR Se não estiver disponível, compre um [Reinforced Bow]
    collect 2515 1200 |quest 870 |q 870/1 |only Hunter
step
    only Tauren Hunter
    goto 1413 @-2556.23,-351.54
    note-enUS Talk to Uthrok. Buy a [Hunter's Boomstick] from him
    note-ptBR Fale com Uthrok. Compre [Hunter's Boomstick] dele
    collect 2511 1 |quest 871 |q 871/1
step
    goto 1413 @-1972.55,-306.95
    note-enUS Kill Plainstriders. Loot them for their Kidneys
    note-ptBR Mate Plainstriders. Saqueie-os para obter os rins
    objective 821/2 |opt
    note-enUS Kill every Raptor you see. Loot them for their Heads
    note-ptBR Mate todos os Raptors que vir. Saqueie-os para obter as cabeças
    objective 869/1 |opt
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
    note-enUS Kill every Raptor you see. Loot them for their Heads
    note-ptBR Mate todos os Raptors que vir. Saqueie-os para obter as cabeças
    objective 869/1 |opt
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
    ifturnedin 850
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    accept 851
step
    path closest 1413 @-1594.58,30.19 @-1562.15,-29.94 @-1483.11,66.67 @-1531.75,180.85 @-1462.84,214.63
    note-enUS Kill every Raptor you see. Loot them for their Heads
    note-ptBR Mate todos os Raptors que vir. Saqueie-os para obter as cabeças
    note-enUS This quest does not have to be completed now
    note-ptBR Esta missão não precisa ser concluída agora
    objective 869/1 |opt
    note-enUS Kill Savannah Prowlers. Loot them for their Claws and Tusks
    note-ptBR Mate Savannah Prowlers. Saqueie-os para obter garras e presas
    objective 903/1
    objective 821/1
step
    path closest 1413 @-1616.87,611.9 @-1583.43,322.73 @-1513.51,380.84 @-1526.68,477.45 @-1555.06,545.69 @-1553.03,615.95 @-1616.87,611.9
    note-enUS Kill Witchwing Harpies and Witchwing Roguefeathers. Loot them for their Talons
    note-ptBR Mate Witchwing Harpies e Witchwing Roguefeathers. Saqueie-as para obter as garras
    objective 867/1
step
    ifdungeon RFC
    abandon 5723
step
    ifdungeon RFC
    abandon 5725
step
    ifdungeon RFC
    abandon 5728
step
    ifdungeon RFC
    abandon 5761
step
    goto 1413 @-2670.74,-482.61
    note-enUS Be careful of Sunscale Scytheclaws in the area. They are up to level 18 and can [Thrash]
    note-ptBR Cuidado com os Sunscale Scytheclaws na área. Eles vão até o nível 18 e podem usar [Thrash]
    note-enUS Talk to Sergra
    note-ptBR Fale com Sergra
    turnin 881
    accept 905
step
    goto 1413 @-2595.75,-437.35
    note-enUS Talk to Devrak
    note-ptBR Fale com Devrak
    fly 1454
step
    goto 1413 @-1815.48,786.89
    note-enUS Kill Plainstriders. Loot them for their Kidneys
    note-ptBR Mate Plainstriders. Saqueie-os para obter os rins
    objective 821/2 |opt
    note-enUS Talk to Vrang
    note-ptBR Fale com Vrang
    note-enUS Vrang sells [Heavy Spiked Mace] which is a limited supply item |only Orc Warrior Troll Warrior Tauren Warrior
    note-ptBR Vrang vende [Heavy Spiked Mace], que é um item de estoque limitado |only Orc Warrior Troll Warrior Tauren Warrior
    vendor
step
    goto 1413 @-2686.95,825.4
    note-enUS Click on the Control Console
    note-ptBR Clique no Control Console
    turnin 894
    accept 900
step
    ifonquest 900
    goto 1413 @-2679.86,830.8
    note-enUS Click the Valve
    note-ptBR Clique na Valve
    note-enUS Be careful! Two mobs will spawn after you shut off the Valve
    note-ptBR Cuidado! Dois mobs surgirão depois que você fechar a Valve
    objective 900/2
step
    ifonquest 900
    goto 1413 @-2675.8,842.29
    note-enUS Click the Valve
    note-ptBR Clique na Valve
    note-enUS One mob will spawn after you shut off the Valve
    note-ptBR Um inimigo aparecerá depois que você fechar a válvula
    objective 900/3
step
    ifonquest 900
    goto 1413 @-2686.95,842.29
    note-enUS Click the Valve
    note-ptBR Clique na Valve
    objective 900/1
step
    ifcomplete 900
    goto 1413 @-2686.95,825.4
    note-enUS Click the Control Console
    note-ptBR Clique no Control Console
    turnin 900
    accept 901
step
    ifturnedin 900
    goto 1413 @-2686.95,825.4
    note-enUS Click the Control Console
    note-ptBR Clique no Control Console
    accept 901
step
    ifturnedin 900
    goto 1413 @-2731.54,909.85
    note-enUS Kill Tinkerer Sniggles in the building. Loot him for his Console Key
    note-ptBR Mate Tinkerer Sniggles no edifício. Saqueie-o para obter a Console Key dele
    objective 901/1
step
    ifturnedin 900
    goto 1413 @-2686.95,825.4
    note-enUS Click the Control Console
    note-ptBR Clique no Control Console
    turnin 901
    accept 902
step
    path closest 1413 @-2879.48,781.48 @-2909.88,484.21 @-1693.88,592.31
    note-enUS Kill Plainstriders. Loot them for their Kidneys
    note-ptBR Mate Plainstriders. Saqueie-os para obter os rins
    objective 821/2 |opt
    note-enUS Kill Raptors. Loot them for their Heads
    note-ptBR Mate Raptors. Saqueie-os para obter as cabeças
    objective 869/1
step
    goto 1413 @-3102.42,1105.78
    level 16
step
    goto 1413 @-3104.44,1109.16
    note-enUS Talk to Wizzlecrank's Shredder in The Sludge Ven
    note-ptBR Fale com Wizzlecrank's Shredder em The Sludge Ven
    note-enUS Wizzlecrank's Shredder has a long respawn timer. Consider skipping this quest if there is a lot of competition
    note-ptBR O Wizzlecrank's Shredder demora a reaparecer. Considere pular esta missão se houver muita concorrência
    accept 858
step
    ifonquest 858
    path seq 1413 @-3104.44,1040.25 @-3086.2,1055.78 @-3063.91,1049.7 @-3056.82,1038.89 @-3064.92,1034.16
    goto 1413 @-3086.2,1055.78
    note-enUS Be careful if Foreman Grills or Sludge Beast is up. They are strong level 19 rare mobs
    note-ptBR Cuidado se Foreman Grills ou Sludge Beast estiverem presentes. São mobs raros fortes de nível 19
    note-enUS Kill Supervisor Lugwizzle. Loot him for his Key
    note-ptBR Mate Supervisor Lugwizzle. Saqueie-o para obter a chave dele
    note-enUS He patrols up and down the platform
    note-ptBR Ele patrulha subindo e descendo a plataforma
    objective 858/1
step
    ifcomplete 858
    goto 1413 @-3104.44,1109.16
    note-enUS Talk to Wizzlecrank's Shredder
    note-ptBR Fale com Wizzlecrank's Shredder
    note-enUS Wizzlecrank's Shredder has a long respawn timer. Consider skipping this quest if there is a lot of competition
    note-ptBR O Wizzlecrank's Shredder demora a reaparecer. Considere pular esta missão se houver muita concorrência
    note-enUS This will begin an escort. Make sure you're at full health
    note-ptBR Isto iniciará uma escolta. Certifique-se de estar com a vida cheia
    turnin 858
    accept 863 |noauto
step
    ifturnedin 858
    goto 1413 @-3104.44,1109.16
    note-enUS Talk to Wizzlecrank's Shredder
    note-ptBR Fale com Wizzlecrank's Shredder
    note-enUS Wizzlecrank's Shredder has a long respawn timer. Consider skipping this quest if there is a lot of competition
    note-ptBR O Wizzlecrank's Shredder demora a reaparecer. Considere pular esta missão se houver muita concorrência
    note-enUS This will begin an escort. Make sure you're at full health
    note-ptBR Isto iniciará uma escolta. Certifique-se de estar com a vida cheia
    accept 863 |noauto
step
    ifonquest 863
    path seq 1413 @-3031.48,1088.21
    goto 1413 @-3002.1,1130.78
    note-enUS Two Venture Co. Mercenaries will spawn when the shredder moves onto the higher ground. Kill them then wait for his RP event at the end
    note-ptBR Dois Venture Co. Mercenaries surgirão quando o shredder subir para o terreno mais alto. Mate-os e espere o evento de RP dele no final
    objective 863/1
step
    path closest 1413 @-3610.1,1313.2 @-3605.03,1308.47 @-3564.5,1367.25 @-3622.26,1384.81 @-3673.94,1374.68 @-3653.67,1306.44 @-3644.55,1249.69 @-3603,1236.85 @-3575.64,1271.31 @-3610.1,1313.2
    note-enUS Kill Plainstriders. Loot them for their Kidneys
    note-ptBR Mate Plainstriders. Saqueie-os para obter os rins
    objective 821/2 |opt
    note-enUS Kill Venture Co. Enforcers and Venture Co. Overseers. Loot them for Cats Eye Emerald
    note-ptBR Mate Venture Co. Enforcers e Venture Co. Overseers. Saqueie-os para obter Cats Eye Emerald
    note-enUS If it hasn't dropped after 25+ mobs, feel free to skip this quest
    note-ptBR Se não cair após 25+ mobs, fique à vontade para pular esta missão
    objective 896/1
step
    goto 1414 @-3839.37,1644.65
    zone 1454 |opt
step
    goto 1454 @-4160.01,1483.17
    skill firstaid 40 |opt
    note-enUS Talk to Arnok
    note-ptBR Fale com Arnok
    note-enUS Skip this step if you did not have enough [Linen Cloth] to reach 40 skill
    note-ptBR Pule este passo se não tinha [Linen Cloth] suficiente para chegar a 40 de perícia
    train 3276
step
    goto 1454 @-4160.01,1483.17
    skill firstaid 50 |opt
    note-enUS Talk to Arnok
    note-ptBR Fale com Arnok
    note-enUS Skip this step if you did not have enough [Linen Cloth] to reach 50 skill
    note-ptBR Pule este passo se não tinha [Linen Cloth] suficiente para chegar a 50 de perícia
    train 3274
step
    only Priest
    goto 1454 @-4179.79,1452.58
    note-enUS Make sure you don't sell your [Flask of Oil]!
    note-ptBR Não venda seu [Flask of Oil]!
    note-enUS Talk to Ur'kyo
    note-ptBR Fale com Ur'kyo
    train 8102
step
    only Priest
    goto 1454 @-4179.79,1452.58
    note-enUS Talk to Ur'kyo
    note-ptBR Fale com Ur'kyo
    train 970
step
    only Mage
    goto 1454 @-4218.64,1473.72
    note-enUS Talk to Pephredo
    note-ptBR Fale com Pephredo
    train 3140
step
    only !Tauren !Scourge
    ifonquest 6384
    goto 1454 @-4439.37,1633.99
    note-enUS Talk to Gryshka
    note-ptBR Fale com Gryshka
    turnin 6384
    accept 6385
step
    only !Tauren !Scourge
    ifonquest 6385
    note-enUS Talk to Doras
    note-ptBR Fale com Doras
    turnin 6385
    accept 6386
step
    only !Tauren !Scourge
    ifturnedin 6385
    note-enUS Talk to Doras
    note-ptBR Fale com Doras
    accept 6386
step
    only Tauren Scourge
    ifnotturnedin 4921
    goto 1454 @-4313.6,1676.24
    note-enUS Talk to Doras
    note-ptBR Fale com Doras
    note-enUS Don't fly anywhere!
    note-ptBR Não voe para lugar nenhum!
    fp
step
    only Shaman
    goto 1454 @-4225.09,1933.29
    note-enUS Talk to Kardris
    note-ptBR Fale com Kardris
    note-enUS Make sure you have trained [Purge] as it will be needed to obtain a rune later
    note-ptBR Certifique-se de ter treinado [Purge], pois será necessário para obter uma runa depois
    train 8019
step
    only Shaman
    goto 1454 @-4225.09,1933.29
    note-enUS Talk to Kardris
    note-ptBR Fale com Kardris
    note-enUS Make sure you have trained [Purge] as it will be needed to obtain a rune later
    note-ptBR Certifique-se de ter treinado [Purge], pois será necessário para obter uma runa depois
    train 913
step
    goto 1454 @-4226.78,1914.77
    note-enUS Talk to Zor
    note-ptBR Fale com Zor
    accept 1061
step
    only Rogue
    goto 1454 @-4284.42,1771.28
    note-enUS Talk to Shenthul
    note-ptBR Fale com Shenthul
    train 1804
    train 921
    accept 2379
step
    only Orc Rogue Troll Rogue
    ifcomplete 1963
    goto 1454 @-4280.07,1772.96
    note-enUS Talk to Therzok
    note-ptBR Fale com Therzok
    turnin 1963
    accept 1858
step
    only Orc Rogue Troll Rogue
    ifturnedin 1963
    goto 1454 @-4280.07,1772.96
    note-enUS Talk to Therzok
    note-ptBR Fale com Therzok
    accept 1858
step
    only Rogue
    goto 1454 @-4279.79,1778.57
    note-enUS Talk to Zando'zan
    note-ptBR Fale com Zando'zan
    turnin 2379
    accept 2382
step
    only Orc Rogue Troll Rogue
    ifturnedin 1963
    goto 1454 @-4271.1,1810.75 |only Orc Rogue Troll Rogue
    goto 1454 @-4280.07,1773.24
    note-enUS Talk to Rekkul. Buy a [Thieves' Tools] from him |only Orc Rogue Troll Rogue
    note-ptBR Fale com Rekkul. Compre [Thieves' Tools] dele |only Orc Rogue Troll Rogue
    collect 5060 1 |quest 1858 |q 1858/1 |only Orc Rogue Troll Rogue |opt
    note-enUS Use [Pick Lock] to open [Tazan's Satchel]
    note-ptBR Use [Pick Lock] para abrir [Tazan's Satchel]
    objective 1858/1
step
    only Orc Rogue Troll Rogue
    ifturnedin 1963
    goto 1454 @-4437.87,1637.33
    note-enUS Use [Pick Pocket] on Gamon in the Inn. Use his key to open [Tazan's Satchel]
    note-ptBR Use [Pick Pocket] em Gamon na estalagem. Use a chave dele para abrir [Tazan's Satchel]
    collect 7208 1 |quest 1858 |q 1858/1
    objective 1858/1
step
    only Orc Rogue Troll Rogue
    ifturnedin 1963
    goto 1454 @-4280.07,1772.96
    note-enUS Talk to Therzok
    note-ptBR Fale com Therzok
    turnin 1858
step
    only Rogue
    goto 1454 @-4320.75,1750.51
    note-enUS Talk to Kareth. Buy one or two [Kris] from him
    note-ptBR Fale com Kareth. Compre uma ou duas [Kris] dele
    collect 2209 1 |quest 881 |q 881/1
step
    only Warlock
    goto 1454 @-4362.55,1834.7
    abandon 1963 |only Orc Rogue Troll Rogue |opt
    note-enUS Equip the [Kris] |only Rogue
    note-ptBR Equipe o [Kris] |only Rogue
    use 2209 |only Rogue |opt
    note-enUS Equip the [Kris] once you are level 19 |only Rogue
    note-ptBR Equipe o [Kris] quando estiver no nível 19 |only Rogue
    use 2209 |only Rogue |opt
    note-enUS Talk to Mirket
    note-ptBR Fale com Mirket
    train 1455
step
    only Warlock
    goto 1454 @-4362.55,1834.7
    note-enUS Talk to Mirket
    note-ptBR Fale com Mirket
    train 1014
step
    only Warlock
    goto 1454 @-4347.4,1836.57
    note-enUS Talk to Kurgul and buy [Grimoire of Sacrifice]
    note-ptBR Fale com Kurgul e compre [Grimoire of Sacrifice]
    collect 16351 1 |quest 881 |q 881/1
step
    only Warlock
    goto 1454 @-4347.4,1836.57
    note-enUS Talk to Kurgul and buy [Grimoire of Firebolt (Rank 3)]
    note-ptBR Fale com Kurgul e compre [Grimoire of Firebolt (Rank 3)]
    collect 16316 1 |quest 881 |q 881/1
step
    only Warrior
    goto 1454 @-4801.42,1980.53
    note-enUS Talk to Grezz
    note-ptBR Fale com Grezz
    train 285
step
    only Warrior
    goto 1454 @-4801.42,1980.53
    note-enUS Talk to Grezz
    note-ptBR Fale com Grezz
    train 8198
step
    only Hunter
    goto 1454 @-4607.02,2100.64
    note-enUS Talk to Ormak
    note-ptBR Fale com Ormak
    train 13795
step
    only Hunter
    goto 1454 @-4607.02,2100.64
    note-enUS Talk to Ormak
    note-ptBR Fale com Ormak
    train 2643
step
    only Hunter
    goto 1454 @-4611.09,2135.15
    note-enUS Talk to Xao'tsu
    note-ptBR Fale com Xao'tsu
    train 24557
step
    only Troll Hunter Orc Hunter Priest
    goto 1454 @-4824,2090.54
    note-enUS Talk to Hanashi
    note-ptBR Fale com Hanashi
    train 227
step
    only Tauren Hunter
    goto 1454 @-4824,2090.54
    note-enUS Talk to Hanashi
    note-ptBR Fale com Hanashi
    train 264
step
    only Tauren Warrior Scourge Warrior
    goto 1454 @-4824,2090.54
    note-enUS Talk to Hanashi
    note-ptBR Fale com Hanashi
    train 197
    train 227
step
    only Hunter
    goto 1454 @-4819.1,2099.05
    note-enUS Talk to Zendo'jian. Buy a [Reinforced Bow] from him
    note-ptBR Fale com Zendo'jian. Compre [Reinforced Bow] dele
    collect 3026 1 |quest 3281 |q 3281/1
    train 227
step
    only Warrior
    goto 1454 @-4819.1,2099.05
    note-enUS Equip the [Reinforced Bow] |only Hunter
    note-ptBR Equipe o [Reinforced Bow] |only Hunter
    use 3026 |only Hunter |opt
    note-enUS Talk to Zendo'jian. Buy a [Battle Axe] from him
    note-ptBR Fale com Zendo'jian. Compre [Battle Axe] dele
    collect 926 1 |quest 3281 |q 3281/1
    train 227
step
    note-enUS Equip the [Battle Axe] when you are level 20 |only Warrior
    note-ptBR Equipe o [Battle Axe] quando estiver no nível 20 |only Warrior
    use 926 |only Warrior |opt
    note-enUS Equip the [Battle Axe] |only Warrior
    note-ptBR Equipe o [Battle Axe] |only Warrior
    use 926 |only Warrior |opt
step
    ifnotturnedin 3281
    goto 1413 @-2645.4,-406.94
    hearth |opt
    use 6948 |opt
    note-enUS Talk to Doras
    note-ptBR Fale com Doras
    fp |opt
    note-enUS Talk to Innkeeper Boorand
    note-ptBR Fale com Innkeeper Boorand
    vendor |only !Rogue !Warrior
    vendor |only Rogue Warrior
step
    goto 1413 @-2639.32,-436
    note-enUS Talk to Gazrog
    note-ptBR Fale com Gazrog
    turnin 869
    accept 3281
step
    ifcomplete 848
    goto 1413 @-2589.67,-424.51
    note-enUS Talk to Helbrim
    note-ptBR Fale com Helbrim
    turnin 848
step
    goto 1413 @-2607.91,-475.18
    note-enUS Talk to Darsok
    note-ptBR Fale com Darsok
    turnin 867
    accept 875
step
    goto 1413 @-2672.76,-544.77
    note-enUS Talk to Tonga
    note-ptBR Fale com Tonga
    turnin 870
    accept 877
step
    goto 1413 @-2670.74,-482.61
    note-enUS Talk to Sergra
    note-ptBR Fale com Sergra
    turnin 903
    accept 881
step
    only !Tauren !Scourge
    ifonquest 6386
    goto 1413 @-2709.24,-404.24
    note-enUS Talk to Zargh
    note-ptBR Fale com Zargh
    turnin 6386
step
    goto 1413 @-3031.48,461.91
    note-enUS Use the [Horn of Echeyakee] to summon Echeyakee
    note-ptBR Use o [Horn of Echeyakee] para invocar Echeyakee
    note-enUS Kill Echeyakee. Loot him for Echeyakee's Hide
    note-ptBR Mate Echeyakee. Saqueie-o para obter Echeyakee's Hide
    note-enUS If Echeyakee doesn't spawn after using the [Horn of Echeyakee] or you didn't get the tag when it did spawn, skip this step
    note-ptBR Se Echeyakee não surgir após usar o [Horn of Echeyakee] ou você não conseguir marcá-lo quando surgir, pule esta etapa
    objective 881/1
    use 10327
step
    goto 1413 @-2669.72,-481.94
    abandon 881
step
    goto 1413 @-2670.74,-482.61
    note-enUS Talk to Sergra
    note-ptBR Fale com Sergra
    accept 881
step
    goto 1413 @-3031.48,461.91
    note-enUS Use the [Horn of Echeyakee] to summon Echeyakee
    note-ptBR Use o [Horn of Echeyakee] para invocar Echeyakee
    note-enUS Kill Echeyakee. Loot him for Echeyakee's Hide
    note-ptBR Mate Echeyakee. Saqueie-o para obter Echeyakee's Hide
    objective 881/1
    use 10327
step
    goto 1413 @-2670.74,-482.61
    note-enUS Talk to Sergra
    note-ptBR Fale com Sergra
    turnin 881
    accept 905
step
    goto 1413 @-2641.35,-521.12
    note-enUS Talk to Mankrik
    note-ptBR Fale com Mankrik
    accept 899
    accept 4921
step
    only Hunter
    goto 1413 @-2612.98,-411
    note-enUS Talk to Barg
    note-ptBR Fale com Barg
    note-enUS Buy [Sharp Arrows] from him
    note-ptBR Compre [Sharp Arrows] dele
    collect 2515 1800 |quest 888 |q 888/1 |only Hunter
step
    only Rogue
    path seq 1413 @-2595.75,-437.35
    goto 1413 @-3768.18,-840.69
    note-enUS Talk to Devrak
    note-ptBR Fale com Devrak
    fp |opt
    note-enUS Talk to Wrenix
    note-ptBR Fale com Wrenix
    turnin 2382
    accept 2381
step
    only Rogue
    goto 1413 @-3773.24,-841.37
    note-enUS Talk to Wrenix's Gizmotronic Apparatus
    note-ptBR Fale com Wrenix's Gizmotronic Apparatus
    note-enUS Obtain an [E.C.A.C.] and a [Thieves' Tools]
    note-ptBR Obtenha um [E.C.A.C.] e um [Thieves' Tools]
    collect 7970 1 |quest 888 |q 888/1
    collect 5060 1 |quest 888 |q 888/1
step
    ifcomplete 863
    ifonquest 902
    goto 1413 @-3759.06,-902.18
    note-enUS Talk to Sputtervalve
    note-ptBR Fale com Sputtervalve
    turnin 902
    turnin 863
step
    ifonquest 902
    goto 1413 @-3759.06,-902.18
    note-enUS Talk to Sputtervalve
    note-ptBR Fale com Sputtervalve
    turnin 902
step
    ifcomplete 863
    goto 1413 @-3759.06,-902.18
    note-enUS Talk to Sputtervalve
    note-ptBR Fale com Sputtervalve
    turnin 863
step
    goto 1413 @-3759.06,-902.18
    note-enUS Talk to Sputtervalve
    note-ptBR Fale com Sputtervalve
    accept 3921 |only Hunter
    accept 1483
step
    ifcomplete 896
    goto 1413 @-3796.55,-985.28
    note-enUS Talk to Dizzywig
    note-ptBR Fale com Dizzywig
    turnin 896
step
    goto 1413 @-3697.24,-929.2
    note-enUS Talk to Mebok
    note-ptBR Fale com Mebok
    accept 865
    accept 1069
step
    goto 1413 @-3664.82,-1050.14
    note-enUS Talk to Innkeeper Wiley
    note-ptBR Fale com Innkeeper Wiley
    note-enUS Buy [Longjaw Mud Snappers] from him
    note-ptBR Compre [Longjaw Mud Snappers] dele
    note-enUS Buy [Melon Juice] from him |only Mage Warlock Priest Shaman Druid
    note-ptBR Compre [Melon Juice] dele |only Mage Warlock Priest Shaman Druid
    note-enUS [Longjaw Mud Snappers] are extremely cheap, buy as many as you want
    note-ptBR [Longjaw Mud Snappers] são extremamente baratos, compre quantos quiser
    vendor
    collect 4592 20 |quest 888 |q 888/1
    collect 1205 10 |quest 888 |q 888/1 |only Mage Warlock Priest Shaman Druid
step
    only Rogue
    goto 1413 @-3967.8,-1457.54 |only Rogue
    goto 1413 @-3958.68,-1457.54
    note-enUS Jump onto the ship, go down to the 2nd floor and level your lockpicking up to at least 70 |only Rogue
    note-ptBR Pule no navio, desça ao 2º andar e suba seu arrombamento para pelo menos 70 |only Rogue
    note-enUS Once your lockpicking is 70, go to the bottom floor of the ship and open The Jewel of the Southsea
    note-ptBR Quando seu arrombamento estiver em 70, vá ao andar mais baixo do navio e abra The Jewel of the Southsea
    note-enUS Use the [E.C.A.C.] on Polly
    note-ptBR Use o [E.C.A.C.] em Polly
    objective 2381/1
    use 7970
step
    ifonquest 888
    goto 1413 @-3819.86,-1714.95
    note-enUS Loot the Crate on the ground
    note-ptBR Saqueie o caixote no chão
    objective 888/2
step
    ifonquest 888
    goto 1413 @-3723.59,-1741.3
    note-enUS Loot the Crate on the ground
    note-ptBR Saqueie o caixote no chão
    objective 888/1
step
    path seq 1413 @-3192.6,-1919.67
    goto 1413 @-3258.47,-2027.09
    note-enUS Kill Plainstriders. Loot them for their Kidneys
    note-ptBR Mate Plainstriders. Saqueie-os para obter os rins
    objective 821/2 |opt
    note-enUS Kill Sunscale Scytheclaws. Loot them for their Horns and Feathers
    note-ptBR Mate Sunscale Scytheclaws. Saqueie-os para obter chifres e penas
    note-enUS Be careful as they cast [Thrash] (Charges 2 extra attacks every 10 seconds)
    note-ptBR Cuidado, eles lançam [Thrash] (Carrega 2 ataques extras a cada 10 segundos)
    objective 865/1 |opt
    collect 5165 3 |quest 905 |opt
    note-enUS Loot the Stolen Silver on the ground
    note-ptBR Saqueie o Stolen Silver no chão
    objective 3281/1
step
    goto 1413 @-3012.23,-1275.8
    note-enUS Collect Laden Mushrooms around The Stagnant Oasis
    note-ptBR Colete Laden Mushrooms ao redor de The Stagnant Oasis
    objective 848/1 |opt
    note-enUS Click the Bubbling Fissure underwater
    note-ptBR Clique na Bubbling Fissure debaixo d'água
    objective 877/1
step
    ifonquest 851
    path seq 1413 @-3031.48,-1480.51 @-3127.75,-1320.39 @-3154.1,-1172.43 @-2996.02,-1182.56 @-2949.4,-1146.75 @-2789.3,-1107.57 @-2746.74,-1409.57 @-2880.5,-1550.1 @-3031.48,-1480.51
    goto 1413 @-2742.68,-1208.23
    note-enUS Kill Kolkar around the oasis. Loot them for their Bracers
    note-ptBR Mate Kolkar ao redor do oásis. Saqueie-os para obter os braçais
    objective 855/1 |opt
    note-enUS Kill Verog. Loot him for his Head
    note-ptBR Mate Verog. Saqueie-o para obter a cabeça dele
    note-enUS He has a chance of spawning every time a Kolkar is killed
    note-ptBR Ele tem chance de surgir toda vez que um Kolkar é morto
    note-enUS On a highly populated server or fresh launch, your best option is camping his spawnpoint
    note-ptBR Em um servidor muito populoso ou em lançamento recente, sua melhor opção é acampar o ponto de spawn dele
    objective 851/1
step
    path closest 1413 @-3023.38,-1234.58 @-3000.07,-1208.23 @-2959.54,-1196.75 @-2953.46,-1241.34 @-2977.78,-1304.17 @-3029.46,-1324.44 @-3066.95,-1311.61 @-3059.86,-1264.31 @-3023.38,-1234.58
    note-enUS Collect Laden Mushrooms around The Stagnant Oasis
    note-ptBR Colete Laden Mushrooms ao redor de The Stagnant Oasis
    objective 848/1
step
    goto 1413 @-2707.22,-1502.13
    note-enUS Kill Plainstriders. Loot them for their Kidneys
    note-ptBR Mate Plainstriders. Saqueie-os para obter os rins
    objective 821/2 |opt
    note-enUS Click the Blue Raptor Nest. Kill more Sunscale Scytheclaws if you don't have a [Sunscale Feather]
    note-ptBR Clique no Blue Raptor Nest. Mate mais Sunscale Scytheclaws se não tiver uma [Sunscale Feather]
    note-enUS Be careful as they cast [Thrash] (Charges 2 extra attacks every 10 seconds)
    note-ptBR Cuidado, eles lançam [Thrash] (Carrega 2 ataques extras a cada 10 segundos)
    objective 905/1
    collect 5165 3 |quest 905
step
    goto 1413 @-2692.02,-1533.89
    note-enUS Click the Red Raptor Nest. Kill more Sunscale Scytheclaws if you don't have a [Sunscale Feather]
    note-ptBR Clique no Red Raptor Nest. Mate mais Sunscale Scytheclaws se não tiver uma [Sunscale Feather]
    note-enUS Be careful as they cast [Thrash] (Charges 2 extra attacks every 10 seconds)
    note-ptBR Cuidado, eles lançam [Thrash] (Carrega 2 ataques extras a cada 10 segundos)
    objective 905/3
    collect 5165 3 |quest 905
step
    goto 1413 @-2648.44,-1527.13
    note-enUS Click the Yellow Raptor Nest. Kill more Sunscale Scytheclaws if you don't have a [Sunscale Feather]
    note-ptBR Clique no Yellow Raptor Nest. Mate mais Sunscale Scytheclaws se não tiver uma [Sunscale Feather]
    note-enUS Be careful as they cast [Thrash] (Charges 2 extra attacks every 10 seconds)
    note-ptBR Cuidado, eles lançam [Thrash] (Carrega 2 ataques extras a cada 10 segundos)
    objective 905/2
    collect 5165 3 |quest 905
step
    goto 1413 @-2375.86,-1787.24
    note-enUS Kill Sunscale Scytheclaws. Loot them for their Horns
    note-ptBR Mate Sunscale Scytheclaws. Saqueie-os para obter os chifres
    note-enUS Be careful as they cast [Thrash] (Charges 2 extra attacks every 10 seconds)
    note-ptBR Cuidado, eles lançam [Thrash] (Carrega 2 ataques extras a cada 10 segundos)
    objective 865/1 |opt
    note-enUS Talk to the Beaten Corpse
    note-ptBR Fale com o Beaten Corpse
    objective 4921/1
step
    ifnotturnedin 1093
    path seq 1413 @-1951.27,-1956.15 @-2031.32,-1703.47 @-2183.32,-1858.19 @-2453.88,-1991.28 @-1960.39,-2333.83
    goto 1413 @-1995.86,-2376.39
    note-enUS Kill Stormsnouts. Loot them for a Thunder Lizard Horn
    note-ptBR Mate Stormsnouts. Saqueie-os para obter um Thunder Lizard Horn
    objective 821/3 |opt
    note-enUS Kill Lakota'mani. Loot him for the [Hoof of Lakota'mani]
    note-ptBR Mate Lakota'mani. Saqueie-o para obter o [Hoof of Lakota'mani]
    note-enUS Use the [Hoof of Lakota'mani] to start the quest
    note-ptBR Use o [Hoof of Lakota'mani] para iniciar a missão
    note-enUS He has 4 spawnpoints (marked on the map)
    note-ptBR Ele tem 4 pontos de ressurgimento (marcados no mapa)
    note-enUS Skip this step if you can't find him
    note-ptBR Pule este passo se não conseguir encontrá-lo
    collect 5099 1 |quest 883 |opt
    accept 883 |opt
    use 5099 |opt
    note-enUS Kill Stormsnouts. Loot them for a Horn. This does not have to be completed now
    note-ptBR Mate Stormsnouts. Saqueie-os para obter um chifre. Isto não precisa ser concluído agora
    objective 821/3 |opt
    note-enUS Talk to Innkeeper Byula
    note-ptBR Fale com Innkeeper Byula
    home
step
    ifonquest 883
    goto 1413 @-1921.88,-2383.15
    note-enUS Talk to Jorn Skyseer
    note-ptBR Fale com Jorn Skyseer
    turnin 883
step
    goto 1413 @-1891.48,-2391.93
    note-enUS Talk to Mangletooth
    note-ptBR Fale com Mangletooth
    accept 878
step
    ifcomplete 848
    path seq 1413 @-1881.35,-2384.5
    goto 1413 @-2589.67,-424.51
    note-enUS Talk to Omusa
    note-ptBR Fale com Omusa
    fp |only !Tauren |opt
    fp |opt
    note-enUS Talk to Helbrim
    note-ptBR Fale com Helbrim
    turnin 848
step
    path seq 1413 @-2641.35,-521.12 @-2672.76,-544.77 @-2670.74,-482.61
    goto 1413 @-2639.32,-436
    note-enUS Talk to Mankrik, Tonga, Sergra and Gazrog
    note-ptBR Fale com Mankrik, Tonga, Sergra e Gazrog
    turnin 4921
    turnin 877
    accept 880
    turnin 905
    accept 3261
    turnin 3281
step
    only Hunter
    goto 1413 @-2556.23,-351.54
    note-enUS Talk to Uthrok. Buy a [Medium Quiver] from him
    note-ptBR Fale com Uthrok. Compre [Medium Quiver] dele
    collect 11362 1 |quest 896 |q 896/1
    collect 2515 2200 |quest 896 |q 896/1
step
    ifcomplete 855
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    turnin 851
    accept 852
    turnin 855
step
    ifcomplete 851
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    turnin 851
    accept 852
step
    ifturnedin 851
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    accept 852
step
    ifturnedin 851
    path closest 1413 @-2001.94,-965.69 @-2022.2,-945.42 @-2016.12,-915.01 @-2033.35,-894.74 @-2031.32,-881.23 @-2052.6,-877.18 @-2057.67,-879.21 @-2066.79,-877.85 @-2085.03,-898.8 @-2097.19,-908.26 @-2102.26,-950.15 @-2114.42,-981.22 @-2167.11,-1021.09 @-2187.38,-1040.68 @-2261.35,-1060.95 @-2281.62,-1061.62 @-2301.88,-1056.89 @-2295.8,-1087.3 @-2299.86,-1125.13 @-2268.44,-1145.4 @-2247.16,-1145.4 @-2226.9,-1166.35 @-2189.4,-1179.86 @-2174.2,-1198.78 @-2162.04,-1200.8 @-2124.55,-1228.5 @-2095.16,-1220.4 @-2065.78,-1208.91 @-2041.46,-1167.7 @-2024.23,-1179.18 @-2047.54,-1156.21 @-2046.52,-1135.94 @-2009.03,-1127.84
    note-enUS Kill Oasis Snapjaws as you're looking for Hezrul Bloodmark. Loot them for their Shells
    note-ptBR Mate Oasis Snapjaws enquanto procura Hezrul Bloodmark. Saqueie-os para obter os cascos
    objective 880/1 |opt
    note-enUS Kill Kolkar around the oasis. Loot them for their Bracers
    note-ptBR Mate Kolkar ao redor do oásis. Saqueie-os para obter os braçais
    objective 855/1 |opt
    note-enUS Find & kill Hezrul Bloodmark. Loot him for his Head
    note-ptBR Encontre e mate Hezrul Bloodmark. Saqueie-o para obter a Cabeça dele
    note-enUS Hezrul patrols around the lake
    note-ptBR Hezrul patrulha ao redor do lago
    objective 852/1
step
    ifonquest 855
    path seq 1413 @-2001.94,-965.69 @-2022.2,-945.42 @-2016.12,-915.01 @-2033.35,-894.74 @-2031.32,-881.23 @-2052.6,-877.18 @-2057.67,-879.21 @-2066.79,-877.85 @-2085.03,-898.8 @-2097.19,-908.26 @-2102.26,-950.15 @-2114.42,-981.22 @-2167.11,-1021.09 @-2187.38,-1040.68 @-2261.35,-1060.95 @-2281.62,-1061.62 @-2301.88,-1056.89 @-2295.8,-1087.3 @-2299.86,-1125.13 @-2268.44,-1145.4 @-2247.16,-1145.4 @-2226.9,-1166.35 @-2189.4,-1179.86 @-2174.2,-1198.78 @-2162.04,-1200.8 @-2124.55,-1228.5 @-2095.16,-1220.4 @-2065.78,-1208.91 @-2041.46,-1167.7 @-2024.23,-1179.18 @-2047.54,-1156.21 @-2046.52,-1135.94
    goto 1413 @-2009.03,-1127.84 50
    note-enUS Kill Kolkar around the oasis. Loot them for their Bracers
    note-ptBR Mate Kolkar ao redor do oásis. Saqueie-os para obter os braçais
    note-enUS Feel free to skip this quest if you haven't had many drops yet so far
    note-ptBR Fique à vontade para pular esta missão se ainda não tiver conseguido muitas quedas
    objective 855/1
step
    ifcomplete 852
    ifcomplete 855
    goto 1413 @-1972.55,-306.95
    abandon 855 |opt
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    turnin 852
    turnin 855
step
    ifcomplete 852
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    turnin 852
step
    ifcomplete 855
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    turnin 855
step
    ifturnedin 852
    goto 1413 @-1972.55,-306.95
    note-enUS This next quest is very hard & grouping up is recommended. You can kite Warlord Krom'zar around using the building where the quest giver is located
    note-ptBR A próxima missão é muito difícil e é recomendado formar um grupo. Você pode kitar Warlord Krom'zar ao redor do prédio onde fica quem dá a missão
    note-enUS Skip it if you can't do this quest. You will have another opportunity to complete it at higher level
    note-ptBR Pule se não conseguir fazer esta missão. Você terá outra chance de completá-la em um nível mais alto
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    accept 4021
step
    ifonquest 4021
    goto 1413 @-1884.39,-289.38
    note-enUS Kill Warlord Krom'zar once he appears. Loot the Banner that he drops on the ground
    note-ptBR Mate Warlord Krom'zar quando ele aparecer. Saqueie o estandarte que ele deixa cair no chão
    note-enUS Be careful! He is a strong elite and is guarded by at least two Kolkar mobs
    note-ptBR Cuidado! Ele é um elite forte e é protegido por pelo menos dois mobs Kolkar
    note-enUS It can take up to 3 minutes until he spawns
    note-ptBR Pode levar até 3 minutos para ele aparecer
    objective 4021/1
step
    ifcomplete 4021
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    turnin 4021
step
    ifcomplete 855
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    turnin 855
step
    ifcomplete 4021
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    turnin 4021
step
    ifcomplete 855
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    turnin 855
step
    ifonquest 875
    path closest 1413 @-1458.79,565.96 @-1379.75,620.68 @-1376.71,717.97 @-1323,747.7 @-1245.99,763.91 @-1223.7,699.05 @-1290.58,670 @-1245.99,624.74 @-1241.94,559.2 @-1155.8,553.12 @-1150.74,513.93 @-1194.31,508.53 @-1263.22,458.53 @-1311.86,415.97 @-1366.58,449.75 @-1417.24,486.91 @-1445.62,532.85
    note-enUS Kill Plainstriders. Loot them for their Kidneys
    note-ptBR Mate Plainstriders. Saqueie-os para obter os rins
    objective 821/2 |opt
    note-enUS Kill Witchwing Slayers. Loot them for their Rings
    note-ptBR Mate Witchwing Slayers. Saqueie-as para obter os anéis
    note-enUS Be careful as Witchwing Slayers cast [Execute] (deals a LOT of damage when you're at <20% health), and Witchwing Ambushers are [Stealthed] and patrol around
    note-ptBR Cuidado, Witchwing Slayers lançam [Execute] (causa MUITO dano quando você está com <20% de vida) e Witchwing Ambushers ficam em [Stealthed] e patrulham a área
    note-enUS Watch out for Witchwing Ambushers. They are stealthed and patrol in the area
    note-ptBR Cuidado com os Witchwing Ambushers. Eles ficam furtivos e patrulham a área
    objective 875/1
step
    path seq 1413 @-950.1,-271.14
    goto 1413 @-943,-265.06
    note-enUS Talk to Seereth and Makaba
    note-ptBR Fale com Seereth e Makaba
    turnin 1061
    accept 1062
    accept 6548
step
    goto 1413 @-950.1,-271.14
    note-enUS Talk to Seereth
    note-ptBR Fale com Seereth
    turnin 1061
    accept 1062
]==])

register([==[
#format 1
#id forever.dg.h.20-24-stonetalon-barrens
#name 20-24 Stonetalon/Barrens (dungeons)
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Horde
#levels 20-24
#zones 1442 1413
#name-ptBR 20-24 Stonetalon/Barrens (masmorras)
#group Leveling with dungeons (Horde)
#group-ptBR Evolução com masmorras (Horda)
#subgroup Speedrun 1-22
#subgroup-ptBR Rota rápida 1-22

step
    ifonquest 6548
    path closest 1442 @-691.11,-13.63 @-650.58,26.74 @-718.94,65.49 @-743.85,101.96 @-771.2,113.04 @-785.36,141.69 @-838.59,148.2 @-865.93,142.34 @-846.4,103.92 @-819.54,76.24 @-774.61,-5.17 @-774.61,-27.96 @-726.27,-39.36
    note-enUS Kill Grimtotem Ruffians and Grimtotem Mercenaries in the area
    note-ptBR Mate Grimtotem Ruffians e Grimtotem Mercenaries na área
    objective 6548/1
    objective 6548/2
step
    ifcomplete 6548
    goto 1413 @-943,-265.06
    note-enUS Talk to Makaba
    note-ptBR Fale com Makaba
    turnin 6548
    accept 6629
step
    ifturnedin 6548
    goto 1413 @-943,-265.06
    note-enUS Talk to Makaba
    note-ptBR Fale com Makaba
    accept 6629
step
    ifturnedin 6548
    path seq 1442 @-460.13,67.77
    goto 1442 @-350.74,112.06
    note-enUS Kill Grundig Darkcloud and Grimtotem Brutes
    note-ptBR Mate Grundig Darkcloud e Grimtotem Brutes
    note-enUS Make sure you kill all six Grimtotem Brutes before starting the quest inside
    note-ptBR Mate todos os seis Grimtotem Brutes antes de iniciar a missão lá dentro
    objective 6629/1
    objective 6629/2
step
    ifturnedin 6548
    goto 1442 @-342.44,129.64
    note-enUS Talk to Kaya
    note-ptBR Fale com Kaya
    accept 6523 |noauto
step
    ifturnedin 6548
    path seq 1442 @-261.38,90.57 @-261.86,-7.12
    goto 1442 @-501.15,-41.64
    note-enUS Escort Kaya and stay close to her
    note-ptBR Escolte Kaya e fique perto dela
    note-enUS Be careful! Three Grimtotems will spawn when you reach the bonfire in Camp Aparaje
    note-ptBR Cuidado! Três Grimtotems surgirão quando você chegar à fogueira em Camp Aparaje
    objective 6523/1
step
    ifcomplete 6523
    ifcomplete 6629
    goto 1413 @-943,-265.06
    note-enUS Talk to Makaba
    note-ptBR Fale com Makaba
    turnin 6629
    turnin 6523
    accept 6401
step
    ifcomplete 6523
    goto 1413 @-943,-265.06
    note-enUS Talk to Makaba
    note-ptBR Fale com Makaba
    turnin 6523
    accept 6401
step
    ifcomplete 6629
    goto 1413 @-943,-265.06
    note-enUS Talk to Makaba
    note-ptBR Fale com Makaba
    turnin 6629
step
    ifturnedin 6523
    goto 1413 @-943,-265.06
    note-enUS Talk to Makaba
    note-ptBR Fale com Makaba
    accept 6401
step
    path seq 1442 @-786.33,-294.97 @-665.72,-280.97 @-522.63,-294.32
    goto 1442 @-233.54,-177.42
    note-enUS Talk to Xen'Zilla
    note-ptBR Fale com Xen'Zilla
    accept 6461
step
    path seq 1442 @-103.64,40.1 @74.11,185.32 @244.05,262.5
    goto 1442 @360.76,451.69
    note-enUS Kill every Deepmoss Creeper you see
    note-ptBR Mate todos os Deepmoss Creepers que vir
    objective 6461/1 |opt
    note-enUS Click the Wanted Poster
    note-ptBR Clique no Wanted Poster
    accept 6284
step
    path closest 1442 @569.77,573.79 @711.87,513.23 @684.04,582.91 @569.77,573.79
    note-enUS Kill Deepmoss Venomspitters and Deepmoss Creepers
    note-ptBR Mate Deepmoss Venomspitters e Deepmoss Creepers
    objective 6461/2 |opt
    objective 6461/1 |opt
    note-enUS Loot the Spider Eggs near the trees
    note-ptBR Saqueie os Spider Eggs perto das árvores
    note-enUS Be careful! The Deepmoss Hatchlings have a chance of summoning a level 22 Deepmoss Matriarch
    note-ptBR Cuidado! Os Deepmoss Hatchlings têm chance de invocar uma Deepmoss Matriarch nível 22
    objective 1069/1 |opt
    note-enUS Kill Besseleth. Loot her for for her Fang
    note-ptBR Mate Besseleth. Saqueie-a para obter a presa dela
    note-enUS Clear the area around Besseleth. Be careful as she webs you. Keep her permanently feared with dots |only Warlock
    note-ptBR Limpe a área ao redor de Besseleth. Cuidado, ela prende você com teia. Mantenha-a com medo permanentemente usando DoTs |only Warlock
    note-enUS This quest is hard. Skip it needed
    note-ptBR Esta missão é difícil. Pule-a se necessário
    objective 6284/1
step
    path seq 1442 @-44.56,84.05 @245.51,255.01 @392.01,445.17
    goto 1442 @560.49,440.94
    note-enUS Kill Deepmoss Creepers
    note-ptBR Mate Deepmoss Creepers
    note-enUS Save any [Small Venom Sacs] you loot |only Rogue
    note-ptBR Guarde os [Small Venom Sacs] que saquear |only Rogue
    objective 6461/1
step
    ifonquest 1483
    path seq 1442 @735.8,925.8 @806.12,929.05
    goto 1442 @927.72,893.56
    note-enUS Talk to Innkeeper Jayka
    note-ptBR Fale com Innkeeper Jayka
    vendor |only !Rogue !Warrior
    vendor |only Rogue Warrior
step
    ifonquest 1483
    goto 1442 @920.88,911.47
    note-enUS Talk to Jeeda on the second floor of the inn
    note-ptBR Fale com Jeeda no segundo andar da estalagem
    vendor |only !Warrior
    vendor |only Warrior
step
    ifturnedin 6523
    goto 1442 @928.2,1015.99
    note-enUS Talk to Tammra
    note-ptBR Fale com Tammra
    turnin 6401
step
    ifcomplete 6284
    goto 1442 @940.9,925.14
    note-enUS Talk to Maggran
    note-ptBR Fale com Maggran
    turnin 6284
step
    goto 1442 @1041.99,967.8
    note-enUS Talk to Tharm
    note-ptBR Fale com Tharm
    fp
step
    goto 1442 @365.16,878.25 15
    note-enUS Talk to Ziz
    note-ptBR Fale com Ziz
    turnin 1483
    accept 1093
step
    path closest 1442 @352.46,912.44 @297.77,959.66 @250.4,990.59 @259.68,1032.93 @246.98,1068.09 @207.91,1010.13 @163.47,962.27 @86.81,961.94 @181.05,907.89 @193.75,867.83 @194.73,827.78 @225.49,765.26 @281.16,763.63 @268.95,832.99 @303.63,858.39
    note-enUS Loot the Spider Eggs near the trees
    note-ptBR Saqueie os Spider Eggs perto das árvores
    note-enUS Be careful! The Deepmoss Hatchlings have a chance of summoning a level 22 Deepmoss Matriarch
    note-ptBR Cuidado! Os Deepmoss Hatchlings têm chance de invocar uma Deepmoss Matriarch nível 22
    objective 1069/1 |opt
    note-enUS Kill Deepmoss Venomspitters
    note-ptBR Mate Deepmoss Venomspitters
    note-enUS Save any [Small Venom Sacs] you loot |only Rogue
    note-ptBR Guarde os [Small Venom Sacs] que saquear |only Rogue
    objective 6461/2
step
    only Troll Warrior Orc Warrior Tauren Warrior
    goto 1442 @402.76,1231.88
    note-enUS Talk to Veenix. Buy a [Long Staff] from him
    note-ptBR Fale com Veenix. Compre [Long Staff] dele
    collect 928 1 |quest 899 |q 899/1
step
    only Scourge Warrior
    goto 1442 @402.76,1231.88
    note-enUS Equip the [Long Staff] |only Troll Warrior Orc Warrior Tauren Warrior
    note-ptBR Equipe o [Long Staff] |only Troll Warrior Orc Warrior Tauren Warrior
    use 928 |only Troll Warrior Orc Warrior Tauren Warrior |opt
    note-enUS Talk to Veenix
    note-ptBR Fale com Veenix
    vendor
    note-enUS If it's not up, buy a [Dacian Falx] instead
    note-ptBR Se não estiver disponível, compre uma [Dacian Falx]
step
    only Shaman
    goto 1442 @402.76,1231.88
    note-enUS Equip the [Executioner's Sword] |only Scourge Warrior
    note-ptBR Equipe a [Executioner's Sword] |only Scourge Warrior
    use 4818 |only Scourge Warrior |opt
    note-enUS Equip the [Dacian Falx] |only Scourge Warrior
    note-ptBR Equipe a [Dacian Falx] |only Scourge Warrior
    use 922 |only Scourge Warrior |opt
    note-enUS Talk to Veenix. Buy a [Long Staff] from him
    note-ptBR Fale com Veenix. Compre [Long Staff] dele
    collect 928 1 |quest 899 |q 899/1
step
    only Rogue
    goto 1442 @402.76,1231.88
    note-enUS Equip the [Long Staff] |only Shaman
    note-ptBR Equipe o [Long Staff] |only Shaman
    use 928 |only Shaman |opt
    note-enUS Talk to Veenix. Buy a [Longsword] from him
    note-ptBR Fale com Veenix. Compre [Longsword] dele
    collect 923 1 |quest 899 |q 899/1
step
    ifonquest 1093
    note-enUS Equip the [Longsword] |only Rogue
    note-ptBR Equipe a [Longsword] |only Rogue
    use 923 |only Rogue |opt
step
    path closest 1442 @179.1,1168.06 @232.82,1239.7 @-16.23,1441.59 @-255.52,1291.8 @-382.48,1135.5
    note-enUS Kill Venture Co. Loggers
    note-ptBR Mate Venture Co. Loggers
    objective 1062/1 |opt
    note-enUS Kill Venture Co. Operators. Loot them for their Blueprints
    note-ptBR Mate Venture Co. Operators. Saqueie-os para obter os Blueprints
    objective 1093/1
step
    path closest 1442 @242.58,1121.82 @292.39,1122.47 @325.6,1168.39 @338.79,1206.48 @276.77,1248.49 @215.24,1145.59 @187.4,1114.33 @138.57,1144.62 @51.16,1153.41 @-17.7,1128.33 @-106.09,1157.31 @-165.66,1173.6 @-189.1,1079.82 @-69.95,1061.91 @10.63,1072.33 @57.51,1056.05 @107.32,1040.09
    note-enUS Kill Venture Co. Loggers
    note-ptBR Mate Venture Co. Loggers
    objective 1062/1
step
    path closest 1442 @246.98,1068.09 @352.46,912.44 @297.77,959.66 @250.4,990.59 @259.68,1032.93 @246.98,1068.09 @207.91,1010.13 @163.47,962.27 @86.81,961.94 @181.05,907.89 @193.75,867.83 @194.73,827.78 @225.49,765.26 @281.16,763.63 @268.95,832.99 @303.63,858.39
    note-enUS Loot the Spider Eggs near the trees
    note-ptBR Saqueie os Spider Eggs perto das árvores
    note-enUS Be careful! The Deepmoss Hatchlings have a chance of summoning a level 22 Deepmoss Matriarch
    note-ptBR Cuidado! Os Deepmoss Hatchlings têm chance de invocar uma Deepmoss Matriarch nível 22
    objective 1069/1
step
    goto 1442 @365.16,878.25
    note-enUS If you have over 15 Deepmoss Eggs, split the stack of any extras (shift click), then delete them
    note-ptBR Se tiver mais de 15 Deepmoss Eggs, divida a pilha dos extras (shift + clique) e depois destrua-os
    note-enUS Talk to Ziz
    note-ptBR Fale com Ziz
    turnin 1093
    accept 1094
step
    path closest 1442 @362.71,539.28 @275.3,577.38 @362.71,539.28 @298.25,432.8 @244.05,262.5 @74.11,185.32 @-103.64,40.1
    note-enUS Finish killing Deepmoss Creepers
    note-ptBR Termine de matar Deepmoss Creepers
    note-enUS Save any [Small Venom Sacs] you loot |only Rogue
    note-ptBR Guarde os [Small Venom Sacs] que saquear |only Rogue
    objective 6461/1
step
    only Druid
    goto 1450 @-2593.82,7866.9
    note-enUS Talk to Loganaar
    note-ptBR Fale com Loganaar
    train 1430
step
    only Druid
    goto 1450 @-2593.82,7866.9
    note-enUS Talk to Loganaar
    note-ptBR Fale com Loganaar
    train 768
step
    only Druid
    goto 1450 @-2593.82,7866.9
    note-enUS Talk to Loganaar
    note-ptBR Fale com Loganaar
    train 1075
step
    path seq 1413 @-2595.75,-437.35
    goto 1413 @-1921.88,-2383.15
    hearth |opt
    use 6948 |opt
    note-enUS Talk to Devrak
    note-ptBR Fale com Devrak
    fp |opt
    note-enUS Talk to Jorn Skyseer
    note-ptBR Fale com Jorn Skyseer
    turnin 3261
    accept 882
step
    path closest 1413 @-1951.27,-1956.15 @-2031.32,-1703.47 @-2183.32,-1858.19 @-2453.88,-1991.28 @-1951.27,-1956.15 @-2031.32,-1703.47 @-2183.32,-1858.19 @-2453.88,-1991.28
    note-enUS Kill Stormsnouts. Loot them for a Horn
    note-ptBR Mate Stormsnouts. Saqueie-os para obter um chifre
    objective 821/3 |opt
    note-enUS Kill Bristleback Quilboars. Loot them for their Tusks. Save the [Blood Shards] you get
    note-ptBR Mate Bristleback Quilboars. Saqueie-os para obter as presas. Guarde os [Blood Shards] que conseguir
    objective 878/1 |opt
    objective 878/2 |opt
    objective 878/3 |opt
    objective 899/1 |opt
    note-enUS Kill Lakota'mani. Loot him for the [Hoof of Lakota'mani]
    note-ptBR Mate Lakota'mani. Saqueie-o para obter o [Hoof of Lakota'mani]
    note-enUS Use the [Hoof of Lakota'mani] to start the quest
    note-ptBR Use o [Hoof of Lakota'mani] para iniciar a missão
    note-enUS He has 4 spawnpoints (marked on the map)
    note-ptBR Ele tem 4 pontos de ressurgimento (marcados no mapa)
    note-enUS Skip this step if you can't find him
    note-ptBR Pule este passo se não conseguir encontrá-lo
    collect 5099 1 |quest 883
    accept 883
    use 5099
step
    path closest 1413 @-2515.7,-2076.41 @-2518.74,-2125.73 @-2517.72,-2223.7 @-2486.31,-2254.1 @-2494.42,-2282.48 @-2531.91,-2272.34 @-2571.43,-2295.31 @-2620.07,-2285.18 @-2625.14,-2245.32 @-2755.86,-2082.49 @-2813.62,-2054.12 @-2811.59,-2004.12 @-2783.22,-1949.39 @-2747.75,-1889.26 @-2709.24,-1913.59 @-2706.2,-1948.72 @-2687.96,-1973.04 @-2678.84,-2016.28 @-2584.6,-2050.74
    note-enUS Kill Stormsnouts. Loot them for a Horn
    note-ptBR Mate Stormsnouts. Saqueie-os para obter um chifre
    objective 821/3 |opt
    note-enUS Kill Bristleback Quilboars. Loot them for their Tusks. Save the [Blood Shards] you get
    note-ptBR Mate Bristleback Quilboars. Saqueie-os para obter as presas. Guarde os [Blood Shards] que conseguir
    objective 878/1
    objective 878/2
    objective 878/3
    objective 899/1
step
    only Warlock Shaman
    path closest 1413 @-2515.7,-2076.41 @-2518.74,-2125.73 @-2517.72,-2223.7 @-2486.31,-2254.1 @-2494.42,-2282.48 @-2531.91,-2272.34 @-2571.43,-2295.31 @-2620.07,-2285.18 @-2625.14,-2245.32 @-2755.86,-2082.49 @-2813.62,-2054.12 @-2811.59,-2004.12 @-2783.22,-1949.39 @-2747.75,-1889.26 @-2709.24,-1913.59 @-2706.2,-1948.72 @-2687.96,-1973.04 @-2678.84,-2016.28 @-2584.6,-2050.74
    level 19
step
    path closest 1413 @-2532.92,-1965.61 @-2449.83,-1953.45 @-2377.88,-2018.31 @-2397.14,-2108.84 @-2345.46,-2187.21 @-2415.38,-2179.78
    note-enUS Kill Stormsnouts. Loot them for a Horn
    note-ptBR Mate Stormsnouts. Saqueie-os para obter um chifre
    objective 821/3
step
    path closest 1413 @-2847.06,-1879.13 @-2859.22,-1804.81 @-2833.88,-1749.41 @-2881.51,-1723.74 @-2973.72,-1627.8
    note-enUS Kill Sunscale Scytheclaws. Loot them for their Horns
    note-ptBR Mate Sunscale Scytheclaws. Saqueie-os para obter os chifres
    note-enUS Be careful as they cast [Thrash] (Charges 2 extra attacks every 10 seconds)
    note-ptBR Cuidado, eles lançam [Thrash] (Carrega 2 ataques extras a cada 10 segundos)
    objective 865/1 |opt
    note-enUS Finish killing Plainstriders. Loot them for their Kidneys
    note-ptBR Termine de matar Plainstriders. Saqueie-os para obter os Rins
    objective 821/2
step
    path closest 1413 @-3183.48,-2015.61 @-2646.42,-1529.16 @-3183.48,-2015.61 @-2646.42,-1529.16
    note-enUS Finish killing Sunscale Scytheclaws. Loot them for their Horns
    note-ptBR Termine de matar Sunscale Scytheclaws. Saqueie-os para obter os Chifres
    note-enUS Be careful as they cast [Thrash] (Charges 2 extra attacks every 10 seconds)
    note-ptBR Cuidado, eles lançam [Thrash] (Carrega 2 ataques extras a cada 10 segundos)
    objective 865/1
step
    path closest 1413 @-3010.2,-1319.04 @-2959.54,-1292.69 @-2953.46,-1239.31 @-2998.04,-1192.02 @-3050.74,-1225.13 @-3066.95,-1260.93 @-3052.76,-1319.71
    note-enUS Kill any Zhevra. Loot it for a Fresh Zhevra Carcass
    note-ptBR Mate qualquer Zhevra. Saqueie-o para obter uma Fresh Zhevra Carcass
    collect 10338 1 |opt
    note-enUS Kill Oasis Snapjaws in and around the lake. Loot them for their Shells
    note-ptBR Mate Oasis Snapjaws dentro e ao redor do lago. Saqueie-os para obter os cascos
    objective 880/1
step
    goto 1413 @-3427.7,-436.67
    note-enUS Kill any Zhevra. Loot it for a Fresh Zhevra Carcass
    note-ptBR Mate qualquer Zhevra. Saqueie-o para obter uma Fresh Zhevra Carcass
    collect 10338 1 |opt
    use 10338
    note-enUS The Carcass only has a 30 minute duration!
    note-ptBR A carcaça dura apenas 30 minutos!
    objective 882/1
step
    only Rogue
    goto 1413 @-3768.18,-840.69 |only Rogue
    goto 1413 @-3728.66,-835.29 |only !Rogue
    goto 1413 @-3768.18,-840.69
    note-enUS Talk to Wrenix
    note-ptBR Fale com Wrenix
    turnin 2381
step
    ifcomplete 888
    goto 1413 @-3728.66,-835.29
    note-enUS Talk to Gazlowe
    note-ptBR Fale com Gazlowe
    turnin 888
step
    ifdungeon WC
    path seq 1413 @-3759.06,-902.18 @-3697.24,-929.2
    goto 1413 @-3687.11,-981.22
    note-enUS Talk to Sputtervalve, Mebok and Drohn
    note-ptBR Fale com Sputtervalve, Mebok e Drohn
    turnin 1094
    turnin 865
    turnin 1069
    accept 1491
    turnin 821
step
    path seq 1413 @-3759.06,-902.18 @-3697.24,-929.2
    goto 1413 @-3687.11,-981.22
    note-enUS Talk to Sputtervalve, Mebok and Drohn
    note-ptBR Fale com Sputtervalve, Mebok e Drohn
    turnin 1094
    turnin 865
    turnin 1069
    turnin 821
step
    only Warrior
    ifturnedin 865
    goto 1413 @-3680.02,-982.58
    note-enUS Talk to Grazlix
    note-ptBR Fale com Grazlix
    vendor
step
    only Rogue Hunter Warrior Shaman Druid
    ifturnedin 865
    goto 1413 @-3675.96,-985.28
    note-enUS Talk to Vexspindle
    note-ptBR Fale com Vexspindle
    vendor
step
    ifdungeon WC
    ifturnedin 865
    goto 1413 @-3664.82,-1050.14
    note-enUS Equip the [Mighty Chain Pants] |only Warrior
    note-ptBR Equipe as [Mighty Chain Pants] |only Warrior
    use 4800 |only Warrior |opt
    note-enUS Talk to Innkeeper Wiley
    note-ptBR Fale com Innkeeper Wiley
    home
step
    ifdungeon WC
    goto 1413 @-3770.2,-928.53
    note-enUS Talk to Bigglefuzz
    note-ptBR Fale com Bigglefuzz
    accept 959
step
    only Hunter
    path seq 1413 @-3770.2,-898.12
    goto 1413 @-2595.75,-473.15
    note-enUS Talk to Bragok
    note-ptBR Fale com Bragok
    fp |opt
    note-enUS Talk to Thork
    note-ptBR Fale com Thork
    accept 6541
step
    ifcomplete 875
    goto 1413 @-2607.91,-475.18
    note-enUS Talk to Darsok
    note-ptBR Fale com Darsok
    note-enUS He is at the top of the tower
    note-ptBR Ele está no topo da torre
    turnin 875
    accept 876
step
    ifturnedin 875
    goto 1413 @-2607.91,-475.18
    note-enUS Talk to Darsok
    note-ptBR Fale com Darsok
    note-enUS He is at the top of the tower
    note-ptBR Ele está no topo da torre
    accept 876
step
    path seq 1413 @-2641.35,-521.12
    goto 1413 @-2672.76,-544.77
    note-enUS Talk to Mankrik and Tonga
    note-ptBR Fale com Mankrik e Tonga
    turnin 899
    turnin 880
    accept 1489
    accept 3301 |only Shaman Rogue
step
    goto 1413 @-2555.22,-387.35
    note-enUS Talk to Korran
    note-ptBR Fale com Korran
    accept 868
step
    only Shaman
    goto 1413 @-2595.75,-437.35 |only Shaman
    goto 1454 @-4213.03,1920.94
    note-enUS Talk to Devrak |only Shaman
    note-ptBR Fale com Devrak |only Shaman
    fly 1454 |only Shaman |opt
    note-enUS Talk to Searn
    note-ptBR Fale com Searn
    accept 1528
step
    only Shaman
    goto 1454 @-4225.09,1933.29
    note-enUS Talk to Kardris
    note-ptBR Fale com Kardris
    train 2645
step
    only Warlock
    goto 1413 @-2595.75,-437.35 |only Warlock
    goto 1454 @-4357.36,1850.41
    note-enUS Talk to Devrak |only Warlock
    note-ptBR Fale com Devrak |only Warlock
    fly 1454 |only Warlock |opt
    note-enUS Talk to Gan'rul
    note-ptBR Fale com Gan'rul
    trainer
    accept 1507
step
    only Warlock
    goto 1454 @-4347.4,1836.57
    note-enUS Talk to Kurgul and buy [Grimoire of Torment (Rank 2)]
    note-ptBR Fale com Kurgul e compre [Grimoire of Torment (Rank 2)]
    collect 16346 1 |quest 1507 |q 1507/1
step
    only Warlock
    goto 1454 @-4340.53,1839.19
    note-enUS Talk to Cazul
    note-ptBR Fale com Cazul
    turnin 1507
    accept 1508
step
    only Warlock
    goto 1454 @-4299.99,1820.67
    note-enUS Talk to Katis. Buy a [Burning Wand] from her
    note-ptBR Fale com Katis. Compre [Burning Wand] dela
    collect 5210 1 |quest 1507 |q 1507/1
step
    only Warlock
    goto 1454 @-4199.99,1717.49
    note-enUS Talk to Zankaja
    note-ptBR Fale com Zankaja
    turnin 1508
    accept 1509
step
    only Shaman
    ifdungeon DM
    goto 1454 @-4225.09,1933.29
    note-enUS Talk to Devrak
    note-ptBR Fale com Devrak
    fly 1454 |opt
    note-enUS Talk to Kardris
    note-ptBR Fale com Kardris
    train 8052
step
    only Shaman
    ifdungeon DM
    goto 1454 @-4225.09,1933.29
    note-enUS Talk to Kardris
    note-ptBR Fale com Kardris
    train 2645
step
    only Hunter
    ifdungeon DM
    goto 1454 @-4607.02,2100.64
    note-enUS Talk to Ormak
    note-ptBR Fale com Ormak
    train 14318
step
    only Hunter
    ifdungeon DM
    goto 1454 @-4607.02,2100.64
    note-enUS Talk to Ormak
    note-ptBR Fale com Ormak
    train 14290
step
    only Hunter
    ifdungeon DM
    goto 1454 @-4610.95,2135.15
    note-enUS Talk to Xao'tsu
    note-ptBR Fale com Xao'tsu
    train 5118
step
    only Warrior
    ifdungeon DM
    goto 1454 @-4801.42,1980.53
    note-enUS Talk to Grezz
    note-ptBR Fale com Grezz
    train 8198
step
    only Warrior
    ifdungeon DM
    goto 1454 @-4801.42,1980.53
    note-enUS Talk to Grezz
    note-ptBR Fale com Grezz
    train 845
step
    only Rogue
    ifdungeon DM
    goto 1454 @-4296.34,1762.67
    note-enUS Talk to Ormok
    note-ptBR Fale com Ormok
    train 1943
step
    only Warlock
    ifdungeon DM
    goto 1458 @408.18,1587.21
    note-enUS Talk to Zevrost
    note-ptBR Fale com Zevrost
    train 1014
step
    only Warlock
    ifdungeon DM
    goto 1458 @408.18,1587.21
    note-enUS Talk to Zevrost
    note-ptBR Fale com Zevrost
    train 706
step
    only Mage
    ifdungeon DM
    goto 1454 @-4218.64,1473.72
    note-enUS Talk to Pephredo
    note-ptBR Fale com Pephredo
    train 3140
step
    only Mage
    ifdungeon DM
    goto 1454 @-4218.64,1473.72
    note-enUS Talk to Pephredo
    note-ptBR Fale com Pephredo
    train 1953
step
    only Priest
    ifdungeon DM
    goto 1454 @-4179.79,1452.58
    note-enUS Talk to Ur'kyo
    note-ptBR Fale com Ur'kyo
    train 970
step
    only Priest
    ifdungeon DM
    goto 1454 @-4179.79,1452.58
    note-enUS Talk to Ur'kyo
    note-ptBR Fale com Ur'kyo
    train 14914
step
    ifdungeon DM
    goto 1411 @-4648.55,1321.88 40
    zone 1411 |opt
    zone 1434
step
    ifdungeon DM
    path seq 1434 @273.91,-12406.71 @492.15,-12499.03 @759.53,-12494.77 @1178.78,-12166.78
    goto 1434 @1360,-11978.74 60
    path seq 1436 @1578.87,-11699.5 @1718.17,-11480.4
    goto 1436 @1966.32,-11407.13 200
    note-enUS Steer clear from the island. Follow the waypoint for safety!
    note-ptBR Fique longe da ilha. Siga o waypoint por segurança!
step
    ifdungeon DM
    goto 1436 @1966.32,-11407.13 40
    note-enUS Talk to Captain Grayson
    note-ptBR Fale com Captain Grayson
    accept 104
    accept 103
step
    ifdungeon DM
    goto 1436 @1966.32,-11407.13
    note-enUS Talk to Captain Grayson
    note-ptBR Fale com Captain Grayson
    turnin 103
step
    ifdungeon DM
    goto 1436 @1811.62,-11358.37
    note-enUS Kill Old Murk-Eye. Loot him for his Scale
    note-ptBR Mate Old Murk-Eye. Saqueie-o para obter Scale
    note-enUS Old Murk-Eye patrols up and down the Longshore. If you don't see him along the Longshore, wait for him to spawn in the most southern Murloc camp
    note-ptBR Old Murk-Eye patrulha para cima e para baixo em Longshore. Se não o vir por lá, espere ele surgir no acampamento de Murlocs mais ao sul
    objective 104/1
step
    ifdungeon DM
    goto 1436 @1966.32,-11407.13
    note-enUS Talk to Captain Grayson
    note-ptBR Fale com Captain Grayson
    turnin 104
step
    ifdungeon DM
    abandon 103
step
    ifdungeon DM
    path seq 1415 @1596.2,-11768.97 @1596.2,-11780.71 @1606.76,-11785.4 @1582.12,-11799.48 @1596.2,-11813.56 @1631.4,-11846.41 @1649,-11898.04 @1659.56,-11919.16 @1698.28,-11891
    goto 1415 @1744.04,-11881.61
step
    ifdungeon DM
    hearth
    zone 1413
    use 6948
step
    ifdungeon WC
    goto 1413 @-3664.82,-1050.14
    note-enUS Talk to Innkeeper Wiley
    note-ptBR Fale com Innkeeper Wiley
    vendor |only !Rogue !Warrior
    vendor |only Rogue Warrior
step
    ifdungeon DM
    goto 1413 @-2645.4,-406.94
    note-enUS Talk to Innkeeper Boorand
    note-ptBR Fale com Innkeeper Boorand
    vendor |only !Rogue !Warrior
    vendor |only Rogue Warrior
step
    only Warlock
    goto 1413 @-3770.2,-898.12 |only Warlock
    goto 1454 @-4313.6,1676.24 |only Warlock
    goto 1413 @-2639.32,-436
    note-enUS Talk to Bragok |only Warlock
    note-ptBR Fale com Bragok |only Warlock
    fp |only Warlock |opt
    note-enUS Talk to Doras |only Warlock
    note-ptBR Fale com Doras |only Warlock
    fp |only Warlock |opt
    note-enUS Talk to Gazrog
    note-ptBR Fale com Gazrog
    turnin 1509
    accept 1510
step
    only Shaman
    goto 1454 @-4313.6,1676.24 |only Shaman
    goto 1413 @-4047.86,-1345.39
    note-enUS Talk to Doras |only Shaman
    note-ptBR Fale com Doras |only Shaman
    fp |only Shaman |opt
    note-enUS Talk to Islen
    note-ptBR Fale com Islen
    turnin 1528
    accept 1530
step
    ifturnedin 848
    ifnotturnedin 853
    goto 1413 @-3770.2,-898.12 |only !Warlock !Shaman
    goto 1413 @-3770.2,-898.12 |only Shaman
    goto 1413 @-2589.67,-424.51
    note-enUS Talk to Bragok |only !Warlock !Shaman
    note-ptBR Fale com Bragok |only !Warlock !Shaman
    fp |only !Warlock !Shaman |opt
    note-enUS Talk to Bragok |only Shaman
    note-ptBR Fale com Bragok |only Shaman
    fp |only Shaman |opt
    note-enUS Talk to Helbrim
    note-ptBR Fale com Helbrim
    note-enUS Helbrim Starts a 45-minute timed quest
    note-ptBR Helbrim inicia uma missão com tempo limite de 45 minutos
    accept 853
step
    goto 1413 @-3770.2,-898.12 |only !Warlock !Shaman
    goto 1413 @-3770.2,-898.12 |only Shaman
    path seq 1413 @-2595.75,-437.35
    goto 1413 @-1891.48,-2391.93
    note-enUS You are on a timed quest, don't go afk. It will get turned in 20-30 minutes after pick-up
    note-ptBR Você está em uma missão com tempo, não fique AFK. Ela será entregue 20-30 minutos após pegá-la
    note-enUS Talk to Bragok |only !Warlock !Shaman
    note-ptBR Fale com Bragok |only !Warlock !Shaman
    fp |only !Warlock !Shaman |opt
    note-enUS Talk to Bragok |only Shaman
    note-ptBR Fale com Bragok |only Shaman
    fp |only Shaman |opt
    note-enUS Talk to Devrak
    note-ptBR Fale com Devrak
    fp |opt
    note-enUS Kill Bristleback Quilboars. Loot them for a [Blood Shard
    note-ptBR Mate Bristleback Quilboars. Saqueie-os para obter um [Blood Shard
    collect 5075 1 |quest 5052 |q 5052/1
step
    goto 1413 @-1891.48,-2391.93
    note-enUS Talk to Mangletooth
    note-ptBR Fale com Mangletooth
    turnin 878
    accept 5052
    turnin 5052
step
    ifonquest 883
    path seq 1413 @-1891.48,-2391.93
    goto 1413 @-1921.88,-2383.15
    note-enUS Talk to Mangletooth
    note-ptBR Fale com Mangletooth
    note-enUS Use your [Blood Shards] to get buffs. Save at least 4 of them for later
    note-ptBR Use seus [Blood Shards] para obter bônus. Guarde pelo menos 4 deles para depois
    note-enUS Make sure to turn off any autocomplete functions from addons such as Questie or Leatrix Plus for this!
    note-ptBR Desative qualquer função de conclusão automática de addons como Questie ou Leatrix Plus para isto!
    note-enUS Talk to Jorn Skyseer
    note-ptBR Fale com Jorn Skyseer
    turnin 882
    accept 907
    turnin 883
step
    goto 1413 @-1921.88,-2383.15
    note-enUS Talk to Jorn Skyseer
    note-ptBR Fale com Jorn Skyseer
    turnin 882
    accept 907
step
    path closest 1413 @-1899.59,-2624.34 @-2016.12,-2650.02 @-2400.18,-2398.01 @-2363.7,-2537.19 @-1899.59,-2624.34 @-2016.12,-2650.02 @-2363.7,-2537.19 @-2400.18,-2398.01 @-1868.18,-2498 @-1861.08,-2561.51 @-1842.84,-2618.94 @-1888.44,-2650.69 @-2004.98,-2683.8 @-2133.67,-2590.56 @-2182.31,-2479.76 @-2232.98,-2478.41 @-2273.51,-2456.79 @-2356.6,-2513.54 @-2428.55,-2517.6 @-2406.26,-2424.36 @-2363.7,-2395.98 @-2253.24,-2345.99
    note-enUS Kill Owatanka. Loot him for [Owatanka's Tailspike]
    note-ptBR Mate Owatanka. Saqueie-o para obter [Owatanka's Tailspike]
    note-enUS Use the [Owatanka's Tailspike] to start the quest
    note-ptBR Use o [Owatanka's Tailspike] para iniciar a missão
    note-enUS He has 4 spawnpoints (marked on the map)
    note-ptBR Ele tem 4 pontos de ressurgimento (marcados no mapa)
    collect 5102 1 |quest 884 |q 884/1 |opt
    accept 884 |opt
    use 5102 |opt
    note-enUS Kill Thunder Lizards. Loot them for their Blood
    note-ptBR Mate Thunder Lizards. Saqueie-os para obter o sangue
    objective 907/1
step
    ifonquest 884
    goto 1413 @-1921.88,-2383.15
    note-enUS Talk to Jorn
    note-ptBR Fale com Jorn
    turnin 884
    turnin 907
    accept 913
    accept 6382 |only Hunter
step
    goto 1413 @-1921.88,-2383.15
    note-enUS Talk to Jorn
    note-ptBR Fale com Jorn
    turnin 907
    accept 913
    accept 6382 |only Hunter
step
    only Shaman
    path seq 1413 @-1899.59,-2624.34 @-2016.12,-2650.02 @-2400.18,-2398.01 @-2363.7,-2537.19 @-1899.59,-2624.34 @-2016.12,-2650.02 @-2363.7,-2537.19 @-2400.18,-2398.01 |only Shaman
    goto 1413 @-1776.98,-3617.51 60 |only Shaman
    goto 1413 @-1776.98,-3617.51
    note-enUS Kill Owatanka. Loot him for [Owatanka's Tailspike] |only Shaman
    note-ptBR Mate Owatanka. Saqueie-o para obter [Owatanka's Tailspike] |only Shaman
    note-enUS Use the [Owatanka's Tailspike] to start the quest |only Shaman
    note-ptBR Use o [Owatanka's Tailspike] para iniciar a missão |only Shaman
    note-enUS He has 4 spawnpoints (marked on the map) |only Shaman
    note-ptBR Ele tem 4 pontos de ressurgimento (marcados no mapa) |only Shaman
    collect 5102 1 |quest 884 |q 884/1 |only Shaman |opt
    accept 884 |only Shaman |opt
    use 5102 |only Shaman |opt
    note-enUS Kill a Thunderhawk. Loot it for its Wings |only Shaman
    note-ptBR Mate um Thunderhawk. Saqueie-o para obter as asas |only Shaman
    objective 913/1 |only Shaman |opt
    note-enUS Talk to Brine
    note-ptBR Fale com Brine
    turnin 1530
    accept 1535
step
    only Shaman
    goto 1413 @-1858.04,-3572.92
    use 7766
    objective 1535/1
step
    only Shaman
    goto 1413 @-1776.98,-3617.51
    note-enUS Talk to Brine
    note-ptBR Fale com Brine
    turnin 1535
    accept 1536
step
    path closest 1413 @-1899.59,-2624.34 @-2016.12,-2650.02 @-2400.18,-2398.01 @-2363.7,-2537.19 @-1899.59,-2624.34 @-2016.12,-2650.02 @-2363.7,-2537.19 @-2400.18,-2398.01 |only Shaman
    path closest 1413 @-1919.86,-2652.04 @-2096.18,-2531.11 @-2341.4,-2352.74 @-1982.68,-2217.62 @-1775.96,-2235.86
    note-enUS Kill Owatanka. Loot him for [Owatanka's Tailspike] |only Shaman
    note-ptBR Mate Owatanka. Saqueie-o para obter [Owatanka's Tailspike] |only Shaman
    note-enUS Use the [Owatanka's Tailspike] to start the quest |only Shaman
    note-ptBR Use o [Owatanka's Tailspike] para iniciar a missão |only Shaman
    note-enUS He has 4 spawnpoints (marked on the map) |only Shaman
    note-ptBR Ele tem 4 pontos de ressurgimento (marcados no mapa) |only Shaman
    collect 5102 1 |quest 884 |q 884/1 |only Shaman |opt
    accept 884 |only Shaman |opt
    use 5102 |only Shaman |opt
    note-enUS Kill Owatanka. Loot him for [Owatanka's Tailspike] |only Shaman
    note-ptBR Mate Owatanka. Saqueie-o para obter [Owatanka's Tailspike] |only Shaman
    note-enUS Use the [Owatanka's Tailspike] to start the quest |only Shaman
    note-ptBR Use o [Owatanka's Tailspike] para iniciar a missão |only Shaman
    note-enUS He has 4 spawnpoints (marked on the map) |only Shaman
    note-ptBR Ele tem 4 pontos de ressurgimento (marcados no mapa) |only Shaman
    note-enUS Skip this step for now if you can't find him |only Shaman
    note-ptBR Pule este passo por enquanto se não conseguir encontrá-lo |only Shaman
    collect 5102 1 |quest 884 |q 884/1 |only Shaman |opt
    accept 884 |only Shaman |opt
    use 5102 |only Shaman |opt
    note-enUS Kill a Thunderhawk Hatchling or a Thunderhawk Cloudscraper. Loot it for its Thunderhawk Wings
    note-ptBR Mate um Thunderhawk Hatchling ou Thunderhawk Cloudscraper. Saqueie-o para obter as Thunderhawk Wings
    objective 913/1
step
    ifonquest 884
    goto 1413 @-1921.88,-2383.15
    note-enUS Talk to Jorn Skyseer
    note-ptBR Fale com Jorn Skyseer
    turnin 884
    turnin 913
    accept 874
step
    ifcomplete 913
    goto 1413 @-1921.88,-2383.15
    note-enUS Talk to Jorn Skyseer
    note-ptBR Fale com Jorn Skyseer
    turnin 913
    accept 874
step
    only !Tauren
    goto 1413 @-1891.48,-2391.93
    note-enUS Talk to Mangletooth
    note-ptBR Fale com Mangletooth
    note-enUS Skip this step if you have the Thunder Bluff flight path
    note-ptBR Pule este passo se já tiver o caminho de voo de Thunder Bluff
step
    only Scourge Warrior Orc Warrior Troll Warrior
    goto 1412 @-1480.52,-2339.56 120 |only !Tauren
    goto 1456 @184.96,-1308.69 |only !Tauren
    goto 1413 @-1881.35,-2384.5 |only Tauren
    goto 1456 @89.46,-1286.5
    zone 1412 |only !Tauren |opt
    zone 1456 |only !Tauren |opt
    note-enUS If you have the Thunder Bluff flight path, fly there instead |only !Tauren
    note-ptBR Se tiver o caminho de voo de Thunder Bluff, voe para lá |only !Tauren
    note-enUS Talk to Omusa |only Tauren
    note-ptBR Fale com Omusa |only Tauren
    fly 1456 |only Tauren |opt
    note-enUS Talk to Ansekhwa
    note-ptBR Fale com Ansekhwa
    train 199
    train 227
step
    only Troll Hunter Orc Hunter Scourge Warrior Warlock Priest
    goto 1456 @89.46,-1286.5
    note-enUS Talk to Ansekhwa
    note-ptBR Fale com Ansekhwa
    train 227
step
    only Rogue
    goto 1456 @89.46,-1286.5
    note-enUS Talk to Ansekhwa
    note-ptBR Fale com Ansekhwa
    train 198
step
    only Rogue
    goto 1456 @110.13,-1299.65
    note-enUS Talk to Kuruk. Buy [Deadly Throwing Axe] from him
    note-ptBR Fale com Kuruk. Compre [Deadly Throwing Axe] dele
    collect 3137 200 |quest 6544 |q 6544/1
step
    ifonquest 853
    ifdungeon WC
    path seq 1456 @222.96,-1079.42
    goto 1456 @219.09,-1051.44 10
    goto 1456 @218.68,-1028.41 |only Rogue Shaman
    goto 1456 @278.48,-995.29
    note-enUS Talk to Clarice |only Rogue Shaman
    note-ptBR Fale com Clarice |only Rogue Shaman
    accept 264 |only Rogue Shaman |opt
    note-enUS Talk to Zamah
    note-ptBR Fale com Zamah
    turnin 853
    accept 962
step
    ifdungeon WC
    goto 1456 @278.48,-995.29
    note-enUS Talk to Zamah
    note-ptBR Fale com Zamah
    accept 962
step
    ifonquest 853
    goto 1456 @278.48,-995.29
    note-enUS Talk to Zamah
    note-ptBR Fale com Zamah
    turnin 853
step
    only Priest
    goto 1456 @252.49,-956.04
    note-enUS Talk to Miles
    note-ptBR Fale com Miles
    accept 5642 |only Troll Priest
    trainer
step
    only Mage
    goto 1456 @279.32,-950.76
    note-enUS Talk to Shymm
    note-ptBR Fale com Shymm
    train 12051
step
    only Mage
    goto 1456 @279.32,-950.76
    note-enUS Talk to Shymm
    note-ptBR Fale com Shymm
    train 2138
step
    only Mage
    goto 1456 @279.32,-950.76
    note-enUS Talk to Shymm
    note-ptBR Fale com Shymm
    train 2121
step
    only Shaman
    goto 1456 @269.92,-980.4
    note-enUS Talk to Tigor
    note-ptBR Fale com Tigor
    train 2645
step
    only Shaman
    goto 1456 @269.92,-980.4
    note-enUS Talk to Tigor
    note-ptBR Fale com Tigor
    train 8498
step
    only Shaman
    goto 1456 @269.92,-980.4
    note-enUS Talk to Tigor
    note-ptBR Fale com Tigor
    train 8046
step
    goto 1456 @206.88,-997.45
    skill firstaid 80 |opt
    note-enUS Talk to Pand
    note-ptBR Fale com Pand
    note-enUS Skip this step if you did not have enough [Linen Cloth] to reach 80 skill
    note-ptBR Pule este passo se não tinha [Linen Cloth] suficiente para chegar a 80 de perícia
    train 3277
    train 7934 |only Rogue
step
    only Rogue
    note-enUS Create [Anti-Venom] if you found any [Small Venom Sacs]
    note-ptBR Crie [Anti-Venom] se tiver encontrado [Small Venom Sacs]
    note-enUS Save them for later
    note-ptBR Guarde-os para depois
    collect 6452 1
step
    path seq 1456 @-212.71,-1065.01
    goto 1456 @-303.83,-1048.66
    note-enUS Talk to Hamuul
    note-ptBR Fale com Hamuul
    turnin 1489
    accept 1490
step
    ifdungeon WC
    goto 1456 @-272.93,-1069.67
    note-enUS Talk to Nara
    note-ptBR Fale com Nara
    turnin 1490
    accept 914
step
    goto 1456 @-272.93,-1069.67
    note-enUS Talk to Nara
    note-ptBR Fale com Nara
    turnin 1490
step
    only Druid
    goto 1456 @-281.59,-1039.61
    note-enUS Talk to Turak
    note-ptBR Fale com Turak
    trainer
step
    goto 1456 @-56.98,-1207.8
    note-enUS Talk to Zangen
    note-ptBR Fale com Zangen
    accept 1195
step
    only Hunter
    goto 1456 @-123.26,-1394.49 60 |only Hunter
    goto 1456 @-100.5,-1454.75
    note-enUS Talk to Urek
    note-ptBR Fale com Urek
    train 5118
step
    only Hunter
    goto 1456 @-100.5,-1454.75
    note-enUS Talk to Urek
    note-ptBR Fale com Urek
    train 5118
step
    only Hunter
    goto 1456 @-100.5,-1454.75
    note-enUS Talk to Urek
    note-ptBR Fale com Urek
    train 19885
step
    only Hunter
    goto 1456 @-47.69,-1434.64
    note-enUS Talk to Hesuwa
    note-ptBR Fale com Hesuwa
    train 24494
step
    only Warrior
    goto 1456 @-123.26,-1394.49 60 |only Warrior
    goto 1456 @-81.09,-1457.74
    note-enUS Talk to Torm
    note-ptBR Fale com Torm
    train 845
    accept 1823
step
    only Rogue
    goto 1456 @-36.52,-1244.05
    note-enUS Talk to Kard. Buy a [Longsword] from him.
    note-ptBR Fale com Kard. Compre [Longsword] dele.
    collect 923 1 |quest 493 |q 493/1
step
    only Warrior
    goto 1456 @-38.71,-1255.32
    note-enUS Equip the [Longsword] |only Rogue
    note-ptBR Equipe a [Longsword] |only Rogue
    use 923 |only Rogue |opt
    note-enUS Talk to Etu. Buy a [Long Staff] from him
    note-ptBR Fale com Etu. Compre [Long Staff] dele
    collect 928 1 |quest 493 |q 493/1
step
    only Shaman
    goto 1456 @-38.71,-1255.32
    note-enUS Equip the [Long Staff] |only Warrior
    note-ptBR Equipe o [Long Staff] |only Warrior
    use 928 |only Warrior |opt
    note-enUS Talk to Etu. Buy a [Long Staff] from him
    note-ptBR Fale com Etu. Compre [Long Staff] dele
    collect 928 1 |quest 493 |q 493/1
step
    only Hunter
    goto 1456 @26.31,-1167.93
    note-enUS Equip the [Long Staff] |only Shaman
    note-ptBR Equipe o [Long Staff] |only Shaman
    use 928 |only Shaman |opt
    note-enUS Talk to Kuna. Buy a [Heavy Recurve Bow] from her
    note-ptBR Fale com Kuna. Compre [Heavy Recurve Bow] dela
    collect 3027 1 |quest 493 |q 493/1
step
    only Hunter
    goto 1456 @26.31,-1167.93
    note-enUS Equip the [Heavy Recurve Bow] |only Hunter
    note-ptBR Equipe o [Heavy Recurve Bow] |only Hunter
    use 3027 |only Hunter |opt
    note-enUS Talk to Kuna
    note-ptBR Fale com Kuna
    note-enUS Buy [Sharp Arrows] from her
    note-ptBR Compre [Sharp Arrows] dela
    collect 2515 1600 |quest 493 |q 493/1 |only Hunter
step
    ifonquest 914
    ifdungeon WC
    goto 1456 @26.1,-1196.66
    goto 1413 @-2053.62,-882.58 100
    note-enUS Talk to Tal
    note-ptBR Fale com Tal
    fp |opt
    note-enUS Grind Quilboars while assembling a Wailing Caverns group
    note-ptBR Farme Quilboars enquanto monta um grupo para Wailing Caverns
step
    ifdungeon WC
    path seq 1413 @-2134.68,-764.35
    goto 1413 @-2122.52,-734.62 20
    path seq 1414 @-2061.94,-781.68 @-2028.82,-828.29 @-2021.46,-816.03 @-2036.18,-796.4
    goto 1414 @-2039.86,-801.31
    note-enUS Follow the arrow closely to reach the hidden cave
    note-ptBR Siga a seta de perto para chegar à caverna escondida
    note-enUS Talk to Nalpak and Ebru
    note-ptBR Fale com Nalpak e Ebru
    note-enUS They are located above the the Wailing Caverns cave entrance
    note-ptBR Eles ficam acima da entrada da caverna de Wailing Caverns
    accept 1486
    accept 1487
step
    ifonquest 959
    ifdungeon WC
    path closest 1414 @-2058.26,-749.79 @-2003.06,-659.01 @-2072.98,-698.27 @-2124.5,-730.16 @-2058.26,-749.79 @-2003.06,-659.01 @-2072.98,-698.27 @-2124.5,-730.16
    note-enUS Loot the Serpentbloom on the ground
    note-ptBR Saqueie a Serpentbloom no chão
    note-enUS Cast [Find Herbs] to see them on your minimap
    note-ptBR Lance [Find Herbs] para vê-las no minimapa
    objective 962/1 |opt
    note-enUS Loot the Serpentbloom on the ground
    note-ptBR Saqueie a Serpentbloom no chão
    objective 962/1 |opt
    note-enUS Kill all the Deviate Beasts you see. Loot them for their Hides
    note-ptBR Mate todos os Deviate Beasts que ver. Saqueie-os para obter Hides
    objective 1486/1 |opt
    note-enUS Kill Ectoplasms. Loot them for their Essence
    note-ptBR Mate Ectoplasms. Saqueie-os para obter Essence
    objective 1491/1 |opt
    note-enUS Kill Mad Magglish. Loot him for the 99-Year-Old Port
    note-ptBR Mate Mad Magglish. Saqueie-o para obter 99-Year-Old Port
    note-enUS He has a long respawn timer. Skip this step if you cannot find him
    note-ptBR Ele demora para renascer. Pule esta etapa se não o encontrar
    objective 959/1
step
    ifdungeon WC
    path seq 1414 @-2028.82,-636.93 @-2050.9,-585.41 @-2168.66,-607.49
    goto 1414 @-2216.5,-742.43 30
step
    ifonquest 914
    ifdungeon WC
    note-enUS Loot the Serpentbloom on the ground
    note-ptBR Saqueie a Serpentbloom no chão
    note-enUS Cast [Find Herbs] to see them on your minimap
    note-ptBR Lance [Find Herbs] para vê-las no minimapa
    objective 962/1 |opt
    note-enUS Loot the Serpentbloom on the ground
    note-ptBR Saqueie a Serpentbloom no chão
    objective 962/1 |opt
    note-enUS Kill Ectoplasms. Loot them for their Essence
    note-ptBR Mate Ectoplasms. Saqueie-os para obter Essence
    objective 1491/1 |opt
    note-enUS Kill Deviate Ravagers, Vipers, Shamblers and Dreadfangs
    note-ptBR Mate Deviate Ravagers, Vipers, Shamblers e Dreadfangs
    objective 1487/1 |opt
    objective 1487/2 |opt
    objective 1487/3 |opt
    objective 1487/4 |opt
    objective 1486/1 |opt
    note-enUS Kill Lord Cobrahn, Lady Anacondra, Lord Pythas and Lord Serpentis. Loot them for their Gems
    note-ptBR Mate Lord Cobrahn, Lady Anacondra, Lord Pythas e Lord Serpentis. Saqueie-os para obter Gems
    objective 914/1
    objective 914/2
    objective 914/3
    objective 914/4
step
    ifdungeon WC
    note-enUS Talk to the Disciple of Naralex at the entrance of Wailing Caverns. Escort him safely to Naralex
    note-ptBR Fale com Disciple of Naralex na entrada de Wailing Caverns. Escolte-o com segurança até Naralex
    note-enUS Once you have reached Naralex you will get attack by two waves of enemies and finally by Mutanus the Devourer
    note-ptBR Ao chegar em Naralex, você será atacado por duas ondas de inimigos e, por fim, por Mutanus the Devourer
    note-enUS Kill him and loot him for the [Glowing Shard] and use it to start the quest
    note-ptBR Mate-o e saqueie o [Glowing Shard], depois use-o para iniciar a missão
    collect 10441 1
    accept 6981
    use 10441
step
    ifonquest 1487
    ifonquest 1486
    ifdungeon WC
    note-enUS Kill Ectoplasms. Loot them for their Essence
    note-ptBR Mate Ectoplasms. Saqueie-os para obter Essence
    objective 1491/1 |opt
    note-enUS Loot the Serpentbloom on the ground
    note-ptBR Saqueie a Serpentbloom no chão
    note-enUS Cast [Find Herbs] to see them on your minimap
    note-ptBR Lance [Find Herbs] para vê-las no minimapa
    objective 962/1 |opt
    note-enUS Loot the Serpentbloom on the ground
    note-ptBR Saqueie a Serpentbloom no chão
    objective 962/1 |opt
    note-enUS Kill Deviate Ravagers, Vipers, Shamblers and Dreadfangs. . Loot them for their Hides
    note-ptBR Mate Deviate Ravagers, Vipers, Shamblers e Dreadfangs. Saqueie-os para obter Hides
    objective 1487/1
    objective 1487/2
    objective 1487/3
    objective 1487/4
    objective 1486/1
step
    ifonquest 1487
    ifdungeon WC
    note-enUS Kill Deviate Ravagers, Vipers, Shamblers and Dreadfangs
    note-ptBR Mate Deviate Ravagers, Vipers, Shamblers e Dreadfangs
    objective 1487/1
    objective 1487/2
    objective 1487/3
    objective 1487/4
step
    ifonquest 1486
    ifdungeon WC
    note-enUS Kill Deviate Raptors. Loot them for their Hides
    note-ptBR Mate Deviate Raptors. Saqueie-os para obter Hides
    objective 1486/1
step
    ifonquest 1491
    ifdungeon WC
    note-enUS Kill Ectoplasms. Loot them for their Essence
    note-ptBR Mate Ectoplasms. Saqueie-os para obter Essence
    objective 1491/1
step
    ifonquest 962
    ifdungeon WC
    note-enUS Loot the Serpentbloom on the ground
    note-ptBR Saqueie a Serpentbloom no chão
    note-enUS Cast [Find Herbs] to see them on your minimap
    note-ptBR Lance [Find Herbs] para vê-las no minimapa
    objective 962/1
step
    ifskillbelow herbalism 1
    ifonquest 962
    ifdungeon WC
    note-enUS Loot the Serpentbloom on the ground
    note-ptBR Saqueie a Serpentbloom no chão
    objective 962/1
step
    ifcomplete 1491
    ifdungeon WC
    goto 1413 @-3697.24,-929.2
    hearth |opt
    use 6948 |opt
    note-enUS Talk to Mebok
    note-ptBR Fale com Mebok
    turnin 1491
step
    ifcomplete 959
    ifdungeon WC
    goto 1413 @-3770.2,-928.53
    note-enUS Talk to Bigglefuzz
    note-ptBR Fale com Bigglefuzz
    turnin 959
step
    ifonquest 6981
    ifdungeon WC
    goto 1413 @-3760.07,-902.18
    note-enUS Talk to Sputtervalve
    note-ptBR Fale com Sputtervalve
    objective 6981/1
step
    ifonquest 6981
    ifdungeon WC
    goto 1413 @-3770.2,-898.12
    note-enUS Talk to Bragok
    note-ptBR Fale com Bragok
    fp
step
    ifonquest 6981
    ifdungeon WC
    path seq 1413 @-2493.4,-708.95 @-2404.23,-721.11 @-2356.6,-685.98
    goto 1413 @-2259.32,-602.2 50
    note-enUS Talk to Falla
    note-ptBR Fale com Falla
    turnin 6981
    accept 3369
step
    ifturnedin 6981
    ifdungeon WC
    goto 1413 @-2259.32,-602.2
    note-enUS Talk to Falla
    note-ptBR Fale com Falla
    accept 3369
step
    ifcomplete 1487
    ifcomplete 1486
    ifdungeon WC
    path seq 1414 @-2036.18,-796.4
    goto 1414 @-2039.86,-801.31
    note-enUS Talk to Nalpak and Ebru
    note-ptBR Fale com Nalpak e Ebru
    note-enUS They are located above the the Wailing Caverns cave entrance
    note-ptBR Eles ficam acima da entrada da caverna de Wailing Caverns
    turnin 1486
    turnin 1487
step
    ifcomplete 1487
    ifdungeon WC
    goto 1414 @-2039.86,-801.31
    note-enUS Talk to Ebru
    note-ptBR Fale com Ebru
    note-enUS He is located above the the Wailing Caverns cave entrance
    note-ptBR Ele fica acima da entrada da caverna de Wailing Caverns
    turnin 1487
step
    ifcomplete 1486
    ifdungeon WC
    goto 1414 @-2036.18,-796.4
    note-enUS Talk to Nalpak
    note-ptBR Fale com Nalpak
    note-enUS He is located above the the Wailing Caverns cave entrance
    note-ptBR Ele fica acima da entrada da caverna de Wailing Caverns
    turnin 1486
step
    ifcomplete 914
    ifdungeon WC
    goto 1413 @-2595.75,-437.35
    goto 1456 @-272.93,-1069.67
    note-enUS Talk to Devrak
    note-ptBR Fale com Devrak
    fly 1456 |opt
    note-enUS Talk to Nara
    note-ptBR Fale com Nara
    turnin 914
step
    ifonquest 3369
    ifdungeon WC
    goto 1456 @-303.83,-1048.66
    note-enUS Talk to Hamuul
    note-ptBR Fale com Hamuul
    turnin 3369
step
    ifcomplete 962
    ifdungeon WC
    path seq 1456 @219.09,-1051.44
    goto 1456 @276.6,-996.12
    note-enUS Talk to Apothecary Zamah
    note-ptBR Fale com Apothecary Zamah
    turnin 962
step
    abandon 1486
step
    abandon 1487
step
    abandon 1491
step
    abandon 959
step
    abandon 914
step
    abandon 962
step
    ifcomplete 852
    goto 1456 @26.1,-1196.66
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Tal
    note-ptBR Fale com Tal
    fp |opt
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    turnin 852
step
    ifcomplete 855
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    turnin 855
step
    ifturnedin 852
    goto 1413 @-1972.55,-306.95
    note-enUS This next quest is very hard & grouping up is recommended. You can kite Warlord Krom'zar around using the building where the quest giver is located
    note-ptBR A próxima missão é muito difícil e é recomendado formar um grupo. Você pode kitar Warlord Krom'zar ao redor do prédio onde fica quem dá a missão
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    accept 4021
step
    ifturnedin 852
    goto 1413 @-1884.39,-289.38
    note-enUS Kill Warlord Krom'zar once he appears. Loot the Banner that he drops on the ground
    note-ptBR Mate Warlord Krom'zar quando ele aparecer. Saqueie o estandarte que ele deixa cair no chão
    note-enUS Be careful! He is a strong elite and is guarded by at least two Kolkar mobs
    note-ptBR Cuidado! Ele é um elite forte e é protegido por pelo menos dois mobs Kolkar
    note-enUS It can take up to 3 minutes until he spawns
    note-ptBR Pode levar até 3 minutos para ele aparecer
    objective 4021/1
step
    ifcomplete 4021
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    turnin 4021
step
    ifcomplete 855
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    turnin 855
step
    ifturnedin 875
    goto 1413 @-1345.3,790.94
    abandon 855 |opt
    note-enUS Kill Serena Bloodfeather. Loot her for her Head
    note-ptBR Mate Serena Bloodfeather. Saqueie-a para obter a cabeça dela
    objective 876/1
step
    only Hunter
    ifonquest 3921
    goto 1413 @-2347.48,857.83
    note-enUS Talk to Wenikee
    note-ptBR Fale com Wenikee
    turnin 3921
step
    only Hunter
    goto 1413 @-2253.24,1246.31
    note-enUS Talk to Torek
    note-ptBR Fale com Torek
    turnin 6541
step
    only Hunter
    goto 1440 @-2240.94,1778.57
    note-enUS Talk to Torek to start the escort
    note-ptBR Fale com Torek para iniciar a escolta
    note-enUS Torek has a 5 minute respawn time
    note-ptBR Torek leva 5 minutos para reaparecer
    accept 6544
step
    only Hunter
    path seq 1440 @-2110.61,1809.32 @-2052.37,1776.27 @-2006.81,1777.42
    goto 1440 @-2037.38,1777.04
    note-enUS Follow Torek
    note-ptBR Siga Torek
    note-enUS Let Torek and his Splintertree Raiders tank the Silverwing Warriors and Silverwing Sentinels
    note-ptBR Deixe Torek e seus Splintertree Raiders tanquearem os Silverwing Warriors e Silverwing Sentinels
    note-enUS When you clear the building, run toward the Balcony. When Duriel Moonfire comes, let Torek and his Splintertree Raiders take aggro before you deal damage
    note-ptBR Depois de limpar o prédio, corra até a sacada. Quando Duriel Moonfire chegar, deixe Torek e seus Splintertree Raiders pegarem o aggro antes de causar dano
    objective 6544/1
step
    only Hunter
    ifcomplete 6544
    goto 1440 @-2511.97,2271.73
    note-enUS Talk to Ertog
    note-ptBR Fale com Ertog
    turnin 6544
step
    only Hunter
    goto 1440 @-2554.65,2310.55
    note-enUS Talk to Senani
    note-ptBR Fale com Senani
    turnin 6382
    turnin 6383
step
    only Hunter
    goto 1440 @-2520.05,2305.55
    note-enUS Talk to Vhulgra
    note-ptBR Fale com Vhulgra
    fp
step
    ifcomplete 876
    goto 1440 @-2520.05,2305.55 |only Hunter
    goto 1413 @-2607.91,-474.51
    note-enUS Talk to Vhulgra |only Hunter
    note-ptBR Fale com Vhulgra |only Hunter
    fp |only Hunter |opt
    note-enUS Talk to Darsok
    note-ptBR Fale com Darsok
    turnin 876
    accept 1060
step
    ifturnedin 876
    goto 1413 @-2607.91,-474.51
    note-enUS Talk to Darsok
    note-ptBR Fale com Darsok
    accept 1060
step
    goto 1413 @-2555.22,-387.35
    note-enUS Talk to Korran
    note-ptBR Fale com Korran
    accept 868
step
    ifturnedin 852
    goto 1413 @-1972.55,-306.95
    note-enUS This next quest is very hard & grouping up is recommended. You can kite Warlord Krom'zar around using the building where the quest giver is located
    note-ptBR A próxima missão é muito difícil e é recomendado formar um grupo. Você pode kitar Warlord Krom'zar ao redor do prédio onde fica quem dá a missão
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    accept 4021
step
    ifturnedin 852
    goto 1413 @-1884.39,-289.38
    note-enUS Kill Warlord Krom'zar once he appears. Loot the Banner that he drops on the ground
    note-ptBR Mate Warlord Krom'zar quando ele aparecer. Saqueie o estandarte que ele deixa cair no chão
    note-enUS Be careful! He is a strong elite and is guarded by at least two Kolkar mobs
    note-ptBR Cuidado! Ele é um elite forte e é protegido por pelo menos dois mobs Kolkar
    note-enUS It can take up to 3 minutes until he spawns
    note-ptBR Pode levar até 3 minutos para ele aparecer
    objective 4021/1
step
    ifcomplete 4021
    goto 1413 @-1972.55,-306.95
    note-enUS Talk to Regthar
    note-ptBR Fale com Regthar
    turnin 4021
step
    goto 1413 @-950.1,-271.14
    zone 1442 |opt
    note-enUS Talk to Seereth
    note-ptBR Fale com Seereth
    turnin 1062
    accept 1063
step
    ifturnedin 876
    path seq 1442 @-786.33,-294.97 @-665.72,-280.97 @-522.63,-294.32
    goto 1442 @-394.2,-272.5
    note-enUS Talk to Jin'Zil
    note-ptBR Fale com Jin'Zil
    turnin 1060
step
    only Warlock
    goto 1442 @-331.21,-181
    note-enUS Talk to Ken'zigla
    note-ptBR Fale com Ken'zigla
    turnin 1510
    accept 1511
step
    goto 1442 @-233.54,-177.42
    note-enUS Talk to Xen'Zilla
    note-ptBR Fale com Xen'Zilla
    turnin 6461
step
    hearth
    use 6948
step
    goto 1456 @-212.71,-1065.01 80
    note-enUS Talk to Magatha
    note-ptBR Fale com Magatha
    note-enUS Wait for the RP to finish
    note-ptBR Espere o RP terminar
    turnin 1063
    accept 1064
step
    goto 1456 @278.48,-995.29
    note-enUS Talk to Zamah
    note-ptBR Fale com Zamah
    turnin 1064
    accept 1065 |only Rogue Shaman
step
    only !Shaman !Rogue
    goto 1456 @26.1,-1196.66
    note-enUS Talk to Tal
    note-ptBR Fale com Tal
    fp
step
    only Warlock
    goto 1413 @-1898.58,-2391.93
    note-enUS Talk to Logmar
    note-ptBR Fale com Logmar
    turnin 1511
    accept 1515
step
    only Warlock
    goto 1413 @-1765.83,-1622.39
    note-enUS Talk to Dogran
    note-ptBR Fale com Dogran
    turnin 1515
    accept 1512
step
    only Shaman Rogue
    goto 1456 @26.1,-1196.66
    note-enUS Talk to Tal
    note-ptBR Fale com Tal
    fly 1454
step
    only Shaman
    goto 1413 @-1881.35,-2384.5
    note-enUS Talk to Omusa
    note-ptBR Fale com Omusa
    fly 1454
step
    only Shaman
    goto 1454 @-4225.09,1933.29
    note-enUS Talk to Kardris
    note-ptBR Fale com Kardris
    train 8498
step
    only Shaman
    goto 1454 @-4225.09,1933.29
    note-enUS Talk to Kardris
    note-ptBR Fale com Kardris
    train 905
step
    only Rogue
    goto 1454 @-4320.75,1750.51 |only Rogue
    goto 1454 @-4284.42,1771.28
    note-enUS Talk to Kareth. Buy a [Jambiya] from him if you do not have a dagger |only Rogue
    note-ptBR Fale com Kareth. Compre uma [Jambiya] dele se não tiver uma adaga |only Rogue
    collect 2207 1 |only Rogue |opt
    note-enUS Talk to Shenthul
    note-ptBR Fale com Shenthul
    train 921
    train 8676
    train 1943
    train 1856
    train 1725
    train 1785
    accept 2460
step
    only Rogue
    goto 1454 @-4284.42,1771.28
    note-enUS After Shenthul does his salute, type /Salute while targeting him
    note-ptBR Depois que Shenthul fizer a saudação, digite /Salute com ele como alvo
    objective 2460/1
step
    only Rogue
    goto 1454 @-4284.42,1771.28
    note-enUS Talk to Shenthul
    note-ptBR Fale com Shenthul
    turnin 2460
    accept 2458
step
    only Rogue
    goto 1454 @-4271.1,1810.94
    note-enUS Talk to Rekkul. Buy [Flash Powder] from him
    note-ptBR Fale com Rekkul. Compre [Flash Powder] dele
    collect 2928 40 |quest 2479 |q 2479/1
    collect 3371 40 |quest 2479 |q 2479/1
    collect 5140 20 |quest 2479 |q 2479/1
step
    only Rogue
    path seq 1454 @-4048.36,1697.85 @-3900.25,1681.48 |only Rogue
    goto 1454 @-3933.49,1707.86 50 |only Rogue
    path seq 1413 @-3216.92,1107.13 |only Rogue
    goto 1413 @-3021.35,1214.56 |only Rogue
    goto 1413 @-2995,1236.85
    note-enUS Target Taskmaster Fizzule, then use your [Flare Gun] TWICE and type /Salute |only Rogue
    note-ptBR Selecione Taskmaster Fizzule como alvo, use sua [Flare Gun] DUAS vezes e digite /Salute |only Rogue
    note-enUS Be careful! Do NOT approach him until he becomes friendly or he will attack you! |only Rogue
    note-ptBR Cuidado! NÃO se aproxime dele até que ele fique amistoso, ou ele atacará você! |only Rogue
    use 8051 |only Rogue |opt
    note-enUS Talk to Taskmaster Fizzule
    note-ptBR Fale com Taskmaster Fizzule
    turnin 2458
    accept 2478
step
    only Rogue
    goto 1413 @-2930.15,1209.15
    note-enUS Use [Pick Pocket] on Foreman Silixiz for his Tower Key
    note-ptBR Use [Pick Pocket] em Foreman Silixiz para pegar a Tower Key dele
    objective 2478/5
step
    only Rogue
    goto 1413 @-2922.04,1224.69
    note-enUS Each mob here will take increased damage to certain abilities |only Rogue
    note-ptBR Cada mob aqui recebe dano aumentado de certas habilidades |only Rogue
    note-enUS Use [Ambush] on the Mutated Venture Co. Drones |only Rogue
    note-ptBR Use [Ambush] nos Mutated Venture Co. Drones |only Rogue
    note-enUS Use [Rupture] on the Venture Co. Patrollers |only Rogue
    note-ptBR Use [Rupture] nos Venture Co. Patrollers |only Rogue
    note-enUS Use [Eviscerate] on the Venture Co. Lookouts once (1 combo point) |only Rogue
    note-ptBR Use [Eviscerate] nos Venture Co. Lookouts uma vez (1 ponto de combo) |only Rogue
    note-enUS Run into the Rogue Tower and kill Drones, Patrollers and Lookouts
    note-ptBR Entre na Rogue Tower e mate Drones, Patrollers e Lookouts
    objective 2478/1
    objective 2478/3
    objective 2478/2
step
    only Rogue
    goto 1413 @-2927.11,1236.18
    note-enUS At the top of the tower you'll find Gallywix. Loot him for his Head
    note-ptBR No topo da torre você encontrará Gallywix. Saqueie-o para obter a Cabeça dele
    note-enUS Use [Ambush] to reduce his HP to half. Use [Gouge] to restore energy and use [Evasion]
    note-ptBR Use [Ambush] para reduzir a vida dele pela metade. Use [Gouge] para recuperar energia e use [Evasion]
    note-enUS Remember to use a Potion and [Thistle Tea] if needed
    note-ptBR Lembre-se de usar uma poção e [Thistle Tea] se necessário
    objective 2478/4
step
    only Rogue
    goto 1413 @-2927.11,1236.18
    note-enUS Use your lock picking to open Gallywix's Lockbox & loot the Mixture
    note-ptBR Use seu arrombamento para abrir a Gallywix's Lockbox e saqueie a Mixture
    objective 2478/6
step
    only Rogue
    goto 1413 @-2595.75,-437.35
    note-enUS Talk to Devrak
    note-ptBR Fale com Devrak
    fly 1454
step
    only Rogue
    goto 1454 @-4284.42,1771.28
    note-enUS Talk to Shenthul
    note-ptBR Fale com Shenthul
    turnin 2478
    accept 2479
step
    only Rogue
    goto 1454 @-4271.1,1810.94
    note-enUS Talk to Rekkul. Buy [Dust of Decay] and [Empty Vials] from him
    note-ptBR Fale com Rekkul. Compre [Dust of Decay] e [Empty Vials] dele
    collect 2928 20 |quest 2479 |q 2479/1
    collect 3371 20 |quest 2479 |q 2479/1
step
    only Rogue
    note-enUS If you have any [Anti-Venom], use one to cure yourself of [Touch of Zanzil]
    note-ptBR Se tiver algum [Anti-Venom], use um para se curar do [Touch of Zanzil]
    use 6452
step
    abandon 6421
step
    abandon 4021
step
    abandon 6481
step
    abandon 6284
step
    abandon 6641
step
    abandon 6563
]==])
