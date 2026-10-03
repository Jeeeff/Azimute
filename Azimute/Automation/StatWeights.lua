-- Pesos de atributos PRÓPRIOS do Azimute (GPL), para o que os pesos do
-- RestedXP não cobrem: Guerreiro, Ladino e Caçador, e os papéis de tanque e
-- de cura. Mesma escala dos perfis do RXP (Força 2,0; Poder de Ataque 1,0;
-- DPS de arma 14; acerto/crítico 4,8 por 1%; Vigor 0,75; armadura 0,035), para
-- as notas serem comparáveis. Valem do nível 1 ao 60; são estimativas de up
-- baseadas nas fórmulas do Classic (2 PA por Força para guerreiro/paladino/
-- druida, 1 PA por Agilidade para ladino/caçador, 14 PA = 1 DPS), não
-- números medidos. Ajuste aqui se o jogo mostrar algo diferente.
local addonName, ns = ...

local function Profile(class, spec, weights)
    weights.Class, weights.Spec, weights.Kind = class, spec, "Speedrun"
    weights.MIN_LEVEL, weights.MAX_LEVEL = 1, 60
    weights.Source = "azimute"
    return weights
end

local MELEE_STR = {
    ITEM_MOD_STRENGTH_SHORT = 2.00, ITEM_MOD_AGILITY_SHORT = 1.00, ITEM_MOD_STAMINA_SHORT = 0.75,
    ITEM_MOD_SPIRIT_SHORT = 0.50, ITEM_MOD_HEALTH_REGEN_SHORT = 1.75, ITEM_MOD_ATTACK_POWER_SHORT = 1.00,
    ITEM_MOD_DAMAGE_PER_SECOND_SHORT = 14.00, ITEM_MOD_HIT_RATING_SHORT = 4.80, ITEM_MOD_CRIT_RATING_SHORT = 4.80,
    RESISTANCE0_NAME = 0.035, ITEM_MOD_DEFENSE_SKILL_RATING_SHORT = 0.25, ITEM_MOD_DODGE_RATING_SHORT = 2.00,
    ITEM_MOD_PARRY_RATING_SHORT = 3.00,
}

local ROGUE = {
    ITEM_MOD_AGILITY_SHORT = 2.00, ITEM_MOD_STRENGTH_SHORT = 1.00, ITEM_MOD_STAMINA_SHORT = 0.75,
    ITEM_MOD_SPIRIT_SHORT = 0.30, ITEM_MOD_HEALTH_REGEN_SHORT = 1.75, ITEM_MOD_ATTACK_POWER_SHORT = 1.00,
    ITEM_MOD_DAMAGE_PER_SECOND_SHORT = 14.00, ITEM_MOD_HIT_RATING_SHORT = 4.80, ITEM_MOD_CRIT_RATING_SHORT = 4.80,
    RESISTANCE0_NAME = 0.030, ITEM_MOD_DEFENSE_SKILL_RATING_SHORT = 0.20, ITEM_MOD_DODGE_RATING_SHORT = 2.00,
}

local HUNTER = {
    ITEM_MOD_AGILITY_SHORT = 2.00, ITEM_MOD_INTELLECT_SHORT = 0.60, ITEM_MOD_STAMINA_SHORT = 0.75,
    ITEM_MOD_SPIRIT_SHORT = 0.50, ITEM_MOD_STRENGTH_SHORT = 0.10, ITEM_MOD_HEALTH_REGEN_SHORT = 1.75,
    ITEM_MOD_POWER_REGEN0_SHORT = 2.00, ITEM_MOD_ATTACK_POWER_SHORT = 0.20,
    ITEM_MOD_RANGED_ATTACK_POWER_SHORT = 1.00, ITEM_MOD_DAMAGE_PER_SECOND_SHORT = 2.00,
    ITEM_MOD_DAMAGE_PER_SECOND_SHORT_RANGED = 14.00, ITEM_MOD_HIT_RATING_SHORT = 4.80,
    ITEM_MOD_CRIT_RATING_SHORT = 4.80, RESISTANCE0_NAME = 0.030, ITEM_MOD_DODGE_RATING_SHORT = 1.00,
}

-- Tanque: vida e mitigação primeiro (Vigor, armadura, Defesa, esquiva/aparo/bloqueio).
local TANK_PLATE = {
    ITEM_MOD_STAMINA_SHORT = 2.00, ITEM_MOD_STRENGTH_SHORT = 1.20, ITEM_MOD_AGILITY_SHORT = 1.20,
    ITEM_MOD_SPIRIT_SHORT = 0.30, ITEM_MOD_HEALTH_REGEN_SHORT = 2.00, ITEM_MOD_ATTACK_POWER_SHORT = 0.50,
    ITEM_MOD_DAMAGE_PER_SECOND_SHORT = 6.00, ITEM_MOD_HIT_RATING_SHORT = 4.00, ITEM_MOD_CRIT_RATING_SHORT = 1.50,
    RESISTANCE0_NAME = 0.120, ITEM_MOD_DEFENSE_SKILL_RATING_SHORT = 2.50, ITEM_MOD_DODGE_RATING_SHORT = 8.00,
    ITEM_MOD_PARRY_RATING_SHORT = 8.00, ITEM_MOD_BLOCK_RATING_SHORT = 5.00, ITEM_MOD_BLOCK_VALUE_SHORT = 0.40,
}

local function With(base, extra)
    local copy = {}
    for key, value in pairs(base) do
        copy[key] = value
    end
    for key, value in pairs(extra) do
        copy[key] = value
    end
    return copy
end

local TANK_BEAR = {
    ITEM_MOD_STAMINA_SHORT = 2.00, ITEM_MOD_AGILITY_SHORT = 1.40, ITEM_MOD_STRENGTH_SHORT = 1.20,
    ITEM_MOD_INTELLECT_SHORT = 0.20, ITEM_MOD_SPIRIT_SHORT = 0.30, ITEM_MOD_HEALTH_REGEN_SHORT = 2.00,
    ITEM_MOD_ATTACK_POWER_SHORT = 0.60, ITEM_MOD_HIT_RATING_SHORT = 4.00, ITEM_MOD_CRIT_RATING_SHORT = 2.00,
    RESISTANCE0_NAME = 0.150, ITEM_MOD_DEFENSE_SKILL_RATING_SHORT = 1.50, ITEM_MOD_DODGE_RATING_SHORT = 8.00,
}

-- Cura: cura e "dano e cura mágicos" (no Classic também curam), mana e regeneração.
local HEALER = {
    ITEM_MOD_SPELL_HEALING_DONE = 2.50, STAT_SPELLDAMAGE = 2.20, ITEM_MOD_INTELLECT_SHORT = 1.20,
    ITEM_MOD_SPIRIT_SHORT = 1.00, ITEM_MOD_POWER_REGEN0_SHORT = 4.50, ITEM_MOD_STAMINA_SHORT = 0.75,
    ITEM_MOD_CRIT_SPELL_RATING_SHORT = 3.00, ITEM_MOD_HEALTH_REGEN_SHORT = 1.00, RESISTANCE0_NAME = 0.020,
    ITEM_MOD_DAMAGE_PER_SECOND_SHORT = 1.00,
}

ns.Gear:RegisterProfiles({
    Profile("Warrior", "Arms", With(MELEE_STR, {})),
    Profile("Warrior", "Fury", With(MELEE_STR, {})),
    Profile("Warrior", "Protection", With(TANK_PLATE, {})),
    Profile("Rogue", "Assassination", With(ROGUE, {})),
    Profile("Rogue", "Combat", With(ROGUE, {})),
    Profile("Rogue", "Subtlety", With(ROGUE, {})),
    Profile("Hunter", "Beast Mastery", With(HUNTER, {})),
    Profile("Hunter", "Marksmanship", With(HUNTER, {})),
    Profile("Hunter", "Survival", With(HUNTER, {})),
    Profile("Paladin", "Protection", With(TANK_PLATE, {
        ITEM_MOD_INTELLECT_SHORT = 0.60, ITEM_MOD_POWER_REGEN0_SHORT = 3.00, ITEM_MOD_SPIRIT_SHORT = 0.40,
        STAT_SPELLDAMAGE = 1.00, ITEM_MOD_SPELL_HEALING_DONE = 0.20,
    })),
    Profile("Paladin", "Holy", With(HEALER, { ITEM_MOD_SPIRIT_SHORT = 0.40, ITEM_MOD_DAMAGE_PER_SECOND_SHORT = 2.00 })),
    Profile("Priest", "Holy", With(HEALER, { ITEM_MOD_SPIRIT_SHORT = 1.30, ITEM_MOD_DAMAGE_PER_SECOND_SHORT_RANGED = 3.00 })),
    Profile("Druid", "Restoration", With(HEALER, { ITEM_MOD_SPIRIT_SHORT = 1.20 })),
    Profile("Druid", "Feral Combat (Tank)", With(TANK_BEAR, {})),
    Profile("Shaman", "Restoration", With(HEALER, { ITEM_MOD_SPIRIT_SHORT = 0.60, ITEM_MOD_DAMAGE_PER_SECOND_SHORT = 2.00 })),
})
