-- Convertido automaticamente de Guidelime_Zarant (Alliance/56-57_BS.lua).
-- (c) Zarant - GNU GPL v3 (ver LICENSE.txt). Gerado por tools/guidelime2azimute.py.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id classic.a.56-57-burning-steppes
#name 56-57 Burning Steppes
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 56-57
#zones 1428
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    note-enUS Take the boat to Wetlands
    note-ptBR Pegue o barco para Wetlands
step
    fly 1455
step
    only Druid Mage Paladin Priest Rogue Warlock Warrior
    vendor |opt
    note-enUS Withdraw the following: Drawing Kit Filled Cursed Ooze Jar Filled Tainted Ooze Jar Janice's Parcel Black Dragonflight Molt -BANKFRAME_OPENED,
    note-ptBR Retire o seguinte: Drawing Kit Filled Cursed Ooze Jar Filled Tainted Ooze Jar Janice's Parcel Black Dragonflight Molt -BANKFRAME_OPENED,
step
    turnin 4512
step
    accept 4513
step
    turnin 3461
step
    goto 1455 18.54,51.66
    home
    note-enUS Set your HS to Ironforge
    note-ptBR Defina sua Pedra de Regresso em Ironforge
step
    accept 3702
step
    complete 3702
    note-enUS Listen to her story
    note-ptBR Ouça a história dela
step
    turnin 3702
    accept 3701
step
    fp
step
    accept 3823
step
    accept 4283
step
    accept 4182
step
    goto 1428 77.54,46.79 20
    objective 3823/2
    note-enUS Start by killing Firegut Ogres
    note-ptBR Comece matando Firegut Ogres
step
    goto 1428 82.8,37.4 60
    complete 3823
step
    turnin 3823
step
    accept 3824
step
    goto 1428 95.09,31.56
    accept 4022 |opt
    turnin 4022 |opt
    note-enUS Turn in Skip this step if you don't have the Black Dragonflight Molt
    note-ptBR Entregue. Pule esta etapa se não tiver o Black Dragonflight Molt
step
    accept 4726
    accept 4296
step
    complete 4726 |opt
    note-enUS Kill broodlings as you go along, use the quest item when they get low
    note-ptBR Mate broodlings pelo caminho, use o item de missão quando estiverem com pouca vida
step
    complete 4182 |opt
    note-enUS Prioritize killing broodlings over anything else
    note-ptBR Priorize matar broodlings acima de tudo
step
    complete 3701 |opt
    note-enUS Right click on the small stone obelisks on the ground
    note-ptBR Clique com o botão direito nos pequenos obeliscos de pedra no chão
step
    goto 1428 54.06,40.71
    complete 4296
step
    goto 1428 38.89,54.73
    complete 4283 |opt
    complete 3824
step
    complete 4283
step
    complete 4182
step
    turnin 4182
    accept 4183
step
    turnin 4283
    turnin 3824
    accept 3825
step
    fly 1433
step
    turnin 4183
    accept 4184
step
    fly 1453
step
    vendor |opt
    note-enUS Withdraw Janice's Parcel/Drawing Kit from your bank -BANKFRAME_OPENED,BAG_UPDATE BankW_Winterspring54
    note-ptBR Retire o Janice's Parcel/Drawing Kit do seu banco -BANKFRAME_OPENED,BAG_UPDATE BankW_Winterspring54
step
    turnin 5022
    accept 5048
step
    goto 1453 52.48,41.95
    turnin 5048
    accept 5050
    note-enUS Find Ol'Emma, she can roam around SW from time to time Turn in Accept
    note-ptBR Encontre Ol'Emma, ela às vezes circula por SW Entregue Aceite
step
    accept 6182
    turnin 4184
    accept 4185
step
    complete 4185
    note-enUS Speak with Lady Katrana Prestor and go through her whole dialogue
    note-ptBR Fale com Lady Katrana Prestor e passe por todo o diálogo dela
step
    turnin 4185
step
    accept 4186
step
    turnin 6182
    accept 6183
    turnin 6183
    accept 6184
step
    fly 1433
step
    turnin 4186
    accept 4223
step
    fly 1428
step
    turnin 4223
    accept 4224
step
    turnin 4726
    accept 4808
    turnin 4296
step
    complete 4224
    note-enUS Talk to Ragged John
    note-ptBR Fale com Ragged John
step
    goto 1428 81.04,46.71
    complete 3825
    note-enUS Click on the dirt mound on top of the mountain
    note-ptBR Clique no monte de terra no topo da montanha
step
    turnin 3825
step
    turnin 4224
step
    hearth
step
    vendor |opt
    note-enUS Withdraw the follwing items: Everlook report Studies in spirit speaking 4 relic fragments and Jaron's pick -BANKFRAME_OPENED,
    note-ptBR Retire os seguintes itens: Everlook report Studies in spirit speaking 4 relic fragments e Jaron's pick -BANKFRAME_OPENED,
step
    vendor |opt
    note-enUS Make sure you have 2 stacks of noggenfogger with you
    note-ptBR Certifique-se de ter 2 pilhas de noggenfogger com você
step
    vendor |opt
    note-enUS Deposit Tinkee's Letter in your bank -BANKFRAME_OPENED,
    note-ptBR Guarde a Tinkee's Letter no seu banco -BANKFRAME_OPENED,
step
    goto 1455 43.22,31.57
    accept 7807 |opt
    turnin 7807 |opt
    accept 7808 |opt
    turnin 7808 |opt
    accept 7809 |opt
    turnin 7809 |opt
    accept 7811 |opt
    turnin 7811 |opt
    note-enUS Do the Gnomeregan cloth turn ins: Wool Silk Mageweave Runecloth
    note-ptBR Faça as entregas de tecido de Gnomeregan: Wool Silk Mageweave Runecloth
step
    goto 1455 43.22,31.57
    accept 7802 |opt
    turnin 7802 |opt
    accept 7803 |opt
    turnin 7803 |opt
    accept 7804 |opt
    turnin 7804 |opt
    accept 7805 |opt
    turnin 7805 |opt
    note-enUS Do the Ironforge cloth turn ins: Wool Silk Mageweave Runecloth
    note-ptBR Faça as entregas de tecido de Ironforge: Wool Silk Mageweave Runecloth
step
    turnin 3701
step
    fp
]==])
