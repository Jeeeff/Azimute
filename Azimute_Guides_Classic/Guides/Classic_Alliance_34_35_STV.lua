-- Convertido automaticamente de Guidelime_Zarant (Alliance/34-35_STV.lua).
-- (c) Zarant - GNU GPL v3 (ver LICENSE.txt). Gerado por tools/guidelime2azimute.py.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id classic.a.34-35-stv-1
#name 34-35 STV(1)
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 34-35
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    vendor |opt
    note-enUS Deposit the following items: Farren's Report Cleverly Encrypted Letter Alterac Granite Mirefin Head -BANKFRAME_OPENED,
    note-ptBR Guarde os seguintes itens: Farren's Report Cleverly Encrypted Letter Alterac Granite Mirefin Head -BANKFRAME_OPENED,
step
    goto 1434 26.34,73.56 20
    note-enUS Take the Boat to Booty Bay
    note-ptBR Pegue o barco para Booty Bay
    turnin 1180
    accept 1181
step
    only Druid Mage Paladin Priest Rogue Warlock Warrior
    turnin 1040
    accept 1041
step
    goto 1434 27.11,77.21 20
    accept 605
    note-enUS Enter the inn from the bottom floor Accept
    note-ptBR Entre na taverna pelo andar de baixo Aceite
step
    home
    note-enUS Set your HS to Booty Bay
    note-ptBR Defina sua Pedra de Regresso em Booty Bay
step
    path seq 1434 26.99,77.12
    goto 1434 26.94,77.2 20
    accept 213
    accept 198
    accept 201
    accept 616
    note-enUS Speak to Kebok Accept Speak to Krazek Accept Accept Accept
    note-ptBR Fale com Kebok. Aceite. Fale com Krazek. Aceite. Aceite. Aceite
step
    goto 1434 27.22,76.87 20
    turnin 616
    accept 578
    turnin 1181
    accept 1182
    note-enUS Talk to Baron Revilgaz Turn in Accept Turn in Accept
    note-ptBR Fale com Baron Revilgaz. Entregue. Aceite. Entregue. Aceite
step
    goto 1434 28.29,77.59 20
    accept 575
step
    note-enUS Throw away the Library Scrip
    note-ptBR Jogue fora o Library Scrip
step
    goto 1434 27.53,77.78
    fly 1436 |opt
    turnin 231
step
    turnin 198 |opt
step
    accept 215 |opt
    turnin 215 |opt
    note-enUS Turn in if you have it, otherwise keep an eye for Private Thorsen's RP sequence He patrols down the road every 30 minutes
    note-ptBR Entregue se tiver; caso contrário, fique atento à sequência de RP do Private Thorsen. Ele patrulha a estrada a cada 30 minutos
step
    goto 1436 92.05,81.87 20
    accept 203
    accept 204
    note-enUS Run to the STV/Duskwood border Accept Accept
    note-ptBR Corra até a divisa de STV/Duskwood. Aceite. Aceite
step
    path seq 1434 48.53,8.68
    goto 1434 24.5,17.37
    complete 605 |opt
step
    complete 575 |opt
step
    accept 583
    turnin 583
step
    accept 185
    accept 190
step
    turnin 5762 |opt
    complete 185 |opt
step
    turnin 185
    accept 186
step
    goto 1434 44.93,10.25 179
    complete 203
    complete 204
    note-enUS Do the Kurzen compound quests
    note-ptBR Faça as missões do complexo Kurzen
step
    goto 1434 46.75,15.81 100
    complete 186
    note-enUS Kill tigers, look for basilisks northeast
    note-ptBR Mate tigres, procure basiliscos a nordeste
step
    goto 1434 45.52,18.38
    complete 1182
    note-enUS Get the key from a named mob on top of the oil rig Open the chest inside the house next to the lumber mill
    note-ptBR Pegue a chave de um mob nomeado no topo da plataforma de petróleo Abra o baú dentro da casa ao lado da serraria
step
    goto 1434 45.48,20.24 121
    complete 213
step
    complete 190
step
    goto 1434 37.7,3.3 20
    accept 210
step
    goto 1436 92.05,81.87 20
    turnin 203
    turnin 204
step
    goto 1436 87.67,95.16 20
    turnin 190 |opt
    turnin 186
    accept 187
    turnin 5762
    accept 194
    accept 191
step
    goto 1436 76.35,95.88 171
    goto 1434 31.92,18.21 170
    complete 191
    complete 187
step
    goto 1434 26.87,16.32 163
    complete 194
step
    goto 1434 25.55,17.89 50
    complete 605
step
    goto 1434 20.7,22.7 60
    complete 578
    note-enUS Once all objectives are complete, head to the island west
    note-ptBR Quando todos os objetivos estiverem concluídos, vá para a ilha a oeste
step
    goto 1436 87.67,95.16 20
    turnin 187
    accept 188
    turnin 191
    accept 192
    turnin 194
    accept 195
step
    hearth
    note-enUS Hearth to Booty Bay
    note-ptBR Use a Pedra de Regresso para Booty Bay
step
    goto 1434 27.11,77.21 20
    turnin 605
step
    goto 1434 26.94,77.2 20
    turnin 201
    turnin 210
step
    goto 1434 26.99,77.12 20
    turnin 213
    accept 189
step
    goto 1434 27.22,76.87 20
    turnin 1182
    accept 1183
    turnin 578
    accept 601
step
    goto 1434 28.29,77.59 20
    turnin 575
    accept 577
step
    fly 1453
step
    vendor |opt
    note-enUS Withdraw the following items: Farren's Report Cleverly Encrypted Letter Alterac Granite Water Breathing Potions -BANKFRAME_OPENED,
    note-ptBR Retire os seguintes itens: Farren's Report Cleverly Encrypted Letter Alterac Granite Water Breathing Potions -BANKFRAME_OPENED,
step
    goto 1453 72.6,15.85 20
    turnin 563
step
    goto 1453 74.16,7.49
    accept 337 |opt
    turnin 337 |opt
    accept 538 |opt
    note-enUS Skip this step if you haven't found the quest item Turn in Accept
    note-ptBR Pule esta etapa se não tiver encontrado o item de missão. Entregue. Aceite
step
    turnin 322
    accept 325
step
    goto 1455 67.91,17.5 20
    note-enUS Take the tram to Ironforge
    note-ptBR Pegue o bonde para Ironforge
    accept 1453
step
    only Warlock
    turnin 1758
step
    goto 1455 74.64,11.74 20
    turnin 514
    accept 525
step
    goto 1455 39.03,88.05 20
    turnin 689
    accept 700
    note-enUS Turn in Wait for the RP sequence to end Accept
    note-ptBR Entregue. Espere a sequência de RP terminar. Aceite
step
    note-enUS Withdraw water breathing pots from your bank
    note-ptBR Retire poções de respiração aquática do seu banco
step
    goto 1455 39.09,56.19 20
    turnin 700
step
    fly 1437
]==])
