-- Convertido automaticamente de RXPGuides (Horde-01-12_Durotar.lua)
-- (c) RestedXP - CC BY-NC-SA 4.0 (ver LICENSE.txt). Não edite à mão:
-- rode tools/rxp2azimute.py de novo.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id forever.h.1-6-durotar
#name 1-6 Durotar
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 11
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Horde
#levels 1-6
#zone 1411
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup Speedrun 1-22
#subgroup-ptBR Rota rápida 1-22
#recommend Troll Orc
#next forever.h.6-10-durotar

step
    goto 1411 @-4251.46,-607.35
    note-enUS You have selected a guide meant for Orcs and Trolls. You should choose the same starter zone that you start in |only !Orc !Troll
    note-ptBR Você selecionou um guia feito para Orcs e Trolls. Escolha a mesma zona inicial em que você começou |only !Orc !Troll
    note-enUS Talk to Kaltunk
    note-ptBR Fale com Kaltunk
    accept 4641
step
    only Warlock
    goto 1411 @-4281.07,-720.15 30 |only Warlock Mage Priest
    goto 1411 @-4299.05,-494.9 30 |only Warrior Shaman
    note-enUS Kill Mottled Boars. Loot them until you have 35 copper worth of vendor items (including your armor) |only Warlock
    note-ptBR Mate Mottled Boars. Saqueie-os até ter 35 cobres em itens para vender (incluindo sua armadura) |only Warlock
    note-enUS Kill Mottled Boars. Loot them until you have 50 copper worth of vendor items (including your armor) |only Priest
    note-ptBR Mate Mottled Boars. Saqueie-os até ter 50 cobres em itens para vender (incluindo sua armadura) |only Priest
    note-enUS Kill Mottled Boars. Loot them until you have 10 copper worth of vendor items (including your armor) |only Warrior Shaman
    note-ptBR Mate Mottled Boars. Saqueie-os até ter 10 cobres em itens para vender (incluindo sua armadura) |only Warrior Shaman
    note-enUS Talk to Ruzan
    note-ptBR Fale com Ruzan
    accept 1485
step
    only Warrior Shaman
    goto 1411 @-4214.45,-565.75
    note-enUS Talk to Duokna
    note-ptBR Fale com Duokna
    vendor
step
    goto 1411 @-4198.05,-605.59 12 |only !Warrior !Shaman
    goto 1411 @-4198.58,-602.41 12 |only Warrior Shaman
    goto 1411 @-4186.42,-599.95
    note-enUS Talk to Gornek
    note-ptBR Fale com Gornek
    turnin 4641
    accept 788
step
    only Warrior Shaman
    goto 1411 @-4198.05,-605.59 10
    goto 1411 @-4230.31,-639.43 |only Warrior
    goto 1411 @-4203.87,-623.92 |only Shaman
    note-enUS Talk to Frang |only Warrior
    note-ptBR Fale com Frang |only Warrior
    note-enUS Talk to Shikrik |only Shaman
    note-ptBR Fale com Shikrik |only Shaman
    train 6673 |only Warrior
    train 8017 |only Shaman
step
    only Warlock
    path seq 1411 @-4157.87,-601.36 @-4143.06,-594.31 @-4120.86,-589.72 @-4111.87,-607 @-4157.87,-601.36 @-4143.06,-594.31 @-4120.86,-589.72 |only Warlock
    goto 1411 @-4107.11,-604.18 12 |only Warlock
    goto 1411 @-4107.11,-604.18
    note-enUS Talk to Hraug
    note-ptBR Fale com Hraug
    vendor
step
    only Warlock
    goto 1411 @-4111.87,-607
    note-enUS Talk to Nartok
    note-ptBR Fale com Nartok
    train 348
step
    only Hunter Mage Priest
    goto 1411 @-4214.45,-565.4
    note-enUS Talk to Duokna
    note-ptBR Fale com Duokna
    note-enUS Buy [Refreshing Spring Water] from her |only !Hunter
    note-ptBR Compre [Refreshing Spring Water] dela |only !Hunter
    note-enUS Buy [Rough Arrows] from her |only Hunter
    note-ptBR Compre [Rough Arrows] dela |only Hunter
    collect 159 10 |quest 6394 |q 6394/1 |only !Hunter
    collect 2512 1000 |quest 6394 |q 6394/1 |only Hunter
step
    only Warlock
    goto 1411 @-4214.45,-565.4
    note-enUS Talk to Duokna
    note-ptBR Fale com Duokna
    note-enUS Buy [Refreshing Spring Water] from her
    note-ptBR Compre [Refreshing Spring Water] dela
    collect 159 5 |quest 6394 |q 6394/1
step
    only Warlock
    ifonquest 1485
    goto 1411 @-4266.26,-563.29 25 |only Warlock
    goto 1411 @-4357.74,-180.47 100
    note-enUS Kill Mottled Boars en route to the Burning Blade Coven |only Warlock
    note-ptBR Mate Mottled Boars a caminho do Burning Blade Coven |only Warlock
    note-enUS Try to get to level 2 before getting there |only Warlock
    note-ptBR Tente chegar ao nível 2 antes de ir para lá |only Warlock
    objective 788/1 |only Warlock |opt
step
    only Warlock
    path closest 1411 @-4282.13,-250.97 @-4317.02,-258.02 @-4351.39,-250.97 @-4385.76,-256.96 @-4383.65,-216.07 @-4419.07,-221.01 @-4457.67,-205.15 @-4405.85,-189.99 @-4409.55,-169.54 @-4376.24,-197.39 @-4360.38,-176.95 @-4329.71,-196.33 @-4319.67,-169.19 @-4303.28,-186.46 @-4281.07,-148.75
    note-enUS Kill Vile Familiars. Loot them for Vile Familiar Heads
    note-ptBR Mate Vile Familiars. Saqueie-os para obter Vile Familiar Heads
    objective 1485/1
step
    path seq 1411 @-4266.26,-563.29 |only !Warlock
    goto 1411 @-4283.18,-512.53 45 |only !Warlock
    goto 1411 @-4108.7,-397.96
    note-enUS Kill Mottled Boars
    note-ptBR Mate Mottled Boars
    objective 788/1 |opt
    note-enUS Talk to Hana'zua
    note-ptBR Fale com Hana'zua
    accept 790
step
    goto 1411 @-4109.22,-546.37
    note-enUS Kill Sarkoth. Loot him for Sarkoth's Mangled Claw
    note-ptBR Mate Sarkoth. Saqueie-o para obter Sarkoth's Mangled Claw
    objective 790/1
step
    goto 1411 @-4108.7,-397.96
    note-enUS Talk to Hana'zua
    note-ptBR Fale com Hana'zua
    turnin 790
    accept 804
step
    path closest 1411 @-4146.24,-483.97 @-4179.02,-473.75 @-4218.15,-480.1 @-4252.52,-483.62 @-4283.71,-516.76 @-4317.55,-516.76 @-4350.33,-510.06 @-4379.94,-515.7 @-4379.94,-484.33 @-4352.98,-445.9 @-4385.76,-412.77 @-4384.7,-383.16 @-4383.12,-346.85 @-4349.81,-313.72 @-4315.44,-287.28 @-4281.6,-321.82 @-4239.83,-315.13 @-4213.92,-309.84 @-4184.31,-348.61 @-4184.31,-382.45 @-4183.25,-409.6 @-4182.72,-448.72
    note-enUS Kill Mottled Boars
    note-ptBR Mate Mottled Boars
    objective 788/1
step
    only Warlock
    path closest 1411 @-4146.24,-483.97 @-4179.02,-473.75 @-4218.15,-480.1 @-4252.52,-483.62 @-4283.71,-516.76 @-4317.55,-516.76 @-4350.33,-510.06 @-4379.94,-515.7 @-4379.94,-484.33 @-4352.98,-445.9 @-4385.76,-412.77 @-4384.7,-383.16 @-4383.12,-346.85 @-4349.81,-313.72 @-4315.44,-287.28 @-4281.6,-321.82 @-4239.83,-315.13 @-4213.92,-309.84 @-4184.31,-348.61 @-4184.31,-382.45 @-4183.25,-409.6 @-4182.72,-448.72
    level 3
step
    only Rogue
    goto 1411 @-4214.45,-565.4
    note-enUS Grind Mottled Boars. Loot them until you have 1 silver worth of vendor items |only Warlock
    note-ptBR Faça grind de Mottled Boars. Saqueie-os até ter 1 de prata em itens para vender |only Warlock
    note-enUS Talk to Duokna
    note-ptBR Fale com Duokna
    vendor
step
    only Warlock
    goto 1411 @-4214.4,-624
    note-enUS Talk to Ruzan
    note-ptBR Fale com Ruzan
    turnin 1485
    accept 1499
step
    only Warlock
    goto 1411 @-4228.19,-629.2
    note-enUS Talk to Zureetha
    note-ptBR Fale com Zureetha
    turnin 1499
    accept 794
step
    goto 1411 @-4198.05,-605.59 12 |only Warlock
    goto 1411 @-4198.58,-602.41 12 |only !Warlock
    goto 1411 @-4186.42,-599.95
    note-enUS Talk to Gornek
    note-ptBR Fale com Gornek
    turnin 788 |reward 2 |only Shaman
    turnin 788 |only !Shaman
    accept 789
    accept 2383 |only Orc Warrior
    accept 3065 |only Troll Warrior
    accept 3082 |only Troll Hunter
    accept 3083 |only Troll Rogue
    accept 3084 |only Troll Shaman
    accept 3085 |only Troll Priest
    accept 3086 |only Troll Mage
    accept 3087 |only Orc Hunter
    accept 3088 |only Orc Rogue
    accept 3089 |only Orc Shaman
    accept 3090 |only Orc Warlock
    turnin 804 |reward 1 |only Shaman
    turnin 804 |only !Shaman
step
    only Rogue
    path seq 1411 @-4157.87,-601.36 |only Rogue
    goto 1411 @-4144.65,-588.67 12 |only Rogue
    goto 1411 @-4144.65,-588.67
    note-enUS Talk to Rwag
    note-ptBR Fale com Rwag
    turnin 3083 |only Troll Rogue
    turnin 3088 |only Orc Rogue
    train 53
step
    only Rogue
    goto 1411 @-4144.65,-588.67
    note-enUS Talk to Rwag
    note-ptBR Fale com Rwag
    turnin 3083 |only Troll Rogue
    turnin 3088 |only Orc Rogue
step
    only Shaman
    goto 1411 @-4948.35,-769.15
    note-enUS Talk to Kzan
    note-ptBR Fale com Kzan
    vendor
step
    only Shaman
    note-enUS Talk to Kzan
    note-ptBR Fale com Kzan
    note-enUS Buy a [Short Staff] from him
    note-ptBR Compre um [Short Staff] dele
    collect 2132 1 |quest 5441 |q 5441/1
step
    only Rogue Warrior
    goto 1411 @-4106,-593.4
    note-enUS Talk to Norzsh
    note-ptBR Fale com Norzsh
    note-enUS Buy a [Mining Pick] from him
    note-ptBR Compre uma [Mining Pick] dele
    train 2575
    collect 2901 1 |quest 792 |q 792/1
    note-enUS This will allow you to find [Rough Stones] from nodes in order to craft [Sharpening Stones] (+2 Weapon Damage for 30 minutes)
    note-ptBR Isto permitirá obter [Rough Stones] dos veios para criar [Sharpening Stones] (+2 de dano da arma por 30 minutos)
step
    only Warlock
    goto 1411 @-4107.11,-604.18
    note-enUS Talk to Hraug
    note-ptBR Fale com Hraug
    vendor
step
    only Warlock
    goto 1411 @-4111.87,-607
    note-enUS Talk to Nartok
    note-ptBR Fale com Nartok
    turnin 3090
    train 172
step
    goto 1411 @-4221.85,-561.52
    note-enUS Talk to Galgar
    note-ptBR Fale com Galgar
    accept 4402
step
    only !Rogue !Shaman
    goto 1411 @-4214.45,-565.4
    note-enUS Talk to Duokna
    note-ptBR Fale com Duokna
    note-enUS Buy [Refreshing Spring Water] from her |only !Rogue !Warrior !Hunter !Shaman
    note-ptBR Compre [Refreshing Spring Water] dela |only !Rogue !Warrior !Hunter !Shaman
    note-enUS Buy [Rough Arrows] from her |only Hunter
    note-ptBR Compre [Rough Arrows] dela |only Hunter
    collect 159 15 |quest 6394 |q 6394/1 |only !Rogue !Warrior !Hunter !Shaman
    collect 2512 1000 |quest 6394 |q 6394/1 |only Hunter
    vendor
step
    only Shaman
    goto 1411 @-4203.87,-623.92
    note-enUS Talk to Shikrik
    note-ptBR Fale com Shikrik
    turnin 3084 |only Troll
    turnin 3089 |only Orc
step
    only Mage
    goto 1411 @-4210.22,-625.33
    note-enUS Talk to Mai'ah
    note-ptBR Fale com Mai'ah
    turnin 3086 |only Troll
    train 1459
step
    only !Warlock
    goto 1411 @-4228.19,-629.2
    note-enUS Talk to Zureetha
    note-ptBR Fale com Zureetha
    accept 792
step
    only Hunter
    goto 1411 @-4227.66,-635.2
    note-enUS Talk to Jen'shan
    note-ptBR Fale com Jen'shan
    turnin 3082 |only Troll
    turnin 3087 |only Orc
step
    only Warrior
    goto 1411 @-4230.31,-639.43
    note-enUS Talk to Frang
    note-ptBR Fale com Frang
    turnin 2383 |only Orc
    turnin 3065 |only Troll
step
    goto 1411 @-4322.31,-611.58
    note-enUS Talk to Thazz'ril
    note-ptBR Fale com Thazz'ril
    accept 5441
step
    only !Warlock
    path closest 1411 @-4340.82,-628.5 @-4375.71,-507.59 @-4467.19,-506.53 @-4282.13,-250.97 @-4317.02,-258.02 @-4351.39,-250.97 @-4385.76,-256.96 @-4383.65,-216.07 @-4419.07,-221.01 @-4457.67,-205.15 @-4405.85,-189.99 @-4409.55,-169.54 @-4376.24,-197.39 @-4360.38,-176.95 @-4329.71,-196.33 @-4319.67,-169.19 @-4303.28,-186.46 @-4281.07,-148.75
    note-enUS Loot the Cactus Apples near the Cacti
    note-ptBR Saqueie as Cactus Apples perto dos cactos
    objective 4402/1 |opt
    note-enUS Use the [Foreman's Blackjack] on sleeping Lazy Peons
    note-ptBR Use o [Foreman's Blackjack] nos Lazy Peons que estão dormindo
    objective 5441/1 |opt
    use 16114 |opt
    note-enUS Kill Scorpid Workers. Loot them for Scorpid Worker Tails |only !Warlock
    note-ptBR Mate Scorpid Workers. Saqueie-os para obter Scorpid Worker Tails |only !Warlock
    objective 789/1 |only !Warlock |opt
    note-enUS Kill Vile Familiars
    note-ptBR Mate Vile Familiars
    objective 792/1
step
    path closest 1411 @-4249.87,-246.04 @-4226.08,-250.62 @-4177.96,-248.5 @-4181.66,-278.47 @-4149.41,-319 @-4112.4,-351.43 @-4081.2,-354.25 @-4046.83,-352.14 @-4048.95,-383.16 @-4053.71,-415.94 @-4084.37,-449.08 @-4121.91,-449.78 @-4116.63,-513.23 @-4073.8,-519.22 @-4079.61,-553.06 @-4082.26,-576.68 @-4084.37,-606.29 @-4115.57,-608.05 @-4146.24,-583.03 @-4149.94,-543.55 @-4177.43,-519.93 @-4144.65,-507.94 @-4149.41,-450.13 @-4147.82,-416.65 @-4148.88,-376.46 @-4156.28,-350.73 @-4177.96,-315.13 @-4210.22,-283.4 @-4240.35,-293.27 @-4284.24,-283.05 @-4349.81,-287.63 @-4384.7,-281.99 @-4386.82,-318.65 @-4419.07,-345.79 @-4452.38,-385.63 @-4451.85,-417.7 @-4455.03,-450.49 @-4478.29,-449.08 @-4451.85,-417.7 @-4452.38,-385.63 @-4442.34,-347.2 @-4446.57,-313.01 @-4451.33,-283.4 @-4419.6,-246.04 @-4384.7,-281.99 @-4349.81,-287.63 @-4284.24,-283.05
    note-enUS Kill Scorpid Workers. Loot them for Scorpid Worker Tails
    note-ptBR Mate Scorpid Workers. Saqueie-os para obter Scorpid Worker Tails
    objective 789/1
step
    path closest 1411 @-4340.82,-628.5 @-4375.71,-507.59 @-4467.19,-506.53 @-4433.88,-329.93 @-4452.38,-232.64 @-4283.71,-228.76 @-4220.26,-209.73 @-4144.65,-269.65 @-4125.62,-321.12 @-4015.64,-371.53
    note-enUS Use the [Foreman's Blackjack] on sleeping Lazy Peons
    note-ptBR Use o [Foreman's Blackjack] nos Lazy Peons que estão dormindo
    objective 5441/1
    use 16114
step
    path closest 1411 @-4146.24,-483.97 @-4179.02,-473.75 @-4218.15,-480.1 @-4252.52,-483.62 @-4283.71,-516.76 @-4317.55,-516.76 @-4350.33,-510.06 @-4379.94,-515.7 @-4379.94,-484.33 @-4352.98,-445.9 @-4385.76,-412.77 @-4384.7,-383.16 @-4383.12,-346.85 @-4349.81,-313.72 @-4315.44,-287.28 @-4281.6,-321.82 @-4239.83,-315.13 @-4213.92,-309.84 @-4184.31,-348.61 @-4184.31,-382.45 @-4183.25,-409.6 @-4182.72,-448.72
    level 4
step
    ifcomplete 4402
    goto 1411 @-4221.85,-561.52
    note-enUS Talk to Galgar
    note-ptBR Fale com Galgar
    turnin 4402
step
    goto 1411 @-4214.45,-565.4
    note-enUS Talk to Duokna
    note-ptBR Fale com Duokna
    note-enUS Buy [Refreshing Spring Water] from her |only !Rogue !Warrior !Hunter !Shaman
    note-ptBR Compre [Refreshing Spring Water] dela |only !Rogue !Warrior !Hunter !Shaman
    note-enUS Buy [Rough Arrows] from her |only Hunter
    note-ptBR Compre [Rough Arrows] dela |only Hunter
    collect 159 5 |quest 6394 |q 6394/1 |only !Rogue !Warrior !Hunter !Shaman
    collect 2512 1000 |quest 6394 |q 6394/1 |only Hunter
    vendor
step
    path seq 1411 @-4198.58,-602.41
    goto 1411 @-4186.42,-599.95
    note-enUS Talk to Gornek
    note-ptBR Fale com Gornek
    turnin 789 |reward 2 |only Shaman
    turnin 789 |only !Shaman
step
    only Shaman
    path seq 1411 @-4203.87,-623.92
    goto 1411 @-4204.4,-629.91
    note-enUS Talk to Shikrik and Canaga
    note-ptBR Fale com Shikrik e Canaga
    train 8042
    accept 1516
step
    only Mage
    goto 1411 @-4210.22,-625.33
    note-enUS Talk to Mai'ah
    note-ptBR Fale com Mai'ah
    train 116
step
    only Priest
    goto 1411 @-4202.28,-617.22
    note-enUS Talk to Ken'jai
    note-ptBR Fale com Ken'jai
    train 1243
    train 589
step
    only Priest
    goto 1411 @-4202.28,-617.22
    note-enUS Talk to Ken'jai
    note-ptBR Fale com Ken'jai
    train 589
step
    only Priest
    goto 1411 @-4202.28,-617.22
    note-enUS Talk to Ken'jai
    note-ptBR Fale com Ken'jai
    train 589
    turnin 3085
step
    only Priest
    goto 1411 @-4202.28,-617.22
    note-enUS Talk to Ken'jai
    note-ptBR Fale com Ken'jai
    train 1243
    train 589
    turnin 3085
step
    only Priest
    goto 1411 @-4202.28,-617.22
    note-enUS Talk to Ken'jai
    note-ptBR Fale com Ken'jai
    train 589
    turnin 3085
step
    only !Warlock
    goto 1411 @-4228.19,-629.2
    note-enUS Talk to Zureetha
    note-ptBR Fale com Zureetha
    turnin 792
    accept 794
step
    only Hunter
    goto 1411 @-4227.66,-635.2
    note-enUS Talk to Jen'shan
    note-ptBR Fale com Jen'shan
    train 1978
step
    only Warrior
    goto 1411 @-4230.31,-639.43
    note-enUS Talk to Frang
    note-ptBR Fale com Frang
    train 100
    train 772
    train 772
step
    only Warrior
    goto 1411 @-4230.31,-639.43
    note-enUS Talk to Frang
    note-ptBR Fale com Frang
    train 772
step
    only Warrior
    goto 1411 @-4230.31,-639.43
    note-enUS Talk to Frang
    note-ptBR Fale com Frang
    train 100
step
    goto 1411 @-4322.31,-611.58
    note-enUS Talk to Thazz'ril
    note-ptBR Fale com Thazz'ril
    turnin 5441
    accept 6394
step
    path closest 1411 @-4324.43,-480.1 @-4259.92,-411.01 @-4279.48,-402.55 @-4333.94,-360.95 @-4335.53,-294.68 @-4321.25,-243.22 @-4366.2,-253.44 @-4391.05,-328.52 @-4440.75,-319.36 @-4462.43,-405.37 @-4398.98,-411.71 @-4324.43,-480.1
    level 4 |opt
    note-enUS Loot the Cactus Apples near the Cacti
    note-ptBR Saqueie as Cactus Apples perto dos cactos
    objective 4402/1
step
    only !Warrior !Rogue !Shaman
    ifonquest 4402
    path closest 1411 @-4282.13,-250.97 @-4317.02,-258.02 @-4351.39,-250.97 @-4385.76,-256.96 @-4383.65,-216.07 @-4419.07,-221.01 @-4457.67,-205.15 @-4405.85,-189.99 @-4409.55,-169.54 @-4376.24,-197.39 @-4360.38,-176.95 @-4329.71,-196.33 @-4319.67,-169.19 @-4303.28,-186.46 @-4281.07,-148.75
    level 4
step
    only !Warrior !Rogue !Shaman
    ifturnedin 4402
    path closest 1411 @-4282.13,-250.97 @-4317.02,-258.02 @-4351.39,-250.97 @-4385.76,-256.96 @-4383.65,-216.07 @-4419.07,-221.01 @-4457.67,-205.15 @-4405.85,-189.99 @-4409.55,-169.54 @-4376.24,-197.39 @-4360.38,-176.95 @-4329.71,-196.33 @-4319.67,-169.19 @-4303.28,-186.46 @-4281.07,-148.75
    level 5
step
    path seq 1411 @-4360.38,-175.18 @-4361.44,-144.16 @-4311.74,-113.14
    goto 1411 @-4274.19,-87.76 10
    note-enUS Kill Felstalkers. Loot them for Felstalker Hooves |only Shaman
    note-ptBR Mate Felstalkers. Saqueie-os para obter Felstalker Hooves |only Shaman
    objective 1516/1 |only Shaman |opt
    note-enUS Loot Thazz'ril's Pick against the wall
    note-ptBR Saqueie a Thazz'ril's Pick encostada na parede
    objective 6394/1
step
    goto 1411 @-4220.26,-59.56
    note-enUS Kill Yarrog Baneshadow. Loot him for the Burning Blade Medallion
    note-ptBR Mate Yarrog Baneshadow. Saqueie-o para obter o Burning Blade Medallion
    objective 794/1
step
    only Shaman
    path closest 1411 @-4220.26,-59.56 @-4234.54,5.65 @-4265.73,-26.43 @-4275.25,-47.58 @-4295.87,-54.63 @-4332.36,-42.64 @-4332.89,-74.02 @-4330.24,-115.26 @-4349.28,-131.12 @-4368.84,-138.52 @-4349.28,-131.12 @-4315.97,-131.47 @-4300.1,-99.4 @-4284.77,-105.74 @-4282.13,-138.17 @-4260.45,-150.16 @-4238.77,-138.88 @-4203.34,-102.92 @-4211.27,-76.84 @-4250.4,-88.82
    note-enUS Kill Felstalkers. Loot them for Felstalker Hooves
    note-ptBR Mate Felstalkers. Saqueie-os para obter Felstalker Hooves
    objective 1516/1
step
    ifturnedin 4402
    path closest 1411 @-4220.26,-59.56 @-4234.54,5.65 @-4265.73,-26.43 @-4275.25,-47.58 @-4295.87,-54.63 @-4332.36,-42.64 @-4332.89,-74.02 @-4330.24,-115.26 @-4349.28,-131.12 @-4368.84,-138.52 @-4349.28,-131.12 @-4315.97,-131.47 @-4300.1,-99.4 @-4284.77,-105.74 @-4282.13,-138.17 @-4260.45,-150.16 @-4238.77,-138.88 @-4203.34,-102.92 @-4211.27,-76.84 @-4250.4,-88.82
    level 5 |only !Shaman
    level 5 |only Shaman
step
    ifonquest 4402
    path closest 1411 @-4220.26,-59.56 @-4234.54,5.65 @-4265.73,-26.43 @-4275.25,-47.58 @-4295.87,-54.63 @-4332.36,-42.64 @-4332.89,-74.02 @-4330.24,-115.26 @-4349.28,-131.12 @-4368.84,-138.52 @-4349.28,-131.12 @-4315.97,-131.47 @-4300.1,-99.4 @-4284.77,-105.74 @-4282.13,-138.17 @-4260.45,-150.16 @-4238.77,-138.88 @-4203.34,-102.92 @-4211.27,-76.84 @-4250.4,-88.82
    level 5 |only !Shaman
    level 5 |only Shaman
step
    path seq 1411 @-4326.01,-41.23
    goto 1411 @-4709.36,274.96
    note-enUS Talk to Gar'thok
    note-ptBR Fale com Gar'thok
    note-enUS You can talk to him from outside or on top of the bunker
    note-ptBR Você pode falar com ele do lado de fora ou de cima do bunker
    accept 784
step
    goto 1411 @-4665.4,311.9
    note-enUS Talk to Cook Torka
    note-ptBR Fale com Cook Torka
    accept 96825
step
    path seq 1411 @-4617.88,290.47 @-4611.01,293.64 @-4616.82,317.26 @-4604.13,364.49 @-4588.8,383.53 @-4593.03,384.94 @-4594.09,389.87 @-4589.86,390.93 @-4589.33,387.76 @-4594.62,386.35 @-4595.15,399.74 @-4585.1,396.92
    goto 1411 @-4600.43,384.59
    note-enUS Talk to Furl
    note-ptBR Fale com Furl
    accept 791
step
    only Warrior Rogue
    goto 1411 @-4701.95,366.96
    note-enUS Talk to Krunn
    note-ptBR Fale com Krunn
    train 2575
    note-enUS This will allow you to find [Rough Stones] from nodes in order to craft [Sharpening Stones] (+2 Weapon Damage for 30 minutes)
    note-ptBR Isto permitirá obter [Rough Stones] dos veios para criar [Sharpening Stones] (+2 de dano da arma por 30 minutos)
step
    only Warrior Rogue
    goto 1411 @-4706.71,358.15
    note-enUS Talk to Wuark
    note-ptBR Fale com Wuark
    note-enUS Buy a [Mining Pick] from him
    note-ptBR Compre uma [Mining Pick] dele
    collect 2901 1 |quest 784 |q 784/1
step
    only Warrior Rogue
    ifskillbelow blacksmithing 1
    goto 1411 @-4714.64,372.6
    note-enUS Talk to Dwukk
    note-ptBR Fale com Dwukk
    train 2018
step
    goto 1411 @-4815.2,306.8
    note-enUS Talk to Turroc
    note-ptBR Fale com Turroc
    accept 96822
step
    goto 1411 @-4322.31,-611.58
    hearth |opt
    use 6948 |opt
    note-enUS Talk to Thazz'ril
    note-ptBR Fale com Thazz'ril
    turnin 6394
step
    goto 1411 @-4221.85,-561.52
    note-enUS Talk to Galgar
    note-ptBR Fale com Galgar
    turnin 4402
step
    ifonquest 794
    goto 1411 @-4214.45,-565.4
    note-enUS Talk to Duokna
    note-ptBR Fale com Duokna
    vendor
step
    only Shaman
    path seq 1411 @-4203.87,-623.92
    goto 1411 @-4204.4,-629.91
    note-enUS Talk to Shikrik and Canaga
    note-ptBR Fale com Shikrik e Canaga
    train 332
    turnin 1516
    accept 1517
step
    only Shaman
    goto 1411 @-4204.4,-629.91
    note-enUS Talk to Canaga
    note-ptBR Fale com Canaga
    turnin 1516
    accept 1517
step
    goto 1411 @-4228.19,-629.2
    note-enUS Talk to Zureetha
    note-ptBR Fale com Zureetha
    turnin 794
    accept 805
step
    ifturnedin 794
    goto 1411 @-4223.8,-631
    note-enUS Click the Lost Journal on top of the barrel
    note-ptBR Clique no Lost Journal em cima do barril
    accept 96652
step
    only Priest
    goto 1411 @-4202.28,-617.22
    note-enUS Talk to Ken'jai
    note-ptBR Fale com Ken'jai
    accept 5649
    train 591
    train 17
step
    only Mage
    goto 1411 @-4210.22,-625.33
    note-enUS Talk to Mai'ah
    note-ptBR Fale com Mai'ah
    train 143
    train 2136
step
    only Hunter
    goto 1411 @-4227.66,-635.2
    note-enUS Talk to Jen'shan
    note-ptBR Fale com Jen'shan
    train 1130
    train 3044
step
    only Hunter
    goto 1411 @-4227.66,-635.2
    note-enUS Talk to Jen'shan
    note-ptBR Fale com Jen'shan
    train 3044
step
    only Warrior
    goto 1411 @-4230.31,-639.43
    note-enUS Talk to Frang
    note-ptBR Fale com Frang
    train 3127
    train 6343
step
    only Warrior
    goto 1411 @-4230.31,-639.43
    note-enUS Talk to Frang
    note-ptBR Fale com Frang
    train 3127
step
    only Rogue
    path seq 1411 @-4190.12,-603.12 @-4157.87,-601.36 |only Rogue
    goto 1411 @-4144.65,-588.67 12 |only Rogue
    goto 1411 @-4144.65,-588.67
    note-enUS Talk to Rwag
    note-ptBR Fale com Rwag
    train 1757
    train 1776
step
    only Rogue
    goto 1411 @-4144.65,-588.67
    note-enUS Talk to Rwag
    note-ptBR Fale com Rwag
    train 1757
step
    only Warlock
    path seq 1411 @-4190.12,-603.12 @-4157.87,-601.36 @-4143.06,-594.31 @-4120.86,-589.72 |only Warlock
    goto 1411 @-4107.11,-604.18 12 |only Warlock
    goto 1411 @-4107.11,-604.18
    note-enUS Talk to Hraug
    note-ptBR Fale com Hraug
    note-enUS Buy the [Grimoire of Blood Pact] from him
    note-ptBR Compre o [Grimoire of Blood Pact] dele
    collect 16321 1 |quest 817 |q 817/1
    vendor
    train 6307
step
    only Warlock
    goto 1411 @-4111.87,-607
    note-enUS Talk to Nartok
    note-ptBR Fale com Nartok
    train 695
    train 1454
step
    only Warlock
    goto 1411 @-4111.87,-607
    note-enUS Talk to Nartok
    note-ptBR Fale com Nartok
    train 695
step
    only Shaman
    path seq 1411 @-4255.16,-645.07 @-4245.64,-691.95 @-4146.77,-787.12 @-4120.86,-813.21 @-4220.79,-841.76 @-4266.26,-853.39 |only Shaman
    goto 1411 @-4295.87,-883.36 25 |only Shaman
    goto 1411 @-4290.59,-878.07
    use 6635 |only Shaman |opt
    note-enUS Talk to the Manifestation
    note-ptBR Fale com a Manifestation
    turnin 1517
    accept 1518
step
    only Shaman
    goto 1411 @-4204.4,-629.91
    note-enUS Talk to Canaga
    note-ptBR Fale com Canaga
    turnin 1518
step
    only Shaman
    goto 1411 @-4203.87,-623.92
    note-enUS Talk to Shikrik
    note-ptBR Fale com Shikrik
    train 332
step
    ifonquest 805
    path seq 1411 @-4452.38,-631.32 @-4554.43,-628.5
    goto 1411 @-4600.96,-603.82 25
]==])

register([==[
#format 1
#id forever.h.6-10-durotar
#name 6-10 Durotar
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 11
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Horde
#levels 6-10
#zone 1411
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup Speedrun 1-22
#subgroup-ptBR Rota rápida 1-22
#recommend Troll Orc
#next forever.h.10-12-durotar

step
    goto 1411 @-4715.17,-599.24
    note-enUS Talk to Ukor
    note-ptBR Fale com Ukor
    accept 2161
step
    path closest 1411 @-4828.32,-777.61 @-4822.51,-881.59 @-4845.24,-829.42 @-4828.32,-777.61
    note-enUS Talk to Lar
    note-ptBR Fale com Lar
    note-enUS He patrols a little
    note-ptBR Ele patrulha um pouco
    accept 786
step
    goto 1411 @-4885.2,-852.5
    note-enUS Talk to Xar'Ti
    note-ptBR Fale com Xar'Ti
    accept 97223
step
    path seq 1411 @-4920.86,-797.7 @-4920.33,-814.27
    goto 1411 @-4920.33,-825.55
    note-enUS Talk to Vel'rin, Vornal and Gadrin
    note-ptBR Fale com Vel'rin, Vornal e Gadrin
    accept 817
    accept 96821
    accept 818
    accept 97225
    turnin 805
    accept 808
    accept 826
    accept 823
step
    only !Rogue !Warrior
    path seq 1411 @-4931.96,-815.32 @-4939.89,-793.12
    goto 1411 @-4960,-791.3
    note-enUS Talk to Pa'zula
    note-ptBR Fale com Pa'zula
    note-enUS This will unlock a quest. Skip this step if you already have 2 professions
    note-ptBR Isto desbloqueará uma missão. Pule esta etapa se já tiver 2 profissões
    train 7411
step
    only !Rogue !Warrior
    goto 1411 @-4960,-791.3
    note-enUS Talk to Pa'zula
    note-ptBR Fale com Pa'zula
    accept 96873
step
    only Rogue
    goto 1411 @-4938.83,-779.37
    note-enUS Talk to K'waii. Buy [Weighted Throwing Axe] from her
    note-ptBR Fale com K'waii. Compre [Weighted Throwing Axe] dela
    collect 3131 1 |quest 786 |q 786/1
step
    only Warlock Mage Priest
    goto 1411 @-4938.83,-779.37
    note-enUS Talk to K'waii
    note-ptBR Fale com K'waii
    note-enUS Buy [Refreshing Spring Water] from her -Refreshing Spring Water (20)
    note-ptBR Compre [Refreshing Spring Water] dela -Refreshing Spring Water (20)
    collect 159 20 |quest 786 |q 786/1
step
    only Warlock Mage Priest
    goto 1411 @-4938.83,-779.37
    note-enUS Talk to K'waii
    note-ptBR Fale com K'waii
    note-enUS Buy [Refreshing Spring Water] from her -Refreshing Spring Water (10)
    note-ptBR Compre [Refreshing Spring Water] dela -Refreshing Spring Water (10)
    collect 159 10 |quest 786 |q 786/1
step
    only Shaman
    goto 1411 @-4948.35,-769.15
    note-enUS Talk to Trayexir
    note-ptBR Fale com Trayexir
    vendor
step
    only Shaman
    goto 1411 @-4948.35,-769.15
    note-enUS Talk to Trayexir. Buy a [Walking Stick] from him
    note-ptBR Fale com Trayexir. Compre [Walking Stick] dele
    collect 2495 1 |quest 786 |q 786/1
step
    only Rogue
    goto 1411 @-4948.35,-769.15
    note-enUS Talk to Trayexir
    note-ptBR Fale com Trayexir
    vendor
step
    only Rogue
    goto 1411 @-4948.35,-769.15
    note-enUS Talk to Trayexir. Buy a [Stiletto] from him
    note-ptBR Fale com Trayexir. Compre [Stiletto] dele
    collect 2494 1 |quest 786 |q 786/1
step
    only Orc Warrior
    goto 1411 @-4948.35,-769.15
    note-enUS Talk to Trayexir
    note-ptBR Fale com Trayexir
    vendor
step
    only Orc Warrior
    goto 1411 @-4948.35,-769.15
    note-enUS Talk to Trayexir. Buy a [Large Axe] from him
    note-ptBR Fale com Trayexir. Compre [Large Axe] dele
    collect 2491 1 |quest 786 |q 786/1
step
    only Troll Warrior
    goto 1411 @-4948.35,-769.15
    note-enUS Talk to Trayexir
    note-ptBR Fale com Trayexir
    vendor
step
    only Troll Warrior
    goto 1411 @-4948.35,-769.15
    note-enUS Talk to Trayexir. Buy a [Tomahawk] from him
    note-ptBR Fale com Trayexir. Compre [Tomahawk] dele
    collect 2490 1 |quest 786 |q 786/1
step
    only Hunter
    goto 1411 @-4948.35,-769.15
    note-enUS Talk to Trayexir
    note-ptBR Fale com Trayexir
    vendor
step
    only Hunter
    goto 1411 @-4948.35,-769.15
    note-enUS Talk to Trayexir. Buy a [Hornwood Recurve Bow] from him
    note-ptBR Fale com Trayexir. Compre [Hornwood Recurve Bow] dele
    collect 2506 1 |quest 786 |q 786/1
step
    only Mage
    goto 1411 @-4939.36,-838.94
    note-enUS Equip the [Weighted Throwing Axe] |only Rogue
    note-ptBR Equipe o [Weighted Throwing Axe] |only Rogue
    use 3131 |only Rogue |opt
    note-enUS Equip the [Walking Stick] |only Shaman
    note-ptBR Equipe o [Walking Stick] |only Shaman
    use 2495 |only Shaman |opt
    note-enUS Equip the [Stiletto] |only Rogue
    note-ptBR Equipe o [Stiletto] |only Rogue
    use 2494 |only Rogue |opt
    note-enUS Equip the [large Axe] |only Orc Warrior
    note-ptBR Equipe o [large Axe] |only Orc Warrior
    use 2491 |only Orc Warrior |opt
    note-enUS Equip the [Tomahawk] |only Troll Warrior
    note-ptBR Equipe o [Tomahawk] |only Troll Warrior
    use 2490 |only Troll Warrior |opt
    note-enUS Equip the [Hornwood Recurve Bow] |only Hunter
    note-ptBR Equipe o [Hornwood Recurve Bow] |only Hunter
    use 2506 |only Hunter |opt
    note-enUS Talk to Un'Thuwa
    note-ptBR Fale com Un'Thuwa
    train 143
    train 2136
step
    ifonquest 818
    path seq 1411 @-5057.8,-866.79 @-5014.97,-937.99 @-4908.69,-998.27 @-4829.91,-1091.33
    goto 1411 @-4722.57,-1117.42 40
    note-enUS Cast [Find Minerals] and mine any Copper Vein you find for [Rough Stones]. Make [Sharpening Stones] from them |only Warrior Rogue
    note-ptBR Lance [Find Minerals] e minere qualquer Copper Vein que encontrar para obter [Rough Stones]. Faça [Sharpening Stones] com elas |only Warrior Rogue
    collect 2862 1 |quest 786 |q 786/1 |only Warrior Rogue |opt
    train 2575 |only Warrior Rogue |opt
    note-enUS Run down the beach. Kill Crawlers and Makruras. Loot them for their Mucus and Eyes. You do not have to finish this step here.
    note-ptBR Desça pela praia. Mate Crawlers e Makruras. Saqueie-os para obter Mucus e Eyes. Não precisa terminar este passo aqui.
    objective 818/2 |opt
    objective 818/1 |opt
step
    ifonquest 786
    goto 1411 @-4653.84,-983.47 30
    note-enUS Kill Kolkar Drudges and Kolkar Outrunners. Loot them for their Canvas Scraps
    note-ptBR Mate Kolkar Drudges e Kolkar Outrunners. Saqueie-os para obter Canvas Scraps
    objective 791/1 |opt
step
    goto 1411 @-4596.2,-1057.14
    note-enUS Start collecting 3 stacks of [Linen Cloth] as you quest throughout Durotar. This will be used to make your wand later |only Priest
    note-ptBR Comece a juntar 3 pilhas de [Linen Cloth] enquanto faz missões por Durotar. Elas serão usadas para fazer sua varinha mais tarde |only Priest
    note-enUS Skip this step if you've already bought a wand or can get one cheap from the AH. |only Priest
    note-ptBR Pule este passo se já comprou uma varinha ou se consegue uma barata na Casa de Leilões. |only Priest
    collect 2589 60 |only Priest |opt
    note-enUS Be careful if Kolkanis is up, he is a level 9 rare. You may have to use a [Minor Healing Potion] if you have it
    note-ptBR Cuidado se Kolkanis estiver presente, ele é um raro de nível 9. Talvez você precise usar uma [Minor Healing Potion] se tiver
    note-enUS Burn the Attack Plan inside the tent on the ground
    note-ptBR Queime o Attack Plan no chão dentro da tenda
    objective 786/1
step
    goto 1411 @-4482.52,-917.9
    note-enUS Burn the Attack Plan on the ground
    note-ptBR Queime o Attack Plan no chão
    objective 786/2
step
    goto 1411 @-4406.91,-974.3
    note-enUS Burn the Attack Plan on the ground
    note-ptBR Queime o Attack Plan no chão
    objective 786/3
step
    goto 1411 @-4410.4,-963.5
    note-enUS Talk to Pal'juh
    note-ptBR Fale com Pal'juh
    note-enUS This starts an escort quest
    note-ptBR Isto inicia uma missão de escolta
    note-enUS If Pal'juh is not there, feel free to skip this step and deathskip back to Sen'jin Village at the Bonfire
    note-ptBR Se Pal'juh não estiver lá, fique à vontade para pular esta etapa e morrer de propósito para voltar a Sen'jin Village na Bonfire
    accept 99123 |noauto
step
    ifonquest 99123
    goto 1411 @-4681.3,-986.8
    note-enUS Escort Pal'juh out of Kolkar Crag
    note-ptBR Escolte Pal'juh para fora de Kolkar Crag
    objective 99123/1
step
    ifcomplete 786
    path closest 1411 @-4828.32,-777.61 @-4822.51,-881.59 @-4845.24,-829.42 @-4828.32,-777.61
    note-enUS Talk to Lar
    note-ptBR Fale com Lar
    note-enUS He patrols a little
    note-ptBR Ele patrulha um pouco
    turnin 786 |reward 1 |only Shaman
    turnin 786 |only !Shaman
step
    ifcomplete 99123
    goto 1411 @-4920.9,-814
    note-enUS Talk to Master Vornal
    note-ptBR Fale com Master Vornal
    turnin 99123
step
    only Shaman
    goto 1411 @-4948.35,-769.15
    note-enUS Talk to Trayexir
    note-ptBR Fale com Trayexir
    vendor
step
    only Shaman
    goto 1411 @-4948.35,-769.15
    note-enUS Talk to Trayexir. Buy a [Walking Stick] from him
    note-ptBR Fale com Trayexir. Compre [Walking Stick] dele
    collect 2495 1 |quest 823 |q 823/1
step
    only Rogue
    goto 1411 @-4948.35,-769.15
    note-enUS Talk to Trayexir
    note-ptBR Fale com Trayexir
    vendor
step
    only Rogue
    goto 1411 @-4948.35,-769.15
    note-enUS Talk to Trayexir. Buy a [Stiletto] from him
    note-ptBR Fale com Trayexir. Compre [Stiletto] dele
    collect 2494 1 |quest 823 |q 823/1
step
    only Orc Warrior
    goto 1411 @-4948.35,-769.15
    note-enUS Talk to Trayexir
    note-ptBR Fale com Trayexir
    vendor
step
    only Orc Warrior
    goto 1411 @-4948.35,-769.15
    note-enUS Talk to Trayexir. Buy a [large Axe] from him
    note-ptBR Fale com Trayexir. Compre [large Axe] dele
    collect 2491 1 |quest 823 |q 823/1
step
    only Troll Warrior
    goto 1411 @-4948.35,-769.15
    note-enUS Talk to Trayexir
    note-ptBR Fale com Trayexir
    vendor
step
    only Troll Warrior
    goto 1411 @-4948.35,-769.15
    note-enUS Talk to Trayexir. Buy a [Tomahawk] from him
    note-ptBR Fale com Trayexir. Compre [Tomahawk] dele
    collect 2490 1 |quest 823 |q 823/1
step
    only Hunter
    goto 1411 @-4948.35,-769.15
    note-enUS Talk to Trayexir
    note-ptBR Fale com Trayexir
    vendor
step
    only Hunter
    goto 1411 @-4948.35,-769.15
    note-enUS Talk to Trayexir. Buy a [Hornwood Recurve Bow] from him
    note-ptBR Fale com Trayexir. Compre [Hornwood Recurve Bow] dele
    collect 2506 1 |quest 823 |q 823/1
step
    ifcomplete 818
    goto 1411 @-4920.86,-813.91
    note-enUS Equip the [Weighted Throwing Axe] |only Rogue
    note-ptBR Equipe o [Weighted Throwing Axe] |only Rogue
    use 3131 |only Rogue |opt
    note-enUS Equip the [Walking Stick] |only Shaman
    note-ptBR Equipe o [Walking Stick] |only Shaman
    use 2495 |only Shaman |opt
    note-enUS Equip the [Stiletto] |only Rogue
    note-ptBR Equipe o [Stiletto] |only Rogue
    use 2494 |only Rogue |opt
    note-enUS Equip the [large Axe] |only Orc Warrior
    note-ptBR Equipe o [large Axe] |only Orc Warrior
    use 2491 |only Orc Warrior |opt
    note-enUS Equip the [Tomahawk] |only Troll Warrior
    note-ptBR Equipe o [Tomahawk] |only Troll Warrior
    use 2490 |only Troll Warrior |opt
    note-enUS Equip the [Hornwood Recurve Bow] |only Hunter
    note-ptBR Equipe o [Hornwood Recurve Bow] |only Hunter
    use 2506 |only Hunter |opt
    note-enUS Talk to Vornal
    note-ptBR Fale com Vornal
    turnin 818
step
    only Warlock Mage Priest
    goto 1411 @-4938.83,-779.37
    note-enUS Talk to K'waii
    note-ptBR Fale com K'waii
    note-enUS Buy [Refreshing Spring Water] from her -Refreshing Spring Water (20)
    note-ptBR Compre [Refreshing Spring Water] dela -Refreshing Spring Water (20)
    vendor
    collect 159 20 |quest 784 |q 784/1
step
    only !Warlock !Mage !Priest
    goto 1411 @-4903.41,-786.42
    note-enUS Talk to Hai'zan
    note-ptBR Fale com Hai'zan
    note-enUS Buy [Haunch of Meat] from him if you can afford it |only Warrior Rogue
    note-ptBR Compre [Haunch of Meat] dele se tiver dinheiro |only Warrior Rogue
    vendor
step
    path closest 1411 @-4828.32,-777.61 @-4822.51,-881.59 @-4845.24,-829.42 @-4828.32,-777.61
    note-enUS Talk to Lar
    note-ptBR Fale com Lar
    note-enUS He patrols a little
    note-ptBR Ele patrulha um pouco
    turnin 786 |reward 1 |only Shaman
    turnin 786 |only !Shaman
step
    goto 1411 @-4565.7,-192.3
    note-enUS Kill Ridgeshade Lurkers and Ridgeshade Creepers
    note-ptBR Mate Ridgeshade Lurkers e Ridgeshade Creepers
    objective 96821/2 |opt
    objective 96821/1 |opt
    note-enUS Kill Ukorsbane (elite). Loot him for [Ukor's Lost Pack]
    note-ptBR Mate Ukorsbane (elite). Saqueie-o para obter [Ukor's Lost Pack]
    note-enUS This is hard! Group up if possible. Skip this step if you can't kill it
    note-ptBR Isto é difícil! Forme um grupo se possível. Pule esta etapa se não conseguir matá-lo
    collect 275722 1 |quest 96876
    accept 96876
step
    goto 1411 @-4710.4,-209.4
    note-enUS Kill Ridgeshade Lurkers and Ridgeshade Creepers
    note-ptBR Mate Ridgeshade Lurkers e Ridgeshade Creepers
    objective 96821/2
    objective 96821/1
step
    ifonquest 784
    goto 1411 @-4979.2,-232.8
step
    goto 1411 @-4992.7,-234.4
    note-enUS Kill Kul Tiras Sailors and Kul Tiras Marines. Loot them for their Canvas Scraps
    note-ptBR Mate Kul Tiras Sailors e Kul Tiras Marines. Saqueie-os para obter Canvas Scraps
    objective 784/1 |opt
    objective 784/2 |opt
    objective 791/1 |opt
    note-enUS Loot the Raider's Bow on the ground
    note-ptBR Saqueie o Raider's Bow no chão
    objective 96822/1
step
    goto 1411 @-4994.9,-182.3
    note-enUS Loot the Raider's Battleaxe on the ground
    note-ptBR Saqueie o Raider's Battleaxe no chão
    objective 96822/2
step
    path seq 1411 @-5124.95,-243.92 @-5115.96,-251.68 @-5111.21,-232.29 @-5097.46,-232.29
    goto 1411 @-5121.78,-245.68
    note-enUS Be careful if Watch Commander Zalaphil is up, as he is a level 9 rare. You may have to use a [Minor Healing Potion] if you have one
    note-ptBR Cuidado se Watch Commander Zalaphil estiver presente, ele é um raro de nível 9. Talvez você precise usar uma [Minor Healing Potion] se tiver uma
    note-enUS Kill Lieutenant Benedict. Loot him for his Key
    note-ptBR Mate Lieutenant Benedict. Saqueie-o para obter a chave dele
    objective 784/3
    collect 4882 1 |quest 830 |q 830/1
step
    path seq 1411 @-5128.13,-231.58 @-5126.01,-221.36 @-5124.42,-229.82 @-5131.83,-229.82 @-5131.83,-222.42
    goto 1411 @-5096.4,-223.83
    note-enUS Go upstairs in the keep
    note-ptBR Suba as escadas da fortaleza
    note-enUS Open Benedict's Chest. Loot it for the [Aged Envelope]
    note-ptBR Abra o Benedict's Chest. Saqueie-o para obter o [Aged Envelope]
    note-enUS Use the [Aged Envelope] to start the quest
    note-ptBR Use o [Aged Envelope] para iniciar a missão
    collect 4881 1 |quest 830
    accept 830
    use 4881
step
    goto 1411 @-4951.5,-59.6
    note-enUS Loot the Raider's Shield on the ground
    note-ptBR Saqueie o Raider's Shield no chão
    objective 96822/3
step
    path closest 1411 @-5081.6,-246.74 @-5010.74,-254.5 @-4995.41,-186.46 @-5034.54,-148.75 @-5057.8,-83.89 @-4952.05,-113.5 @-4943.06,-248.5 @-5081.6,-246.74
    note-enUS Kill Kul Tiras Sailors and Kul Tiras Marines. Loot them for their Canvas Scraps
    note-ptBR Mate Kul Tiras Sailors e Kul Tiras Marines. Saqueie-os para obter Canvas Scraps
    objective 784/1
    objective 784/2
    objective 791/1
step
    path closest 1411 @-5081.6,-246.74 @-5010.74,-254.5 @-4995.41,-186.46 @-5034.54,-148.75 @-5057.8,-83.89 @-4952.05,-113.5 @-4943.06,-248.5 @-5081.6,-246.74
    note-enUS Kill Kul Tiras Sailors and Kul Tiras Marines
    note-ptBR Mate Kul Tiras Sailors e Kul Tiras Marines
    objective 784/1
    objective 784/2
step
    path closest 1411 @-5081.6,-246.74 @-5010.74,-254.5 @-4995.41,-186.46 @-5034.54,-148.75 @-5057.8,-83.89 @-4952.05,-113.5 @-4943.06,-248.5 @-5081.6,-246.74
    note-enUS Kill Kul Tiras Sailors and Kul Tiras Marines. Loot them for their Canvas Scraps
    note-ptBR Mate Kul Tiras Sailors e Kul Tiras Marines. Saqueie-os para obter Canvas Scraps
    objective 791/1
step
    only !Priest !Mage
    ifnotonquest 823
    path closest 1411 @-5083.18,37.37 @-5025.55,126.56 @-5092.7,246.76 @-5027.13,311.62 @-4948.35,276.72 @-4897.06,82.14
    level 7
step
    only !Priest !Mage
    ifonquest 823
    path closest 1411 @-5083.18,37.37 @-5025.55,126.56 @-5092.7,246.76 @-5027.13,311.62 @-4948.35,276.72 @-4897.06,82.14
    level 7
step
    only Priest
    ifnotonquest 823
    path closest 1411 @-5083.18,37.37 @-5025.55,126.56 @-5092.7,246.76 @-5027.13,311.62 @-4948.35,276.72 @-4897.06,82.14
    level 7
step
    only Priest
    ifonquest 823
    path closest 1411 @-5083.18,37.37 @-5025.55,126.56 @-5092.7,246.76 @-5027.13,311.62 @-4948.35,276.72 @-4897.06,82.14
    level 7
step
    ifonquest 96652
    goto 1411 @-4713,140.6
    note-enUS Talk to Brakk
    note-ptBR Fale com Brakk
    turnin 96652
    accept 96604
step
    goto 1411 @-4713,140.6
    note-enUS Talk to Brakk
    note-ptBR Fale com Brakk
    accept 96604
step
    goto 1411 @-4715.2,140.1
    note-enUS Type /sit at the campfire and wait for one minute until you get the "Camp Benefits" buff
    note-ptBR Digite /sit na fogueira e espere um minuto até receber o bônus "Camp Benefits"
    objective 96604/1
    objective 96604/2
step
    goto 1411 @-4713,140.6
    note-enUS Talk to Brakk
    note-ptBR Fale com Brakk
    turnin 96604
    accept 96655
step
    path seq 1411 @-4724.69,287.3 @-4709.36,274.96
    goto 1411 @-4663.88,310.56
    note-enUS Talk to Orgnil, Gar'Thok and Torka
    note-ptBR Fale com Orgnil, Gar'Thok e Torka
    turnin 823
    accept 806
    turnin 784
    turnin 830
    turnin 96821
    accept 825
    accept 831
    accept 837
    accept 815
step
    goto 1411 @-4663.88,310.56
    note-enUS Talk to Torka
    note-ptBR Fale com Torka
    train 2550
    turnin 96655
step
    path seq 1411 @-4617.88,290.47 @-4611.01,293.64 @-4616.82,317.26 @-4604.13,364.49 @-4588.8,383.53 @-4593.03,384.94 @-4594.09,389.87 @-4589.86,390.93 @-4589.33,387.76 @-4594.62,386.35 @-4595.15,399.74 @-4585.1,396.92
    goto 1411 @-4600.43,384.59
    note-enUS Talk to Furl
    note-ptBR Fale com Furl
    turnin 791
step
    only Warrior Rogue
    goto 1411 @-4701.95,366.96
    note-enUS Talk to Krunn
    note-ptBR Fale com Krunn
    train 2575
    note-enUS This will allow you to find [Rough Stones] from nodes in order to craft [Sharpening Stones] (+2 Weapon Damage for 30 minutes)
    note-ptBR Isto permitirá obter [Rough Stones] dos veios para criar [Sharpening Stones] (+2 de dano da arma por 30 minutos)
step
    only Warrior Rogue
    goto 1411 @-4706.71,358.15
    note-enUS Talk to Wuark
    note-ptBR Fale com Wuark
    note-enUS Buy a [Mining Pick] from Wuark
    note-ptBR Compre uma [Mining Pick] de Wuark
    collect 2901 1 |quest 825 |q 825/1
step
    only Warrior Rogue
    ifskillbelow blacksmithing 1
    goto 1411 @-4714.64,372.6
    note-enUS Talk to Dwukk
    note-ptBR Fale com Dwukk
    train 2018
step
    only Shaman
    goto 1411 @-4713.06,382.12
    note-enUS Talk to Uhgar
    note-ptBR Fale com Uhgar
    vendor
step
    only Shaman
    goto 1411 @-4713.06,382.12
    note-enUS Talk to Uhgar. Buy a [Walking Stick] from him
    note-ptBR Fale com Uhgar. Compre [Walking Stick] dele
    collect 2495 1 |quest 825 |q 825/1
step
    only Rogue
    goto 1411 @-4713.06,382.12
    note-enUS Talk to Uhgar
    note-ptBR Fale com Uhgar
    vendor
step
    only Rogue
    goto 1411 @-4713.06,382.12
    note-enUS Talk to Uhgar. Buy a [Stiletto] from him
    note-ptBR Fale com Uhgar. Compre [Stiletto] dele
    collect 2494 1 |quest 825 |q 825/1
step
    only Orc Warrior
    goto 1411 @-4713.06,382.12
    note-enUS Talk to Uhgar
    note-ptBR Fale com Uhgar
    vendor
step
    only Orc Warrior
    goto 1411 @-4713.06,382.12
    note-enUS Talk to Uhgar. Buy a [large Axe] from him
    note-ptBR Fale com Uhgar. Compre [large Axe] dele
    collect 2491 1 |quest 825 |q 825/1
step
    only Troll Warrior
    goto 1411 @-4713.06,382.12
    note-enUS Talk to Uhgar
    note-ptBR Fale com Uhgar
    vendor
step
    only Troll Warrior
    goto 1411 @-4713.06,382.12
    note-enUS Talk to Uhgar. Buy a [Tomahawk] from him
    note-ptBR Fale com Uhgar. Compre [Tomahawk] dele
    collect 2490 1 |quest 825 |q 825/1
step
    only Hunter
    goto 1411 @-4763.29,361.67
    note-enUS Equip the [Weighted Throwing Axe] |only Rogue
    note-ptBR Equipe o [Weighted Throwing Axe] |only Rogue
    use 3131 |only Rogue |opt
    note-enUS Equip the [Walking Stick] |only Shaman
    note-ptBR Equipe o [Walking Stick] |only Shaman
    use 2495 |only Shaman |opt
    note-enUS Equip the [Stiletto] |only Rogue
    note-ptBR Equipe o [Stiletto] |only Rogue
    use 2494 |only Rogue |opt
    note-enUS Equip the [large Axe] |only Orc Warrior
    note-ptBR Equipe o [large Axe] |only Orc Warrior
    use 2491 |only Orc Warrior |opt
    note-enUS Equip the [Tomahawk] |only Troll Warrior
    note-ptBR Equipe o [Tomahawk] |only Troll Warrior
    use 2490 |only Troll Warrior |opt
    note-enUS Talk to Ghrawt
    note-ptBR Fale com Ghrawt
    vendor
step
    only Hunter
    goto 1411 @-4763.29,361.67
    note-enUS Talk to Ghrawt. Buy a [Hornwood Recurve Bow] from him
    note-ptBR Fale com Ghrawt. Compre [Hornwood Recurve Bow] dele
    collect 2506 1 |quest 818 |q 818/1
step
    only Hunter
    goto 1411 @-4763.29,361.67
    note-enUS Equip the [Hornwood Recurve Bow] |only Hunter
    note-ptBR Equipe o [Hornwood Recurve Bow] |only Hunter
    use 2506 |only Hunter |opt
    note-enUS Talk to Ghrawt. Buy [Rough Arrows] from him
    note-ptBR Fale com Ghrawt. Compre [Rough Arrows] dele
    collect 2512 1000 |quest 825 |q 825/1 |only Hunter
step
    goto 1411 @-4686.09,340.52
    note-enUS Talk to Innkeeper Grosk
    note-ptBR Fale com Innkeeper Grosk
    home
step
    goto 1411 @-4686.09,340.52
    note-enUS Talk to Innkeeper Grosk
    note-ptBR Fale com Innkeeper Grosk
    note-enUS Buy [Ice Cold Milk] from him |only Mage Warlock Priest Shaman Druid
    note-ptBR Compre [Ice Cold Milk] dele |only Mage Warlock Priest Shaman Druid
    note-enUS Buy [Haunch of Meat] from him |only Rogue Warrior
    note-ptBR Compre [Haunch of Meat] dele |only Rogue Warrior
    note-enUS Save 4 silver for your class spells! |only Rogue Warrior Shaman Warlock
    note-ptBR Guarde 4 pratas para os feitiços da sua classe! |only Rogue Warrior Shaman Warlock
    note-enUS Save 2 silver for your class spells! |only Priest
    note-ptBR Guarde 2 pratas para os feitiços da sua classe! |only Priest
    vendor
    turnin 2161
    train 6760 |only Rogue
    train 139 |only Priest
    train 980 |only Warlock
    train 8044 |only Shaman
    train 284 |only Warrior
step
    only !Mage !Hunter !Druid
    goto 1411 @-4686.09,340.52
    note-enUS Talk to Innkeeper Grosk
    note-ptBR Fale com Innkeeper Grosk
    note-enUS Buy [Ice Cold Milk] from him |only Mage Warlock Priest Shaman Druid
    note-ptBR Compre [Ice Cold Milk] dele |only Mage Warlock Priest Shaman Druid
    note-enUS Buy [Haunch of Meat] from him |only Rogue Warrior
    note-ptBR Compre [Haunch of Meat] dele |only Rogue Warrior
    vendor
    turnin 2161
    train 6760 |only Rogue
    train 139 |only Priest
    train 980 |only Warlock
    train 8044 |only Shaman
    train 284 |only Warrior
step
    goto 1411 @-4815.4,306.5
    note-enUS Talk to Turroc
    note-ptBR Fale com Turroc
    turnin 96822
step
    only Warrior
    goto 1411 @-4827.27,311.62
    note-enUS Talk to Tarshaw
    note-ptBR Fale com Tarshaw
    train 284
step
    only Shaman
    goto 1411 @-4839.96,307.04
    note-enUS Talk to Swart
    note-ptBR Fale com Swart
    train 8044
step
    only Warlock
    goto 1411 @-4837.31,356.03
    note-enUS Talk to Dhugru
    note-ptBR Fale com Dhugru
    train 1120
step
    only Warlock
    goto 1411 @-4854.76,345.81
    note-enUS Talk to Kitha and buy [Firebolt Rank 2]
    note-ptBR Fale com Kitha e compre [Firebolt Rank 2]
    collect 16302 1 |quest 825 |q 825/1
    train 7799
step
    only Hunter
    goto 1411 @-4704.07,275.31
    note-enUS Go inside the bunker
    note-ptBR Entre no bunker
    note-enUS Talk to Thotar inside
    note-ptBR Fale com Thotar lá dentro
    train 5116
step
    only Rogue
    goto 1411 @-4710.94,268.26
    note-enUS Talk to Kaplak
    note-ptBR Fale com Kaplak
    train 6760
step
    only Priest
    goto 1411 @-4831.5,295.05
    note-enUS Talk to Tai'jin
    note-ptBR Fale com Tai'jin
    turnin 5649
    accept 5648
    train 2052
step
    only Priest
    goto 1411 @-4770.16,170.62
    note-enUS Cast [Lesser Heal] and [Power Word: Fortitude] on Kor'ja
    note-ptBR Lance [Lesser Heal] e [Power Word: Fortitude] em Kor'ja
    objective 5648/1
step
    only Priest
    goto 1411 @-4831.5,295.05
    note-enUS Talk to Tai'jin
    note-ptBR Fale com Tai'jin
    turnin 5648
    trainer
step
    only Rogue Warrior
    goto 1411 @-4826.74,330.3
    note-enUS Talk to Rawrk
    note-ptBR Fale com Rawrk
    train 3273
step
    goto 1411 @-4838.37,321.49
    note-enUS Talk to Jark
    note-ptBR Fale com Jark
    note-enUS Buy a [Small Brown Pouch] from him
    note-ptBR Compre uma [Small Brown Pouch] dele
    collect 4496 1 |quest 825 |q 825/1
step
    path closest 1411 @-5238.63,-146.63 @-5253.97,-177.65 @-5263.49,-301.03 @-5245.51,-330.64 @-5267.72,-326.41 @-5306.31,-239.69 @-5253.97,-177.65
    note-enUS Kill Pygmy Surf Crawlers and Surf Crawlers. Loot them for their Mucus
    note-ptBR Mate Pygmy Surf Crawlers e Surf Crawlers. Saqueie-os para obter o muco
    note-enUS Kill Makrura Shellhides and Makrura Clackers. Loot them for their Eyes
    note-ptBR Mate Makrura Shellhides e Makrura Clackers. Saqueie-os para obter os olhos
    objective 818/2 |opt
    objective 818/1 |opt
    note-enUS Loot the Gnomish Toolboxes inside and around the boats
    note-ptBR Saqueie as Gnomish Toolboxes dentro e ao redor dos barcos
    objective 825/1
step
    path seq 1411 @-5510.41,-634.14
    goto 1411 @-5599.5,-716.7
    note-enUS Loot the Taillasher Eggs on the ground
    note-ptBR Saqueie os Taillasher Eggs no chão
    note-enUS They're usually guarded by a Bloodtalon Taillasher
    note-ptBR Geralmente são protegidos por um Bloodtalon Taillasher
    objective 815/1 |opt
    note-enUS Kill Durotar Tigers. Loot them for their Fur
    note-ptBR Mate Durotar Tigers. Saqueie-os para obter a pele
    objective 817/1 |opt
    note-enUS Kill Pygmy Surf Crawlers and Surf Crawlers. Loot them for their Mucus
    note-ptBR Mate Pygmy Surf Crawlers e Surf Crawlers. Saqueie-os para obter o muco
    note-enUS Kill Makrura Shellhides and Makrura Clackers. Loot them for their Eyes
    note-ptBR Mate Makrura Shellhides e Makrura Clackers. Saqueie-os para obter os olhos
    objective 818/2 |opt
    objective 818/1 |opt
    note-enUS Kill the Bloodtalon Martriarch. Loot it for the Bloodtalon Martriarch Eggs
    note-ptBR Mate a Bloodtalon Martriarch. Saqueie-a para obter os Bloodtalon Martriarch Eggs
    objective 97223/1
step
    ifonquest 826
    goto 1411 @-5501.95,-1167.12 150
step
    goto 1411 @-5526.27,-1286.62
    note-enUS Kill Hexed Trolls and Voodoo Trolls. Loot them for Hexed Pendants
    note-ptBR Mate Hexed Trolls e Voodoo Trolls. Saqueie-os para obter Hexed Pendants
    note-enUS Use [Disenchant] on the Hexed Pendants to obtain [Luminous Residue]
    note-ptBR Use [Disenchant] nos Hexed Pendants para obter [Luminous Residue]
    objective 826/1 |opt
    objective 826/2 |opt
    objective 96873/1 |opt
    collect 275724 3 |quest 96873 |opt
    note-enUS Kill Hexed Trolls and Voodoo Trolls
    note-ptBR Mate Hexed Trolls e Voodoo Trolls
    objective 826/1 |opt
    objective 826/2 |opt
    note-enUS Loot the Loa Idols on the ground
    note-ptBR Saqueie os Loa Idols no chão
    note-enUS They are mainly found near the stone walls in the area
    note-ptBR Eles ficam principalmente perto dos muros de pedra da área
    objective 97225/1 |opt
    note-enUS Kill Zalazane. Loot him for his Head
    note-ptBR Mate Zalazane. Saqueie-o para obter a cabeça dele
    note-enUS Save your [Earth Shock] for when he casts [Healing Wave] |only Shaman
    note-ptBR Guarde seu [Earth Shock] para quando ele lançar [Healing Wave] |only Shaman
    note-enUS Save your [Gouge] for when he casts [Healing Wave] |only Rogue
    note-ptBR Guarde seu [Gouge] para quando ele lançar [Healing Wave] |only Rogue
    objective 826/3 |opt
    note-enUS Loot one of the Skulls on the ground
    note-ptBR Saqueie um dos crânios no chão
    objective 808/1
step
    goto 1411 @-5526.27,-1286.62
    note-enUS Kill Zalazane. Loot him for his Head
    note-ptBR Mate Zalazane. Saqueie-o para obter a cabeça dele
    note-enUS Save your [Earth Shock] for when he casts [Healing Wave] |only Shaman
    note-ptBR Guarde seu [Earth Shock] para quando ele lançar [Healing Wave] |only Shaman
    note-enUS Save your [Gouge] for when he casts [Healing Wave] |only Rogue
    note-ptBR Guarde seu [Gouge] para quando ele lançar [Healing Wave] |only Rogue
    objective 826/3
step
    ifonquest 96873
    path closest 1411 @-5517.29,-1320.46 @-5479.74,-1284.5 @-5449.08,-1248.55 @-5446.96,-1154.08 @-5445.9,-1112.13 @-5525.22,-1103.67 @-5580.21,-1097.32 @-5584.44,-1163.95 @-5582.85,-1250.31 @-5517.29,-1293.67
    note-enUS Kill Durotar Tigers. Loot them for their Fur
    note-ptBR Mate Durotar Tigers. Saqueie-os para obter a pele
    objective 817/1 |opt
    note-enUS Kill Hexed Trolls and Voodoo Trolls. Loot them for Hexed Pendants
    note-ptBR Mate Hexed Trolls e Voodoo Trolls. Saqueie-os para obter Hexed Pendants
    note-enUS Use [Disenchant] on the Hexed Pendants to obtain [Luminous Residue]
    note-ptBR Use [Disenchant] nos Hexed Pendants para obter [Luminous Residue]
    objective 826/1
    objective 826/2
    objective 96873/1
    collect 275724 3 |quest 96873
step
    ifnotonquest 96873
    path closest 1411 @-5517.29,-1320.46 @-5479.74,-1284.5 @-5449.08,-1248.55 @-5446.96,-1154.08 @-5445.9,-1112.13 @-5525.22,-1103.67 @-5580.21,-1097.32 @-5584.44,-1163.95 @-5582.85,-1250.31 @-5517.29,-1293.67
    note-enUS Kill Hexed Trolls and Voodoo Trolls
    note-ptBR Mate Hexed Trolls e Voodoo Trolls
    objective 826/1
    objective 826/2
step
    path closest 1411 @-5393.9,-1215.3 @-5373.3,-1153 @-5427.4,-1114.9 @-5501.5,-1123.6 @-5587.6,-1212 @-5479,-1212
    note-enUS Loot the Loa Idols on the ground
    note-ptBR Saqueie os Loa Idols no chão
    note-enUS They are mainly found near the stone walls in the area
    note-ptBR Eles ficam principalmente perto dos muros de pedra da área
    objective 97225/1
step
    path closest 1411 @-5123.9,-1132.93 @-5413.65,-1288.73 @-5384.57,-1312.35 @-5383.51,-1184.04 @-5382.45,-1039.87 @-5417.88,-1015.54 @-5445.38,-1055.02 @-5149.8,-1013.08 @-5166.72,-1091.33 @-5128.65,-1135.39 @-5111.73,-1182.98 @-5179.41,-1321.51 @-5209.55,-1353.24 @-5213.25,-1412.46 @-5154.56,-1412.11 @-5084.24,-1382.14 @-5123.9,-1132.93
    note-enUS Kill Pygmy Surf Crawlers and Surf Crawlers. Loot them for their Mucus
    note-ptBR Mate Pygmy Surf Crawlers e Surf Crawlers. Saqueie-os para obter o muco
    note-enUS Kill Makrura Shellhides and Makrura Clackers. Loot them for their Eyes
    note-ptBR Mate Makrura Shellhides e Makrura Clackers. Saqueie-os para obter os olhos
    objective 818/2 |opt
    objective 818/1 |opt
    note-enUS Kill Durotar Tigers. Loot them for their Fur
    note-ptBR Mate Durotar Tigers. Saqueie-os para obter a pele
    objective 817/1
step
    path closest 1411 @-5413.65,-1288.73 @-5384.57,-1312.35 @-5383.51,-1184.04 @-5382.45,-1039.87 @-5417.88,-1015.54 @-5445.38,-1055.02 @-5149.8,-1013.08 @-5166.72,-1091.33 @-5128.65,-1135.39 @-5111.73,-1182.98 @-5179.41,-1321.51 @-5209.55,-1353.24 @-5213.25,-1412.46 @-5154.56,-1412.11 @-5084.24,-1382.14 @-5123.9,-1132.93
    note-enUS Loot the Taillasher Eggs on the ground
    note-ptBR Saqueie os Taillasher Eggs no chão
    note-enUS They're usually guarded by a Bloodtalon Taillasher
    note-ptBR Geralmente são protegidos por um Bloodtalon Taillasher
    objective 815/1
step
    path closest 1411 @-5115.96,-794.53 @-5035.07,-916.49 @-4990.65,-989.81 @-4905.52,-1028.23 @-4807.17,-1122.35
    note-enUS Kill Pygmy Surf Crawlers and Surf Crawlers. Loot them for their Mucus
    note-ptBR Mate Pygmy Surf Crawlers e Surf Crawlers. Saqueie-os para obter o muco
    note-enUS Kill Makrura Shellhides and Makrura Clackers. Loot them for their Eyes
    note-ptBR Mate Makrura Shellhides e Makrura Clackers. Saqueie-os para obter os olhos
    objective 818/2
    objective 818/1
step
    ifonquest 808
    path seq 1411 @-5002.81,-774.08
    goto 1411 @-4948.88,-768.79
    note-enUS Talk to Trayexir
    note-ptBR Fale com Trayexir
    note-enUS Jump into the hut
    note-ptBR Pule para dentro da cabana
    vendor
step
    ifcomplete 96873
    goto 1411 @-4960.1,-791.4
    note-enUS Talk to Pa'zula
    note-ptBR Fale com Pa'zula
    turnin 96873
step
    only Mage
    goto 1411 @-4939.36,-838.94
    note-enUS Talk to Un'Thuwa
    note-ptBR Fale com Un'Thuwa
    train 118
step
    path seq 1411 @-4920.86,-825.9 @-4920.86,-813.91
    goto 1411 @-4920.86,-797.7
    note-enUS Talk to Gadrin, Vornal and Vel'rin
    note-ptBR Fale com Gadrin, Vornal e Vel'rin
    turnin 808
    turnin 826 |reward 2 |only Shaman
    turnin 826 |only !Shaman
    turnin 97225
    turnin 818
    turnin 817
step
    goto 1411 @-4885.4,-852.4
    note-enUS Talk to Xar'Ti
    note-ptBR Fale com Xar'Ti
    turnin 97223
step
    ifonquest 96876
    goto 1411 @-4715.1,-599.5
    note-enUS Bind your [Faintly Glowing Skull] and [Really Sticky Glue]. Save them for emergency situations
    note-ptBR Coloque [Faintly Glowing Skull] e [Really Sticky Glue] nas barras de ação. Guarde-os para emergências
    note-enUS Talk to Ukor
    note-ptBR Fale com Ukor
    turnin 96876
step
    path closest 1411 @-4565.01,82.49 @-4617.35,18.34 @-4615.77,72.98 @-4578.75,76.15 @-4570.29,109.99 @-4543.33,81.08 @-4526.41,70.86 @-4478.29,59.23 @-4450.8,62.4 @-4442.34,112.46 @-4565.01,82.49
    note-enUS Loot the Prickly Pear Fruit on the ground
    note-ptBR Saqueie a Prickly Pear Fruit no chão
    objective 96825/1 |opt
    note-enUS Kill Razormane Quilboars and Razormane Scouts
    note-ptBR Mate Razormane Quilboars e Razormane Scouts
    objective 837/1
    objective 837/2
step
    path closest 1411 @-4543.3,82.5 @-4459,66.3
    note-enUS Loot the Prickly Pear Fruit on the ground
    note-ptBR Saqueie a Prickly Pear Fruit no chão
    objective 96825/1
step
    path closest 1411 @-4312.79,407.5 @-4314.91,487.52 @-4251.99,492.8 @-4167.39,500.91 @-4164.21,459.32 @-4180.08,382.12 @-4251.99,384.23
    note-enUS Kill Razormane Dustrunners and Razormane Battleguards
    note-ptBR Mate Razormane Dustrunners e Razormane Battleguards
    objective 837/3
    objective 837/4
step
    only Hunter
    path closest 1411 @-4475.12,92.72 @-4401.09,205.52 @-4270.49,260.51 @-4166.33,233.01 @-4130.37,182.25 @-4208.1,98.71 @-4300.1,57.11 @-4456.61,65.57
    level 9
step
    only Hunter
    path seq 1411 @-4665.47,311.62
    goto 1411 @-4709.36,274.96
    note-enUS Talk to Torka and Gar'Thok
    note-ptBR Fale com Torka e Gar'Thok
    turnin 815
    turnin 96825
    turnin 825
    turnin 837
step
    only Hunter
    goto 1411 @-4704.07,275.31
    note-enUS Go inside the bunker
    note-ptBR Entre no bunker
    note-enUS Talk to Thotar inside
    note-ptBR Fale com Thotar lá dentro
    accept 6062
    trainer
step
    only Hunter
    goto 1411 @-4724.9,287.3
    note-enUS Talk to Orgnil Soulscar
    note-ptBR Fale com Orgnil Soulscar
    accept 99048
step
    only Hunter
    goto 1411 @-4763.29,361.67
    note-enUS Talk to Ghrawt. Buy [Sharp Arrows] and a [Medium Quiver] from him
    note-ptBR Fale com Ghrawt. Compre [Sharp Arrows] e uma [Medium Quiver] dele
    collect 2515 1200 |quest 6082 |q 6082/1
step
    only Hunter
    goto 1411 @-4763.29,361.67
    note-enUS Talk to Ghrawt. Buy [Sharp Arrows] from him
    note-ptBR Fale com Ghrawt. Compre [Sharp Arrows] dele
    collect 2515 1200 |quest 6082 |q 6082/1
step
    only Hunter
    ifonquest 6062
    path closest 1411 @-4693.49,-183.64 @-4699.31,101.88 @-4696.14,37.73 @-4693.49,-1.4 @-4701.42,-66.26 @-4649.61,-82.83
    use 15917
    objective 6062/1
step
    only Hunter
    ifcomplete 6062
    goto 1411 @-4704.07,275.31
    note-enUS Go inside the bunker
    note-ptBR Entre no bunker
    note-enUS Talk to Thotar inside
    note-ptBR Fale com Thotar lá dentro
    turnin 6062
    accept 6083
step
    only Hunter
    ifturnedin 6062
    goto 1411 @-4704.07,275.31
    note-enUS Go inside the bunker
    note-ptBR Entre no bunker
    note-enUS Talk to Thotar inside
    note-ptBR Fale com Thotar lá dentro
    accept 6083
step
    only Hunter
    ifturnedin 6062
    path closest 1411 @-5115.44,984.19 @-5091.64,809 @-5129.18,877.03 @-5137.11,934.49
    note-enUS Dismiss your Dire Mottled Boar by right clicking its unit frame and clicking dismiss, otherwise you'll be unable to tame a Surf Crawler |only Hunter
    note-ptBR Dispense seu Dire Mottled Boar clicando com o botão direito no quadro dele e escolhendo dispensar, senão você não conseguirá domesticar um Surf Crawler |only Hunter
    note-enUS Don't kill the Armored Scorpids you see. You'll need them later
    note-ptBR Não mate os Armored Scorpids que encontrar. Você vai precisar deles depois
    use 15919
    objective 6083/1
step
    only Hunter
    goto 1411 @-5061.7,201.7
    note-enUS Talk to Heglan Shadeeye
    note-ptBR Fale com Heglan Shadeeye
    turnin 99048
    accept 99049
step
    only Hunter
    goto 1411 @-5073.9,244.7
    note-enUS Loot the Abandoned Dagger on the ground
    note-ptBR Saqueie a Abandoned Dagger no chão
    objective 99049/1
step
    only Hunter
    goto 1411 @-5140.8,229.1
    note-enUS Loot the Weapon Piece on the ground
    note-ptBR Saqueie a Weapon Piece no chão
    objective 99049/3
step
    only Hunter
    goto 1411 @-5138,314.1
    note-enUS Loot the Strange Debris on the ground
    note-ptBR Saqueie os Strange Debris no chão
    objective 99049/2
step
    only Hunter
    goto 1411 @-4725,287.2
    note-enUS Talk to Orgnil Soulscar
    note-ptBR Fale com Orgnil Soulscar
    turnin 99049
step
    only Hunter
    ifturnedin 6062
    goto 1411 @-4704.07,275.31
    note-enUS Go inside the bunker
    note-ptBR Entre no bunker
    note-enUS Talk to Thotar inside
    note-ptBR Fale com Thotar lá dentro
    turnin 6083
    accept 6082
step
    only Hunter
    ifturnedin 6062
    path closest 1411 @-4862.16,506.2 @-4818.28,616.53 @-4829.38,733.21 @-4908.17,727.57 @-4933.55,776.21 @-4973.73,846.71 @-4984.31,906.29
    note-enUS Dismiss your Surf Crawler by right clicking its unit frame and clicking dismiss, otherwise you'll be unable to tame an Armored Scorpid |only Hunter
    note-ptBR Dispense seu Surf Crawler clicando com o botão direito no quadro dele e escolhendo dispensar, senão você não conseguirá domesticar um Armored Scorpid |only Hunter
    use 15920
    objective 6082/1
step
    only Hunter
    ifturnedin 6062
    goto 1411 @-4704.07,275.31
    note-enUS Go inside the bunker
    note-ptBR Entre no bunker
    note-enUS Talk to Thotar inside
    note-ptBR Fale com Thotar lá dentro
    turnin 6082
    accept 6081
step
    only Hunter
    ifturnedin 6062
    ifnotturnedin 834
    goto 1411 @-4666,305.63
    note-enUS Put [Tame Beast], [Dismiss Pet], and [Call Pet] onto your Action Bars |only Hunter
    note-ptBR Coloque [Tame Beast], [Dismiss Pet] e [Call Pet] nas suas barras de ação |only Hunter
    note-enUS Talk to Grimtak
    note-ptBR Fale com Grimtak
    note-enUS Buy [Tough Jerky] from him. You will use this to feed your pet later
    note-ptBR Compre [Tough Jerky] dele. Você vai usar isso para alimentar seu mascote depois
    vendor
    collect 117 5 |quest 828 |q 828/1
step
    only Hunter
    goto 1411 @-4648.55,271.43
    note-enUS Talk to Takrin
    note-ptBR Fale com Takrin
    accept 840
step
    only Hunter Shaman
    goto 1411 @-4241.94,742.37
    note-enUS Talk to Misha
    note-ptBR Fale com Misha
    accept 816
step
    goto 1411 @-4414.31,999.7 50
    note-enUS Talk to Rezlak
    note-ptBR Fale com Rezlak
    accept 834
step
    path closest 1411 @-4590.39,1036.36 @-4590.39,950.7 @-4613.12,902.41 @-4651.19,893.24 @-4693.49,832.97 @-4598.32,854.12 @-4642.2,696.2 @-4505.79,597.14 @-4466.13,630.98 @-4526.41,679.98 @-4457.67,720.17
    note-enUS Loot the Stolen Supply Sacks on the ground
    note-ptBR Saqueie os Stolen Supply Sacks no chão
    objective 834/1
step
    goto 1411 @-4414.31,999.7
    note-enUS Talk to Rezlak
    note-ptBR Fale com Rezlak
    turnin 834
    accept 835
step
    path seq 1411 @-4327.07,932.02
    goto 1411 @-4198.05,911.22 30
    goto 1411 @-4165.27,903.11 20 |only !Hunter !Warlock
    goto 1411 @-4165.27,903.11 20 |only Warlock
    goto 1411 @-4190.12,868.22
    note-enUS Kill Fizzle Darkstorm and loot him for his Claw
    note-ptBR Mate Fizzle Darkstorm e saqueie-o para obter a garra dele
    note-enUS Be careful. Kill the patrolling Burning Blade Fanatic and the Lightning Hides in the back before you pull him
    note-ptBR Cuidado. Mate o Burning Blade Fanatic que patrulha e os Lightning Hides ao fundo antes de puxá-lo
    note-enUS Pull him backwards towards the Lightning Hides you just killed. Otherwise you may bodypull additional Burning Blade mobs
    note-ptBR Puxe-o para trás, em direção aos Lightning Hides que você acabou de matar. Caso contrário, pode puxar outros mobs de Burning Blade sem querer
    note-enUS Don't be afraid to die for the Claw as you will be respawning at the Spirit Healer after
    note-ptBR Não tenha medo de morrer pela Claw, pois você vai ressuscitar no Spirit Healer depois
    note-enUS Kill the imp first. Use [Gouge] when he casts [Soul Siphon] |only Rogue
    note-ptBR Mate o diabrete primeiro. Use [Gouge] quando ele lançar [Soul Siphon] |only Rogue
    note-enUS Kill the imp first. Use [Earth Shock] when he casts [Soul Siphon] |only Shaman
    note-ptBR Mate o diabrete primeiro. Use [Earth Shock] quando ele lançar [Soul Siphon] |only Shaman
    note-enUS You can cast [Polymorph] on Fizzle and kill the Imp first |only Mage
    note-ptBR Você pode usar [Polymorph] em Fizzle e matar o Imp primeiro |only Mage
    note-enUS Kill the imp first |only Warrior Warlock Priest
    note-ptBR Mate o diabrete primeiro |only Warrior Warlock Priest
    note-enUS Use a [Minor Healing Potion] if you have it and your [Faintly Glowing Skull] if needed |only !Warlock
    note-ptBR Use uma [Minor Healing Potion] se tiver e seu [Faintly Glowing Skull] se necessário |only !Warlock
    note-enUS Use a [Minor Healing Potion], [Minor Healthstone] if you have it and your [Faintly Glowing Skull] if needed |only Warlock
    note-ptBR Use uma [Minor Healing Potion], uma [Minor Healthstone] se tiver e seu [Faintly Glowing Skull] se necessário |only Warlock
    objective 806/1
step
    only Hunter Shaman
    ifcomplete 806
    goto 1411 @-4449.74,1188.64
step
    only Hunter Shaman
    ifcomplete 806
    goto 1411 @-4035.2,679.63 60
step
    only Hunter Shaman
    goto 1411 @-4158.93,1153.04
    note-enUS Talk to Rhinag
    note-ptBR Fale com Rhinag
    note-enUS This will start a 45 minute timer for the quest. Do NOT go AFK or log out for the next 5 minutes
    note-ptBR Isto iniciará um cronômetro de 45 minutos para a missão. NÃO fique AFK nem saia do jogo nos próximos 5 minutos
    accept 812
step
    only Shaman
    path closest 1411 @-4265.73,1276.76 @-4297.46,1131.89 @-4295.87,1208.38 @-4265.73,1276.76
    level 9
step
    only Shaman
    path closest 1411 @-4265.73,1276.76 @-4297.46,1131.89 @-4295.87,1208.38 @-4265.73,1276.76
    note-enUS Grind until your hearthstone cooldown is <5 minutes
    note-ptBR Faça grind até a recarga da sua Pedra de Regresso ficar abaixo de 5 minutos
step
    only Hunter Shaman
    goto 1454 @-4367.46,1405.44 50 |only Hunter Shaman
    path seq 1454 @-4460.6,1584.3
    goto 1454 @-4460,1598.6
    zone 1454 |only Hunter Shaman |opt
    note-enUS Talk to Thatog
    note-ptBR Fale com Thatog
    note-enUS He is upstairs in the building
    note-ptBR Ele está no andar de cima do prédio
    accept 97246
step
    only Hunter Shaman
    goto 1454 @-4482.6,1775
    note-enUS Talk to Borstan
    note-ptBR Fale com Borstan
    turnin 97246
    accept 97249
step
    only Hunter Shaman
    ifonquest 96877
    goto 1454 @-4568.1,1855.2
    note-enUS Talk to Kamari
    note-ptBR Fale com Kamari
    turnin 96877
step
    only Hunter Shaman
    goto 1454 @-4466.8,1954.8
    note-enUS Talk to Kor'geld
    note-ptBR Fale com Kor'geld
    accept 97242
step
    only Hunter Shaman
    path closest 1454 @-4560,1908.5 @-4587,1918.3 @-4608,1897.4 @-4632.3,1911.6 |only Hunter Shaman
    path closest 1454 @-4653.9,1950.3 @-4677.7,1971.6 @-4667.4,1997 @-4609.8,2013.5 @-4630.6,1968.1
    note-enUS Loot the Handful of Cattails and Speargrass Cuttings in the water
    note-ptBR Saqueie o Handful of Cattails e as Speargrass Cuttings na água
    objective 97242/1
    objective 97242/2
step
    only Hunter
    goto 1454 @-4607.02,2100.64
    note-enUS Talk to Ormak
    note-ptBR Fale com Ormak
    turnin 6081
step
    only Hunter
    goto 1454 @-4611.09,2135.15
    note-enUS Talk to Xao'tsu
    note-ptBR Fale com Xao'tsu
    train 24547
step
    only Hunter
    goto 1454 @-4819.1,2099.05
    note-enUS Put [Beast Training](under the General tab), [Revive Pet], and [Feed Pet] onto your Action Bars |only Hunter
    note-ptBR Coloque [Beast Training] (na aba Geral), [Revive Pet] e [Feed Pet] nas suas barras de ação |only Hunter
    note-enUS Remember to train your pet whenever they get Training Points for [Beast Training] |only Hunter
    note-ptBR Lembre-se de treinar seu ajudante sempre que ele ganhar Pontos de Treinamento para [Beast Training] |only Hunter
    note-enUS Talk to Zendo'jian. Buy a [Laminated Recurve Bow] from him
    note-ptBR Fale com Zendo'jian. Compre [Laminated Recurve Bow] dele
    collect 2507 1 |quest 835 |q 835/1
step
    only Hunter Shaman
    goto 1454 @-4466.9,1954.5
    note-enUS Equip the [Laminated Recurve Bow] when you are level 11 |only Hunter
    note-ptBR Equipe o [Laminated Recurve Bow] quando estiver no nível 11 |only Hunter
    use 2507 |only Hunter |opt
    note-enUS Equip the [Laminated Recurve Bow] |only Hunter
    note-ptBR Equipe o [Laminated Recurve Bow] |only Hunter
    use 2507 |only Hunter |opt
    note-enUS Talk to Kor'geld
    note-ptBR Fale com Kor'geld
    turnin 97242
step
    only Hunter Shaman
    goto 1454 @-4477.9,1964.8
    note-enUS Talk to Yelmak
    note-ptBR Fale com Yelmak
    note-enUS You may have to wait about 10 seconds before you can accept this quest
    note-ptBR Pode ser preciso esperar cerca de 10 segundos antes de aceitar esta missão
    accept 97275
step
    only Hunter Shaman
    goto 1454 @-4463,1966.2
    note-enUS Talk to Whuut
    note-ptBR Fale com Whuut
    turnin 97275
step
    only Hunter Shaman
    goto 1454 @-4193.4,2001.8
    note-enUS Talk to Migi
    note-ptBR Fale com Migi
    turnin 97249
step
    only Hunter Shaman
    goto 1454 @-4205.8,2007.8
    note-enUS Talk to Thra
    note-ptBR Fale com Thra
    accept 97326
step
    only Hunter Shaman
    ifonquest 97326
    goto 1454 @-4293.6,1949.9
    note-enUS Loot the orange Rocks on the ground
    note-ptBR Saqueie as pedras laranjas no chão
    note-enUS Skip this quest if there is a lot of competition! There aren't that many Rocks and they do not respawn quickly
    note-ptBR Pule esta missão se houver muita concorrência! Não há muitas Rocks e elas demoram para reaparecer
    objective 97326/1
step
    only Hunter Shaman
    ifcomplete 97326
    goto 1454 @-4205.9,2007.8
    note-enUS Talk to Thra
    note-ptBR Fale com Thra
    turnin 97326
step
    only Hunter Shaman
    goto 1454 @-4133.36,1939
    note-enUS Talk to Nazgrel
    note-ptBR Fale com Nazgrel
    turnin 831
step
    only Hunter Shaman
    goto 1454 @-4125.79,1920.1
    note-enUS Talk to Thrall
    note-ptBR Fale com Thrall
    accept 5726
step
    only Hunter Shaman
    ifonquest 812
    goto 1454 @-4343.19,1772.68
    note-enUS Talk to Kor'ghan in the Cleft of Shadow
    note-ptBR Fale com Kor'ghan em Cleft of Shadow
    accept 813
step
    only Priest
    path closest 1411 @-4162.63,943.3 @-4073.8,953.87 @-4026.21,866.1
    note-enUS Abandon Need for a Cure. This will remove the timer on the quest but you will still be able to do it |only Hunter Shaman
    note-ptBR Abandone Need for a Cure. Isso remove o cronômetro da missão, mas você ainda poderá fazê-la |only Hunter Shaman
    abandon 812 |only Hunter Shaman |opt
    level 9
step
    goto 1411 @-4686.09,340.52
    hearth |opt
    use 6948 |opt
    note-enUS Talk to Innkeeper Grosk
    note-ptBR Fale com Innkeeper Grosk
    vendor
    note-enUS Buy [Ice Cold Milk] from him |only Mage Warlock Priest Shaman
    note-ptBR Compre [Ice Cold Milk] dele |only Mage Warlock Priest Shaman
    note-enUS Buy [Haunch of Meat] from him |only Rogue Warrior
    note-ptBR Compre [Haunch of Meat] dele |only Rogue Warrior
    collect 1179 15 |quest 828 |q 828/1 |only Mage Warlock Priest Shaman
    collect 2287 15 |quest 828 |q 828/1 |only Rogue Warrior
step
    only Hunter
    goto 1411 @-4724.69,287.3
    note-enUS Talk to Orgnil
    note-ptBR Fale com Orgnil
    turnin 806
    accept 828
step
    only !Hunter
    path seq 1411 @-4665.47,311.62 @-4724.69,287.3
    goto 1411 @-4709.36,274.96
    note-enUS Talk to Torka, Orgnil and Gar'Thok
    note-ptBR Fale com Torka, Orgnil e Gar'Thok
    turnin 815
    turnin 96825
    turnin 806
    accept 828
    accept 99048 |only Shaman
    turnin 825
    turnin 837
step
    only Warrior
    goto 1411 @-4827.27,311.62
    note-enUS Talk to Tarshaw
    note-ptBR Fale com Tarshaw
    train 6546
step
    only Shaman
    ifnotonquest 1522
    goto 1411 @-4839.96,307.04
    note-enUS Talk to Swart
    note-ptBR Fale com Swart
    train 8050
    accept 2983
step
    only Shaman
    goto 1411 @-4839.96,307.04
    note-enUS Talk to Swart
    note-ptBR Fale com Swart
    train 8050
step
    only Warlock
    goto 1411 @-4837.31,356.03
    note-enUS Talk to Dhugru
    note-ptBR Fale com Dhugru
    train 1120
step
    only Warlock
    goto 1411 @-4854.76,345.81
    note-enUS Talk to Kitha and buy [Firebolt Rank 2]
    note-ptBR Fale com Kitha e compre [Firebolt Rank 2]
    collect 16302 1 |quest 837 |q 837/1
    train 7799
step
    only Priest
    goto 1411 @-4831.5,295.05
    note-enUS Talk to Tai'jin
    note-ptBR Fale com Tai'jin
    accept 5654 |only Troll
    accept 5660 |only Scourge
    trainer
step
    only Hunter
    goto 1411 @-4704.07,275.31
    note-enUS Go inside the bunker
    note-ptBR Entre no bunker
    note-enUS Talk to Thotar inside
    note-ptBR Fale com Thotar lá dentro
    train 13549
step
    only Rogue
    goto 1411 @-4710.94,268.26
    note-enUS Talk to Kaplak
    note-ptBR Fale com Kaplak
    train 674
]==])

register([==[
#format 1
#id forever.h.10-12-durotar
#name 10-12 Durotar
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 11
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Horde
#levels 10-12
#zone 1411
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup Speedrun 1-22
#subgroup-ptBR Rota rápida 1-22
#recommend Troll Orc
#next forever.h.10-12-tirisfal-orc-troll

step
    only Shaman Hunter
    goto 1411 @-4648.55,271.43
    note-enUS Talk to Takrin
    note-ptBR Fale com Takrin
    accept 840
step
    only Shaman
    ifonquest 840 2983 1522 2984 1523
    goto 1413 @-3686.1,303.14 40
step
    only Shaman
    goto 1413 @-3687.11,303.14
    note-enUS Talk to Kargal
    note-ptBR Fale com Kargal
    turnin 840
    accept 842
step
    only Shaman
    goto 1413 @-3037.56,264.63
    note-enUS Talk to Kranal
    note-ptBR Fale com Kranal
    turnin 2983
    accept 1524
step
    only Shaman
    path seq 1411 @-3905.13,-228.41 @-3899.31,-241.45 @-3906.71,-270.71 @-3910.94,-247.45 @-3931.56,-240.75 @-3964.35,-242.51 @-3974.39,-228.76 @-4020.92,-219.95 @-4034.67,-232.64 |only Shaman
    goto 1411 @-4033.08,-255.91 10 |only Shaman
    goto 1411 @-3999.24,-268.95
    note-enUS Kill Dreadmaw Crocolisks on the way. Loot them for Kron's Amulet |only Shaman
    note-ptBR Mate Dreadmaw Crocolisks pelo caminho. Saqueie-os para obter o Kron's Amulet |only Shaman
    objective 816/1 |only Shaman |opt
    note-enUS Be careful to not fall of the mountain, the path is very narrow. You could die if you fall |only Shaman
    note-ptBR Cuidado para não cair da montanha, o caminho é muito estreito. Você pode morrer se cair |only Shaman
    note-enUS Talk to Telf
    note-ptBR Fale com Telf
    turnin 1524
    accept 1525
step
    only Shaman
    goto 1411 @-5061.7,201.7
    note-enUS Talk to Heglan Shadeeye
    note-ptBR Fale com Heglan Shadeeye
    turnin 99048
    accept 99049
step
    only Shaman
    goto 1411 @-5073.9,244.7
    note-enUS Loot the Abandoned Dagger on the ground
    note-ptBR Saqueie a Abandoned Dagger no chão
    objective 99049/1
step
    only Shaman
    goto 1411 @-5140.8,229.1
    note-enUS Loot the Weapon Piece on the ground
    note-ptBR Saqueie a Weapon Piece no chão
    objective 99049/3
step
    only Shaman
    goto 1411 @-5138,314.1
    note-enUS Loot the Strange Debris on the ground
    note-ptBR Saqueie os Strange Debris no chão
    objective 99049/2
step
    only Shaman
    goto 1411 @-4725,287.2
    note-enUS Talk to Orgnil Soulscar
    note-ptBR Fale com Orgnil Soulscar
    turnin 99049
step
    only Shaman
    path closest 1411 @-4774.39,780.8 @-4749.01,822.39 @-4767.52,825.92 @-4772.28,848.12 @-4756.41,863.63 @-4715.7,861.87 @-4706.71,902.41
    note-enUS Tame a Venomtail Scorpid |only Hunter
    note-ptBR Dome um Venomtail Scorpid |only Hunter
    train 16828 |only Hunter |opt
    note-enUS Kill Burning Blade Cultists. Loot them for a Reagent Pouch
    note-ptBR Mate Burning Blade Cultists. Saqueie-os para obter uma Reagent Pouch
    objective 1525/2
step
    only !Shaman !Hunter
    ifturnedin 806
    path seq 1411 @-4939.36,824.51 |only !Shaman !Hunter
    goto 1411 @-4945.18,1101.92 50 |only !Shaman !Hunter
    goto 1411 @-4945.18,1101.92
    note-enUS Talk to Margoz
    note-ptBR Fale com Margoz
    turnin 828
    accept 827
step
    only !Shaman !Hunter
    ifturnedin 828
    path closest 1411 @-4949.41,925.67 @-4929.32,823.45 @-4774.39,780.8 |only !Shaman !Hunter
    path closest 1411 @-4774.39,780.8 @-4749.01,822.39 @-4767.52,825.92 @-4772.28,848.12 @-4756.41,863.63 @-4715.7,861.87 @-4749.01,822.39
    note-enUS Kill Burning Blade Orcs. Loot them for their Collars
    note-ptBR Mate Burning Blade Orcs. Saqueie-os para obter as coleiras
    objective 827/1
step
    path closest 1411 @-4816.69,972.91 @-4818.81,848.48 @-4755.36,952.82 @-4704.07,964.1 @-4818.28,975.38 @-4718.87,1076.19 @-4672.87,1131.89 @-4816.69,972.91
    note-enUS Kill Dustwind Savages and Dustwind Storm Witches
    note-ptBR Mate Dustwind Savages e Dustwind Storm Witches
    use 277661
    objective 835/1
    objective 835/2
    collect 277661 1 |quest 97281
    accept 97281
step
    path seq 1411 @-4804.53,830.5 @-4698.78,842.48
    goto 1411 @-4414.31,999.7 60
    note-enUS Talk to Rezlak
    note-ptBR Fale com Rezlak
    turnin 835
    turnin 97281
    accept 97282
step
    only Shaman Hunter
    path closest 1411 @-4010.35,1031.42 @-4217.09,1087.47 @-4100.24,1113.2 @-4108.7,1229.88 @-4013.52,1209.08 @-4010.35,1031.42
    note-enUS Finish killing Venomtail Scorpids. Loot them for their Poison Sacs
    note-ptBR Termine de matar Venomtail Scorpids. Saqueie-os para obter as Bolsas de Veneno
    objective 813/1
step
    path closest 1411 @-4248.4,972.3 @-4117.5,747.2 @-4248.4,972.3 @-4117.5,747.2
    note-enUS Kill Thunder Lizards and Lightning Hides. Loot them for their Charged Thunder Lizard Organs
    note-ptBR Mate Thunder Lizards e Lightning Hides. Saqueie-os para obter Charged Thunder Lizard Organs
    objective 97282/1 |opt
    note-enUS Kill Halikor (elite). Loot him for [Halikor's Hoof]
    note-ptBR Mate Halikor (elite). Saqueie-o para obter [Halikor's Hoof]
    note-enUS This is hard! Group up if possible. It has 800 health but his damage is manageable. Skip this step if you can't kill it
    note-ptBR Isto é difícil! Forme um grupo se possível. Tem 800 de vida, mas o dano é controlável. Pule esta etapa se não conseguir matá-lo
    note-enUS He has at least two different spawn locations inside Thunder Ridge
    note-ptBR Ele tem pelo menos dois locais de ressurgimento diferentes dentro de Thunder Ridge
    collect 275723 1 |quest 96877
    accept 96877
step
    goto 1411 @-4047.3,918.4
    note-enUS Kill Thunder Lizards and Lightning Hides. Loot them for their Charged Thunder Lizard Organs
    note-ptBR Mate Thunder Lizards e Lightning Hides. Saqueie-os para obter Charged Thunder Lizard Organs
    objective 97282/1
step
    goto 1411 @-4414.5,999.8
    note-enUS Talk to Rezlak
    note-ptBR Fale com Rezlak
    turnin 97282
step
    only Shaman Hunter
    ifturnedin 806
    goto 1411 @-4945.18,1101.92 50 |only Shaman Hunter
    goto 1411 @-4945.18,1101.92
    note-enUS Talk to Margoz
    note-ptBR Fale com Margoz
    turnin 828
    accept 827
step
    only Shaman Hunter
    path seq 1411 @-4876.97,1452.31 @-4855.82,1498.84 @-4833.08,1494.96 @-4805.59,1495.67 @-4784.44,1535.85 @-4750.6,1531.62 @-4734.21,1505.54 @-4693.49,1519.64 @-4679.75,1501.31 |only Shaman Hunter
    goto 1411 @-4684.5,1466.06 15 |only Shaman Hunter
    goto 1411 @-4701.42,1455.83
    note-enUS Kill Venomtail Scorpids. Loot them for their Poison Sacs |only Shaman Hunter
    note-ptBR Mate Venomtail Scorpids. Saqueie-os para obter as bolsas de veneno |only Shaman Hunter
    objective 813/1 |only Shaman Hunter |opt
    note-enUS Kill Burning Blade Orcs. Loot them for their Collars and for a Lieutenant's Insignia |only Shaman Hunter
    note-ptBR Mate Burning Blade Orcs. Saqueie-os para obter as coleiras e uma Lieutenant's Insignia |only Shaman Hunter
    objective 827/1 |only Shaman Hunter |opt
    objective 5726/1 |only Shaman Hunter |opt
    note-enUS Kill Gazz'uz. Loot him for his [Eye of Burning Shadow]
    note-ptBR Mate Gazz'uz. Saqueie-o para obter o [Eye of Burning Shadow]
    note-enUS Use the [Eye of Burning Shadow] to start the quest
    note-ptBR Use o [Eye of Burning Shadow] para iniciar a missão
    note-enUS Use your [Really Sticky Glue] on the Voidwalker to avoid being hit, and [Healing Potions] to restore health. Use LoS (line of sight) to avoid Gazz'uz his Shadow Bolts
    note-ptBR Use sua [Really Sticky Glue] no Voidwalker para não ser atingido e [Healing Potions] para recuperar vida. Use a linha de visão para evitar as Shadow Bolts de Gazz'uz
    note-enUS You can run to bodies of water found within the cave to evade the Voidwalker after killing Gazz'uz
    note-ptBR Você pode correr até as poças de água dentro da caverna para fugir do Voidwalker depois de matar Gazz'uz
    note-enUS Be careful as he is VERY difficult. You can skip this quest if you need
    note-ptBR Cuidado, ele é MUITO difícil. Você pode pular esta missão se precisar
    collect 4903 1 |quest 832 |q 832/1
    accept 832
    use 4903
step
    only Shaman Hunter
    path closest 1411 @-4805.59,1495.67 @-4855.82,1498.84 @-4833.08,1494.96 @-4805.59,1495.67 @-4784.44,1535.85 @-4750.6,1531.62 @-4734.21,1505.54 @-4693.49,1519.64 @-4679.75,1501.31 @-4684.5,1466.06 @-4805.59,1495.67
    note-enUS Kill Burning Blade Orcs. Loot them for their Collars and for a Lieutenant's Insignia
    note-ptBR Mate Burning Blade Orcs. Saqueie-os para obter as coleiras e uma Lieutenant's Insignia
    note-enUS Skip the Lieutenant's Insignia if you're unlucky with the drop
    note-ptBR Pule a Lieutenant's Insignia se estiver sem sorte com o drop
    objective 827/1
    objective 5726/1
step
    ifturnedin 806
    goto 1411 @-4945.18,1101.92
    note-enUS Kill Venomtail Scorpids. Loot them for their Poison Sacs |only Shaman Hunter
    note-ptBR Mate Venomtail Scorpids. Saqueie-os para obter as bolsas de veneno |only Shaman Hunter
    objective 813/1 |only Shaman Hunter |opt
    note-enUS Talk to Margoz
    note-ptBR Fale com Margoz
    turnin 827
    accept 829
step
    only !Rogue
    ifnotturnedin 97246
    path seq 1454 @-4367.46,1405.44
    goto 1454 @-4355.53,1520.68
    zone 1454 |opt
    note-enUS Talk to Trak'gen
    note-ptBR Fale com Trak'gen
    vendor
step
    only Rogue
    goto 1454 @-4355.53,1520.68
    note-enUS Talk to Trak'gen. Buy [Sharp Throwing Axe] from him
    note-ptBR Fale com Trak'gen. Compre [Sharp Throwing Axe] dele
    collect 3135 1 |quest 354 |q 354/1
    vendor
step
    only Troll Priest
    ifonquest 5654
    goto 1454 @-4179.79,1452.58
    note-enUS Equip the [Sharp Throwing Axe] when you are level 11 |only Rogue
    note-ptBR Equipe o [Sharp Throwing Axe] quando estiver no nível 11 |only Rogue
    use 3135 |only Rogue |opt
    note-enUS Talk to Ur'kyo
    note-ptBR Fale com Ur'kyo
    turnin 5654
    trainer
step
    only Troll Priest
    goto 1454 @-4179.79,1452.58
    note-enUS Talk to Ur'kyo
    note-ptBR Fale com Ur'kyo
    turnin 5652
    trainer
step
    path seq 1454 @-4460,1598.6
    goto 1454 @-4460.6,1584.3 10
    note-enUS Talk to Thatog
    note-ptBR Fale com Thatog
    note-enUS He is upstairs in the building
    note-ptBR Ele está no andar de cima do prédio
    accept 97246
step
    only Shaman
    goto 1454 @-4347.54,1634.33
    note-enUS Talk to Urtharo. Buy a [Quarter Staff] from him
    note-ptBR Fale com Urtharo. Compre [Quarter Staff] dele
    collect 854 1 |quest 924 |q 924/1
step
    goto 1454 @-4482.6,1775
    note-enUS Equip the [Quarter Staff] |only Shaman
    note-ptBR Equipe o [Quarter Staff] |only Shaman
    use 854 |only Shaman |opt
    note-enUS Talk to Borstan
    note-ptBR Fale com Borstan
    turnin 97246
    accept 97249
step
    ifonquest 96877
    goto 1454 @-4568.1,1855.2
    note-enUS Talk to Kamari
    note-ptBR Fale com Kamari
    turnin 96877
step
    goto 1454 @-4466.8,1954.8
    note-enUS Talk to Kor'geld
    note-ptBR Fale com Kor'geld
    accept 97242
step
    path closest 1454 @-4560,1908.5 @-4587,1918.3 @-4608,1897.4 @-4632.3,1911.6 @-4653.9,1950.3 @-4677.7,1971.6 @-4667.4,1997 @-4609.8,2013.5 @-4630.6,1968.1
    note-enUS Loot the Handful of Cattails and Speargrass Cuttings in the water
    note-ptBR Saqueie o Handful of Cattails e as Speargrass Cuttings na água
    objective 97242/1
    objective 97242/2
step
    only Hunter
    goto 1454 @-4607.02,2100.64
    note-enUS Talk to Ormak
    note-ptBR Fale com Ormak
    train 14281
step
    only Hunter
    goto 1454 @-4611.09,2135.15
    note-enUS Talk to Xao'tsu
    note-ptBR Fale com Xao'tsu
    train 24556
step
    goto 1454 @-4466.9,1954.5
    note-enUS Talk to Kor'geld
    note-ptBR Fale com Kor'geld
    turnin 97242
step
    goto 1454 @-4477.9,1964.8
    note-enUS Talk to Yelmak
    note-ptBR Fale com Yelmak
    note-enUS You may have to wait about 10 seconds before you can accept this quest
    note-ptBR Pode ser preciso esperar cerca de 10 segundos antes de aceitar esta missão
    accept 97275
step
    goto 1454 @-4463,1966.2
    note-enUS Talk to Whuut
    note-ptBR Fale com Whuut
    turnin 97275
step
    goto 1454 @-4193.4,2001.8
    note-enUS Talk to Migi
    note-ptBR Fale com Migi
    turnin 97249
step
    goto 1454 @-4205.8,2007.8
    note-enUS Talk to Thra
    note-ptBR Fale com Thra
    accept 97326
step
    ifonquest 97326
    goto 1454 @-4293.6,1949.9
    note-enUS Loot the orange Rocks on the ground
    note-ptBR Saqueie as pedras laranjas no chão
    note-enUS Skip this quest if there is a lot of competition! There aren't that many Rocks and they do not respawn quickly
    note-ptBR Pule esta missão se houver muita concorrência! Não há muitas Rocks e elas demoram para reaparecer
    objective 97326/1
step
    ifcomplete 97326
    goto 1454 @-4205.9,2007.8
    note-enUS Talk to Thra
    note-ptBR Fale com Thra
    turnin 97326
step
    only !Shaman !Hunter
    goto 1454 @-4133.36,1939
    note-enUS Talk to Nazgrel
    note-ptBR Fale com Nazgrel
    turnin 831
step
    only Shaman Hunter
    ifcomplete 5726
    ifdungeon RFC
    goto 1454 @-4125.79,1920.1
    note-enUS Talk to Thrall
    note-ptBR Fale com Thrall
    turnin 5726
    accept 5727
step
    only Shaman Hunter
    ifcomplete 5726
    ifnotdungeon RFC
    goto 1454 @-4125.79,1920.1
    note-enUS Talk to Thrall
    note-ptBR Fale com Thrall
    turnin 5726
step
    only Shaman
    goto 1454 @-4225.09,1933.29
    note-enUS Talk to Kardris
    note-ptBR Fale com Kardris
    train 8050
step
    ifonquest 829
    goto 1454 @-4320.7,1750.3
    note-enUS Talk to Kareth
    note-ptBR Fale com Kareth
    vendor
step
    only Rogue
    goto 1454 @-4280.21,1773.15
    note-enUS Talk to Therzok
    note-ptBR Fale com Therzok
    accept 1963 |only Orc Rogue Troll Rogue
step
    only Shaman Hunter
    goto 1454 @-4343.19,1772.68
    note-enUS Talk to Kor'ghan
    note-ptBR Fale com Kor'ghan
    turnin 813
step
    only Warlock
    goto 1454 @-4362.13,1834.51
    note-enUS Talk to Mirket
    note-ptBR Fale com Mirket
    train 1120
step
    only Shaman Hunter
    ifturnedin 827
    ifonquest 832
    goto 1454 @-4374.75,1800.93
    note-enUS Talk to Neeru
    note-ptBR Fale com Neeru
    turnin 829
    turnin 832
    accept 809
step
    ifturnedin 827
    goto 1454 @-4374.75,1800.93
    note-enUS Talk to Neeru
    note-ptBR Fale com Neeru
    turnin 829
    accept 809
step
    only Shaman Hunter
    goto 1411 @-4158.93,1153.04
    zone 1411 |only !Shaman !Hunter |opt
    zone 1411 |only Shaman Hunter |opt
    note-enUS Talk to Rhinag
    note-ptBR Fale com Rhinag
    accept 812
    turnin 812
step
    only Shaman Hunter
    path seq 1411 @-3802.55,650.72 @-3803.08,503.38 @-3783.51,238.65 @-3774.53,150.88
    goto 1411 @-3797.79,317.26
    note-enUS Travel south alongside the river toward Far Watch Post
    note-ptBR Siga para o sul ao longo do rio em direção a Far Watch Post
    note-enUS Kill Dreadmaw Crocolisks on the way. Loot them for Kron's Amulet
    note-ptBR Mate Dreadmaw Crocolisks pelo caminho. Saqueie-os para obter o Kron's Amulet
    note-enUS Skip and abandon this quest if it won't drop
    note-ptBR Pule e abandone esta missão se o item não cair
    objective 816/1
step
    only Shaman Hunter
    ifcomplete 816
    goto 1411 @-4241.94,742.37
    note-enUS Talk to Misha
    note-ptBR Fale com Misha
    turnin 816
step
    only Shaman Hunter
    goto 1413 @-3686.1,303.14 40
step
    only Hunter
    goto 1413 @-3687.11,303.14
    note-enUS Talk to Kargal
    note-ptBR Fale com Kargal
    turnin 840
    accept 842
step
    only Shaman Hunter
    ifturnedin 829
    goto 1413 @-3694.2,256.52
    note-enUS Talk to Ak'Zeloth
    note-ptBR Fale com Ak'Zeloth
    turnin 809
    accept 924
step
    only Shaman Hunter
    ifonquest 924
    goto 1413 @-3694.2,259.22
    note-enUS Loot the [Flawed Power Stone] next to Ak'Zeloth. This item has a 30 minute timer, so be sure to be quick
    note-ptBR Saqueie a [Flawed Power Stone] ao lado de Ak'Zeloth. Este item tem um cronômetro de 30 minutos, então seja rápido
    turnin 926
step
    only Rogue Mage Priest Warlock Warrior
    goto 1411 @-4648.55,1321.88 40
    zone 1420
    note-enUS Conjure water while waiting |only Mage
    note-ptBR Conjure água enquanto espera |only Mage
step
    abandon 816
]==])

register([==[
#format 1
#id forever.h.10-12-tirisfal-orc-troll
#name 10-12 Tirisfal (Orc/Troll)
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 11
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Horde
#levels 10-12
#zones 1420
#suffix (Orc/Troll)
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup Speedrun 1-22
#subgroup-ptBR Rota rápida 1-22
#recommend !Hunter !Shaman !Tauren !Skyborne !Scourge
#next forever.h.12-14-silverpine-forest

step
    path seq 1420 @253.4,2234.85
    goto 1420 @254.6,2225.8
    note-enUS Talk to Deathguard Terrence
    note-ptBR Fale com Deathguard Terrence
    accept 96895
step
    only Warrior
    ifonquest 1505
    abandon 1505
step
    only Warrior
    ifonquest 1498
    abandon 1498
step
    only Warrior
    ifnotturnedin 1498
    goto 1420 @238.49,2254.43
    note-enUS Talk to Austil
    note-ptBR Fale com Austil
    accept 1818
step
    only Warlock
    ifnotturnedin 1504
    goto 1420 @248.88,2251.12
    note-enUS Talk to Ageron inside the inn
    note-ptBR Fale com Ageron dentro da estalagem
    accept 1478
step
    only Scourge Rogue
    goto 1420 @243.01,2270.7
    note-enUS Talk to Marion inside the inn
    note-ptBR Fale com Marion dentro da estalagem
    accept 1885
step
    only Warrior
    ifnotturnedin 1498
    goto 1420 @403.87,2287.87
    note-enUS Talk to Dillinger
    note-ptBR Fale com Dillinger
    turnin 1818
    accept 1819
step
    only Warrior
    ifnotturnedin 1498
    goto 1420 @360.04,2376.14
    note-enUS Click the Mausoleum Trigger on the ground. This will summon Ulag. Kill him
    note-ptBR Clique no Mausoleum Trigger no chão. Isso invocará Ulag. Mate-o
    objective 1819/1
step
    only Warrior
    ifnotturnedin 1498
    goto 1420 @403.87,2287.87
    note-enUS Talk to Dillinger
    note-ptBR Fale com Dillinger
    turnin 1819
    accept 1820
step
    goto 1420 @346.94,2258.95
    note-enUS Talk to Johaan
    note-ptBR Fale com Johaan
    accept 445
step
    only Warrior
    goto 1420 @244.36,2262.26
    note-enUS Talk to Coleman
    note-ptBR Fale com Coleman
    turnin 1820
step
    only Priest
    goto 1420 @251.14,2265.28
    note-enUS Talk to Beryl on the second floor
    note-ptBR Fale com Beryl no segundo andar
    train 588
step
    only Mage
    goto 1420 @233.06,2256.84
    note-enUS Talk to Cain on the second floor
    note-ptBR Fale com Cain no segundo andar
    train 145
step
    only Warrior
    goto 1420 @238.49,2255.03
    note-enUS Talk to Austil
    note-ptBR Fale com Austil
    train 7384
step
    only Rogue
    goto 1420 @243.01,2271
    note-enUS Talk to Marion on the second floor
    note-ptBR Fale com Marion no segundo andar
    train 1766
step
    only Warlock
    goto 1420 @250.24,2259.25
    note-enUS Talk to Rupert
    note-ptBR Fale com Rupert
    train 755
step
    only !Mage
    goto 1420 @244.81,2269.19
    note-enUS Talk to Innkeeper Renee
    note-ptBR Fale com Innkeeper Renee
    note-enUS Buy [Ice Cold Milk] from her |only Mage Priest Shaman
    note-ptBR Compre [Ice Cold Milk] dela |only Mage Priest Shaman
    note-enUS Buy [Red-speckled Mushroom] from her |only Warrior Rogue
    note-ptBR Compre [Red-speckled Mushroom] dela |only Warrior Rogue
    note-enUS Buy [Ice Cold Milk] and [Red-speckled Mushroom] from her |only Warlock Hunter
    note-ptBR Compre [Ice Cold Milk] e [Red-speckled Mushroom] dela |only Warlock Hunter
    vendor
    collect 1179 20 |quest 96897 |q 96897/1 |only Mage Priest Shaman
    collect 4605 20 |quest 96897 |q 96897/1 |only Rogue Warrior
    collect 1179 15 |quest 96897 |q 96897/1 |only Warlock Hunter
    collect 4605 15 |quest 96897 |q 96897/1 |only Warlock Hunter
step
    goto 1420 @74,2022.47
    note-enUS Talk to Linnea
    note-ptBR Fale com Linnea
    accept 356
step
    goto 1420 @54.6,1996.6
    note-enUS Talk to Hadric Harlson
    note-ptBR Fale com Hadric Harlson
    turnin 96895
    accept 96897
    accept 96898
step
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
    ifonquest 356
    path closest 1420 @-324.55,2000.48 @-330.88,2040.84 @-359.34,2073.38 @-421.25,2070.07 @-464.63,2070.37 @-516.14,2017.05 @-466.44,1986.02 @-436.61,1951.67 @-355.28,1970.35
    note-enUS Kill Bleeding Horrors and Wandering Spirits
    note-ptBR Mate Bleeding Horrors e Wandering Spirits
    objective 356/1
    objective 356/2
step
    goto 1420 @54.5,1996.4
    note-enUS Talk to Hadric Harlson
    note-ptBR Fale com Hadric Harlson
    turnin 96897
    turnin 96898
step
    ifcomplete 356
    goto 1420 @74,2022.47
    note-enUS Talk to Linnea
    note-ptBR Fale com Linnea
    turnin 356
step
    only !Scourge
    goto 1420 @240.75,1877.57 20
    path seq 1458 @239.14,1749.54 @255.64,1724.7 @240.68,1706.97 @241.06,1660.12 @257.08,1623.38 @244.51,1598.73
    goto 1458 @266.39,1567.11
    zone 1458 |opt
    note-enUS Talk to Michael
    note-ptBR Fale com Michael
    fp
step
    only Scourge Rogue
    ifonquest 1885
    goto 1458 @71.92,1435.7
    note-enUS Talk to Mennet
    note-ptBR Fale com Mennet
    turnin 1885
    accept 1886
step
    only Rogue
    goto 1458 @323.57,1668.5
    note-enUS Talk to Archibald in the War Quarter
    note-ptBR Fale com Archibald no War Quarter
    train 201
step
    only Troll Warrior Scourge Warrior Tauren Shaman Troll Shaman Orc Shaman
    goto 1458 @308.89,1667.8
    note-enUS Equip the [Cutlass] |only Rogue
    note-ptBR Equipe o [Cutlass] |only Rogue
    use 851 |only Rogue |opt
    train 201 |only Rogue |opt
    note-enUS Talk to Benijah. Buy a [Quarter Staff] from him
    note-ptBR Fale com Benijah. Compre [Quarter Staff] dele
    collect 854 1 |quest 435 |q 435/1
step
    only Warlock
    ifnotturnedin 1504
    goto 1458 @57.05,1711.77
    note-enUS Equip the [Quarter Staff] |only Troll Warrior Scourge Warrior Tauren Shaman Troll Shaman Orc Shaman
    note-ptBR Equipe o [Quarter Staff] |only Troll Warrior Scourge Warrior Tauren Shaman Troll Shaman Orc Shaman
    use 854 |only Troll Warrior Scourge Warrior Tauren Shaman Troll Shaman Orc Shaman |opt
    note-enUS Talk to Carendin in the Magic Quarter
    note-ptBR Fale com Carendin no Magic Quarter
    turnin 1478
    accept 1473
step
    only Warlock
    path seq 1458 @419.89,1627.54 @428.52,1597.2 @439.17,1626.06 @476.78,1632.15 @482.34,1660.63 @539.33,1665.49 @610.42,1684.44
    goto 1458 @663.19,1600.46 35
    goto 1420 @724.25,1682.66 50
    zone 1420
step
    only Warlock
    ifnotturnedin 1504
    goto 1420 @726.06,1801.95 |only Warlock
    goto 1420 @726.06,1801.95
    note-enUS Loot Perrine's Chest for [Egalin's Grimoire] |only Warlock
    note-ptBR Saqueie o Perrine's Chest para obter [Egalin's Grimoire] |only Warlock
    objective 1473/1 |only Warlock |opt
    note-enUS Loot Perrine's Chest on the ground for [Egalin's Grimoire]
    note-ptBR Saqueie o Perrine's Chest no chão para obter [Egalin's Grimoire]
    objective 1473/1
step
    only Warlock
    ifnotturnedin 1504
    path seq 1458 @714.8,1604.24 @652.73,1623.44 @634.02,1669.66 @539.52,1665.17 @481.48,1659.8 @476.49,1632.15 @439.08,1627.02 |only Warlock
    goto 1458 @435.05,1598.86 10 |only Warlock
    goto 1458 @57.05,1711.77
    zone 1458 |only Warlock |opt
    note-enUS Talk to Carendin in the Magic Quarter
    note-ptBR Fale com Carendin no Magic Quarter
    turnin 1473
    accept 1471
step
    only Warlock
    ifnotturnedin 1504
    goto 1458 @41.99,1704.48 |only Warlock
    goto 1458 @41.99,1704.48
    use 6284 |only Warlock |opt
    note-enUS Kill the Summoned Voidwalker
    note-ptBR Mate o Summoned Voidwalker
    objective 1471/1
    use 6284
step
    only Warlock
    ifnotturnedin 1504
    goto 1458 @57.34,1711.71
    note-enUS Talk to Carendin
    note-ptBR Fale com Carendin
    turnin 1471
step
    only Priest
    goto 1458 @273.87,1482.36
    note-enUS Talk to Lavinia
    note-ptBR Fale com Lavinia
    train 7411
step
    only Priest
    goto 1458 @194.24,1681.5
    note-enUS Talk to Josef
    note-ptBR Fale com Josef
    train 3908
step
    only Priest
    goto 1458 @194.34,1681.63
    note-enUS Turn all your [Linen Cloth] into [Bolt of linen Linen Cloth]
    note-ptBR Transforme todo o seu [Linen Cloth] em [Bolt of linen Linen Cloth]
    collect 2996 30 |quest 435 |q 435/1
step
    only Priest
    goto 1458 @194.34,1681.63
    note-enUS Talk to Josef
    note-ptBR Fale com Josef
    train 7623
step
    only Priest
    goto 1458 @196.16,1684.83
    note-enUS Talk to Millie
    note-ptBR Fale com Millie
    note-enUS Buy [Coarse Thread] from her
    note-ptBR Compre [Coarse Thread] dela
    collect 2320 30 |quest 435 |q 435/1
step
    only Priest
    note-enUS Create as many [Brown Linen Robes] as you can
    note-ptBR Crie o máximo de [Brown Linen Robes] que puder
    collect 6238 9 |quest 398 |q 398/1
step
    only Priest
    goto 1458 @275.02,1487.55
    note-enUS Talk to Thaddeus. Buy a [Copper Rod] and [Simple Wood] from him
    note-ptBR Fale com Thaddeus. Compre [Copper Rod] e [Simple Wood] dele
    note-enUS Disenchant all the [Brown Linen Robes] that you made and create a [Runed Copper Rod]
    note-ptBR Desencante todos os [Brown Linen Robes] que fez e crie um [Runed Copper Rod]
    note-enUS If you did not get a [Lesser Magic Essence] then buy one from Thaddeus if there is one available. Otherwise finish this step later
    note-ptBR Se não conseguiu uma [Lesser Magic Essence], compre uma de Thaddeus se houver disponível. Caso contrário, termine esta etapa depois
    collect 6218 1 |quest 435 |q 435/1
    collect 4470 1 |quest 435 |q 435/1
step
    only Priest
    goto 1458 @273.2,1491.71
    note-enUS Talk to Malcomb
    note-ptBR Fale com Malcomb
    train 14293
step
    only Priest
    note-enUS Create a [Lesser Magic Wand]
    note-ptBR Crie uma [Lesser Magic Wand]
    note-enUS If you did not get a [Lesser Magic Essence] then buy one from Thaddeus if there is one available. Otherwise finish this step later
    note-ptBR Se não conseguiu uma [Lesser Magic Essence], compre uma de Thaddeus se houver disponível. Caso contrário, termine esta etapa depois
    collect 11287 1 |quest 435 |q 435/1
step
    only Rogue
    goto 1458 @68.66,1416.69
    note-enUS Equip the [Lesser Magic Wand] |only Priest
    note-ptBR Equipe a [Lesser Magic Wand] |only Priest
    use 11287 |only Priest |opt
    note-enUS Talk to Carolyn
    note-ptBR Fale com Carolyn
    train 1766
step
    only Mage
    goto 1458 @56.38,1813.81
    note-enUS Talk to Anastasia
    note-ptBR Fale com Anastasia
    train 145
step
    only Warlock
    goto 1458 @20.02,1776.42
    note-enUS Talk to Richard
    note-ptBR Fale com Richard
    train 755
step
    only Priest
    goto 1458 @416.91,1757.03
    note-enUS Talk to Lazarus
    note-ptBR Fale com Lazarus
    train 588
step
    only Warrior
    goto 1458 @418.35,1767.02
    note-enUS Talk to Baltus Fowler
    note-ptBR Fale com Baltus Fowler
    train 7384
step
    abandon 806
step
    abandon 408
step
    only Warrior
    abandon 1821
step
    abandon 375
step
    path seq 1458 @419.89,1627.54 @428.52,1597.2 @439.17,1626.06 @476.78,1632.15 @482.34,1660.63 @539.33,1665.49 @610.42,1684.44
    goto 1458 @663.19,1600.46 35
    goto 1420 @724.25,1682.66 50
    zone 1420
step
    goto 1420 @629.36,1553.42
    zone 1421
]==])
