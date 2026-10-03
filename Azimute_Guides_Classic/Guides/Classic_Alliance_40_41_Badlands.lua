-- Convertido automaticamente de Guidelime_Zarant (Alliance/40-41_Badlands.lua).
-- (c) Zarant - GNU GPL v3 (ver LICENSE.txt). Gerado por tools/guidelime2azimute.py.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id classic.a.40-41-badlands
#name 40-41 Badlands
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 40-41
#zones 1418
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    only Warlock
    turnin 543
    turnin 542
    note-enUS If you used the unstuck service to teleport to SW, turn in the following quests: If you had to fly to IF, abandon Raptor/Panther Mastery and skip this step
    note-ptBR Se usou o serviço de unstuck para se teletransportar para SW, entregue as seguintes missões: Se precisou voar até IF, abandone Raptor/Panther Mastery e pule esta etapa
step
    trainer |opt
    note-enUS Train skills Train pet skills
    note-ptBR Treine habilidades. Treine habilidades do mascote
step
    vendor |opt
    note-enUS Deposit the following items: Seaforium Booster Perenolde Tiara Tomes of Alterac Kravel's Scheme Sample Elven Gem -BANKFRAME_OPENED,
    note-ptBR Guarde os seguintes itens: Seaforium Booster Perenolde Tiara Tomes of Alterac Kravel's Scheme Sample Elven Gem -BANKFRAME_OPENED,
step
    vendor |opt
    note-enUS Withdraw the following items from your bank: Blue Pearls (x9) Buzzard Wings Fizzle Brassbolts' Letter -BANKFRAME_OPENED,
    note-ptBR Retire os seguintes itens do seu banco: Blue Pearls (x9) Buzzard Wings Fizzle Brassbolts' Letter -BANKFRAME_OPENED,
step
    turnin 1467
step
    accept 707
    turnin 554
step
    turnin 653
    accept 687
step
    fly 1432
step
    only Hunter
    home
    note-enUS Set your HS to Loch Modan
    note-ptBR Defina sua Pedra de Regresso em Loch Modan
step
    accept 2500
step
    turnin 707
    accept 738
step
    objective 2500/1 |opt
    objective 2500/2 |opt
    note-enUS Kill wolves/vultures as you quest through Badlands Make sure to prioritize vultures
    note-ptBR Mate lobos/vultures enquanto faz missões por Badlands. Priorize os vultures
step
    only Warlock
    accept 720
    note-enUS Click on the crumpled map next to the tent Accept -Quest Log space issues
    note-ptBR Clique no mapa amassado ao lado da tenda Aceite -problemas de espaço no registro de missões
step
    only Warlock
    turnin 720
step
    accept 719
    accept 718
step
    accept 720
    note-enUS Click on the crumpled map next to the tent Accept
    note-ptBR Clique no mapa amassado ao lado da tenda Aceite
step
    complete 719
step
    complete 718
    note-enUS Loot the crate at the ogre camp
    note-ptBR Saqueie o caixote no acampamento dos ogros
step
    turnin 718
    accept 733
    turnin 719
    turnin 720
step
    turnin 1106
    accept 1108
step
    accept 705 |opt
    turnin 705 |opt
    note-enUS Accept/Turn in Skip this step if you don't have 9 blue pearls
    note-ptBR Aceite/Entregue Pule esta etapa se não tiver 9 blue pearls
step
    accept 703
step
    turnin 703 |opt
step
    accept 732
step
    complete 732 |opt
    note-enUS Look for Boss Tho'grun as you quest
    note-ptBR Procure Boss Tho'grun enquanto faz missões
step
    turnin 738
    accept 739
step
    complete 1108 |opt
step
    complete 739
step
    turnin 687
    accept 692
step
    complete 692
step
    turnin 692
step
    turnin 1108
    accept 1137
    note-enUS Turn in Grind mobs while you watch the RP sequence Accept
    note-ptBR Entregue. Farme mobs enquanto assiste à sequência de RP. Aceite
step
    accept 710
step
    complete 710
step
    turnin 710
    accept 711
step
    goto 1418 14.7,35.3 30
    complete 711
step
    turnin 711
    accept 712
step
    goto 1418 16.12,60.47 50
    objective 2500/1
    complete 703
step
    complete 712
step
    complete 733
step
    turnin 712
step
    turnin 703
step
    turnin 733
step
    turnin 732
step
    only Hunter
    note-enUS Run to Searing Gorge
    note-ptBR Corra até Searing Gorge
    fp
    note-enUS Once you get to Searing Gorge, suicide and spirit rez at Thorium Point Get the FP
    note-ptBR Ao chegar a Searing Gorge, morra de propósito e ressuscite pelo curandeiro espiritual em Thorium Point. Pegue o caminho de voo
step
    only Hunter
    hearth
    note-enUS Hearth back to Loch Modan
    note-ptBR Use a Pedra de Regresso para voltar a Loch Modan
step
    only Druid Mage Paladin Priest Rogue Warlock Warrior
    goto 1427 37.8,30.6
    fly 1432
    note-enUS Once you get to Searing Gorge, throw away your HS, unstuck and spirit rez at Thorium Point Fly to
    note-ptBR Ao chegar a Searing Gorge, jogue fora sua Pedra de Regresso, use o unstuck e ressuscite pelo curandeiro espiritual em Thorium Point. Voe para
step
    turnin 2500
step
    turnin 739
step
    note-enUS Unstuck back to Thelsamar
    note-ptBR Use o unstuck para voltar a Thelsamar
    fly 1455
]==])
