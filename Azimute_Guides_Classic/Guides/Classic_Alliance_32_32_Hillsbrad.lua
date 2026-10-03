-- Convertido automaticamente de Guidelime_Zarant (Alliance/32-32_Hillsbrad.lua).
-- (c) Zarant - GNU GPL v3 (ver LICENSE.txt). Gerado por tools/guidelime2azimute.py.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id classic.a.32-33-hillsbrad-arathi
#name 32-33 Hillsbrad/Arathi
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 32-33
#zones 1424 1417
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    goto 1437 10.8,60.4
    note-enUS Head to Menethil Harbor
    note-ptBR Vá até Menethil Harbor
    turnin 1301 |opt
    accept 1302 |opt
step
    goto 1437 10.6,60.4
    turnin 270 |opt
    accept 321 |opt
step
    turnin 1248
    accept 1249
step
    complete 1249
    note-enUS Go outside and defeat Tapoke Jahn
    note-ptBR Saia e derrote Tapoke Jahn
step
    turnin 1249
step
    accept 1250
step
    turnin 1250
    accept 1264
step
    goto 1437 12.1,64.19 20
    turnin 321
    accept 324
step
    goto 1437 9.54,69.7 180
    complete 324
step
    goto 1437 10.58,60.59 20
    turnin 324
    accept 322
step
    fp
step
    accept 522 |opt
    turnin 522 |opt
    note-enUS As you quest through Hillsbrad pay attention to the syndicate assassin event in southshore If you manage to kill an assassin, turn in the and skip the follow up
    note-ptBR Enquanto faz as missões em Hillsbrad, fique de olho no evento do assassino do syndicate em southshore Se conseguir matar um assassino, entregue a e pule a continuação
step
    goto 1424 52.41,55.96 20
    accept 564
step
    turnin 538
step
    goto 1424 50.34,59.04 20
    accept 659
step
    accept 9435
step
    goto 1424 51.46,58.38 20
    accept 536
step
    goto 1424 51.88,58.67 20
    accept 555
step
    home
    note-enUS Set your HS to
    note-ptBR Defina sua Pedra de Regresso em
step
    goto 1424 46.18,66.57 165
    complete 536
step
    goto 1424 51.46,58.38 20
    turnin 536
    accept 559
step
    goto 1424 32.04,72.81 166
    complete 559
step
    goto 1424 51.46,58.38 20
    turnin 559
    accept 560
step
    goto 1424 49.47,58.73 20
    turnin 560
    accept 561
step
    goto 1424 48.13,59.1 20
    accept 505
step
    goto 1424 51.46,58.38 20
    turnin 561
    accept 562
step
    goto 1424 57.31,67.82 139
    complete 562
step
    goto 1424 51.46,58.38 20
    turnin 562
    accept 563
step
    goto 1424 48.96,55.06
    vendor
    note-enUS Buy 4x Soothing Spices-OnStepActivation,BAG_UPDATE,
    note-ptBR Compre 4x Soothing Spices-OnStepActivation,BAG_UPDATE,
step
    goto 1416 40.15,92.44 140
    complete 689
    note-enUS Loot granite chunks inside the Yeti cave
    note-ptBR Saqueie granite chunks dentro da caverna dos Yetis
step
    goto 1416 30.92,84.58 100
    complete 564
step
    goto 1416 58.31,67.92 20
    accept 510
    accept 511
    note-enUS Click on the scroll on top of the table Accept Accept
    note-ptBR Clique no pergaminho em cima da mesa Aceite Aceite
step
    goto 1416 58.3,67.97 88
    complete 505
step
    goto 1424 69.3,12.4 60
    objective 555/1
    note-enUS Kill turtles along the river
    note-ptBR Mate tartarugas ao longo do rio
step
    goto 1422 42.93,85.06
    fp
step
    fp
step
    goto 1424 50.57,57.09 20
    turnin 511
    accept 514
step
    goto 1424 51.88,58.67 20
    turnin 555
step
    goto 1424 48.13,59.1 20
    turnin 505
    turnin 510
step
    goto 1424 52.41,55.96 20
    turnin 564
step
    fly 1417
step
    goto 1417 45.83,47.55 20
    accept 681
step
    goto 1417 46.65,47.01 20
    turnin 690
step
    goto 1417 60.18,53.84 20
    turnin 659
    accept 658
step
    only Hunter
    complete 658 |opt
    note-enUS Use eagle eye to find the Forsaken Courier If the courier is not in Arathi, look for it in Hillsbrad after finishing Northfold Manor
    note-ptBR Use o eagle eye para encontrar o Forsaken Courier. Se o courier não estiver em Arathi, procure-o em Hillsbrad depois de terminar Northfold Manor
step
    only Druid Mage Paladin Priest Rogue Warlock Warrior
    complete 658 |opt
    note-enUS Kill the Forsaken courier if you happen to bump into it. She patrols the road between Tarren Mill and Go'Shek Farm
    note-ptBR Mate a Forsaken courier se cruzar com ela. Ela patrulha a estrada entre Tarren Mill e Go'Shek Farm
step
    complete 681
step
    goto 1417 45.83,47.55 20
    hearth |only Hunter |opt
    fly 1417 |only Hunter |opt
    turnin 681
step
    only Hunter
    note-enUS Use eagle eye to find a level 32/33 spider Tame it and learn Bite rank 5
    note-ptBR Use o eagle eye para encontrar uma aranha nível 32/33. Dome-a e aprenda Bite rank 5
step
    turnin 658
    note-enUS Turn in Don't go out of your way to find the courier, you can skip this step and finish it later
    note-ptBR Entregue. Não saia do caminho para encontrar o mensageiro, você pode pular esta etapa e concluí-la depois
step
    hearth |only Druid Mage Paladin Priest Rogue Warlock Warrior |opt
    note-enUS Hearth to Southshore if you are far away from the Flight Path |only Druid Mage Paladin Priest Rogue Warlock Warrior
    note-ptBR Use a Pedra de Regresso para Southshore se estiver longe do caminho de voo |only Druid Mage Paladin Priest Rogue Warlock Warrior
    fly 1437
]==])
