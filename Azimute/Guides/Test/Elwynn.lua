-- Guia de TESTE (Aliança) para validar o motor no Forever.
-- IDs de quests/NPCs do Vale de Northshire original. As coordenadas são
-- APROXIMADAS: ajuste no jogo com /azimute pos antes de usar como guia real.
local addonName, ns = ...

ns.Registry:Register([[
#format 1
#id azimute.teste.northshire
#name Teste: Vale de Northshire
#name-enUS Test: Northshire Valley
#name-ptBR Teste: Vale de Northshire
#author Azimute
#version 1
#flavor forever
#faction Alliance
#race Human
#levels 1-4
#license CC-BY-4.0

step
    goto 1429 48.15,42.95
    talk 823
    accept 783
step
    goto 1429 48.92,41.61
    talk 197
    turnin 783
    accept 7
step
    -- sai da abadia e segue para o norte até o acampamento kobold
    path seq 1429 48.2,40.4 48.0,37.5 47.6,35.0
    kill 6 |q 7/1
step
    goto 1429 48.92,41.61
    talk 197
    turnin 7
]], "builtin")
