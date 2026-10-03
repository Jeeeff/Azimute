-- Convertido automaticamente de RXPGuides (Alliance-1-14_DwarfGnome.lua)
-- (c) RestedXP - CC BY-NC-SA 4.0 (ver LICENSE.txt). Não edite à mão:
-- rode tools/rxp2azimute.py de novo.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id forever.a.1-5-coldridge-valley
#name 1-5 Coldridge Valley
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#levels 1-5
#zone 1426
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup Speedrun 1-20
#subgroup-ptBR Rota rápida 1-20
#recommend Dwarf Gnome
#next forever.a.5-11-dun-morogh

step
    goto 1426 @328.18,-6214.85
    note-enUS You have selected a guide meant for Gnomes and Dwarves. You should choose the same starter zone that you start in |only !Gnome !Dwarf
    note-ptBR Você selecionou um guia feito para Gnomos e Anões. Escolha a mesma zona inicial em que você começou |only !Gnome !Dwarf
    note-enUS Delete the [Hearthstone] from your bags, as it's no longer needed |only !Warlock !Warrior !Shaman
    note-ptBR Apague a [Hearthstone] das suas bolsas, pois não é mais necessária |only !Warlock !Warrior !Shaman
    note-enUS Talk to Sten Stoutarm
    note-ptBR Fale com Sten Stoutarm
    accept 179
step
    only Shaman
    goto 1426 @383.9,-6050.3
    note-enUS Talk to Teo Hammerstorm inside
    note-ptBR Fale com Teo Hammerstorm lá dentro
    train 8017
    note-enUS Train [Rockbiter Weapon]
    note-ptBR Treine [Rockbiter Weapon]
step
    path seq 1426 29.53,73.29 28.12,75.09 28.56,72.49 29.53,73.29 29.05,74.61 28.56,75.78 28.12,75.09 27.56,74.33 27.79,73.12
    goto 1426 28.56,72.49 60
    note-enUS Kill Ragged Young Wolves. Loot them for their Tough Wolf Meat
    note-ptBR Mate Ragged Young Wolves. Saqueie-os para obter Tough Wolf Meat
    objective 179/1
step
    path seq 1426 29.53,73.29 28.12,75.09 28.56,72.49 29.53,73.29 29.05,74.61 28.56,75.78 28.12,75.09 27.56,74.33 27.79,73.12
    goto 1426 28.56,72.49 60
    level 2
    note-enUS Grind to level 2
    note-ptBR Mate monstros até o nível 2
step
    goto 1426 @320.3,-6226.74 |only !Priest !Mage !Warlock !Shaman
    goto 1426 @328.18,-6214.85
    note-enUS Talk to Adlin Pridedrift |only !Priest !Mage !Warlock !Shaman
    note-ptBR Fale com Adlin Pridedrift |only !Priest !Mage !Warlock !Shaman
    note-enUS Buy 600 [Light Shots] from him |only Hunter
    note-ptBR Compre 600 [Light Shots] dele |only Hunter
    vendor |only !Hunter |opt
    note-enUS Vendor trash |only !Hunter
    note-ptBR Venda o lixo |only !Hunter
    collect 2516 600 |only Hunter |opt
    note-enUS Talk to Sten Stoutarm
    note-ptBR Fale com Sten Stoutarm
    turnin 179
    accept 233
    accept 3106 |only Dwarf Warrior
    accept 3107 |only Dwarf Paladin
    accept 3108 |only Dwarf Hunter
    accept 3109 |only Dwarf Rogue
    accept 3110 |only Dwarf Priest
    accept 3112 |only Gnome Warrior
    accept 3113 |only Gnome Rogue
    accept 3114 |only Gnome Mage
    accept 3115 |only Gnome Warlock
    accept 98574 |only Gnome Priest
    accept 98581 |only Dwarf Shaman
step
    only Paladin Warlock Shaman
    path closest 1426 23.59,72.46 26.12,74.47 26.83,74.65 26.88,72.73 23.59,72.46 24.29,73.41 24.64,74.14 26.12,74.47 26.83,74.65 26.88,72.73
    level 3
    note-enUS Grind to 1130+/1400xp
    note-ptBR Mate monstros até 1130+/1400xp
step
    goto 1426 25.08,75.71
    note-enUS Talk to Grelin Whitebeard
    note-ptBR Fale com Grelin Whitebeard
    turnin 234
    accept 182
step
    only Hunter
    path seq 1426 25.86,78.2 23.72,80.26 20.67,75.84 25.86,78.2 26.38,78.41 26.03,79.85 23.72,80.26 22.84,79.96 22.68,78.89 21.03,76.46 |only Hunter
    goto 1426 20.67,75.84 45 |only Hunter
    path seq 1426 25.86,78.2 23.72,80.26
    goto 1426 20.67,75.84
    note-enUS Kill Frostmane Troll Whelps |only Hunter
    note-ptBR Mate Frostmane Troll Whelps |only Hunter
    objective 182/1 |only Hunter |opt
    level 4
    note-enUS Grind to level 4
    note-ptBR Mate monstros até o nível 4
step
    only Paladin Warlock Hunter Shaman
    note-enUS Talk to Nori Pridedrift
    note-ptBR Fale com Nori Pridedrift
    note-enUS This will start a 5 minute timer for the quest. Do NOT go AFK or log out for the next 5 minutes
    note-ptBR Isto iniciará um cronômetro de 5 minutos para a missão. NÃO fique AFK nem saia do jogo nos próximos 5 minutos
    accept 3364
step
    only Paladin Warlock Hunter Shaman
    ifnotturnedin 317
    path seq 1426 28.79,68.8 |only Paladin Warlock Hunter Shaman
    goto 1426 28.94,68.39 12 |only Paladin Warlock Hunter Shaman
    goto 1426 @385.21,-6056.46
    note-enUS You have 5 minutes to return to Anvilmar before [Durnan's Scalding Mornbrew] expires |only Paladin Warlock Hunter Shaman
    note-ptBR Você tem 5 minutos para voltar a Anvilmar antes que o [Durnan's Scalding Mornbrew] expire |only Paladin Warlock Hunter Shaman
    note-enUS Enter Anvilmar |only Paladin Warlock Hunter Shaman
    note-ptBR Entre em Anvilmar |only Paladin Warlock Hunter Shaman
    note-enUS Talk to Durnan Furcutter inside
    note-ptBR Fale com Durnan Furcutter lá dentro
    turnin 3364
    accept 3365
step
    only Shaman
    goto 1426 @384,-6050.2
    note-enUS Talk to Teo Hammerstorm
    note-ptBR Fale com Teo Hammerstorm
    turnin 98581
    accept 94373
    train 8042
    note-enUS Train [Earth Shock]
    note-ptBR Treine [Earth Shock]
step
    only Paladin Warlock Hunter Shaman
    goto 1426 @390,-6093.8
    note-enUS Talk to Grund Drokda
    note-ptBR Fale com Grund Drokda
    accept 97277
step
    only Paladin Warlock Hunter
    path seq 1426 @497.3,-6118.5 |only Paladin Warlock Hunter
    goto 1426 @467.7,-6012.8 20 |only Paladin Warlock Hunter
    path seq 1426 @447.8,-5942
    goto 1426 @458.7,-5940.6
    note-enUS Travel up to the hills in northern Coldridge Valley |only Paladin Warlock Hunter
    note-ptBR Suba até as colinas no norte de Coldridge Valley |only Paladin Warlock Hunter
    note-enUS Kill the Snow Leopard Prowler
    note-ptBR Mate o Snow Leopard Prowler
    note-enUS Loot Gozwin's Mechanic's Log on the ground
    note-ptBR Saqueie o Gozwin's Mechanic's Log no chão
    objective 97277/2
    objective 97277/1
step
    only Paladin Warlock Hunter Shaman
    note-enUS Talk to Nori Pridedrift
    note-ptBR Fale com Nori Pridedrift
    turnin 3365
step
    path closest 1426 25.86,78.2 23.72,80.26 20.67,75.84 25.86,78.2 26.38,78.41 26.03,79.85 23.72,80.26 22.84,79.96 22.68,78.89 21.03,76.46 20.67,75.84
    note-enUS Kill Frostmane Troll Whelps |only !Shaman
    note-ptBR Mate Frostmane Troll Whelps |only !Shaman
    note-enUS Kill Frostmane Troll Whelps. Loot them for their Iceclaw Bear Pendants |only Shaman
    note-ptBR Mate Frostmane Troll Whelps. Saqueie-os para obter Iceclaw Bear Pendants |only Shaman
    objective 182/1
step
    goto 1426 @567.09,-6362.99
    note-enUS Talk to Grelin Whitebeard
    note-ptBR Fale com Grelin Whitebeard
    turnin 182
    accept 218
step
    only !Paladin !Warlock !Hunter !Shaman
    note-enUS Talk to Nori Pridedrift
    note-ptBR Fale com Nori Pridedrift
    note-enUS This will start a 5 minute timer for the quest. Do NOT go AFK or log out for the next 5 minutes
    note-ptBR Isto iniciará um cronômetro de 5 minutos para a missão. NÃO fique AFK nem saia do jogo nos próximos 5 minutos
    accept 3364
step
    path seq 1426 27.1,80.71 28.3,79.84 29.25,79.04
    goto 1426 30.49,80.17 50
    note-enUS You have 5 minutes to get Grelin Whitebeard's Journal and return to Anvilmar before [Durnan's Scalding Mornbrew] expires |only !Paladin !Warlock !Hunter !Shaman
    note-ptBR Você tem 5 minutos para pegar o Grelin Whitebeard's Journal e voltar a Anvilmar antes que o [Durnan's Scalding Mornbrew] expire |only !Paladin !Warlock !Hunter !Shaman
    note-enUS If you fail the quest don't worry as you can get it again later |only !Paladin !Warlock !Hunter !Shaman
    note-ptBR Se falhar a missão, não se preocupe, você pode pegá-la de novo depois |only !Paladin !Warlock !Hunter !Shaman
    note-enUS Enter the Frostmane Cave
    note-ptBR Entre na Frostmane Cave
    note-enUS Travel towards Grik'nir the Cold inside
    note-ptBR Vá em direção a Grik'nir the Cold lá dentro
    note-enUS Kill Grik'nir the Cold inside. Loot him for Grelin Whitebeard's Journal
    note-ptBR Mate Grik'nir the Cold lá dentro. Saqueie-o para obter o Grelin Whitebeard's Journal
    objective 218/1
step
    only !Paladin !Warlock !Hunter !Shaman
    ifonquest 3364
    goto 1426 @385.21,-6056.46
    note-enUS Die and respawn at the Spirit Healer |only !Paladin !Warlock !Hunter !Shaman
    note-ptBR Morra e renasça no Spirit Healer |only !Paladin !Warlock !Hunter !Shaman
    note-enUS Talk to Durnan Furcutter
    note-ptBR Fale com Durnan Furcutter
    note-enUS If you failed the quest, skip this step
    note-ptBR Se você falhou na missão, pule esta etapa
    turnin 3364
    accept 3365
step
    only !Paladin !Warlock !Hunter !Shaman
    ifturnedin 3364
    ifnotturnedin 317
    goto 1426 @385.21,-6056.46
    note-enUS Talk to Durnan Furcutter
    note-ptBR Fale com Durnan Furcutter
    accept 3365
step
    only !Paladin !Warlock !Hunter !Shaman
    abandon 3364
    note-enUS Abandon Scalding Mornbrew Delivery. You'll pick it up again
    note-ptBR Abandone Scalding Mornbrew Delivery. Você vai pegá-la de novo
step
    only !Paladin !Warlock !Hunter !Shaman
    ifnotturnedin 3364
    goto 1426 @567.14,-6363.06
    note-enUS Talk to Nori Pridedrift and Grelin Whitebeard
    note-ptBR Fale com Nori Pridedrift e Grelin Whitebeard
    accept 3364
    turnin 218
    accept 282
step
    only !Paladin !Warlock !Hunter !Shaman
    goto 1426 @385.21,-6056.46
    note-enUS Talk to Durnan Furcutter
    note-ptBR Fale com Durnan Furcutter
    turnin 3364
    accept 3365
step
    only Shaman
    goto 1426 @383.8,-6133.7 10 |only Shaman
    goto 1426 @384,-6050.2
    note-enUS Return to Teo Hammerstorm in Anvilmar |only Shaman
    note-ptBR Volte para Teo Hammerstorm em Anvilmar |only Shaman
    note-enUS Talk to Teo Hammerstorm
    note-ptBR Fale com Teo Hammerstorm
    turnin 94373
    accept 94374
step
    only !Paladin !Warlock !Hunter !Shaman
    goto 1426 @390,-6093.8
    note-enUS Talk to Grund Drokda
    note-ptBR Fale com Grund Drokda
    accept 97277
step
    only !Paladin !Warlock !Hunter
    path seq 1426 28.83,68.7 @497.3,-6118.5 |only !Paladin !Warlock !Hunter
    goto 1426 @467.7,-6012.8 20 |only !Paladin !Warlock !Hunter
    path seq 1426 @447.8,-5942
    goto 1426 @458.7,-5940.6
    note-enUS Exit Anvilmar |only !Paladin !Warlock !Hunter
    note-ptBR Saia de Anvilmar |only !Paladin !Warlock !Hunter
    note-enUS Travel up to the hills in northern Coldridge Valley |only !Paladin !Warlock !Hunter
    note-ptBR Suba até as colinas no norte de Coldridge Valley |only !Paladin !Warlock !Hunter
    note-enUS Kill the Snow Leopard Prowler
    note-ptBR Mate o Snow Leopard Prowler
    note-enUS Loot Gozwin's Mechanic's Log on the ground
    note-ptBR Saqueie o Gozwin's Mechanic's Log no chão
    objective 97277/2
    objective 97277/1
step
    only Shaman
    ifonquest 94374
    goto 1426 @582.1,-5907.8
    note-enUS Use the [Earth Sapta] at the Spirit Stone to summon the Minor Manifestation of Earth
    note-ptBR Use o [Earth Sapta] na Spirit Stone para invocar a Minor Manifestation of Earth
    use 6635
step
    only Shaman
    goto 1426 @576.5,-5908.1
    note-enUS Talk to Minor Manifestation of Earth
    note-ptBR Fale com Minor Manifestation of Earth
    turnin 94374
    accept 94375
step
    only Shaman
    goto 1426 @383.8,-6133.7 10 |only Shaman
    goto 1426 @383.9,-6050.3
    note-enUS Return to Teo Hammerstorm in Anvilmar |only Shaman
    note-ptBR Volte para Teo Hammerstorm em Anvilmar |only Shaman
    note-enUS Talk to Teo Hammerstorm
    note-ptBR Fale com Teo Hammerstorm
    turnin 94375
step
    only !Paladin !Warlock !Hunter !Shaman
    goto 1426 @567.14,-6363.06
    note-enUS Talk to Grelin Whitebeard
    note-ptBR Fale com Grelin Whitebeard
    turnin 218
    accept 282
step
    only !Paladin !Warlock !Hunter !Shaman
    note-enUS Talk to Nori Pridedrift
    note-ptBR Fale com Nori Pridedrift
    turnin 3365
step
    only Dwarf Priest Gnome Priest
    level 4
    note-enUS Grind to 1690+/2100xp
    note-ptBR Mate monstros até 1690+/2100xp
step
    goto 1426 @390,-6093.8
    note-enUS Talk to Grund Drokda
    note-ptBR Fale com Grund Drokda
    turnin 97277
step
    only Dwarf Priest Gnome Priest
    note-enUS Talk to Branstock Khalder
    note-ptBR Fale com Branstock Khalder
    accept 5626
step
    goto 1426 @152.9,-6235.8
    note-enUS Talk to Mountaineer Thalos
    note-ptBR Fale com Mountaineer Thalos
    turnin 282
    accept 420
    accept 96628
step
    goto 1426 @135.1,-6248.9
    note-enUS Talk to Hands Springsprocket
    note-ptBR Fale com Hands Springsprocket
    accept 2160
step
    ifonquest 2160
    path seq 1426 @111.82,-6206.61
    goto 1426 @46.32,-6037.19 15
    note-enUS Travel through Coldridge Pass
    note-ptBR Passe por Coldridge Pass
]==])

register([==[
#format 1
#id forever.a.5-11-dun-morogh
#name 5-11 Dun Morogh
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#levels 5-11
#zone 1426
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup Speedrun 1-20
#subgroup-ptBR Rota rápida 1-20
#recommend Dwarf Gnome
#next forever.a.11-12-elwynn-dwarf-gnome

step
    path seq 1426 43.32,56.28 43.95,52.52 38.68,60.56
    goto 1426 @-499.17,-5644.37
    note-enUS Kill Crag Boars. Loot them for [Chunks of Boar Meat] and Crag Boar Ribs
    note-ptBR Mate Crag Boars. Saqueie-os para obter [Chunks of Boar Meat] e Crag Boar Ribs
    note-enUS Save all the [Chunks of Boar Meat] you get for Stocking Jetsteam and then for leveling your [Cooking] later
    note-ptBR Guarde todos os [Chunks of Boar Meat] que conseguir para Stocking Jetsteam e depois para subir seu [Cooking]
    note-enUS You need 10 [Cooking] for a quest in Auberdine later
    note-ptBR Você precisa de 10 em [Cooking] para uma missão em Auberdine mais tarde
    note-enUS You need 50 [Cooking] for a quest in Darkshire later
    note-ptBR Você precisa de 50 em [Cooking] para uma missão em Darkshire mais tarde
    collect 769 4 |quest 317 |q 317/1 |opt
    collect 2886 6 |quest 384 |q 384/1 |opt
    level 5 |only Priest
    note-enUS Travel to Kharanos. Grind to 1325+/2800xp killing Crag Boars en-route |only Priest
    note-ptBR Vá até Kharanos. Mate monstros até 1325+/2800xp matando Crag Boars no caminho |only Priest
    level 5 |only !Priest
    note-enUS Travel to Kharanos. Grind to 1595+/2800xp killing Crag Boars en-route |only !Priest
    note-ptBR Vá até Kharanos. Mate monstros até 1595+/2800xp matando Crag Boars no caminho |only !Priest
step
    goto 1426 @-498.4,-5648.4
    note-enUS Make sure your subzone is NOT Coldridge Pass
    note-ptBR Certifique-se de que sua subzona NÃO seja Coldridge Pass
    note-enUS Die and respawn at the Spirit Healer
    note-ptBR Morra e renasça no Spirit Healer
    note-enUS Talk to Eric Brighthammer
    note-ptBR Fale com Eric Brighthammer
    turnin 96628
    accept 96608
step
    goto 1426 @-498.4,-5648.4
    note-enUS Type "/sit" in chat and wait for one minute around the campfire
    note-ptBR Digite "/sit" no chat e espere um minuto perto da fogueira
    objective 96608/1
    objective 96608/2
step
    goto 1426 @-498.4,-5648.4
    note-enUS Talk to Eric Brighthammer
    note-ptBR Fale com Eric Brighthammer
    turnin 96608
    accept 96629
step
    goto 1426 @-501.4,-5643.9
    note-enUS Talk to Senir Whitebeard
    note-ptBR Fale com Senir Whitebeard
    turnin 420
    accept 98322
step
    only Warlock
    goto 1426 @-528.87,-5640
    note-enUS Talk to Gimrizz Shadowcog
    note-ptBR Fale com Gimrizz Shadowcog
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warlock
    goto 1426 @-526.11,-5639.71
    note-enUS Talk to Dannie Fizzwizzle
    note-ptBR Fale com Dannie Fizzwizzle
    vendor
    note-enUS Buy the [Grimoire of Blood Pact (Rank 1)] if you can afford it. If not you can buy it later
    note-ptBR Compre o [Grimoire of Blood Pact (Rank 1)] se puder pagar. Se não, você pode comprá-lo depois
step
    goto 1426 @-504.05,-5596.27
    note-enUS Talk to Ragnar Thunderbrew
    note-ptBR Fale com Ragnar Thunderbrew
    accept 384
step
    path seq 1426 46.95,52.05 47.15,51.94
    goto 1426 @-523.35,-5590.82
    note-enUS Enter the Thunderbrew Distillery
    note-ptBR Entre na Thunderbrew Distillery
    note-enUS Talk to Tannok Frosthammer
    note-ptBR Fale com Tannok Frosthammer
    turnin 2160 |reward 1 |only Warrior Rogue
    turnin 2160 |reward 2 |only !Warrior !Rogue
step
    goto 1426 @-529.6,-5590.6
    note-enUS Talk to Maxan Anvol
    note-ptBR Fale com Maxan Anvol
    accept 5625 |only Priest
    accept 99158
step
    only Priest
    goto 1426 @-453.81,-5668.73
    note-enUS Cast [Lesser Heal] (Rank 2) and then [Power Word: Fortitude] on Mountaineer Dolf outside
    note-ptBR Lance [Lesser Heal] (Rank 2) e depois [Power Word: Fortitude] em Mountaineer Dolf do lado de fora
    objective 5625/1
step
    only Priest
    goto 1426 @-529.51,-5590.66
    note-enUS Talk to Maxan Anvol inside
    note-ptBR Fale com Maxan Anvol lá dentro
    turnin 5625
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Mage
    goto 1426 @-537.2,-5587
    note-enUS Talk to Magis Sparkmantle inside upstairs
    note-ptBR Fale com Magis Sparkmantle lá dentro, no andar de cima
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Paladin
    goto 1426 @-542.1,-5586.8
    note-enUS Talk to Azar Stronghammer inside upstairs
    note-ptBR Fale com Azar Stronghammer lá dentro, no andar de cima
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Shaman
    goto 1426 @-541.5,-5582.9
    note-enUS Talk to Ingrid Dunwald inside upstairs
    note-ptBR Fale com Ingrid Dunwald lá dentro, no andar de cima
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Hunter
    note-enUS Talk to Grif Wildheart
    note-ptBR Fale com Grif Wildheart
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    goto 1426 @-545.8,-5594.5
    note-enUS Talk to Gremlock Pilsnor
    note-ptBR Fale com Gremlock Pilsnor
    note-enUS Skip this step if you don't have 1 silver, or if you wish to do it later
    note-ptBR Pule esta etapa se não tiver 1 de prata ou se preferir fazer isso depois
    train 2550
    note-enUS Train [Cooking]
    note-ptBR Treine [Cooking]
    turnin 96629
step
    ifcomplete 96629
    goto 1426 @-545.8,-5594.5
    note-enUS Talk to Gremlock Pilsnor
    note-ptBR Fale com Gremlock Pilsnor
    turnin 96629
step
    only Rogue
    goto 1426 @-540.39,-5604.38
    note-enUS Talk to Hogral Bakkan inside in the backroom
    note-ptBR Fale com Hogral Bakkan lá dentro, na sala dos fundos
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Rogue
    goto 1426 @-521.97,-5597.65
    note-enUS Talk to Kreg Bilmn
    note-ptBR Fale com Kreg Bilmn
    note-enUS Buy the [Balanced Throwing Daggers]
    note-ptBR Compre as [Balanced Throwing Daggers]
    collect 2946 1
step
    only Rogue
    note-enUS Equip the [Balanced Throwing Daggers]
    note-ptBR Equipe as [Balanced Throwing Daggers]
    use 2946
step
    only Rogue
    note-enUS Delete the [Small Throwing Knives] from your bags, as they're no longer needed
    note-ptBR Apague as [Small Throwing Knives] das suas bolsas, pois não são mais necessárias
step
    only Warrior
    note-enUS Talk to Granis Swiftaxe inside
    note-ptBR Fale com Granis Swiftaxe lá dentro
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    goto 1426 @-531.23,-5601.59
    note-enUS Talk to Innkeeper Belm inside
    note-ptBR Fale com Innkeeper Belm lá dentro
    home
    note-enUS Set your Hearthstone to Thunderbrew Distillery
    note-ptBR Defina sua pedra de regresso em Thunderbrew Distillery
    vendor |only Priest Mage Warlock
    note-enUS Buy as much [Ice Cold Milk] as you can afford |only Priest Mage Warlock
    note-ptBR Compre o máximo de [Ice Cold Milk] que puder pagar |only Priest Mage Warlock
step
    goto 1426 @-464.45,-5573.78
    note-enUS Talk to Tharek Blackstone
    note-ptBR Fale com Tharek Blackstone
    accept 400
step
    only Gnome Warrior
    goto 1426 45.7,51.91 20 |only Paladin Warrior Rogue
    goto 1426 45.29,52.19
    note-enUS Enter the Blacksmith building |only Paladin Warrior Rogue
    note-ptBR Entre no prédio do Blacksmith |only Paladin Warrior Rogue
    note-enUS Talk to Grawn Thromwyn
    note-ptBR Fale com Grawn Thromwyn
    note-enUS Buy a [Gladius]
    note-ptBR Compre um [Gladius]
    collect 2488 1
step
    only Dwarf Warrior
    goto 1426 45.29,52.19
    note-enUS Equip the [Gladius] |only Gnome Warrior
    note-ptBR Equipe o [Gladius] |only Gnome Warrior
    use 2488 |only Gnome Warrior |opt
    note-enUS Talk to Grawn Thromwyn
    note-ptBR Fale com Grawn Thromwyn
    note-enUS Buy a [Large Axe]
    note-ptBR Compre um [Large Axe]
    collect 2491 1
step
    only Rogue
    goto 1426 45.29,52.19
    note-enUS Equip the [Large Axe] |only Dwarf Warrior
    note-ptBR Equipe o [Large Axe] |only Dwarf Warrior
    use 2491 |only Dwarf Warrior |opt
    note-enUS Talk to Grawn Thromwyn
    note-ptBR Fale com Grawn Thromwyn
    note-enUS Buy a [Stiletto]
    note-ptBR Compre um [Stiletto]
    collect 2494 1
step
    only Paladin
    goto 1426 45.29,52.19
    note-enUS Equip the [Stiletto] |only Rogue
    note-ptBR Equipe o [Stiletto] |only Rogue
    use 2494 |only Rogue |opt
    note-enUS Talk to Grawn Thromwyn
    note-ptBR Fale com Grawn Thromwyn
    note-enUS Buy a [Wooden Mallet]
    note-ptBR Compre um [Wooden Mallet]
    collect 2493 1
step
    only Warrior Rogue Paladin
    goto 1426 45.34,51.94
    note-enUS Equip the [Wooden Mallet] |only Paladin
    note-ptBR Equipe o [Wooden Mallet] |only Paladin
    use 2493 |only Paladin |opt
    note-enUS Talk to Tognus Flintfire
    note-ptBR Fale com Tognus Flintfire
    note-enUS This will allow you to make [Rough Sharpening Stones] which increase your melee damage by 2 |only Warrior Rogue
    note-ptBR Isto permitirá fazer [Rough Sharpening Stones], que aumentam seu dano corpo a corpo em 2 |only Warrior Rogue
    note-enUS This will allow you to make [Rough Weightstones] which increase your melee damage by 2 |only Paladin
    note-ptBR Isto permitirá fazer [Rough Weightstones], que aumentam seu dano corpo a corpo em 2 |only Paladin
    note-enUS If you don't want to do this, skip this step
    note-ptBR Se não quiser fazer isso, pule esta etapa
    train 2018
    note-enUS Train [Blacksmithing]
    note-ptBR Treine [Blacksmithing]
step
    only Shaman
    goto 1426 45.29,52.19
    note-enUS Talk to Grawn Thromwyn
    note-ptBR Fale com Grawn Thromwyn
    note-enUS Buy a [Walking Stick]
    note-ptBR Compre um [Walking Stick]
    collect 2495 1
step
    goto 1426 @-431,-5582.4
    note-enUS Equip the [Walking Stick] |only Shaman
    note-ptBR Equipe o [Walking Stick] |only Shaman
    use 2495 |only Shaman |opt
    note-enUS Talk to Tognus Flintfire
    note-ptBR Fale com Tognus Flintfire
    accept 98321
step
    path seq 1426 @-632.15,-5466.54
    goto 1426 @-641.8,-5473.18
    note-enUS Kill Crag Boars. Loot them for [Chunks of Boar Meat] and Crag Boar Ribs
    note-ptBR Mate Crag Boars. Saqueie-os para obter [Chunks of Boar Meat] e Crag Boar Ribs
    collect 769 4 |quest 317 |q 317/1 |opt
    collect 2886 6 |quest 384 |q 384/1 |opt
    note-enUS Talk to Pilot Bellowfiz and Pilot Stonegear
    note-ptBR Fale com Pilot Bellowfiz e Pilot Stonegear
    note-enUS Don't kill any Young Black Bears en-route
    note-ptBR Não mate nenhum Young Black Bear no caminho
    accept 317
    accept 313
step
    path seq 1426 @-682.23,-5488.94
    goto 1426 @-664.55,-5499.71
    note-enUS Talk to Beldin Steelgrill and Loslor Rudge
    note-ptBR Fale com Beldin Steelgrill e Loslor Rudge
    turnin 400
    accept 5541
step
    only Warrior Paladin Rogue
    goto 1426 @-664.55,-5499.71
    note-enUS Talk to Loslor Rudge
    note-ptBR Fale com Loslor Rudge
    note-enUS Buy a [Mining Pick]>>. If you can't afford it, skip this step
    note-ptBR Compre uma [Mining Pick]>>. Se não tiver dinheiro, pule esta etapa
    collect 2901 1
    train 2018
step
    only Warrior Paladin Rogue
    goto 1426 @-660.91,-5528.93
    note-enUS Talk to Yarr Hammerstone inside downstairs
    note-ptBR Fale com Yarr Hammerstone lá dentro, no andar de baixo
    note-enUS If you can't afford it, skip this step
    note-ptBR Se não tiver dinheiro, pule esta etapa
    train 2575
    note-enUS Train [Mining]
    note-ptBR Treine [Mining]
    train 2018
step
    goto 1426 @-371.4,-5746.9
    note-enUS Cast [Find Minerals] |only Warrior Paladin Rogue
    note-ptBR Lance [Find Minerals] |only Warrior Paladin Rogue
    train 2575 |only Warrior Paladin Rogue |opt
    note-enUS Kill Young Black Bears. Loot them for their Thick Bear Fur
    note-ptBR Mate Young Black Bears. Saqueie-os para obter Thick Bear Fur
    note-enUS Kill Large Crag Boars and Crag Boars. Loot them for their [Chunks of Boar Meat] and Crag Boar Ribs
    note-ptBR Mate Large Crag Boars e Crag Boars. Saqueie-os para obter [Chunks of Boar Meat] e Crag Boar Ribs
    objective 317/2 |opt
    objective 317/1 |opt
    collect 2886 6 |quest 384 |q 384/1 |opt
    note-enUS Talk to Mountaineer Gretchen
    note-ptBR Fale com Mountaineer Gretchen
    turnin 98322 |opt
    accept 98319 |opt
    note-enUS Open the Ammo Crate. Loot it for Rumbleshot's Ammo
    note-ptBR Abra o Ammo Crate. Saqueie-o para obter a Rumbleshot's Ammo
    objective 5541/1
step
    goto 1426 @-371.4,-5746.9
    note-enUS Talk to Mountaineer Gretchen
    note-ptBR Fale com Mountaineer Gretchen
    turnin 98322
    accept 98319
step
    path seq 1426 @-275,-5623.2 @-221.8,-5516.3
    goto 1426 @-312.5,-5506.3
    note-enUS Kill all types of Wendigos. Loot them for their Wendigo Manes
    note-ptBR Mate todos os tipos de Wendigos. Saqueie-os para obter Wendigo Manes
    note-enUS Loot Flintfire's Shipments on the ground inside the Grizzled Den cave
    note-ptBR Saqueie os Flintfire's Shipments no chão dentro da caverna Grizzled Den
    objective 313/1 |opt
    objective 98321/1 |opt
    note-enUS Enter the Grizzled Den cave
    note-ptBR Entre na caverna Grizzled Den
    note-enUS Travel to the corpse of Mountaineer Cornelius inside the Grizzled Den cave
    note-ptBR Vá até o corpo de Mountaineer Cornelius dentro da caverna Grizzled Den
    note-enUS Be careful of the higher level Wendigos deeper in the cave
    note-ptBR Cuidado com os Wendigos de nível mais alto no fundo da caverna
    objective 98319/1
step
    path closest 1426 42.98,54.76 41.92,54.05 41.1,48.93 42.98,54.76 41.9,55.22 41.92,54.05 42.18,53.27 41.1,48.93 @-274.9,-5423.5 @-312.5,-5506.3 @-275,-5623.2 @-274.9,-5423.5 @-312.5,-5506.3 @-275,-5623.2
    note-enUS Kill all types of Wendigos. Loot them for their Wendigo Manes
    note-ptBR Mate todos os tipos de Wendigos. Saqueie-os para obter Wendigo Manes
    note-enUS Loot Flintfire's Shipments on the ground inside the Grizzled Den cave
    note-ptBR Saqueie os Flintfire's Shipments no chão dentro da caverna Grizzled Den
    objective 313/1
    objective 98321/1
step
    note-enUS Die and respawn at the Spirit Healer
    note-ptBR Morra e renasça no Spirit Healer
step
    path seq 1426 43.7,65.3 47.66,64.04 46.28,59.8 43.7,65.3 44.73,65.69 45.13,64.7 46.11,64.35 47.66,64.04 49.48,62.37 49.16,59.84 49.4,58.85 48.52,57.09 46.28,59.8 43.45,58.76 44.9,50.14 50.55,51.78 43.45,58.76 44.97,55.08 43.75,51.88 44.24,50.92 44.9,50.14 45.4,49.35 48.09,49.9 49.18,51.01
    goto 1426 50.55,51.78 60
    note-enUS Kill Young Black Bears or Ice Claw Bears. Loot them for their Thick Bear Fur
    note-ptBR Mate Young Black Bears ou Ice Claw Bears. Saqueie-os para obter Thick Bear Fur
    note-enUS Kill Large Crag Boars and Crag Boars. Loot them for their [Chunks of Boar Meat] and Crag Boar Ribs
    note-ptBR Mate Large Crag Boars e Crag Boars. Saqueie-os para obter [Chunks of Boar Meat] e Crag Boar Ribs
    objective 317/2
    objective 317/1
    collect 2886 6 |quest 384 |q 384/1
step
    goto 1426 @-641.9,-5471.6
    note-enUS Kill Large Crag Boars and Crag Boars. Crag Boar Ribs
    note-ptBR Mate Large Crag Boars e Crag Boars. Crag Boar Ribs
    collect 2886 6 |quest 384 |q 384/1 |opt
    note-enUS Talk to Pilot Stonegear
    note-ptBR Fale com Pilot Stonegear
    turnin 313
step
    goto 1426 @-632.1,-5466.4
    note-enUS Talk to Pilot Bellowfiz
    note-ptBR Fale com Pilot Bellowfiz
    turnin 317
    accept 318
step
    goto 1426 @-429.7,-5582
    note-enUS Talk to Tognus Flintfire
    note-ptBR Fale com Tognus Flintfire
    turnin 98321
step
    level 7
    note-enUS Grind to 7
    note-ptBR Mate monstros até o nível 7
step
    goto 1426 @-501.5,-5643.9
    note-enUS Talk to Senir Whitebeard
    note-ptBR Fale com Senir Whitebeard
    accept 287
step
    goto 1426 @-370,-5750.7
    note-enUS Kill Large Crag Boars and Crag Boars. Loot them for their [Chunks of Boar Meat] and Crag Boar Ribs
    note-ptBR Mate Large Crag Boars e Crag Boars. Saqueie-os para obter [Chunks of Boar Meat] e Crag Boar Ribs
    collect 2886 6 |quest 384 |q 384/1 |opt
    note-enUS Talk to Mountaineer Gretchen
    note-ptBR Fale com Mountaineer Gretchen
    turnin 98319
    accept 98323
step
    only Hunter
    path seq 1426 40.63,62.79
    goto 1426 @-201.51,-6015.52 15
    note-enUS Travel toward Hegnar Rumbleshot
    note-ptBR Vá em direção a Hegnar Rumbleshot
    note-enUS Talk to Hegnar Rumbleshot
    note-ptBR Fale com Hegnar Rumbleshot
    note-enUS Buy a [Ornate Blunderbuss] from him
    note-ptBR Compre um [Ornate Blunderbuss] dele
    note-enUS If you can't afford it, skip this step
    note-ptBR Se não tiver dinheiro, pule esta etapa
    turnin 5541
    collect 2509 1
step
    goto 1426 @-201.51,-6015.52
    note-enUS Talk to Hegnar Rumbleshot
    note-ptBR Fale com Hegnar Rumbleshot
    turnin 5541
step
    path seq 1426 36.37,52.35 35.94,52.03
    goto 1426 @99.17,-5572.99 20
    note-enUS Travel toward Tundra MacGrann
    note-ptBR Vá em direção a Tundra MacGrann
    note-enUS Talk to Tundra MacGrann
    note-ptBR Fale com Tundra MacGrann
    accept 312
step
    goto 1426 @302.27,-5387.58
    goto 1426 @302.27,-5387.58 |only !Mage !Priest !Warlock
    goto 1426 @302.27,-5387.58 |only Priest Mage Warlock
    goto 1426 @315.42,-5372.02
    note-enUS Travel to Brewnall Village
    note-ptBR Vá até Brewnall Village
    note-enUS Talk to Keeg Gibn |only !Mage !Priest !Warlock
    note-ptBR Fale com Keeg Gibn |only !Mage !Priest !Warlock
    vendor |only !Mage !Priest !Warlock |opt
    note-enUS Vendor trash |only !Mage !Priest !Warlock
    note-ptBR Venda o lixo |only !Mage !Priest !Warlock
    note-enUS Talk to Keeg Gibn |only Priest Mage Warlock
    note-ptBR Fale com Keeg Gibn |only Priest Mage Warlock
    note-enUS Buy up to 20 [Ice Cold Milk] from him |only Priest Mage Warlock
    note-ptBR Compre até 20 [Ice Cold Milk] dele |only Priest Mage Warlock
    collect 1179 20 |only Priest Mage Warlock |opt
    note-enUS Talk to Rejold Barleybrew and Marleth Barleybrew
    note-ptBR Fale com Rejold Barleybrew e Marleth Barleybrew
    turnin 318
    accept 319
    accept 315
    accept 310
step
    ifnotturnedin 384
    path closest 1426 31.21,39.19 27.88,45.55 29.44,50.1 31.69,46.84 31.21,39.19 30.05,38.56 29.2,40.46 29.36,42.98 28.3,44.44 27.88,45.55 26.29,46.48 27.56,47.66 28.02,48.27 27.87,49.4 29.44,50.1 28.41,52.45 27.65,53.71 26.77,55.78 29.29,54.25 31.77,49.79 33.83,48.15 31.69,46.84
    note-enUS Kill Elder Crag Boars. Loot them for their Crag Boar Ribs
    note-ptBR Mate Elder Crag Boars. Saqueie-os para obter Crag Boar Ribs
    note-enUS Kill Ice Claw Bears and Snow Leopards
    note-ptBR Mate Ice Claw Bears e Snow Leopards
    objective 319/2
    collect 2886 6 |quest 384 |q 384/1
    objective 319/1
    objective 319/3
step
    ifturnedin 384
    path closest 1426 31.21,39.19 27.88,45.55 29.44,50.1 31.69,46.84 31.21,39.19 30.05,38.56 29.2,40.46 29.36,42.98 28.3,44.44 27.88,45.55 26.29,46.48 27.56,47.66 28.02,48.27 27.87,49.4 29.44,50.1 28.41,52.45 27.65,53.71 26.77,55.78 29.29,54.25 31.77,49.79 33.83,48.15 31.69,46.84
    note-enUS Kill Ice Claw Bears, Elder Crag Boars, and Snow Leopards
    note-ptBR Mate Ice Claw Bears, Elder Crag Boars e Snow Leopards
    objective 319/1
    objective 319/2
    objective 319/3
step
    goto 1426 @315.28,-5378.39
    note-enUS Talk to Rejold Barleybrew
    note-ptBR Fale com Rejold Barleybrew
    turnin 319
    accept 320
step
    ifonquest 287
    path seq 1426 24.98,50.47
    goto 1426 24.68,50.84 20
    note-enUS Kill Frostmane Headhunters inside the cave
    note-ptBR Mate Frostmane Headhunters dentro da caverna
    objective 287/1 |opt
    note-enUS Run up the side of the cave entrance. Jump down into Frostmane Hold
    note-ptBR Suba correndo pela lateral da entrada da caverna. Pule para dentro de Frostmane Hold
step
    path seq 1426 @628.4,-5579.5 @696.6,-5674.6 @746.9,-5614.9 @695.3,-5528.3
    goto 1426 @657.7,-5544.6
    note-enUS Enter Frostmane Hold cave. Stay on the left side as you go further in the cave to explore it
    note-ptBR Entre na caverna Frostmane Hold. Fique do lado esquerdo enquanto avança pela caverna para explorá-la
    objective 287/2
step
    path closest 1426 22.39,51.7 23.14,50.89 24.3,50.9 22.39,51.7 21.11,51.72 21.13,51.02 22.07,50.22 23.14,50.89 23.37,51.38 23.57,50.92 24.3,50.9
    note-enUS Kill Frostmane Headhunters inside the cave
    note-ptBR Mate Frostmane Headhunters dentro da caverna
    objective 287/1
step
    goto 1426 @-501.4,-5643.9
    note-enUS Die and respawn at the Spirit Healer
    note-ptBR Morra e renasça no Spirit Healer
    note-enUS Talk to Senir Whitebeard
    note-ptBR Fale com Senir Whitebeard
    turnin 98323
    turnin 287
step
    ifnotturnedin 384
    goto 1426 @-531.23,-5601.59
    note-enUS Talk to Innkeeper Belm inside
    note-ptBR Fale com Innkeeper Belm lá dentro
    note-enUS Buy a [Rhapsody Malt] and a [Thunder Ale] from him
    note-ptBR Compre um [Rhapsody Malt] e um [Thunder Ale] dele
    objective 384/2
    collect 2686 1 |quest 311
step
    ifturnedin 384
    goto 1426 @-531.23,-5601.59
    note-enUS Talk to Innkeeper Belm inside
    note-ptBR Fale com Innkeeper Belm lá dentro
    note-enUS Buy a [Thunder Ale] from him
    note-ptBR Compre um [Thunder Ale] dele
    collect 2686 1 |quest 311
step
    path seq 1426 @-551.03,-5598.4 @-544.38,-5605.92
    goto 1426 @-547.93,-5607.27
    note-enUS Talk to Jarven Thunderbrew downstairs
    note-ptBR Fale com Jarven Thunderbrew no andar de baixo
    turnin 308 |opt
    note-enUS Click the Unguarded Thunder Ale Barrel
    note-ptBR Clique no Unguarded Thunder Ale Barrel
    turnin 310
    accept 311
step
    only Priest
    goto 1426 @-529.51,-5590.66
    note-enUS Talk to Maxan Anvol inside
    note-ptBR Fale com Maxan Anvol lá dentro
    turnin 5625
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Mage
    goto 1426 @-537.2,-5587
    note-enUS Talk to Magis Sparkmantle inside upstairs
    note-ptBR Fale com Magis Sparkmantle lá dentro, no andar de cima
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Paladin
    goto 1426 @-542.1,-5586.8
    note-enUS Talk to Azar Stronghammer inside upstairs
    note-ptBR Fale com Azar Stronghammer lá dentro, no andar de cima
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Shaman
    goto 1426 @-541.5,-5582.9
    note-enUS Talk to Ingrid Dunwald inside upstairs
    note-ptBR Fale com Ingrid Dunwald lá dentro, no andar de cima
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Rogue
    goto 1426 @-540.39,-5604.38
    note-enUS Talk to Hogral Bakkan inside in the backroom
    note-ptBR Fale com Hogral Bakkan lá dentro, na sala dos fundos
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warrior
    note-enUS Talk to Granis Swiftaxe inside
    note-ptBR Fale com Granis Swiftaxe lá dentro
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warlock
    goto 1426 @-528.87,-5640
    note-enUS Talk to Gimrizz Shadowcog
    note-ptBR Fale com Gimrizz Shadowcog
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Hunter
    note-enUS Talk to Grif Wildheart
    note-ptBR Fale com Grif Wildheart
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    goto 1426 @-504.05,-5596.27
    note-enUS Talk to Ragnar Thunderbrew outside
    note-ptBR Fale com Ragnar Thunderbrew lá fora
    turnin 384
step
    only Hunter
    goto 1426 @-1041,-5350.6
    note-enUS Talk to Father Gavin
    note-ptBR Fale com Father Gavin
    turnin 99158
step
    only Hunter
    path seq 1426 @-1145.04,-5504.3 |only Hunter
    goto 1426 @-1219.9,-5422.55 40 |only Hunter
    goto 1426 @-1304.71,-5513.86
    note-enUS Go up the dirt path |only Hunter
    note-ptBR Suba pela trilha de terra |only Hunter
    note-enUS Kite Vagash down to Rudra |only Hunter
    note-ptBR Leve Vagash (kite) até Rudra |only Hunter
    note-enUS Talk to Rudra Amberstill
    note-ptBR Fale com Rudra Amberstill
    accept 314
step
    only Hunter
    path seq 1426 62.09,47.15 62.43,48.99
    goto 1426 62.54,46.2
    note-enUS Kill Vagash. Loot him for his Fang
    note-ptBR Mate Vagash. Saqueie-o para obter a presa dele
    note-enUS Kite him to the guard south of the ranch. Make sure you do 51%+ damage to him
    note-ptBR Leve-o (kite) até o guarda ao sul do rancho. Certifique-se de causar 51%+ do dano nele
    note-enUS Watch the video below before you attempt to kill Vagash. It can be soloed on any class
    note-ptBR Assista ao vídeo abaixo antes de tentar matar Vagash. Dá para solar com qualquer classe
    objective 314/1
step
    only Hunter
    goto 1426 @-1304.71,-5513.86
    note-enUS Talk to Rudra Amberstill
    note-ptBR Fale com Rudra Amberstill
    turnin 314
step
    only Hunter
    goto 1426 @-1580,-5714.7
    note-enUS Talk to Senator Mehr Stonehallow
    note-ptBR Fale com Senator Mehr Stonehallow
    accept 432
step
    only Hunter
    path closest 1426 70.07,57.03 68.53,58.37 68.96,59.36 70.07,57.03 69.22,58.24 68.53,58.37 67.69,60.06 68.96,59.36 70.47,59.42
    note-enUS Kill Rockjaw Skullthumpers outside the mine
    note-ptBR Mate Rockjaw Skullthumpers fora da mina
    objective 432/1
step
    only Hunter
    goto 1426 @-1580,-5714.7
    note-enUS Talk to Senator Mehr Stonehallow
    note-ptBR Fale com Senator Mehr Stonehallow
    turnin 432
step
    only Hunter
    path seq 1426 @-2197.02,-5279.07
    goto 1426 @-2329.6,-5163.76
    note-enUS Talk to Pilot Hammerfoot
    note-ptBR Fale com Pilot Hammerfoot
    accept 419
step
    only Hunter
    goto 1426 @-2121.76,-5064.7
    note-enUS Click the Dwarven Corpse on the ground
    note-ptBR Clique no Dwarven Corpse no chão
    turnin 419
    accept 417
step
    only Hunter
    goto 1426 @-2087.19,-5096.51
    note-enUS Kill Mangeclaw. Loot him for his Claw
    note-ptBR Mate Mangeclaw. Saqueie-o para obter a garra dele
    objective 417/1
step
    only Hunter
    goto 1426 @-2329.6,-5163.76
    note-enUS Talk to Pilot Hammerfoot
    note-ptBR Fale com Pilot Hammerfoot
    turnin 417
step
    only Hunter
    path seq 1426 @-463.66,-5474
    goto 1426 @-455.83,-5497.9
    note-enUS Die to one of the nearby Scarred Crag Boars and respawn at the Spirit Healer |only Hunter
    note-ptBR Morra para um dos Scarred Crag Boars próximos e renasça no Spirit Healer |only Hunter
    note-enUS Talk to Razzle Sprysprocket
    note-ptBR Fale com Razzle Sprysprocket
    accept 412
step
    path seq 1426 42.94,45.22 42.25,45.3 @-212.24,-5364.43 @-241.79,-5308.62 @-153.14,-5190.42 @-271.34,-5003.27 @-153.14,-5190.42 @-241.79,-5308.62 @-212.24,-5364.43 @-143.29,-5288.92
    goto 1426 @-241.79,-5059.08
    note-enUS Travel up the mountain slope to Shimmer Ridge
    note-ptBR Suba a encosta da montanha até Shimmer Ridge
    note-enUS Kill Frostmane Seers. Loot them for their Shimmerweed
    note-ptBR Mate Frostmane Seers. Saqueie-os para obter Shimmerweed
    note-enUS Open the Shimmerweed Baskets on the ground. Loot them for their Shimmerweed
    note-ptBR Abra os Shimmerweed Baskets no chão. Saqueie-os para obter Shimmerweed
    objective 315/1
step
    only !Mage !Warlock
    goto 1426 @-94.88,-5647.69
    note-enUS Open MacGrann's Meat Locker. Loot it for MacGrann's Dried Meats
    note-ptBR Abra o MacGrann's Meat Locker. Saqueie-o para obter MacGrann's Dried Meats
    note-enUS Wait until Old Icebeard patrols out of the Cave. Once he patrols out of the Cave you can enter and loot MacGrann's Meat Locker
    note-ptBR Espere Old Icebeard patrulhar para fora da caverna. Quando ele sair, você pode entrar e saquear o MacGrann's Meat Locker
    objective 312/1
step
    only Mage Warlock
    goto 1426 @-94.88,-5647.69
    note-enUS Cast [Polymorph] on Old Icebeard |only Mage
    note-ptBR Lance [Polymorph] em Old Icebeard |only Mage
    note-enUS Cast [Fear] on Old Icebeard |only Warlock
    note-ptBR Lance [Fear] em Old Icebeard |only Warlock
    note-enUS Open MacGrann's Meat Locker. Loot it for MacGrann's Dried Meats
    note-ptBR Abra o MacGrann's Meat Locker. Saqueie-o para obter MacGrann's Dried Meats
    objective 312/1
step
    goto 1426 @99.17,-5572.99
    note-enUS Talk to Tundra MacGrann
    note-ptBR Fale com Tundra MacGrann
    turnin 312
step
    path seq 1426 @315.28,-5378.39
    goto 1426 @315.42,-5372.02
    note-enUS Talk to Rejold Barleybrew and Marleth Barleybrew
    note-ptBR Fale com Rejold Barleybrew e Marleth Barleybrew
    turnin 315
    accept 413
    turnin 311
step
    only Hunter
    path closest 1426 @462.48,-5288.92 @580.68,-5167.43 @541.28,-5302.05 @605.31,-5321.75 @551.13,-5367.72 @570.83,-5305.33
    note-enUS Kill Leper Gnomes. Loot them for their Gears and Cogs
    note-ptBR Mate Leper Gnomes. Saqueie-os para obter Gears e Cogs
    objective 412/2
    objective 412/1
step
    only Hunter
    ifnotturnedin 320
    level 10
    note-enUS Grind until you are 1720xp away from level 10
    note-ptBR Mate monstros até faltarem 1720xp para o nível 10
step
    only Hunter
    ifturnedin 320
    level 10
    note-enUS Grind until you are 2040xp away from level 10
    note-ptBR Mate monstros até faltarem 2040xp para o nível 10
step
    only !Hunter
    ifnotturnedin 320
    path closest 1426 31.21,39.19 27.88,45.55 29.44,50.1 31.69,46.84 31.21,39.19 30.05,38.56 29.2,40.46 29.36,42.98 28.3,44.44 27.88,45.55 26.29,46.48 27.56,47.66 28.02,48.27 27.87,49.4 29.44,50.1 28.41,52.45 27.65,53.71 26.77,55.78 29.29,54.25 31.77,49.79 33.83,48.15 31.69,46.84
    level 8
    note-enUS Grind to 4525+/5400xp
    note-ptBR Mate monstros até 4525+/5400xp
step
    only !Hunter
    path closest 1426 31.21,39.19 27.88,45.55 29.44,50.1 31.69,46.84 31.21,39.19 30.05,38.56 29.2,40.46 29.36,42.98 28.3,44.44 27.88,45.55 26.29,46.48 27.56,47.66 28.02,48.27 27.87,49.4 29.44,50.1 28.41,52.45 27.65,53.71 26.77,55.78 29.29,54.25 31.77,49.79 33.83,48.15 31.69,46.84
    level 9
    note-enUS Grind to level 9
    note-ptBR Mate monstros até o nível 9
step
    goto 1426 @-501.4,-5643.9
    note-enUS Die and respawn at the Spirit Healer
    note-ptBR Morra e renasça no Spirit Healer
    note-enUS Talk to Senir Whitebeard
    note-ptBR Fale com Senir Whitebeard
    accept 291
step
    goto 1426 @-632.15,-5466.54
    note-enUS Talk to Pilot Bellowfiz
    note-ptBR Fale com Pilot Bellowfiz
    turnin 320
step
    only Hunter
    path seq 1426 @-463.66,-5474
    goto 1426 @-455.83,-5497.9
    note-enUS Talk to Razzle Sprysprocket
    note-ptBR Fale com Razzle Sprysprocket
    turnin 412
step
    only Hunter
    level 10
    note-enUS Grind to level 10
    note-ptBR Mate monstros até o nível 10
step
    only Hunter
    note-enUS Talk to Grif Wildheart
    note-ptBR Fale com Grif Wildheart
    accept 6064
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Hunter
    use 15911
    note-enUS Use the [Taming Rod] on a Large Crag Boar
    note-ptBR Use a [Taming Rod] em um Large Crag Boar
    objective 6064/1
step
    only Hunter
    note-enUS Talk to Grif Wildheart
    note-ptBR Fale com Grif Wildheart
    turnin 6064
    accept 6084
step
    only Hunter
    use 15913
    note-enUS Use the [Taming Rod] on a Snow Leopard
    note-ptBR Use a [Taming Rod] em um Snow Leopard
    objective 6084/1
step
    only Hunter
    note-enUS Talk to Grif Wildheart
    note-ptBR Fale com Grif Wildheart
    turnin 6084
    accept 6085
step
    only Hunter
    use 15908
    note-enUS Use the [Taming Rod] on a Ice Claw Bear
    note-ptBR Use a [Taming Rod] em um Ice Claw Bear
    objective 6085/1
step
    only Hunter
    note-enUS Talk to Grif Wildheart
    note-ptBR Fale com Grif Wildheart
    turnin 6085
    accept 6086
step
    goto 1426 @-682.3,-5489
    note-enUS Talk to Beldin Steelgrill
    note-ptBR Fale com Beldin Steelgrill
    accept 96408
step
    only Warrior
    path seq 1426 @-541.23,-5242.29 |only Warrior
    goto 1426 @-669.77,-5216.35 20 |only Warrior
    goto 1455 @-831.39,-5028.78 40 |only Warrior
    note-enUS Grind until you have 10s30c worth of vendorables |only Warrior
    note-ptBR Faça grind até ter 10s30c em itens para vender |only Warrior
    note-enUS Travel to Ironforge-c:Ironforge,14.90,87.10 |only Warrior
    note-ptBR Vá até Ironforge-c:Ironforge,14.90,87.10 |only Warrior
    note-enUS Talk to Bixi Wobblebonk or Buliwyf Stonehand
    note-ptBR Fale com Bixi Wobblebonk or Buliwyf Stonehand
    trainer
    note-enUS If you are in a party or have someone to help you kill Vagash now, train 2h Maces from Buliwyf Stonehand, otherwise train Thrown from Bixi Wobblebonk. If you aren't sure which to train, just train Thrown
    note-ptBR Se estiver em grupo ou tiver alguém para ajudar a matar Vagash agora, treine Maces de 2 mãos com Buliwyf Stonehand; senão, treine Thrown com Bixi Wobblebonk. Se não tiver certeza, treine Thrown
step
    only Warrior
    goto 1455 62.38,88.67
    note-enUS Talk to Brenwyn Wintersteel downstairs
    note-ptBR Fale com Brenwyn Wintersteel no andar de baixo
    note-enUS Buy the [Keen Throwing Knives] from her
    note-ptBR Compre as [Keen Throwing Knives] dela
    collect 3107 1
step
    only Warrior
    goto 1455 62.38,88.67
    note-enUS Talk to Brenwyn Wintersteel downstairs
    note-ptBR Fale com Brenwyn Wintersteel no andar de baixo
    note-enUS Buy the [Balanced Throwing Daggers] from her
    note-ptBR Compre as [Balanced Throwing Daggers] dela
    collect 2946 1
step
    only Warrior
    goto 1426 53.47,35.02
    note-enUS Equip the [Keen Throwing Knives] |only Warrior
    note-ptBR Equipe as [Keen Throwing Knives] |only Warrior
    use 3107 |only Warrior |opt
    note-enUS Equip the [Balanced Throwing Daggers] |only Warrior
    note-ptBR Equipe as [Balanced Throwing Daggers] |only Warrior
    use 2946 |only Warrior |opt
    note-enUS Exit Ironforge. Return to Dun Morogh
    note-ptBR Saia de Ironforge. Volte para Dun Morogh
    zone 1426
    note-enUS Travel to Dun Morogh
    note-ptBR Vá até Dun Morogh
step
    only !Hunter
    path seq 1426 57.94,50.79
    goto 1426 @-1041,-5350.6
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
    note-enUS Talk to Father Gavin
    note-ptBR Fale com Father Gavin
    turnin 99158
step
    only !Hunter
    path seq 1426 @-1145.04,-5504.3 |only !Hunter
    goto 1426 @-1219.9,-5422.55 40 |only !Hunter
    goto 1426 @-1304.71,-5513.86
    note-enUS Go up the dirt path |only !Hunter
    note-ptBR Suba pela trilha de terra |only !Hunter
    note-enUS Kite Vagash down to Rudra |only !Hunter
    note-ptBR Leve Vagash (kite) até Rudra |only !Hunter
    note-enUS Talk to Rudra Amberstill
    note-ptBR Fale com Rudra Amberstill
    accept 314
step
    only !Hunter
    path seq 1426 62.09,47.15 62.43,48.99
    goto 1426 62.54,46.2
    note-enUS Kill Vagash. Loot him for his Fang
    note-ptBR Mate Vagash. Saqueie-o para obter a presa dele
    note-enUS Kite him to the guard south of the ranch. Make sure you do 51%+ damage to him
    note-ptBR Leve-o (kite) até o guarda ao sul do rancho. Certifique-se de causar 51%+ do dano nele
    note-enUS Watch the video below before you attempt to kill Vagash. It can be soloed on any class
    note-ptBR Assista ao vídeo abaixo antes de tentar matar Vagash. Dá para solar com qualquer classe
    objective 314/1
step
    only !Hunter
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
    turnin 96408
    accept 96392
step
    ifonquest 96392
    goto 1426 @-1394.24,-5797.83
    note-enUS Talk to Earthseer Farsen to view his farsight
    note-ptBR Fale com Earthseer Farsen para ver a visão distante dele
    note-enUS You can cancel the Farsight once the objective completes
    note-ptBR Você pode cancelar o Farsight assim que o objetivo for concluído
step
    ifonquest 96392
    note-enUS Press ESCAPE to cancel the Farsight
    note-ptBR Pressione ESC para cancelar o Farsight
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
    note-enUS Train [Cooking]
    note-ptBR Treine [Cooking]
step
    goto 1426 @-1565.58,-5666.24 60
    note-enUS Travel to Gol'Bolar Quarry
    note-ptBR Vá até Gol'Bolar Quarry
    note-enUS Talk to Cook Ghilm
    note-ptBR Fale com Cook Ghilm
    train 2550
    note-enUS Train [Cooking]
    note-ptBR Treine [Cooking]
step
    goto 1426 @-1576.47,-5673.07 |only !Hunter
    path seq 1426 @-1579.96,-5714.73
    goto 1426 @-1600.3,-5726.59
    note-enUS Talk to Kazan Mogosh |only !Hunter
    note-ptBR Fale com Kazan Mogosh |only !Hunter
    vendor |only Warrior Rogue |opt
    note-enUS Buy up to 10 [Freshly Baked Bread] from him if needed |only Warrior Rogue
    note-ptBR Compre até 10 [Freshly Baked Bread] dele, se precisar |only Warrior Rogue
    vendor |only !Warrior !Rogue !Shaman |opt
    note-enUS Buy up to 5 [Freshly Baked Bread] and [Ice Cold Milk] from him if needed |only !Warrior !Rogue !Shaman
    note-ptBR Compre até 5 [Freshly Baked Bread] e [Ice Cold Milk] dele, se precisar |only !Warrior !Rogue !Shaman
    vendor |only Shaman |opt
    note-enUS Buy up to 10 [Freshly Baked Bread] and [Ice Cold Milk] from him if needed |only Shaman
    note-ptBR Compre até 10 [Freshly Baked Bread] e [Ice Cold Milk] dele, se precisar |only Shaman
    note-enUS Talk to Senator Mehr Stonehallow and Foreman Stonebrow
    note-ptBR Fale com Senator Mehr Stonehallow e Foreman Stonebrow
    accept 433
    accept 432
step
    path closest 1426 70.07,57.03 68.53,58.37 68.96,59.36 70.07,57.03 69.22,58.24 68.53,58.37 67.69,60.06 68.96,59.36 70.47,59.42
    note-enUS Kill Rockjaw Skullthumpers in or outside the mine
    note-ptBR Mate Rockjaw Skullthumpers dentro ou fora da mina
    objective 432/1
step
    path closest 1426 70.75,56.22 71.34,51.87 72.57,53.49 70.75,56.22 70.96,54.54 70.68,53.3 70.46,52.29 71.34,51.87 72,50.2 72.46,51.3 72.61,52.51 72.57,53.49 71.79,52.28 71.59,51.83
    note-enUS Enter the Gol'Bolar Quarry Mine
    note-ptBR Entre na Gol'Bolar Quarry Mine
    note-enUS Kill Rockjaw Bonesnappers inside the mine
    note-ptBR Mate Rockjaw Bonesnappers dentro da mina
    objective 433/1
step
    path seq 1426 @-1600.3,-5726.59
    goto 1426 @-1579.96,-5714.73
    note-enUS Talk to Foreman Stonebrow and Senator Mehr Stonehallow
    note-ptBR Fale com Foreman Stonebrow e Senator Mehr Stonehallow
    turnin 432
    turnin 433
step
    path seq 1426 70.84,51.78 73.53,50.85 75.35,48.53 79.88,46.8 81.04,43.46 80.58,36.04 70.84,51.78 73.53,50.85 75.35,48.53 79.88,46.8 81.04,43.46 80.58,36.04 @-2009.87,-5860.22
    goto 1426 @-2034.49,-5922.6
    note-enUS Kill Scarred Crag Boars and Elder Crag Boars. Loot them for their [Chunks of Boar Meat]
    note-ptBR Mate Scarred Crag Boars e Elder Crag Boars. Saqueie-os para obter [Chunks of Boar Meat]
    collect 769 10 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Scarred Crag Boars and Elder Crag Boars. Loot them for their [Chunks of Boar Meat]
    note-ptBR Mate Scarred Crag Boars e Elder Crag Boars. Saqueie-os para obter [Chunks of Boar Meat]
    note-enUS Don't go out of your way to farm this now. Simply kill and loot all the boars you're passing by
    note-ptBR Não saia do caminho para farmar isso agora. Apenas mate e saqueie todos os javalis pelo caminho
    collect 769 50 |quest 2178 |q 2178/1 |opt
    note-enUS Kill Rockjaw Ambushers. Loot them for the [Empty Powder Keg]
    note-ptBR Mate Rockjaw Ambushers. Saqueie-os para obter o [Empty Powder Keg]
    use 268548 |opt
    note-enUS Use the [Empty Powder Keg] to start the quest
    note-ptBR Use o [Empty Powder Keg] para iniciar a missão
    note-enUS NOTE: This item has a low drop rate. Skip this step if you do not find it by the time you are done with the Dark Iron Spies
    note-ptBR NOTA: Este item tem baixa taxa de drop. Pule esta etapa se não o encontrar até terminar com os Dark Iron Spies
    collect 268548 1 |quest 95213 |q 95213/1 |opt
    accept 95213 |opt
    note-enUS Kill Dark Iron Spies. Loot them for the [Dark Iron Map]
    note-ptBR Mate Dark Iron Spies. Saqueie-os para obter o [Dark Iron Map]
    use 274268
    note-enUS Use the [Dark Iron Map] to start the quest
    note-ptBR Use o [Dark Iron Map] para iniciar a missão
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
    path seq 1426 @-2165.6,-5609 @-2262.2,-5622.7 @-2350.7,-5558.7
    goto 1426 @-2447.11,-5479.74
    note-enUS Travel toward Mountaineer Barleybrew at the South Gate Pass
    note-ptBR Vá em direção a Mountaineer Barleybrew na South Gate Pass
    note-enUS Talk to Mountaineer Barleybrew
    note-ptBR Fale com Mountaineer Barleybrew
    turnin 413
    accept 414
step
    path seq 1432 16.49,58.42 19.59,62.73 20.75,64.33 21.11,65.01 21.39,66.36 21.5,67.84
    goto 1432 @-2602.54,-5832.73
    note-enUS Travel through the South Gate Pass into Loch Modan
    note-ptBR Passe pela South Gate Pass até Loch Modan
    note-enUS Talk to Mountaineer Cobbleflint
    note-ptBR Fale com Mountaineer Cobbleflint
    accept 224
step
    path seq 1432 @-2635.61,-5879.14 @-2645.27,-5874.91 @-2631.48,-5847.5
    goto 1432 @-2634.59,-5842.81
    note-enUS Enter the Bunker. Go to the top floor
    note-ptBR Entre no Bunker. Vá para o último andar
    note-enUS Talk to Captain Rugelfuss inside the bunker
    note-ptBR Fale com Captain Rugelfuss dentro do bunker
    accept 267
step
    ifonquest 414
    path seq 1432 23.52,70.1 27.5,65.37
    goto 1432 34.41,48.28
    note-enUS Travel to Thelsamar
    note-ptBR Vá até Thelsamar
step
    path seq 1432 35.27,47.75 35.43,48.24
    goto 1432 @-2954.42,-5394.1
    note-enUS Talk to Mountaineer Kadrell
    note-ptBR Fale com Mountaineer Kadrell
    note-enUS Mountaineer Kadrell patrols the road through Thelsamar
    note-ptBR Mountaineer Kadrell patrulha a estrada que atravessa Thelsamar
    turnin 414 |opt
    accept 416 |opt
    accept 1339 |opt
    note-enUS Enter the Stoutlager Inn
    note-ptBR Entre na Stoutlager Inn
    note-enUS Talk to Vidra Hearthstove inside
    note-ptBR Fale com Vidra Hearthstove lá dentro
    accept 418
step
    only !Hunter
    ifskillbelow cooking 50
    goto 1432 @-2952.46,-5381.87
    note-enUS Talk to Yanni Stoutheart
    note-ptBR Fale com Yanni Stoutheart
    note-enUS Buy a [Simple Wood] and a [Flint and Tinder] from her
    note-ptBR Compre um [Simple Wood] e um [Flint and Tinder] dela
    note-enUS Buy a [Small Brown Pouch] too from her if needed |only !Rogue
    note-ptBR Compre também uma [Small Brown Pouch] dela se precisar |only !Rogue
    note-enUS This is used to make [Basic Campfires] on Boats to level your [Cooking] skill without losing time
    note-ptBR Isto é usado para fazer [Basic Campfires] nos barcos e subir sua habilidade de [Cooking] sem perder tempo
    note-enUS You need 50 [Cooking] for a quest in Duskwood later
    note-ptBR Você precisa de 50 em [Cooking] para uma missão em Duskwood mais tarde
    collect 4470 1
    collect 4471 1
step
    goto 1432 @-2973.9,-5377.93
    note-enUS Talk to Innkeeper Hearthstove inside
    note-ptBR Fale com Innkeeper Hearthstove lá dentro
    home
    note-enUS Set your Hearthstone to Thelsamar
    note-ptBR Defina sua pedra de regresso em Thelsamar
step
    only Hunter
    path seq 1432 35.27,47.75
    goto 1432 @-3003.3,-5376.02
    note-enUS Exit the Stoutlager Inn
    note-ptBR Saia da Stoutlager Inn
    note-enUS Talk to Grenhild Darktalon
    note-ptBR Fale com Grenhild Darktalon
    accept 86667
step
    only Dwarf Gnome
    path seq 1432 @-3019.02,-5369.4
    goto 1432 @-3014.86,-5366.93
    note-enUS Talk to Brock Stoneseeker
    note-ptBR Fale com Brock Stoneseeker
    accept 6387
step
    path seq 1432 @-3006.61,-5259.57 @-3020.95,-5282.02 @-3023.44,-5326.9 @-3007.99,-5337.39 @-2964.41,-5349.9 @-2894.9,-5401.96
    goto 1432 @-3007.99,-5337.39
    note-enUS Talk to Mountaineer Kadrell
    note-ptBR Fale com Mountaineer Kadrell
    note-enUS Mountaineer Kadrell patrols the road through Thelsamar
    note-ptBR Mountaineer Kadrell patrulha a estrada que atravessa Thelsamar
    turnin 414
    accept 416
    accept 1339
step
    path seq 1426 70.84,51.78 73.53,50.85 75.35,48.53 79.88,46.8 81.04,43.46 80.58,36.04 70.84,51.78 73.53,50.85 75.35,48.53 79.88,46.8 81.04,43.46
    goto 1426 80.58,36.04
    path seq 1432 23.49,18.01 24.28,17.96
    goto 1432 @-2676.99,-4825.98
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
    note-enUS Save any [Chunks of Boar Meat] to use for leveling [Cooking] later
    note-ptBR Guarde os [Chunks of Boar Meat] para subir [Cooking] mais tarde
    note-enUS Don't go out of your way to complete this right now. You'll come back to Loch Modan soon
    note-ptBR Não saia do caminho para completar isso agora. Você voltará a Loch Modan em breve
    note-enUS Travel to Algaz Station
    note-ptBR Vá até Algaz Station
    note-enUS Enter the Bunker. Go to the top floor
    note-ptBR Entre no Bunker. Vá para o último andar
    note-enUS Talk to Mountaineer Stormpike inside the bunker
    note-ptBR Fale com Mountaineer Stormpike dentro do bunker
    turnin 1339
    accept 1338
    accept 307
step
    only !Hunter
    goto 1432 @-2503.5,-4815.3 15 |only !Hunter
    goto 1426 @-2353.1,-4897.1 15 |only !Hunter
    goto 1426 @-2329.6,-5163.76
    note-enUS Travel toward Pilot Hammerfoot through the North Gate Pass |only !Hunter
    note-ptBR Vá em direção a Pilot Hammerfoot pela North Gate Pass |only !Hunter
    note-enUS Talk to Pilot Hammerfoot
    note-ptBR Fale com Pilot Hammerfoot
    accept 419
step
    only !Hunter
    goto 1426 @-2121.76,-5064.7
    note-enUS Click the Dwarven Corpse on the ground
    note-ptBR Clique no Dwarven Corpse no chão
    turnin 419
    accept 417
step
    only !Hunter
    goto 1426 @-2087.19,-5096.51
    note-enUS Kill Mangeclaw. Loot him for his Mangy Claw
    note-ptBR Mate Mangeclaw. Saqueie-o para obter a Mangy Claw
    objective 417/1
step
    only !Hunter
    goto 1426 @-2329.6,-5163.76
    note-enUS Talk to Pilot Hammerfoot
    note-ptBR Fale com Pilot Hammerfoot
    note-enUS Choose the [Craftsman's Dagger]. Save it for later |only Rogue
    note-ptBR Escolha a [Craftsman's Dagger]. Guarde-a para depois |only Rogue
    turnin 417 |only !Rogue
    turnin 417 |reward 1 |only Rogue
step
    ifcomplete 418
    goto 1432 @-2954.42,-5394.1
    hearth |only !Hunter |opt
    note-enUS Hearth to Thelsamar |only !Hunter
    note-ptBR Use a pedra de regresso para Thelsamar |only !Hunter
    note-enUS Buy food/water if needed |only !Warrior !Rogue
    note-ptBR Compre comida/água se precisar |only !Warrior !Rogue
    note-enUS Buy food if needed |only Warrior Rogue
    note-ptBR Compre comida se precisar |only Warrior Rogue
    note-enUS Die and respawn at the Spirit Healer |only Hunter
    note-ptBR Morra e renasça no Spirit Healer |only Hunter
    note-enUS Talk to Vidra Hearthstove inside
    note-ptBR Fale com Vidra Hearthstove lá dentro
    turnin 418
step
    only Dwarf Gnome
    goto 1432 @-2929.87,-5424.84
    note-enUS Talk to Thorgrum Borrelson
    note-ptBR Fale com Thorgrum Borrelson
    turnin 6387
    accept 6391
step
    goto 1432 @-2929.87,-5424.84
    note-enUS Talk to Thorgrum Borrelson
    note-ptBR Fale com Thorgrum Borrelson
    fly 1455
    note-enUS Fly to Ironforge
    note-ptBR Voe para Ironforge
step
    only Dwarf Gnome
    path seq 1455 56.71,41.95 55.75,38.13 51.57,29.96 49.65,28.2 |only Dwarf Gnome
    goto 1455 @-1120.93,-4708.06 10 |only Dwarf Gnome
    goto 1455 @-1120.93,-4708.06
    note-enUS Travel toward Golnir Bouldertoe inside the building |only Dwarf Gnome
    note-ptBR Vá em direção a Golnir Bouldertoe dentro do prédio |only Dwarf Gnome
    note-enUS Talk to Golnir Bouldertoe inside
    note-ptBR Fale com Golnir Bouldertoe lá dentro
    turnin 6391
    accept 6388
step
    only Shaman
    goto 1455 @-1086.5,-4642.4
    note-enUS Talk to Eldrun Stormbreaker
    note-ptBR Fale com Eldrun Stormbreaker
    accept 94449
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    path seq 1455 44.03,50.07
    goto 1455 @-1026.28,-4872.56 12
    note-enUS Travel toward Senator Barin Redstone-c:Ironforge,39.550,57.490
    note-ptBR Vá em direção a Senator Barin Redstone-c:Ironforge,39.550,57.490
    note-enUS Talk to Senator Barin Redstone
    note-ptBR Fale com Senator Barin Redstone
    turnin 291
step
    goto 1455 @-1152.4,-4821.13
    note-enUS Talk to Gryth Thurden
    note-ptBR Fale com Gryth Thurden
    note-enUS Do NOT fly anywhere
    note-ptBR NÃO voe para lugar nenhum
    turnin 6388
    accept 6392
step
    only Shaman
    goto 1455 @-1208.1,-5037.3
    note-enUS Talk to Kelomir Ironhand
    note-ptBR Fale com Kelomir Ironhand
    note-enUS Buy a [Quarter Staff]
    note-ptBR Compre um [Quarter Staff]
    collect 854 1
step
    only Shaman
    goto 1455 @-1197.2,-5041.5
    note-enUS Equip the [Quarter Staff] |only Shaman
    note-ptBR Equipe o [Quarter Staff] |only Shaman
    use 854 |only Shaman |opt
    note-enUS Talk to Buliwyf Stonehand and Bixi Wobblebonk
    note-ptBR Fale com Buliwyf Stonehand e Bixi Wobblebonk
    trainer
    note-enUS Train any weapon skills you desire with left over money
    note-ptBR Treine any weapon skills you desire with left over money
step
    only Warrior
    path seq 1455 @-1205.65,-5042.12
    goto 1455 @-1197.27,-5041.49
    note-enUS Talk to Bixi Wobblebonk and Buliwyf Stonehand
    note-ptBR Fale com Bixi Wobblebonk e Buliwyf Stonehand
    note-enUS Train Thrown and 2h Maces if you didn't earlier
    note-ptBR Treine Armas de Arremesso e Maças de Duas Mãos se não tiver treinado antes
    train 2567
    note-enUS Train Thrown
    note-ptBR Treine Thrown
    train 199
    note-enUS Train 2h Maces
    note-ptBR Treine 2h Maces
step
    only Warrior
    goto 1455 62.38,88.67
    note-enUS Talk to Brenwyn Wintersteel downstairs
    note-ptBR Fale com Brenwyn Wintersteel no andar de baixo
    note-enUS Buy the [Keen Throwing Knives] from her
    note-ptBR Compre as [Keen Throwing Knives] dela
    collect 3107 1
step
    only Warrior
    goto 1455 62.38,88.67
    note-enUS Talk to Brenwyn Wintersteel downstairs
    note-ptBR Fale com Brenwyn Wintersteel no andar de baixo
    note-enUS Buy the [Balanced Throwing Daggers] from her
    note-ptBR Compre as [Balanced Throwing Daggers] dela
    collect 2946 1
step
    only Hunter
    path seq 1455 66.85,83.37 |only Hunter
    goto 1455 @-1273.83,-5022.08 15 |only Hunter
    goto 1455 @-1273.83,-5022.08
    note-enUS Equip the [Keen Throwing Knives] |only Warrior
    note-ptBR Equipe as [Keen Throwing Knives] |only Warrior
    use 3107 |only Warrior |opt
    note-enUS Equip the [Balanced Throwing Daggers] |only Warrior
    note-ptBR Equipe as [Balanced Throwing Daggers] |only Warrior
    use 2946 |only Warrior |opt
    note-enUS Travel toward Belia Thundergranite |only Hunter
    note-ptBR Vá em direção a Belia Thundergranite |only Hunter
    note-enUS Talk to Belia Thundergranite
    note-ptBR Fale com Belia Thundergranite
    turnin 6086
    trainer
    note-enUS Train your pet spells
    note-ptBR Treine your pet spells
step
    only Hunter
    goto 1455 @-1266.1,-5006.7
    note-enUS Talk to Belia Thundergranite
    note-ptBR Fale com Belia Thundergranite
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Dwarf Paladin
    goto 1455 @-856.69,-4841.49
    note-enUS Talk to Innkeeper Firebrew
    note-ptBR Fale com Innkeeper Firebrew
    home
    note-enUS Set your Hearthstone to Ironforge
    note-ptBR Defina sua pedra de regresso em Ironforge
step
    only Hunter
    hearth
    note-enUS Hearth to Thelsamar
    note-ptBR Use a pedra de regresso para Thelsamar
    note-enUS Buy food/water if needed |only !Warrior !Rogue
    note-ptBR Compre comida/água se precisar |only !Warrior !Rogue
    note-enUS Buy food if needed |only Warrior Rogue
    note-ptBR Compre comida se precisar |only Warrior Rogue
step
    only Hunter
    goto 1455 @-1152.4,-4821.13
    note-enUS Talk to Gryth Thurden
    note-ptBR Fale com Gryth Thurden
    fly 1432
    note-enUS Fly to Loch Modan
    note-ptBR Voe para Loch Modan
step
    only !Hunter
    goto 1455 @-1330.28,-4840.43 |only !Hunter
    note-enUS Enter the Deeprun Tram |only !Hunter
    note-ptBR Entre no Deeprun Tram |only !Hunter
    note-enUS Talk to Monty on the middle platform in the Deeprun Tram
    note-ptBR Fale com Monty na plataforma do meio do Deeprun Tram
    accept 6661
step
    only !Hunter
    note-enUS Use the [Rat Catcher's Flute] on Deeprun Rats in the Deeprun Tram
    note-ptBR Use a [Rat Catcher's Flute] nos Deeprun Rats no Deeprun Tram
    objective 6661/1
    use 17117
step
    only !Hunter
    note-enUS Talk to Monty on the middle platform in the Deeprun Tram
    note-ptBR Fale com Monty na plataforma do meio do Deeprun Tram
    turnin 6661
    accept 6662
step
    only !Hunter
    note-enUS Take the Deeprun Tram to the Stormwind side
    note-ptBR Pegue o Deeprun Tram para o lado de Stormwind
    note-enUS Level your [First Aid] while waiting for the Tram to Stormwind City if needed |only Rogue Warrior Paladin
    note-ptBR Suba seu [First Aid] enquanto espera o bonde para Stormwind City, se necessário |only Rogue Warrior Paladin
    note-enUS You will need your [First Aid] to be 80 for a quest at level 24 |only Rogue !Dwarf
    note-ptBR Você vai precisar de [First Aid] 80 para uma missão no nível 24 |only Rogue !Dwarf
    note-enUS Talk to Nipsy on the middle platform on the Stormwind side of the Deeprun Tram
    note-ptBR Fale com Nipsy na plataforma do meio, no lado de Stormwind do Deeprun Tram
    turnin 6662
step
    only !Hunter
    goto 1453 @685.22,-8387.23
    abandon 6662 |only !Hunter |opt
    note-enUS Abandon Me Brother, Nipsy |only !Hunter
    note-ptBR Abandone Me Brother, Nipsy |only !Hunter
    zone 1453 |only !Hunter |opt
    note-enUS Enter Stormwind |only !Hunter
    note-ptBR Entre em Stormwind |only !Hunter
    note-enUS Talk to Grimand Elmore
    note-ptBR Fale com Grimand Elmore
    accept 353
step
    only !Hunter
    goto 1453 @600.07,-8427.22
    note-enUS Talk to Furen Longbeard
    note-ptBR Fale com Furen Longbeard
    turnin 1338
step
    only Warrior
    path seq 1453 @358.25,-8728.28 @302.6,-8685.53
    goto 1453 @325.68,-8688.59
    note-enUS Talk to Ilsa Corbin
    note-ptBR Fale com Ilsa Corbin
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
    accept 1638
step
    only Warrior
    path seq 1453 @401.29,-8741.21 |only Warrior
    goto 1453 @417.13,-8636.5 12 |only Warrior
    goto 1453 @382.86,-8612.69
    note-enUS Enter the Tavern |only Warrior
    note-ptBR Entre na taverna |only Warrior
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
    note-enUS Defeat Bartleby
    note-ptBR Derrote Bartleby
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
    only Warlock
    path seq 1453 @988.44,-8942.15 |only Warlock
    goto 1453 @1015.33,-8978.9 15 |only Warlock
    goto 1453 @1029.89,-8971.06
    note-enUS Travel to The Slaughtered Lamb and go downstairs |only Warlock
    note-ptBR Vá até The Slaughtered Lamb e desça as escadas |only Warlock
    note-enUS Talk to Ursula Deline
    note-ptBR Fale com Ursula Deline
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warlock
    goto 1453 @1041.54,-8983.29
    note-enUS Talk to Gakin the Darkbinder
    note-ptBR Fale com Gakin the Darkbinder
    accept 1688
step
    only !Hunter
    goto 1453 @613,-8796.03
    note-enUS Talk to Woo Ping
    note-ptBR Fale com Woo Ping
    trainer |only Rogue Mage
    note-enUS Train 1h Swords |only Rogue Mage
    note-ptBR Treine 1h Swords |only Rogue Mage
    trainer |only Priest Hunter
    note-enUS Train Staves |only Priest Hunter
    note-ptBR Treine Staves |only Priest Hunter
    trainer |only Warlock
    note-enUS Train 1h Swords and Staves |only Warlock
    note-ptBR Treine 1h Swords e Staves |only Warlock
    trainer |only Warrior Paladin
    note-enUS Train 2h Swords |only Warrior Paladin
    note-ptBR Treine 2h Swords |only Warrior Paladin
step
    only Rogue
    note-enUS Equip the [Cutlass]
    note-ptBR Equipe o [Cutlass]
    use 851
]==])

register([==[
#format 1
#id forever.a.11-12-elwynn-dwarf-gnome
#name 11-12 Elwynn (Dwarf/Gnome)
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#only !Hunter
#levels 11-12
#zones 1429
#suffix (Dwarf/Gnome)
#suffix-ptBR (Anão/Gnomo)
#name-ptBR 11-12 Elwynn (Anão/Gnomo)
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup Speedrun 1-20
#subgroup-ptBR Rota rápida 1-20
#recommend Gnome Dwarf
#next forever.a.12-14-loch-modan-dwarf-gnome

step
    goto 1453 @490.03,-8835.82
    note-enUS Cast [Life Tap] repeatedly until you have <10% health while on the way to Dungar Longdrink |only Warlock
    note-ptBR Lance [Life Tap] repetidamente até ficar com <10% de vida enquanto vai até Dungar Longdrink |only Warlock
    note-enUS Talk to Dungar Longdrink
    note-ptBR Fale com Dungar Longdrink
    fp
    note-enUS Get the Stormwind City flight path
    note-ptBR Pegue o ponto de voo de Stormwind City
step
    only Mage
    goto 1429 @12.52,-9479.85 9 |only Mage Rogue
    goto 1429 @34.28,-9471.61
    note-enUS Cast [Life Tap] repeatedly until you have <10% health then jump down the ledge (NOT into the water) next to the flight master and die intentionally |only Warlock
    note-ptBR Lance [Life Tap] repetidamente até ficar com <10% de vida, depois pule da borda (NÃO na água) ao lado do mestre de voo e morra de propósito |only Warlock
    note-enUS Respawn at the Spirit Healer |only Warlock
    note-ptBR Ressuscite no Curandeiro Espiritual |only Warlock
    note-enUS Travel to Goldshire
    note-ptBR Vá até Goldshire
    note-enUS Travel upstairs in the Inn |only Mage Rogue
    note-ptBR Suba as escadas na estalagem |only Mage Rogue
    note-enUS Talk to Zaldimar Wefhellt
    note-ptBR Fale com Zaldimar Wefhellt
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Rogue
    goto 1429 @12.69,-9465.75
    note-enUS Talk to Keryn Sylvius
    note-ptBR Fale com Keryn Sylvius
    note-enUS Prioritize training [Dual Wield]
    note-ptBR Priorize treinar [Dual Wield]
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    note-enUS Talk to Remy "Two Times"
    note-ptBR Fale com Remy "Two Times"
    accept 40
step
    goto 1429 @73.92,-9465.54
    note-enUS Talk to Marshal Dughan
    note-ptBR Fale com Marshal Dughan
    turnin 40
    accept 35
step
    only Paladin
    goto 1429 @109.04,-9468.16
    note-enUS Talk to Brother Wilhelm
    note-ptBR Fale com Brother Wilhelm
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warlock
    goto 1429 @683.4,-9667.93
    note-enUS Click the Wanted Poster
    note-ptBR Clique no Wanted Poster
    accept 176
step
    only Warlock
    path seq 1429 @598.29,-9946.33 @629.53,-10020.39 @660.77,-10085.2 @598.29,-10112.98 @598.29,-9946.33 @629.53,-10020.39 @660.77,-10085.2 @598.29,-10112.98 @598.29,-9946.33 @629.53,-10020.39 @660.77,-10085.2 @598.29,-10112.98
    goto 1429 @636.47,-10112.98
    note-enUS The [Gold Pickup Schedule] is a very rare drop. Ignore this step if you don't get it |only Warlock
    note-ptBR O [Gold Pickup Schedule] é um drop muito raro. Ignore esta etapa se não o conseguir |only Warlock
    note-enUS Gruff Swiftbite a rare spawn, does have a 100% drop chance |only Warlock
    note-ptBR Gruff Swiftbite, um raro, tem 100% de chance de queda |only Warlock
    use 1307 |only Warlock |opt
    note-enUS Use the [Gold Pickup Schedule] to start the quest |only Warlock
    note-ptBR Use o [Gold Pickup Schedule] para iniciar a missão |only Warlock
    collect 1307 1 |quest 123 |only Warlock |opt
    accept 123 |only Warlock |opt
    note-enUS Kill Hogger. Loot him for his Claw
    note-ptBR Mate Hogger. Saqueie-o para obter a garra dele
    note-enUS Hogger can spawn in multiple locations
    note-ptBR Hogger pode surgir em vários locais
    note-enUS Cast [Fear] on Hogger continously and use your regular DoTs to kill him
    note-ptBR Lance [Fear] em Hogger continuamente e use seus DoTs normais para matá-lo
    note-enUS This quest is difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him
    note-ptBR Esta missão é difícil. Procure um grupo para ele se necessário. Pule esta etapa se não conseguir achar um grupo ou matá-lo sozinho
    objective 176/1
step
    note-enUS Talk to Ma Stonefield
    note-ptBR Fale com Ma Stonefield
    accept 88
step
    goto 1429 @-1032.06,-9610.23 30
    note-enUS Travel east to Guard Thomas
    note-ptBR Vá para o leste até Guard Thomas
    note-enUS Talk to Guard Thomas
    note-ptBR Fale com Guard Thomas
    turnin 35
    accept 37
    accept 52
step
    goto 1429 @-986.35,-9336.06
    note-enUS Kill Prowlers and Young Forest Bears
    note-ptBR Mate Prowlers e Young Forest Bears
    note-enUS Prioritize killing any Young Forest Bears you see
    note-ptBR Priorize matar todos os Young Forest Bears que encontrar
    objective 52/1 |opt
    objective 52/2 |opt
    note-enUS Click A half-eaten body on the ground
    note-ptBR Clique em A half-eaten body no chão
    turnin 37
    accept 45
step
    goto 1429 @-1289.22,-9469.8
    note-enUS Talk to Supervisor Raelen
    note-ptBR Fale com Supervisor Raelen
    accept 5545
step
    goto 1429 @-1234.31,-9224.18
    note-enUS Loot the Bundle of Wood on the ground. They are found beneath the trees
    note-ptBR Saqueie o Bundle of Wood no chão. Eles ficam embaixo das árvores
    objective 5545/1 |opt
    note-enUS Click Rolf's corpse on the ground
    note-ptBR Clique no cadáver de Rolf no chão
    note-enUS Be careful as nearby Murlocs may aggro once you click Rolf's corpse
    note-ptBR Cuidado, Murlocs próximos podem atacar quando você clicar no cadáver de Rolf
    note-enUS Murloc Foragers will cast [Drink Minor Potion] which heals themselves for 61-68
    note-ptBR Murloc Foragers lançam [Drink Minor Potion], que os cura em 61-68
    turnin 45
    accept 71
step
    path closest 1429 @-1257.91,-9216.77 @-1246.46,-9329.03 @-1362.03,-9309.59 @-1257.91,-9216.77 @-1271.79,-9186.68 @-1230.14,-9150.34 @-1271.1,-9147.1 @-1271.79,-9186.68 @-1257.91,-9216.77 @-1232.92,-9251.95 @-1246.46,-9329.03 @-1249.58,-9362.13 @-1285.33,-9365.14 @-1296.09,-9389.44 @-1338.09,-9331.11 @-1354.05,-9354.26 @-1362.03,-9309.59 @-1302.68,-9309.12 @-1257.91,-9216.77 @-1354.05,-9354.26 @-1362.03,-9309.59
    note-enUS Loot the Bundles of Wood on the ground at the base of the trees
    note-ptBR Saqueie os Bundles of Wood no chão, na base das árvores
    objective 5545/1
step
    goto 1429 @-1289.22,-9469.8
    note-enUS Talk to Supervisor Raelen
    note-ptBR Fale com Supervisor Raelen
    turnin 5545
step
    goto 1429 @-1119.77,-9603.77
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
    note-enUS Use [Croaky's Head] to start the quest
    note-ptBR Use [Croaky's Head] para iniciar a missão
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
    only Warlock
    ifonquest 147
    goto 1429 @-932.35,-9806.53
    note-enUS Kill Surena Caledon. Loot her for her Choker
    note-ptBR Mate Surena Caledon. Saqueie-a para obter a gargantilha dela
    note-enUS Kill Morgan the Collector. Loot him for The Collector's Ring
    note-ptBR Mate Morgan the Collector. Saqueie-o para obter The Collector's Ring
    note-enUS Focus on killing Surena Caledon very quickly
    note-ptBR Concentre-se em matar Surena Caledon bem rápido
    note-enUS Cast [Fear] on Morgan the Collector continously
    note-ptBR Lance [Fear] em Morgan the Collector continuamente
    objective 1688/1
    objective 147/1
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
    goto 1429 @-869.87,-9768.1
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
    goto 1429 @-1032.06,-9610.23
    note-enUS Talk to Guard Thomas
    note-ptBR Fale com Guard Thomas
    turnin 52
    turnin 71
    accept 39
    accept 109
step
    goto 1429 @-1119.77,-9603.77
    note-enUS Talk to Ormin Pelford
    note-ptBR Fale com Ormin Pelford
    turnin 91733
step
    ifonquest 91740
    goto 1429 @-1406.2,-9775.5
    note-enUS Travel to Ridgepoint Tower
    note-ptBR Vá até Ridgepoint Tower
    note-enUS Talk to Merell Ross
    note-ptBR Fale com Merell Ross
    turnin 91740
step
    path seq 1433 @-1948.56,-9582.75
    goto 1433 @-1906.4,-9606.8
    zone 1433 |opt
    note-enUS Travel to Redridge Mountains
    note-ptBR Vá até Redridge Mountains
    note-enUS Talk to Guard Parker
    note-ptBR Fale com Guard Parker
    accept 244
step
    goto 1433 @-2238,-9443.69
    note-enUS Talk to Deputy Feldon
    note-ptBR Fale com Deputy Feldon
    note-enUS Be careful of high level mobs en route
    note-ptBR Cuidado com mobs de nível alto no caminho
    turnin 244
step
    goto 1433 @-2234.9,-9435.3
    note-enUS Talk to Ariena Stormfeather
    note-ptBR Fale com Ariena Stormfeather
    fp
    note-enUS Get the Redridge Mountains flight path
    note-ptBR Pegue o ponto de voo de Redridge Mountains
    fly 1453
    note-enUS Fly to Stormwind
    note-ptBR Voe para Stormwind
step
    only Warlock
    path seq 1453 @988.44,-8942.15 |only Warlock
    goto 1453 @1015.33,-8978.9 15 |only Warlock
    goto 1453 @1029.89,-8971.06
    note-enUS Travel to The Slaughtered Lamb and go downstairs |only Warlock
    note-ptBR Vá até The Slaughtered Lamb e desça as escadas |only Warlock
    note-enUS Talk to Ursula Deline
    note-ptBR Fale com Ursula Deline
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
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
    note-enUS Use the [Bloodstone Choker] to call forth a Summoned Voidwalker |only Warlock
    note-ptBR Use o [Bloodstone Choker] para chamar um Summoned Voidwalker |only Warlock
    use 6928 |only Warlock |opt
    use 6928
    note-enUS Kill the Summoned Voidwalker
    note-ptBR Mate o Summoned Voidwalker
    objective 1689/1
step
    only Warlock
    goto 1453 @1041.54,-8983.29
    note-enUS Start casting [Life Tap] on your way back up to Gakin the Darkbinder as you will do a deathskip momentarily |only Warlock
    note-ptBR Comece a lançar [Life Tap] no caminho de volta até Gakin the Darkbinder, pois você fará um deathskip em instantes |only Warlock
    note-enUS Talk to Gakin the Darkbinder
    note-ptBR Fale com Gakin the Darkbinder
    turnin 1689
step
    only Warlock
    note-enUS Die and respawn at the Spirit Healer by using [Life Tap] and standing on the Bonfire next to you
    note-ptBR Morra e renasça no Spirit Healer usando [Life Tap] e ficando na Bonfire ao seu lado
step
    goto 1429 @74.02,-9465.52
    zone 1429
    note-enUS Exit Stormwind. Travel to Goldshire
    note-ptBR Saia de Stormwind. Vá até Goldshire
step
    only Warlock
    ifonquest 147
    goto 1429 @74.02,-9465.52
    note-enUS Talk to Marshal Dughan
    note-ptBR Fale com Marshal Dughan
    turnin 147
    turnin 39
step
    goto 1429 @74.02,-9465.52
    note-enUS Talk to Marshal Dughan
    note-ptBR Fale com Marshal Dughan
    turnin 39
step
    only Hunter
    goto 1429 @107.2,-9472.4
    note-enUS Talk to Josephine Carson
    note-ptBR Fale com Josephine Carson
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warrior
    goto 1429 @109.36,-9461.84
    note-enUS Talk to Lyria Du Lac
    note-ptBR Fale com Lyria Du Lac
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Paladin
    goto 1429 @109.04,-9468.16
    note-enUS Talk to Brother Wilhelm
    note-ptBR Fale com Brother Wilhelm
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Mage
    goto 1429 @12.52,-9479.85 9 |only Mage Priest Rogue
    goto 1429 @34.28,-9471.61
    note-enUS Travel upstairs in the Inn |only Mage Priest Rogue
    note-ptBR Suba as escadas na estalagem |only Mage Priest Rogue
    note-enUS Talk to Zaldimar Wefhellt
    note-ptBR Fale com Zaldimar Wefhellt
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Priest
    goto 1429 @33.14,-9460.75
    note-enUS Talk to Priestess Josetta
    note-ptBR Fale com Priestess Josetta
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Rogue
    goto 1429 @12.69,-9465.75
    note-enUS Talk to Keryn Sylvius
    note-ptBR Fale com Keryn Sylvius
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    note-enUS Talk to Ma Stonefield
    note-ptBR Fale com Ma Stonefield
    turnin 88
step
    only Dwarf Paladin
    path closest 1429 @598.29,-9946.33 @629.53,-10020.39 @660.77,-10085.2 @598.29,-10112.98
    note-enUS Kill Riverpaw Runts and Riverpaw Outrunners. Loot them for [Linen Cloth]
    note-ptBR Mate Riverpaw Runts e Riverpaw Outrunners. Saqueie-os para obter [Linen Cloth]
    note-enUS Ensure you have 10 [Linen Cloth] for your upcoming Paladin class quest
    note-ptBR Garanta que tenha 10 [Linen Cloth] para sua próxima missão de classe de Paladino
    collect 2589 10 |quest 1648 |q 1648/1
step
    ifonquest 184
    goto 1436 @918.42,-9851.5
    zone 1436 |opt
    note-enUS Travel to Westfall
    note-ptBR Vá até Westfall
    note-enUS Talk to Farmer Furlbrow
    note-ptBR Fale com Farmer Furlbrow
    turnin 184
step
    path seq 1436 @918.42,-9851.5
    goto 1436 @919.47,-9853.13
    note-enUS Talk to Farmer Furlbrow and Verna Furlbrow
    note-ptBR Fale com Farmer Furlbrow e Verna Furlbrow
    accept 64
    accept 151
    accept 36
step
    goto 1436 @1055.27,-10128.7
    note-enUS Talk to Farmer Saldean
    note-ptBR Fale com Farmer Saldean
    accept 9
step
    goto 1436 @1042.67,-10111.67
    note-enUS Talk to Salma Saldean
    note-ptBR Fale com Salma Saldean
    turnin 36
    accept 38
    accept 22
step
    ifcomplete 38
    goto 1436 @1042.67,-10111.67
    note-enUS Talk to Salma Saldean
    note-ptBR Fale com Salma Saldean
    turnin 38
step
    ifcomplete 22
    goto 1436 @1042.67,-10111.67
    note-enUS Talk to Salma Saldean
    note-ptBR Fale com Salma Saldean
    turnin 22
step
    goto 1436 @1045.12,-10508.8
    note-enUS Die and respawn at the Spirit Healer or run to Sentinel Hill
    note-ptBR Morra e renasça no Spirit Healer ou corra até Sentinel Hill
    note-enUS Talk to Gryan Stoutmantle
    note-ptBR Fale com Gryan Stoutmantle
    turnin 109
    accept 12
step
    goto 1436 @1045.12,-10508.8
    note-enUS Talk to Gryan Stoutmantle
    note-ptBR Fale com Gryan Stoutmantle
    accept 12
step
    goto 1436 @1041.97,-10511.13
    note-enUS Talk to Captain Danuvin
    note-ptBR Fale com Captain Danuvin
    accept 102
step
    goto 1436 @1126.67,-10636.67
    note-enUS Talk to Scout Galiaan
    note-ptBR Fale com Scout Galiaan
    accept 153
step
    goto 1436 @1037.42,-10628.27
    note-enUS Talk to Thor
    note-ptBR Fale com Thor
    fp
    note-enUS Get the Sentinel Hill flight path
    note-ptBR Pegue o ponto de voo de Sentinel Hill
step
    only Dwarf Paladin
    hearth
    note-enUS Hearth to Ironforge
    note-ptBR Use a pedra de regresso para Ironforge
    note-enUS Buy food/water if needed |only !Warrior !Rogue
    note-ptBR Compre comida/água se precisar |only !Warrior !Rogue
    note-enUS Buy food if needed |only Warrior Rogue
    note-ptBR Compre comida se precisar |only Warrior Rogue
step
    only Dwarf Paladin
    goto 1436 @1037.42,-10628.27
    note-enUS Talk to Thor
    note-ptBR Fale com Thor
    fly 1455
    note-enUS Fly to Ironforge
    note-ptBR Voe para Ironforge
step
    only !Paladin
    hearth
    note-enUS Hearth to Thelsamar
    note-ptBR Use a pedra de regresso para Thelsamar
    note-enUS Buy food/water if needed |only !Warrior !Rogue
    note-ptBR Compre comida/água se precisar |only !Warrior !Rogue
    note-enUS Buy food if needed |only Warrior Rogue
    note-ptBR Compre comida se precisar |only Warrior Rogue
step
    only !Paladin
    goto 1436 @1037.42,-10628.27
    note-enUS Talk to Thor
    note-ptBR Fale com Thor
    fly 1432
    note-enUS Fly to Loch Modan
    note-ptBR Voe para Loch Modan
]==])

register([==[
#format 1
#id forever.a.12-14-loch-modan-dwarf-gnome
#name 12-14 Loch Modan (Dwarf/Gnome)
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#only !Hunter
#levels 12-14
#zones 1432
#suffix (Dwarf/Gnome)
#suffix-ptBR (Anão/Gnomo)
#name-ptBR 12-14 Loch Modan (Anão/Gnomo)
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup Speedrun 1-20
#subgroup-ptBR Rota rápida 1-20
#recommend Gnome Dwarf
#next forever.a.13-15-westfall

step
    only Dwarf Paladin
    path seq 1455 35.24,32.79 27.21,12.55 |only Dwarf Paladin
    goto 1455 @-896.47,-4601.65 12 |only Dwarf Paladin
    goto 1455 @-896.47,-4601.65
    note-enUS Travel toward Brandur Ironhammer |only Dwarf Paladin
    note-ptBR Vá em direção a Brandur Ironhammer |only Dwarf Paladin
    note-enUS Talk to Brandur Ironhammer
    note-ptBR Fale com Brandur Ironhammer
    accept 2999
step
    only Dwarf Paladin
    path seq 1455 25.4,2.68 23.62,2.54 22.01,4.53 21.83,7.65 23.77,11.64 |only Dwarf Paladin
    goto 1455 27.62,12.18 12 |only Dwarf Paladin
    goto 1455 27.62,12.18
    note-enUS Travel toward Tiza Battleforge upstairs |only Dwarf Paladin
    note-ptBR Vá em direção a Tiza Battleforge no andar de cima |only Dwarf Paladin
    note-enUS Talk to Tiza Battleforge upstairs
    note-ptBR Fale com Tiza Battleforge no andar de cima
    turnin 2999
    accept 1645
    turnin 1645
step
    only Dwarf Paladin
    goto 1455 27.62,12.18
    note-enUS Use the [The Tome of Divinity] to start the quest
    note-ptBR Use o [The Tome of Divinity] para iniciar a missão
    accept 1646
    use 6916
step
    only Dwarf Paladin
    goto 1455 27.62,12.18
    note-enUS Talk to Tiza Battleforge upstairs
    note-ptBR Fale com Tiza Battleforge no andar de cima
    turnin 1646
    accept 1647
step
    only Dwarf Paladin
    path closest 1455 21.75,51.73 26.02,68.38 42.94,84.11 21.75,51.73 22.02,54.95 23.33,61.87 23.72,63.82 26.02,68.38 27.5,71.32 31.35,77.81 32.41,78.56 37.26,82.16 39.2,83.2 42.94,84.11
    note-enUS Talk to John Turner
    note-ptBR Fale com John Turner
    note-enUS John Turner patrols along the outer ring of Ironforge between just past the Stonefire Tavern and just past the Visitor's Center
    note-ptBR John Turner patrulha o anel externo de Ironforge, entre logo depois da Stonefire Tavern e logo depois do Visitor's Center
    turnin 1647
    accept 1648
    turnin 1648
    accept 1778
step
    only Dwarf Paladin
    path seq 1455 27.23,12.72 25.4,2.68 23.62,2.54 22.01,4.53 21.83,7.65 23.77,11.64 |only Dwarf Paladin
    goto 1455 27.62,12.18 12 |only Dwarf Paladin
    goto 1455 27.62,12.18
    note-enUS Travel toward the staircase underneath Tiza Battleforge |only Dwarf Paladin
    note-ptBR Vá em direção à escada embaixo de Tiza Battleforge |only Dwarf Paladin
    note-enUS Travel toward Tiza Battleforge upstairs |only Dwarf Paladin
    note-ptBR Vá em direção a Tiza Battleforge no andar de cima |only Dwarf Paladin
    note-enUS Talk to Tiza Battleforge upstairs
    note-ptBR Fale com Tiza Battleforge no andar de cima
    turnin 1778
    accept 1779
step
    only Dwarf Paladin
    goto 1455 @-899.7,-4613.03
    note-enUS Talk to Muiredon Battleforge upstairs
    note-ptBR Fale com Muiredon Battleforge no andar de cima
    turnin 1779
    accept 1783
step
    only Paladin
    goto 1455 @-1152.4,-4821.13
    note-enUS Talk to Gryth Thurden
    note-ptBR Fale com Gryth Thurden
    fly 1432
    note-enUS Fly to Loch Modan
    note-ptBR Voe para Loch Modan
step
    ifcomplete 418
    goto 1432 @-2954.42,-5394.1
    note-enUS Talk to Vidra Hearthstove
    note-ptBR Fale com Vidra Hearthstove
    turnin 418
step
    goto 1432 @-2952.46,-5381.87
    note-enUS Talk to Yanni Stoutheart
    note-ptBR Fale com Yanni Stoutheart
    vendor
    note-enUS Buy [Small Brown Pouches] from her if needed
    note-ptBR Compre [Small Brown Pouches] dela, se precisar
step
    only !Hunter
    goto 1432 @-2973.9,-5377.93
    note-enUS Talk to Innkeeper Hearthstove
    note-ptBR Fale com Innkeeper Hearthstove
    vendor |only Warrior Rogue
    note-enUS Buy some [Freshly Baked Bread] if needed |only Warrior Rogue
    note-ptBR Compre um pouco de [Freshly Baked Bread] se precisar |only Warrior Rogue
    vendor |only !Warrior !Rogue
    note-enUS Buy some [Freshly Baked Bread] and [Ice Cold Milk] from her if needed |only !Warrior !Rogue
    note-ptBR Compre um pouco de [Freshly Baked Bread] e [Ice Cold Milk] dela, se precisar |only !Warrior !Rogue
step
    only Dwarf Gnome
    path seq 1432 @-3019.02,-5369.4
    goto 1432 @-3014.86,-5366.93
    note-enUS Talk to Brock Stoneseeker
    note-ptBR Fale com Brock Stoneseeker
    turnin 6392
step
    goto 1432 @-3003.3,-5376.02
    note-enUS Talk to Grenhild Darktalon
    note-ptBR Fale com Grenhild Darktalon
    accept 86667
step
    path seq 1432 @-2619.2,-5783.3
    goto 1432 @-2534.38,-5648.28 5
    note-enUS Travel to the snowy patch on the ground just outside the South Gate Pass tunnel
    note-ptBR Vá até a área de neve no chão logo fora do túnel de South Gate Pass
    use 279380
    note-enUS Use the [Ceramic Jar] while standing on the snowy patch to collect the [Jar of Snow]
    note-ptBR Use o [Ceramic Jar] em pé na área de neve para coletar o [Jar of Snow]
    objective 86667/1
step
    only Shaman
    goto 1432 @-2521.9,-5631 20 |only Shaman
    path seq 1426 @-2437.6,-5549.7 @-2473.1,-5418.6 |only Shaman
    goto 1426 @-2542.4,-5401.4 25 |only Shaman
    goto 1426 @-2510.1,-5310.3
    note-enUS Travel through the South Gate Pass |only Shaman
    note-ptBR Passe pela South Gate Pass |only Shaman
    note-enUS Travel toward Bruegs Kindleborn in the cave atop the mountain |only Shaman
    note-ptBR Vá em direção a Bruegs Kindleborn na caverna no alto da montanha |only Shaman
    note-enUS Talk to Bruegs Kindleborn
    note-ptBR Fale com Bruegs Kindleborn
    turnin 94449
    accept 94465
step
    only Shaman
    ifonquest 94465
    goto 1426 @-2594.1,-5335.9 20
    goto 1432 @-2641,-5375.7 20
    note-enUS Carefully drop down the mountain into Loch Modan
    note-ptBR Desça a montanha com cuidado até Loch Modan
step
    only Shaman
    path seq 1432 @-2915.5,-5576.5 @-2874.5,-5608.6 |only Shaman
    goto 1432 @-2846.1,-5657.6 15 |only Shaman
    goto 1432 @-2880.9,-5701.5
    note-enUS Travel up the mountain trail toward Braldir Ashmantle |only Shaman
    note-enUS Talk to Braldir Ashmantle
    note-ptBR Fale com Braldir Ashmantle
    turnin 94465
    accept 94466
step
    path seq 1426 70.84,51.78 73.53,50.85 75.35,48.53 79.88,46.8 81.04,43.46 80.58,36.04 70.84,51.78 73.53,50.85 75.35,48.53 79.88,46.8 81.04,43.46
    goto 1426 80.58,36.04
    goto 1432 @-3146.73,-4837.02
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
    note-enUS Kill Forest Lurkers. Loot them for their Ichor
    note-ptBR Mate Forest Lurkers. Saqueie-os para obter icor
    collect 3172 3 |quest 418 |q 418/1 |opt
    collect 3173 3 |quest 418 |q 418/1 |opt
    collect 3174 3 |quest 418 |q 418/1 |opt
    note-enUS Talk to Norric Lochthane
    note-ptBR Fale com Norric Lochthane
    note-enUS Ensure to turn this in before the 10 minute expiry on the [Jar of Snow]
    note-ptBR Entregue isto antes que o [Jar of Snow] expire em 10 minutos
    turnin 86667
step
    only Shaman
    path closest 1432 @-3287.4,-4868 @-3397.5,-4870.8 @-3337.3,-4998.4
    note-enUS Kill Stonesplinter Seers. Loot them for their Reagent Pouch
    note-ptBR Mate Stonesplinter Seers. Saqueie-os para obter a Reagent Pouch
    objective 94466/2
step
    path seq 1432 @-2684.71,-5042.87 @-2712.57,-5286.61 @-3033.92,-4797.29 @-2972.41,-4796.92 @-2684.71,-5042.87 @-2712.57,-5286.61 @-2972.96,-4835.19 @-2684.71,-5042.87 @-2712.57,-5286.61 @-3033.92,-4797.29 @-2972.41,-4796.92 @-2684.71,-5042.87 @-2712.57,-5286.61 @-3033.92,-4797.29
    goto 1432 @-2972.41,-4796.92
    note-enUS Kill Tunnel Rats. Loot them for their Ears
    note-ptBR Mate Tunnel Rats. Saqueie-os para obter as orelhas
    note-enUS Kill Tunnel Rat Geomancers. Loot them for their Fire Tar |only Shaman
    note-ptBR Mate Tunnel Rat Geomancers. Saqueie-os para obter Fire Tar |only Shaman
    note-enUS Tunnel Rat Geomancers are only found inside the mine |only Shaman
    note-ptBR Os Tunnel Rat Geomancers só são encontrados dentro da mina |only Shaman
    objective 416/1 |opt
    objective 94466/1 |opt
    note-enUS Enter the Silver Stream Mine
    note-ptBR Entre na Silver Stream Mine
    note-enUS Equip the [Heavy Spiked Mace] |only Paladin Warrior
    note-ptBR Equipe a [Heavy Spiked Mace] |only Paladin Warrior
    use 4778 |only Paladin Warrior |opt
    note-enUS Equip the [Ironwood Maul] |only Paladin Warrior
    note-ptBR Equipe o [Ironwood Maul] |only Paladin Warrior
    use 4777 |only Paladin Warrior |opt
    note-enUS Kill Tunnel Rats. Loot them for their Ears
    note-ptBR Mate Tunnel Rats. Saqueie-os para obter as orelhas
    note-enUS Kill Tunnel Rat Geomancers. Loot them for their Fire Tar |only Shaman
    note-ptBR Mate Tunnel Rat Geomancers. Saqueie-os para obter Fire Tar |only Shaman
    note-enUS Tunnel Rat Geomancers are only found inside the mine |only Shaman
    note-ptBR Os Tunnel Rat Geomancers só são encontrados dentro da mina |only Shaman
    objective 416/1
    objective 94466/1 |only Shaman
step
    path seq 1426 70.84,51.78 73.53,50.85 75.35,48.53 79.88,46.8 81.04,43.46 80.58,36.04 70.84,51.78 73.53,50.85 75.35,48.53 79.88,46.8 81.04,43.46
    goto 1426 80.58,36.04
    path seq 1432 23.49,18.01 24.28,17.96 @-2659.45,-4822.45
    goto 1432 @-2676.99,-4825.98
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
    note-enUS Kill Forest Lurkers. Loot them for their Ichor
    note-ptBR Mate Forest Lurkers. Saqueie-os para obter icor
    collect 3172 3 |quest 418 |q 418/1 |opt
    collect 3173 3 |quest 418 |q 418/1 |opt
    collect 3174 3 |quest 418 |q 418/1 |opt
    note-enUS Enter the Bunker
    note-ptBR Entre no Bunker
    note-enUS Talk to Gothor Brumn
    note-ptBR Fale com Gothor Brumn
    vendor |opt
    note-enUS Vendor and repair if needed
    note-ptBR Venda e repare se precisar
    note-enUS Talk to Mountaineer Stormpike
    note-ptBR Fale com Mountaineer Stormpike
    turnin 307
    turnin 353
step
    path seq 1426 70.84,51.78 73.53,50.85 75.35,48.53 79.88,46.8 81.04,43.46 80.58,36.04 70.84,51.78 73.53,50.85 75.35,48.53 79.88,46.8 81.04,43.46
    goto 1426 80.58,36.04
    path seq 1432 @-2735.74,-4684.34 @-2846.07,-4682.5 @-2782.63,-4770.8 @-2835.04,-4976.83 @-2915.03,-5044.89 @-3080.53,-5100.08 @-2735.74,-4684.34 @-2846.07,-4682.5 @-2782.63,-4770.8 @-2835.04,-4976.83 @-2915.03,-5044.89 @-3080.53,-5100.08 @-2735.74,-4684.34 @-3041.92,-5129.51 @-3017.09,-5219.65 @-2815.73,-5147.91 @-2757.81,-4952.91 @-2782.63,-4903.25 @-3041.92,-5129.51 @-3017.09,-5219.65 @-2815.73,-5147.91 @-2757.81,-4952.91 @-2782.63,-4903.25 @-3041.92,-5129.51 @-2873.66,-4789.19 @-2766.08,-4866.45 @-2926.07,-5232.53 @-2992.27,-5055.93 @-3069.5,-5078.01 @-2873.66,-4789.19 @-2766.08,-4866.45 @-2926.07,-5232.53 @-2992.27,-5055.93 @-3069.5,-5078.01
    goto 1432 @-2873.66,-4789.19
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
    note-enUS Kill Forest Lurkers. Loot them for their Ichor
    note-ptBR Mate Forest Lurkers. Saqueie-os para obter icor
    collect 3173 3 |quest 418 |q 418/1
    collect 3172 3 |quest 418 |q 418/1
    collect 3174 3 |quest 418 |q 418/1
step
    path seq 1432 35.27,47.75 35.43,48.24
    goto 1432 @-2954.42,-5394.1
    note-enUS Talk to Mountaineer Kadrell
    note-ptBR Fale com Mountaineer Kadrell
    note-enUS Mountaineer Kadrell patrols the road through Thelsamar
    note-ptBR Mountaineer Kadrell patrulha a estrada que atravessa Thelsamar
    turnin 416 |opt
    note-enUS Enter the Stoutlager Inn
    note-ptBR Entre na Stoutlager Inn
    note-enUS Talk to Vidra Hearthstove
    note-ptBR Fale com Vidra Hearthstove
    turnin 418
step
    ifskillbelow cooking 50
    goto 1432 @-2952.46,-5381.87
    note-enUS Talk to Yanni Stoutheart
    note-ptBR Fale com Yanni Stoutheart
    note-enUS Buy a [Simple Wood] and a [Flint and Tinder] from her
    note-ptBR Compre um [Simple Wood] e um [Flint and Tinder] dela
    note-enUS This is used to make [Basic Campfires] on Boats to level your [Cooking] skill without losing time
    note-ptBR Isto é usado para fazer [Basic Campfires] nos barcos e subir sua habilidade de [Cooking] sem perder tempo
    note-enUS You need 50 [Cooking] for a quest in Duskwood later
    note-ptBR Você precisa de 50 em [Cooking] para uma missão em Duskwood mais tarde
    collect 4470 1
    collect 4471 1
step
    path seq 1432 @-3006.61,-5259.57 @-3020.95,-5282.02 @-3023.44,-5326.9 @-3007.99,-5337.39 @-2964.41,-5349.9 @-2894.9,-5401.96
    goto 1432 @-3007.99,-5337.39
    note-enUS Talk to Mountaineer Kadrell
    note-ptBR Fale com Mountaineer Kadrell
    note-enUS Mountaineer Kadrell patrols the road through Thelsamar
    note-ptBR Mountaineer Kadrell patrulha a estrada que atravessa Thelsamar
    turnin 416
step
    ifonquest 224
    ifonquest 267
    goto 1432 @-2729.4,-5534.96
    note-enUS Kill Stonesplinter Troggs and Stonesplinter Scouts. Loot them for their Trogg Stone Teeth
    note-ptBR Mate Stonesplinter Troggs e Stonesplinter Scouts. Saqueie-os para obter Trogg Stone Teeth
    note-enUS Be careful as Stonesplinter Scouts cast [Shoot] (Ranged Cast: Deals 14-20 damage)
    note-ptBR Cuidado, Stonesplinter Scouts lançam [Shoot] (Lançamento à distância: causa 14-20 de dano)
    note-enUS This is a hyperspawn area. You should not need to move from here
    note-ptBR Esta é uma área de reaparecimento muito rápido. Você não deve precisar sair daqui
    objective 224/1
    objective 224/2
    objective 267/1
step
    goto 1432 @-2729.4,-5534.96
    level 13
    note-enUS Grind to 9600+/11400xp
    note-ptBR Mate monstros até 9600+/11400xp
    note-enUS If you're planning on running the Hall of Thanes dungeon in Ironforge later, skip this step
    note-ptBR Se planeja fazer a masmorra Hall of Thanes em Ironforge mais tarde, pule esta etapa
step
    only Shaman
    path seq 1432 @-2915.5,-5576.5 @-2874.5,-5608.6 |only Shaman
    goto 1432 @-2846.1,-5657.6 15 |only Shaman
    goto 1432 @-2880.9,-5701.5
    note-enUS Travel up the mountain trail toward Braldir Ashmantle again |only Shaman
    note-enUS Talk to Braldir Ashmantle
    note-ptBR Fale com Braldir Ashmantle
    turnin 94466
    accept 94467
step
    only Shaman
    goto 1432 @-2873.8,-5672.5 |only Shaman
    goto 1432 @-2873.8,-5672.5
    note-enUS Continue up the trail |only Shaman
    note-ptBR Continue subindo a trilha |only Shaman
    use 6636 |only Shaman |opt
    note-enUS Use the [Fire Sapta] next to the rock statue to summon the Minor Manifestation of Fire |only Shaman
    note-ptBR Use o [Fire Sapta] ao lado da estátua de pedra para invocar a Minor Manifestation of Fire |only Shaman
    note-enUS Kill the Minor Manifestation of Fire. Loot it for the Glowing Ember
    note-ptBR Mate a Minor Manifestation of Fire. Saqueie-a para obter a Glowing Ember
    objective 94467/1
step
    only Shaman
    goto 1432 @-2870.7,-5674.6
    note-enUS Click the Brazier of the Dormant Flame
    note-ptBR Clique no Brazier of the Dormant Flame
    turnin 94467
    accept 94468
step
    ifcomplete 267
    path seq 1432 @-2677.26,-5778.34 @-2648.3,-5876.75
    goto 1432 @-2634.59,-5842.81
    note-enUS Run up the dirt path then drop down into the bunker
    note-ptBR Suba o caminho de terra correndo e depois pule para dentro do bunker
    note-enUS Talk to Captain Rugelfuss inside the bunker
    note-ptBR Fale com Captain Rugelfuss dentro do bunker
    turnin 267
step
    ifcomplete 224
    goto 1432 @-2602.54,-5832.73
    note-enUS Talk to Mountaineer Cobbleflint
    note-ptBR Fale com Mountaineer Cobbleflint
    turnin 224
step
    only Shaman
    goto 1432 @-2521.9,-5631 20 |only Shaman
    path seq 1426 @-2437.6,-5549.7 @-2473.1,-5418.6 |only Shaman
    goto 1426 @-2542.4,-5401.4 25 |only Shaman
    goto 1426 @-2510.1,-5310.3
    note-enUS Travel through the South Gate Pass |only Shaman
    note-ptBR Passe pela South Gate Pass |only Shaman
    note-enUS Travel toward Bruegs Kindleborn in the cave atop the mountain again |only Shaman
    note-ptBR Vá em direção a Bruegs Kindleborn na caverna no alto da montanha de novo |only Shaman
    note-enUS Talk to Bruegs Kindleborn
    note-ptBR Fale com Bruegs Kindleborn
    turnin 94468
step
    only Shaman
    ifturnedin 94468
    goto 1426 @-2594.1,-5335.9 20
    goto 1432 @-2641,-5375.7 20
    note-enUS Carefully drop down the mountain into Loch Modan
    note-ptBR Desça a montanha com cuidado até Loch Modan
step
    path closest 1432 @-3319.8,-5217.6 @-3251.55,-5285.88 @-3342.57,-5484.55 @-3386.71,-5462.48 @-3319.8,-5217.6 @-3251.55,-5285.88 @-3342.57,-5484.55 @-3386.71,-5462.48
    note-enUS Click the Discarded Fishing Toolbox on the lake floor
    note-ptBR Clique na Discarded Fishing Toolbox no fundo do lago
    note-enUS NOTE: This can spawn in one of many different locations. Swim around until you see the exclamation point on your minimap
    note-ptBR OBS: Isso pode surgir em vários locais diferentes. Nade por aí até ver o ponto de exclamação no minimapa
    note-enUS Be careful of high level Young Threshadon
    note-ptBR Cuidado com Young Threshadon de nível alto
    accept 86614
step
    path seq 1432 @-3104.9,-5210.1
    goto 1432 @-3086.6,-5216.8
    note-enUS Talk to Khara Deepwater
    note-ptBR Fale com Khara Deepwater
    turnin 86614
step
    only !Dwarf !Paladin
    goto 1432 @-2929.87,-5424.84
    note-enUS Talk to Thorgrum Borrelson
    note-ptBR Fale com Thorgrum Borrelson
    fly 1455
    note-enUS Fly to Ironforge
    note-ptBR Voe para Ironforge
step
    only Dwarf Paladin
    path seq 1432 21.5,67.84 21.39,66.36 21.11,65.01 20.75,64.33 19.59,62.73 |only Dwarf Paladin
    goto 1432 16.34,58.52 20 |only Dwarf Paladin
    path seq 1426 84.26,51.37 |only Dwarf Paladin
    goto 1426 @-2055.23,-5784.31 |only Dwarf Paladin
    goto 1426 @-2055.23,-5784.31
    zone 1426 |only Dwarf Paladin |opt
    note-enUS Travel to Dun Morogh |only Dwarf Paladin
    note-ptBR Vá até Dun Morogh |only Dwarf Paladin
    note-enUS Use the [Symbol of Life] on Narm Faulk on the ground |only Dwarf Paladin
    note-ptBR Use o [Symbol of Life] em Narm Faulk no chão |only Dwarf Paladin
    use 6866 |only Dwarf Paladin |opt
    note-enUS Talk to Narm Faulk
    note-ptBR Fale com Narm Faulk
    turnin 1783
    accept 1784
    use 6866
step
    only Dwarf Paladin
    path seq 1426 @-2004.94,-5863.5
    goto 1426 @-2031.04,-5905.53
    note-enUS Kill Dark Iron Spies. Loot them for the Dark Iron Script
    note-ptBR Mate Dark Iron Spies. Saqueie-os para obter o Dark Iron Script
    objective 1784/1
step
    only Dwarf Paladin
    ifcomplete 1784
    hearth
    note-enUS Hearth to Ironforge
    note-ptBR Use a pedra de regresso para Ironforge
step
    only Dwarf Paladin
    ifcomplete 1784
    path seq 1426 @-541.23,-5242.29
    goto 1426 @-669.77,-5216.35 20
    goto 1455 @-831.39,-5028.78 40
    zone 1455
    note-enUS Return to Ironforge
    note-ptBR Volte para Ironforge
step
    only Rogue
    goto 1455 @-1197.27,-5041.49
    note-enUS Talk to Buliwyf Stonehand inside
    note-ptBR Fale com Buliwyf Stonehand lá dentro
    train 196
    note-enUS Train 1h Axes
    note-ptBR Treine 1h Axes
step
    only Paladin
    goto 1455 @-907.69,-4592.93
    note-enUS Talk to Beldruk Doombrow
    note-ptBR Fale com Beldruk Doombrow
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Dwarf Paladin
    path seq 1455 @-913.38,-4577.31 |only Dwarf Paladin
    goto 1455 @-906.11,-4632.03 10 |only Dwarf Paladin
    goto 1455 @-899.7,-4613.03
    note-enUS Travel toward Muiredon upstairs |only Dwarf Paladin
    note-ptBR Vá em direção a Muiredon no andar de cima |only Dwarf Paladin
    note-enUS Talk to Muiredon Battleforge
    note-ptBR Fale com Muiredon Battleforge
    turnin 1784
    accept 1785
step
    only Dwarf Paladin
    goto 1455 @-932.04,-4633.56
    note-enUS Talk to Tiza Battleforge
    note-ptBR Fale com Tiza Battleforge
    turnin 1785
step
    only Shaman
    goto 1455 @-1086.5,-4642.4
    note-enUS Talk to Eldrun Stormbreaker
    note-ptBR Fale com Eldrun Stormbreaker
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Mage
    goto 1455 @-928.48,-4614.62
    note-enUS Talk to Dink
    note-ptBR Fale com Dink
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Priest
    goto 1455 @-912.88,-4625.99
    note-enUS Talk to Toldren Deepiron
    note-ptBR Fale com Toldren Deepiron
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Rogue
    goto 1455 @-1120.72,-4650.12
    note-enUS Talk to Fenthwick
    note-ptBR Fale com Fenthwick
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warlock
    path seq 1455 @-1117.6,-4615.14
    goto 1455 @-1111.62,-4599.09
    note-enUS Talk to Briarthorn
    note-ptBR Fale com Briarthorn
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warlock
    goto 1455 53.16,7.04 10 |only Warlock
    goto 1455 @-1130.26,-4601.27
    note-enUS Enter Jubahl Corpseseeker's house |only Warlock
    note-ptBR Entre na casa de Jubahl Corpseseeker |only Warlock
    note-enUS Talk to Jubahl Corpseseeker
    note-ptBR Fale com Jubahl Corpseseeker
    vendor
    note-enUS Buy [Grimoire of Consume Shadows (Rank 1)] and [Grimoire of Sacrifice (Rank 1)] if you can afford it
    note-ptBR Compre [Grimoire of Consume Shadows (Rank 1)] e [Grimoire of Sacrifice (Rank 1)] se puder pagar
step
    only Warrior
    path seq 1455 67.4,84.91 |only Warrior
    goto 1455 @-1234.65,-5035.67 12 |only Warrior
    goto 1455 @-1234.65,-5035.67
    note-enUS Travel toward Bilban Tosslespanner |only Warrior
    note-ptBR Vá em direção a Bilban Tosslespanner |only Warrior
    note-enUS Talk to Bilban Tosslespanner
    note-ptBR Fale com Bilban Tosslespanner
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    path seq 1455 67.84,42.46
    goto 1455 @-1330.28,-4840.43
    note-enUS Talk to Gearcutter Cogspinner
    note-ptBR Fale com Gearcutter Cogspinner
    vendor |opt
    note-enUS Buy a [Bronze Tube] from him if it's available
    note-ptBR Compre um [Bronze Tube] dele, se estiver disponível
    note-enUS Enter the Deeprun Tram
    note-ptBR Entre no Deeprun Tram
    note-enUS Level your [First Aid] while waiting for the Tram to Stormwind City if needed |only Rogue Warrior Paladin
    note-ptBR Suba seu [First Aid] enquanto espera o bonde para Stormwind City, se necessário |only Rogue Warrior Paladin
    note-enUS You will need your [First Aid] to be 80 for a quest at level 24 |only Rogue !Dwarf
    note-ptBR Você vai precisar de [First Aid] 80 para uma missão no nível 24 |only Rogue !Dwarf
    zone 1453
    note-enUS Take the Deeprun Tram to Stormwind City
    note-ptBR Pegue o Deeprun Tram para Stormwind City
step
    path seq 1453 @638.8,-8341.95
    goto 1453 @719.67,-8550.3
    note-enUS Talk to Billibub Cogspinner
    note-ptBR Fale com Billibub Cogspinner
    vendor |opt
    note-enUS Buy a [Bronze Tube] from him if it's available
    note-ptBR Compre um [Bronze Tube] dele, se estiver disponível
    note-enUS Talk to Baros Alexston
    note-ptBR Fale com Baros Alexston
    accept 399
step
    note-enUS Equip the [Scimitar] |only Rogue
    note-ptBR Equipe a [Scimitar] |only Rogue
    use 2027 |only Rogue |opt
]==])

register([==[
#format 1
#id forever.a.11-13-loch-modan-hunter
#name 11-13 Loch Modan (Hunter)
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 1
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Alliance
#only Hunter
#levels 11-13
#zones 1432
#suffix (Hunter)
#suffix-ptBR (Caçador)
#name-ptBR 11-13 Loch Modan (Caçador)
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup Speedrun 1-20
#subgroup-ptBR Rota rápida 1-20
#recommend Dwarf
#next forever.a.14-16-darkshore

step
    goto 1426 @-2443.41,-5560.12 15
    goto 1432 @-2602.54,-5832.73 20
    note-enUS Travel to Loch Modan
    note-ptBR Vá até Loch Modan
    note-enUS Talk to Mountaineer Cobbleflint
    note-ptBR Fale com Mountaineer Cobbleflint
    accept 224
step
    goto 1432 @-2634.59,-5842.81
    note-enUS Talk to Captain Rugelfuss in the bunker
    note-ptBR Fale com Captain Rugelfuss no bunker
    accept 267
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
    goto 1432 @-2954.42,-5394.1
    note-enUS Talk to Vidra Hearthstove
    note-ptBR Fale com Vidra Hearthstove
    accept 418
step
    goto 1432 @-2973.9,-5377.93
    note-enUS Talk to Innkeeper Hearthstove
    note-ptBR Fale com Innkeeper Hearthstove
    home
    note-enUS Set your Hearthstone to Thelsamar
    note-ptBR Defina sua pedra de regresso em Thelsamar
step
    path seq 1432 @-3019.02,-5369.4
    goto 1432 @-3014.86,-5366.93
    note-enUS Talk to Brock Stoneseeker
    note-ptBR Fale com Brock Stoneseeker
    accept 6387
step
    goto 1432 @-2929.87,-5424.84
    note-enUS Talk to Thorgrum Borrelson
    note-ptBR Fale com Thorgrum Borrelson
    turnin 6387
    accept 6391
step
    goto 1432 @-2929.87,-5424.84
    goto 1455 @-1120.93,-4708.06
    note-enUS Talk to Thorgrum Borrelson
    note-ptBR Fale com Thorgrum Borrelson
    fly 1455 |opt
    note-enUS Fly to Ironforge
    note-ptBR Voe para Ironforge
    note-enUS Talk to Golnir Bouldertoe
    note-ptBR Fale com Golnir Bouldertoe
    turnin 6391
    accept 6388
step
    ifonquest 291
    goto 1455 @-1058.62,-4836.37 20
    note-enUS Talk to Senator Barin Redstone
    note-ptBR Fale com Senator Barin Redstone
    turnin 291
step
    only Hunter
    goto 1455 @-1273.83,-5022.08
    note-enUS Talk to Belia Thundergranite
    note-ptBR Fale com Belia Thundergranite
    turnin 6086
step
    only Hunter
    goto 1455 @-1152.4,-4821.13
    note-enUS Talk to Gryth Thurden
    note-ptBR Fale com Gryth Thurden
    turnin 6388
    accept 6392
step
    goto 1455 @-1152.4,-4821.13
    note-enUS Talk to Gryth Thurden
    note-ptBR Fale com Gryth Thurden
    fly 1432
    note-enUS Fly to Loch Modan
    note-ptBR Voe para Loch Modan
step
    path seq 1432 @-3019.02,-5369.4
    goto 1432 @-3014.86,-5366.93
    note-enUS Talk to Brock Stoneseeker
    note-ptBR Fale com Brock Stoneseeker
    turnin 6392
step
    only Hunter
    goto 1432 @-2982.01,-5286.93
    note-enUS Talk to Vrok Blunderblast
    note-ptBR Fale com Vrok Blunderblast
    note-enUS Buy a [Hunter's Boomstick] if you can afford it
    note-ptBR Compre um [Hunter's Boomstick] se tiver dinheiro
    collect 2511 1
step
    path seq 1432 @-2651.61,-4817.15
    goto 1432 @-2676.99,-4825.98
    note-enUS Equip the [Hunter's Boomstick] |only Hunter
    note-ptBR Equipe o [Hunter's Boomstick] |only Hunter
    use 2511 |only Hunter |opt
    note-enUS Kill Elder Black Bears. Loot them for their Bear Meat
    note-ptBR Mate Elder Black Bears. Saqueie-os para obter Bear Meat
    note-enUS Kill Mountain Boars. Loot them for their Boar Intestines
    note-ptBR Mate Mountain Boars. Saqueie-os para obter Boar Intestines
    note-enUS Kill Forest Lurkers. Loot them for their Ichor
    note-ptBR Mate Forest Lurkers. Saqueie-os para obter icor
    collect 3172 3 |quest 418 |q 418/1 |opt
    collect 3173 3 |quest 418 |q 418/1 |opt
    collect 3174 3 |quest 418 |q 418/1 |opt
    note-enUS Travel north to the Algaz Station
    note-ptBR Vá para o norte até Algaz Station
    note-enUS Talk to Mountaineer Stormpike inside the bunker
    note-ptBR Fale com Mountaineer Stormpike dentro do bunker
    turnin 1339
    accept 1338
    accept 307
step
    only Human
    goto 1432 @-2676.99,-4825.98
    note-enUS Talk to Mountaineer Stormpike inside the bunker
    note-ptBR Fale com Mountaineer Stormpike dentro do bunker
    turnin 1339
    accept 1338
    accept 307
step
    path seq 1432 @-2972.96,-4835.19
    goto 1432 @-2984.82,-4902.33
    note-enUS Enter the Silver Stream Mine
    note-ptBR Entre na Silver Stream Mine
    note-enUS Open the Miners' League Crates. Loot them for the Miners' Gear
    note-ptBR Abra os Miners' League Crates. Saqueie-os para obter o Miners' Gear
    note-enUS The Miners' League Crates can be found all throughout the Mine
    note-ptBR Os Miners' League Crates podem ser encontrados por toda a mina
    note-enUS You will be able to do this quest at a higher level if you wish to skip it for now
    note-ptBR Você poderá fazer esta missão em um nível mais alto se quiser pulá-la agora
    objective 307/1
step
    goto 1432 @-2676.99,-4825.98
    note-enUS Kill Elder Black Bears. Loot them for their Bear Meat
    note-ptBR Mate Elder Black Bears. Saqueie-os para obter Bear Meat
    note-enUS Kill Mountain Boars. Loot them for their Boar Intestines
    note-ptBR Mate Mountain Boars. Saqueie-os para obter Boar Intestines
    note-enUS Kill Forest Lurkers. Loot them for their Ichor
    note-ptBR Mate Forest Lurkers. Saqueie-os para obter icor
    collect 3172 3 |quest 418 |q 418/1 |opt
    collect 3173 3 |quest 418 |q 418/1 |opt
    collect 3174 3 |quest 418 |q 418/1 |opt
    note-enUS Talk to Mountaineer Stormpike
    note-ptBR Fale com Mountaineer Stormpike
    turnin 307
step
    path seq 1432 @-2684.71,-5042.87 @-2712.57,-5286.61 @-3033.92,-4797.29 @-2972.41,-4796.92 @-2684.71,-5042.87 @-2712.57,-5286.61 @-3033.92,-4797.29
    goto 1432 @-2972.41,-4796.92
    note-enUS Kill Tunnel Rats. Loot them for their Ears
    note-ptBR Mate Tunnel Rats. Saqueie-os para obter as orelhas
    note-enUS Tunnel Rats can spawn throughout Loch Modan. Check your World Map for their locations
    note-ptBR Os Tunnel Rats podem surgir por todo Loch Modan. Confira as localizações no mapa-múndi
    objective 416/1
step
    path seq 1432 @-2735.74,-4684.34 @-2846.07,-4682.5 @-2782.63,-4770.8 @-2835.04,-4976.83 @-2915.03,-5044.89 @-3080.53,-5100.08 @-2735.74,-4684.34 @-2846.07,-4682.5 @-2782.63,-4770.8 @-2835.04,-4976.83 @-2915.03,-5044.89 @-3080.53,-5100.08 @-2735.74,-4684.34 @-3041.92,-5129.51 @-3017.09,-5219.65 @-2815.73,-5147.91 @-2757.81,-4952.91 @-2782.63,-4903.25 @-3041.92,-5129.51 @-3017.09,-5219.65 @-2815.73,-5147.91 @-2757.81,-4952.91 @-2782.63,-4903.25 @-3041.92,-5129.51 @-2873.66,-4789.19 @-2766.08,-4866.45 @-2926.07,-5232.53 @-2992.27,-5055.93 @-3069.5,-5078.01 @-2873.66,-4789.19 @-2766.08,-4866.45 @-2926.07,-5232.53 @-2992.27,-5055.93 @-3069.5,-5078.01
    goto 1432 @-2873.66,-4789.19
    note-enUS Kill Elder Black Bears. Loot them for their Bear Meat
    note-ptBR Mate Elder Black Bears. Saqueie-os para obter Bear Meat
    note-enUS Kill Mountain Boars. Loot them for their Boar Intestines
    note-ptBR Mate Mountain Boars. Saqueie-os para obter Boar Intestines
    note-enUS Kill Forest Lurkers. Loot them for their Ichor
    note-ptBR Mate Forest Lurkers. Saqueie-os para obter icor
    collect 3173 3 |quest 418 |q 418/1
    collect 3172 3 |quest 418 |q 418/1
    collect 3174 3 |quest 418 |q 418/1
step
    path seq 1432 @-3006.61,-5259.57 @-3020.95,-5282.02 @-3023.44,-5326.9 @-3007.99,-5337.39 @-2964.41,-5349.9 @-2894.9,-5401.96
    goto 1432 @-3007.99,-5337.39
    note-enUS Talk to Mountaineer Kadrell
    note-ptBR Fale com Mountaineer Kadrell
    note-enUS Mountaineer Kadrell patrols the road through Thelsamar
    note-ptBR Mountaineer Kadrell patrulha a estrada que atravessa Thelsamar
    turnin 416
step
    goto 1432 @-2954.42,-5394.1
    note-enUS Talk to Vidra Hearthstove
    note-ptBR Fale com Vidra Hearthstove
    turnin 418
step
    path seq 1432 @-2738.78,-5384.11 @-2757.26,-5532.94 @-2913.65,-5804.46 @-2863.73,-5866.45 @-2738.78,-5384.11 @-2757.26,-5532.94 @-2913.65,-5804.46 @-2863.73,-5866.45
    goto 1432 @-2928.27,-5896.25
    note-enUS Kill Stonesplinter Troggs and Stonesplinter Scouts. Loot them for their Teeth
    note-ptBR Mate Stonesplinter Troggs e Stonesplinter Scouts. Saqueie-os para obter os dentes
    objective 224/1
    objective 224/2
    objective 267/1
step
    goto 1432 @-2602.54,-5832.73
    note-enUS Talk to Mountaineer Cobbleflint
    note-ptBR Fale com Mountaineer Cobbleflint
    turnin 224
step
    goto 1432 @-2634.59,-5842.81
    note-enUS Talk to Captain Rugelfuss
    note-ptBR Fale com Captain Rugelfuss
    turnin 267
step
    goto 1432 @-2534.38,-5648.28 5
    note-enUS Travel to the snowy patch on the ground just outside the South Gate Pass tunnel
    note-ptBR Vá até a área de neve no chão logo fora do túnel de South Gate Pass
    use 279380
    note-enUS Use the [Ceramic Jar] while standing on the snowy patch to collect the [Jar of Snow]
    note-ptBR Use o [Ceramic Jar] em pé na área de neve para coletar o [Jar of Snow]
    objective 86667/1
step
    goto 1432 @-3146.73,-4837.02
    note-enUS Talk to Norric Lochthane
    note-ptBR Fale com Norric Lochthane
    note-enUS Ensure to turn this in before the 10 minute expiry on the [Jar of Snow]
    note-ptBR Entregue isto antes que o [Jar of Snow] expire em 10 minutos
    turnin 86667
step
    path seq 1432 @-3319.8,-5217.6 @-3251.55,-5285.88 @-3342.57,-5484.55 @-3386.71,-5462.48 @-3319.8,-5217.6 @-3251.55,-5285.88 @-3342.57,-5484.55
    goto 1432 @-3386.71,-5462.48
    note-enUS Click the Discarded Fishing Toolbox on the lake floor
    note-ptBR Clique na Discarded Fishing Toolbox no fundo do lago
    note-enUS NOTE: This can spawn in one of many different locations. Swim around until you see the exclamation point on your minimap
    note-ptBR OBS: Isso pode surgir em vários locais diferentes. Nade por aí até ver o ponto de exclamação no minimapa
    note-enUS Be careful of high level Young Threshadon
    note-ptBR Cuidado com Young Threshadon de nível alto
    accept 86614
step
    path seq 1432 @-3104.9,-5210.1
    goto 1432 @-3086.6,-5216.8
    note-enUS Talk to Khara Deepwater
    note-ptBR Fale com Khara Deepwater
    turnin 86614
step
    path seq 1432 @-3783.63,-5713.77
    goto 1432 @-3812.43,-5694.67
    note-enUS Travel to Ironband's Excavation Site
    note-ptBR Vá até Ironband's Excavation Site
    note-enUS Talk to Prospector Ironband
    note-ptBR Fale com Prospector Ironband
    accept 298
step
    path seq 1432 @-4280.96,-5579.66 @-4290.89,-5645.89
    goto 1432 @-4296.68,-5690.59
    note-enUS Travel to The Farstrider Lodge
    note-ptBR Vá até The Farstrider Lodge
    note-enUS Talk to Daryl the Youngling
    note-ptBR Fale com Daryl the Youngling
    accept 257
step
    path seq 1432 @-4202.9,-5667.78 @-4122.08,-5877.67 @-3946.1,-5828.74 @-4108.01,-5633.01 @-4100.01,-5518.59 @-4202.9,-5667.78 @-4122.08,-5877.67 @-3946.1,-5828.74 @-4108.01,-5633.01 @-4100.01,-5518.59
    goto 1432 @-4202.9,-5667.78
    note-enUS Kill Mountain Buzzards
    note-ptBR Mate Mountain Buzzards
    note-enUS You must complete this quest and return to Daryl the Youngling within 15 minutes. If you fail the quest, abandon it and pick it up again
    note-ptBR Você precisa completar esta missão e voltar a Daryl the Youngling em até 15 minutos. Se falhar, abandone a missão e pegue-a de novo
    objective 257/1
step
    goto 1432 @-4296.68,-5690.59
    note-enUS Talk to Daryl the Youngling
    note-ptBR Fale com Daryl the Youngling
    turnin 257
step
    ifskillbelow cooking 50
    goto 1432 @-4269.26,-5653.23
    note-enUS Talk to Xandar Goodbeard
    note-ptBR Fale com Xandar Goodbeard
    note-enUS Buy a [Simple Wood] and a [Flint and Tinder] from him
    note-ptBR Compre um [Simple Wood] e um [Flint and Tinder] dele
    note-enUS This is used to make [Basic Campfires] on Boats to level your [Cooking] skill without losing time
    note-ptBR Isto é usado para fazer [Basic Campfires] nos barcos e subir sua habilidade de [Cooking] sem perder tempo
    note-enUS You need 50 [Cooking] for a quest in Duskwood later
    note-ptBR Você precisa de 50 em [Cooking] para uma missão em Duskwood mais tarde
    collect 4470 1
    collect 4471 1
step
    path seq 1432 @-3019.02,-5369.4
    goto 1432 @-3020.95,-5359.09
    note-enUS Die and respawn at the Spirit Healer
    note-ptBR Morra e renasça no Spirit Healer
    note-enUS Talk to Jern Hornhelm
    note-ptBR Fale com Jern Hornhelm
    turnin 298
    accept 301
step
    goto 1432 @-2929.87,-5424.84
    note-enUS Talk to Thorgrum
    note-ptBR Fale com Thorgrum
    fly 1455
    note-enUS Fly to Ironforge
    note-ptBR Voe para Ironforge
step
    goto 1455 @-1188.54,-4761.37
    note-enUS Talk to Daryl Riknussun
    note-ptBR Fale com Daryl Riknussun
    train 2550
    note-enUS Train [Cooking]
    note-ptBR Treine [Cooking]
step
    goto 1455 @-1303.75,-4631.19
    note-enUS Talk to Prospector Stormpike
    note-ptBR Fale com Prospector Stormpike
    turnin 301
step
    goto 1455 @-1330.28,-4840.43
    note-enUS Enter the Deeprun Tram
    note-ptBR Entre no Deeprun Tram
    note-enUS Talk to Monty on the middle platform
    note-ptBR Fale com Monty na plataforma do meio
    accept 6661
step
    use 17117
    note-enUS Use the [Rat Catcher's Flute] on Deeprun Rats
    note-ptBR Use o [Rat Catcher's Flute] nos Deeprun Rats
    objective 6661/1
step
    note-enUS Talk to Monty
    note-ptBR Fale com Monty
    turnin 6661
    accept 6662
step
    note-enUS Take the Deeprun Tram to the Stormwind side
    note-ptBR Pegue o Deeprun Tram para o lado de Stormwind
    note-enUS Talk to Nipsy on the middle platform on the Stormwind side of the Deeprun Tram
    note-ptBR Fale com Nipsy na plataforma do meio, no lado de Stormwind do Deeprun Tram
    turnin 6662
step
    zone 1453
    note-enUS Enter Stormwind
    note-ptBR Entre em Stormwind
step
    goto 1453 @685.22,-8387.23
    note-enUS Talk to Grimand Elmore
    note-ptBR Fale com Grimand Elmore
    accept 353
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
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    goto 1453 @613,-8796.03
    note-enUS Talk to Woo Ping
    note-ptBR Fale com Woo Ping
    trainer
    note-enUS Train Staves
    note-ptBR Treine Staves
step
    goto 1453 @765.7,-8804
    note-enUS Talk to Catherine Leland
    note-ptBR Fale com Catherine Leland
    note-enUS Buy one [Shiny Bauble] and three [Nightcrawlers] from her. This is for a 900xp quest
    note-ptBR Compre um [Shiny Bauble] e três [Nightcrawlers] dela. Isso é para uma missão de 900 de XP
    collect 6529 1 |quest 95065 |q 95065/1
    collect 6530 3 |quest 95065 |q 95065/1
step
    goto 1453 @1269.1,-8540.6
    note-enUS Talk to Gilbert Gray
    note-ptBR Fale com Gilbert Gray
    accept 95065
    turnin 95065
step
    only Hunter
    goto 1453 @1330.1,-8645.4
    note-enUS On the Boat if it just arrived or on the dock if the boat just left: |only Hunter
    note-ptBR No barco, se ele acabou de chegar, ou no cais, se o barco acabou de partir: |only Hunter
    note-enUS Create a [Basic Campfire] (in your Profession Book) |only Hunter
    note-ptBR Crie uma [Basic Campfire] (no seu Livro de Profissões) |only Hunter
    note-enUS On the Boat if it just arrived or on the dock if the boat just left: |only Hunter
    note-ptBR No barco, se ele acabou de chegar, ou no cais, se o barco acabou de partir: |only Hunter
    note-enUS Create a [Basic Campfire] (in your Profession Book) |only Hunter
    note-ptBR Crie uma [Basic Campfire] (no seu Livro de Profissões) |only Hunter
    note-enUS On the Boat if it just arrived or on the dock if the boat just left: |only Hunter
    note-ptBR No barco, se ele acabou de chegar, ou no cais, se o barco acabou de partir: |only Hunter
    note-enUS Create a [Basic Campfire] (in your Profession Book) |only Hunter
    note-ptBR Crie uma [Basic Campfire] (no seu Livro de Profissões) |only Hunter
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
    note-enUS Take the boat to Darkshore
    note-ptBR Pegue o barco para Darkshore
step
    only Hunter
    goto 1453 @1330.1,-8645.4
    zone 1439
    note-enUS Take the boat to Darkshore
    note-ptBR Pegue o barco para Darkshore
]==])
