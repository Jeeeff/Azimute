-- Convertido automaticamente de Guidelime_Zarant (Alliance/54-56_Felwood-Winterspring.lua).
-- (c) Zarant - GNU GPL v3 (ver LICENSE.txt). Gerado por tools/guidelime2azimute.py.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id classic.a.54-55-felwood-winterspring
#name 54-55 Felwood/Winterspring
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 54-55
#zones 1448 1452
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    note-enUS Collect 6 Corrupted Soul Shards-OnStepActivation,
    note-ptBR Colete 6 Corrupted Soul Shards-OnStepActivation,
step
    turnin 4441
    note-enUS Go inside the small hut and turn in first
    note-ptBR Entre na pequena cabana e entregue primeiro
step
    turnin 5159
    accept 5165
step
    accept 4442
    turnin 4442
step
    goto 1448 54.2,86.8
    accept 5882
    turnin 5882
step
    objective 5165/1
    note-enUS Run to Jaedenar Douse the first flame
    note-ptBR Corra até Jaedenar. Apague a primeira chama
step
    accept 5202 |opt
    note-enUS Keep grinding mobs until you get the Blood Red Key Accept
    note-ptBR Continue o grind de mobs até conseguir a Blood Red Key Aceite
step
    objective 5165/4
    note-enUS Douse the second flame
    note-ptBR Apague a segunda chama
step
    objective 5165/3
    note-enUS Douse the third flame
    note-ptBR Apague a terceira chama
step
    objective 5165/2
    note-enUS Douse the fourth flame
    note-ptBR Apague a quarta chama
step
    turnin 5202
    accept 5203
    note-enUS Start the escort quest Turn in Accept
    note-ptBR Inicie a missão de escolta. Entregue. Aceite
step
    complete 5203
step
    goto 1448 49.55,29.71
    accept 4261
    note-enUS Stop by the northern GY, right click on the flute of the ancients and start the escort quest ( )
    note-ptBR Passe pelo cemitério do norte, clique com o botão direito na flute of the ancients e inicie a missão de escolta ( )
step
    complete 4261
step
    accept 8461
step
    complete 8461
step
    level 55
step
    turnin 8461
    accept 8465
step
    turnin 8465
    accept 8464
step
    turnin 3909
    accept 3912
step
    turnin 980
    accept 4842
    accept 5082
step
    complete 5082
step
    accept 5083
    note-enUS Keep grinding fulborgs until you get an Empty Firewater Flask Accept
    note-ptBR Continue o grind de fulborgs até conseguir um Empty Firewater Flask Aceite
step
    turnin 5082
    turnin 5083
    accept 5084
step
    turnin 5084
    accept 5085
    note-enUS Run back to Felwood Turn in Accept
    note-ptBR Volte correndo para Felwood. Entregue. Aceite
step
    turnin 5085
    accept 5086
    note-enUS Run back to Winterspring Turn in Accept
    note-ptBR Volte correndo para Winterspring. Entregue. Aceite
step
    complete 978
    note-enUS Look for blue feathers on the ground
    note-ptBR Procure penas azuis no chão
step
    only Hunter
    note-enUS Death skip to everlook |only Hunter
    note-ptBR Faça death skip até everlook |only Hunter
    fly 1438 |only Hunter |opt
    turnin 978
    accept 979
step
    hearth
    note-enUS Hearth to Ratchet or Tanaris
    note-ptBR Use a Pedra de Regresso para Ratchet ou Tanaris
step
    fly 1446
step
    accept 4504
step
    turnin 4496
step
    goto 1446 53.93,23.33
    note-enUS Use the Videre Elixir at the Tanaris graveyard
    note-ptBR Use o Videre Elixir no cemitério de Tanaris
    turnin 3912
    accept 3913
    note-enUS Speak to the ghost just north of the graveyard, you can only see him while dead Turn in Accept
    note-ptBR Fale com o fantasma logo ao norte do cemitério, você só consegue vê-lo enquanto estiver morto. Entregue. Aceite
step
    turnin 3913
    accept 3914
    note-enUS Click on the Conspicuous Gravestone Turn in Accept
    note-ptBR Clique no Conspicuous Gravestone Entregue Aceite
step
    fp
step
    turnin 3914
    accept 3941
step
    turnin 3941
    accept 3942
step
    complete 4504
step
    fly 1446
step
    turnin 4504
step
    fly 1447
step
    turnin 4261
step
    note-enUS Throw away the Flute of the Ancients
    note-ptBR Jogue fora a Flute of the Ancients
step
    goto 1448 54.15,86.84
    accept 5882
    turnin 5882
step
    turnin 5165
    accept 5242
step
    turnin 5203
    accept 5204
step
    turnin 3942
    accept 4084
step
    goto 1448 38.49,50.4
    complete 5204
    note-enUS Run to Jaedenar, enter the Shadow Hold Kill Rakaiah
    note-ptBR Corra até Jaedenar, entre no Shadow Hold. Mate Rakaiah
step
    goto 1448 38.49,50.4
    turnin 5204
    accept 5385
step
    goto 1448 38.86,46.79
    complete 5242
    note-enUS Go deeper into the Shadow Hold Do
    note-ptBR Vá mais fundo em Shadow Hold Faça
step
    objective 4084/1 |opt
    note-enUS Kill Bears/Wolves as you go through Felwood
    note-ptBR Mate Ursos/Lobos enquanto atravessa Felwood
step
    goto 1448 49.52,25.1 90
    complete 5086
step
    objective 4084/2
step
    goto 1448 65.4,7.1 80
    note-enUS Go to Winterspring through the fulborg tunnel
    note-ptBR Vá até Winterspring pelo túnel dos fulborgs
step
    turnin 5086
    accept 5087
step
    complete 5087 |opt
    note-enUS Look for winterfall runners as you quest
    note-ptBR Procure winterfall runners enquanto faz missões
step
    turnin 5250
    accept 5244
step
    accept 4861
    turnin 5244
    accept 5245
step
    objective 5245/2
step
    objective 5245/4
step
    objective 5245/3
step
    objective 5245/1
step
    goto 1452 61.3,38.9 150
]==])

register([==[
#format 1
#id classic.a.55-56-winterspring
#name 55-56 Winterspring
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 55-56
#zones 1452
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    goto 1452 61.3,38.9
    home
    note-enUS Set your Hearthstone to Everlook
    note-ptBR Defina sua Pedra de Regresso em Everlook
step
    accept 6030
    accept 6028
    accept 5601
step
    vendor |opt
    note-enUS Deposit the following items: Everlook report Studies in spirit speaking Rabine's Letter Cenarion Beacon Silvery Claws Irontree Heart Remains of Trey Lightforge Shadow Lord Fel'dan's Head Jaron's Pick All 4 Relics -BANKFRAME_OPENED,
    note-ptBR Guarde os seguintes itens: Everlook report Studies in spirit speaking Rabine's Letter Cenarion Beacon Silvery Claws Irontree Heart Remains of Trey Lightforge Shadow Lord Fel'dan's Head Jaron's Pick Todas as 4 Relíquias -BANKFRAME_OPENED,
step
    only Hunter
    accept 969
step
    accept 3783
step
    goto 1452 67.08,35.48 60
    complete 8464
    note-enUS Finish off Abandon this quest if the village is too crowded
    note-ptBR Termine Abandone esta missão se a vila estiver cheia demais
step
    complete 3783
step
    turnin 4861
    accept 4863
    note-enUS Click on the damaged crate Turn in Accept
    note-ptBR Clique no caixote danificado Entregue Aceite
step
    turnin 4863
    accept 4864
step
    objective 4864/1
    note-enUS Click on the small crate next to Jaron's Wagon
    note-ptBR Clique no pequeno caixote ao lado de Jaron's Wagon
step
    only Hunter
    goto 1452 65.49,60.5 |only Hunter
    objective 4864/2 |only Hunter |opt
    note-enUS Kill Owlbeasts Clear the thicket before starting the escort quest |only Hunter
    note-ptBR Mate Owlbeasts Limpe a mata antes de começar a missão de escolta |only Hunter
    turnin 979
    accept 4901
    note-enUS Start the escort quest Turn in Accept
    note-ptBR Inicie a missão de escolta. Entregue. Aceite
step
    only Druid Mage Paladin Priest Rogue Warlock Warrior
    turnin 979
    note-enUS Turn in Skip this step if you don't have the quest
    note-ptBR Entregue. Pule esta etapa se não tiver a missão
step
    only Hunter
    complete 4901
    note-enUS Escort Ranshalla Click on the torches once she gets inside one of the caves Right click the stone altar at the end
    note-ptBR Escolte Ranshalla Clique nas tochas quando ela entrar em uma das cavernas Clique com o botão direito no altar de pedra no final
step
    complete 4864
step
    only Hunter
    complete 969 |opt
    note-enUS Loot the blue crystals around the outer perimeter of the canyon Use your pet to bait the giants away from the crystals
    note-ptBR Saqueie os cristais azuis ao redor do perímetro externo do cânion. Use seu mascote para atrair os gigantes para longe dos cristais
step
    goto 1452 59.52,75.23
    complete 4842
    note-enUS Run south to Darkwhisper Gorge
    note-ptBR Corra para o sul até Darkwhisper Gorge
step
    hearth |opt
    turnin 3783
step
    only Hunter
    turnin 969
step
    turnin 4864
step
    note-enUS Use eagle eye to find the Winterfall Runners |only Hunter
    note-ptBR Use o eagle eye para encontrar os Winterfall Runners |only Hunter
    complete 5087
step
    turnin 4842
    turnin 5087
    accept 5121
step
    turnin 8464
step
    only Druid Mage Paladin Priest Rogue Warlock Warrior
    note-enUS Unstuck back to the graveyard
    note-ptBR Use o unstuck para voltar ao cemitério
    fly 1438 |opt
    turnin 978
    accept 979
step
    only Hunter
    turnin 4901
    accept 4902
step
    only Hunter
    vendor |opt
    note-enUS Withdraw the following: Drawing Kit Filled Cursed Ooze Jar Filled Tainted Ooze Jar Janice's Parcel Black Dragonflight Molt-BANKFRAME_OPENED,
    note-ptBR Retire o seguinte: Drawing Kit Filled Cursed Ooze Jar Filled Tainted Ooze Jar Janice's Parcel Black Dragonflight Molt-BANKFRAME_OPENED,
step
    only Hunter
    trainer |opt
step
    only Hunter
    turnin 4902
step
    fly 1439
]==])
