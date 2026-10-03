-- Convertido automaticamente de Guidelime_Zarant (Alliance/41-43_STV.lua).
-- (c) Zarant - GNU GPL v3 (ver LICENSE.txt). Gerado por tools/guidelime2azimute.py.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id classic.a.41-43-stv-swamp-of-sorrows
#name 41-43 STV/Swamp of Sorrows
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 41-43
#zones 1434 1435
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    vendor |opt
    note-enUS Withdraw the following items from your bank: Perenolde Tiara Tomes of Alterac Kravel's Scheme Sample Elven Gem -BANKFRAME_OPENED,
    note-ptBR Retire os seguintes itens do seu banco: Perenolde Tiara Tomes of Alterac Kravel's Scheme Sample Elven Gem -BANKFRAME_OPENED,
step
    only Hunter
    trainer |opt
    note-enUS Train skills Make sure your pet has Frost Resistance maxed out
    note-ptBR Treine habilidades. Certifique-se de que seu mascote esteja com a Resistência a Gelo no máximo
step
    note-enUS Take the tram to Stormwind
    note-ptBR Pegue o bonde para Stormwind
    turnin 543
step
    turnin 542
step
    accept 1363
    turnin 1363
    accept 1364
    note-enUS Accept pt.1 Run upstairs and turn in pt.1 Accept pt.2
    note-ptBR Aceite a pt.1 Suba as escadas correndo e entregue a pt.1 Aceite a pt.2
step
    accept 1477
    note-enUS Accept at the mage tower
    note-ptBR Aceite na torre dos magos
step
    accept 2861
    note-enUS Enter the portal and accept at the mage trainer
    note-ptBR Entre no portal e aceite com o instrutor de Mago
step
    only Druid Mage Paladin Priest Rogue Warlock Warrior
    accept 212
step
    only Druid Mage Paladin Priest Rogue Warlock Warrior
    goto 1453 53.57,64.79
    home
    note-enUS Set your HS to Stormwind
    note-ptBR Defina sua Pedra de Regresso em Stormwind
step
    only Druid Mage Paladin Priest Rogue Warlock Warrior
    fly 1436
step
    only Druid Mage Paladin Priest Rogue Warlock Warrior
    accept 193
    accept 196
step
    only Druid Mage Paladin Priest Rogue Warlock Warrior
    complete 212
step
    note-enUS Do the raptor mastery quest and turn it in if you have time to spare Stop questing if the timer is <5 mins |only Druid Mage Paladin Priest Rogue Warlock Warrior
    note-ptBR Faça a missão raptor mastery e entregue-a se tiver tempo sobrando Pare de fazer missões se o cronômetro estiver <5 min |only Druid Mage Paladin Priest Rogue Warlock Warrior
    accept 205
    accept 202
step
    only Druid Mage Paladin Priest Rogue Warlock Warrior
    hearth
step
    only Druid Mage Paladin Priest Rogue Warlock Warrior
    turnin 212
step
    fp
step
    turnin 1116
    note-enUS Turn in at the top floor
    note-ptBR Entregue no último andar
step
    accept 209
    note-enUS Accept at the top floor
    note-ptBR Aceite no último andar
step
    turnin 669
step
    turnin 603
    accept 610
    note-enUS Turn in at the middle floor Accept
    note-ptBR Entregue no andar do meio. Aceite
step
    accept 600
    accept 621
step
    turnin 1118
step
    home
    note-enUS Set your HS to Booty Bay
    note-ptBR Defina sua Pedra de Regresso em Booty Bay
step
    accept 617
step
    accept 606
step
    accept 628
step
    accept 595
step
    complete 610
    turnin 595
    accept 597
    note-enUS Kill Click on the map on top of a barrel Turn in Accept
    note-ptBR Mate Clique no mapa em cima de um barril Entregue Aceite
step
    turnin 597
    accept 599
step
    turnin 610
    accept 611
    note-enUS Turn in at the middle floor Accept
    note-ptBR Entregue no andar do meio. Aceite
step
    accept 587
    note-enUS Accept at the top floor
    note-ptBR Aceite no último andar
step
    turnin 599
step
    accept 576
step
    goto 1434 33.58,66.24 150
    complete 606
    note-enUS Do Save Gorilla Fangs for later
    note-ptBR Faça Guarde os Gorilla Fangs para depois
step
    complete 196
    note-enUS Do -Raptor mastery 3
    note-ptBR Faça -Raptor mastery 3
step
    goto 1434 41.65,43.69 185
    complete 197 |opt
    note-enUS Kill Tethis if you have the associated quest, skip this step otherwise
    note-ptBR Mate Tethis se tiver a missão associada; caso contrário, pule esta etapa
    complete 600
step
    path seq 1434 45.7,32.62
    goto 1434 45.3,42.41 152
    complete 205
    complete 209
    note-enUS Kill doctors/mystics Gather Skullsplitter Tusks
    note-ptBR Mate doctors/mystics. Colete Skullsplitter Tusks
step
    goto 1434 49.6,24.02 30
    complete 193
    note-enUS Look for Bhag'thera with eagle eye You can found it either north or west of the ogre mound
    note-ptBR Procure Bhag'thera com o eagle eye. Você pode encontrá-lo ao norte ou a oeste do monte dos ogros
step
    goto 1434 49.3,4.98 128
    complete 202
step
    turnin 205
step
    turnin 202
step
    turnin 193
    turnin 196
    accept 197
step
    complete 628
    note-enUS Look for an elite croc along the coast
    note-ptBR Procure um croc elite ao longo da costa
step
    goto 1434 24.96,23.59
    complete 611
    note-enUS Use Catelyn's Blade at the altar underwater Kill
    note-ptBR Use a Catelyn's Blade no altar debaixo d'água. Mate
step
    hearth
    note-enUS Hearth back to Booty Bay
    note-ptBR Use a Pedra de Regresso para voltar a Booty Bay
step
    turnin 600
step
    turnin 209
    note-enUS Turn in at the top floor
    note-ptBR Entregue no último andar
step
    accept 604
    turnin 611
step
    vendor |opt
    note-enUS Withdraw Khadgar's Essays on Dimensional Convergence if you have it -BANKFRAME_OPENED,
    note-ptBR Retire o Khadgar's Essays on Dimensional Convergence se tiver -BANKFRAME_OPENED,
step
    note-enUS Withdraw Green Hills pages from your bank Ch.1: 1,4,6,8 Ch.2: 10,11,14,16 Ch.3: 18,20,21,24 Ch.4: 25,26,27
    note-ptBR Retire as páginas de Green Hills do seu banco Ch.1: 1,4,6,8 Ch.2: 10,11,14,16 Ch.3: 18,20,21,24 Ch.4: 25,26,27
step
    turnin 606
    accept 607
step
    turnin 607
    accept 609
step
    turnin 628
step
    complete 587 |opt
    note-enUS Kill every pirate you see
    note-ptBR Mate todos os piratas que vir
step
    goto 1434 27.27,62.11 184
    complete 617
step
    complete 604
step
    complete 587
    complete 576
step
    accept 624
    note-enUS Use eagle eye to find It's a small parchment that can spawn inside one of the 3 ships Right click the parchment and accept the quest from the item in your bag
    note-ptBR Use o eagle eye para encontrar. É um pequeno pergaminho que pode surgir dentro de um dos 3 navios. Clique com o botão direito no pergaminho e aceite a missão do item na sua bolsa
step
    objective 609/3
step
    objective 609/2
    objective 609/1
    complete 621
    note-enUS Kill Jon-Jon the Crow Kill Maury "Club Foot" Wilkins Get 12 mixtures
    note-ptBR Mate Jon-Jon the Crow Mate Maury "Club Foot" Wilkins Pegue 12 misturas
step
    goto 1434 28.73,44.84 70
    complete 197
    note-enUS Do Tethis spawns in a random location
    note-ptBR Faça Tethis surge em um local aleatório
step
    turnin 197
    accept 208
step
    goto 1434 38.2,35.57 30
    complete 208
    note-enUS Do Kite it towards the quest giver, keep hitting the adds to prevent them from resetting
    note-ptBR Faça Leve-o (kite) até quem dá a missão, continue batendo nos adds para impedir que eles resetem
step
    turnin 208
step
    note-enUS Turn in all Green Hills pages
    note-ptBR Entregue todas as páginas de Green Hills
step
    turnin 1477
    accept 1395
step
    fly 1419
step
    note-enUS Run to Swamp of Sorrows Nethergarde supplies has a 1hr timer, be mindful of that
    note-ptBR Corra até Swamp of Sorrows. Nethergarde supplies tem um cronômetro de 1h, fique atento a isso
    turnin 624
    accept 625
step
    complete 1364 |opt
    note-enUS Kill all swamp creatures you see
    note-ptBR Mate todas as criaturas do pântano que vir
step
    accept 1398
step
    goto 1435 76.47,5.11 70
    complete 1398 |opt
    note-enUS Loot 8 pieces of driftwood along the coast
    note-ptBR Saqueie 8 pedaços de madeira flutuante ao longo da costa
    complete 1258
    note-enUS Get some crab legs
    note-ptBR Pegue algumas pernas de caranguejo
step
    complete 1398
step
    goto 1435 14.97,37.31 70
    complete 1364
step
    turnin 1398
    accept 1425
step
    note-enUS Run to Blasted Lands
    note-ptBR Corra até Blasted Lands
    turnin 1395
step
    turnin 1425
step
    turnin 1364
    note-enUS Turn in at the top of the tower
    note-ptBR Entregue no topo da torre
step
    fp
step
    turnin 587
    accept 2864
step
    accept 1117
step
    turnin 604
step
    turnin 621
    accept 1119
    accept 580
step
    turnin 617
    accept 623
step
    vendor |opt
    note-enUS Deposit the following items: Gorilla Fangs Carfully folded note -BANKFRAME_OPENED,
    note-ptBR Guarde os seguintes itens: Gorilla Fangs Carfully folded note -BANKFRAME_OPENED,
step
    vendor |opt
    note-enUS Withdraw the following items: Seaforium Booster -BANKFRAME_OPENED,
    note-ptBR Retire os seguintes itens: Seaforium Booster -BANKFRAME_OPENED,
step
    accept 2872
step
    turnin 609
step
    turnin 576
step
    note-enUS Take the Boat to Ratchet
    note-ptBR Pegue o barco para Ratchet
]==])
