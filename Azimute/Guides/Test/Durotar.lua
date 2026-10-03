-- Guia de TESTE (Horda) para validar o motor no Forever.
-- IDs de quests/NPCs do Vale das Provações original. As coordenadas são
-- APROXIMADAS: ajuste no jogo com /azimute pos antes de usar como guia real.
local addonName, ns = ...

ns.Registry:Register([[
#format 1
#id azimute.teste.valeprovacoes
#name Teste: Vale das Provações
#name-enUS Test: Valley of Trials
#name-ptBR Teste: Vale das Provações
#author Azimute
#version 1
#flavor forever
#faction Horde
#race Orc Troll
#levels 1-4
#license CC-BY-4.0

step
    goto 1411 43.29,68.53
    talk 10176
    accept 4641
step
    -- entrada da caverna antes de falar com o Gornek
    path seq 1411 42.9,68.9
    goto 1411 42.07,68.33
    talk 3143
    turnin 4641
    accept 788
step
    path closest 1411 43.9,66.5 45.0,63.5 44.2,60.8
    kill 3098 |q 788/1
step
    goto 1411 42.07,68.33
    talk 3143
    turnin 788
]], "builtin")
