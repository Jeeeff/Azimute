local addonName, R = ...

local L = setmetatable({}, { __index = function(_, key) return key end })
R.L = L

local enUS = {
    TITLE = "Azimute Rotation",
    PANEL_TITLE = "Rotation: %s",
    NO_CLASS = "No rotation for this class yet.",
    SPEC_AUTO = "(from your talents)",
    SPEC_CHOSEN = "(chosen by you)",
    LEARN_LEVEL = "learn at level %d",
    LEARN_NOW = "learn at the trainer",
    TALENT = "talent",
    QUEST = "class quest (level %d)",
    KIND = {
        buff = "keep up", opener = "opener", dot = "keep on target", main = "main",
        reactive = "when it lights up", execute = "low health", filler = "filler",
        cd = "cooldown", aoe = "several enemies", util = "situational", heal = "healing", pet = "pet",
    },
    HELP = {
        "/azrot - rotation panel",
        "/azrot 1|2|3|4 - choose the specialization (0 = from talents)",
    },
}

local ptBR = {
    TITLE = "Azimute Rotação",
    PANEL_TITLE = "Rotação: %s",
    NO_CLASS = "Ainda não há rotação para esta classe.",
    SPEC_AUTO = "(pelos seus talentos)",
    SPEC_CHOSEN = "(escolhida por você)",
    LEARN_LEVEL = "aprende no nível %d",
    LEARN_NOW = "aprenda no treinador",
    TALENT = "talento",
    QUEST = "missão de classe (nível %d)",
    KIND = {
        buff = "manter ativo", opener = "abre a luta", dot = "manter no alvo", main = "principal",
        reactive = "quando acender", execute = "vida baixa", filler = "enchimento",
        cd = "recarga longa", aoe = "vários inimigos", util = "situacional", heal = "cura", pet = "ajudante",
    },
    HELP = {
        "/azrot - painel de rotação",
        "/azrot 1|2|3|4 - escolher a especialização (0 = pelos talentos)",
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
R.isPT = GetLocale() == "ptBR"
