-- Convertido automaticamente de RXPGuides (Alliance-1-13_Human.lua)
-- (c) RestedXP - CC BY-NC-SA 4.0 (ver LICENSE.txt). Não edite à mão:
-- rode tools/rxp2azimute.py de novo.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id forever.a.1-6-northshire
#name 1-6 Northshire
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#levels 1-6
#zone 1429
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup Speedrun 1-20
#subgroup-ptBR Rota rápida 1-20
#recommend Human
#next forever.a.6-11-elwynn-forest

step
    goto 1429 @-136.48,-8933.47
    note-enUS You have selected a guide meant for Humans. You should choose the same starter zone that you start in |only !Human
    note-ptBR Você selecionou um guia feito para Humanos. Escolha a mesma zona inicial em que você começou |only !Human
    note-enUS Note that you have selected the single target Mage guide. Single target is a lot safer than AoE Mage, but a LOT slower |only Mage
    note-ptBR Observe que você selecionou o guia de Mago de alvo único. Alvo único é bem mais seguro que o Mago de AoE, mas MUITO mais lento |only Mage
    note-enUS Talk to Deputy Willem
    note-ptBR Fale com Deputy Willem
    accept 783
step
    only Warrior
    path seq 1429 @-75.05,-8872.36 @-112.74,-8901.66
    goto 1429 @-208.4,-8918.35
    note-enUS Kill Young Wolves until you have 10c+ worth of vendor trash
    note-ptBR Mate Young Wolves até ter 10c+ em lixo para vender
    note-enUS You will train [Battle Shout] which increases early leveling speeds
    note-ptBR Você vai treinar [Battle Shout], que acelera o início da evolução
    note-enUS Talk to Brother Danil
    note-ptBR Fale com Brother Danil
    vendor
    note-enUS Talk to Llane Beshere inside downstairs
    note-ptBR Fale com Llane Beshere lá dentro, no andar de baixo
    train 6673
step
    goto 1429 @-162.62,-8902.59
    note-enUS Talk to Marshal McBride
    note-ptBR Fale com Marshal McBride
    turnin 783
    accept 7
step
    goto 1429 @-136.52,-8933.53
    note-enUS Talk to Deputy Willem
    note-ptBR Fale com Deputy Willem
    accept 5261
step
    goto 1429 @-163.24,-8869.26
    note-enUS Talk to Eagan Peltskinner
    note-ptBR Fale com Eagan Peltskinner
    turnin 5261
    accept 33
step
    path seq 1429 @-68.11,-8874.67 |only Priest Mage Warlock
    goto 1429 @-112.74,-8901.66 |only Priest Mage Warlock
    path seq 1429 49.05,38.27 45.71,38.72 47.98,39.42 49.05,38.27 48.36,37.58 47.14,37.64 46.87,36.91 46.48,37.03 46.47,38.27 45.9,38.01 45.71,38.72 46.3,39.99 45.72,40.73 46.4,41.84 46.74,40.99 47.7,40.3
    goto 1429 47.98,39.42 45
    note-enUS Once you have 50c worth of vendor trash: |only Priest Mage Warlock
    note-ptBR Quando tiver 50c em lixo para vender: |only Priest Mage Warlock
    note-enUS Talk to Brother Danil |only Priest Mage Warlock
    note-ptBR Fale com Brother Danil |only Priest Mage Warlock
    note-enUS Vendor Trash |only Priest Mage Warlock
    note-ptBR Venda o lixo |only Priest Mage Warlock
    note-enUS Buy 10 [Refreshing Spring Water] from him |only Priest Mage Warlock
    note-ptBR Compre 10 [Refreshing Spring Water] dele |only Priest Mage Warlock
    collect 159 10 |only Priest Mage Warlock |opt
    note-enUS Kill Young Wolves and Timber Wolves. Loot them for their Tough Wolf Meat
    note-ptBR Mate Young Wolves e Timber Wolves. Saqueie-os para obter Tough Wolf Meat
    objective 33/1
step
    path closest 1429 47.6,36.72 49.22,37.01 47.57,34.97 47.6,36.72 47.38,36.31 47.61,35.86 48.31,36.49 49.07,36.44 49.22,37.01 49.84,36.41 50.1,35.67 49.82,35.16 48.84,35.07 47.57,34.97
    note-enUS Kill Kobold Vermins. Loot them for the [Nibbled-On Book]
    note-ptBR Mate Kobold Vermins. Saqueie-os para obter o [Nibbled-On Book]
    use 247834
    note-enUS It is important to turn in this quest as soon as you get the [Nibbled-On Book] drop
    note-ptBR É importante entregar esta missão assim que obtiver o drop [Nibbled-On Book]
    collect 247834 1 |quest 91741 |q 91741/1
    accept 91741
    objective 7/1
step
    path seq 1429 @-136.9,-8913.8 @-176,-8880.9
    goto 1429 @-186.12,-8874.91
    note-enUS Talk to Brother Paxton
    note-ptBR Fale com Brother Paxton
    turnin 91741
    accept 92124
step
    goto 1429 @-182.65,-8881.62
    note-enUS Talk to Daniel
    note-ptBR Fale com Daniel
    turnin 92124
step
    goto 1429 @-186.12,-8874.91
    note-enUS Talk to Brother Paxton
    note-ptBR Fale com Brother Paxton
    accept 91743
step
    path closest 1429 47.6,36.72 49.22,37.01 47.57,34.97 47.6,36.72 47.38,36.31 47.61,35.86 48.31,36.49 49.07,36.44 49.22,37.01 49.84,36.41 50.1,35.67 49.82,35.16 48.84,35.07 47.57,34.97
    note-enUS Kill Kobold Vermins. Loot them for their Stolen Books
    note-ptBR Mate Kobold Vermins. Saqueie-os para obter os Stolen Books
    note-enUS Don't go out of your way to loot all Stolen Books yet
    note-ptBR Não saia do caminho para saquear todos os Stolen Books ainda
    objective 7/1
    objective 91743/1
step
    goto 1429 @-163.24,-8869.26
    note-enUS Talk to Eagan Peltskinner
    note-ptBR Fale com Eagan Peltskinner
    turnin 33 |reward 2 |only Warrior Paladin Rogue
    turnin 33 |reward 1 |only !Warrior !Paladin !Rogue
step
    only Priest Mage Warlock
    goto 1429 @-112.74,-8901.66
    note-enUS Talk to Brother Danil
    note-ptBR Fale com Brother Danil
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
    note-enUS Buy 10 more [Refreshing Spring Water] from him
    note-ptBR Compre mais 10 [Refreshing Spring Water] dele
    note-enUS Make sure you save 10c or more for later |only Priest Mage
    note-ptBR Guarde 10c ou mais para depois |only Priest Mage
    collect 159 10
step
    only !Priest !Mage !Warlock !Rogue
    goto 1429 @-119.86,-8898.21
    note-enUS Talk to Godric Rothgar
    note-ptBR Fale com Godric Rothgar
    vendor
step
    goto 1429 @-162.62,-8902.59
    note-enUS Talk to Marshal McBride
    note-ptBR Fale com Marshal McBride
    turnin 7
    accept 15
    accept 3100 |only Warrior
    accept 3101 |only Paladin
    accept 3102 |only Rogue
    accept 3103 |only Priest
    accept 3104 |only Mage
    accept 3105 |only Warlock
    accept 92479 |only Hunter
step
    only Warlock
    goto 1429 @-136.52,-8933.53
    note-enUS Talk to Deputy Willem outside
    note-ptBR Fale com Deputy Willem lá fora
    accept 18
step
    only Warlock
    goto 1429 @-195.59,-8926.73
    note-enUS Talk to Drusilla La Salle
    note-ptBR Fale com Drusilla La Salle
    turnin 3105
    accept 1598
    train 348
step
    only Warlock
    goto 1429 @-432.55,-8958
    note-enUS Open the Stolen Books. Loot it for the Powers of the Void
    note-ptBR Abra os Stolen Books. Saqueie-os para obter o Powers of the Void
    objective 1598/1
step
    path closest 1429 49.53,43.49 |only Warlock
    path closest 1429 47.47,36.3 50.22,34.12 50.84,38.05 47.47,36.3 47.25,35.16 47.01,33.83 46.77,33.27 46.27,32.49 47.66,32.06 48.04,33.08 48.8,33.81 49.28,34.61 50.22,34.12 50.24,34.88 51.06,35.58 52.06,35.8 51.51,38.06 50.84,38.05
    note-enUS If there are no Defias nearby, run back instead |only Warlock
    note-ptBR Se não houver Defias por perto, volte correndo |only Warlock
    note-enUS Kill Kobolds. Loot them for their Stolen Books
    note-ptBR Mate kobolds. Saqueie-os para obter os Stolen Books
    objective 91743/1 |opt
    level 3
    note-enUS Kill Kobold Workers for Stolen Books if you still need them
    note-ptBR Mate Kobold Workers para obter Stolen Books, se ainda precisar
    objective 91743/1
step
    only Hunter
    goto 1429 @-112.8,-8901.6
    note-enUS Talk to Brother Danil
    note-ptBR Fale com Brother Danil
    vendor
step
    goto 1429 @-162.62,-8902.59
    note-enUS Talk to Marshal McBride
    note-ptBR Fale com Marshal McBride
    turnin 15
    accept 21
step
    ifcomplete 91743
    goto 1429 @-186.12,-8874.91
    note-enUS Talk to Brother Paxton
    note-ptBR Fale com Brother Paxton
    turnin 91743
    accept 91745
step
    ifturnedin 91743
    goto 1429 @-186.12,-8874.91
    note-enUS Talk to Brother Paxton
    note-ptBR Fale com Brother Paxton
    accept 91745
step
    only Priest
    path seq 1429 48.79,41.58 48.98,41.15 49.26,40.63 49.51,40.09 49.69,40.23 49.59,40.67 49.32,40.49 49.44,39.88 |only Mage
    goto 1429 @-188.23,-8851.58 12 |only Mage
    path seq 1429 @-175.7,-8881.62 |only Priest
    goto 1429 @-193.06,-8870.05 10 |only Priest
    goto 1429 @-193.34,-8853.59
    note-enUS Talk to Priestess Anetta inside downstairs
    note-ptBR Fale com Priestess Anetta lá dentro, no andar de baixo
    turnin 3103
    trainer
step
    only Hunter
    goto 1429 @-186.12,-8907.08 15 |only Warrior
    goto 1429 @-186.12,-8907.08 15 |only Paladin
    goto 1429 @-242.1,-8884.2
    note-enUS Talk to Tordrin Sternblade
    note-ptBR Fale com Tordrin Sternblade
    turnin 92479
    trainer
step
    only Warlock
    goto 1429 @-195.59,-8926.73
    note-enUS Talk to Drusilla La Salle
    note-ptBR Fale com Drusilla La Salle
    train 172
step
    only Rogue
    path closest 1429 @-288.51,-9068.87 @-388.47,-9001.28 @-288.51,-9068.87 @-335.02,-9108.91 @-376.67,-9073.73 @-388.47,-9001.28 @-333.97,-9028.59
    level 4
step
    ifonquest 91745
    goto 1429 @-102.3,-8684.5
    use 1161 |only Warrior |opt
    note-enUS Talk to Kelsey Fargo
    note-ptBR Fale com Kelsey Fargo
    turnin 91745
    accept 91752
step
    ifturnedin 91745
    goto 1429 @-102.3,-8684.5
    note-enUS Talk to Kelsey Fargo
    note-ptBR Fale com Kelsey Fargo
    accept 91752
step
    path closest 1429 @-117.74,-8681.87 @-172.7,-8587.6 47.78,31.54 48.66,29.16 50.49,26.87 47.78,31.54 47.91,30.85 48.11,30.27 48.43,30.25 48.4,29.84 48.66,29.16 48.24,28.6 48.64,27.35 48.5,26.7 49.98,25.62 50.49,26.87
    note-enUS Kill Shinyfinder Narf. Loot him for the Sack of "Picture" Books
    note-ptBR Mate Shinyfinder Narf. Saqueie-o para obter o Sack of "Picture" Books
    objective 91752/1 |opt
    note-enUS Kill Kobold Laborers and Kobold Workers. Loot them for their Stolen Books
    note-ptBR Mate Kobold Laborers e Kobold Workers. Saqueie-os para obter os Stolen Books
    objective 91743/1 |opt
    note-enUS Kill Kobold Laborers inside Echo Ridge Mine
    note-ptBR Mate Kobold Laborers dentro da Echo Ridge Mine
    objective 21/1
step
    ifonquest 91743
    path closest 1429 47.78,31.54 48.66,29.16 50.49,26.87 47.78,31.54 47.91,30.85 48.11,30.27 48.43,30.25 48.4,29.84 48.66,29.16 48.24,28.6 48.64,27.35 48.5,26.7 49.98,25.62 50.49,26.87
    note-enUS Kill Kobold Laborers and Kobold Workers. Loot them for their Stolen Books
    note-ptBR Mate Kobold Laborers e Kobold Workers. Saqueie-os para obter os Stolen Books
    objective 91743/1
step
    ifonquest 91752
    goto 1429 @-172.7,-8587.6
    note-enUS Kill Shinyfinder Narf. Loot him for the Sack of "Picture" Books
    note-ptBR Mate Shinyfinder Narf. Saqueie-o para obter o Sack of "Picture" Books
    objective 91752/1
step
    goto 1429 @-224.02,-8850.3
    note-enUS Talk to Milly Osworth
    note-ptBR Fale com Milly Osworth
    note-enUS Skip the followup |only !Priest !Mage
    note-ptBR Pule a missão seguinte |only !Priest !Mage
    turnin 3903
    accept 3904 |only Priest Mage
step
    only Priest Mage
    path closest 1429 @-288.51,-9068.87 @-388.47,-9001.28 @-288.51,-9068.87 @-335.02,-9108.91 @-376.67,-9073.73 @-388.47,-9001.28 @-333.97,-9028.59
    note-enUS Loot Milly's Harvest on the ground
    note-ptBR Saqueie o Milly's Harvest no chão
    objective 3904/1
step
    goto 1429 57.52,48.25
    note-enUS Kill Garrick Padfoot. Loot him for his Head
    note-ptBR Mate Garrick Padfoot. Saqueie-o para obter a cabeça dele
    objective 6/1
step
    path closest 1429 @-288.51,-9068.87 @-388.47,-9001.28 @-288.51,-9068.87 @-335.02,-9108.91 @-376.67,-9073.73 @-388.47,-9001.28 @-333.97,-9028.59
    level 5
step
    only Priest Mage
    goto 1429 @-224.02,-8850.3
    note-enUS Talk to Milly Osworth
    note-ptBR Fale com Milly Osworth
    turnin 3904
    accept 3905
step
    goto 1429 @-136.48,-8933.47
    note-enUS Talk to Deputy Willem
    note-ptBR Fale com Deputy Willem
    turnin 6 |reward 2 |only Warrior Rogue Paladin
    turnin 6 |reward 1 |only !Warrior !Rogue !Paladin
step
    ifonquest 91752
    goto 1429 @-162.62,-8902.59
    note-enUS Talk to Marshal McBride inside
    note-ptBR Fale com Marshal McBride lá dentro
    turnin 91752
    accept 91758
step
    ifturnedin 91752
    goto 1429 @-162.62,-8902.59
    note-enUS Talk to Marshal McBride inside
    note-ptBR Fale com Marshal McBride lá dentro
    accept 91758
step
    goto 1429 @-162.62,-8902.59
    note-enUS Talk to Marshal McBride inside
    note-ptBR Fale com Marshal McBride lá dentro
    turnin 21 |reward 1 |only Rogue
    turnin 21 |reward 2 |only Warrior Paladin
    turnin 21 |reward 3 |only !Warrior !Paladin !Rogue
    accept 54
    accept 96627
step
    ifcomplete 91743
    goto 1429 @-186.12,-8874.91
    note-enUS Talk to Brother Paxton
    note-ptBR Fale com Brother Paxton
    turnin 91743
    accept 91745
step
    ifturnedin 91743
    goto 1429 @-186.12,-8874.91
    note-enUS Talk to Brother Paxton
    note-ptBR Fale com Brother Paxton
    accept 91745
step
    only Priest Mage
    path seq 1429 @-186.12,-8902.45 |only Priest Mage
    goto 1429 @-161.82,-8895.51 10 |only Priest Mage
    goto 1429 @-181.64,-8902.13
    note-enUS Talk to Brother Neals upstairs
    note-ptBR Fale com Brother Neals no andar de cima
    turnin 3905 |reward 1
step
    ifonquest 91745
    goto 1429 @-102.3,-8684.5
    note-enUS Talk to Kelsey Fargo
    note-ptBR Fale com Kelsey Fargo
    turnin 91745
    accept 91752
step
    ifturnedin 91745
    goto 1429 @-102.3,-8684.5
    note-enUS Talk to Kelsey Fargo
    note-ptBR Fale com Kelsey Fargo
    accept 91752
step
    ifonquest 91752
    path seq 1429 @-117.74,-8681.87
    goto 1429 @-172.7,-8587.6
    note-enUS Kill Shinyfinder Narf. Loot him for the Sack of "Picture" Books
    note-ptBR Mate Shinyfinder Narf. Saqueie-o para obter o Sack of "Picture" Books
    objective 91752/1
step
    ifonquest 91752
    goto 1429 @-162.62,-8902.59
    note-enUS Talk to Marshal McBride inside
    note-ptBR Fale com Marshal McBride lá dentro
    turnin 91752
    accept 91758
step
    ifturnedin 91752
    goto 1429 @-162.62,-8902.59
    note-enUS Talk to Marshal McBride inside
    note-ptBR Fale com Marshal McBride lá dentro
    accept 91758
step
    ifonquest 91758
    goto 1429 @-242,-8884.3
    note-enUS Talk to Tordrin Sternblade outside the Abbey
    note-ptBR Fale com Tordrin Sternblade do lado de fora da Abbey
    turnin 91758
    accept 91772
step
    ifturnedin 91758
    goto 1429 @-242,-8884.3
    note-enUS Talk to Tordrin Sternblade outside the Abbey
    note-ptBR Fale com Tordrin Sternblade do lado de fora da Abbey
    accept 91772
step
    goto 1429 @-46,-9044.61 5
    use 247970 |opt
    use 247970 |opt
    objective 91772/1 |opt
    note-enUS Talk to Falkhaan Isenstrider
    note-ptBR Fale com Falkhaan Isenstrider
    accept 2158
]==])

register([==[
#format 1
#id forever.a.6-11-elwynn-forest
#name 6-11 Elwynn Forest
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#levels 6-11
#zone 1429
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup Speedrun 1-20
#subgroup-ptBR Rota rápida 1-20
#recommend Human
#next forever.a.11-13-loch-modan

step
    goto 1429 @-22.99,-9404.71
    note-enUS Click the green Kobold Tracks on the ground as you travel toward Goldshire
    note-ptBR Clique nas Kobold Tracks verdes no chão enquanto viaja em direção a Goldshire
    use 247970 |opt
    objective 91772/1 |opt
    note-enUS Use the [Wild Harvest] to raise your [Herbalism] skill by 2 or to train [Herbalism] if you don't already have two professions
    note-ptBR Use o [Wild Harvest] para aumentar sua habilidade de [Herbalism] em 2 ou para treinar [Herbalism] se ainda não tiver duas profissões
    use 247841 |opt
    note-enUS Use the [Pelt Collecting for Beginners] to raise your [Skinning] skill by 2 or to train [Skinning] if you don't already have two professions
    note-ptBR Use o [Pelt Collecting for Beginners] para aumentar sua habilidade de [Skinning] em 2 ou para treinar [Skinning] se ainda não tiver duas profissões
    use 247846 |opt
    note-enUS Use the [Mining for Dummies] to raise your [Mining] skill by 2 or to train [Mining] if you don't already have two professions
    note-ptBR Use o [Mining for Dummies] para aumentar sua habilidade de [Mining] em 2 ou para treinar [Mining] se ainda não tiver duas profissões
    use 247840 |opt
    note-enUS Talk to Sam Sarsaparilla
    note-ptBR Fale com Sam Sarsaparilla
    turnin 96627
    accept 95998
step
    goto 1429 @-22.99,-9402.4
    note-enUS Type "/sit" in chat and wait for one minute around the campfire
    note-ptBR Digite "/sit" no chat e espere um minuto perto da fogueira
    objective 95998/1
    objective 95998/2
step
    goto 1429 @-22.99,-9404.71
    note-enUS Talk to Sam Sarsaparilla
    note-ptBR Fale com Sam Sarsaparilla
    turnin 95998
    accept 96626
    accept 97924
step
    goto 1429 @-22.99,-9404.71
    note-enUS Talk to Sam Sarsaparilla
    note-ptBR Fale com Sam Sarsaparilla
    turnin 95998
    accept 96626
    accept 97921
step
    goto 1429 @-22.99,-9404.71
    note-enUS Talk to Sam Sarsaparilla
    note-ptBR Fale com Sam Sarsaparilla
    turnin 95998
    accept 96626
    accept 97923
step
    goto 1429 @-22.99,-9404.71
    note-enUS Talk to Sam Sarsaparilla
    note-ptBR Fale com Sam Sarsaparilla
    turnin 95998
    accept 96626
step
    ifonquest 91772
    path closest 1429 @-77.6,-9140.9 @-44.1,-9246.5 @8.8,-9327.9 @66,-9374
    note-enUS Click the green Kobold Tracks on the ground
    note-ptBR Clique nas Kobold Tracks verdes no chão
    use 247970
    objective 91772/1
step
    only Warrior Rogue Paladin
    goto 1429 @87.87,-9456.65
    note-enUS Talk to Smith Argus
    note-ptBR Fale com Smith Argus
    note-enUS This will allow you to make [Rough Sharpening Stones] which increase your melee damage by 2 |only Warrior Rogue
    note-ptBR Isto permitirá fazer [Rough Sharpening Stones], que aumentam seu dano corpo a corpo em 2 |only Warrior Rogue
    note-enUS This will allow you to make [Rough Weightstones] which increase your melee damage by 2 |only Paladin
    note-ptBR Isto permitirá fazer [Rough Weightstones], que aumentam seu dano corpo a corpo em 2 |only Paladin
    note-enUS If you don't want to do this, skip this step
    note-ptBR Se não quiser fazer isso, pule esta etapa
    train 2018
step
    only Warrior
    goto 1429 @94.01,-9464.89
    note-enUS Talk to Corina Steele
    note-ptBR Fale com Corina Steele
    vendor
    collect 2488 1
step
    only Rogue
    goto 1429 @94.01,-9464.89
    note-enUS Equip the [Gladius] |only Warrior
    note-ptBR Equipe o [Gladius] |only Warrior
    use 2488 |only Warrior |opt
    note-enUS Talk to Corina Steele
    note-ptBR Fale com Corina Steele
    vendor
step
    only Paladin
    goto 1429 @94.01,-9464.89
    note-enUS Equip the [Tomahawk] |only Rogue
    note-ptBR Equipe o [Tomahawk] |only Rogue
    use 2490 |only Rogue |opt
    note-enUS Equip the [Stiletto] |only Rogue
    note-ptBR Equipe o [Stiletto] |only Rogue
    use 2494 |only Rogue |opt
    note-enUS Talk to Corina Steele
    note-ptBR Fale com Corina Steele
    vendor
    collect 2493 1
step
    ifonquest 91772
    goto 1429 @87.87,-9462.26 |only Mage Priest Warlock
    goto 1429 @74.02,-9465.52
    note-enUS Equip the [Wooden Mallet] |only Paladin
    note-ptBR Equipe o [Wooden Mallet] |only Paladin
    use 2493 |only Paladin |opt
    note-enUS Talk to Andrew Krighton |only Mage Priest Warlock
    note-ptBR Fale com Andrew Krighton |only Mage Priest Warlock
    vendor |only Mage Priest Warlock |opt
    note-enUS Talk to Marshal Dughan
    note-ptBR Fale com Marshal Dughan
    turnin 54
    turnin 91772
    accept 62
    accept 91775
step
    ifturnedin 91772
    goto 1429 @74.02,-9465.52
    note-enUS Talk to Marshal Dughan
    note-ptBR Fale com Marshal Dughan
    turnin 54
    accept 62
    accept 91775
step
    goto 1429 @74.02,-9465.52
    note-enUS Talk to Marshal Dughan
    note-ptBR Fale com Marshal Dughan
    turnin 54
    accept 62
step
    goto 1429 @31.92,-9460.38
    note-enUS Talk to William Pestle
    note-ptBR Fale com William Pestle
    accept 60
step
    goto 1429 @16.2,-9462.65
    note-enUS Talk to Innkeeper Farley
    note-ptBR Fale com Innkeeper Farley
    turnin 2158 |reward 1 |only Rogue Warrior
    turnin 2158 |reward 2 |only !Rogue !Warrior
    home
step
    goto 1429 @-5.63,-9467.21
    note-enUS Talk to Tomas
    note-ptBR Fale com Tomas
    note-enUS Skip this step if you don't have 1 silver, or if you wish to do it later
    note-ptBR Pule esta etapa se não tiver 1 de prata ou se preferir fazer isso depois
    train 2550
    turnin 96626
step
    ifcomplete 96626
    goto 1429 @-5.63,-9467.21
    note-enUS Talk to Tomas
    note-ptBR Fale com Tomas
    turnin 96626
step
    level 6
step
    only Rogue
    goto 1429 @9.64,-9465.36
    note-enUS Talk to Brog Hamfist
    note-ptBR Fale com Brog Hamfist
    vendor
    collect 2946 1
step
    only Rogue
    note-enUS Equip the [Balanced Throwing Daggers]
    note-ptBR Equipe as [Balanced Throwing Daggers]
    use 2946
step
    only Warlock
    goto 1429 @-5.63,-9460.26 5 |only Warlock
    goto 1429 @-5.36,-9472.76
    note-enUS Talk to Maximillian Crowe downstairs
    note-ptBR Fale com Maximillian Crowe no andar de baixo
    trainer
step
    only Warlock
    goto 1429 @-5.53,-9466.95
    note-enUS Talk to Cylina Darkheart
    note-ptBR Fale com Cylina Darkheart
    vendor
    train 20397
step
    only Mage
    goto 1429 @12.52,-9479.85 9 |only Mage Rogue Priest
    goto 1429 @34.28,-9471.61
    note-enUS Talk to Zaldimar Wefhellt
    note-ptBR Fale com Zaldimar Wefhellt
    trainer
step
    only Priest
    goto 1429 @33.14,-9460.75
    note-enUS Talk to Priestess Josetta
    note-ptBR Fale com Priestess Josetta
    turnin 5623
    accept 5624
    trainer
step
    only Rogue
    goto 1429 @12.69,-9465.75
    note-enUS Talk to Keryn Sylvius
    note-ptBR Fale com Keryn Sylvius
    trainer
step
    only Warrior Rogue
    goto 1429 @16.2,-9462.65
    note-enUS Talk to Innkeeper Farley
    note-ptBR Fale com Innkeeper Farley
    vendor |only Warrior
    vendor |only Rogue
    collect 414 20
step
    only Warrior
    goto 1429 @109.36,-9461.84
    note-enUS Talk to Lyria Du Lac
    note-ptBR Fale com Lyria Du Lac
    trainer
step
    only Paladin
    goto 1429 @109.04,-9468.16
    note-enUS Talk to Brother Wilhelm
    note-ptBR Fale com Brother Wilhelm
    trainer
step
    note-enUS Talk to Remy "Two Times"
    note-ptBR Fale com Remy "Two Times"
    accept 47
step
    only Hunter
    goto 1429 @75.4,-9480.3
    note-enUS Talk to Nordun Steadysight
    note-ptBR Fale com Nordun Steadysight
    note-enUS Buy and equip a [Hornwood Recurve Bow]
    note-ptBR Compre e equipe um [Hornwood Recurve Bow]
    note-enUS Buy [Rough Arrows] until your Quiver is full
    note-ptBR Compre [Rough Arrows] até encher sua Aljava
    collect 2506 1
step
    only Hunter
    note-enUS Talk to Jeena Featherbow
    note-ptBR Fale com Jeena Featherbow
    vendor
step
    only Hunter
    goto 1429 @107.2,-9472.4
    use 2506 |only Hunter |opt
    note-enUS Talk to Josephine Carson
    note-ptBR Fale com Josephine Carson
    trainer
step
    only Priest
    goto 1429 @-135.72,-9514.56
    note-enUS Cast [Lesser Heal (Rank 2)] and [Power Word: Fortitude] on Guard Roberts
    note-ptBR Lance [Lesser Heal (Rank 2)] e [Power Word: Fortitude] em Guard Roberts
    objective 5624/1
step
    path closest 1429 @406.84,-9917.23 @456.65,-9825.69 @279.6,-9971.76 @86.93,-9952.95 @225.49,-9751.09 @92.38,-9548.2 @454.25,-9915.31 @387.26,-9944.94 @372.34,-9912.07 @418.85,-9881.06
    note-enUS Kill Stonetusk Boars. Loot them for their [Chunks of Boar Meat]
    note-ptBR Mate Stonetusk Boars. Saqueie-os para obter [Chunks of Boar Meat]
    collect 769 4 |quest 86 |q 86/1
step
    path seq 1429 @406.84,-9917.23 @456.65,-9825.69 @279.6,-9971.76 @86.93,-9952.95 @225.49,-9751.09 @92.38,-9548.2 @406.84,-9917.23 @456.65,-9825.69 @279.6,-9971.76 @86.93,-9952.95 @225.49,-9751.09 @92.38,-9548.2
    goto 1429 @338.47,-9889.69
    note-enUS Kill Stonetusk Boars. Loot them for their [Chunks of Boar Meat]
    note-ptBR Mate Stonetusk Boars. Saqueie-os para obter [Chunks of Boar Meat]
    note-enUS This will be used to level your [Cooking] later
    note-ptBR Isto será usado para subir seu [Cooking] mais tarde
    note-enUS You need 10 [Cooking] for a quest in Auberdine later
    note-ptBR Você precisa de 10 em [Cooking] para uma missão em Auberdine mais tarde
    collect 769 10 |quest 86 |q 86/1 |opt
    note-enUS Kill Stonetusk Boars. Loot them for their [Chunks of Boar Meat]
    note-ptBR Mate Stonetusk Boars. Saqueie-os para obter [Chunks of Boar Meat]
    note-enUS This will be used to level your [Cooking] later
    note-ptBR Isto será usado para subir seu [Cooking] mais tarde
    note-enUS You need 50 [Cooking] for a quest in Darkshire later.
    note-ptBR Você precisa de 50 em [Cooking] para uma missão em Darkshire mais tarde.
    note-enUS Don't go out of your way to farm this now. Simply kill and loot all the boars you're passing by
    note-ptBR Não saia do caminho para farmar isso agora. Apenas mate e saqueie todos os javalis pelo caminho
    collect 769 50 |quest 86 |q 86/1 |opt
    note-enUS Talk to "Auntie" Bernice Stonefield and Ma Stonefield
    note-ptBR Fale com "Auntie" Bernice Stonefield e Ma Stonefield
    accept 85
    accept 88
step
    path seq 1429 @223.09,-9916.24
    goto 1429 @38.41,-9923.69
    note-enUS Kill Kobold Tunnelers and Kobold Miners. Open Battered Chests. Loot them for their [Rough Stones] |only Warrior Rogue
    note-ptBR Mate Kobold Tunnelers e Kobold Miners. Abra os Battered Chests. Saqueie-os para obter [Rough Stones] |only Warrior Rogue
    note-enUS Kill Kobold Tunnelers and Kobold Miners. Open Battered Chests. Loot them for their [Rough Stones] and [Linen Cloth] |only Paladin
    note-ptBR Mate Kobold Tunnelers e Kobold Miners. Abra os Battered Chests. Saqueie-os para obter [Rough Stones] e [Linen Cloth] |only Paladin
    collect 2835 1 |only Warrior Paladin Rogue |opt
    collect 2589 1 |only Paladin |opt
    train 2018 |only Warrior Paladin Rogue |opt
    note-enUS [Blacksmith] the [Rough Stones] into [Rough Sharpening Stones] |only Warrior Rogue
    note-ptBR Use [Blacksmith] para transformar as [Rough Stones] em [Rough Sharpening Stones] |only Warrior Rogue
    note-enUS [Blacksmith] the [Rough Stones] and [Linen Cloth] into [Rough Weightstones] |only Paladin
    note-ptBR Use [Blacksmith] para transformar as [Rough Stones] e o [Linen Cloth] em [Rough Weightstones] |only Paladin
    collect 2862 5 |only Rogue Warrior |opt
    collect 3239 5 |only Paladin |opt
    collect 2835 5 |only Warrior Paladin Rogue |opt
    collect 2589 1 |only Paladin |opt
    train 2018 |only Warrior Paladin Rogue |opt
    use 2862 |only Rogue Warrior |opt
    use 3239 |only Paladin |opt
    train 2018 |only Warrior Paladin Rogue |opt
    note-enUS Kill Kobold Tunnelers and Kobold Miners. Loot them for their Kobold Candles and Gold Dust
    note-ptBR Mate Kobold Tunnelers e Kobold Miners. Saqueie-os para obter Kobold Candles e Gold Dust
    objective 60/1 |opt
    objective 47/1 |opt
    note-enUS Kill Kobold Tunnelers and Kobold Miners. Loot them for their Kobold Candles, Gold Dust and Lost Books
    note-ptBR Mate Kobold Tunnelers e Kobold Miners. Saqueie-os para obter Kobold Candles, Gold Dust e Lost Books
    objective 60/1 |opt
    objective 47/1 |opt
    objective 91775/2 |opt
    note-enUS Talk to Billy Maclure
    note-ptBR Fale com Billy Maclure
    turnin 85
    accept 86
step
    goto 1429 @37.61,-10014.03
    note-enUS Talk to Maybell Maclure
    note-ptBR Fale com Maybell Maclure
    accept 106
step
    path seq 1429 @65.28,-10008.2
    goto 1429 @223.09,-9916.24
    note-enUS Talk to Joshua Maclure
    note-ptBR Fale com Joshua Maclure
    vendor |only Priest Warlock Mage |opt
    vendor |only !Priest !Warlock !Mage |opt
    note-enUS Kill Kobold Tunnelers and Kobold Miners. Open Battered Chests. Loot them for their [Rough Stones] |only Warrior Rogue
    note-ptBR Mate Kobold Tunnelers e Kobold Miners. Abra os Battered Chests. Saqueie-os para obter [Rough Stones] |only Warrior Rogue
    note-enUS Kill Kobold Tunnelers and Kobold Miners. Open Battered Chests. Loot them for their [Rough Stones] and [Linen Cloth] |only Paladin
    note-ptBR Mate Kobold Tunnelers e Kobold Miners. Abra os Battered Chests. Saqueie-os para obter [Rough Stones] e [Linen Cloth] |only Paladin
    collect 2835 1 |only Warrior Paladin Rogue |opt
    collect 2589 1 |only Paladin |opt
    train 2018 |only Warrior Paladin Rogue |opt
    note-enUS [Blacksmith] the [Rough Stones] into [Rough Sharpening Stones] |only Warrior Rogue
    note-ptBR Use [Blacksmith] para transformar as [Rough Stones] em [Rough Sharpening Stones] |only Warrior Rogue
    note-enUS [Blacksmith] the [Rough Stones] and [Linen Cloth] into [Rough Weightstones] |only Paladin
    note-ptBR Use [Blacksmith] para transformar as [Rough Stones] e o [Linen Cloth] em [Rough Weightstones] |only Paladin
    collect 2862 5 |only Rogue Warrior |opt
    collect 3239 5 |only Paladin |opt
    collect 2835 5 |only Warrior Paladin Rogue |opt
    collect 2589 1 |only Paladin |opt
    train 2018 |only Warrior Paladin Rogue |opt
    use 2862 |only Rogue Warrior |opt
    use 3239 |only Paladin |opt
    train 2018 |only Warrior Paladin Rogue |opt
    note-enUS Kill Kobold Tunnelers and Kobold Miners. Loot them for their Kobold Candles and Gold Dust
    note-ptBR Mate Kobold Tunnelers e Kobold Miners. Saqueie-os para obter Kobold Candles e Gold Dust
    objective 60/1 |opt
    objective 47/1 |opt
    note-enUS Kill Kobold Tunnelers and Kobold Miners. Loot them for their Kobold Candles, Gold Dust and Lost Books
    note-ptBR Mate Kobold Tunnelers e Kobold Miners. Saqueie-os para obter Kobold Candles, Gold Dust e Lost Books
    objective 60/1 |opt
    objective 47/1 |opt
    objective 91775/2 |opt
    note-enUS Talk to Tommy Joe Stonefield
    note-ptBR Fale com Tommy Joe Stonefield
    turnin 106
    accept 111
step
    goto 1429 @338.47,-9889.69
    note-enUS Talk to "Auntie" Bernice Stonefield
    note-ptBR Fale com "Auntie" Bernice Stonefield
    turnin 86
    accept 84
step
    goto 1429 34.95,83.86
    note-enUS Talk to Gramma Stonefield inside
    note-ptBR Fale com Gramma Stonefield lá dentro
    turnin 111
    accept 107
step
    ifnotonquest 91775
    path closest 1429 @223.09,-9916.24 @176.93,-9857.68 @176.24,-9902.12 @223.09,-9916.24 @259.54,-9865.09 @215.81,-9830.6
    note-enUS Kill Kobold Tunnelers and Kobold Miners. Open Battered Chests. Loot them for their [Rough Stones] |only Warrior Rogue
    note-ptBR Mate Kobold Tunnelers e Kobold Miners. Abra os Battered Chests. Saqueie-os para obter [Rough Stones] |only Warrior Rogue
    note-enUS Kill Kobold Tunnelers and Kobold Miners. Open Battered Chests. Loot them for their [Rough Stones] and [Linen Cloth] |only Paladin
    note-ptBR Mate Kobold Tunnelers e Kobold Miners. Abra os Battered Chests. Saqueie-os para obter [Rough Stones] e [Linen Cloth] |only Paladin
    collect 2835 1 |only Warrior Paladin Rogue |opt
    collect 2589 1 |only Paladin |opt
    train 2018 |only Warrior Paladin Rogue |opt
    note-enUS [Blacksmith] the [Rough Stones] into [Rough Sharpening Stones] |only Warrior Rogue
    note-ptBR Use [Blacksmith] para transformar as [Rough Stones] em [Rough Sharpening Stones] |only Warrior Rogue
    note-enUS [Blacksmith] the [Rough Stones] and [Linen Cloth] into [Rough Weightstones] |only Paladin
    note-ptBR Use [Blacksmith] para transformar as [Rough Stones] e o [Linen Cloth] em [Rough Weightstones] |only Paladin
    collect 2862 5 |only Rogue Warrior |opt
    collect 3239 5 |only Paladin |opt
    collect 2835 5 |only Warrior Paladin Rogue |opt
    collect 2589 1 |only Paladin |opt
    train 2018 |only Warrior Paladin Rogue |opt
    use 2862 |only Rogue Warrior |opt
    use 3239 |only Paladin |opt
    train 2018 |only Warrior Paladin Rogue |opt
    note-enUS Kill Kobold Tunnelers and Kobold Miners. Loot them for their Kobold Candles and Gold Dust
    note-ptBR Mate Kobold Tunnelers e Kobold Miners. Saqueie-os para obter Kobold Candles e Gold Dust
    objective 60/1
    objective 47/1
step
    ifonquest 91775
    path closest 1429 @223.09,-9916.24 @176.93,-9857.68 @176.24,-9902.12 @223.09,-9916.24 @259.54,-9865.09 @215.81,-9830.6
    note-enUS Kill Kobold Tunnelers and Kobold Miners. Loot them for their Kobold Candles, Gold Dust and Lost Books
    note-ptBR Mate Kobold Tunnelers e Kobold Miners. Saqueie-os para obter Kobold Candles, Gold Dust e Lost Books
    objective 60/1
    objective 47/1
    objective 91775/2
step
    goto 1429 @38.41,-9923.69
    note-enUS Talk to Billy Maclure
    note-ptBR Fale com Billy Maclure
    turnin 84
    accept 87
step
    path seq 1429 @181.44,-9842.17
    goto 1429 @149.86,-9793.8
    note-enUS Enter one of the larger open spaces in Fargodeep Mine
    note-ptBR Entre em um dos espaços abertos maiores de Fargodeep Mine
    objective 62/1
step
    ifonquest 91775
    goto 1429 @91.2,-9788.5
    note-enUS Kill Nimsy inside Fargodeep Mine. Loot him for the Picture Book: Fun with Elementals
    note-ptBR Mate Nimsy dentro da Fargodeep Mine. Saqueie-o para obter o Picture Book: Fun with Elementals
    note-enUS Try to find a group for this step. The Kobolds respawn very fast in the cave
    note-ptBR Tente achar um grupo para esta etapa. Os Kobolds reaparecem muito rápido na caverna
    note-enUS He will also summon a Rumbler add. Be careful if you're attempting to solo this. Skip this step if you are unable to kill him
    note-ptBR Ele também invocará um Rumbler de apoio. Cuidado se for tentar sozinho. Pule esta etapa se não conseguir matá-lo
    objective 91775/1
step
    note-enUS Try to save a single [Minor Healing Potion] from now on as you will need it for Rolf's Corpse later |only Warrior
    note-ptBR Guarde uma [Minor Healing Potion] a partir de agora, pois você vai precisar dela para o Rolf's Corpse mais tarde |only Warrior
step
    ifcomplete 91775
    path closest 1429 @223.09,-9916.24 @176.93,-9857.68 @176.24,-9902.12 @223.09,-9916.24 @259.54,-9865.09 @215.81,-9830.6
    level 7
step
    path closest 1429 @223.09,-9916.24 @176.93,-9857.68 @176.24,-9902.12 @223.09,-9916.24 @259.54,-9865.09 @215.81,-9830.6
    level 7
step
    goto 1429 @338.47,-9889.69
    note-enUS Talk to "Auntie" Bernice Stonefield
    note-ptBR Fale com "Auntie" Bernice Stonefield
    turnin 87
step
    path seq 1429 @406.84,-9917.23 @456.65,-9825.69 @279.6,-9971.76 @86.93,-9952.95 @225.49,-9751.09 @92.38,-9548.2 @406.84,-9917.23 @456.65,-9825.69 @279.6,-9971.76 @86.93,-9952.95 @225.49,-9751.09
    goto 1429 @92.38,-9548.2
    note-enUS Kill Stonetusk Boars. Loot them for their [Chunks of Boar Meat]
    note-ptBR Mate Stonetusk Boars. Saqueie-os para obter [Chunks of Boar Meat]
    collect 769 10 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Stonetusk Boars. Loot them for their [Chunks of Boar Meat]
    note-ptBR Mate Stonetusk Boars. Saqueie-os para obter [Chunks of Boar Meat]
    note-enUS Don't go out of your way to farm this now. Simply kill and loot all the boars you're passing by
    note-ptBR Não saia do caminho para farmar isso agora. Apenas mate e saqueie todos os javalis pelo caminho
    collect 769 50 |quest 2178 |q 2178/1 |opt
    note-enUS Talk to Remy "Two Times"
    note-ptBR Fale com Remy "Two Times"
    note-enUS Do NOT vendor the [Bag of Marbles] reward. This is an incredibly valuable item all the way through to level 60
    note-ptBR NÃO venda a recompensa [Bag of Marbles]. É um item extremamente valioso até o nível 60
    turnin 47
    accept 40
step
    ifcomplete 91775
    goto 1429 @74.02,-9465.52
    note-enUS Talk to Marshal Dughan
    note-ptBR Fale com Marshal Dughan
    turnin 62
    accept 76
    turnin 40
    accept 35
    turnin 91775
    accept 91777
step
    ifturnedin 91775
    goto 1429 @74.02,-9465.52
    note-enUS Talk to Marshal Dughan
    note-ptBR Fale com Marshal Dughan
    accept 91777
step
    goto 1429 @74.02,-9465.52
    note-enUS Talk to Marshal Dughan
    note-ptBR Fale com Marshal Dughan
    turnin 62
    accept 76
    turnin 40
    accept 35
step
    only Warrior
    goto 1429 @94.01,-9464.89
    note-enUS Talk to Corina Steele
    note-ptBR Fale com Corina Steele
    vendor |opt
    note-enUS Talk to Corina Steele
    note-ptBR Fale com Corina Steele
    vendor
    collect 2488 1
step
    only Rogue
    goto 1429 @94.01,-9464.89
    note-enUS Equip the [Gladius] |only Warrior
    note-ptBR Equipe o [Gladius] |only Warrior
    use 2488 |only Warrior |opt
    note-enUS Talk to Corina Steele
    note-ptBR Fale com Corina Steele
    vendor
    collect 2490 1
step
    only Rogue
    note-enUS Equip the [Tomahawk]
    note-ptBR Equipe o [Tomahawk]
    use 2490
step
    only Rogue
    goto 1429 @94.01,-9464.89
    note-enUS Talk to Corina Steele
    note-ptBR Fale com Corina Steele
    vendor
    collect 2494 1
step
    only Paladin
    goto 1429 @94.01,-9464.89
    note-enUS Equip the [Stiletto] |only Rogue
    note-ptBR Equipe o [Stiletto] |only Rogue
    use 2494 |only Rogue |opt
    note-enUS Talk to Corina Steele
    note-ptBR Fale com Corina Steele
    vendor
    collect 2493 1
step
    goto 1429 @31.92,-9460.38
    note-enUS Equip the [Wooden Mallet] |only Paladin
    note-ptBR Equipe o [Wooden Mallet] |only Paladin
    use 2493 |only Paladin |opt
    note-enUS Talk to William Pestle
    note-ptBR Fale com William Pestle
    turnin 60
    accept 61
    turnin 107
    accept 112
step
    level 8
step
    only Hunter
    goto 1429 @107.2,-9472.4
    note-enUS Talk to Josephine Carson
    note-ptBR Fale com Josephine Carson
    trainer
step
    only Warrior
    goto 1429 @109.36,-9461.84
    note-enUS Talk to Lyria Du Lac
    note-ptBR Fale com Lyria Du Lac
    trainer
step
    only Warlock
    goto 1429 @4.78,-9467.21 10 |only Warlock
    goto 1429 @-5.36,-9472.76
    note-enUS Talk to Maximillian Crowe
    note-ptBR Fale com Maximillian Crowe
    trainer
step
    only Warlock
    goto 1429 @-5.53,-9466.95
    note-enUS Talk to Cylina Darkheart
    note-ptBR Fale com Cylina Darkheart
    vendor
    train 20270
step
    only Mage
    goto 1429 @12.52,-9479.85 9 |only Mage Priest Rogue Warrior Paladin
    goto 1429 @34.28,-9471.61
    note-enUS Talk to Zaldimar Wefhellt
    note-ptBR Fale com Zaldimar Wefhellt
    trainer
step
    only Priest
    goto 1429 @33.14,-9460.75
    note-enUS Talk to Priestess Josetta
    note-ptBR Fale com Priestess Josetta
    turnin 5624
    trainer
step
    only Rogue
    goto 1429 @12.69,-9465.75
    note-enUS Talk to Keryn Sylvius
    note-ptBR Fale com Keryn Sylvius
    trainer
step
    only Rogue Warrior Paladin
    goto 1429 @29.35,-9456.79
    note-enUS Talk to Michelle Belle
    note-ptBR Fale com Michelle Belle
    train 3273
step
    goto 1429 @9.64,-9465.36
    note-enUS Talk to Brog Hamfist
    note-ptBR Fale com Brog Hamfist
    vendor
step
    path seq 1429 @16.2,-9462.65 52.24,62.92 53.84,60.95 56.79,60.34 59.03,60.67 52.24,62.92 53.84,60.95 56.79,60.34 59.03,60.67
    goto 1429 47.5,62.2
    note-enUS Talk to Innkeeper Farley
    note-ptBR Fale com Innkeeper Farley
    vendor |only !Warrior !Rogue !Paladin !Hunter |opt
    vendor |only Warrior Rogue |opt
    vendor |only Paladin Hunter |opt
    note-enUS Kill Mangy Wolves. Loot them for their [Stringy Wolf Meat]
    note-ptBR Mate Mangy Wolves. Saqueie-os para obter [Stringy Wolf Meat]
    collect 2672 10 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Mangy Wolves. Loot them for their [Stringy Wolf Meat]
    note-ptBR Mate Mangy Wolves. Saqueie-os para obter [Stringy Wolf Meat]
    note-enUS Don't go out of your way to farm this now. Simply kill and loot all the wolves you're passing by
    note-ptBR Não saia do caminho para farmar isso agora. Apenas mate e saqueie todos os lobos pelo caminho
    collect 2672 50 |quest 2178 |q 2178/1 |opt
    note-enUS Talk to Jason Mathers
    note-ptBR Fale com Jason Mathers
    accept 99127
step
    goto 1429 47.6,62.3
    note-enUS Talk to Lee Brown
    note-ptBR Fale com Lee Brown
    accept 99143
step
    path closest 1429 48.5,58.3 47.7,65.9 49.9,66.5
    note-enUS Loot the Fishing Nets in the water for the Half-Eaten Fish
    note-ptBR Saqueie as redes de pesca na água para obter o Half-Eaten Fish
    note-enUS These can be difficult to see
    note-ptBR Eles podem ser difíceis de ver
    objective 99127/1
step
    goto 1429 47.5,62.2
    note-enUS Talk to Jason Mathers
    note-ptBR Fale com Jason Mathers
    turnin 99127
    accept 99128
step
    path closest 1429 50.83,65.45 57.44,63.66 54.24,66.89 50.83,65.45 52.02,65.18 54.14,62.47 56.33,63.54 57.16,62.16 57.44,63.66 58.24,64.89 56.9,67.02 55.52,66.71 55.2,66.17 54.24,66.89
    note-enUS Kill Murlocs and Murloc Streamrunners. Loot them for Crystal Kelp Fronds
    note-ptBR Mate Murlocs e Murloc Streamrunners. Saqueie-os para obter Crystal Kelp Fronds
    note-enUS Loot the Junk Piles on the ground for Shiny Junk. If you are unable to loot these due to too many Murlocs, skip this objective
    note-ptBR Saqueie as Junk Piles no chão para obter Shiny Junk. Se não conseguir saqueá-las por causa de muitos Murlocs, pule este objetivo
    objective 99128/2
    objective 99128/1
    objective 112/1
    objective 99143/1
step
    path closest 1429 50.83,65.45 57.44,63.66 54.24,66.89 50.83,65.45 52.02,65.18 54.14,62.47 56.33,63.54 57.16,62.16 57.44,63.66 58.24,64.89 56.9,67.02 55.52,66.71 55.2,66.17 54.24,66.89
    note-enUS Loot the Junk Piles on the ground for Shiny Junk
    note-ptBR Saqueie as Junk Piles no chão para obter Shiny Junk
    note-enUS If you are unable to loot these due to too many Murlocs, skip this step
    note-ptBR Se não conseguir saquear por causa de muitos Murlocs, pule esta etapa
    objective 99143/1
step
    ifcomplete 99143
    goto 1429 47.6,62.3
    note-enUS Talk to Lee Brown
    note-ptBR Fale com Lee Brown
    turnin 99143
step
    goto 1429 47.5,62.2
    note-enUS Talk to Jason Mathers
    note-ptBR Fale com Jason Mathers
    turnin 99128
    accept 99129
step
    path seq 1429 @-604.49,-9180.39 @-588.73,-9130.67 @-572.07,-9116.55
    goto 1429 @-560.62,-9100.58
    note-enUS Kill Kobold Miners. Open Battered Chests. Loot them for their [Rough Stones] |only Warrior Rogue
    note-ptBR Mate Kobold Miners. Abra os Battered Chests. Saqueie-os para obter [Rough Stones] |only Warrior Rogue
    note-enUS Kill Kobold Miners. Open Battered Chests. Loot them for their [Rough Stones] and [Linen Cloth] |only Paladin
    note-ptBR Mate Kobold Miners. Abra os Battered Chests. Saqueie-os para obter [Rough Stones] e [Linen Cloth] |only Paladin
    collect 2835 1 |only Warrior Paladin Rogue |opt
    collect 2589 1 |only Paladin |opt
    train 2018 |only Warrior Paladin Rogue |opt
    note-enUS [Blacksmith] the [Rough Stones] into [Rough Sharpening Stones] |only Warrior Rogue
    note-ptBR Use [Blacksmith] para transformar as [Rough Stones] em [Rough Sharpening Stones] |only Warrior Rogue
    note-enUS [Blacksmith] the [Rough Stones] and [Linen Cloth] into [Rough Weightstones] |only Paladin
    note-ptBR Use [Blacksmith] para transformar as [Rough Stones] e o [Linen Cloth] em [Rough Weightstones] |only Paladin
    collect 2862 5 |only Rogue Warrior |opt
    collect 3239 5 |only Paladin |opt
    collect 2835 5 |only Warrior Paladin Rogue |opt
    collect 2589 1 |only Paladin |opt
    train 2018 |only Warrior Paladin Rogue |opt
    use 2862 |only Rogue Warrior |opt
    use 3239 |only Paladin |opt
    train 2018 |only Warrior Paladin Rogue |opt
    note-enUS Follow the path through middle to explore Jasperlode Mine
    note-ptBR Siga o caminho pelo meio para explorar Jasperlode Mine
    objective 76/1
step
    ifonquest 91777
    goto 1429 @-595.1,-9072.2
    note-enUS Kill Geosculptor Yip. Loot him for the Geomancy for Curious Young Wizards
    note-ptBR Mate Geosculptor Yip. Saqueie-o para obter o Geomancy for Curious Young Wizards
    note-enUS He will summon three Rumblers. Skip this step if you are unable to kill him
    note-ptBR Ele invocará três Rumblers. Pule esta etapa se não conseguir matá-lo
    objective 91777/1
step
    ifonquest 91777
    goto 1429 @-620.2,-9050.8
    note-enUS Kill Mother Fang. Loot her for the Arcane Explainer: Magical Stuff in Simple Words
    note-ptBR Mate Mother Fang. Saqueie-a para obter o Arcane Explainer: Magical Stuff in Simple Words
    note-enUS She Nets and Poisons. Skip this step if you are unable to kill her
    note-ptBR Ela usa redes e venenos. Pule este passo se não conseguir matá-la
    objective 91777/2
step
    ifcomplete 91777
    path seq 1429 @-590.3,-9208.1 @-508.4,-9249.1 @-493.9,-9208 @-493,-9157.4 @-135.8,-8913.7
    goto 1429 @-186.2,-8874.8
    note-enUS Talk to Brother Paxton
    note-ptBR Fale com Brother Paxton
    turnin 91777
step
    path seq 1429 @-439.5,-9118.5 @-468.4,-9147.2 @-497.1,-9173 61.82,53.87 69.35,67.45 67.24,63.88 63.75,64.71 69.35,67.45 67.24,63.88 63.75,64.71
    goto 1429 @-1032.06,-9610.23
    note-enUS Kill Kobold Miners. Open Battered Chests. Loot them for their [Rough Stones] |only Warrior Rogue
    note-ptBR Mate Kobold Miners. Abra os Battered Chests. Saqueie-os para obter [Rough Stones] |only Warrior Rogue
    note-enUS Kill Kobold Miners. Open Battered Chests. Loot them for their [Rough Stones] and [Linen Cloth] |only Paladin
    note-ptBR Mate Kobold Miners. Abra os Battered Chests. Saqueie-os para obter [Rough Stones] e [Linen Cloth] |only Paladin
    collect 2835 1 |only Warrior Paladin Rogue |opt
    collect 2589 1 |only Paladin |opt
    train 2018 |only Warrior Paladin Rogue |opt
    note-enUS [Blacksmith] the [Rough Stones] into [Rough Sharpening Stones] |only Warrior Rogue
    note-ptBR Use [Blacksmith] para transformar as [Rough Stones] em [Rough Sharpening Stones] |only Warrior Rogue
    note-enUS [Blacksmith] the [Rough Stones] and [Linen Cloth] into [Rough Weightstones] |only Paladin
    note-ptBR Use [Blacksmith] para transformar as [Rough Stones] e o [Linen Cloth] em [Rough Weightstones] |only Paladin
    collect 2862 5 |only Rogue Warrior |opt
    collect 3239 5 |only Paladin |opt
    collect 2835 5 |only Warrior Paladin Rogue |opt
    collect 2589 1 |only Paladin |opt
    train 2018 |only Warrior Paladin Rogue |opt
    use 2862 |only Rogue Warrior |opt
    use 3239 |only Paladin |opt
    train 2018 |only Warrior Paladin Rogue |opt
    note-enUS Kill Gray Forest Wolves. Loot them for their [Stringy Wolf Meat]
    note-ptBR Mate Gray Forest Wolves. Saqueie-os para obter [Stringy Wolf Meat]
    collect 2672 10 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Gray Forest Wolves. Loot them for their [Stringy Wolf Meat]
    note-ptBR Mate Gray Forest Wolves. Saqueie-os para obter [Stringy Wolf Meat]
    note-enUS Don't go out of your way to farm this now. Simply kill and loot all the wolves you're passing by
    note-ptBR Não saia do caminho para farmar isso agora. Apenas mate e saqueie todos os lobos pelo caminho
    collect 2672 50 |quest 2178 |q 2178/1 |opt
    note-enUS Kite a Young Forest Bear toward Guard Thomas
    note-ptBR Leve um Young Forest Bear (kite) até o Guard Thomas
    note-enUS Try to talk to Guard Thomas before the Young Forest Bear dies to the Stormwind Guards get quest credit
    note-ptBR Tente falar com Guard Thomas antes que o Young Forest Bear morra para os Stormwind Guards, para receber o crédito da missão
    note-enUS Make sure to deal 51%+ damage to get credit
    note-ptBR Certifique-se de causar 51%+ do dano para receber o crédito
    note-enUS Talk to Guard Thomas
    note-ptBR Fale com Guard Thomas
    turnin 35
    accept 37
    accept 52
step
    path seq 1429 73.68,67.98 72.28,65.28 71.61,61.29 73.68,67.98 72.28,65.28 71.61,61.29
    goto 1429 @-986.35,-9336.06
    note-enUS Kill Gray Forest Wolves and Prowlers. Loot them for their [Stringy Wolf Meat]
    note-ptBR Mate Gray Forest Wolves e Prowlers. Saqueie-os para obter [Stringy Wolf Meat]
    collect 2672 10 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Gray Forest Wolves and Prowlers. Loot them for their [Stringy Wolf Meat]
    note-ptBR Mate Gray Forest Wolves e Prowlers. Saqueie-os para obter [Stringy Wolf Meat]
    note-enUS Don't go out of your way to farm this now. Simply kill and loot all the wolves you're passing by
    note-ptBR Não saia do caminho para farmar isso agora. Apenas mate e saqueie todos os lobos pelo caminho
    collect 2672 50 |quest 2178 |q 2178/1 |opt
    note-enUS Click A half-eaten body on the ground
    note-ptBR Clique em A half-eaten body no chão
    turnin 37
    accept 45
step
    path seq 1429 73.68,67.98 72.28,65.28 71.61,61.29 73.68,67.98 72.28,65.28 71.61,61.29
    goto 1429 @-1289.22,-9469.8
    note-enUS Kill Prowlers. Loot them for their [Stringy Wolf Meat]
    note-ptBR Mate Prowlers. Saqueie-os para obter [Stringy Wolf Meat]
    collect 2672 10 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Prowlers. Loot them for their [Stringy Wolf Meat]
    note-ptBR Mate Prowlers. Saqueie-os para obter [Stringy Wolf Meat]
    note-enUS Don't go out of your way to farm this now. Simply kill and loot all the wolves you're passing by
    note-ptBR Não saia do caminho para farmar isso agora. Apenas mate e saqueie todos os lobos pelo caminho
    collect 2672 50 |quest 2178 |q 2178/1 |opt
    note-enUS Talk to Supervisor Raelen
    note-ptBR Fale com Supervisor Raelen
    accept 5545
step
    only Paladin
    path seq 1429 73.68,67.98 72.28,65.28 71.61,61.29 73.68,67.98 72.28,65.28 71.61,61.29 @-1257.91,-9216.77 @-1246.46,-9329.03 @-1362.03,-9309.59
    goto 1429 @-1234.31,-9224.18
    note-enUS Kill Prowlers. Loot them for their [Stringy Wolf Meat]
    note-ptBR Mate Prowlers. Saqueie-os para obter [Stringy Wolf Meat]
    note-enUS Don't go out of your way to farm this now. Simply kill and loot all the wolves you're passing by
    note-ptBR Não saia do caminho para farmar isso agora. Apenas mate e saqueie todos os lobos pelo caminho
    collect 2672 10 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Prowlers. Loot them for their [Stringy Wolf Meat]
    note-ptBR Mate Prowlers. Saqueie-os para obter [Stringy Wolf Meat]
    note-enUS Don't go out of your way to farm this now. Simply kill and loot all the wolves you're passing by
    note-ptBR Não saia do caminho para farmar isso agora. Apenas mate e saqueie todos os lobos pelo caminho
    collect 2672 50 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Prowlers and Young Forest Bears
    note-ptBR Mate Prowlers e Young Forest Bears
    note-enUS Prioritize killing any Young Forest Bears you see
    note-ptBR Priorize matar todos os Young Forest Bears que encontrar
    objective 52/1 |opt
    objective 52/2 |opt
    note-enUS Loot the Bundles of Wood on the ground at the base of the trees
    note-ptBR Saqueie os Bundles of Wood no chão, na base das árvores
    objective 5545/1 |opt
    note-enUS Run on top of Rolf's corpse, then cast [Divine Protection] and then immediately click Rolf's corpse
    note-ptBR Pare em cima do corpo de Rolf, lance [Divine Protection] e clique imediatamente no corpo de Rolf
    note-enUS Run away and reset the Murlocs after completing the quest
    note-ptBR Fuja e resete os Murlocs depois de completar a missão
    turnin 45
    accept 71
step
    only !Paladin
    goto 1429 @-1234.31,-9224.18
    note-enUS Click Rolf's corpse on the ground
    note-ptBR Clique no cadáver de Rolf no chão
    note-enUS Be careful as Murloc Foragers will cast [Drink Minor Potion] which heals themselves for 61-68 health
    note-ptBR Cuidado, Murloc Foragers lançam [Drink Minor Potion], que os cura em 61-68 de vida
    note-enUS Cast [Renew] and [Power Word: Shield] then get full mana. Pull the 2 Murlocs in front of the huts, move away, then nuke one. Run away when you kill one, then kill the other |only Priest
    note-ptBR Lance [Renew] e [Power Word: Shield] e recupere toda a mana. Puxe os 2 Murlocs em frente às cabanas, afaste-se e detone um. Fuja quando matar um e depois mate o outro |only Priest
    note-enUS Pull the 2 Murlocs in front of the huts, move away and [Polymorph] one whilst killing the other. Kill the [Polymorphed] one after |only Mage
    note-ptBR Puxe os 2 Murlocs em frente às cabanas, afaste-se e use [Polymorph] em um enquanto mata o outro. Depois mate o que estiver transformado |only Mage
    note-enUS Pool 100 Rage. Pull the 2 Murlocs in front of the huts, move away and keep [Hamstring] on one whilst killing the other. Also use [Bag of Marbles] on the one you're killing. Run away and reset the one being kited with [Hamstring] after you've killed one |only Warrior
    note-ptBR Acumule 100 de Raiva. Puxe os 2 Murlocs em frente às cabanas, afaste-se e mantenha [Hamstring] em um enquanto mata o outro. Use também [Bag of Marbles] no que estiver matando. Fuja e resete o que está sendo kitado com [Hamstring] depois de matar um |only Warrior
    note-enUS Pull the 2 Murlocs in front of the huts, move away and focus killing one of them. Use [Evasion] once they're both attacking you. This is a good opportunity to use [Bag of Marbles]. Run away and reset once you've killed one |only Rogue
    note-ptBR Puxe os 2 Murlocs em frente às cabanas, afaste-se e foque em matar um deles. Use [Evasion] quando os dois estiverem atacando você. É uma boa hora para usar [Bag of Marbles]. Fuja e resete depois de matar um |only Rogue
    note-enUS Pull the 2 Murlocs in front of the huts, move away and cast [Fear] on one of them constantly, and try to keep DoTs on both |only Warlock
    note-ptBR Puxe os 2 Murlocs em frente às cabanas, afaste-se e lance [Fear] em um deles constantemente, tentando manter DoTs nos dois |only Warlock
    turnin 45
    accept 71
step
    path closest 1429 73.68,67.98 72.28,65.28 71.61,61.29 73.68,67.98 72.28,65.28 71.61,61.29 @-1257.91,-9216.77 @-1246.46,-9329.03 @-1362.03,-9309.59 @-1257.91,-9216.77 @-1271.79,-9186.68 @-1230.14,-9150.34 @-1271.1,-9147.1 @-1271.79,-9186.68 @-1257.91,-9216.77 @-1232.92,-9251.95 @-1246.46,-9329.03 @-1249.58,-9362.13 @-1285.33,-9365.14 @-1296.09,-9389.44 @-1338.09,-9331.11 @-1354.05,-9354.26 @-1362.03,-9309.59 @-1302.68,-9309.12 @-1257.91,-9216.77 @-1354.05,-9354.26 @-1362.03,-9309.59
    note-enUS Kill Prowlers. Loot them for their [Stringy Wolf Meat]
    note-ptBR Mate Prowlers. Saqueie-os para obter [Stringy Wolf Meat]
    collect 2672 10 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Prowlers. Loot them for their [Stringy Wolf Meat]
    note-ptBR Mate Prowlers. Saqueie-os para obter [Stringy Wolf Meat]
    note-enUS Don't go out of your way to farm this now. Simply kill and loot all the wolves you're passing by
    note-ptBR Não saia do caminho para farmar isso agora. Apenas mate e saqueie todos os lobos pelo caminho
    collect 2672 50 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Prowlers and Young Forest Bears
    note-ptBR Mate Prowlers e Young Forest Bears
    note-enUS Prioritize killing any Young Forest Bears you see
    note-ptBR Priorize matar todos os Young Forest Bears que encontrar
    objective 52/1 |opt
    objective 52/2 |opt
    note-enUS Loot the Bundles of Wood on the ground at the base of the trees
    note-ptBR Saqueie os Bundles of Wood no chão, na base das árvores
    objective 5545/1
step
    goto 1429 @-1289.22,-9469.8
    note-enUS Talk to Supervisor Raelen
    note-ptBR Fale com Supervisor Raelen
    turnin 5545
step
    goto 1429 @-1222.4,-9531.76
    note-enUS Talk to Sara Timberlain
    note-ptBR Fale com Sara Timberlain
    accept 83
step
    path seq 1429 73.68,67.98 72.28,65.28 71.61,61.29 73.68,67.98 72.28,65.28 71.61,61.29
    goto 1429 @-1119.77,-9603.77
    note-enUS Kill Prowlers. Loot them for their [Stringy Wolf Meat]
    note-ptBR Mate Prowlers. Saqueie-os para obter [Stringy Wolf Meat]
    collect 2672 10 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Prowlers. Loot them for their [Stringy Wolf Meat]
    note-ptBR Mate Prowlers. Saqueie-os para obter [Stringy Wolf Meat]
    note-enUS Don't go out of your way to farm this now. Simply kill and loot all the wolves you're passing by
    note-ptBR Não saia do caminho para farmar isso agora. Apenas mate e saqueie todos os lobos pelo caminho
    collect 2672 50 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Prowlers and Young Forest Bears
    note-ptBR Mate Prowlers e Young Forest Bears
    objective 52/1 |opt
    objective 52/2 |opt
    note-enUS Talk to Ormin Pelford
    note-ptBR Fale com Ormin Pelford
    accept 91733
step
    goto 1429 74.3,76.4
    note-enUS Loot the Waterlogged Saw on the ground
    note-ptBR Saqueie o Waterlogged Saw no chão
    objective 91733/2
step
    goto 1429 76.7,82.5
    note-enUS Loot the Waterlogged Axe on the ground
    note-ptBR Saqueie o Waterlogged Axe no chão
    objective 91733/1
step
    goto 1429 77.3,86.8
    note-enUS Loot the Waterlogged Toolbox on the ground
    note-ptBR Saqueie a Waterlogged Toolbox no chão
    objective 91733/3
step
    goto 1429 @-1119.8,-9931.3
    note-enUS Kill Croaky. Loot him for [Croaky's Head]
    note-ptBR Mate Croaky. Saqueie-o para obter [Croaky's Head]
    use 247826
    note-enUS He is a level 11 elite. Skip this step if you are unable to kill him
    note-ptBR Ele é um elite nível 11. Pule esta etapa se não conseguir matá-lo
    collect 247826 1 |quest 91740 |q 91740/1
    accept 91740
step
    path closest 1429 77.5,74.52 80.5,78.22 87.34,63.76 77.5,74.52 77.22,77.5 78.48,79.32 80.5,78.22 81.43,76.69 87.14,69.92 87.34,63.76
    note-enUS Kill Prowlers and Young Forest Bears
    note-ptBR Mate Prowlers e Young Forest Bears
    objective 52/1
    objective 52/2
step
    goto 1429 @-869.87,-9768.1
    note-enUS Kill Defias Bandits. Loot them for the [Westfall Deed]
    note-ptBR Mate Defias Bandits. Saqueie-os para obter o [Westfall Deed]
    use 1972 |opt
    note-enUS The [Westfall Deed] is a very rare drop. Ignore this step if you don't get it
    note-ptBR O [Westfall Deed] é um drop muito raro. Ignore esta etapa se não o conseguir
    collect 1972 1 |quest 184 |opt
    accept 184 |opt
    note-enUS Kill Defias Bandits. Loot them for their Red Linen Bandanas
    note-ptBR Mate Defias Bandits. Saqueie-os para obter as Red Linen Bandanas
    objective 83/1 |opt
    note-enUS Kill Princess. Loot her for her Collar
    note-ptBR Mate Princess. Saqueie-a para obter a coleira dela
    note-enUS Princess will aggro with both of her Porcine Entourage
    note-ptBR Princess vai puxar aggro junto com as duas Porcine Entourage
    note-enUS Princess will also cast [Rushing Charge] which deals heavy damage
    note-ptBR Princess também lança [Rushing Charge], que causa muito dano
    note-enUS Pool 100 Rage before you engage Princess |only Warrior
    note-ptBR Acumule 100 de Raiva antes de enfrentar Princess |only Warrior
    note-enUS Be sure [Evasion] is ready. If you're struggling, you can use the Fence with Throwing Weapons to abuse pathing and buy time |only Rogue
    note-ptBR Garanta que [Evasion] esteja pronta. Se estiver com dificuldade, use a Cerca com Armas de Arremesso para explorar o caminho dos mobs e ganhar tempo |only Rogue
    note-enUS Be ready to use a [Lesser Healing Potion]
    note-ptBR Esteja pronto para usar uma [Lesser Healing Potion]
    objective 88/1
step
    ifonquest 83
    path seq 1429 @-911.52,-9735.7 @-828.22,-9733.39 @-831.69,-9823.65 @-921.93,-9812.08 @-911.52,-9735.7 @-828.22,-9733.39 @-831.69,-9823.65 @-921.93,-9812.08 @-911.52,-9735.7 @-828.22,-9733.39 @-831.69,-9823.65 @-921.93,-9812.08
    goto 1429 @-869.87,-9768.1
    note-enUS Kill Defias Bandits. Loot them for their Red Linen Bandanas
    note-ptBR Mate Defias Bandits. Saqueie-os para obter as Red Linen Bandanas
    objective 83/1
step
    goto 1429 @-1032.06,-9610.23
    note-enUS Talk to Guard Thomas
    note-ptBR Fale com Guard Thomas
    turnin 52
    turnin 71
    accept 39
    accept 109
step
    goto 1429 @-1032.06,-9610.23
    note-enUS Talk to Guard Thomas
    note-ptBR Fale com Guard Thomas
    turnin 52
    turnin 71
    accept 39
step
    goto 1429 @-1119.77,-9603.77
    note-enUS Talk to Ormin Pelford
    note-ptBR Fale com Ormin Pelford
    turnin 91733
step
    only Warlock Warrior Rogue Hunter
    goto 1429 @-877.85,-9778.98
    level 9 |only Warlock Hunter
    level 9 |only Warrior Rogue
step
    only Warlock Warrior Rogue Hunter
    ifcomplete 91740
    goto 1429 @-877.85,-9778.98
    level 9 |only Warlock Hunter
    level 9 |only Warrior Rogue
step
    ifcomplete 83
    goto 1429 @-1222.4,-9531.76
    note-enUS Talk to Sara Timberlain
    note-ptBR Fale com Sara Timberlain
    turnin 83
step
    ifcomplete 91740
    goto 1429 @-1406.2,-9775.5
    note-enUS Talk to Merell Ross
    note-ptBR Fale com Merell Ross
    turnin 91740
step
    only !Warlock
    path seq 1429 84.45,72.49 88.61,71.38 89.66,75.37 87.25,75.85 84.45,72.49 88.61,71.38 89.66,75.37 |only !Warlock
    goto 1429 87.25,75.85 |only !Warlock
    goto 1433 @-1948.56,-9582.75
    note-enUS Kill Prowlers. Loot them for their [Stringy Wolf Meat] |only !Warlock
    note-ptBR Mate Prowlers. Saqueie-os para obter [Stringy Wolf Meat] |only !Warlock
    collect 2672 10 |quest 2178 |q 2178/1 |only !Warlock |opt
    note-enUS Kill Prowlers. Loot them for their [Stringy Wolf Meat] |only !Warlock
    note-ptBR Mate Prowlers. Saqueie-os para obter [Stringy Wolf Meat] |only !Warlock
    note-enUS Don't go out of your way to farm this now. Simply kill and loot all the wolves you're passing by |only !Warlock
    note-ptBR Não saia do caminho para farmar isso agora. Apenas mate e saqueie todos os lobos pelo caminho |only !Warlock
    collect 2672 50 |quest 2178 |q 2178/1 |only !Warlock |opt
    zone 1433
step
    only !Warlock
    goto 1433 @-1906.4,-9606.8
    note-enUS Talk to Guard Parker
    note-ptBR Fale com Guard Parker
    accept 244
step
    only !Warlock
    ifonquest 244
    goto 1433 @-2237.93,-9443.6
    note-enUS Talk to Deputy Feldon
    note-ptBR Fale com Deputy Feldon
    turnin 244
step
    goto 1429 @31.92,-9460.38
    hearth |opt
    note-enUS Be careful with your money, as you should try to save 32s 8c for Stormwind later |only Rogue
    note-ptBR Cuidado com seu dinheiro, tente guardar 32s 8c para Stormwind depois |only Rogue
    note-enUS Be careful with your money, as you need to save 31s 85c for Stormwind and Ironforge later |only Warrior
    note-ptBR Cuidado com seu dinheiro, você precisa guardar 31s 85c para Stormwind e Ironforge depois |only Warrior
    note-enUS You'll receive 16s 50c from turnins until then |only Rogue
    note-ptBR Você vai receber 16s 50c com entregas até lá |only Rogue
    note-enUS You'll receive 18s 25c from turnins until then |only Warrior
    note-ptBR Você vai receber 18s 25c com entregas até lá |only Warrior
    note-enUS Talk to William Pestle
    note-ptBR Fale com William Pestle
    turnin 112
    accept 114
step
    only Warrior Rogue
    goto 1429 @12.52,-9479.85 9 |only Warrior Rogue
    goto 1429 @29.35,-9456.79
    note-enUS Talk to Michelle Belle
    note-ptBR Fale com Michelle Belle
    train 3273
step
    only Rogue
    goto 1429 @12.69,-9465.75
    note-enUS Talk to Keryn Sylvius
    note-ptBR Fale com Keryn Sylvius
    note-enUS Only train [Dual Wield] and [Sprint]. Do not train other spells to save your money for later
    note-ptBR Treine apenas [Dual Wield] e [Sprint]. Não treine outros feitiços para economizar dinheiro para depois
    train 674
    train 2983
step
    goto 1429 @74.02,-9465.52
    note-enUS Talk to Marshal Dughan
    note-ptBR Fale com Marshal Dughan
    turnin 39
    turnin 76
    accept 239
    accept 59 |only Warlock
    accept 109
step
    goto 1429 @94.01,-9464.89
    note-enUS Talk to Corina Steele
    note-ptBR Fale com Corina Steele
    vendor
step
    goto 1429 @87.87,-9456.65
    note-enUS Talk to Smith Argus
    note-ptBR Fale com Smith Argus
    accept 1097
step
    ifcomplete 91746
    path seq 1429 @-81.9,-9381.8
    goto 1429 @-69.5,-9380.2
    note-enUS Talk to Helene Peltskinner
    note-ptBR Fale com Helene Peltskinner
    turnin 91746
step
    ifcomplete 97924
    goto 1429 @-69.5,-9380.2
    note-enUS Talk to Helene Peltskinner
    note-ptBR Fale com Helene Peltskinner
    turnin 97924
step
    ifcomplete 91751
    goto 1429 @-69.5,-9380.2
    note-enUS Talk to Helene Peltskinner
    note-ptBR Fale com Helene Peltskinner
    turnin 91751
step
    only Warlock Warrior Hunter
    level 10
step
    only Hunter
    goto 1429 @107.2,-9472.4
    note-enUS Talk to Josephine Carson
    note-ptBR Fale com Josephine Carson
    accept 94792
    trainer
step
    only Hunter
    path closest 1429 @28.1,-9768.1 @-36.1,-9814.5
    use 266158
    objective 94792/1
step
    only Hunter
    goto 1429 @107.2,-9472.4
    note-enUS Talk to Josephine Carson
    note-ptBR Fale com Josephine Carson
    turnin 94792
    accept 94863
step
    only Hunter
    path closest 1429 @-556.6,-9524.3 @-626.2,-9430.8
    use 266253
    note-enUS Ensure you have dismissed your previous Rockhide Boar
    note-ptBR Garanta que tenha dispensado seu Rockhide Boar anterior
    objective 94863/1
step
    only Hunter
    goto 1429 @107.2,-9472.4
    note-enUS Talk to Josephine Carson
    note-ptBR Fale com Josephine Carson
    turnin 94863
    accept 94864
step
    only Hunter
    path closest 1429 @-14.6,-9797.8 @-146.8,-9784.5 @-325.3,-9844.3
    use 266254
    note-enUS Ensure you have dismissed your previous Gray Forest Wolf
    note-ptBR Garanta que tenha dispensado seu Gray Forest Wolf anterior
    objective 94864/1
step
    only Hunter
    goto 1429 @107.2,-9472.4
    note-enUS Talk to Josephine Carson
    note-ptBR Fale com Josephine Carson
    turnin 94864
    accept 94793
step
    only Hunter
    goto 1429 @85,-9475.8
    note-enUS Talk to Isaac Chan
    note-ptBR Fale com Isaac Chan
    turnin 94793
    trainer
step
    only Warrior
    goto 1429 @109.36,-9461.84
    note-enUS Talk to Lyria Du Lac
    note-ptBR Fale com Lyria Du Lac
    accept 1638
    trainer
step
    only Warrior
    goto 1429 @109.36,-9461.84
    note-enUS Talk to Lyria Du Lac
    note-ptBR Fale com Lyria Du Lac
    note-enUS Do not train as you need to save your money for later
    note-ptBR Não treine, pois precisa guardar dinheiro para depois
    accept 1638
step
    only Paladin
    goto 1429 @109.04,-9468.16
    note-enUS Talk to Brother Wilhelm
    note-ptBR Fale com Brother Wilhelm
    trainer
step
    only Paladin
    goto 1429 @109.04,-9468.16
    note-enUS Talk to Brother Wilhelm
    note-ptBR Fale com Brother Wilhelm
    accept 2998
    trainer
step
    only Warlock
    goto 1429 @4.78,-9467.21 10 |only Warlock
    path seq 1429 @-5.36,-9472.76
    goto 1429 @-8.58,-9473.41
    note-enUS Talk to Maximillian Crowe and Remen Marcot
    note-ptBR Fale com Maximillian Crowe e Remen Marcot
    trainer
    accept 1685
step
    only Priest
    goto 1429 @18.66,-9476.47 10 |only Mage Priest
    goto 1429 @33.14,-9460.75
    note-enUS Talk to Priestess Josetta
    note-ptBR Fale com Priestess Josetta
    accept 5635
    trainer
step
    only Mage
    goto 1429 @34.28,-9471.61
    note-enUS Talk to Zaldimar Wefhellt
    note-ptBR Fale com Zaldimar Wefhellt
    trainer
step
    abandon 59 |only !Warlock |opt
    note-enUS Talk to Remy "Two Times"
    note-ptBR Fale com Remy "Two Times"
    turnin 99129
step
    path seq 1429 @406.84,-9917.23 @456.65,-9825.69 @279.6,-9971.76 @86.93,-9952.95 @225.49,-9751.09 @92.38,-9548.2 @406.84,-9917.23 @456.65,-9825.69 @279.6,-9971.76 @86.93,-9952.95 @225.49,-9751.09 @92.38,-9548.2
    goto 1429 @37.61,-10014.03 50
    note-enUS Kill Stonetusk Boars. Loot them for their [Chunks of Boar Meat]
    note-ptBR Mate Stonetusk Boars. Saqueie-os para obter [Chunks of Boar Meat]
    collect 769 10 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Stonetusk Boars. Loot them for their [Chunks of Boar Meat]
    note-ptBR Mate Stonetusk Boars. Saqueie-os para obter [Chunks of Boar Meat]
    note-enUS Don't go out of your way to farm this now. Simply kill and loot all the boars you're passing by
    note-ptBR Não saia do caminho para farmar isso agora. Apenas mate e saqueie todos os javalis pelo caminho
    collect 769 50 |quest 2178 |q 2178/1 |opt
    note-enUS Talk to Maybell Maclure
    note-ptBR Fale com Maybell Maclure
    turnin 114
step
    note-enUS Talk to Ma Stonefield
    note-ptBR Fale com Ma Stonefield
    turnin 88 |reward 1 |only Rogue Hunter
    turnin 88 |reward 2 |only Warrior Paladin
    turnin 88 |reward 3 |only !Rogue !Hunter !Warrior !Paladin
step
    only Warlock
    path seq 1429 @673.96,-9704.45 @598.29,-9946.33 @629.53,-10020.39 @660.77,-10085.2 @598.29,-10112.98 @598.29,-9946.33 @629.53,-10020.39 @660.77,-10085.2 @598.29,-10112.98 @598.29,-9946.33 @629.53,-10020.39 @660.77,-10085.2 @598.29,-10112.98
    goto 1429 @636.47,-10112.98
    level 9 |only !Warrior !Warlock |opt
    level 9 |only !Warrior !Warlock |opt
    note-enUS Kill Riverpaw Runts and Riverpaw Outrunners. Loot them for the [Gold Pickup Schedule] |only Warlock
    note-ptBR Mate Riverpaw Runts e Riverpaw Outrunners. Saqueie-os para obter o [Gold Pickup Schedule] |only Warlock
    use 1307 |only Warlock |opt
    note-enUS The [Gold Pickup Schedule] is a very rare drop. Ignore this step if you don't get it |only Warlock
    note-ptBR O [Gold Pickup Schedule] é um drop muito raro. Ignore esta etapa se não o conseguir |only Warlock
    note-enUS Gruff Swiftbite a rare spawn, does have a 100% drop chance |only Warlock
    note-ptBR Gruff Swiftbite, um raro, tem 100% de chance de queda |only Warlock
    collect 1307 1 |quest 123 |only Warlock |opt
    accept 123 |only Warlock |opt
    note-enUS Kill Riverpaw Runts and Riverpaw Outrunners. Loot them for their Armbands |only Warlock
    note-ptBR Mate Riverpaw Runts e Riverpaw Outrunners. Saqueie-os para obter as braçadeiras |only Warlock
    objective 11/1 |only Warlock |opt
    note-enUS Kill Hogger. Loot him for his Claw
    note-ptBR Mate Hogger. Saqueie-o para obter a garra dele
    note-enUS Hogger can spawn in multiple locations
    note-ptBR Hogger pode surgir em vários locais
    note-enUS Cast [Fear] on Hogger continously and use your regular DoTs to kill him
    note-ptBR Lance [Fear] em Hogger continuamente e use seus DoTs normais para matá-lo
    note-enUS Kite him back to the guard tower if required ensuring you've done at least 50% damage to him
    note-ptBR Leve-o (kite) de volta à torre de guarda, se necessário, garantindo ter causado pelo menos 50% do dano nele
    objective 176/1
step
    only Warlock
    ifonquest 11
    path seq 1429 @598.29,-9946.33 @629.53,-10020.39 @660.77,-10085.2 @598.29,-10112.98 @598.29,-9946.33 @629.53,-10020.39 @660.77,-10085.2 @598.29,-10112.98 @598.29,-9946.33 @629.53,-10020.39 @660.77,-10085.2 @598.29,-10112.98
    goto 1429 @636.47,-10112.98
    note-enUS Kill Riverpaw Runts and Riverpaw Outrunners. Loot them for their Armbands
    note-ptBR Mate Riverpaw Runts e Riverpaw Outrunners. Saqueie-os para obter as braçadeiras
    objective 11/1
step
    only Warlock
    goto 1429 @694.29,-9662.79
    note-enUS Talk to Deputy Rainer
    note-ptBR Fale com Deputy Rainer
    turnin 11
step
    only !Hunter
    ifonquest 184
    goto 1436 @918.42,-9851.5 |only !Hunter
    path seq 1436 @918.42,-9851.5
    goto 1436 @919.47,-9853.13
    level 9 |only !Warrior !Warlock !Hunter |opt
    level 9 |only !Warrior !Warlock !Hunter |opt
    abandon 123 |only !Warlock |opt
    zone 1436 |only !Hunter |opt
    note-enUS Talk to Farmer Furlbrow and Verna Furlbrow
    note-ptBR Fale com Farmer Furlbrow e Verna Furlbrow
    accept 64
    turnin 184
    accept 151
    accept 36
step
    only !Hunter
    path seq 1436 @918.42,-9851.5
    goto 1436 @919.47,-9853.13
    note-enUS Talk to Farmer Furlbrow and Verna Furlbrow
    note-ptBR Fale com Farmer Furlbrow e Verna Furlbrow
    accept 64
    accept 151
    accept 36
step
    only !Hunter
    goto 1436 @1055.27,-10128.7
    note-enUS Do not loot any of the [Sacks of Oats] yet unless you have sent yourself large capacity bags as you will need to preserve bagspace for the upcoming segment |only !Hunter
    note-ptBR Não saqueie nenhum [Sacks of Oats] ainda, a menos que tenha enviado bolsas grandes para si mesmo, pois precisará preservar espaço nas bolsas para o próximo trecho |only !Hunter
    note-enUS Talk to Farmer Saldean
    note-ptBR Fale com Farmer Saldean
    accept 9
step
    only !Hunter
    goto 1436 @1042.11,-10112.11
    note-enUS Talk to Salma Saldean inside
    note-ptBR Fale com Salma Saldean lá dentro
    turnin 36
    accept 38
    accept 22
step
    only !Hunter
    goto 1436 @1045.22,-10508.8
    level 9
step
    goto 1436 @1045.22,-10508.8
    goto 1436 @1041.93,-10511.2 |only !Hunter
    note-enUS Talk to Gryan Stoutmantle and Captain Danuvin |only !Hunter
    note-ptBR Fale com Gryan Stoutmantle e Captain Danuvin |only !Hunter
    note-enUS Talk to Gryan Stoutmantle |only Hunter
    note-ptBR Fale com Gryan Stoutmantle |only Hunter
    turnin 109
    accept 12 |only !Hunter
    accept 102 |only !Hunter
step
    only Human
    goto 1436 @1055.27,-10128.7
    level 10
step
    goto 1436 @1021.6,-10500.61
    note-enUS Talk to Quartermaster Lewis
    note-ptBR Fale com Quartermaster Lewis
    accept 6181 |only Human
step
    only Human
    goto 1436 @1037.42,-10628.27
    note-enUS Talk to Thor
    note-ptBR Fale com Thor
    turnin 6181
    accept 6281
step
    goto 1436 @1037.42,-10628.27
    note-enUS Talk to Thor
    note-ptBR Fale com Thor
    fly 1453
step
    only Rogue
    goto 1453 @596.43,-8831.7
    note-enUS Talk to Thurman Mullby
    note-ptBR Fale com Thurman Mullby
    note-enUS Buy the [Keen Throwing Knives] from him
    note-ptBR Compre as [Keen Throwing Knives] dele
    collect 3107 1
step
    only Rogue
    goto 1453 @596.43,-8831.7
    note-enUS Talk to Thurman Mullby
    note-ptBR Fale com Thurman Mullby
    note-enUS Buy the [Balanced Throwing Daggers] from him
    note-ptBR Compre as [Balanced Throwing Daggers] dele
    collect 2946 1
step
    goto 1453 @613,-8796.03
    note-enUS Equip the [Keen Throwing Knives] |only Rogue
    note-ptBR Equipe as [Keen Throwing Knives] |only Rogue
    use 3107 |only Rogue |opt
    note-enUS Equip the [Balanced Throwing Daggers] |only Rogue
    note-ptBR Equipe as [Balanced Throwing Daggers] |only Rogue
    use 2946 |only Rogue |opt
    note-enUS Talk to Woo Ping
    note-ptBR Fale com Woo Ping
    trainer |only Warlock Mage
    trainer |only Rogue
    trainer |only Priest
    trainer |only Warrior Paladin
step
    only Warlock Mage
    goto 1453 @613,-8796.03
    note-enUS Talk to Woo Ping
    note-ptBR Fale com Woo Ping
    trainer
step
    goto 1453 @673.58,-8867.76
    note-enUS Equip the [Hatchet] |only Rogue
    note-ptBR Equipe o [Hatchet] |only Rogue
    use 853 |only Rogue |opt
    note-enUS Talk to Innkeeper Allison
    note-ptBR Fale com Innkeeper Allison
    home
step
    only Hunter
    goto 1453 @702.7,-8791.8
    note-enUS Talk to Lina Stover
    note-ptBR Fale com Lina Stover
    note-enUS Buy and equip a [Laminated Recurve Bow]
    note-ptBR Compre e equipe um [Laminated Recurve Bow]
    collect 2507 1
step
    only Hunter
    goto 1453 @702.7,-8791.8
    note-enUS Talk to Lina Stover
    note-ptBR Fale com Lina Stover
    vendor
step
    only Warlock
    path seq 1453 @988.44,-8942.15 |only Warlock
    goto 1453 @1015.33,-8978.9 15 |only Warlock
    goto 1453 @1041.54,-8983.29
    use 2507 |only Hunter |opt
    note-enUS Talk to Gakin the Darkbinder
    note-ptBR Fale com Gakin the Darkbinder
    turnin 1685
    accept 1688
step
    only Warlock
    ifonquest 123
    goto 1429 @74.02,-9465.52 |only Warlock
    goto 1429 @74.02,-9465.52
    note-enUS Talk to Marshal Dughan
    note-ptBR Fale com Marshal Dughan
    turnin 176
    turnin 123
step
    only Warlock
    goto 1429 @74.02,-9465.52
    note-enUS Talk to Marshal Dughan
    note-ptBR Fale com Marshal Dughan
    turnin 176
step
    only Warlock
    ifonquest 83
    path closest 1429 49.92,72.96 54.44,75.88 57.62,76.21 61.91,78.27 65.62,78.39 49.92,72.96 54.44,75.88 57.62,76.21 61.91,78.27 65.62,78.39 |only Warlock
    path closest 1429 @-911.52,-9735.7 @-921.93,-9812.08 @-911.52,-9735.7 @-828.22,-9733.39 @-831.69,-9823.65 @-921.93,-9812.08
    note-enUS Equip the [Balanced Fighting Stick] |only Warlock
    note-ptBR Equipe o [Balanced Fighting Stick] |only Warlock
    use 6215 |only Warlock |opt
    note-enUS Kill Rockhide Boars. Loot them for their [Chunks of Boar Meat] |only Warlock
    note-ptBR Mate Rockhide Boars. Saqueie-os para obter [Chunks of Boar Meat] |only Warlock
    collect 769 10 |quest 2178 |q 2178/1 |only Warlock |opt
    note-enUS Kill Rockhide Boars. Loot them for their [Chunks of Boar Meat] |only Warlock
    note-ptBR Mate Rockhide Boars. Saqueie-os para obter [Chunks of Boar Meat] |only Warlock
    note-enUS Don't go out of your way to farm this now. Simply kill and loot all the boars you're passing by |only Warlock
    note-ptBR Não saia do caminho para farmar isso agora. Apenas mate e saqueie todos os javalis pelo caminho |only Warlock
    collect 769 50 |quest 2178 |q 2178/1 |only Warlock |opt
    note-enUS Kill Defias Bandits. Loot them for the [Westfall Deed] |only Warlock
    note-ptBR Mate Defias Bandits. Saqueie-os para obter o [Westfall Deed] |only Warlock
    use 1972 |only Warlock |opt
    note-enUS The [Westfall Deed] is a very rare drop. Ignore this step if you don't get it |only Warlock
    note-ptBR O [Westfall Deed] é um drop muito raro. Ignore esta etapa se não o conseguir |only Warlock
    collect 1972 1 |quest 184 |only Warlock |opt
    accept 184 |only Warlock |opt
    note-enUS Kill Defias Bandits. Loot them for their Red Linen Bandanas
    note-ptBR Mate Defias Bandits. Saqueie-os para obter as Red Linen Bandanas
    objective 83/1
step
    only Warlock
    goto 1429 @-932.35,-9806.53
    note-enUS Kill Surena Caledon. Loot her for her Choker
    note-ptBR Mate Surena Caledon. Saqueie-a para obter a gargantilha dela
    note-enUS Focus on killing Surena Caledon very quickly
    note-ptBR Concentre-se em matar Surena Caledon bem rápido
    note-enUS Cast [Fear] on Morgan the Collector continously
    note-ptBR Lance [Fear] em Morgan the Collector continuamente
    objective 1688/1
step
    only Warlock
    ifonquest 83
    path seq 1429 84.45,72.49 88.61,71.38 89.66,75.37 87.25,75.85 84.45,72.49 88.61,71.38 89.66,75.37 |only Warlock
    goto 1429 87.25,75.85 |only Warlock
    goto 1429 @-1222.4,-9531.76
    note-enUS Kill Prowlers. Loot them for their [Stringy Wolf Meat] |only Warlock
    note-ptBR Mate Prowlers. Saqueie-os para obter [Stringy Wolf Meat] |only Warlock
    collect 2672 10 |quest 2178 |q 2178/1 |only Warlock |opt
    note-enUS Kill Prowlers. Loot them for their [Stringy Wolf Meat] |only Warlock
    note-ptBR Mate Prowlers. Saqueie-os para obter [Stringy Wolf Meat] |only Warlock
    note-enUS Don't go out of your way to farm this now. Simply kill and loot all the wolves you're passing by |only Warlock
    note-ptBR Não saia do caminho para farmar isso agora. Apenas mate e saqueie todos os lobos pelo caminho |only Warlock
    collect 2672 50 |quest 2178 |q 2178/1 |only Warlock |opt
    note-enUS Talk to Sara Timberlain
    note-ptBR Fale com Sara Timberlain
    turnin 59
    turnin 83
step
    only Warlock
    goto 1429 @-1222.4,-9531.76
    note-enUS Talk to Sara Timberlain
    note-ptBR Fale com Sara Timberlain
    turnin 59
step
    only Warlock
    goto 1433 @-1948.56,-9582.75 |only Warlock
    goto 1433 @-1906.4,-9606.8
    note-enUS Grind en-route. Make sure you have at least 2 [Soul Shards] before reaching Redridge by using [Drain Soul] as mobs are about to die |only Warlock
    note-ptBR Faça grind no caminho. Garanta que tenha pelo menos 2 [Soul Shards] antes de chegar a Redridge usando [Drain Soul] quando os mobs estiverem prestes a morrer |only Warlock
    collect 6265 2 |only Warlock |opt
    zone 1433 |only Warlock |opt
    note-enUS Talk to Guard Parker
    note-ptBR Fale com Guard Parker
    accept 244
step
    only Warlock
    path seq 1433 @-1974.2,-9577.07 @-2077.18,-9608.42 @-2212.64,-9558.57
    goto 1433 @-2238,-9443.69 25
    note-enUS STICK TO THE MAIN ROAD AND AVOID ANY CLOSE MOBS EN-ROUTE
    note-ptBR FIQUE NA ESTRADA PRINCIPAL E EVITE QUALQUER MOB PRÓXIMO NO CAMINHO
step
    only Warlock
    goto 1433 @-2238,-9443.69
    note-enUS Talk to Deputy Feldon
    note-ptBR Fale com Deputy Feldon
    turnin 244
step
    only Warlock
    goto 1433 @-2234.9,-9435.3
    note-enUS Talk to Ariena Stormfeather
    note-ptBR Fale com Ariena Stormfeather
    fp
    fly 1453
step
    only Warlock
    path seq 1453 @988.44,-8942.15 |only Warlock
    goto 1453 @1015.33,-8978.9 15 |only Warlock
    goto 1453 @1029.89,-8971.06
    note-enUS Talk to Ursula Deline
    note-ptBR Fale com Ursula Deline
    trainer
step
    only Warlock
    goto 1453 @1041.54,-8983.29
    note-enUS Talk to Gakin the Darkbinder
    note-ptBR Fale com Gakin the Darkbinder
    turnin 1688
    accept 1689
step
    only Warlock
    path seq 1453 @1042.22,-9002.21 @1069.1,-8991.45 @1027.43,-8991.45 |only Warlock
    goto 1453 @1042.83,-8972.68 |only Warlock
    goto 1453 @1042.83,-8972.68
    note-enUS Travel to the bottom of The Slaughtered Lamb |only Warlock
    note-ptBR Vá até o fundo de The Slaughtered Lamb |only Warlock
    use 6928 |only Warlock |opt
    use 6928
    objective 1689/1
step
    only Warlock
    goto 1453 @1041.54,-8983.29
    note-enUS Talk to Gakin the Darkbinder
    note-ptBR Fale com Gakin the Darkbinder
    turnin 1689
step
    only Rogue
    goto 1453 @377.47,-8752.39
    note-enUS Talk to Osborne the Night Man
    note-ptBR Fale com Osborne the Night Man
    note-enUS Only train [Dual Wield] and [Sprint]
    note-ptBR Treine apenas [Dual Wield] e [Sprint]
    train 674
    train 2983
step
    only Human
    goto 1453 @382.02,-8702.29
    note-enUS Equip the [Stiletto] in your offhand |only Rogue
    note-ptBR Equipe o [Stiletto] na mão secundária |only Rogue
    use 2494 |only Rogue |opt
    note-enUS Don't worry if you're not [Dual Wielding] right now, you'll buy a weapon later when necessary |only Rogue
    note-ptBR Não se preocupe se não estiver usando [Dual Wielding] agora, você comprará uma arma depois quando for necessário |only Rogue
    note-enUS Talk to Osric Strang
    note-ptBR Fale com Osric Strang
    turnin 6281
    accept 6261 |only !Hunter
step
    only Warrior
    goto 1453 @382.86,-8612.69
    note-enUS Talk to Harry Burlguard
    note-ptBR Fale com Harry Burlguard
    turnin 1638
    accept 1639
step
    only Warrior
    goto 1453 @389.07,-8604.43
    note-enUS Talk to Bartleby
    note-ptBR Fale com Bartleby
    turnin 1639
    accept 1640
step
    only Warrior
    goto 1453 @389.07,-8604.43
    note-enUS Attack Bartleby. He will submit at 1%
    note-ptBR Ataque Bartleby. Ele se renderá com 1%
    objective 1640/1
step
    only Warrior
    goto 1453 @389.07,-8604.43
    note-enUS Talk to Bartleby
    note-ptBR Fale com Bartleby
    turnin 1640
    accept 1665
step
    only Warrior
    goto 1453 @382.86,-8612.69
    note-enUS Talk to Harry Burlguard
    note-ptBR Fale com Harry Burlguard
    turnin 1665
step
    only Priest
    ifonquest 5635
    goto 1453 @809.52,-8579.22 20 |only Priest
    goto 1453 @862.89,-8519.61
    note-enUS Talk to High Priestess Laurena
    note-ptBR Fale com High Priestess Laurena
    turnin 5635
    train 8092
step
    only Priest
    goto 1453 @862.89,-8519.61
    note-enUS Talk to High Priestess Laurena
    note-ptBR Fale com High Priestess Laurena
    turnin 5634
    train 8092
    train 13908
step
    only Priest
    goto 1453 @862.89,-8519.61
    note-enUS Talk to High Priestess Laurena
    note-ptBR Fale com High Priestess Laurena
    trainer
    train 13908
step
    goto 1453 @685.22,-8387.23
    note-enUS Talk to Grimand Elmore
    note-ptBR Fale com Grimand Elmore
    turnin 1097
    accept 353
step
    only Warrior Paladin Rogue
    goto 1453 @624.15,-8431.23
    note-enUS Talk to Kaita Deepforge
    note-ptBR Fale com Kaita Deepforge
    collect 2901 1 |quest 432 |q 432/1
    note-enUS You'll train [Mining] later
    note-ptBR Você vai treinar [Mining] mais tarde
    train 2018
step
    path seq 1453 @562.3,-8385.3
    goto 1453 @522,-8352.1
step
    note-enUS Take the Deeprun Tram to the Ironforge side
    note-ptBR Pegue o Deeprun Tram para o lado de Ironforge
    note-enUS Level your [First Aid] while waiting for the Tram to Ironforge if needed |only Rogue Warrior Paladin
    note-ptBR Suba seu [First Aid] enquanto espera o bonde para Ironforge, se necessário |only Rogue Warrior Paladin
    note-enUS You will need your [First Aid] to be 80 for a quest at level 24 |only Rogue !Dwarf
    note-ptBR Você vai precisar de [First Aid] 80 para uma missão no nível 24 |only Rogue !Dwarf
    note-enUS Cast [Summon Voidwalker] and [Create Healthstone] while waiting for the Tram to Ironforge if needed |only Warlock
    note-ptBR Lance [Summon Voidwalker] e [Create Healthstone] enquanto espera o Tram para Ironforge, se precisar |only Warlock
    note-enUS Talk to Monty on the middle platform on the Ironforge side of the Deeprun Tram
    note-ptBR Fale com Monty na plataforma do meio, no lado de Ironforge do Deeprun Tram
    accept 6661
step
    note-enUS Use the [Rat Catcher's Flute] on Deeprun Rats inside the Deeprun Tram
    note-ptBR Use a [Rat Catcher's Flute] nos Deeprun Rats dentro do Deeprun Tram
    objective 6661/1
    use 17117
step
    note-enUS Talk to Monty inside the Deeprun Tram
    note-ptBR Fale com Monty dentro do Deeprun Tram
    turnin 6661
step
    ifnotturnedin 314
    zone 1455
step
    only Warrior
    path seq 1455 67.4,84.91 |only Warrior
    goto 1455 @-1234.65,-5035.67 12 |only Warrior
    goto 1455 @-1234.65,-5035.67
    note-enUS Talk to Bilban Tosslespanner
    note-ptBR Fale com Bilban Tosslespanner
    note-enUS Ensure you save 20s 70c for later
    note-ptBR Guarde 20s 70c para depois
    train 2687
step
    only Warrior
    path seq 1455 61.55,85.64 |only Warrior
    goto 1455 61.36,88.4 6 |only Warrior
    path seq 1455 @-1205.65,-5042.12
    goto 1455 @-1197.27,-5041.49
    note-enUS Talk to Bixi Wobblebonk and Buliwyf Stonehand
    note-ptBR Fale com Bixi Wobblebonk e Buliwyf Stonehand
    train 2567
    train 199
step
    only Warrior
    goto 1455 @-1206.74,-5037.12
    note-enUS Talk to Brenwyn Wintersteel down stairs
    note-ptBR Fale com Brenwyn Wintersteel no andar de baixo
    note-enUS Buy the [Keen Throwing Knives] from her
    note-ptBR Compre as [Keen Throwing Knives] dela
    collect 3107 1
step
    only Warrior
    goto 1455 @-1206.74,-5037.12
    note-enUS Talk to Brenwyn Wintersteel down stairs
    note-ptBR Fale com Brenwyn Wintersteel no andar de baixo
    note-enUS Buy the [Balanced Throwing Daggers] from her
    note-ptBR Compre as [Balanced Throwing Daggers] dela
    collect 2946 1
step
    goto 1455 61.36,88.4 6 |only Warrior
    goto 1455 @-1152.4,-4821.13
    note-enUS Equip the [Keen Throwing Knives] |only Warrior
    note-ptBR Equipe as [Keen Throwing Knives] |only Warrior
    use 3107 |only Warrior |opt
    note-enUS Equip the [Balanced Throwing Daggers] |only Warrior
    note-ptBR Equipe as [Balanced Throwing Daggers] |only Warrior
    use 2946 |only Warrior |opt
    note-enUS Talk to Gryth Thurden
    note-ptBR Fale com Gryth Thurden
    fp
step
    only Mage
    path seq 1455 @-1101.87,-4864.81 @-1062.1,-4815.1 @-1036.48,-4804.5 |only Mage Paladin
    goto 1455 @-992.68,-4742.08 20 |only Mage Paladin
    goto 1455 @-928.4,-4635.61 20 |only Paladin
    path seq 1455 @-931.8,-4627.59 |only Mage
    goto 1455 @-928.4,-4614.51 12 |only Mage
    goto 1455 @-896.47,-4601.65 12 |only Paladin
    goto 1455 @-928.4,-4614.51
    note-enUS Talk to Dink inside
    note-ptBR Fale com Dink lá dentro
    train 122
step
    only Paladin
    goto 1455 @-896.47,-4601.65
    note-enUS Talk to Brandur Ironhammer inside
    note-ptBR Fale com Brandur Ironhammer lá dentro
    train 633
step
    goto 1426 53.47,35.02
    note-enUS Exit Ironforge
    note-ptBR Saia de Ironforge
    zone 1426
step
    goto 1426 @-682.3,-5489
    note-enUS Talk to Beldin Steelgrill
    note-ptBR Fale com Beldin Steelgrill
    accept 96408
step
    path seq 1426 57.94,50.79 @-1145.04,-5504.3 @-1219.9,-5422.55 62.78,54.59 62.54,46.2
    goto 1426 @-1304.71,-5513.86
    note-enUS Kill Elder Crag Boars. Loot them for their [Chunks of Boar Meat]
    note-ptBR Mate Elder Crag Boars. Saqueie-os para obter [Chunks of Boar Meat]
    note-enUS This will be used to level your [Cooking] later
    note-ptBR Isto será usado para subir seu [Cooking] mais tarde
    note-enUS You need 10 [Cooking] for a quest in Auberdine later
    note-ptBR Você precisa de 10 em [Cooking] para uma missão em Auberdine mais tarde
    collect 769 10 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Elder Crag Boars. Loot them for their [Chunks of Boar Meat]
    note-ptBR Mate Elder Crag Boars. Saqueie-os para obter [Chunks of Boar Meat]
    note-enUS This will be used to level your [Cooking] later
    note-ptBR Isto será usado para subir seu [Cooking] mais tarde
    note-enUS You need 50 [Cooking] for a quest in Darkshire later
    note-ptBR Você precisa de 50 em [Cooking] para uma missão em Darkshire mais tarde
    note-enUS Don't go out of your way to farm this now. Simply kill and loot all the boars you're passing by
    note-ptBR Não saia do caminho para farmar isso agora. Apenas mate e saqueie todos os javalis pelo caminho
    collect 769 50 |quest 2178 |q 2178/1 |opt
    note-enUS Kite Vagash down to Rudra
    note-ptBR Leve Vagash (kite) até Rudra
    note-enUS Equip the [Keen Throwing Knives] |only Warrior Rogue
    note-ptBR Equipe as [Keen Throwing Knives] |only Warrior Rogue
    use 3107 |only Warrior Rogue |opt
    note-enUS Talk to Rudra Amberstill
    note-ptBR Fale com Rudra Amberstill
    accept 314
step
    path seq 1426 62.78,54.59 62.09,47.15 62.43,48.99
    goto 1426 62.54,46.2
    note-enUS Kill Vagash. Loot him for his Fang
    note-ptBR Mate Vagash. Saqueie-o para obter a presa dele
    note-enUS Kite him to the guard south of the ranch. Make sure you do 51%+ damage to him
    note-ptBR Leve-o (kite) até o guarda ao sul do rancho. Certifique-se de causar 51%+ do dano nele
    note-enUS Watch the video below before you attempt to kill Vagash. It can be soloed on any class
    note-ptBR Assista ao vídeo abaixo antes de tentar matar Vagash. Dá para solar com qualquer classe
    objective 314/1
step
    goto 1426 @-1304.71,-5513.86
    note-enUS Talk to Rudra Amberstill
    note-ptBR Fale com Rudra Amberstill
    turnin 314
step
    path seq 1426 66.36,51.02
    goto 1426 @-1394.24,-5797.83
    note-enUS Kill Large Crag Boars. Loot them for their [Chunks of Boar Meat]
    note-ptBR Mate Large Crag Boars. Saqueie-os para obter [Chunks of Boar Meat]
    collect 769 10 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Large Crag Boars. Loot them for their [Chunks of Boar Meat]
    note-ptBR Mate Large Crag Boars. Saqueie-os para obter [Chunks of Boar Meat]
    note-enUS Don't go out of your way to farm this now. Simply kill and loot all the boars you're passing by
    note-ptBR Não saia do caminho para farmar isso agora. Apenas mate e saqueie todos os javalis pelo caminho
    collect 769 50 |quest 2178 |q 2178/1 |opt
    note-enUS Talk to Earthseer Farsen
    note-ptBR Fale com Earthseer Farsen
    accept 96392
step
    ifonquest 96392
    goto 1426 @-1394.24,-5797.83
    note-enUS You can cancel the Farsight once the objective completes
    note-ptBR Você pode cancelar o Farsight assim que o objetivo for concluído
step
    goto 1426 @-1394.24,-5797.83
    note-enUS Talk to Earthseer Farsen
    note-ptBR Fale com Earthseer Farsen
    note-enUS Press ESCAPE to cancel the Farsight
    note-ptBR Pressione ESC para cancelar o Farsight
    turnin 96392
    accept 96390
step
    goto 1426 @-1565.58,-5666.24
    note-enUS Talk to Cook Ghilm
    note-ptBR Fale com Cook Ghilm
    train 2550
step
    only !Human
    goto 1426 @-1577.16,-5671.2
    note-enUS Talk to Kazan Mogosh
    note-ptBR Fale com Kazan Mogosh
    vendor |only Warrior Rogue
    vendor |only !Warrior !Rogue
step
    path seq 1426 @-1579.96,-5714.73
    goto 1426 @-1600.3,-5726.59
    note-enUS Talk to Senator Mehr Stonehallow and Foreman Stonebrow
    note-ptBR Fale com Senator Mehr Stonehallow e Foreman Stonebrow
    accept 433
    accept 432
step
    only Warrior Paladin Rogue
    goto 1426 @-1612.12,-5697.89
    note-enUS Talk to Dank Drizzlecut
    note-ptBR Fale com Dank Drizzlecut
    train 2575
    note-enUS This is used in conjunction with [Blacksmithing] to make [Rough Sharpening Stones] and [Rough Weightstones] to increase your weapon damage
    note-ptBR Isto é usado com [Blacksmithing] para fazer [Rough Sharpening Stones] e [Rough Weightstones], que aumentam o dano da sua arma
    note-enUS If you don't want to do this, skip this step
    note-ptBR Se não quiser fazer isso, pule esta etapa
    train 2018
step
    path seq 1426 @-1679.89,-5728.88 @-1675.95,-5597.22
    goto 1426 @-1679.89,-5728.88
    train 2575 |only Warrior Paladin Rogue |opt
    note-enUS Kill Rockjaw Skullthumpers and Rockjaw Bonesnappers inside the cave
    note-ptBR Mate Rockjaw Skullthumpers e Rockjaw Bonesnappers dentro da caverna
    objective 432/1
    objective 433/1
step
    path seq 1426 @-1600.3,-5726.59
    goto 1426 @-1579.96,-5714.73
    note-enUS Talk to Foreman Stonebrow and Senator Mehr Stonehallow
    note-ptBR Fale com Foreman Stonebrow e Senator Mehr Stonehallow
    turnin 432
    turnin 433
step
    only !Warrior !Rogue !Paladin !Hunter
    goto 1426 @-1577.16,-5671.2
    note-enUS Talk to Kazan Mogosh
    note-ptBR Fale com Kazan Mogosh
    vendor
step
    path seq 1426 @-2009.87,-5860.22
    goto 1426 @-2034.49,-5922.6
    note-enUS Kill Rockjaw Ambushers. Loot them for the [Empty Powder Keg]
    note-ptBR Mate Rockjaw Ambushers. Saqueie-os para obter o [Empty Powder Keg]
    use 268548 |opt
    note-enUS NOTE: This item has a low drop rate. Skip this step if you do not find it by the time you are done with the Dark Iron Spies
    note-ptBR NOTA: Este item tem baixa taxa de drop. Pule esta etapa se não o encontrar até terminar com os Dark Iron Spies
    collect 268548 1 |quest 95213 |q 95213/1 |opt
    accept 95213 |opt
    note-enUS Kill Dark Iron Spies. Loot them for the [Dark Iron Map]
    note-ptBR Mate Dark Iron Spies. Saqueie-os para obter o [Dark Iron Map]
    use 274268
    objective 96390/1
    collect 274268 1 |quest 96391 |q 96391/1
    accept 96391
step
    goto 1426 @-1394.24,-5797.83
    note-enUS Talk to Earthseer Farsen
    note-ptBR Fale com Earthseer Farsen
    turnin 96390
    turnin 96391
    accept 96393
step
    ifonquest 95213
    goto 1426 @-1606.02,-5676.35
    note-enUS Talk to Quarrymaster Thesten
    note-ptBR Fale com Quarrymaster Thesten
    turnin 95213
    accept 95214
step
    ifturnedin 95213
    goto 1426 @-1606.02,-5676.35
    note-enUS Talk to Quarrymaster Thesten
    note-ptBR Fale com Quarrymaster Thesten
    accept 95214
step
    ifonquest 95214
    path closest 1426 @-1881.82,-5735.45 @-1832.57,-5571.28 @-1724.22,-5636.95 @-1881.82,-5735.45 @-1832.57,-5571.28 @-1724.22,-5636.95
    note-enUS Kill Rockjaw Ambushers. Loot them for their Stolen Blasting Powder
    note-ptBR Mate Rockjaw Ambushers. Saqueie-os para obter Stolen Blasting Powder
    objective 95214/1
step
    ifcomplete 95214
    goto 1426 @-1606.02,-5676.35
    note-enUS Talk to Quarrymaster Thesten
    note-ptBR Fale com Quarrymaster Thesten
    turnin 95214
step
    path seq 1426 @-2197.02,-5279.07
    goto 1426 @-2329.6,-5163.76
    note-enUS Talk to Pilot Hammerfoot
    note-ptBR Fale com Pilot Hammerfoot
    accept 419
step
    goto 1426 @-2121.76,-5064.7
    note-enUS Click the Dwarven Corpse on the ground
    note-ptBR Clique no Dwarven Corpse no chão
    turnin 419
    accept 417
step
    goto 1426 @-2087.19,-5096.51
    note-enUS Kill Mangeclaw. Loot him for his Claw
    note-ptBR Mate Mangeclaw. Saqueie-o para obter a garra dele
    objective 417/1
step
    goto 1426 @-2329.6,-5163.76
    note-enUS Talk to Pilot Hammerfoot
    note-ptBR Fale com Pilot Hammerfoot
    turnin 417 |reward 1 |only Rogue
    turnin 417 |only !Rogue
step
    goto 1426 @-2354.62,-4898.2 25
    note-enUS Equip the [Craftsman's Dagger] in your offhand |only Rogue
    note-ptBR Equipe a [Craftsman's Dagger] na mão secundária |only Rogue
    use 2218 |only Rogue |opt
]==])

register([==[
#format 1
#id forever.a.11-13-loch-modan
#name 11-13 Loch Modan
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#levels 11-13
#zone 1432
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup Speedrun 1-20
#subgroup-ptBR Rota rápida 1-20
#recommend Human
#next forever.a.13-15-westfall

step
    path seq 1432 @-2659.45,-4822.45
    goto 1432 @-2676.82,-4825.93
    note-enUS Talk to Gothor Brumn
    note-ptBR Fale com Gothor Brumn
    vendor |opt
    note-enUS Talk to Mountaineer Stormpike
    note-ptBR Fale com Mountaineer Stormpike
    note-enUS Do not accept Stormpike's Order yet
    note-ptBR Não aceite Stormpike's Order ainda
    turnin 353
    accept 307
step
    path seq 1426 70.84,51.78 73.53,50.85 75.35,48.53 79.88,46.8 81.04,43.46 80.58,36.04 70.84,51.78 73.53,50.85 75.35,48.53 79.88,46.8 81.04,43.46
    goto 1426 80.58,36.04
    goto 1432 @-3003.3,-5376.02
    note-enUS Kill Mountain Boars. Loot them for their [Chunks of Boar Meat]
    note-ptBR Mate Mountain Boars. Saqueie-os para obter [Chunks of Boar Meat]
    note-enUS This will be used to level your [Cooking] later
    note-ptBR Isto será usado para subir seu [Cooking] mais tarde
    note-enUS You need 10 [Cooking] for a quest in Auberdine later
    note-ptBR Você precisa de 10 em [Cooking] para uma missão em Auberdine mais tarde
    collect 769 10 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Mountain Boars. Loot them for their [Chunks of Boar Meat]
    note-ptBR Mate Mountain Boars. Saqueie-os para obter [Chunks of Boar Meat]
    note-enUS This will be used to level your [Cooking] later
    note-ptBR Isto será usado para subir seu [Cooking] mais tarde
    note-enUS You need 50 [Cooking] for a quest in Darkshire later
    note-ptBR Você precisa de 50 em [Cooking] para uma missão em Darkshire mais tarde
    note-enUS Don't go out of your way to farm this now. Simply kill and loot all the boars you're passing by
    note-ptBR Não saia do caminho para farmar isso agora. Apenas mate e saqueie todos os javalis pelo caminho
    collect 769 50 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Elder Black Bears. Loot them for their Bear Meat
    note-ptBR Mate Elder Black Bears. Saqueie-os para obter Bear Meat
    note-enUS Kill Mountain Boars. Loot them for their Boar Intestines
    note-ptBR Mate Mountain Boars. Saqueie-os para obter Boar Intestines
    note-enUS Kill Forest Lurkers. Loot them for their Spider Ichor
    note-ptBR Mate Forest Lurkers. Saqueie-os para obter Spider Ichor
    collect 3172 3 |quest 418 |q 418/1 |opt
    collect 3173 3 |quest 418 |q 418/1 |opt
    collect 3174 3 |quest 418 |q 418/1 |opt
    note-enUS Talk to Mountaineer Kadrell
    note-ptBR Fale com Mountaineer Kadrell
    note-enUS Mountaineer Kadrell patrols the road through Thelsamar
    note-ptBR Mountaineer Kadrell patrulha a estrada que atravessa Thelsamar
    accept 416 |opt
    accept 1339 |opt
    note-enUS Talk to Grenhild Darktalon
    note-ptBR Fale com Grenhild Darktalon
    accept 86667
step
    goto 1432 @-2954.42,-5394.1
    note-enUS Talk to Vidra Hearthstove
    note-ptBR Fale com Vidra Hearthstove
    accept 418
step
    ifcomplete 418
    goto 1432 @-2954.42,-5394.1
    note-enUS Talk to Vidra Hearthstove
    note-ptBR Fale com Vidra Hearthstove
    turnin 418
step
    only !Warrior !Rogue !Hunter
    path seq 1432 @-2952.46,-5381.87
    goto 1432 @-2973.9,-5377.93
    abandon 1338 |opt
    note-enUS Talk to Yanni Stoutheart
    note-ptBR Fale com Yanni Stoutheart
    vendor |opt
    note-enUS Talk to Innkeeper Hearthstove
    note-ptBR Fale com Innkeeper Hearthstove
    vendor
step
    path seq 1432 @-3006.61,-5259.57 @-3020.95,-5282.02 @-3023.44,-5326.9 @-3007.99,-5337.39 @-2964.41,-5349.9 @-2894.9,-5401.96
    goto 1432 @-3007.99,-5337.39
    note-enUS Talk to Mountaineer Kadrell
    note-ptBR Fale com Mountaineer Kadrell
    note-enUS Mountaineer Kadrell patrols the road through Thelsamar
    note-ptBR Mountaineer Kadrell patrulha a estrada que atravessa Thelsamar
    accept 416
    accept 1339
step
    goto 1432 @-2929.87,-5424.84
    note-enUS Talk to Thorgrum Borrelson
    note-ptBR Fale com Thorgrum Borrelson
    fp
step
    path seq 1432 @-2677.26,-5778.34 @-2648.3,-5876.75
    goto 1432 @-2634.59,-5842.81
    note-enUS Talk to Captain Rugelfuss in the bunker
    note-ptBR Fale com Captain Rugelfuss no bunker
    accept 267
step
    goto 1432 @-2602.54,-5832.73
    note-enUS Talk to Mountaineer Cobbleflint
    note-ptBR Fale com Mountaineer Cobbleflint
    accept 224
step
    goto 1432 @-2534.38,-5648.28 5
    use 279380
    objective 86667/1
step
    path seq 1426 70.84,51.78 73.53,50.85 75.35,48.53 79.88,46.8 81.04,43.46 80.58,36.04 70.84,51.78 73.53,50.85 75.35,48.53 79.88,46.8 81.04,43.46
    goto 1426 80.58,36.04
    note-enUS Kill Mountain Boars. Loot them for their [Chunks of Boar Meat]
    note-ptBR Mate Mountain Boars. Saqueie-os para obter [Chunks of Boar Meat]
    collect 769 10 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Mountain Boars. Loot them for their [Chunks of Boar Meat]
    note-ptBR Mate Mountain Boars. Saqueie-os para obter [Chunks of Boar Meat]
    note-enUS Don't go out of your way to farm this now. Simply kill and loot all the boars you're passing by
    note-ptBR Não saia do caminho para farmar isso agora. Apenas mate e saqueie todos os javalis pelo caminho
    collect 769 50 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Elder Black Bears. Loot them for their Bear Meat
    note-ptBR Mate Elder Black Bears. Saqueie-os para obter Bear Meat
    note-enUS Kill Mountain Boars. Loot them for their Boar Intestines
    note-ptBR Mate Mountain Boars. Saqueie-os para obter Boar Intestines
    note-enUS Kill Forest Lurkers. Loot them for their Spider Ichor
    note-ptBR Mate Forest Lurkers. Saqueie-os para obter Spider Ichor
    collect 3172 3 |quest 418 |q 418/1
    collect 3173 3 |quest 418 |q 418/1
    collect 3174 3 |quest 418 |q 418/1
step
    goto 1432 @-3146.73,-4837.02
    note-enUS Kill Tunnel Rats. Loot them for their Tunnel Rat Ears
    note-ptBR Mate Tunnel Rats. Saqueie-os para obter Tunnel Rat Ears
    objective 416/1 |opt
    note-enUS Talk to Norric Lochthane
    note-ptBR Fale com Norric Lochthane
    turnin 86667
step
    path seq 1432 @-2972.96,-4835.19
    goto 1432 @-2984.82,-4902.33
    note-enUS Open the Miners' League Crates. Loot them for the Miners' Gear
    note-ptBR Abra os Miners' League Crates. Saqueie-os para obter o Miners' Gear
    note-enUS The Miners' League Crates can be found all throughout the Mine
    note-ptBR Os Miners' League Crates podem ser encontrados por toda a mina
    note-enUS You will be able to do this quest at a higher level if you wish to skip it for now
    note-ptBR Você poderá fazer esta missão em um nível mais alto se quiser pulá-la agora
    objective 307/1
step
    only Paladin Warrior
    goto 1432 @-3176.16,-4669.34
    note-enUS Talk to Nillen Andemar
    note-ptBR Fale com Nillen Andemar
    note-enUS Buy the [Heavy Spiked Mace] OR the [Ironwood Maul] from him (if they're up)
    note-ptBR Compre a [Heavy Spiked Mace] OU o [Ironwood Maul] dele (se estiverem disponíveis)
    note-enUS If you can't afford this, then grind money from the nearby Tunnel Rats until you have enough
    note-ptBR Se não tiver dinheiro para isso, faça grind dos Tunnel Rats próximos até ter o suficiente
    note-enUS Do this quickly as another player may purchase it before you do
    note-ptBR Faça isso rápido, pois outro jogador pode comprar antes de você
    note-enUS If you don't wish to do this, skip this step
    note-ptBR Se não quiser fazer isso, pule esta etapa
    collect 4778 1 |quest 307 |q 307/1
    collect 4777 1 |quest 307 |q 307/1
step
    path seq 1432 @-2684.71,-5042.87 @-2712.57,-5286.61 @-3033.92,-4797.29 @-2972.41,-4796.92 @-2684.71,-5042.87 @-2712.57,-5286.61 @-3033.92,-4797.29
    goto 1432 @-2972.41,-4796.92
    note-enUS Equip the [Heavy Spiked Mace] |only Paladin Warrior
    note-ptBR Equipe a [Heavy Spiked Mace] |only Paladin Warrior
    use 4778 |only Paladin Warrior |opt
    note-enUS Equip the [Ironwood Maul] |only Paladin Warrior
    note-ptBR Equipe o [Ironwood Maul] |only Paladin Warrior
    use 4777 |only Paladin Warrior |opt
    note-enUS Kill Tunnel Rats. Loot them for their Ears
    note-ptBR Mate Tunnel Rats. Saqueie-os para obter as orelhas
    note-enUS Ensure you have 10 [Linen Cloth] for your upcoming Paladin class quest |only Paladin
    note-ptBR Garanta que tenha 10 [Linen Cloth] para sua próxima missão de classe de Paladino |only Paladin
    objective 416/1
    collect 2589 10 |quest 1644 |q 1644/1 |only Human Paladin
step
    only Human
    path seq 1432 @-2659.45,-4822.45
    goto 1432 @-2676.99,-4825.98
    note-enUS Kill Elder Black Bears. Loot them for their Bear Meat
    note-ptBR Mate Elder Black Bears. Saqueie-os para obter Bear Meat
    note-enUS Kill Mountain Boars. Loot them for their Boar Intestines
    note-ptBR Mate Mountain Boars. Saqueie-os para obter Boar Intestines
    note-enUS Kill Forest Lurkers. Loot them for their Spider Ichor
    note-ptBR Mate Forest Lurkers. Saqueie-os para obter Spider Ichor
    collect 3172 3 |quest 418 |q 418/1 |opt
    collect 3173 3 |quest 418 |q 418/1 |opt
    collect 3174 3 |quest 418 |q 418/1 |opt
    note-enUS Talk to Gothor Brumn
    note-ptBR Fale com Gothor Brumn
    vendor |opt
    note-enUS Talk to Mountaineer Stormpike
    note-ptBR Fale com Mountaineer Stormpike
    turnin 307
    turnin 1339
    accept 1338
step
    path closest 1426 70.84,51.78 73.53,50.85 75.35,48.53 79.88,46.8 81.04,43.46 80.58,36.04 70.84,51.78 73.53,50.85 75.35,48.53 79.88,46.8 81.04,43.46 80.58,36.04
    path closest 1432 @-2735.74,-4684.34 @-2782.63,-4770.8 @-3080.53,-5100.08 @-2735.74,-4684.34 @-2846.07,-4682.5 @-2782.63,-4770.8 @-2835.04,-4976.83 @-2915.03,-5044.89 @-3080.53,-5100.08 @-3041.92,-5129.51 @-2815.73,-5147.91 @-2782.63,-4903.25 @-3041.92,-5129.51 @-3017.09,-5219.65 @-2815.73,-5147.91 @-2757.81,-4952.91 @-2782.63,-4903.25 @-2873.66,-4789.19 @-2926.07,-5232.53 @-3069.5,-5078.01 @-2873.66,-4789.19 @-2766.08,-4866.45 @-2926.07,-5232.53 @-2992.27,-5055.93 @-3069.5,-5078.01
    note-enUS Kill Mountain Boars. Loot them for their [Chunks of Boar Meat]
    note-ptBR Mate Mountain Boars. Saqueie-os para obter [Chunks of Boar Meat]
    collect 769 10 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Mountain Boars. Loot them for their [Chunks of Boar Meat]
    note-ptBR Mate Mountain Boars. Saqueie-os para obter [Chunks of Boar Meat]
    note-enUS Don't go out of your way to farm this now. Simply kill and loot all the boars you're passing by
    note-ptBR Não saia do caminho para farmar isso agora. Apenas mate e saqueie todos os javalis pelo caminho
    collect 769 50 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Elder Black Bears. Loot them for their Bear Meat
    note-ptBR Mate Elder Black Bears. Saqueie-os para obter Bear Meat
    note-enUS Kill Mountain Boars. Loot them for their Boar Intestines
    note-ptBR Mate Mountain Boars. Saqueie-os para obter Boar Intestines
    note-enUS Kill Forest Lurkers. Loot them for their Spider Ichor
    note-ptBR Mate Forest Lurkers. Saqueie-os para obter Spider Ichor
    collect 3173 3 |quest 418 |q 418/1
    collect 3172 3 |quest 418 |q 418/1
    collect 3174 3 |quest 418 |q 418/1
step
    ifcomplete 418
    path seq 1432 35.27,47.75 35.43,48.24
    goto 1432 @-2954.42,-5394.1
    note-enUS Talk to Mountaineer Kadrell
    note-ptBR Fale com Mountaineer Kadrell
    note-enUS Mountaineer Kadrell patrols the road through Thelsamar
    note-ptBR Mountaineer Kadrell patrulha a estrada que atravessa Thelsamar
    turnin 416 |opt
    note-enUS Talk to Vidra Hearthstove
    note-ptBR Fale com Vidra Hearthstove
    turnin 418
step
    ifcomplete 416
    path seq 1432 @-3006.61,-5259.57 @-3020.95,-5282.02 @-3023.44,-5326.9 @-3007.99,-5337.39 @-2964.41,-5349.9 @-2894.9,-5401.96
    goto 1432 @-3007.99,-5337.39
    note-enUS Talk to Mountaineer Kadrell
    note-ptBR Fale com Mountaineer Kadrell
    note-enUS Mountaineer Kadrell patrols the road through Thelsamar
    note-ptBR Mountaineer Kadrell patrulha a estrada que atravessa Thelsamar
    turnin 416
step
    goto 1432 @-2747.6,-5530.54
    note-enUS Kill Stonesplinter Troggs and Stonesplinter Scouts. Loot them for their Teeth
    note-ptBR Mate Stonesplinter Troggs e Stonesplinter Scouts. Saqueie-os para obter os dentes
    note-enUS Be careful as Stonesplinter Scouts cast [Shoot] (Ranged Cast: Deals 14-20 damage)
    note-ptBR Cuidado, Stonesplinter Scouts lançam [Shoot] (Lançamento à distância: causa 14-20 de dano)
    note-enUS This is a hyperspawn area. You should not need to move from here
    note-ptBR Esta é uma área de reaparecimento muito rápido. Você não deve precisar sair daqui
    note-enUS Ensure you have 10 [Linen Cloth] for your upcoming Paladin class quest |only Paladin
    note-ptBR Garanta que tenha 10 [Linen Cloth] para sua próxima missão de classe de Paladino |only Paladin
    objective 224/1
    objective 224/2
    objective 267/1
    collect 2589 10 |quest 1644 |q 1644/1 |only Human Paladin
step
    ifcomplete 267
    path seq 1432 @-2677.26,-5778.34 @-2648.3,-5876.75
    goto 1432 @-2634.59,-5842.81
    note-enUS Talk to Captain Rugelfuss
    note-ptBR Fale com Captain Rugelfuss
    turnin 267
step
    ifcomplete 224
    goto 1432 @-2602.54,-5832.73
    note-enUS Talk to Mountaineer Cobbleflint
    note-ptBR Fale com Mountaineer Cobbleflint
    turnin 224
step
    only Warlock
    goto 1432 @-2747.6,-5530.54 |only Warlock
    goto 1432 @-2747.6,-5530.54
    note-enUS Grind Troggs until you have 75s 79c worth of vendor trash/money |only Warlock
    note-ptBR Faça grind de Troggs até ter 75s 79c em lixo para vender/dinheiro |only Warlock
    level 14
    note-enUS Fly to Ironforge and skip this step if you're planning on running the Hall of Thanes dungeon in Ironforge
    note-ptBR Voe para Ironforge e pule esta etapa se planeja fazer a masmorra Hall of Thanes em Ironforge
step
    only !Warrior
    goto 1432 @-2747.6,-5530.54
    note-enUS Continue grinding Troggs until your [Hearthstone] is ready
    note-ptBR Continue fazendo grind de Troggs até sua [Hearthstone] ficar pronta
step
    only Human Warrior
    goto 1455 @-1203.78,-5041.97
    note-enUS Talk to Bixi Wobblebonk
    note-ptBR Fale com Bixi Wobblebonk
    train 2567
step
    only Human Warrior
    goto 1455 @-1234.65,-5035.67
    note-enUS Talk to Bilban Tosslespanner
    note-ptBR Fale com Bilban Tosslespanner
    trainer
step
    hearth
step
    only Hunter
    ifskillbelow cooking 50
    goto 1453 @596.4,-8831.7
    note-enUS Talk to Thurman Mullby
    note-ptBR Fale com Thurman Mullby
    note-enUS Buy a [Simple Wood] and a [Flint and Tinder] from him
    note-ptBR Compre um [Simple Wood] e um [Flint and Tinder] dele
    note-enUS This is used to make [Basic Campfires] on Boats to level your [Cooking] skill without losing time
    note-ptBR Isto é usado para fazer [Basic Campfires] nos barcos e subir sua habilidade de [Cooking] sem perder tempo
    note-enUS You need 50 [Cooking] for a quest in Duskwood later
    note-ptBR Você precisa de 50 em [Cooking] para uma missão em Duskwood mais tarde
    collect 4470 1
    collect 4471 1
step
    goto 1453 @613,-8796.03
    note-enUS Talk to Woo Ping
    note-ptBR Fale com Woo Ping
    trainer |only Warlock Mage
    trainer |only Rogue
    trainer |only Priest
    trainer |only Warrior Paladin
step
    ifonquest 6261
    goto 1453 @489.99,-8835.76
    note-enUS Talk to Dungar Longdrink
    note-ptBR Fale com Dungar Longdrink
    turnin 6261
step
    only Warlock
    path seq 1453 @988.44,-8942.15 |only Warlock
    goto 1453 @1015.33,-8978.9 15 |only Warlock
    goto 1453 @1029.89,-8971.06
    note-enUS Equip the [Smoldering Wand] |only Warlock Priest
    note-ptBR Equipe a [Smoldering Wand] |only Warlock Priest
    use 5208 |only Warlock Priest |opt
    note-enUS Remember to equip the [Smoldering Wand] later when you reach level 15 |only Warlock Priest
    note-ptBR Lembre-se de equipar a [Smoldering Wand] depois, quando chegar ao nível 15 |only Warlock Priest
    use 5208 |only Warlock Priest |opt
    note-enUS Talk to Ursula Deline
    note-ptBR Fale com Ursula Deline
    trainer
step
    only Warlock
    goto 1453 @1035.96,-8974.86
    note-enUS Talk to Spackle Thornberry
    note-ptBR Fale com Spackle Thornberry
    vendor
step
    only Mage
    goto 1453 @874.32,-9014.67 10 |only Mage
    goto 1453 @885.34,-9006.15
    note-enUS Talk to Elsharin
    note-ptBR Fale com Elsharin
    trainer
step
    only Human Paladin
    goto 1453 @809.52,-8579.22 20 |only Priest Paladin
    goto 1453 @845.95,-8545.7
    note-enUS Talk to Duthorian Rall
    note-ptBR Fale com Duthorian Rall
    accept 1641
    turnin 1641
step
    only Human Paladin
    goto 1453 @845.95,-8545.7
    note-enUS Use the [The Tome of Divinity] to start the quest
    note-ptBR Use o [The Tome of Divinity] para iniciar a missão
    accept 1642
    use 6775
step
    only Human Paladin
    goto 1453 @845.95,-8545.7
    note-enUS Talk to Duthorian Rall
    note-ptBR Fale com Duthorian Rall
    turnin 1642
    accept 1643
step
    only Paladin
    path seq 1453 @859.13,-8559.14
    goto 1453 @861.14,-8573.03
    note-enUS Talk to Arthur the Faithful
    note-ptBR Fale com Arthur the Faithful
    trainer
step
    only Priest
    goto 1453 @862.89,-8519.61
    note-enUS Talk to Brother Joshua
    note-ptBR Fale com Brother Joshua
    trainer
step
    only !Hunter
    goto 1453 @719.67,-8550.3
    note-enUS Talk to Baros Alexston
    note-ptBR Fale com Baros Alexston
    accept 399
step
    goto 1453 @600.07,-8427.22
    note-enUS Talk to Furen Longbeard
    note-ptBR Fale com Furen Longbeard
    turnin 1338
step
    only Hunter
    goto 1453 @552.78,-8415.71
    note-enUS Talk to Einris Brightspear
    note-ptBR Fale com Einris Brightspear
    trainer
step
    only Hunter
    goto 1453 @553.22,-8422.23
    note-enUS Talk to Karrina Mekenda
    note-ptBR Fale com Karrina Mekenda
    trainer
step
    only Rogue
    goto 1453 @377.47,-8752.39
    note-enUS Talk to Osborne
    note-ptBR Fale com Osborne
    trainer
step
    only Warrior
    path seq 1453 @358.25,-8728.28 @302.6,-8685.53
    goto 1453 @323.3,-8689.29
    note-enUS Talk to Wu or Ilsa
    note-ptBR Fale com Wu ou Ilsa
    trainer
step
    only Human Paladin
    goto 1453 @613.66,-8832.26
    note-enUS Talk to Stephanie Turner
    note-ptBR Fale com Stephanie Turner
    turnin 1643
    accept 1644
    turnin 1644
    accept 1780
step
    only Hunter
    goto 1453 @1330.1,-8645.4
    note-enUS Equip the [Scimitar] |only Rogue
    note-ptBR Equipe a [Scimitar] |only Rogue
    use 2027 |only Rogue |opt
    note-enUS On the Boat if it just arrived or on the dock if the boat just left: |only Hunter
    note-ptBR No barco, se ele acabou de chegar, ou no cais, se o barco acabou de partir: |only Hunter
    note-enUS On the Boat if it just arrived or on the dock if the boat just left: |only Hunter
    note-ptBR No barco, se ele acabou de chegar, ou no cais, se o barco acabou de partir: |only Hunter
    note-enUS On the Boat if it just arrived or on the dock if the boat just left: |only Hunter
    note-ptBR No barco, se ele acabou de chegar, ou no cais, se o barco acabou de partir: |only Hunter
    note-enUS You need 50 [Cooking] for a quest in Duskwood later |only Hunter
    note-ptBR Você precisa de 50 em [Cooking] para uma missão em Duskwood mais tarde |only Hunter
    note-enUS [Cook] the following items: |only Hunter
    note-ptBR Use [Cook] nos seguintes itens: |only Hunter
    note-enUS [Cook] the [Chunks of Boar Meat] into [Roasted Boar Meat] |only Hunter
    note-ptBR Use [Cook] para transformar os [Chunks of Boar Meat] em [Roasted Boar Meat] |only Hunter
    note-enUS [Cook] the [Stringy Wolf Meat] into [Charred Wolf Meat] |only Hunter
    note-ptBR Use [Cook] para transformar a [Stringy Wolf Meat] em [Charred Wolf Meat] |only Hunter
    note-enUS You need 50 [Cooking] for a quest in Duskwood later |only Hunter
    note-ptBR Você precisa de 50 em [Cooking] para uma missão em Duskwood mais tarde |only Hunter
    note-enUS [Cook] the [Stringy Wolf Meat] into [Charred Wolf Meat] |only Hunter
    note-ptBR Use [Cook] para transformar a [Stringy Wolf Meat] em [Charred Wolf Meat] |only Hunter
    note-enUS You need 50 [Cooking] for a quest in Duskwood later |only Hunter
    note-ptBR Você precisa de 50 em [Cooking] para uma missão em Duskwood mais tarde |only Hunter
    note-enUS [Cook] the [Chunks of Boar Meat] into [Roasted Boar Meat] |only Hunter
    note-ptBR Use [Cook] para transformar os [Chunks of Boar Meat] em [Roasted Boar Meat] |only Hunter
    note-enUS Level your [First Aid] while waiting for the boat to Darkshore if needed
    note-ptBR Suba seu [First Aid] enquanto espera o barco para Darkshore, se necessário
    zone 1439
step
    only Hunter
    goto 1453 @1330.1,-8645.4
    zone 1439
]==])
