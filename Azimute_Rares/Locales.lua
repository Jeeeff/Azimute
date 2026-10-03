local addonName, R = ...

local L = setmetatable({}, { __index = function(_, key) return key end })
R.L = L

local enUS = {
    TITLE = "Azimute Rares",
    RARE_FOUND = "Rare nearby: %s",
    TREASURE_FOUND = "Treasure nearby: %s",
    CLICK_TO_GO = "Type /azr go to lead the arrow there.",
    GO_NONE = "No rare position to go to yet.",
    GOING = "Leading you to %s.",
    HISTORY = "Last rares seen:",
    HISTORY_EMPTY = "No rares seen yet.",
    AGO = "%d min ago",
    OPT_RARES = "Alert on rares",
    OPT_RARES_TIP = "Warns when a rare creature shows up on the minimap, nameplates, target or mouseover.",
    OPT_TREASURES = "Alert on treasures",
    OPT_TREASURES_TIP = "Also warns about treasures marked on the minimap.",
    OPT_SOUND = "Play a sound",
    OPT_SOUND_TIP = "Plays a sound with the alert.",
    OPT_PIN = "Map pin / arrow automatically",
    OPT_PIN_TIP = "Puts a pin on the map (and, with Azimute, the arrow) on the rare as soon as it is found.",
    HELP = {
        "/azr - last rares seen",
        "/azr go - arrow/pin to the last rare found",
        "/azr options - options",
    },
}

local ptBR = {
    TITLE = "Azimute Raros",
    RARE_FOUND = "Raro por perto: %s",
    TREASURE_FOUND = "Tesouro por perto: %s",
    CLICK_TO_GO = "Digite /azr ir para a seta levar até lá.",
    GO_NONE = "Ainda não há posição de raro para ir.",
    GOING = "Levando você até %s.",
    HISTORY = "Últimos raros vistos:",
    HISTORY_EMPTY = "Nenhum raro visto ainda.",
    AGO = "há %d min",
    OPT_RARES = "Avisar de raros",
    OPT_RARES_TIP = "Avisa quando um monstro raro aparece no minimapa, nas placas de nome, no alvo ou sob o mouse.",
    OPT_TREASURES = "Avisar de tesouros",
    OPT_TREASURES_TIP = "Também avisa de tesouros marcados no minimapa.",
    OPT_SOUND = "Tocar som",
    OPT_SOUND_TIP = "Toca um som junto com o aviso.",
    OPT_PIN = "Pino no mapa / seta automáticos",
    OPT_PIN_TIP = "Marca o raro no mapa (e, com o Azimute, a seta aponta para ele) assim que é encontrado.",
    HELP = {
        "/azr - últimos raros vistos",
        "/azr ir - seta/pino até o último raro achado",
        "/azr opcoes - opções",
    },
}

for key, value in pairs(enUS) do
    L[key] = value
end
if GetLocale() == "ptBR" then
    for key, value in pairs(ptBR) do
        L[key] = value
    end
end
