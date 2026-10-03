-- Guia de TESTE (Renegados) para validar o motor no Forever.
-- IDs de quests/NPCs de Deathknell original. As coordenadas são
-- APROXIMADAS: ajuste no jogo com /azimute pos antes de usar como guia real.
local addonName, ns = ...

ns.Registry:Register([[
#format 1
#id azimute.teste.deathknell
#name Teste: Sinoturvo
#name-enUS Test: Deathknell
#name-ptBR Teste: Sinoturvo
#author Azimute
#version 1
#flavor forever
#faction Horde
#race Scourge
#levels 1-4
#license CC-BY-4.0

step
    goto 1420 30.2,71.6
    talk 1568
    accept 363
step
    goto 1420 30.9,66.1
    talk 2307
    turnin 363
    accept 364
step
    path closest 1420 32.0,62.5 34.5,61.0 36.0,64.0
    kill 1501 |q 364/1
    kill 1502 |q 364/2
step
    goto 1420 30.9,66.1
    talk 2307
    turnin 364
]], "builtin")
