-- Convertido automaticamente de Guidelime_Zarant (Alliance/32-34_1kNeedles.lua).
-- (c) Zarant - GNU GPL v3 (ver LICENSE.txt). Gerado por tools/guidelime2azimute.py.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id classic.a.33-34-thousand-needles
#name 33-34 Thousand Needles
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 33-34
#zones 1441
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    note-enUS Take the boat to Theramore
    note-ptBR Pegue o barco para Theramore
    fp
step
    only Hunter
    note-enUS Withdraw your main pet from the stables
    note-ptBR Retire seu mascote principal do estábulo
step
    accept 1282
step
    accept 1135
step
    home
    note-enUS Set your HS to
    note-ptBR Defina sua Pedra de Regresso em
step
    turnin 1302
    note-enUS Speak with Clerk Lendry Turn in
    note-ptBR Fale com Clerk Lendry. Entregue
step
    turnin 1264
    accept 1265
    turnin 1282
step
    goto 1445 66.4,51.5
    vendor |opt
    note-enUS Make sure you have 3x Soothing Spices -OnStepActivation,BAG_UPDATE,
    note-ptBR Certifique-se de ter 3x Soothing Spices -OnStepActivation,BAG_UPDATE,
step
    goto 1445 59.72,41.17
    complete 1265
    note-enUS Head to Sentry Point
    note-ptBR Vá até Sentry Point
step
    turnin 1265
    accept 1266
step
    accept 1218
    turnin 1218
step
    accept 1219
    note-enUS Click the dirt mound and accept
    note-ptBR Clique no monte de terra e aceite
step
    turnin 1266
    accept 1324
step
    complete 1324
    turnin 1324
step
    accept 1267
    turnin 1267
step
    accept 1177
step
    note-enUS Click on the badge on top of a wooden plank, on the black shield hanging on top of the fireplace and on the hoofprint right outside the inn
    note-ptBR Clique no distintivo em cima de uma tábua de madeira, no escudo preto pendurado acima da lareira e na pegada de casco logo do lado de fora da taverna
    accept 1284
    accept 1253
    accept 1252
step
    goto 1441 30.72,24.34 20
    accept 1100
    note-enUS Run to Thousand Needles Click on the book next to the dead dwarf Accept
    note-ptBR Corra até Thousand Needles. Clique no livro ao lado do anão morto. Aceite
step
    goto 1444 89.5,45.85
    fp
step
    turnin 1100
step
    turnin 1059
step
    complete 1135
step
    accept 1110
    note-enUS Talk to Kravel Koalbeard Accept Skip the other 2 quests from this quest giver
    note-ptBR Fale com Kravel Koalbeard. Aceite. Pule as outras 2 missões deste NPC
step
    accept 1104
    turnin 1179
    accept 1105
    note-enUS Talk with the gnome brothers Accept Turn in Accept
    note-ptBR Fale com os irmãos gnomos. Aceite. Entregue. Aceite
step
    accept 1176
step
    accept 1175
step
    complete 1175 |opt
    note-enUS Kill basilisks as you go around
    note-ptBR Mate basiliscos enquanto circula pela área
step
    goto 1446 58.91,0.27 50
    complete 1110
    complete 1104
    complete 1105
    complete 1176
    note-enUS Run counter clockwise around the race track until you complete all quests, make sure to prioritize vultures/scorpids
    note-ptBR Corra no sentido anti-horário ao redor da pista de corrida até concluir todas as missões, priorize vultures/scorpids
step
    turnin 1175
step
    turnin 1176
    accept 1178
step
    turnin 1105
    turnin 1104
step
    turnin 1110
    accept 1111
    accept 5762
step
    goto 1446 51.01,29.35
    fp
step
    hearth |opt
    turnin 1135
step
    turnin 1219
    accept 1220
step
    turnin 1220
    turnin 1252
    accept 1259
    turnin 1253
    accept 1319
    turnin 1284
step
    turnin 1259
    accept 1285
step
    turnin 1285
step
    turnin 1319
    accept 1320
step
    turnin 1320
step
    only Warlock
    fp
step
    only Druid Mage Paladin Priest Rogue Hunter Warrior
    goto 1445 51.71,14.43 25
    note-enUS Grind your way northwest towards Ratchet
    note-ptBR Faça grind no caminho para o noroeste em direção a Ratchet
step
    vendor |opt
    note-enUS Deposit the following items: Farren's Report Cleverly Encrypted Letter Alterac Granite Mirefin Head -BANKFRAME_OPENED,
    note-ptBR Guarde os seguintes itens: Farren's Report Cleverly Encrypted Letter Alterac Granite Mirefin Head -BANKFRAME_OPENED,
step
    only Druid Mage Paladin Priest Rogue Hunter Warrior
    note-enUS Unstuck to Ratchet once you get to The Barrens |only Druid Mage Paladin Priest Rogue Hunter Warrior
    note-ptBR Use o unstuck para ir a Ratchet quando chegar a The Barrens |only Druid Mage Paladin Priest Rogue Hunter Warrior
    fp
step
    turnin 1178
    accept 1180
step
    only Warlock
    turnin 4736 |only Warlock |opt
    turnin 4738
step
    only Warlock
    turnin 1798
    accept 1758
step
    turnin 1111
    accept 1112
step
    only Druid Mage Paladin Priest Rogue Warlock Warrior
    turnin 1039
    accept 1040
step
    note-enUS Take the Boat to Booty Bay-OnStepActivation,ZONE_CHANGED,ZONE_CHANGED_NEW_AREA,
    note-ptBR Pegue o barco para Booty Bay-OnStepActivation,ZONE_CHANGED,ZONE_CHANGED_NEW_AREA,
]==])
