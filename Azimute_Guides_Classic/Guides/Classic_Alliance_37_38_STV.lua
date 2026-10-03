-- Convertido automaticamente de Guidelime_Zarant (Alliance/37-38_STV.lua).
-- (c) Zarant - GNU GPL v3 (ver LICENSE.txt). Gerado por tools/guidelime2azimute.py.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id classic.a.36-38-stv-2
#name 36-38 STV(2)
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 36-38
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    trainer |opt
    note-enUS If you used the unstuck feature to SW, remember to train your level 36 spells
    note-ptBR Se usou o recurso de unstuck para ir a SW, lembre-se de treinar seus feitiços de nível 36
step
    vendor |opt
    note-enUS Deposit the following items: Karnitol's Satchel Decrypted Letter Letter of Commendation Fizzle Brassbolts' Letter Buzzard Wing -BANKFRAME_OPENED,
    note-ptBR Guarde os seguintes itens: Karnitol's Satchel Decrypted Letter Letter of Commendation Fizzle Brassbolts' Letter Buzzard Wing -BANKFRAME_OPENED,
step
    vendor |opt
    note-enUS Withdraw Small Brass Key from your bank (if you have it) Make sure you have water breathing pots for this segment -BANKFRAME_OPENED,
    note-ptBR Retire a Small Brass Key do seu banco (se tiver). Certifique-se de ter poções de respiração aquática para este segmento -BANKFRAME_OPENED,
step
    home |opt
    note-enUS Set your HS to Booty Bay
    note-ptBR Defina sua Pedra de Regresso em Booty Bay
    turnin 1115 |opt
    accept 189
    accept 601
    accept 577
    note-enUS Accept Accept Accept -should have it form the previous segment
    note-ptBR Aceite Aceite Aceite -você já deve ter da parte anterior
step
    home |opt
    note-enUS Make sure to set your HS to Booty Bay OR Set your HS to Duskwood or Westfall if you used the unstuck self service to teleport to SW
    note-ptBR Defina sua Pedra de Regresso em Booty Bay OU em Duskwood ou Westfall se usou o unstuck de autoatendimento para teleportar para SW
step
    fly 1436 |opt
    turnin 325
    accept 55
step
    complete 228 |opt
    note-enUS Do He patrols around the northern side of the graveyard
    note-ptBR Faça Ele patrulha pelo lado norte do cemitério
step
    complete 55
    note-enUS Do Use the off-hand weapon provided to remove his shield
    note-ptBR Faça Use a arma de mão secundária fornecida para remover o escudo dele
step
    turnin 55
step
    fly 1431 |opt
step
    accept 574
    accept 207
step
    accept 200 |opt
step
    accept 192
    accept 195
    accept 188
    note-enUS Accept Accept Accept -should have it from the previous segment
    note-ptBR Aceite Aceite Aceite -você já deve ter da parte anterior
step
    turnin 200
    accept 328
    note-enUS Click on the pile of books upstairs Turn in Accept
    note-ptBR Clique na pilha de livros no andar de cima Entregue Aceite
step
    turnin 328
    accept 329
step
    complete 574
step
    goto 1434 48.64,22.95 120
    complete 192
step
    complete 577 |opt
    note-enUS Look for crocs along the river bank
    note-ptBR Procure crocs ao longo da margem do rio
step
    goto 1434 38.1,20.5 90
    complete 195
step
    complete 577
step
    complete 188
step
    complete 189 |opt
    note-enUS Collect as you go around
    note-ptBR Colete enquanto circula pela área
step
    objective 207/1
    note-enUS Loot the first tablet
    note-ptBR Saqueie a primeira tábua
step
    objective 207/4
    note-enUS Loot the fourth tablet
    note-ptBR Saqueie a quarta tábua
step
    objective 207/3
    note-enUS Loot the third tablet
    note-ptBR Saqueie a terceira tábua
step
    complete 189
step
    complete 601
step
    objective 207/2
    note-enUS Loot the second tablet underwater
    note-ptBR Saqueie a segunda tábua debaixo d'água
step
    note-enUS Collect 9 Blue Pearls from the clams around the coral reef-OnStepActivation,
    note-ptBR Colete 9 Blue Pearls dos mariscos ao redor do recife de coral-OnStepActivation,
step
    only Hunter
    complete 1107
    note-enUS Kill Murlocs for Encrusted Tail Fins
    note-ptBR Mate Murlocs para obter Encrusted Tail Fins
step
    turnin 207
    accept 205
step
    turnin 329
    accept 330
step
    turnin 574
    accept 202
step
    turnin 330
    accept 331
step
    turnin 331
step
    turnin 188
    turnin 195
    accept 196
    turnin 192
    accept 193
step
    hearth
step
    fp |opt
step
    turnin 1115
    accept 1116
    turnin 189
step
    turnin 601
    accept 602
step
    home
    note-enUS Set your HS to if you haven't-OnStepActivation
    note-ptBR Defina sua Pedra de Regresso em se ainda não fez isso-OnStepActivation
step
    turnin 577
step
    accept 628
step
    fly 1453
]==])
