-- Convertido automaticamente de Guidelime_Zarant (Alliance/27-29_Wetlands.lua).
-- (c) Zarant - GNU GPL v3 (ver LICENSE.txt). Gerado por tools/guidelime2azimute.py.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id classic.a.29-30-ashenvale
#name 29-30 Ashenvale
#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute
#version 1
#flavor forever
#license GPL-3.0
#status experimental
#faction Alliance
#levels 29-30
#zones 1440
#group Leveling (Alliance)
#group-ptBR Evolução (Aliança)
#subgroup 30-60 Classic (Guidelime Zarant)
#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)

step
    fly 1442 |opt
    accept 1057
step
    complete 1078 |opt
step
    goto 1413 8.84,10.23 164
    complete 1057
step
    path seq 1443 54.76,0.47
    goto 1443 64.66,10.53
    fp
    note-enUS Head to Desolace Get the FP
    note-ptBR Vá até Desolace Pegue o caminho de voo
step
    fly 1442 |opt
    turnin 1057
    accept 1059
step
    fly 1440
step
    accept 4581
step
    accept 1024
    accept 1025
    accept 1054
step
    path seq 1440 34.74,44.67
    goto 1440 37.74,34.73
    complete 1054
    note-enUS Take the mountain shortcut Look for the named fulborg that patrols the camp
    note-ptBR Pegue o atalho da montanha. Procure o fulborg nomeado que patrulha o acampamento
step
    accept 1022
step
    accept 1021
step
    accept 1140
step
    turnin 1054
step
    accept 1035
step
    turnin 1024
    accept 1026
step
    goto 1440 54.41,35.39 20
    complete 1026
    note-enUS Kill Treants until a Wooden Key drops Loot the chest
    note-ptBR Mate Treants até cair uma Wooden Key. Saqueie o baú
step
    goto 1440 50.49,39.12 20
    complete 1022
    note-enUS Click on the book next to the big obelisk.
    note-ptBR Clique no livro ao lado do grande obelisco.
step
    path seq 1440 63.81,43.9
    goto 1440 78.32,44.82
    turnin 1021
    accept 1031
step
    goto 1440 77.99,42.41 20
    complete 1031
step
    turnin 4581
    accept 1011
step
    goto 1447 11.9,77.57
    fly 1440
step
    only Hunter
    note-enUS Take your main pet out of the stable
    note-ptBR Tire seu mascote principal do estábulo
step
    turnin 1022
    accept 1037
step
    turnin 1031
    accept 1032
step
    path seq 1440 41.84,49.48 46.88,49.59
    goto 1440 53.51,46.23
    turnin 1026
    accept 1027
step
    accept 1016
step
    goto 1440 50.14,67.94 |only Hunter
    trainer |only Hunter |opt
    note-enUS Loot 5 Intact Elemental Bracers
    note-ptBR Saqueie 5 Intact Elemental Bracers
    complete 1016
    note-enUS Right click the Divining Scroll
    note-ptBR Clique com o botão direito no Divining Scroll
step
    turnin 1016
step
    goto 1440 54.05,62.83 144
    complete 1025
step
    path seq 1440 61.15,71.95
    goto 1440 66.64,82.22
    complete 1035
step
    complete 1027 |opt
    note-enUS Kill slimes, loot the chest that spawn from their corpse
    note-ptBR Mate slimes, saqueie o baú que surge do cadáver deles
step
    goto 1440 75.29,72 31
    complete 1011
    note-enUS Loot one of the bottles at the forsaken camp Lots of stealthed mobs nearby, be careful
    note-ptBR Saqueie uma das garrafas no acampamento forsaken. Há muitos mobs furtivos por perto, tenha cuidado
step
    turnin 1011
step
    goto 1440 81.59,48.57 20
    objective 1140/2
    note-enUS Click on the first red crystal
    note-ptBR Clique no primeiro cristal vermelho
step
    goto 1440 66.62,56.99 20
    objective 1140/1
    note-enUS Click on the second red crystal
    note-ptBR Clique no segundo cristal vermelho
step
    complete 1032
    note-enUS Kill Satyrs in Night Run
    note-ptBR Mate Sátiros em Night Run
step
    turnin 1027
    accept 1028
step
    path seq 1440 55.69,51.24
    goto 1440 56.41,49.28
    turnin 1028
    accept 1055
step
    turnin 1055
    accept 1029
step
    turnin 1035
step
    turnin 1025
    turnin 1029
    accept 1030
step
    path seq 1440 51.96,68.27
    goto 1440 50.86,75.06
    turnin 1030
    accept 1045
    note-enUS Use the rod of transformation Turn in Accept
    note-ptBR Use a rod of transformation. Entregue. Aceite
step
    goto 1440 54.73,79.11 94
    complete 1045
step
    turnin 1045
    accept 1046
step
    note-enUS Death warp to astranaar
    note-ptBR Faça death warp até astranaar
    note-enUS You can either turn in Raene's Cleansing for 3k xp or abandon it if you wish to keep the fulborg rod
    note-ptBR Você pode entregar Raene's Cleansing por 3k de XP ou abandoná-la se quiser ficar com a fulborg rod
step
    turnin 1032
step
    turnin 1140
step
    fly 1438
step
    turnin 1037
    accept 1038
step
    goto 1438 30.15,64.25 20
    complete 1038
    note-enUS Loot the chest upstairs
    note-ptBR Saqueie o baú no andar de cima
step
    turnin 1038
    accept 1039
step
    hearth
]==])
