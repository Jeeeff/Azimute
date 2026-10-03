-- Convertido automaticamente de Guidelime_Zarant (Alliance/52-53_Felwood-Feralas-Azshara.lua).
-- (c) Zarant - GNU GPL v3 (ver LICENSE.txt). Gerado por tools/guidelime2azimute.py.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id classic.a.52-52-felwood
#name 52-52 Felwood
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 52-52
#zones 1448
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    note-enUS Take the boat to Darkshore
    note-ptBR Pegue o barco para Darkshore
    home
    note-enUS Set your HS to Auberdine
    note-ptBR Defina sua Pedra de Regresso em Auberdine
step
    fly 1438
step
    turnin 3661
step
    accept 978 |opt
    turnin 2944
    accept 2943
step
    vendor |opt
    note-enUS Deposit the follwing items: Janice's Parcel Flare gun Drawing kit -BANKFRAME_OPENED,
    note-ptBR Guarde os seguintes itens: Janice's Parcel Flare gun Drawing kit -BANKFRAME_OPENED,
step
    vendor |opt
    note-enUS Withdraw the following items: Jer'kai's Signet Ring Raschal's Report Insect Analysis Report Linken's Training Sword Package of Empty Ooze Containers Bloodpetal -BANKFRAME_OPENED,
    note-ptBR Retire os seguintes itens: Jer'kai's Signet Ring Raschal's Report Insect Analysis Report Linken's Training Sword Package of Empty Ooze Containers Bloodpetal -BANKFRAME_OPENED,
step
    trainer |opt
step
    vendor |opt
    note-enUS Restock on supplies, long grinding session ahead
    note-ptBR Reabasteça seus suprimentos, vem aí uma longa sessão de farm
step
    note-enUS Sunken Temple class quest
    note-ptBR Missão de classe do Sunken Temple
step
    only Hunter
    goto 1457 42.44,7.36
    accept 8151 |opt
step
    turnin 162
    accept 4493
step
    turnin 4267
step
    turnin 2972
step
    accept 978
    note-enUS Accept If you are not yet level 52, skip this step
    note-ptBR Aceite Se ainda não estiver no nível 52, pule esta etapa
step
    fly 1440
step
    fly 1447 |opt
    accept 5535
    accept 5536
step
    complete 5535 |opt
step
    complete 5536
    note-enUS Do Make sure to prioritize satyrs
    note-ptBR Faça Priorize os sátiros
step
    turnin 5535
    turnin 5536
step
    accept 4101
step
    accept 6131
step
    accept 5155
    accept 5156
    accept 4421
    note-enUS Run to the Emerald Sanctuary Accept Accept Accept
    note-ptBR Corra até o Emerald Sanctuary. Aceite. Aceite. Aceite
step
    goto 1448 40.77,66.86
    objective 4512/1
    note-enUS Kill slimes, use the Ooze jar on their corpses
    note-ptBR Mate slimes, use o Ooze jar nos cadáveres deles
step
    only Warlock
    complete 8419 |opt
step
    goto 1448 32.27,67.05 30
    complete 4421
step
    only Warlock
    turnin 8419
    accept 8421
step
    only Warlock
    objective 8421/2
step
    path seq 1448 40.48,59.07
    goto 1448 39.92,54.97
    objective 4512/2 |opt
    note-enUS Kill slimes, use the Ooze jar on their corpses
    note-ptBR Mate slimes, use o Ooze jar nos cadáveres deles
    complete 5155
step
    goto 1448 40.48,59.07 20
    objective 4512/2
step
    turnin 5155
    accept 5157
step
    turnin 4421
step
    accept 4906
step
    accept 5156
step
    accept 6131
step
    complete 6131
step
    turnin 6131
    accept 8462
step
    note-enUS Grind fulborgs until you get unfriendly with Timbermaw Hold
    note-ptBR Faça grind de fulborgs até ficar inamistoso com Timbermaw Hold
step
    note-enUS Keep grinding fulborgs until you have enough Mageweave for alliance cloth turn ins (12 stacks) You can skip the mageweave farm if you can afford to buy it from the AH
    note-ptBR Continue o grind de fulborgs até ter Mageweave suficiente para as entregas de tecido da aliança (12 pilhas) Você pode pular o farm de mageweave se puder comprá-lo na Casa de Leilões
step
    goto 1448 35.16,59.77
    complete 5157
    note-enUS Fill the empty canteen at the Jaedenar moonwell
    note-ptBR Encha o cantil vazio no moonwell de Jaedenar
step
    complete 5156
step
    goto 1448 39.07,22.31
    accept 939
step
    complete 4906
    complete 939
step
    only Warlock
    objective 8421/1
step
    goto 1448 56.1,17 70
    complete 4101
step
    goto 1448 62.5,24.24
    vendor |opt
    note-enUS Vendor stuff, you gonna spirit rez 3 times on the next segment
    note-ptBR Venda suas coisas, você vai ressuscitar pelo curandeiro espiritual 3 vezes no próximo segmento
    fp
step
    turnin 8462
step
    turnin 3908
    accept 3909
step
    complete 978
    note-enUS Look for Moontouched feathers on the ground Skip this step if you don't have this quest
    note-ptBR Procure Moontouched feathers no chão. Pule esta etapa se não tiver esta missão
step
    goto 1452 60.38,37.92 |only Hunter
    note-enUS Die and spirit rez at Everlook
    note-ptBR Morra e ressuscite com o Spirit Healer em Everlook
    fly 1448
step
    only Hunter
    note-enUS Tame a Felpaw Ravager, learn bite 7
    note-ptBR Dome um Felpaw Ravager, aprenda bite 7
step
    only Warlock
    note-enUS Death warp to the graveyard
    note-ptBR Faça death warp até o cemitério
    note-enUS Tame an Ironbeak Hunter or Angerclaw Mauler and learn claw 7 |only Hunter
    note-ptBR Dome um Ironbeak Hunter ou Angerclaw Mauler e aprenda claw 7 |only Hunter
    turnin 8421
step
    goto 1448 40.84,66.78 40
    note-enUS Run south to the slime pond Death warp to southern felwood
    note-ptBR Corra para o sul até o lago de slime. Faça um death warp para o sul de felwood
    turnin 4101
step
    goto 1452 16.27,99.89 20
    vendor |opt
    note-enUS Make sure you have a Cenarion Beacon
    note-ptBR Certifique-se de ter um Cenarion Beacon
step
    turnin 5157
    accept 5158
step
    turnin 939
    accept 4441
    turnin 4906
step
    turnin 5156
step
    hearth
step
    fp
]==])

register([==[
#format 1
#id classic.a.52-53-feralas
#name 52-53 Feralas
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 52-53
#zones 1444
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    vendor |opt
    note-enUS Withdraw the follwing items: Bloodpetal -BANKFRAME_OPENED,
    note-ptBR Retire os seguintes itens: Bloodpetal -BANKFRAME_OPENED,
step
    only Hunter
    note-enUS Withdraw your pet from the stables
    note-ptBR Retire seu mascote do estábulo
step
    fp
step
    accept 7733
step
    home
    note-enUS Set your HS to Feathermoon
    note-ptBR Defina sua Pedra de Regresso em Feathermoon
step
    turnin 2943
    accept 2879
step
    note-enUS Swim to the mainland
    note-ptBR Nade até o continente
    accept 7003
    accept 7721
step
    complete 7003
    complete 7721
step
    turnin 7003
    turnin 7721
step
    accept 7735 |opt
    note-enUS Grind Yetis until you get a pristine hide Accept -OnStepCompletion
    note-ptBR Faça grind de Yetis até conseguir uma pristine hide Aceite -OnStepCompletion
step
    complete 7733
step
    goto 1444 45.12,25.56
    turnin 4142 |opt
step
    goto 1444 45.12,25.56
    note-enUS Buy some bait from Gregan
    note-ptBR Compre um pouco de isca de Gregan
step
    accept 3909
step
    accept 2844
step
    goto 1444 44.64,10.59
    vendor
    note-enUS Give some bait to the gnoll guarding the Evoroot
    note-ptBR Dê um pouco de isca ao gnoll que guarda a Evoroot
step
    path seq 1444 38.53,15.78 37.76,12.22 40.52,12.69 39.91,9.47
    goto 1444 38.88,13.13
    complete 2879
    note-enUS Loot all 4 flames Right click on Troyas' Staff at the monolith
    note-ptBR Saqueie as 4 chamas. Clique com o botão direito no Troyas' Staff no monólito
step
    turnin 2879
    accept 2942
    note-enUS Click on the monolith Turn in Accept
    note-ptBR Clique no monólito Entregue Aceite
step
    note-enUS Grind harpies until your HS cooldown is <8 minutes
    note-ptBR Faça grind de harpias até a recarga da sua Pedra de Regresso ficar <8 minutos
step
    turnin 2844
    accept 2845
step
    objective 2845/1
    note-enUS Loot the chest next to the quest giver
    note-ptBR Saqueie o baú ao lado de quem dá a missão
step
    goto 1444 42.38,22
    complete 2845
step
    turnin 2845
step
    goto 1444 45.12,25.56
    complete 3909
    note-enUS Talk to Gregan and trade in the Evoroot
    note-ptBR Fale com Gregan e troque a Evoroot
step
    note-enUS Death warp to Dire Maul, enter DM east (this is a pre requisite for another quest later) -reliquary of purity
    note-ptBR Faça death warp até Dire Maul, entre em DM east (é pré-requisito para outra missão depois) -reliquary of purity
    hearth
    note-enUS Once you're inside the instance, hearth back to Feathermoon
    note-ptBR Quando estiver dentro da instância, use a Pedra de Regresso para voltar a Feathermoon
step
    turnin 2942
step
    turnin 7735 |opt
step
    turnin 7733
step
    fp
]==])

register([==[
#format 1
#id classic.a.53-53-azshara
#name 53-53 Azshara
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 53-53
#zones 1447
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    note-enUS This segment contains a heavy grinding session (about 2 hours long), you can skip it if you are planning to run dungeons before level 60 -v2
    note-ptBR Este segmento contém uma sessão de farm pesada (cerca de 2 horas), você pode pulá-la se planeja fazer masmorras antes do nível 60 -v2
step
    vendor |opt
    note-enUS Deposit the follwing items: Eridan's Vial Cenarion Beacon Filled Cursed Ooze Jar Filled Tainted Ooze Jar -BANKFRAME_OPENED,
    note-ptBR Guarde os seguintes itens: Eridan's Vial Cenarion Beacon Filled Cursed Ooze Jar Filled Tainted Ooze Jar -BANKFRAME_OPENED,
step
    vendor |opt
    note-enUS Withdraw the following: Drawing Kit Flare Gun -BANKFRAME_OPENED,
    note-ptBR Retire o seguinte: Drawing Kit Flare Gun -BANKFRAME_OPENED,
step
    note-enUS Make sure you have at least 1 stack of noggenfogger for this next segment
    note-ptBR Certifique-se de ter pelo menos 1 pilha de noggenfogger para o próximo segmento
step
    vendor |opt
    note-enUS Buy 3 stacks of food/water at the innkeeper
    note-ptBR Compre 3 pilhas de comida/água com o taverneiro
step
    home
    note-enUS Set your HS to Ratchet
    note-ptBR Defina sua Pedra de Regresso em Ratchet
step
    fly 1447
step
    vendor |opt
    note-enUS Buy extra arrows, long grinding session ahead
    note-ptBR Compre flechas extras, vem aí uma longa sessão de grind
step
    only Hunter
    goto 1447 42.37,42.61
    turnin 8151
    accept 8153
step
    only Hunter
    complete 8153 |opt
    note-enUS Kill mosshoof coursers as you quest
    note-ptBR Mate mosshoof coursers enquanto faz missões
step
    accept 3601
step
    goto 1447 57.02,29.45 170
    complete 3601 |opt
    note-enUS Loot the boxes scattered around the camp
    note-ptBR Saqueie as caixas espalhadas pelo acampamento
step
    turnin 3601
    accept 5534
step
    complete 5534 |opt
step
    goto 1447 39.57,50.32
    objective 3449/2
    note-enUS Click on the first monolith
    note-ptBR Clique no primeiro monólito
step
    goto 1447 36.95,53.18
    objective 3449/1
    note-enUS Click on the second monolith
    note-ptBR Clique no segundo monólito
step
    goto 1447 39.33,55.42
    objective 3449/3
    note-enUS Click on the third monolith
    note-ptBR Clique no terceiro monólito
step
    goto 1447 42.34,64.14
    objective 3449/4
    note-enUS Click on the fourth monolith
    note-ptBR Clique no quarto monólito
step
    turnin 5534
step
    note-enUS Grind until your HS cooldown is <5 minutes
    note-ptBR Faça grind até a recarga da sua Pedra de Regresso ficar <5 minutos
step
    only Hunter
    turnin 8153
    accept 8231
step
    goto 1447 88.47,29.61 200
    complete 8231
    note-enUS Kill Wavethrashers along the northeastern coast
    note-ptBR Mate Wavethrashers ao longo da costa nordeste
step
    turnin 8231
step
    path seq 1447 73.22,87.87
    goto 1447 77.8,91.32
    turnin 3449
    accept 3461
    note-enUS Go behind the giant statue Use noggenfoger to jump down to the small island east Use the flare gun at the landing pad Turn in Accept
    note-ptBR Vá para trás da estátua gigante Use o noggenfoger para pular até a pequena ilha a leste Use a pistola sinalizadora na plataforma de pouso Entregue Aceite
step
    note-enUS Destroy the flare gun
    note-ptBR Destrua a pistola sinalizadora
step
    hearth
step
    turnin 5158
    accept 5159
step
    vendor |opt
    note-enUS Deposit the following items: Drawing kit Purified Moonwell Water -BANKFRAME_OPENED,
    note-ptBR Guarde os seguintes itens: Drawing kit Purified Moonwell Water -BANKFRAME_OPENED,
step
    accept 4502
step
    complete 3444
    note-enUS Loot the small chest outside the metal hut
    note-ptBR Saqueie o pequeno baú do lado de fora da cabana de metal
step
    fly 1446
]==])
