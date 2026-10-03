-- Convertido automaticamente de Guidelime_Zarant (Alliance/38-39_Swamp.lua).
-- (c) Zarant - GNU GPL v3 (ver LICENSE.txt). Gerado por tools/guidelime2azimute.py.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id classic.a.38-39-swamp-of-sorrows
#name 38-39 Swamp of Sorrows
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 38-39
#zones 1435
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    accept 1448
step
    only Hunter
    accept 1363
    turnin 1363
    accept 1364
    note-enUS Accept pt.1 Run upstairs and turn in pt.1 Accept pt.2
    note-ptBR Aceite a pt.1 Suba as escadas correndo e entregue a pt.1 Aceite a pt.2
step
    accept 1260
step
    note-enUS Make sure you bank 15 Silk Cloth for later
    note-ptBR Certifique-se de guardar 15 Silk Cloth no banco para depois
    fly 1431
step
    turnin 228
    accept 229
step
    turnin 229
step
    turnin 1477
    accept 1395
step
    goto 1435 6.59,60.19 90
    note-enUS Run to Swamp of Sorrows
    note-ptBR Corra até Swamp of Sorrows
step
    goto 1435 13.96,61.67 166
    complete 1116 |opt
    note-enUS Start by grinding whelps You won't find enough whelps to finish this quest in 1 pass
    note-ptBR Comece farmando whelps. Você não encontrará whelps suficientes para concluir esta missão em 1 passada
    accept 1396
step
    complete 1364 |opt
    note-enUS Kill all swamp creatures you see, don't go out of the way to complete it
    note-ptBR Mate todas as criaturas do pântano que vir, não saia do caminho para concluir
step
    complete 1396 |opt
    note-enUS Do as you go along
    note-ptBR Faça enquanto avança
step
    goto 1435 47.1,38.83 20
    accept 1392
    note-enUS Kill Noboru, click the quest item Accept
    note-ptBR Mate Noboru, clique no item de missão Aceite
step
    accept 1389
    turnin 1392
step
    goto 1435 14.97,37.31 70
step
    complete 1116
step
    complete 1396
step
    turnin 1396
    accept 1421
step
    complete 1373 |opt
step
    complete 1389 |opt
    note-enUS Loot 6 blue crystals around the wooden huts
    note-ptBR Saqueie 6 cristais azuis ao redor das cabanas de madeira
step
    complete 1421
    note-enUS Loot the chest on top of the broken cart
    note-ptBR Saqueie o baú em cima da carroça quebrada
step
    accept 1393
step
    complete 1393
step
    complete 1389
step
    turnin 1393
    note-enUS Click on Galen's Strongbox Turn in
    note-ptBR Clique em Galen's Strongbox Entregue
step
    turnin 1389
step
    goto 1435 14.97,37.31 70
    complete 1364
step
    note-enUS If you haven't done Mazen's Behest yet, skip it and do it some time later Do NOT abandon the associated quest
    note-ptBR Se ainda não fez Mazen's Behest, pule-a e faça mais tarde NÃO abandone a missão associada
    turnin 1421
step
    goto 1435 67,47
    complete 1448
    note-enUS Do by swimming to the middle of the lake
    note-ptBR Faça nadando até o meio do lago
step
    hearth
    note-enUS Grind mobs until your HS is off cooldown Hearth to Booty Bay
    note-ptBR Faça grind de mobs até sua Pedra de Regresso sair da recarga Use a Pedra de Regresso para Booty Bay
step
    turnin 1116
    accept 1117
step
    fly 1453
step
    vendor |opt
    note-enUS Withdraw the following items: Water Breathing Potions Decrypted Letter Letter of Commendation Karnitol's Satchel Bag of Water Elemental Bracers Encrusted Tail Fins Mirefin Head -BANKFRAME_OPENED,
    note-ptBR Retire os seguintes itens: Water Breathing Potions Decrypted Letter Letter of Commendation Karnitol's Satchel Bag of Water Elemental Bracers Encrusted Tail Fins Mirefin Head -BANKFRAME_OPENED,
step
    vendor |opt
    note-enUS Deposit the following items in your bank: Blue Pearls Khadgar's Essays on Dimensional Convergence (if you have it) -BANKFRAME_OPENED,
    note-ptBR Guarde os seguintes itens no seu banco: Blue Pearls Khadgar's Essays on Dimensional Convergence (se tiver) -BANKFRAME_OPENED,
step
    accept 543
step
    turnin 1448
    accept 1449
step
    note-enUS Take the tram to IF
    note-ptBR Pegue o bonde para IF
    turnin 1457
step
    turnin 1467
step
    note-enUS Make sure you have water breathing pots for the next segment
    note-ptBR Certifique-se de ter poções de respiração aquática para o próximo segmento
    fp
]==])
