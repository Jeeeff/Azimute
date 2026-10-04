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
    LIVE = "Live bar in combat",
    LIVE_TIP = "Shows the rotation icons in combat: dimmed when you cannot use them, with the cooldown sweep, and a glow on the next one when the game lets the addon know.",
    LIVE_ALWAYS = "Show the bar out of combat too",
    UNLOCK = "Move bar",
    LOCK = "Lock bar",
    KIND = {
        buff = "keep up", opener = "opener", dot = "keep on target", main = "main",
        reactive = "when it lights up", execute = "low health", filler = "filler",
        cd = "cooldown", aoe = "several enemies", util = "situational", heal = "healing", pet = "pet",
    },
    DIAG_TITLE = "What the game shows in combat (last fight):",
    DIAG_NONE = "No fight recorded yet: fight something and type /azrot diag again.",
    DIAG_LINE = "  %s: %s",
    DIAG_OK = "readable",
    DIAG_SECRET = "hidden (secret)",
    DIAG_MISSING = "not available",
    DIAG_NAMES = { usable = "Can use spell", cooldown = "Spell cooldown", duration = "Cooldown sweep",
        aura = "Your effects on the target", assisted = "Blizzard's Assisted Combat" },
    HELP = {
        "/azrot - rotation panel",
        "/azrot 1|2|3|4 - choose the specialization (0 = from talents)",
        "/azrot bar - turn the live bar on/off",
        "/azrot diag - what the game lets the addon read in combat",
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
    LIVE = "Barra ao vivo em combate",
    LIVE_TIP = "Mostra os ícones da rotação em combate: apagados quando não dá para usar, com o giro da recarga, e um brilho no próximo quando o jogo deixa o addon saber.",
    LIVE_ALWAYS = "Mostrar a barra fora de combate também",
    UNLOCK = "Mover barra",
    LOCK = "Travar barra",
    KIND = {
        buff = "manter ativo", opener = "abre a luta", dot = "manter no alvo", main = "principal",
        reactive = "quando acender", execute = "vida baixa", filler = "enchimento",
        cd = "recarga longa", aoe = "vários inimigos", util = "situacional", heal = "cura", pet = "ajudante",
    },
    DIAG_TITLE = "O que o jogo mostra em combate (última luta):",
    DIAG_NONE = "Nenhuma luta registrada ainda: lute com algo e digite /azrot diag de novo.",
    DIAG_LINE = "  %s: %s",
    DIAG_OK = "dá para ler",
    DIAG_SECRET = "escondido (secreto)",
    DIAG_MISSING = "não existe",
    DIAG_NAMES = { usable = "Pode usar o feitiço", cooldown = "Recarga do feitiço", duration = "Giro da recarga",
        aura = "Seus efeitos no alvo", assisted = "Combate Assistido da Blizzard" },
    HELP = {
        "/azrot - painel de rotação",
        "/azrot 1|2|3|4 - escolher a especialização (0 = pelos talentos)",
        "/azrot barra - ligar/desligar a barra ao vivo",
        "/azrot diag - o que o jogo deixa o addon ler em combate",
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
