-- Treino de classe: quais feitiços o personagem já pode aprender, quanto custam
-- e se o dinheiro dá. Dados por classe/nível vêm de um pacote
-- (AzimuteAPI.RegisterClassSpells), ex.: os do What's Training (MIT) no
-- Azimute_Guides_Forever. Na janela do treinador, um botão "Treinar tudo".
local addonName, ns = ...
local L = ns.L

local Trainer = {
    spells = {}, -- [CLASSE] = { [nível] = { { id, cost, requiredIds, requiredTalentId, faction } } }
}
ns.Trainer = Trainer

AzimuteAPI.RegisterClassSpells = function(data)
    for class, byLevel in pairs(data) do
        Trainer.spells[class] = byLevel
    end
end

local LOOKAHEAD_LEVELS = 2 -- "próximos níveis": até 2 níveis acima

local function Knows(spellID)
    if IsPlayerSpell and IsPlayerSpell(spellID) then
        return true
    end
    return IsSpellKnown and IsSpellKnown(spellID) or false
end

local function RequirementsMet(spell)
    if spell.faction and spell.faction ~= UnitFactionGroup("player") then
        return false
    end
    -- feitiços de raça (ex.: Sacerdote): "race" é o ID de raça do jogo
    if spell.race and spell.race ~= select(3, UnitRace("player")) then
        return false
    end
    if spell.requiredTalentId and not Knows(spell.requiredTalentId) then
        return false
    end
    for _, required in ipairs(spell.requiredIds or {}) do
        if not Knows(required) then
            return false
        end
    end
    return true
end

-- Feitiços para treinar agora e nos próximos níveis, com o custo total de cada grupo.
function Trainer:Summary()
    local class = ns.Engine.player.class or select(2, UnitClass("player"))
    local byLevel = self.spells[class]
    if not byLevel then
        return nil
    end
    local level = ns.Engine.player.level or UnitLevel("player")
    local now, soon = { cost = 0 }, { cost = 0 }
    for spellLevel, list in pairs(byLevel) do
        if spellLevel <= level + LOOKAHEAD_LEVELS then
            for _, spell in ipairs(list) do
                if not Knows(spell.id) and RequirementsMet(spell) then
                    local group = spellLevel <= level and now or soon
                    group[#group + 1] = { id = spell.id, cost = spell.cost or 0, level = spellLevel }
                    group.cost = group.cost + (spell.cost or 0)
                end
            end
        end
    end
    local byCost = function(a, b)
        return a.level < b.level
    end
    table.sort(now, byCost)
    table.sort(soon, byCost)
    return now, soon
end

-- Valor com os ícones de moeda. No 12.x/Forever a global GetCoinTextureString
-- saiu; a função mora em C_CurrencyInfo (e GetMoneyString é da interface).
local function Money(copper)
    local coins = (C_CurrencyInfo and C_CurrencyInfo.GetCoinTextureString) or GetCoinTextureString or GetMoneyString
    if coins then
        return coins(copper)
    end
    return ("%dg %ds %dc"):format(math.floor(copper / 10000), math.floor(copper / 100) % 100, copper % 100)
end
Trainer.Money = Money

-- Linha para a janela do guia (ou nil se não há nada para treinar).
function Trainer:Line()
    if not ns.db.trainerHints then
        return nil
    end
    local now = self:Summary()
    if not now or #now == 0 then
        return nil
    end
    local text = L["TRAINER_LINE"]:format(#now, Money(now.cost))
    if GetMoney and GetMoney() < now.cost then
        text = text .. " |cffff5555" .. L["TRAINER_NO_MONEY"] .. "|r"
    end
    return text
end

-- Dica com a lista (nomes traduzidos pelo cliente).
function Trainer:FillTooltip(tooltip)
    local now, soon = self:Summary()
    if not now then
        return
    end
    tooltip:AddLine(L["TRAINER_NOW"]:format(Money(now.cost)))
    for _, spell in ipairs(now) do
        tooltip:AddDoubleLine(ns.Names.Spell(spell.id) or ("#" .. spell.id), Money(spell.cost), 1, 1, 1, 1, 1, 1)
    end
    if #soon > 0 then
        tooltip:AddLine(" ")
        tooltip:AddLine(L["TRAINER_SOON"]:format(Money(soon.cost)))
        for _, spell in ipairs(soon) do
            tooltip:AddDoubleLine(("%s (%d)"):format(ns.Names.Spell(spell.id) or ("#" .. spell.id), spell.level),
                Money(spell.cost), 0.7, 0.7, 0.7, 0.7, 0.7, 0.7)
        end
    end
end

------------------------------------------------------------------------
-- Janela do treinador: botão "Treinar tudo" (só compra com o clique).
------------------------------------------------------------------------

local function TrainAll()
    if not (GetNumTrainerServices and GetTrainerServiceInfo and BuyTrainerService) then
        return
    end
    local bought = 0
    -- de trás para frente: comprar um serviço pode reordenar a lista
    for index = GetNumTrainerServices(), 1, -1 do
        local _, _, category = GetTrainerServiceInfo(index)
        local cost = GetTrainerServiceCost and GetTrainerServiceCost(index) or 0
        if category == "available" and (not GetMoney or cost <= GetMoney()) then
            BuyTrainerService(index)
            bought = bought + 1
        end
    end
    ns.Print(L["TRAINER_BOUGHT"]:format(bought))
end

local trainButton
ns:RegisterEvent("TRAINER_SHOW", function()
    if not ns.db.trainerHints or not ClassTrainerFrame then
        return
    end
    if not trainButton then
        trainButton = CreateFrame("Button", nil, ClassTrainerFrame, "UIPanelButtonTemplate")
        trainButton:SetSize(140, 22)
        trainButton:SetPoint("TOPRIGHT", ClassTrainerFrame, "BOTTOMRIGHT", 0, -2)
        trainButton:SetText(L["TRAINER_BUTTON"])
        trainButton:SetScript("OnClick", TrainAll)
    end
    trainButton:Show()
end)

ns:RegisterEvent("PLAYER_MONEY", function()
    ns:Fire("STEP_UPDATED")
end)
