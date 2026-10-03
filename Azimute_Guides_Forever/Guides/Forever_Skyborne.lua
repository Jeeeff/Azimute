-- Convertido automaticamente de RXPGuides (RestedXP-Skyborne.lua)
-- (c) RestedXP - CC BY-NC-SA 4.0 (ver LICENSE.txt). Não edite à mão:
-- rode tools/rxp2azimute.py de novo.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id forever.n.1-14-zephras-isle
#name 1-14 Zephras Isle
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#levels 1-14
#group Leveling
#group-ptBR Evolução
#subgroup Speedrun 1-20
#subgroup-ptBR Rota rápida 1-20
#recommend Skyborne

step
    goto 2521 42.82,23.41
    note-enUS Talk to Ailee Farheart.
    accept 92460
step
    goto 2521 42.07,23.49
    note-enUS Talk to Rorian the Dayseeker.
    turnin 92460
    accept 92461
step
    goto 2521 43.44,24.8
    note-enUS Talk to Elatrell Featherlight.
    accept 92462
step
    path seq 2521 44.23,26 45.24,25.9 46.06,25.33 46.77,27.83 45.27,28.36 43.84,28.39 |only !Shaman
    goto 2521 42.88,27.52 40 |only !Shaman
    path seq 2521 44.23,26 45.24,25.9 46.06,25.33 46.77,27.83 45.27,28.36 43.84,28.39 |only Shaman
    goto 2521 42.88,27.52 40 |only Shaman
    note-enUS 1 |only !Shaman
    note-ptBR 1 |only !Shaman
    note-enUS 1 |only Shaman
    note-ptBR 1 |only Shaman
    note-enUS Kill Juvenile Vuldren.
    objective 92461/1 |opt
    note-enUS Kill Pesky Cirrusfly.
    objective 92462/1
step
    note-enUS Kill Juvenile Vuldren.
    objective 92461/1
step
    only Shaman
    level 2
step
    goto 2521 43.44,24.78
    note-enUS Talk to Elatrell Featherlight.
    turnin 92462
    accept 92463
step
    only Warrior
    goto 2521 43.66,24.13
    note-enUS Talk to Blademaster Ren.
    train 6673
    train 5242
step
    path seq 2521 43.53,24.34 43.83,24.13 43.78,24.38 43.66,24.25 43.75,24.09 43.84,24.3 43.66,24.23 43.83,24.18 43.83,24.32
    goto 2521 43.8,24.05
    note-enUS Climb the spiral staircase, then Talk to Halaan Hawk-Eye at the top of the tower.
    accept 94414
step
    goto 2521 43.8,24.05
    note-enUS Talk to Halaan Hawk Eye.
    objective 94414/1
step
    goto 2521 43.8,24.05
    note-enUS Talk to Halaan Hawk-Eye.
    turnin 94414
step
    goto 2521 43.64,24.04
    note-enUS Talk to Myriaal Mistwake.
    accept 92474
step
    goto 2521 42.06,23.48
    note-enUS Talk to Rorian the Dayseeker.
    turnin 92461 |reward 1 |opt
    note-enUS While falling from the tower, use [Walk on Air] and aim for the quest giver.
    note-ptBR Ao cair da torre, use [Walk on Air] e mire em quem dá a missão.
    objective 92474/1 |opt
    note-enUS Talk to Rorian the Dayseeker.
    turnin 92461 |reward 1
    turnin 92474
    accept 92464
    accept 92481 |only Mage
    accept 92483 |only Rogue
    accept 92482 |only Hunter
    accept 92484 |only Shaman
    accept 92532 |only Warrior
    accept 92485 |only Druid
step
    only Druid
    goto 2521 41.65,23.34
    note-enUS Talk to Xyton Silverwind.
    note-ptBR Fale com Xyton Silverwind.
    turnin 92485
step
    only Druid
    goto 2521 41.65,23.34
    note-enUS Talk to Xyton Silverwind.
    note-ptBR Fale com Xyton Silverwind.
    train 1126
step
    only Mage
    goto 2521 41.55,23.67
    note-enUS Talk to Dorii Brightwhisper.
    turnin 92481
step
    only Mage
    goto 2521 41.55,23.67
    note-enUS Talk to Dorii Brightwhisper.
    train 1459
step
    only Shaman
    goto 2521 42.79,23.57
    note-enUS Talk to Windshaper Boro
    note-ptBR Fale com Windshaper Boro
    turnin 92484
    accept 92466
step
    only Shaman
    goto 2521 42.79,23.57
    note-enUS Talk to Windshaper Boro.
    train 8017
step
    only Hunter
    goto 2521 42.47,23.73
    note-enUS Talk to Tai'ree Farsight.
    turnin 92482
step
    only Horde
    goto 2521 42.6,24.39
    note-enUS Talk to Ventaari Brightwish.
    accept 92598
step
    only !Warrior !Rogue
    ifnotonquest 93552
    ifnotturnedin 93552
    goto 2521 42.75,24.5
    note-enUS Talk to Uualia Suncrest
    note-ptBR Fale com Uualia Suncrest
    note-enUS Buy [Refreshing Spring Water] from her |only !Hunter !Shaman
    note-ptBR Compre [Refreshing Spring Water] dela |only !Hunter !Shaman
    note-enUS Buy [Rough Arrows] from her |only Hunter
    note-ptBR Compre [Rough Arrows] dela |only Hunter
    vendor
    collect 159 20 |only !Hunter !Shaman
    collect 2512 1000 |only Hunter
step
    only Horde
    goto 2521 43.37,23.99
    note-enUS Talk to Dalia the Collector.
    accept 93552
step
    only Horde Rogue Horde Warrior
    ifonquest 92463
    goto 2521 43.53,23.83 7 |only Horde
    goto 2521 43.41,23.51
    note-enUS Click on the Crystals |only Horde
    note-ptBR Clique nos Crystals |only Horde
    objective 93552/1 |only Horde |opt
    note-enUS Talk to Dalia the Collector.
    collect 2131 1
    collect 1194 1
step
    only Alliance !Hunter !Mage !Druid
    goto 2521 43.41,23.51 |only Alliance Rogue Alliance Warrior
    goto 2521 43.41,23.51 |only Alliance !Hunter !Mage !Druid
    goto 2521 43.37,23.99
    note-enUS Talk to Dalia the Collector. |only Alliance !Hunter !Mage !Druid
    accept 93552 |only Alliance !Hunter !Mage !Druid |opt
    collect 2131 1 |only Rogue |opt
    collect 1194 1 |only Warrior |opt
    vendor |only Alliance !Hunter !Mage !Druid |opt
    note-enUS Talk to Dalia the Collector.
    accept 93552
step
    only Alliance Hunter Alliance Mage Alliance Druid
    goto 2521 43.37,23.99
    note-enUS Talk to Dalia the Collector.
    accept 93552
step
    only Alliance
    goto 2521 43.53,23.83 7 |only Alliance
    goto 2521 43.33,24.92
    note-enUS Click on the Crystals |only Alliance
    note-ptBR Clique nos Crystals |only Alliance
    objective 93552/1 |only Alliance |opt
    note-enUS Talk to Falorne Fallwind.
    accept 92597
step
    only Shaman
    goto 2521 47.29,21.9
    note-enUS Click on the Crystals |only Shaman
    note-ptBR Clique nos Crystals |only Shaman
    objective 93552/1 |only Shaman |opt
    note-enUS Talk to Yala Windwatcher.
    turnin 92464
    accept 92465
step
    only Shaman
    goto 2521 48.4,20.4
    note-enUS Kill Al'Aketh Convert and Roiling Winds. |only Shaman
    objective 92465/1 |only Shaman |opt
    objective 92465/2 |only Shaman |opt
    note-enUS Use [Skysight] near the Elemental Convergence.
    note-ptBR Use [Skysight] perto da Elemental Convergence.
    objective 92598/1
step
    only Shaman
    path closest 2521 46.85,17.68 47.22,19 48.3,19.06 47.55,21.06 46.74,20.49 48.97,20.86 47.41,21.14 45.82,19.09 47.19,23.55 46.6,24.62
    note-enUS Click on the Crystals |only Shaman
    note-ptBR Clique nos Crystals |only Shaman
    objective 93552/1 |only Shaman |opt
    note-enUS Kill Al'Aketh Convert and Roiling Winds.
    objective 92465/1
    objective 92465/2
    objective 92466/1
step
    only Shaman
    goto 2521 47.29,21.9
    note-enUS Talk to Yala Windwatcher.
    turnin 92465
    accept 92469
step
    only Shaman
    goto 2521 42.79,23.57
    hearth |only Shaman |opt
    note-enUS Talk to Windshaper Boro
    note-ptBR Fale com Windshaper Boro
    turnin 92466
    accept 92467
step
    path seq 2521 43.82,25.41 44.23,24.96 44.28,27.32 45.33,29.15 46.77,27.96 48.14,29.31
    goto 2521 48.41,28.37
    note-enUS Click on the Crystals
    note-ptBR Clique nos Crystals
    objective 93552/1 |opt
    note-enUS Kill Cirrusfly Queen.
    objective 92463/1
step
    only !Shaman
    path seq 2521 47.41,26.43 47.08,25.5 48.3,25.67 46.62,24.61 |only !Shaman
    goto 2521 47.19,23.57 30 |only !Shaman
    goto 2521 47.29,21.9
    note-enUS Click on the Crystals |only !Shaman
    note-ptBR Clique nos Crystals |only !Shaman
    objective 93552/1 |only !Shaman |opt
    note-enUS Talk to Yala Windwatcher.
    turnin 92464
    accept 92465
step
    only Alliance
    path seq 2521 47.8,21.02 46.9,20.82
    goto 2521 46.41,18.21
    note-enUS Click on the Crystals |only !Shaman
    note-ptBR Clique nos Crystals |only !Shaman
    objective 93552/1 |only !Shaman |opt
    note-enUS Kill Al'Aketh Convert and Roiling Winds. |only !Shaman
    objective 92465/1 |only !Shaman |opt
    objective 92465/2 |only !Shaman |opt
    note-enUS Use [Read Ley Line] near the Blue Rift on the ground
    note-ptBR Use [Read Ley Line] perto da Blue Rift no chão
    objective 92597/1
step
    only Horde !Shaman
    goto 2521 48.4,20.4
    note-enUS Use [Skysight] near the Elemental Convergence.
    note-ptBR Use [Skysight] perto da Elemental Convergence.
    objective 92598/1
step
    only Shaman
    path seq 2521 47.24,25.24 48.8,25.87
    goto 2521 49.68,23.81
    note-enUS Use the [Earth Sapta].
    note-ptBR Use o [Earth Sapta].
    note-enUS Talk to Minor Manifestation of Earth
    note-ptBR Fale com Minor Manifestation of Earth
    turnin 92467
    accept 92468
    use 6635
step
    only Shaman
    ifcomplete 93552
    ifonquest 93552
    goto 2521 48.84,21.47
step
    only Shaman
    path closest 2521 48.29,25.69 47.17,23.55 46.95,20.93 44.19,22.29 42.83,22.27 43.47,23.84 43.81,25.42
    note-enUS Click on the Crystals
    note-ptBR Clique nos Crystals
    objective 93552/1
step
    only !Shaman
    path seq 2521 46.85,17.68 47.22,19 48.3,19.06 47.55,21.06 46.74,20.49 48.97,20.86 47.41,21.14 45.82,19.09 47.19,23.55 |only !Shaman
    goto 2521 46.6,24.62 30 |only !Shaman
    note-enUS 1 |only !Shaman
    note-ptBR 1 |only !Shaman
    note-enUS Click on the Crystals |only !Shaman
    note-ptBR Clique nos Crystals |only !Shaman
    objective 93552/1 |only !Shaman |opt
    note-enUS Kill Al'Aketh Convert and Roiling Winds.
    objective 92465/1
    objective 92465/2
    objective 92466/1 |only Shaman
step
    only !Shaman
    note-enUS Click on the Crystals
    note-ptBR Clique nos Crystals
    objective 93552/1
step
    only !Shaman
    level 3
step
    only !Shaman
    goto 2521 47.29,21.9
    note-enUS Talk to Yala Windwatcher.
    turnin 92465
    accept 92469
step
    path seq 2521 43.89,22.27
    goto 2521 43.37,23.98 60
    hearth |only !Shaman |opt
    note-enUS Talk to Dalia the Collector.
    turnin 93552 |opt
    note-enUS Talk to Dalia the Collector.
    turnin 93552
step
    goto 2521 43.44,24.8
    train 2575
    use 247840
step
    goto 2521 43.44,24.8
    train 2366
    use 247841
step
    goto 2521 43.44,24.8
    train 8613
    use 247846
step
    only Rogue
    goto 2521 43.74,24.34
    note-enUS Talk to Akeri Duskblade.
    turnin 92483
step
    only Warrior
    ifonquest 92469
    goto 2521 43.66,24.14
    train 6546
    note-enUS Talk to Blademaster Ren.
    train 100
    train 6178
    train 772
step
    only Warrior
    goto 2521 43.66,24.14
    note-enUS Talk to Blademaster Ren.
    turnin 92532
step
    goto 2521 43.44,24.8
    note-enUS Talk to Elatrell Featherlight.
    turnin 92463 |reward 3
step
    only Alliance
    goto 2521 43.33,24.92
    note-enUS Talk to Falorne Fallwind.
    turnin 92597
step
    train 2575
    use 247840
step
    train 2366
    use 247841
step
    train 8613
    use 247846
step
    only Warrior
    ifonquest 92469
    goto 2521 43.66,24.14
    train 6546
    note-enUS Talk to Blademaster Ren.
    train 100
    train 6178
    train 772
step
    only Warrior
    goto 2521 43.66,24.14
    note-enUS Talk to Blademaster Ren.
    turnin 92532
step
    only Hunter Horde
    goto 2521 42.47,23.73
    note-enUS Talk to Tai'ree Farsight
    note-ptBR Fale com Tai'ree Farsight
    train 13163
    train 1978
step
    only Horde
    goto 2521 42.07,23.49
    note-enUS Talk to Rorian the Dayseeker.
    turnin 92469 |reward 1
    accept 92471
step
    only Druid Horde
    goto 2521 41.65,23.34
    note-enUS Talk to Xyton Silverwind.
    note-ptBR Fale com Xyton Silverwind.
    train 8921
    train 774
step
    only Horde
    goto 2521 42.76,23.65
    note-enUS Talk to Aetheen of the Gales.
    turnin 92471
    accept 92470
step
    only Shaman
    goto 2521 42.79,23.57
    note-enUS Talk to Windshaper Boro.
    train 8042
step
    only Horde
    goto 2521 42.61,24.39
    note-enUS Talk to Ventaari Brightwish
    note-ptBR Fale com Ventaari Brightwish
    turnin 92598
step
    only Hunter Alliance
    goto 2521 42.47,23.73
    note-enUS Talk to Tai'ree Farsight
    note-ptBR Fale com Tai'ree Farsight
    train 13163
    train 1978
step
    only Alliance
    goto 2521 42.07,23.49
    note-enUS Talk to Rorian the Dayseeker.
    turnin 92469
    accept 92471
step
    only Druid Alliance
    goto 2521 41.65,23.34
    note-enUS Talk to Xyton Silverwind.
    note-ptBR Fale com Xyton Silverwind.
    train 8921
    train 774
step
    only Mage
    goto 2521 41.55,23.67
    note-enUS Talk to Dorii Brightwhisper.
    train 116
step
    only Alliance
    goto 2521 42.76,23.65
    note-enUS Talk to Aetheen of the Gales.
    turnin 92471
    accept 92470
step
    path seq 2521 42.76,24.5
    goto 2521 42.41,25.15
    note-enUS Talk to Valreaa Valewind.
    accept 92473 |opt
    train 2366 |opt
    note-enUS Talk to Uualia Suncrest
    note-ptBR Fale com Uualia Suncrest
    collect 277113 1 |opt
    train 2575 |opt
    note-enUS Talk to Uualia Suncrest
    note-ptBR Fale com Uualia Suncrest
    collect 2901 1 |opt
    collect 277115 1 |opt
    train 8613 |opt
    note-enUS Talk to Uualia Suncrest
    note-ptBR Fale com Uualia Suncrest
    collect 7005 1 |opt
    collect 277114 1 |opt
    vendor |opt
    collect 159 20 |only Mage |opt
    note-enUS Talk to Valreaa Valewind.
    accept 92473
step
    path closest 2521 41.05,25.7 40.4,26.9 39.7,27.03 37.25,29.72 38.17,27.84 37.67,26.31 38.44,27.35
    note-enUS Manually drag the reagent bag into the reagent bag slot. Right-clicking it will place it in an empty general bag slot instead
    note-ptBR Arraste manualmente a bolsa de reagentes para o espaço de bolsa de reagentes. Clicar com o botão direito a colocará em um espaço de bolsa comum vazio
    train 2366 |opt
    train 2656 |opt
    train 8613 |opt
    note-enUS You can skin along the way to start working toward 20 Skinning for a later quest. This is optional, especially at launch, so do it at your own risk
    note-ptBR Você pode esfolar pelo caminho para começar a chegar a 20 de Skinning para uma missão futura. Isso é opcional, principalmente no lançamento, então faça por sua conta e risco
    note-enUS Kill Bears. Loot them for [Scrawny Ursera Claw].
    objective 92473/1
step
    path seq 2521 37.52,25.6 37.36,24.63 35.88,23.31
    goto 2521 35.65,26.06
    note-enUS Kill Ursera Scavenger.
    objective 92470/1 |opt
    note-enUS Kill Urs'anah. Loot him for [Head of Urs'anah].
    objective 92470/2
step
    path closest 2521 36.2,25 36.39,23.79 37.33,24.26 36.9,24.54 37.34,25.13 38.12,27.71 37.7,29.46 40.79,26.64
    note-enUS Kill Ursera Scavenger.
    objective 92470/1
step
    path seq 2521 36.47,23.67 35.88,23.79 35.71,25.7
    goto 2521 42.76,23.65
    note-enUS Talk to Aetheen of the Gales.
    turnin 92470 |reward 1 |only Warrior |opt
    turnin 92470 |reward 2 |only Druid Shaman |opt
    turnin 92470 |reward 3 |only Mage |opt
    turnin 92470 |reward 4 |only Rogue |opt
    turnin 92470 |reward 5 |only Hunter |opt
    note-enUS Talk to Aetheen of the Gales.
    turnin 92470 |reward 1 |only Warrior
    turnin 92470 |reward 2 |only Druid Shaman
    turnin 92470 |reward 3 |only Mage
    turnin 92470 |reward 4 |only Rogue
    turnin 92470 |reward 5 |only Hunter
    accept 92472
    accept 96638
step
    path seq 2521 42.76,24.52
    goto 2521 42.41,25.15
    note-enUS Talk to Valreaa Valewind.
    turnin 92473 |reward 1 |opt
    vendor |opt
    note-enUS Talk to Valreaa Valewind.
    turnin 92473 |reward 1
step
    goto 2521 38.31,30.17 100
    note-enUS Talk to Hanaa Nightwind.
    accept 92544 |opt
    note-enUS Talk to Hanaa Nightwind.
    accept 92544
step
    path seq 2521 37.04,32.93
    goto 2521 36.03,33.55 50
    note-enUS Kill Al'Aketh Brute and Al'Aketh Neophyte.
    objective 92544/1 |opt
    objective 92544/2 |opt
    note-enUS Kill Malduko Cloudcrush.
    objective 92544/3 |opt
    note-enUS Kill Malduko Cloudcrush atop the temple.
    objective 92544/3
step
    only Horde
    ifonquest 92544
    goto 2521 35.91,33.6
step
    only Alliance
    ifonquest 92544
    goto 2521 35.57,33.84
step
    path closest 2521 35.33,34.19 36.34,31.56 37.3,32.89 37.16,34.72 38.08,35.01 35.33,34.19 36.34,31.56 37.3,32.89 37.16,34.72 38.08,35.01
    note-enUS 1
    note-ptBR 1
    note-enUS Kill Al'Aketh Brute and Al'Aketh Neophyte.
    objective 92544/1
    objective 92544/2
step
    level 5
step
    goto 2521 38.32,30.18
    note-enUS Talk to Hanaa Nightwind.
    turnin 92544
step
    ifonquest 92472
    goto 2521 44.72,45.47 |only !Rogue !Warrior
    path seq 2521 44.67,45.19 |only Rogue Warrior
    goto 2521 44.78,45.05 |only Rogue Warrior
    goto 2521 45.67,45.51
    note-enUS Click Windstone crystals along the way for health and mana restoratives |only !Mage
    note-ptBR Clique nos cristais Windstone pelo caminho para restaurar vida e mana |only !Mage
    note-enUS Talk to Constable Aonda.
    turnin 92472 |opt
    note-enUS Kill Galestriders along the way. Loot them for [Strider Meat] and [Small Eggs]
    collect 5469 8 |opt
    collect 6889 3 |opt
    note-enUS Talk to Veena Vericloud. |only !Rogue !Warrior
    note-enUS Buy [Ice Cold Milk] from her |only Shaman Druid
    note-ptBR Compre [Ice Cold Milk] dela |only Shaman Druid
    note-enUS Save 2 silver for your class spells! |only Shaman Druid
    note-ptBR Guarde 2 pratas para os feitiços da sua classe! |only Shaman Druid
    vendor |only !Rogue !Warrior |opt
    vendor |only Rogue Warrior |opt
    note-enUS Talk to Constable Aonda.
    turnin 92472
step
    goto 2521 45.67,45.51
    note-enUS Talk to Constable Aonda.
    accept 93461 |only Alliance
    accept 92514 |only Horde
step
    only Mage
    goto 2521 45.1,45.87
    note-enUS Talk to Dorii Brightwhisper.
    train 143
    train 2136
    train 1296017
step
    only Alliance
    goto 2521 45.04,46.49
    note-enUS Talk to Rathiril Sunlance.
    note-ptBR Fale com Rathiril Sunlance.
    objective 93461/1
    accept 92596
step
    only Alliance
    goto 2521 45.04,46.49
    note-enUS Talk to Rathiril Sunlance.
    note-ptBR Fale com Rathiril Sunlance.
    objective 92596/1
step
    only Alliance
    goto 2521 44.98,46.35
    note-enUS Talk to Rathiril Sunlance.
    note-ptBR Fale com Rathiril Sunlance.
    turnin 92596
    accept 94413
step
    only Horde
    goto 2521 43.52,44.78
    note-enUS Talk to Illaya Amberwind.
    note-ptBR Fale com Illaya Amberwind.
    objective 92514/1
    accept 92595
step
    only Horde
    goto 2521 43.52,44.78
    note-enUS Talk to Illaya Amberwind.
    note-ptBR Fale com Illaya Amberwind.
    objective 92595/1
step
    only Horde
    goto 2521 43.52,44.78
    note-enUS Talk to Illaya Amberwind.
    note-ptBR Fale com Illaya Amberwind.
    turnin 92595
    accept 94411
step
    only Shaman
    goto 2521 43.45,44.87
    note-enUS Talk to Aarnor Galestrike
    note-ptBR Fale com Aarnor Galestrike
    trainer
step
    goto 2521 43.02,43.24
    note-enUS Talk to Coriella Calmbreeze.
    objective 92514/2 |only Horde
step
    only Horde
    goto 2521 43.02,43.24
    note-enUS Talk to Coriella Calmbreeze.
    home
step
    only Horde Rogue
    goto 2521 43.16,43.26
    note-enUS Talk to Miriaan Mistblade
    train 1757
    train 1776
    train 1777
step
    only Horde Rogue
    goto 2521 43.16,43.26
    note-enUS Talk to Miriaan Mistblade
    train 1757
step
    only Horde Mage
    ifonquest 92514
    goto 2521 43.24,43.18
    note-enUS Talk to Nasalanna Windsinger and buy [Copper Rod], [Mote of Magic] and [Simple Wood].
    collect 6217 1
    collect 247786 3
    collect 4470 1
step
    only Horde Mage
    ifonquest 92514
    goto 2521 43.24,43.18
    note-enUS Talk to Nasalanna Windsinger
    note-ptBR Fale com Nasalanna Windsinger
    train 7411
step
    only Horde Mage
    ifonquest 92514
    train 7411
    note-enUS Use the [Runed Copper Rod] macro below, then use the [Novice's Practice Wand] macro
    note-ptBR Use a macro de [Runed Copper Rod] abaixo e depois a macro de [Novice's Practice Wand]
    collect 6218 1
    collect 247789 1
step
    only Alliance Rogue
    goto 2521 43.16,43.26
    train 7411 |only Horde Mage |opt
    note-enUS Abandon Enchanting or continue with it. |only Horde Mage
    note-ptBR Abandone Enchanting ou continue com ela. |only Horde Mage
    note-enUS Talk to Miriaan Mistblade
    train 1757
    train 1776
    train 1777
step
    only Alliance Rogue
    goto 2521 43.16,43.26
    note-enUS Talk to Miriaan Mistblade
    train 1757
step
    only Alliance Mage
    ifonquest 93461
    goto 2521 43.24,43.18
    note-enUS Talk to Nasalanna Windsinger and buy any missing materials: [Copper Rod], [Mote of Magic] and [Simple Wood].
    collect 6217 1
    collect 247786 3
    collect 4470 1
step
    only Alliance Mage
    ifonquest 93461
    goto 2521 43.24,43.18
    note-enUS Talk to Nasalanna Windsinger
    note-ptBR Fale com Nasalanna Windsinger
    train 7411
step
    only Alliance Mage
    ifonquest 93461
    train 7411
    note-enUS Use the [Runed Copper Rod] macro below, then use the [Novice's Practice Wand] macro
    note-ptBR Use a macro de [Runed Copper Rod] abaixo e depois a macro de [Novice's Practice Wand]
    collect 6218 1
    collect 247789 1
step
    only Alliance
    goto 2521 43.02,43.24
    train 7411 |only Alliance Mage |opt
    note-enUS Abandon Enchanting or continue with it. |only Alliance Mage
    note-ptBR Abandone Enchanting ou continue com ela. |only Alliance Mage
    note-enUS Talk to Coriella Calmbreeze.
    objective 93461/2 |only Alliance
step
    only Alliance
    goto 2521 43.02,43.24
    note-enUS Talk to Coriella Calmbreeze.
    home
step
    only Warrior
    goto 2521 44.95,45.1
    note-enUS Talk to Corsan Earthrazer
    train 3127
step
    only Hunter
    path seq 2521 45.07,45.27
    goto 2521 45.26,44.24
    note-enUS Talk to Elayaa Easewind inside the house.
    train 3044
    train 1130
step
    only Druid
    path seq 2521 45.07,45.27
    goto 2521 45.15,44.22
    note-enUS Talk to Naeluna Swiftmend inside the house.
    train 467
    train 5177
step
    goto 2521 45.67,45.5
    note-enUS Talk to Constable Aonda.
    turnin 93461 |only Alliance
    turnin 92514 |only Horde
    accept 92517
step
    only Hunter
    goto 2521 45.26,44.24
    note-enUS Talk to Elayaa Easewind.
    note-ptBR Fale com Elayaa Easewind.
    train 3044
    train 1130
step
    only Druid
    goto 2521 45.15,44.22
    note-enUS Talk to Naeluna Swiftmend
    note-ptBR Fale com Naeluna Swiftmend
    train 467
    train 5177
step
    goto 2521 44.47,44.98
    note-enUS Talk to Teeri Wellwind.
    accept 93319
    accept 92516
step
    goto 2521 44.68,44.53
    note-enUS Talk to Indari Sunseam.
    accept 92515
step
    goto 2521 44.88,44.19
    note-enUS Talk to Taleen Shimmerthread.
    accept 93951
step
    only Hunter
    goto 2521 44.79,44.17
    note-enUS Talk to Tephri Thriceforged
    note-enUS Buy and equip a [Hornwood Recurve Bow]
    note-ptBR Compre e equipe um [Hornwood Recurve Bow]
    note-enUS Buy [Rough Arrows] until your Quiver is full
    note-ptBR Compre [Rough Arrows] até encher sua Aljava
    collect 2506 1
step
    only Warrior
    ifonquest 92517
    goto 2521 44.8,44.18
    note-enUS Talk to Tephri Thriceforged and buy [Wooden Mallet].
    note-ptBR Fale com Tephri Thriceforged e compre [Wooden Mallet].
    collect 2493 1
step
    only Rogue
    ifonquest 92517
    goto 2521 44.8,44.18
    note-enUS Talk to Tephri Thriceforged and buy [Gladius].
    note-ptBR Fale com Tephri Thriceforged e compre [Gladius].
    collect 2488 1
step
    goto 2521 43.85,43.84
    note-enUS Talk to Zerril Softbreeze
    note-ptBR Fale com Zerril Softbreeze
    accept 92553
step
    only Horde Rogue
    goto 2521 43.16,43.26
    note-enUS Talk to Miriaan Mistblade
    train 1757
    train 1776
    train 1777
step
    only Horde Rogue
    goto 2521 43.16,43.26
    note-enUS Talk to Miriaan Mistblade
    train 1757
step
    only Alliance Rogue
    goto 2521 43.16,43.26
    note-enUS Talk to Miriaan Mistblade
    train 1757
    train 1776
    train 1777
step
    only Alliance Rogue
    goto 2521 43.16,43.26
    note-enUS Talk to Miriaan Mistblade
    train 1757
step
    ifturnedin 92553
    ifnotturnedin 92517
    goto 2521 43.86,43.85
    note-enUS Use the [Herb Baked Egg] macro below to craft.
    note-ptBR Use a macro de [Herb Baked Egg] abaixo para criar.
    collect 6888 1
step
    only Horde
    path closest 2521 46.13,39.79 46.9,38.84 46.37,37.85 45.76,39.31
    note-enUS Kill Prideclaws. Loot them for the [Prideclaw Pelts].
    objective 92515/1 |opt
    note-enUS Kill Galestrider. Loot them for [Strider Meat] and [Small Eggs].
    objective 92553/2 |opt
    objective 92553/1 |opt
    note-enUS Kill the High Order Apprentices.
    note-ptBR Mate os High Order Apprentices.
    objective 94411/1
step
    only Horde
    ifonquest 92517
    goto 2521 48.5,55.83
step
    path seq 2521 48.81,36.43 49.35,35.79 49.54,34.33
    goto 2521 50.68,34.21
    note-enUS Kill Highlands Bandits. Loot them for the [Pilfered Windstone].
    objective 92517/1 |opt
    objective 93319/1 |opt
    note-enUS Kill "Badwind" Bennic.
    objective 92517/2 |opt
    note-enUS Kill "Badwind" Bennic.
    objective 92517/2
step
    only Alliance
    ifonquest 92517
    goto 2521 50.59,33.51
step
    path closest 2521 50.27,33.41 49.69,34.05 49.64,34.66 49.93,35.22 49.79,35.97 49.26,35.91 48.82,36.47 49.43,38.66 48.02,38.41 47.75,36.19 48.93,36.38
    note-enUS Kill Galestrider. Loot them for [Strider Meat] and [Small Eggs].
    objective 92553/2 |opt
    objective 92553/1 |opt
    note-enUS Kill Prideclaws. Loot them for the [Prideclaw Pelts].
    objective 92515/1 |opt
    note-enUS Kill Highlands Bandits. Loot them for the [Pilfered Windstone].
    objective 92517/1
    objective 93319/1
step
    path seq 2521 43.86,43.85
    goto 2521 43.85,43.84
    note-enUS Kill Galestrider. Loot them for [Strider Meat] and [Small Eggs].
    objective 92553/2 |opt
    objective 92553/1 |opt
    note-enUS Kill Prideclaws. Loot them for the [Prideclaw Pelts].
    objective 92515/1 |opt
    train 2550 |opt
    note-enUS Talk to the Zerril Softbreeze.
    vendor |opt
    note-enUS Talk to Zerril Softbreeze
    note-ptBR Fale com Zerril Softbreeze
    train 2550
step
    only Mage
    goto 2521 45.1,45.87
    note-enUS Talk to Dorii Brightwhisper.
    train 143
    train 2136
    train 1296017
step
    only Shaman
    goto 2521 43.45,44.87
    note-enUS Talk to Aarnor Galestrike
    note-ptBR Fale com Aarnor Galestrike
    trainer
step
    only Rogue
    goto 2521 43.16,43.26
    note-enUS Talk to Miriaan Mistblade
    train 1757
    train 1776
    train 1777
step
    only Rogue
    goto 2521 43.16,43.26
    note-enUS Talk to Miriaan Mistblade
    train 1757
step
    only Warrior
    goto 2521 44.95,45.1
    note-enUS Talk to Corsan Earthrazer
    train 3127
step
    only Hunter
    goto 2521 45.26,44.24
    note-enUS Talk to Elayaa Easewind.
    note-ptBR Fale com Elayaa Easewind.
    train 3044
    train 1130
step
    only Druid
    goto 2521 45.15,44.22
    note-enUS Talk to Naeluna Swiftmend
    note-ptBR Fale com Naeluna Swiftmend
    train 467
    train 5177
step
    goto 2521 44.47,44.97
    note-enUS Talk to Teeri Wellwind
    note-ptBR Fale com Teeri Wellwind
    turnin 93319
step
    only Mage Druid Shaman
    ifnotturnedin 96638
    goto 2521 44.71,45.48
    note-enUS Talk to Veena Vericloud
    note-ptBR Fale com Veena Vericloud
    vendor
step
    only Horde
    goto 2521 43.52,44.78
    note-enUS Talk to Illaya Amberwind.
    note-ptBR Fale com Illaya Amberwind.
    turnin 94411
step
    goto 2521 43.37,45.86
    note-enUS Click on the Bounty Available: Vulgara the Insatiable!
    note-ptBR Clique em Bounty Available: Vulgara the Insatiable!
    accept 93318
step
    only Warrior Rogue
    goto 2521 43.07,46.31
    note-enUS Talk to Naleeia Tattermend.
    note-ptBR Fale com Naleeia Tattermend.
    train 3273
step
    goto 2521 41.67,44.79
    note-enUS Talk to Raan Wildwind.
    turnin 96638
    accept 96101
step
    goto 2521 41.67,44.79
    note-enUS Talk to Raan Wildwind.
    objective 96101/1
step
    note-enUS Wait until you get the Boosted Rest buff.
    note-ptBR Espere até receber o bônus Boosted Rest.
    objective 96101/2
step
    goto 2521 41.67,44.79
    note-enUS Talk to Raan Wildwind.
    turnin 96101
step
    goto 2521 41.66,44.78
    train 2575
    note-enUS Talk to Raan Wildwind
    note-ptBR Fale com Raan Wildwind
    accept 97970
step
    goto 2521 41.66,44.78
    train 8613
    note-enUS Talk to Raan Wildwind
    note-ptBR Fale com Raan Wildwind
    accept 97971
step
    goto 2521 41.66,44.78
    note-enUS Talk to Raan Wildwind
    note-ptBR Fale com Raan Wildwind
    accept 96646
step
    goto 2521 41.66,44.78
    train 2366
    note-enUS Talk to Raan Wildwind
    note-ptBR Fale com Raan Wildwind
    accept 97968
step
    goto 2521 41.66,44.78
    train 3273
    note-enUS Talk to Raan Wildwind
    note-ptBR Fale com Raan Wildwind
    accept 97965
step
    goto 2521 41.66,44.78
    train 7620
    note-enUS Talk to Raan Wildwind
    note-ptBR Fale com Raan Wildwind
    accept 97967
step
    goto 2521 41.66,44.78
    train 2259
    note-enUS Talk to Raan Wildwind
    note-ptBR Fale com Raan Wildwind
    accept 97963
step
    goto 2521 41.66,44.78
    train 2018
    note-enUS Talk to Raan Wildwind
    note-ptBR Fale com Raan Wildwind
    accept 97964
step
    goto 2521 41.66,44.78
    train 3908
    note-enUS Talk to Raan Wildwind
    note-ptBR Fale com Raan Wildwind
    accept 97973
step
    goto 2521 41.66,44.78
    train 7411
    note-enUS Talk to Raan Wildwind
    note-ptBR Fale com Raan Wildwind
    accept 98286
step
    goto 2521 41.66,44.78
    train 2108
    note-enUS Talk to Raan Wildwind
    note-ptBR Fale com Raan Wildwind
    accept 97969
step
    only Alliance
    ifonquest 94413
    path seq 2521 36.44,50.93 35.16,51.07 34.12,51.6 34.52,52.76 35.12,54.08 35.86,53.01 36.02,54.28 35.71,55.57 35.63,57.34 34.6,57.11 35.51,58.08 36.61,58.64 37.13,56.6 38.61,56.89 39.88,57.56 39.1,55.85 33.1,54.67 34.7,52.68 |only Horde
    goto 2521 34.25,51.19 40 |only Horde
    goto 2521 39,47.37
    note-enUS 1 |only Horde
    note-ptBR 1 |only Horde
    note-enUS Kill Prideclaws. Loot them for the [Prideclaw Pelts].
    objective 92515/1 |opt
    note-enUS Kill Galestrider. Loot them for [Strider Meat] and [Small Eggs].
    objective 92553/2 |opt
    objective 92553/1 |opt
    note-enUS Kill the Windshaper Novice Seer. |only Alliance
    objective 94413/1 |only Alliance |opt
step
    only Alliance
    path closest 2521 37.96,46.86 38.75,48.72 38.99,47.24
    note-enUS Kill the Windshaper Novice Seer.
    objective 94413/1
step
    ifonquest 92516
    goto 2521 36.44,50.93
step
    path seq 2521 36.44,50.93 35.16,51.07 34.12,51.6 34.52,52.76 35.12,54.08 35.86,53.01 36.02,54.28 35.71,55.57 35.63,57.34 34.6,57.11 35.51,58.08 36.61,58.64 37.13,56.6 38.61,56.89 39.88,57.56 39.1,55.85 33.1,54.67 34.7,52.68 |only Alliance
    goto 2521 34.25,51.19 40 |only Alliance
    note-enUS 1 |only Alliance
    note-ptBR 1 |only Alliance
    note-enUS Kill Hippogryph Youth, Hippogryph Protector and the Hippogryph Matriarch.
    objective 92516/1 |opt
    objective 92516/2 |opt
    objective 92516/3 |opt
    note-enUS Click on the Hippogryph Downs.
    note-ptBR Clique em Hippogryph Downs.
    objective 93951/1
step
    note-enUS Kill Hippogryph Youth, Hippogryph Protector and the Hippogryph Matriarch.
    objective 92516/1
    objective 92516/2
    objective 92516/3
step
    path seq 2521 43.08,51.03 42.98,51.8
    goto 2521 42.75,52.68
    note-enUS Kill Galestrider. Loot them for [Strider Meat] and [Small Eggs].
    objective 92553/2 |opt
    objective 92553/1 |opt
    note-enUS Kill Prideclaws. Loot them for the [Prideclaw Pelts].
    objective 92515/1 |opt
    note-enUS Kill Vulgara (level 8 elite) on the mountain. Loot it for [Vulgara's Head].
    objective 93318/1
step
    path closest 2521 43.07,48.51 37.56,43.24 40.04,41.38
    note-enUS Kill Galestrider. Loot them for [Strider Meat] and [Small Eggs].
    objective 92553/2 |opt
    objective 92553/1 |opt
    note-enUS Kill Prideclaws. Loot them for the [Prideclaw Pelts].
    objective 92515/1
step
    ifcomplete 97965
    ifnotturnedin 92517
    goto 2521 43.08,46.31
    train 3273
    note-enUS Talk to Naleeia Tattermend
    note-ptBR Fale com Naleeia Tattermend
    turnin 97965
step
    ifcomplete 98286
    ifnotturnedin 92517
    goto 2521 43.25,43.16
    train 7411
    note-enUS Talk to Nasalanna Windsinger
    note-ptBR Fale com Nasalanna Windsinger
    turnin 98286
step
    ifcomplete 97971
    ifnotturnedin 92517
    goto 2521 43.3,43.37
    train 8613
    note-enUS Talk to Mendalass Tattermend
    turnin 97971
step
    ifonquest 92516
    goto 2521 43.85,43.85
    note-enUS Talk to Zerril Softbreeze and buy 5 [Mild Spices]
    note-ptBR Fale com Zerril Softbreeze e compre 5 [Mild Spices]
    vendor
    collect 2678 5
step
    ifcomplete 92553
    ifnotturnedin 92517
    goto 2521 43.85,43.85
    note-enUS Talk to Zerril Softbreeze
    note-ptBR Fale com Zerril Softbreeze
    turnin 92553
step
    ifcomplete 96646
    ifnotturnedin 92517
    goto 2521 43.85,43.85
    train 2550
    note-enUS Talk to Zerril Softbreeze
    note-ptBR Fale com Zerril Softbreeze
    turnin 96646
step
    ifonquest 92553
    ifnotturnedin 92517
    goto 2521 43.86,43.85
    note-enUS Use the [Herb Baked Egg] macro below to craft.
    note-ptBR Use a macro de [Herb Baked Egg] abaixo para criar.
    collect 6888 1
step
    ifturnedin 92553
    ifnotturnedin 92517
    goto 2521 43.86,43.85
    note-enUS Use the [Herb Baked Egg] macro below to craft.
    note-ptBR Use a macro de [Herb Baked Egg] abaixo para criar.
    collect 6888 1
step
    ifcomplete 97963
    ifnotturnedin 92517
    goto 2521 43.7,43.43
    train 2259
    note-enUS Talk to Nyassa Swiftdraught
    note-ptBR Fale com Nyassa Swiftdraught
    turnin 97963
step
    goto 2521 44.87,44.19
    note-enUS Talk to Taleen Shimmerthread
    note-ptBR Fale com Taleen Shimmerthread
    turnin 93951
step
    ifnotturnedin 92517
    ifcomplete 97973
    goto 2521 44.88,44.19
    train 3908
    note-enUS Talk to Taleen Shimmerthread
    note-ptBR Fale com Taleen Shimmerthread
    turnin 97973
step
    ifnotturnedin 92517
    ifcomplete 97964
    goto 2521 44.89,44.36
    train 2018
    note-enUS Talk to Aedi Thriceforged
    note-ptBR Fale com Aedi Thriceforged
    turnin 97964
step
    ifnotturnedin 92517
    ifcomplete 97970
    goto 2521 44.77,44.57
    train 2575
    note-enUS Talk to Messana Crestwind
    note-ptBR Fale com Messana Crestwind
    turnin 97970
step
    ifnotturnedin 92517
    ifcomplete 92515
    goto 2521 44.69,44.52
    note-enUS Talk to Indari Sunseam
    note-ptBR Fale com Indari Sunseam
    turnin 92515
step
    ifnotturnedin 92517
    ifcomplete 97969
    goto 2521 44.69,44.53
    train 2108
    note-enUS Talk to Indari Sunseam
    note-ptBR Fale com Indari Sunseam
    turnin 97969
step
    goto 2521 44.47,44.97
    note-enUS Talk to Teeri Wellwind
    note-ptBR Fale com Teeri Wellwind
    turnin 92516
    turnin 93319
step
    only Warrior
    goto 2521 44.95,45.1
    note-enUS Talk to Corsan Earthrazer
    train 284
    train 1715
    train 7372
    train 6343
    train 8198
step
    ifonquest 93318
    ifcomplete 93318
    goto 2521 45.23,45.19
    note-enUS Talk to Danarii Bellowveil
    note-ptBR Fale com Danarii Bellowveil
    turnin 93318
step
    abandon 93318
step
    only Alliance Druid
    goto 2521 45.15,44.23
    note-enUS Talk to Naeluna Swiftmend.
    note-ptBR Fale com Naeluna Swiftmend.
    train 339
    train 5186
step
    only Alliance Hunter
    goto 2521 45.26,44.24
    note-enUS Talk to Elayaa Easewind.
    note-ptBR Fale com Elayaa Easewind.
    train 5116
    train 3127
    train 14260
step
    goto 2521 45.67,45.5
    note-enUS Talk to Constable Aonda
    note-ptBR Fale com Constable Aonda
    turnin 92517 |reward 3
    accept 93036
step
    only Hunter
    goto 2521 45.26,44.24
    note-enUS Talk to Elayaa Easewind.
    note-ptBR Fale com Elayaa Easewind.
    train 5116
    train 3127
    train 14260
step
    only Horde Druid
    goto 2521 45.15,44.23
    note-enUS Talk to Naeluna Swiftmend.
    note-ptBR Fale com Naeluna Swiftmend.
    trainer
step
    goto 2521 44.83,45.52
    note-enUS Talk to Sania Silverstream
    note-ptBR Fale com Sania Silverstream
    turnin 93036
    accept 92529
step
    ifnotturnedin 92529
    goto 2521 44.71,45.48
    note-enUS Talk to Veena Vericloud
    note-ptBR Fale com Veena Vericloud
    vendor
    note-enUS Buy [Ice Cold Milk] from him |only Druid
    note-ptBR Compre [Ice Cold Milk] dele |only Druid
    note-enUS Buy [Ice Cold Milk] from him |only Mage
    note-ptBR Compre [Ice Cold Milk] dele |only Mage
step
    only Shaman Druid
    goto 2521 44.79,44.17
    note-enUS Talk to Tephri Thriceforged
    note-enUS Buy a [Walking Stick] from him
    note-ptBR Compre um [Walking Stick] dele
    collect 2495 1 |quest 761 |q 761/1
step
    ifonquest 92529
    goto 2521 44.83,45.52
step
    only Shaman
    goto 2521 43.45,44.87
    note-enUS Talk to Aarnor Galestrike
    note-ptBR Fale com Aarnor Galestrike
    trainer
step
    only Mage
    goto 2521 45.1,45.86
    note-enUS Talk to Shenaan Spellwind
    train 5143
    train 205
    train 118
step
    only Alliance
    goto 2521 44.98,46.37
    note-enUS Talk to Rathiril Sunlance.
    note-ptBR Fale com Rathiril Sunlance.
    turnin 94413
step
    ifcomplete 97967
    goto 2521 45.03,48.45
    train 7620
    note-enUS Talk to Fenn Fairweather
    note-ptBR Fale com Fenn Fairweather
    turnin 97967
step
    ifonquest 92529
    path seq 2521 45.37,53.51
    goto 2521 46.88,56.24
    note-enUS Kill Galestrider. Loot them for [Strider Meat] and [Small Eggs].
    objective 92553/2 |opt
    objective 92553/1 |opt
    note-enUS Kill Prideclaws. Loot them for the [Prideclaw Pelts]. |only Horde
    objective 92515/1 |only Horde |opt
    note-enUS Kill Prideclaws. Loot them for the [Prideclaw Pelts]. |only Alliance
    objective 92515/1 |only Alliance |opt
step
    path seq 2521 45.41,53.48
    goto 2521 46.88,56.24
    note-enUS Talk to Missionary Jasaan
    note-ptBR Fale com Missionary Jasaan
    turnin 92529
    accept 92528
    use 2454 |only Warrior Rogue
step
    ifonquest 92528
    goto 2521 46.89,56.24
step
    only Horde
    ifonquest 92528
    goto 2521 48.5,55.83
step
    path seq 2521 48.8,53.89 48.93,53.55 48.85,53.91 48.6,54.69
    goto 2521 46.44,51.34 30
    note-enUS After clicking on the Wardrobe, return to the city.
    note-ptBR Depois de clicar no Wardrobe, volte para a cidade.
    objective 92528/1 |opt
    note-enUS Return to the city and wait for the roleplay.
    note-ptBR Volte à cidade e aguarde a cena.
    objective 92528/1
step
    ifonquest 92528
    path seq 2521 46.86,51.54
    goto 2521 44.37,46.69
step
    only Rogue
    ifnotturnedin 92528
    path seq 2521 44.37,46.69
    goto 2521 43.15,43.27
    note-enUS Talk to Miriaan Mistblade
    train 5277
    train 6760
step
    path seq 2521 44.37,46.69 44.49,45.95 44.93,46.85 45.21,46.63 |only !Rogue
    goto 2521 45.04,46.23 15 |only !Rogue
    goto 2521 45.67,45.5
    note-enUS Talk to Constable Aonda.
    turnin 92528 |reward 1 |only Mage Druid Shaman
    turnin 92528 |reward 2 |only Warrior Rogue
    turnin 92528 |reward 3 |only Hunter
    accept 92550
    accept 93926
step
    goto 2521 45.25,45.18
    note-enUS Talk to Danarii Bellowveil.
    accept 92551
step
    path seq 2521 45.35,46.79 44.05,49.98 43.02,49.86
    goto 2521 42.32,62.03
    objective 93926/1 |opt
    note-enUS Talk to Piecekeeper Vaniel.
    note-ptBR Fale com Piecekeeper Vaniel.
    objective 93926/1
step
    goto 2521 42.33,62.01
    note-enUS Click on Piecekeeper Vaniel
    note-ptBR Clique em Piecekeeper Vaniel
    turnin 93926
    accept 93927
step
    goto 2521 42.38,62.07
    note-enUS Click on the Bloody Note.
    note-ptBR Clique no Bloody Note.
    objective 93927/1
step
    goto 2521 40.99,64.09
    note-enUS Click on Arvensus Shadowsong\n from afar.
    note-ptBR Clique em Arvensus Shadowsong\n de longe.
    objective 93927/4
step
    goto 2521 41.12,64.09
    note-enUS Click on Raani Windgazer\n from afar.
    note-ptBR Clique em Raani Windgazer\n de longe.
    objective 93927/3
step
    path seq 2521 40.94,64.15 41.11,64.03 41.09,64.29 40.95,64.25 41.05,64.02 41.08,64.27 40.94,64.2
    goto 2521 41.08,64.39
    note-enUS Ascend the spiral staircase, then kill Skypriest Aanders atop the tower.
    objective 93927/2
step
    ifonquest 92551
    goto 2521 50.29,56.95
step
    only Alliance
    ifonquest 92550
    path seq 2521 45.48,58.73
    goto 2521 48.36,58.49
    note-enUS Kill Al'Aketh Stormcaller. Loot them for the [Stolen Shen'dar Supplies]. |only Alliance
    note-enUS Click on the Supply Caches. |only Alliance
    note-ptBR Clique nos Supply Caches. |only Alliance
    objective 92550/1 |only Alliance |opt
    objective 92551/1 |only Alliance |opt
    note-enUS Kill Galestrider. Loot them for [Strider Meat] and [Small Eggs]. |only Alliance
    objective 92553/2 |only Alliance |opt
    objective 92553/1 |only Alliance |opt
    note-enUS Kill Prideclaws. Loot them for the [Prideclaw Pelts]. |only Alliance
    objective 92515/1 |only Alliance |opt
step
    path seq 2521 49.78,57.33 49.89,56.5
    goto 2521 50.38,56.93
    note-enUS Kill Galestrider. Loot them for [Strider Meat] and [Small Eggs]. |only Alliance
    objective 92553/2 |only Alliance |opt
    objective 92553/1 |only Alliance |opt
    note-enUS Kill Prideclaws. Loot them for the [Prideclaw Pelts]. |only Alliance
    objective 92515/1 |only Alliance |opt
    note-enUS Kill Living Lightning.
    objective 92550/2 |opt
    note-enUS Kill Al'Aketh Stormcaller. Loot them for the [Stolen Shen'dar Supplies].
    note-enUS Click on the Supply Caches.
    note-ptBR Clique nos Supply Caches.
    objective 92550/1 |opt
    objective 92551/1 |opt
    note-enUS Kill Commander Cyclas. Loot him for [Commander Cyclas's Head].
    objective 92550/3
step
    path seq 2521 49.88,56.54 49.63,54.73 49.06,53.55 47.64,54.14 49.77,57.24 49.5,56.22 49.86,56.95
    goto 2521 50.4,56.93 25
    note-enUS 1
    note-ptBR 1
    note-enUS Kill Living Lightning.
    objective 92550/2 |opt
    note-enUS Kill Al'Aketh Stormcaller. Loot them for the [Stolen Shen'dar Supplies].
    note-enUS Click on the Supply Caches.
    note-ptBR Clique nos Supply Caches.
    objective 92550/1
    objective 92551/1
step
    note-enUS Kill Living Lightning.
    objective 92550/2
step
    only Horde
    ifonquest 92528
    goto 2521 48.5,55.83
step
    path seq 2521 42.88,63.42 42.97,49.81 44.12,50.46 38.28,42.29
    goto 2521 42.05,40.94 35
    note-enUS 1
    note-ptBR 1
    note-enUS Kill Galestrider. Loot them for [Strider Meat] and [Small Eggs].
    objective 92553/2 |opt
    objective 92553/1 |opt
    note-enUS Kill Prideclaws. Loot them for the [Prideclaw Pelts].
    objective 92515/1
step
    note-enUS Kill Galestrider. Loot them for [Strider Meat] and [Small Eggs].
    objective 92553/2
    objective 92553/1
step
    ifcomplete 97967
    ifnotturnedin 92550
    goto 2521 45.03,48.45
    train 7620
    note-enUS Talk to Fenn Fairweather
    note-ptBR Fale com Fenn Fairweather
    turnin 97967
step
    ifnotturnedin 92551
    goto 2521 44.11,45.84 40
step
    ifcomplete 97965
    ifnotturnedin 92550
    goto 2521 43.08,46.31
    train 3273
    note-enUS Talk to Naleeia Tattermend
    note-ptBR Fale com Naleeia Tattermend
    turnin 97965
step
    ifcomplete 98286
    ifnotturnedin 92550
    goto 2521 43.25,43.16
    train 7411
    note-enUS Talk to Nasalanna Windsinger
    note-ptBR Fale com Nasalanna Windsinger
    turnin 98286
step
    ifcomplete 97971
    ifnotturnedin 92550
    goto 2521 43.3,43.37
    train 8613
    note-enUS Talk to Mendalass Tattermend
    turnin 97971
step
    ifcomplete 92553
    ifonquest 92550
    goto 2521 43.86,43.85
    note-enUS Talk to Zerril Softbreeze and buy [Flint and Tinder].
    note-ptBR Fale com Zerril Softbreeze e compre [Flint and Tinder].
    collect 4471 1
step
    ifcomplete 92553
    ifonquest 92550
    goto 2521 43.86,43.85
    note-enUS Talk to Zerril Softbreeze and buy 5 [Simple Wood].
    note-ptBR Fale com Zerril Softbreeze e compre 5 [Simple Wood].
    collect 4470 5
step
    ifcomplete 92553
    ifnotturnedin 92550
    goto 2521 43.85,43.85
    note-enUS Talk to Zerril Softbreeze
    note-ptBR Fale com Zerril Softbreeze
    turnin 92553
step
    ifturnedin 92553
    ifnotturnedin 92550
    goto 2521 43.86,43.85
    note-enUS Craft as many [Herb Baked Eggs] as you can.
    note-ptBR Prepare o máximo de [Herb Baked Eggs] que puder.
    collect 6888 1
step
    ifcomplete 96646
    ifnotturnedin 92550
    goto 2521 43.85,43.85
    train 2550
    note-enUS Talk to Zerril Softbreeze
    note-ptBR Fale com Zerril Softbreeze
    turnin 96646
step
    ifcomplete 97963
    ifnotturnedin 92550
    goto 2521 43.7,43.43
    train 2259
    note-enUS Talk to Nyassa Swiftdraught
    note-ptBR Fale com Nyassa Swiftdraught
    turnin 97963
step
    ifcomplete 97973
    ifnotturnedin 92550
    goto 2521 44.88,44.19
    train 3908
    note-enUS Talk to Taleen Shimmerthread
    note-ptBR Fale com Taleen Shimmerthread
    turnin 97973
step
    ifcomplete 97964
    ifnotturnedin 92550
    goto 2521 44.89,44.36
    train 2018
    note-enUS Talk to Aedi Thriceforged
    note-ptBR Fale com Aedi Thriceforged
    turnin 97964
step
    ifcomplete 97970
    ifnotturnedin 92550
    goto 2521 44.77,44.57
    train 2575
    note-enUS Talk to Messana Crestwind
    note-ptBR Fale com Messana Crestwind
    turnin 97970
step
    ifcomplete 92515
    ifnotturnedin 92550
    goto 2521 44.69,44.52
    note-enUS Talk to Indari Sunseam
    note-ptBR Fale com Indari Sunseam
    turnin 92515
step
    ifcomplete 97969
    ifnotturnedin 92550
    goto 2521 44.69,44.53
    train 2108
    note-enUS Talk to Indari Sunseam
    note-ptBR Fale com Indari Sunseam
    turnin 97969
step
    ifnotturnedin 92551
    goto 2521 44.71,45.48
    note-enUS Talk to Veena Vericloud
    note-ptBR Fale com Veena Vericloud
    vendor
    collect 2512 600 |only Hunter
    collect 2515 1000 |only Hunter
step
    goto 2521 45.24,45.19
    note-enUS Talk to Danarii Bellowveil.
    turnin 92551
step
    goto 2521 45.67,45.5
    note-enUS Talk to Constable Aonda.
    turnin 92550 |reward 3
    turnin 93927
    accept 92701 |only Alliance
    accept 92579 |only Horde
    accept 93948
step
    goto 2521 49.4,58.76
step
    ifnotturnedin 93948
    goto 2521 49.4,58.76
step
    only Hunter
    ifnotonquest 93317
    ifnotturnedin 92679
    goto 2521 59.4,75.73
    note-enUS Talk to Falfaan Halfwind inside the house.
    note-enUS Buy and equip a [Zephrali Bow]
    note-ptBR Compre e equipe um [Zephrali Bow]
    collect 277110 1
    vendor
step
    path seq 2521 60.6,73.16
    goto 2521 60.64,72.66
    note-enUS Talk to Nyalah Brightfire.
    note-ptBR Fale com Nyalah Brightfire.
    accept 93317
step
    ifonquest 93317
    goto 2521 60.64,72.66
    note-enUS Craft as many [Herb Baked Eggs] as you can.
    note-ptBR Prepare o máximo de [Herb Baked Eggs] que puder.
step
    ifnotturnedin 93948
    goto 2521 62.18,72.62
    note-enUS Talk to Donaal Downbreeze.
    note-ptBR Fale com Donaal Downbreeze.
    home
step
    ifnotturnedin 93948
    goto 2521 62.18,72.62
    note-enUS Talk to Donaal Downbreeze.
    note-ptBR Fale com Donaal Downbreeze.
    vendor
    collect 1179 20 |only Mage Druid Shaman
step
    path seq 2521 61.95,72.84
    goto 2521 62.1,73.34 20
    note-enUS Talk to Alvarion Windfield on the second floor.
    note-ptBR Fale com Alvarion Windfield no segundo andar.
    accept 92679 |opt
    note-enUS Talk to Alvarion Windfield on the second floor.
    note-ptBR Fale com Alvarion Windfield no segundo andar.
    accept 92679
step
    only Alliance
    ifnotturnedin 93948
    path seq 2521 63.33,73.65
    goto 2521 63.97,75.09 25
step
    only Alliance
    ifnotturnedin 93948
    path seq 2521 63.33,73.65 |only Alliance
    goto 2521 63.97,75.09 30 |only Alliance
    goto 2521 63.81,74.32
step
    only Horde
    ifnotturnedin 93948
    path seq 2521 63.33,73.65
    goto 2521 63.97,75.09 25
step
    goto 2521 63.97,75.09
    note-enUS Talk to Lotheluum Starbreeze.
    note-ptBR Fale com Lotheluum Starbreeze.
    accept 94484
step
    goto 2521 65.96,74.31
    note-enUS Talk to Ealaane Nimbuswalker.
    note-ptBR Fale com Ealaane Nimbuswalker.
    accept 94896
    accept 94897
step
    path seq 2521 65.93,76.37 66.46,76.8 66.43,76.58 66.43,76.83 66.31,77.08 66,76.57 66.19,76.22 66.44,76.4
    goto 2521 66.17,76.51
    note-enUS Talk to Talaanis Shadowsong.
    turnin 93948 |opt
    note-enUS Talk to Talaanis Shadowsong.
    turnin 93948
step
    goto 2521 66.18,76.65
    note-enUS Talk to Valennia Stormfist.
    turnin 92701 |only Alliance
    turnin 92579 |reward 3 |only Horde
    accept 92699 |only Alliance
    accept 92700 |only Horde
    accept 93949
step
    only Horde
    ifonquest 92700
    goto 2521 66.49,76.5 6
    goto 2521 63.03,77.81 |only Hunter
    goto 2521 61.49,76.89 |only !Hunter
    note-enUS Kill Skyhopper. |only Horde
    objective 93949/1 |only Horde |opt
step
    only Alliance
    ifonquest 92699
    path seq 2521 66.47,76.68
    goto 2521 66.63,79.94
step
    only Alliance
    goto 2521 66.63,79.94
    note-enUS Kill Skyhopper. |only Alliance
    objective 93949/1 |only Alliance |opt
    note-enUS Talk to Elaadrin Evengale.
    note-ptBR Fale com Elaadrin Evengale.
    turnin 92699
step
    only Alliance
    goto 2521 66.26,79.89
    note-enUS Talk to Dondallion Whisperwind.
    accept 92727
step
    only Alliance
    goto 2521 66.35,79.51
    note-enUS Talk to Iaadaria Bitterwind.
    accept 92741
step
    only Horde Hunter
    goto 2521 63.03,77.81
    note-enUS Talk to Antelariaa Cloudgaze.
    note-ptBR Fale com Antelariaa Cloudgaze.
    note-enUS Buy 600 [Rough Arrows]
    note-ptBR Compre 600 [Rough Arrows]
    collect 2512 600 |only Hunter
step
    only Horde
    path seq 2521 61.49,76.89 59.35,77.93
    goto 2521 59.15,79.78
    note-enUS Talk to Ayessa Dawnsinger.
    note-ptBR Fale com Ayessa Dawnsinger.
    turnin 92700
    accept 92708
    accept 93735
step
    only Horde
    ifonquest 92708
    goto 2521 59.15,79.78
step
    only Horde
    goto 2521 58.13,78.31
    note-enUS Talk to Endaria Mistgaze.
    note-ptBR Fale com Endaria Mistgaze.
    accept 93736
step
    only Horde
    ifonquest 97968
    ifcomplete 97968
    goto 2521 57.89,75.51
    train 2366
    note-enUS Talk to Syriel Nightrain.
    turnin 97968
step
    only Horde
    goto 2521 59.06,72.99
    note-enUS Talk to Riaani Nightwind.
    note-ptBR Fale com Riaani Nightwind.
    turnin 93735
    accept 93737
    objective 93737/1
step
    only Horde
    path closest 2521 51.4,68.64 |only Horde
    path closest 2521 51.43,67.6 51.87,67.22 52.93,66.08 53.2,65.42 52.75,64.73
    note-enUS Click on the Construct Parts inside the cave on the bottom floor. |only Horde
    note-ptBR Clique nas Construct Parts dentro da caverna, no andar de baixo. |only Horde
    objective 93737/2 |only Horde |opt
    note-enUS Click on the Construct Parts inside the cave on the bottom floor.
    note-ptBR Clique nas Construct Parts dentro da caverna, no andar de baixo.
    objective 93737/2
step
    only Alliance
    goto 2521 53.33,72.15
    note-enUS Click on the Bloodstained Satchel
    note-ptBR Clique no Bloodstained Satchel
    turnin 92727
    accept 92849
step
    only Alliance
    path seq 2521 51.11,67.06 51.24,66.63 49.9,66.42 49.75,65.9
    goto 2521 50.7,65.36
    note-enUS Click on Fillion Flamebreeze inside the cave.
    objective 92849/1
step
    only Alliance
    ifonquest 92849
    goto 2521 50.7,65.36
step
    only Alliance
    path seq 2521 50.71,66.38 52.04,66.66 51.44,66.25 51.03,67.15 51.55,69.2
    goto 2521 52.08,69.41
    note-enUS Carry Fillion Flamebreeze to safety. Avoid enemies along the way.
    objective 92849/2
step
    only Alliance
    goto 2521 52.06,69.4
    note-enUS Talk to Fillion Flamebreeze.
    note-ptBR Fale com Fillion Flamebreeze.
    turnin 92849
    accept 92850
step
    only Alliance
    path seq 2521 51.39,68.2 |only Alliance
    goto 2521 52.02,65.51 130 |only Alliance
    goto 2521 52.02,65.51
    note-enUS Kill Shriekling Matriarch. Loot it for [Shriekling Matriarch's Head]. |only Alliance
    objective 92850/1 |only Alliance |opt
    note-enUS Kill Shriekling Matriarch. Loot it for [Shriekling Matriarch's Head].
    objective 92850/1
step
    only Alliance
    path seq 2521 52.37,66.5 51.75,66.33 51.05,66.66 51.16,67.53 51.49,69.08
    goto 2521 51.5,69.11 25
step
    goto 2521 51.4,68.64 15 |only Horde
    goto 2521 46.71,81.95
    note-enUS Kill Windsong Crawlers. Loot them for [Windsong Crawler Meat].
    objective 93317/1 |opt
    note-enUS Talk to Aamelia Windfield. |only Horde
    note-ptBR Fale com Aamelia Windfield. |only Horde
    objective 92679/1 |only Horde |opt
    note-enUS Talk to Aamelia Windfield.
    note-ptBR Fale com Aamelia Windfield.
    objective 92679/1
step
    path closest 2521 46.71,81.94 47.51,78.49
    note-enUS Talk to Aamelia Windfield.
    note-ptBR Fale com Aamelia Windfield.
    turnin 92679
    accept 92682
    accept 92684
    accept 92683
step
    path closest 2521 46.16,78.04 48.92,84.44
    note-enUS Spam use the [Flutterfly Swatter] on the Flutterflies
    note-enUS Click on the Flutterfly Dust.
    note-ptBR Clique no Flutterfly Dust.
    objective 92683/1 |opt
    use 253666 |opt
    note-enUS Kill Ornery Galestrider. Loot them for [Lowlands Galestrider Tenderloins].
    objective 92684/1 |opt
    note-enUS Click on Ripe Stormapples
    note-ptBR Clique em Ripe Stormapples
    note-enUS Kill Hungry Bandits (stealthed).
    objective 92682/1
    objective 92682/2
step
    only Horde
    ifonquest 92684
    goto 2521 48.5,55.83
step
    path closest 2521 49.09,78.36 48.62,78.39
    note-enUS Kill Ornery Galestrider. Loot them for [Lowlands Galestrider Tenderloins].
    objective 92684/1 |opt
    note-enUS Spam use the [Flutterfly Swatter] on the Flutterflies
    note-enUS Click on the Flutterfly Dust.
    note-ptBR Clique no Flutterfly Dust.
    objective 92683/1 |opt
    use 253666 |opt
    note-enUS Talk to Malfunctioning Cyclone Construct.
    note-ptBR Fale com Malfunctioning Cyclone Construct.
    accept 92698
step
    only Shaman
    path seq 2521 50.02,77.66 51.3,80.59 |only Shaman
    goto 2521 50.87,83.29 40 |only Shaman
    note-enUS 1 |only Shaman
    note-ptBR 1 |only Shaman
    note-enUS Kill Ornery Galestrider. Loot them for [Lowlands Galestrider Tenderloins]. |only Shaman
    objective 92684/1 |only Shaman |opt
    note-enUS Spam use the [Flutterfly Swatter] on the Flutterflies |only Shaman
    note-enUS Click on the Flutterfly Dust. |only Shaman
    note-ptBR Clique no Flutterfly Dust. |only Shaman
    objective 92683/1 |only Shaman |opt
    use 253666 |only Shaman |opt
    note-enUS Kill Ornery Galestrider. Loot them for [Lowlands Galestrider Tenderloins]. |only Shaman
    objective 92684/1 |only Shaman |opt
    level 10
step
    only Shaman
    goto 2521 58.31,78.5
    hearth |only Shaman |opt
    note-enUS Talk to Sessaria Skystride.
    note-ptBR Fale com Sessaria Skystride.
    accept 97243
step
    only Shaman
    goto 2521 58.31,78.5
    note-enUS Talk to Sessaria Skystride.
    note-ptBR Fale com Sessaria Skystride.
    trainer
step
    only Shaman
    path seq 2521 54.4,77.33
    goto 2521 51.24,86.19
    note-enUS Spam use the [Flutterfly Swatter] on the Flutterflies |only Shaman
    note-enUS Click on the Flutterfly Dust. |only Shaman
    note-ptBR Clique no Flutterfly Dust. |only Shaman
    objective 92683/1 |only Shaman |opt
    use 253666 |only Shaman |opt
    note-enUS Kill Ornery Galestrider. Loot them for [Lowlands Galestrider Tenderloins]. |only Shaman
    objective 92684/1 |only Shaman |opt
    note-enUS Talk to Olariaan Swiftburn.
    note-ptBR Fale com Olariaan Swiftburn.
    turnin 97243
    accept 97244
step
    only Shaman
    goto 2521 64.38,63.59
    note-enUS Kill the Skypriest Faladiel. Loot him for [Faladiel's Heart].
    note-ptBR Mate o Skypriest Faladiel. Saqueie-o para obter [Faladiel's Heart].
    objective 97244/1
step
    only Shaman
    goto 2521 51.24,86.19
    note-enUS Spam use the [Flutterfly Swatter] on the Flutterflies |only Shaman
    note-enUS Click on the Flutterfly Dust. |only Shaman
    note-ptBR Clique no Flutterfly Dust. |only Shaman
    objective 92683/1 |only Shaman |opt
    use 253666 |only Shaman |opt
    note-enUS Kill Ornery Galestrider. Loot them for [Lowlands Galestrider Tenderloins]. |only Shaman
    objective 92684/1 |only Shaman |opt
    note-enUS Talk to Olariaan Swiftburn.
    note-ptBR Fale com Olariaan Swiftburn.
    turnin 97244
    accept 97245
step
    path seq 2521 50.02,77.66 51.3,80.59
    goto 2521 50.87,83.29 40
    note-enUS 1
    note-ptBR 1
    note-enUS Kill Ornery Galestrider. Loot them for [Lowlands Galestrider Tenderloins].
    objective 92684/1 |opt
    note-enUS Spam use the [Flutterfly Swatter] on the Flutterflies
    note-enUS Click on the Flutterfly Dust.
    note-ptBR Clique no Flutterfly Dust.
    objective 92683/1
    use 253666
step
    note-enUS Kill Ornery Galestrider. Loot them for [Lowlands Galestrider Tenderloins].
    objective 92684/1
step
    path closest 2521 47.51,78.49 46.71,81.94
    note-enUS Talk to Aamelia Windfield.
    note-ptBR Fale com Aamelia Windfield.
    turnin 92682
    turnin 92684 |reward 3
    turnin 92698
    turnin 92683
    accept 92685
step
    only Alliance
    path closest 2521 44.81,74.4 45.62,72.36 43.55,75 45.76,78.42
    note-enUS Kill Bandit Highwaymen. Loot them for the [Blood-Stained Bandit Masks].
    objective 92685/1 |opt
    note-enUS Kill Bandit Highwaymen. Loot them for the [Blood-Stained Bandit Masks].
    objective 92685/1
step
    only Horde
    path seq 2521 45.62,72.36 43.55,75 |only Horde
    goto 2521 45.76,78.42 35 |only Horde
    note-enUS 1 |only Horde
    note-ptBR 1 |only Horde
    note-enUS Click on the Construct Parts. |only Horde
    note-ptBR Clique nas Construct Parts. |only Horde
    objective 93737/4 |only Horde |opt
    note-enUS Kill Bandit Highwaymen. Loot them for the [Blood-Stained Bandit Masks].
    objective 92685/1
step
    only Horde
    note-enUS Click on the Construct Parts.
    note-ptBR Clique nas Construct Parts.
    objective 93737/4
step
    only Shaman
    goto 2521 42.39,68.89
    note-enUS Click on Kuramaa's Stump.
    note-ptBR Clique em Kuramaa's Stump.
    note-enUS Kill Kuramaa. Loot it for [Kuramaa's Mask].
    note-ptBR Mate Kuramaa. Saqueie-o para obter [Kuramaa's Mask].
    objective 97245/1
step
    only Alliance
    ifonquest 92685
    path seq 2521 43.84,75.53 44.06,76.19
    goto 2521 47.51,78.49
    note-enUS Talk to Aamelia Windfield. |only Alliance
    note-ptBR Fale com Aamelia Windfield. |only Alliance
    turnin 92685 |only Alliance |opt
    accept 92693 |only Alliance |opt
step
    path closest 2521 47.51,78.49 46.71,81.94
    note-enUS Talk to Aamelia Windfield.
    note-ptBR Fale com Aamelia Windfield.
    turnin 92685
    accept 92693
step
    goto 2521 46.71,81.94
    note-enUS Return to Aamelia Windfield's main location and talk to her.
    objective 92693/1
step
    goto 2521 47.51,78.44
    note-enUS Follow Aamelia Windfield. Wait for the roleplay.
    objective 92693/2
    use 279981
step
    goto 2521 47.51,78.44
    note-enUS Talk to Aamelia Windfield.
    note-ptBR Fale com Aamelia Windfield.
    turnin 92693
    accept 92703
step
    only Horde
    ifonquest 92703
    goto 2521 48.45,80.59
step
    only !Shaman
    ifnotturnedin 92703
    hearth
step
    only !Shaman
    ifnotturnedin 92703
    goto 2521 62.18,72.62
    note-enUS Talk to Donaal Downbreeze.
    note-ptBR Fale com Donaal Downbreeze.
    vendor
    collect 1179 15 |only Mage Druid
step
    only Shaman
    goto 2521 51.24,86.19
    note-enUS Talk to Olariaan Swiftburn.
    note-ptBR Fale com Olariaan Swiftburn.
    turnin 97245
    accept 97257
step
    only Shaman
    goto 2521 51.27,85.93
    note-enUS Wait for the roleplay. Use the [Torch of Eternal Flame] on the burning Brazier of Offering.
    note-ptBR Espere o roleplay. Use a [Torch of Eternal Flame] no Brazier of Offering em chamas.
    objective 97257/1
    use 277329
step
    only Shaman
    path seq 2521 52.4,81.31 54.91,76.6
    goto 2521 58.31,78.83
    note-enUS You have roughly 5 minutes to run back.
    note-ptBR Você tem cerca de 5 minutos para voltar correndo.
    objective 97257/2
step
    only Shaman
    goto 2521 58.31,78.51
    note-enUS Talk to Sessaria Skystride.
    note-ptBR Fale com Sessaria Skystride.
    turnin 97257
step
    only Shaman
    ifnotturnedin 92703
    goto 2521 62.18,72.62
    note-enUS Kill Skyhopper. |only Shaman
    objective 93949/1 |only Shaman |opt
    note-enUS Talk to Donaal Downbreeze.
    note-ptBR Fale com Donaal Downbreeze.
    vendor
step
    only Hunter
    ifnotturnedin 92703
    goto 2521 62.18,72.62
    note-enUS Talk to Donaal Downbreeze.
    note-ptBR Fale com Donaal Downbreeze.
    note-enUS Buy [Forest Mushroom Cap] from him. You will use this to feed your pet later
    note-ptBR Compre [Forest Mushroom Cap] dele. Você vai usar isso para alimentar seu mascote depois
    collect 4604 5
step
    path seq 2521 61.94,72.8 62.05,73.09
    goto 2521 62.11,73.33
    note-enUS Talk to Alvarion Windfield on the second floor.
    note-ptBR Fale com Alvarion Windfield no segundo andar.
    turnin 92703 |reward 1 |only Warrior Shaman
    turnin 92703 |reward 2 |only Druid
    turnin 92703 |reward 3 |only Rogue
    turnin 92703 |only Hunter Mage
step
    only Warrior
    goto 2521 59.89,72.87
    note-enUS Kill Skyhopper. |only Alliance
    objective 93949/1 |only Alliance |opt
    note-enUS Talk to Seena Skybreaker.
    note-ptBR Fale com Seena Skybreaker.
    accept 94003
step
    only Warrior
    goto 2521 59.89,72.87
    note-enUS Talk to Seena Skybreaker.
    note-ptBR Fale com Seena Skybreaker.
    train 6546
    train 2687
step
    only Druid
    path seq 2521 63.33,73.65 |only Alliance Druid
    goto 2521 63.97,75.09 25 |only Alliance Druid
    path seq 2521 63.33,73.65 |only Horde Druid
    goto 2521 63.97,75.09 25 |only Horde Druid
    goto 2521 63.98,75.09
    note-enUS Talk to Lotheluum Starbreeze.
    note-ptBR Fale com Lotheluum Starbreeze.
    accept 94006
step
    only Druid
    goto 2521 63.98,75.09
    note-enUS Talk to Lotheluum Starbreeze.
    note-ptBR Fale com Lotheluum Starbreeze.
    train 16689
    train 1058
    train 5232
    train 8924
step
    only Rogue
    goto 2521 59.9,72.48
    note-enUS Talk to Eltheen Nightbreeze.
    train 674
    train 6770
    train 2070
    train 5171
    train 6774
    train 2983
    train 8696
step
    only Hunter
    goto 2521 59.57,72.64
    note-enUS Talk to Quel'ana Quickgale.
    note-ptBR Fale com Quel'ana Quickgale.
    train 13165
    train 13549
step
    only Hunter
    goto 2521 59.57,72.64
    note-enUS Talk to Quel'ana Quickgale.
    note-ptBR Fale com Quel'ana Quickgale.
    accept 94978
step
    only Hunter Alliance
    goto 2521 63.02,77.8
    note-enUS Talk to Anteleriaa Cloudgaze.
    note-ptBR Fale com Anteleriaa Cloudgaze.
    note-enUS Buy [Sharp Arrow]
    note-ptBR Compre [Sharp Arrow]
    vendor
    collect 2515 1000
step
    only Alliance
    goto 2521 66.26,79.9
    note-enUS Talk to Dondallion Whisperwind.
    turnin 92850
    accept 99260
step
    only Alliance
    goto 2521 66.63,79.94
    note-enUS Talk to Elaadrin Evengale.
    note-ptBR Fale com Elaadrin Evengale.
    turnin 99260
    accept 92840
step
    only Horde Hunter
    path closest 2521 54.46,78.81 51.97,73.08 53.13,73.5 51.27,69.76
    use 267272
    objective 94978/1
step
    only Horde Hunter
    goto 2521 59.57,72.64
    note-enUS Talk to Quel'ana Quickgale.
    note-ptBR Fale com Quel'ana Quickgale.
    turnin 94978
    accept 94979
step
    only Horde Hunter
    path closest 2521 60.91,69.41 58.34,68.48 53.8,72.16
    note-enUS Dismiss your Windsong Crawler by right clicking its unit frame and clicking dismiss, otherwise you'll be unable to tame an Armored Scorpid |only Horde Hunter
    use 267298
    objective 94979/1
step
    only Horde Hunter
    goto 2521 59.57,72.64
    note-enUS Talk to Quel'ana Quickgale.
    note-ptBR Fale com Quel'ana Quickgale.
    turnin 94979
    accept 94013
step
    only Horde Hunter
    path closest 2521 56.95,67.89 54.08,74.72 52.62,77.86 53.02,81.57 51.65,80.14 48.98,82.67
    use 264163
    objective 94013/1
step
    only Horde Hunter
    goto 2521 59.57,72.64
    note-enUS Talk to Quel'ana Quickgale.
    note-ptBR Fale com Quel'ana Quickgale.
    turnin 94013
    accept 94050
step
    only Horde Hunter
    goto 2521 59.6,72.53
    note-enUS Talk to Quel'dora Quickgale.
    turnin 94050
step
    only Horde Hunter
    goto 2521 59.6,72.53
    note-enUS Talk to Quel'dora Quickgale.
    train 4195
    train 24547
step
    only Horde Hunter
    path seq 2521 60.91,69.41 58.34,68.48
    goto 2521 53.8,72.16 35
    note-enUS Cast [Tame Beast] on a Windsong Crawler to tame it - .tame 1997
    train 2981
step
    only Mage
    goto 2521 62.89,77.32
    note-enUS Talk to Belann Windwood.
    note-ptBR Fale com Belann Windwood.
    accept 93791
    turnin 93791
    accept 93797
step
    only Mage
    goto 2521 65.91,80.58
    note-enUS Talk to Anathamaas Aetherwind
    train 168
    train 122
    train 5504
    train 587
    train 5505
step
    only Alliance
    path closest 2521 51.56,71.28 50.94,69.46 |only Alliance Hunter
    path closest 2521 50.06,72.96 48.83,73.54 47.16,72.34 46.55,71.7 46.52,70.33 |only Alliance
    path closest 2521 47.77,70.04 47.32,68.68 48.25,69 48.68,69.06 48.13,70.15
    use 267272 |only Alliance Hunter |opt
    objective 94978/1 |only Alliance Hunter |opt
    note-enUS Kill Windsong Crawlers. Loot them for [Windsong Crawler Meat]. |only Alliance !Hunter
    objective 93317/1 |only Alliance !Hunter |opt
    note-enUS Click on the Crystals |only Alliance
    note-ptBR Clique nos Crystals |only Alliance
    objective 92840/1 |only Alliance |opt
    use 254584 |only Alliance |opt
    note-enUS Click on the Crystals
    note-ptBR Clique nos Crystals
    objective 92840/1
    use 254584
step
    only Alliance Hunter
    ifonquest 94013
    path seq 2521 49.47,65.13 50.07,67.39 50.98,69.45 52.05,71.71 51.82,72.95
    goto 2521 52.81,75.82 40
    use 267272
    objective 94978/1
step
    only Alliance Hunter
    ifonquest 94013
    ifcomplete 94013
    ifonquest 92840
    ifcomplete 92840
    path seq 2521 50.57,68.18
    goto 2521 52.73,71.12
step
    only Alliance !Hunter
    ifonquest 92840
    ifcomplete 92840
    path seq 2521 49.46,70.12
    goto 2521 65.58,76.65
step
    goto 2521 42.97,43.54
    train 2366 |opt
    note-enUS Kill Skyhopper.
    objective 93949/1 |opt
    note-enUS Talk to Halassa Fernbreeze
    note-ptBR Fale com Halassa Fernbreeze
    turnin 97968
step
    only Mage
    goto 2521 48.59,67.77
    note-enUS Click on the Branch.
    note-ptBR Clique no Branch.
    objective 93797/1
step
    only Mage
    goto 2521 62.89,77.44
    note-enUS Kill Skyhopper. |only Mage
    objective 93949/1 |only Mage |opt
    note-enUS Talk to Belann Windwood.
    note-ptBR Fale com Belann Windwood.
    turnin 93797
step
    only Alliance Hunter
    goto 2521 59.57,72.64
    note-enUS Kill Skyhopper. |only Alliance Hunter
    objective 93949/1 |only Alliance Hunter |opt
    note-enUS Talk to Quel'ana Quickgale.
    note-ptBR Fale com Quel'ana Quickgale.
    turnin 94978
    accept 94979
step
    only Alliance Hunter
    path closest 2521 60.91,69.41 58.34,68.48 53.8,72.16
    note-enUS Dismiss your Windsong Crawler by right clicking its unit frame and clicking dismiss, otherwise you'll be unable to tame an Armored Scorpid |only Alliance Hunter
    use 267298
    objective 94979/1
step
    only Alliance Hunter
    goto 2521 59.57,72.64
    note-enUS Talk to Quel'ana Quickgale.
    note-ptBR Fale com Quel'ana Quickgale.
    turnin 94979
    accept 94013
step
    only Alliance Hunter
    path closest 2521 54.23,75 53.45,80.93 52.56,77.82 61.94,68.83 59.52,64.85 57.04,67.73 54.32,75.08 51.92,80.46 52.92,81.51
    note-enUS Kill Skyhopper. |only Alliance Hunter
    objective 93949/1 |only Alliance Hunter |opt
    use 264163
    objective 94013/1
step
    only Alliance Hunter
    goto 2521 59.57,72.64
    note-enUS Talk to Quel'ana Quickgale.
    note-ptBR Fale com Quel'ana Quickgale.
    turnin 94013
    accept 94050
step
    only Alliance Hunter
    goto 2521 59.6,72.53
    note-enUS Talk to Quel'dora Quickgale.
    turnin 94050
step
    only Alliance Hunter
    goto 2521 59.6,72.53
    note-enUS Talk to Quel'dora Quickgale.
    train 4195
    train 24547
step
    only Alliance
    path closest 2521 58.85,75.49 59.05,76.35 59.8,75.68 61.4,74.76 62.61,76.14 63.1,77.59 62.67,77.77 63.13,77.32 62.97,76.91 63.8,78.01 63.16,78.97 65.37,78.53
    note-enUS Kill Skyhopper.
    objective 93949/1
step
    only Horde
    path closest 2521 63.1,77.59 62.67,77.77 63.13,77.32 62.97,76.91 63.8,78.01 63.16,78.97 65.37,78.53 58.85,75.49 59.05,76.35 59.8,75.68 61.4,74.76 62.61,76.14
    note-enUS Kill Skyhopper.
    objective 93949/1
step
    only Alliance
    goto 2521 66.63,79.93
    note-enUS Talk to Elaadrin Evengale.
    note-ptBR Fale com Elaadrin Evengale.
    turnin 92840
    accept 92860
step
    only Alliance
    path seq 2521 65.65,79.27 64.98,77.12 65.93,76.37 66.46,76.8 66.43,76.58 66.43,76.83 66.31,77.08 66,76.57 66.19,76.22 |only Alliance
    goto 2521 66.44,76.4 5 |only Alliance
    goto 2521 66.18,76.66
    note-enUS Talk to Valennia Stormfist. |only Alliance
    turnin 92860 |only Alliance |opt
    turnin 93949 |only Alliance |opt
    accept 93320 |only Alliance |opt
    note-enUS Talk to Valennia Stormfist.
    turnin 92860 |only Alliance
    turnin 93949
    accept 93320 |only Alliance
step
    only Alliance
    goto 2521 66.47,76.64 10 |only Alliance
    goto 2521 65.96,74.31
    note-enUS Talk to Ealaane Nimbuswalker.
    note-ptBR Fale com Ealaane Nimbuswalker.
    accept 94896
    accept 94897
step
    only Alliance
    path seq 2521 65.36,71.79 65.76,68.4
    goto 2521 69.64,67.07
    note-enUS Kill Al'Aketh Brawler. |only Alliance
    objective 92834/1 |only Alliance |opt
    note-enUS Talk to Yorana Windyreed.
    turnin 93320
    accept 92642
    accept 92645
step
    only Alliance Druid
    ifonquest 92834
    path seq 2521 69.01,65.86
    goto 2521 69.84,61.73
step
    only Alliance Druid
    goto 2521 69.78,61.61
    note-enUS Talk to Urs'endris.
    note-ptBR Fale com Urs'endris.
    turnin 94006
    accept 94638
step
    only Alliance Druid
    goto 2521 67.39,63.3 15 |only Alliance Druid
    path seq 2521 65.31,65.33
    goto 2521 65.58,65.63
    note-enUS Kill Al'Akeths. |only Alliance Druid
    note-ptBR Mate Al'Akeths. |only Alliance Druid
    objective 92642/1 |only Alliance Druid |opt
    objective 92642/2 |only Alliance Druid |opt
    note-enUS Kill Commander Belguilos on the second floor inside the house. |only Alliance Druid
    objective 92645/1 |only Alliance Druid |opt
    note-enUS Kill Commander Belguilos on the second floor inside the house.
    objective 92645/1
step
    only Alliance Druid
    path closest 2521 65.34,65.79 65.43,64.53 64.46,66.11 64.71,67.65 66.59,67.5
    note-enUS Kill Al'Aketh Brawler and Al'Aketh Healer.
    objective 92642/1
    objective 92642/2
step
    only Alliance !Druid
    path seq 2521 65.71,65.59 65.84,65.02
    goto 2521 65.58,65.63
    note-enUS Kill Al'Akeths. |only Alliance !Druid
    note-ptBR Mate Al'Akeths. |only Alliance !Druid
    objective 92642/1 |only Alliance !Druid |opt
    objective 92642/2 |only Alliance !Druid |opt
    note-enUS Kill Commander Belguilos on the second floor inside the house.
    objective 92645/1
step
    only Alliance !Druid
    path closest 2521 65.34,65.79 65.43,64.53 64.46,66.11 64.71,67.65 66.59,67.5
    note-enUS Kill Al'Aketh Brawler and Al'Aketh Healer.
    objective 92642/1
    objective 92642/2
step
    only Alliance
    goto 2521 69.61,67.1
    note-enUS Talk to Yorana Windyreed.
    turnin 92645
    turnin 92642
    accept 92880
step
    only Alliance
    path seq 2521 65.58,68.58 65.93,76.37 66.46,76.8 66.43,76.58 66.43,76.83 66.31,77.08 66,76.57 66.19,76.22 |only Alliance
    goto 2521 66.44,76.4 5 |only Alliance
    goto 2521 66.2,76.66
    note-enUS Talk to Valennia Stormfist. |only Alliance
    turnin 92880 |reward 1 |only Alliance Warrior |opt
    turnin 92880 |reward 2 |only Alliance Rogue |opt
    turnin 92880 |reward 3 |only Alliance Hunter Alliance Mage Alliance Druid |opt
    accept 92881 |only Alliance |opt
    note-enUS Talk to Valennia Stormfist.
    turnin 92880 |reward 1 |only Alliance Warrior
    turnin 92880 |reward 2 |only Alliance Rogue
    turnin 92880 |reward 3 |only Alliance Hunter Alliance Mage Alliance Druid
    accept 92881
step
    only Alliance
    goto 2521 66.17,76.5
    note-enUS Talk to Talaanis Shadowsong.
    turnin 92881
    accept 92643
step
    only Alliance
    ifnotturnedin 98512
    ifnotonquest 98512
    goto 2521 65.4,80.22
    note-enUS Talk to Daeann Steelwind outside the house.
    vendor
step
    only Horde
    ifonquest 93949
    ifcomplete 93949
    path seq 2521 65.93,76.37 66.46,76.8 66.43,76.58 66.43,76.83 66.31,77.08 66,76.57 66.19,76.22 |only Horde
    goto 2521 66.44,76.4 5 |only Horde
    goto 2521 66.18,76.66
    note-enUS Talk to Valennia Stormfist. |only Horde
    turnin 93949 |only Horde |opt
    note-enUS Talk to Valennia Stormfist.
    turnin 93949
step
    only Horde
    abandon 93949
step
    only Horde Druid
    goto 2521 69.78,61.61
    note-enUS Talk to Urs'endris.
    note-ptBR Fale com Urs'endris.
    turnin 94006
    accept 94638
step
    goto 2521 56.81,61.11
    note-enUS Talk to Fendaal Windstone.
    accept 98512
step
    only Alliance
    goto 2521 56.13,60.26
    note-enUS Kill Al'Aketh Assassin. |only Alliance
    objective 98512/1 |only Alliance |opt
    note-enUS Follow the Arrow
    note-ptBR Siga a Seta
    objective 92643/1
step
    only Alliance
    goto 2521 56.05,58.79
    note-enUS Click on the Dead Cultist.
    note-ptBR Clique no Dead Cultist.
    objective 92643/2
step
    path closest 2521 55.73,59.73 56.07,61.19 54.46,59.57
    note-enUS Kill Al'Aketh Assassin.
    objective 98512/1
step
    goto 2521 56.8,61.1
    note-enUS Talk to Fendaal Windstone.
    turnin 98512
step
    only Druid
    goto 2521 54.28,65.8
    note-enUS Kill Ur'endra.
    objective 94638/1
step
    only Druid
    goto 2521 69.8,61.66
    note-enUS Talk to Urs'endris.
    note-ptBR Fale com Urs'endris.
    turnin 94638
step
    only Alliance Druid
    path closest 2521 59.59,66.7 57.25,60.92 |only Alliance Druid
    path closest 2521 53.56,59.17 52.91,58.56 52.08,59.23 52.49,57.3 53.55,55.55 54.3,57.94
    note-enUS Kill Windsong Crawlers. Loot them for [Windsong Crawler Meat]. |only Alliance Druid
    objective 93317/1 |only Alliance Druid |opt
    note-enUS Kill Windsong Crawlers. Loot them for [Windsong Crawler Meat].
    objective 93317/1
step
    only Horde
    path closest 2521 53.56,59.17 52.91,58.56 52.08,59.23 52.49,57.3 53.55,55.55 54.3,57.94
    note-enUS Kill Windsong Crawlers. Loot them for [Windsong Crawler Meat].
    objective 93317/1
step
    only Horde
    path closest 2521 53.03,51.42 53.62,50.49 52.88,49.64 53.13,47.74 52.53,45.92 51.57,46.57 49.51,45.93 49.92,44.81 50.64,44.3
    note-enUS Click on the Construct Parts.
    note-ptBR Clique nas Construct Parts.
    objective 93737/3
step
    only Warrior
    path seq 2521 57.81,48.87 57.31,50.38 |only Warrior Horde
    goto 2521 56.56,50.36 50 |only Warrior Horde
    path seq 2521 57.09,48.8 57.44,49.45 |only Warrior Alliance
    goto 2521 57.44,50.15 30 |only Warrior Alliance
    goto 2521 56.56,50.36
    note-enUS Kill Zaal Stormshield. Loot him for the [Skybreaker Bulwark]. |only Warrior Horde
    objective 94003/1 |only Warrior Horde |opt
    note-enUS Kill Zaal Stormshield. Loot him for the [Skybreaker Bulwark]. |only Warrior Alliance
    objective 94003/1 |only Warrior Alliance |opt
    note-enUS Kill Zaal Stormshield. Loot him for the [Skybreaker Bulwark].
    objective 94003/1
step
    goto 2521 57.44,50.15 30 |only !Warrior
    goto 2521 57.77,52.06
    note-enUS Talk to Brother Zendraas.
    vendor
step
    goto 2521 53.95,38.9
    note-enUS Kill Shadowgale Shrieklings. |only Alliance
    objective 92741/1 |only Alliance |opt
    note-enUS Talk to Strange Hermit.
    accept 93159
    objective 93159/1
    turnin 93159
    accept 93160
    accept 93172
step
    goto 2521 53.95,38.9
    train 4036
    note-enUS Talk to Strange Hermit.
    accept 98285
step
    path seq 2521 57.45,33.8 56.69,33.71
    goto 2521 57.04,29.36
    note-enUS Click on the Seeds
    note-ptBR Clique nas Seeds
    objective 93160/1 |opt
    note-enUS Kill Shadowgale Shrieklings. |only Alliance
    objective 92741/1 |only Alliance |opt
    objective 94896/1 |opt
    note-enUS Kill Wind Hollows. Loot them for [Wind Hollow Essence]. |only Horde
    note-enUS Kill Wind Hollows. |only Alliance
    objective 93172/1 |opt
    objective 93736/1 |only Horde |opt
    note-enUS Click on the Crates
    note-ptBR Clique nas Crates
    objective 94896/1 |opt
    note-enUS Click on the Resaan Nimbuswalker
    note-ptBR Clique em Resaan Nimbuswalker
    objective 94897/1
step
    only Alliance
    path seq 2521 58.06,28.2 57.91,26.83 58.69,31.17 58.13,30.74 57.6,31.05 58.32,31.69 58.44,32.84 59.09,31.85
    goto 2521 59.1,33.38
    note-enUS Kill Wind Hollows. |only Alliance
    objective 93172/1 |only Alliance |opt
    note-enUS Click on the Crates |only Alliance
    note-ptBR Clique nas Crates |only Alliance
    objective 94896/1 |only Alliance |opt
step
    path seq 2521 59.08,34.75 57.26,33.48 56.8,33.93 56.78,33.33 59.12,32.27 58.28,32.56 57.59,32.02 58.32,31.59 58.23,30.56 56.61,29.26
    goto 2521 59.02,31.82 30
    note-enUS 1
    note-ptBR 1
    note-enUS Kill Wind Hollows. Loot them for [Wind Hollow Essence]. |only Horde
    note-enUS Kill Wind Hollows. |only Alliance
    objective 93172/1 |opt
    note-enUS Click on the Crates
    note-ptBR Clique nas Crates
    objective 94896/1
step
    note-enUS Kill Wind Hollows. Loot them for [Wind Hollow Essence]. |only Horde
    note-enUS Kill Wind Hollows. |only Alliance
    objective 93172/1
    objective 93736/1 |only Horde
step
    goto 2521 61.76,39.14
    note-enUS Kill Shadowgale Shrieklings. |only Alliance
    objective 92741/1 |only Alliance |opt
    note-enUS Click on the Seeds
    note-ptBR Clique nas Seeds
    objective 93160/1 |opt
    note-enUS Talk to Elegael Thornpaw.
    note-ptBR Fale com Elegael Thornpaw.
    turnin 94484
    accept 94485
    accept 94486
    accept 94487
step
    only Alliance
    goto 2521 63.8,36.03
    note-enUS Kill Al'Aketh Footsoldiers and Al'Aketh Stormchasers. |only Alliance
    objective 94487/1 |only Alliance |opt
    objective 93165/1 |only Alliance |opt
    note-enUS Talk to Vayn Moongaze.
    note-ptBR Fale com Vayn Moongaze.
    accept 93165
step
    only Alliance
    path closest 2521 62.36,35.89 62.78,37.75 63.98,37.75 65.01,38.9 65.66,36.13
    note-enUS Kill Al'Aketh Footsoldiers and Al'Aketh Stormchaser.
    note-ptBR Mate Al'Aketh Footsoldiers e Al'Aketh Stormchaser.
    objective 94487/1
    objective 93165/1
step
    only Horde
    path closest 2521 62.36,35.89 62.78,37.75 63.98,37.75 65.01,38.9 65.66,36.13
    note-enUS Kill Al'Aketh Footsoldiers and Al'Aketh Stormchaser.
    objective 94487/1
step
    path seq 2521 62.83,38.25 62.08,36.7 61.17,35.44 60.82,37.23 60.33,37.46 60.9,38.88 59.79,38.95 59.9,40.38 58.53,39.85 57.94,39.99 57.36,40.86 55.59,39.23
    goto 2521 53.97,38.9
    note-enUS 1
    note-ptBR 1
    note-enUS Kill Shadowgale Shrieklings.
    objective 92741/1 |only Alliance |opt
    objective 94486/1 |opt
    note-enUS Click on the Seeds
    note-ptBR Clique nas Seeds
    objective 93160/1 |opt
    note-enUS Click on the Tear Moss
    note-ptBR Clique no Tear Moss
    objective 94485/1 |opt
    note-enUS Talk to Strange Hermit.
    turnin 93160
    turnin 93172
step
    ifonquest 98285
    ifcomplete 98285
    goto 2521 53.97,38.9
    train 4036
    note-enUS Talk to Strange Hermit.
    turnin 98285
step
    path seq 2521 54.93,38.11 55.92,36.83 57.49,37.79 58.93,37.91 60.27,38.12 61.61,36.4 61.41,39.14
    goto 2521 59.67,40.26 40
    note-enUS 1
    note-ptBR 1
    note-enUS Kill Shadowgale Shrieklings. Loot them for [Shriekling Talons] and [Pristine Shriekling Feathers]. |only Alliance
    note-enUS Kill Shadowgale Shrieklings. Loot them for the [Pristine Shriekling Feathers]. |only Horde
    objective 92741/1 |only Alliance |opt
    objective 94486/1 |opt
    note-enUS Click on the Tear Moss
    note-ptBR Clique no Tear Moss
    objective 94485/1
step
    note-enUS Kill Shadowgale Shrieklings. Loot them for [Shriekling Talons] and [Pristine Shriekling Feathers]. |only Alliance
    note-enUS Kill Shadowgale Shrieklings. Loot them for the [Pristine Shriekling Feathers]. |only Horde
    objective 92741/1 |only Alliance
    objective 94486/1
step
    goto 2521 61.76,39.13
    note-enUS Talk to Elegael Thornpaw.
    note-ptBR Fale com Elegael Thornpaw.
    turnin 94485
    turnin 94487
    turnin 94486
    accept 94488
    accept 94489
step
    ifnotturnedin 94490
    goto 2521 65.54,36.3
    note-enUS Kill Commander Haalien. Loot him for [Severed Head] and [Ripped Missive].
    objective 94488/1
    collect 265476 1
step
    only Alliance
    path seq 2521 63.75,36.44
    goto 2521 63.8,36
    note-enUS Use the [Ripped Missive] in your bags to begin the quest.
    note-ptBR Use o [Ripped Missive] das suas bolsas para iniciar a missão.
    accept 94490 |opt
    use 265476 |opt
    note-enUS Talk to Vayn Moongaze at the entrance of the cave.
    note-ptBR Fale com Vayn Moongaze na entrada da caverna.
    turnin 93165
step
    path seq 2521 64.29,34.23
    goto 2521 64.49,34.74
    note-enUS Click on Jorel Windsinger inside the cave.
    note-ptBR Clique em Jorel Windsinger dentro da caverna.
    objective 94489/2
step
    path closest 2521 64.51,34.89 64.98,34.96
    note-enUS Click on the Druids
    note-ptBR Clique nos Druids
    objective 94489/1
step
    path closest 2521 63.93,33.76 63.69,32.49 64,31.97 64.52,31.88
    note-enUS Click on the Druids
    note-ptBR Clique nos Druids
    objective 94489/1
step
    path closest 2521 64.7,30.07 65.55,31.9 66.13,32.18 65.79,33 65.93,33.55
    note-enUS Click on the Druids, do not move while clicking them or it can bug.
    note-ptBR Clique nos Druids, não se mova enquanto clica neles ou pode bugar.
    objective 94489/1
step
    path seq 2521 65.23,34.53 64.2,34.32 63.57,36.3
    goto 2521 61.77,39.14 150
    note-enUS Talk to Elegael Thornpaw.
    note-ptBR Fale com Elegael Thornpaw.
    turnin 94489 |opt
    note-enUS Talk to Elegael Thornpaw.
    note-ptBR Fale com Elegael Thornpaw.
    turnin 94489
    turnin 94490
    turnin 94488
    accept 94491
step
    hearth
    use 6948
step
    only Warrior Alliance
    goto 2521 59.89,72.86
    note-enUS Talk to Seena Skybreaker.
    note-ptBR Fale com Seena Skybreaker.
    turnin 94003
step
    only Warrior Alliance
    ifnotturnedin 94491
    goto 2521 59.89,72.87
    note-enUS Talk to Seena Skybreaker.
    note-ptBR Fale com Seena Skybreaker.
    train 1160
    train 6190
    train 6572
    train 6574
    train 1310185
step
    only Alliance
    goto 2521 60.64,72.66
    note-enUS Talk to Nyalah Brightfire inside the house.
    turnin 93317
step
    only Alliance Rogue
    goto 2521 59.9,72.48
    note-enUS Talk to Eltheen Nightbreeze.
    train 1766
    train 3127
step
    only Alliance Hunter
    goto 2521 59.57,72.64
    note-enUS Talk to Quel'ana Quickgale.
    note-ptBR Fale com Quel'ana Quickgale.
    train 14281
step
    only Alliance Warrior
    goto 2521 59.89,72.87
    note-enUS Talk to Seena Skybreaker.
    note-ptBR Fale com Seena Skybreaker.
    train 5242
    train 7384
    train 7887
    train 72
    train 1671
step
    only Alliance
    path seq 2521 63.55,73.45
    goto 2521 63.99,75.09
    note-enUS Talk to Lotheluum Starbreeze.
    note-ptBR Fale com Lotheluum Starbreeze.
    turnin 94491
step
    only Alliance Druid
    goto 2521 45.15,44.23
    note-enUS Talk to Naeluna Swiftmend.
    note-ptBR Fale com Naeluna Swiftmend.
    train 5229
    train 8936
step
    goto 2521 65.95,74.31
    note-enUS Talk to Ealaane Nimbuswalker.
    note-ptBR Fale com Ealaane Nimbuswalker.
    turnin 94896
    turnin 94897
step
    only Alliance
    path seq 2521 65.93,76.37 66.46,76.8 66.43,76.58 66.43,76.83 66.31,77.08 66,76.57 66.19,76.22 |only Alliance
    goto 2521 66.44,76.4 5 |only Alliance
    goto 2521 66.17,76.52
    note-enUS Talk to Talaanis Shadowsong. |only Alliance
    turnin 92644 |only Alliance |opt
    accept 94568 |only Alliance |opt
    note-enUS Talk to Talaanis Shadowsong.
    turnin 92644
    accept 94568
step
    only Alliance
    goto 2521 66.18,76.51 |only Alliance
    goto 2521 66.17,76.52
    note-enUS Wait for the Roleplay. |only Alliance
    note-ptBR Espere a encenação. |only Alliance
    objective 94568/1 |only Alliance |opt
    note-enUS Wait for the Roleplay.
    note-ptBR Espere a encenação.
    objective 94568/1
step
    only Alliance
    goto 2521 66.17,76.51
    note-enUS Talk to Talaanis Shadowsong.
    turnin 94568
    accept 92640
step
    only Alliance
    goto 2521 66.18,76.65
    note-enUS Talk to Valennia Stormfist.
    objective 92640/1
step
    only Alliance
    ifonquest 92640
    path seq 2521 66.49,76.64
    goto 2521 63.33,78.16
step
    only Alliance
    path seq 2521 63.33,78.16 63.04,77.53 62.31,78.27 62.13,79.02 60.68,80.11
    goto 2521 59.15,79.79
    note-enUS Talk to Ayessa Dawnsinger.
    note-ptBR Fale com Ayessa Dawnsinger.
    objective 92640/2
step
    only Alliance
    path seq 2521 59.94,77.92 61.45,77.15 62.13,76.85 63.35,78.58
    goto 2521 66.54,79.89
    note-enUS Talk to Elaadrin Evengale.
    note-ptBR Fale com Elaadrin Evengale.
    objective 92640/3
step
    only Alliance
    path seq 2521 65.65,79.27 64.98,77.12 65.93,76.37 66.46,76.8 66.43,76.58 66.43,76.83 66.31,77.08 66,76.57 66.19,76.22 |only Alliance
    goto 2521 66.44,76.4 5 |only Alliance
    goto 2521 66.18,76.65
    note-enUS Talk to Valennia Stormfist. |only Alliance
    turnin 92640 |only Alliance |opt
    accept 93065 |only Alliance |opt
    note-enUS Talk to Valennia Stormfist.
    turnin 92640
    accept 93065
step
    only Alliance
    goto 2521 63.9,74.16
step
    only Alliance
    path seq 2521 63.99,74.1
    goto 2521 61.15,70.91
    note-enUS Talk to Valennia Stormfist.
    turnin 93065
step
    only Alliance Mage
    path seq 2521 65.4,80.22
    goto 2521 65.91,80.58
    note-enUS Enter the large stone hall beside the blacksmith, continue into the upper chamber, then turn right.
    note-ptBR Entre no grande salão de pedra ao lado do ferreiro, continue até a câmara superior e vire à direita.
    note-enUS Talk to Anathamaas Aetherwind.
    train 145
    train 604
    train 597
    train 130
step
    only Alliance
    goto 2521 66.34,79.51
    note-enUS Talk to Iaadaria Bitterwind.
    turnin 92741
step
    only Alliance
    path seq 2521 66.09,80.96 65.42,81.01 65.1,81.52 |only Alliance
    goto 2521 65.81,83.44 |only Alliance
    goto 1416 @438.93,448.88
    note-enUS The zeppelin can arrive anytime within its 6-minute cycle. prioritize cooking and gaining campfire buffs for later. |only Alliance
    note-ptBR O zepelim pode chegar a qualquer momento dentro do ciclo de 6 minutos. Priorize cozinhar e ganhar bônus de fogueira para depois. |only Alliance
    turnin 94946 |only Alliance |opt
    note-enUS Do not jump off the zeppelin early you may be pushed off the platform.
    note-ptBR Não pule do zepelim cedo demais, você pode ser empurrado para fora da plataforma.
    turnin 94946
    accept 94947
step
    only Alliance Druid
    goto 1416 @385.7,385.4
    note-enUS Talk to Archmage Ansirem Runeweaver.
    accept 94912
step
    only Alliance
    goto 1416 @445.93,450
    note-enUS Click on the Portal
    note-ptBR Clique no Portal
    objective 94947/1
step
    only Alliance
    path seq 1453 48.1,88.35 49.36,87.37 48.85,86.94 48.76,87.71 54.8,83.65 53.78,78.72 55.67,75.99 59.9,71.41
    goto 1453 @332,-8443.1
    note-enUS Talk to Highlord Bolvar Fordragon inside the castle.
    note-ptBR Fale com Highlord Bolvar Fordragon dentro do castelo.
    turnin 94947
    accept 93963
    accept 98021
step
    only Alliance
    goto 1453 @350.2,-8516.2
    note-enUS Talk to Randal Emerson inside the castle.
    objective 93963/1
step
    only Horde
    goto 2521 63.99,75.09
    note-enUS Talk to Lotheluum Starbreeze.
    note-ptBR Fale com Lotheluum Starbreeze.
    turnin 94491
step
    only Horde
    goto 2521 60.64,72.66
    note-enUS Talk to Nyalah Brightfire inside the house.
    turnin 93317
step
    only Warrior Horde
    goto 2521 59.89,72.86
    note-enUS Talk to Seena Skybreaker.
    note-ptBR Fale com Seena Skybreaker.
    turnin 94003
step
    only Warrior Horde
    ifnotturnedin 93736
    goto 2521 59.89,72.87
    note-enUS Talk to Seena Skybreaker.
    note-ptBR Fale com Seena Skybreaker.
    train 5242
    train 7384
    train 7887
    train 72
    train 1671
step
    only Warrior Horde
    ifnotturnedin 93736
    goto 2521 59.89,72.87
    note-enUS Talk to Seena Skybreaker.
    note-ptBR Fale com Seena Skybreaker.
    train 1160
    train 6190
    train 6572
    train 6574
    train 1310185
step
    only Horde Rogue
    goto 2521 59.9,72.48
    note-enUS Talk to Eltheen Nightbreeze.
    train 1766
    train 3127
step
    only Horde
    goto 2521 59.07,72.99
    note-enUS Talk to Riaani Nightwind.
    note-ptBR Fale com Riaani Nightwind.
    turnin 93737
step
    only Horde
    goto 2521 58.99,75.46
    note-enUS Talk to Railee Thriceforged.
    vendor
step
    only Horde
    goto 2521 58.13,78.31
    note-enUS Talk to Endaria Mistgaze.
    note-ptBR Fale com Endaria Mistgaze.
    turnin 93736
step
    only Horde
    ifonquest 92708
    ifcomplete 92708
    goto 2521 59.15,79.79
    note-enUS Talk to Ayessa Dawnsinger.
    note-ptBR Fale com Ayessa Dawnsinger.
    turnin 92708
step
    only Horde
    ifnotturnedin 95350
    goto 2521 57.92,80.78
step
    only Horde Druid Skyborne
    goto 1412 @423.4,-659
    note-enUS Talk to Muln Earthfury.
    accept 94911
step
    only Horde
    goto 1412 @426.1,-658
    note-enUS Talk to Alaana Stormwalker.
    note-ptBR Fale com Alaana Stormwalker.
    accept 95350
step
    only Horde Druid Skyborne
    path seq 1456 @-110.5,-970.7 @-76.9,-1026 @-48.8,-1037.3 @-7.3,-1089.6 @-13.3,-1108.3 @-46.9,-1092.9 @-61.2,-1097.4 |only Horde Druid Skyborne
    goto 1456 @-198,-1046.5 12 |only Horde Druid Skyborne
    goto 1456 @-281.5,-1039.9
    note-enUS Talk to Turak Runetotem. |only Horde Druid Skyborne
    turnin 94911 |only Horde Druid Skyborne |opt
    accept 94913 |only Horde Druid Skyborne |opt
    note-enUS Talk to Turak Runetotem.
    turnin 94911
    accept 94913
step
    only Horde Druid Skyborne
    goto 1456 @-281.5,-1039.9
    note-enUS Talk to Turak Runetotem.
    train 8936
step
    only Horde Druid Skyborne
    goto 1456 @-281.5,-1039.9
    note-enUS Talk to Turak Runetotem.
    train 5178
step
    only Horde
    ifonquest 95350
    path seq 1456 @-110.5,-970.7 @-76.9,-1026 @-48.8,-1037.3 |only Horde !Druid
    goto 1456 @-7.3,-1089.6 25 |only Horde !Druid
    goto 1456 @26.5,-1196.7
    note-enUS Talk to Tal. |only Horde !Druid
    note-ptBR Fale com Tal. |only Horde !Druid
    fly 1454 |only Horde !Druid |opt
    note-enUS Talk to Tal.
    note-ptBR Fale com Tal.
    fly 1454
step
    only Horde
    goto 1454 54.1,68.42
    note-enUS Talk to Innkeeper Gryshka
    home
step
    only Horde
    path seq 1454 @-4460.6,1584.3
    goto 1454 @-4460,1598.6
    note-enUS Talk to Thatog
    note-enUS He is upstairs in the building
    note-ptBR Ele está no andar de cima do prédio
    accept 97246
step
    only Horde
    goto 1454 @-4482.6,1775
    note-enUS Talk to Borstan
    turnin 97246
    accept 97249
step
    only Horde
    goto 1454 @-4466.8,1954.8
    note-enUS Talk to Kor'geld
    accept 97242
step
    only Horde
    path closest 1454 @-4560,1908.5 @-4587,1918.3 @-4608,1897.4 @-4632.3,1911.6 |only Horde
    path closest 1454 @-4653.9,1950.3 @-4677.7,1971.6 @-4667.4,1997 @-4609.8,2013.5 @-4630.6,1968.1
    note-enUS Loot the Handful of Cattails and Speargrass Cuttings in the water
    note-ptBR Saqueie o Handful of Cattails e as Speargrass Cuttings na água
    objective 97242/1
    objective 97242/2
step
    only Horde Hunter
    goto 1454 @-4607.02,2100.64
    note-enUS Talk to Ormak Grimshot
    train 13795
step
    only Horde Hunter
    goto 1454 @-4611.09,2135.15
    note-enUS Talk to Xao'tsu
    train 24556
step
    only Horde Warrior
    goto 1454 @-4801.42,1980.53
    note-enUS Talk to Grezz Ragefist
    train 7384
step
    only Horde Warrior
    goto 1454 @-4801.42,1980.53
    note-enUS Talk to Grezz Ragefist
    train 1160
step
    only Horde
    goto 1454 @-4466.9,1954.5
    note-enUS Talk to Kor'geld
    turnin 97242
step
    only Horde
    goto 1454 @-4477.9,1964.8
    note-enUS Talk to Yelmak
    note-enUS You may have to wait about 10 seconds before you can accept this quest
    note-ptBR Pode ser preciso esperar cerca de 10 segundos antes de aceitar esta missão
    accept 97275
step
    only Horde
    goto 1454 @-4463,1966.2
    note-enUS Talk to Whuut
    turnin 97275
step
    only Horde
    goto 1454 @-4193.4,2001.8
    note-enUS Talk to Migi
    turnin 97249
step
    only Horde
    goto 1454 @-4205.8,2007.8
    note-enUS Talk to Thra
    accept 97326
step
    only Horde
    ifonquest 97326
    goto 1454 @-4293.6,1949.9
    note-enUS Loot the orange Rocks on the ground
    note-ptBR Saqueie as pedras laranjas no chão
    note-enUS Skip this quest if there is a lot of competition! There aren't that many Rocks and they do not respawn quickly
    note-ptBR Pule esta missão se houver muita concorrência! Não há muitas Rocks e elas demoram para reaparecer
    objective 97326/1
step
    only Horde
    ifcomplete 97326
    goto 1454 @-4205.9,2007.8
    note-enUS Talk to Thra
    turnin 97326
step
    only Horde
    goto 1454 @-4126.3,1920.1
    note-enUS Talk to Thrall.
    note-ptBR Fale com Thrall.
    turnin 95350
    accept 98024
step
    only Horde
    goto 1454 @-4226.78,1914.77
    note-enUS Talk to Zor Lonetree
    accept 1061
step
    only Horde Shaman
    goto 1454 @-4225.09,1933.29
    note-enUS Talk to Kardris Dreamseeker
    train 408341
step
    only Horde Shaman
    goto 1454 @-4225.09,1933.29
    note-enUS Talk to Kardris Dreamseeker
    train 8045
step
    only Horde Rogue
    goto 1454 @-4296.34,1762.67
    note-enUS Talk to Ormok
    train 1766
step
    only Horde Rogue
    goto 1454 @-4296.34,1762.67
    note-enUS Talk to Ormok
    train 1758
step
    only Horde Mage
    goto 1454 @-4218.64,1473.72
    note-enUS Talk to Pephredo
    train 145
step
    only Horde Mage
    goto 1454 @-4218.64,1473.72
    note-enUS Talk to Pephredo
    train 1449
step
    only Horde
    goto 1411 @-4648.55,1321.88 40
    zone 1411 |only Horde |opt
    zone 1420
    note-enUS Conjure water while waiting |only Mage
    note-ptBR Conjure água enquanto espera |only Mage
step
    only Horde
    goto 1420 @253.4,2234.85 80 |only Horde
    goto 1420 @254.6,2225.8
    note-enUS Talk to Deathguard Terrence
    accept 96895
step
    only Horde
    goto 1420 @346.94,2258.95
    note-enUS Talk to Apothecary Johaan
    accept 445
step
    only Horde
    goto 1420 @54.6,1996.6
    note-enUS Talk to Hadric Harlson
    turnin 96895
    accept 96897
    accept 96898
step
    only Horde
    ifonquest 96897 96898
    goto 1420 @-130.5,1907.8
    note-enUS Kill Dark Enforcers and Dark Neophytes. Loot them for Necrotic Crystal Fragments
    note-ptBR Mate Dark Enforcers e Dark Neophytes. Saqueie-os para obter Necrotic Crystal Fragments
    note-enUS Necrotic Crystal Fragments can also be looted on the ground
    note-ptBR Necrotic Crystal Fragments também podem ser saqueados no chão
    note-enUS Be careful! These mobs hit hard. Dark Enforcers also have an instant cast 50-70 damage ability
    note-ptBR Cuidado! Esses mobs batem forte. Os Dark Enforcers também têm uma habilidade instantânea de 50-70 de dano
    objective 96897/2
    objective 96897/1
    objective 96898/1
step
    only Horde
    ifcomplete 96897
    ifcomplete 96898
    goto 1420 @54.5,1996.4
    note-enUS Talk to Hadric Harlson
    turnin 96897
    turnin 96898
step
    only Horde
    path seq 1458 @239.14,1749.54 @255.64,1724.7 @240.68,1706.97 @241.06,1660.12 @257.08,1623.38 |only Horde
    goto 1458 @244.51,1598.73 15 |only Horde
    goto 1458 @266.39,1567.11
    note-enUS Talk to Michael Garrett
    fp
step
    only Horde
    path seq 1458 @419.89,1627.54 @428.52,1597.2 @439.17,1626.06 @476.78,1632.15 @482.34,1660.63 @539.33,1665.49 @610.42,1684.44
    goto 1458 @663.19,1600.46 35
    goto 1420 @724.25,1682.66 50
    zone 1420
step
    only Horde
    goto 1420 @629.36,1553.42
    zone 1421
]==])
