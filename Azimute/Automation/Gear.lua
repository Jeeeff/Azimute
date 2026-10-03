-- Indicador de equipamento: dá uma nota a cada item pelos pesos de atributos
-- da classe/especialização/nível e compara com o que está equipado.
-- Os pesos vêm de um pacote de dados (AzimuteAPI.RegisterStatWeights), ex.:
-- o Azimute_Guides_Forever traz os pesos do RestedXP para o Forever.
local addonName, ns = ...
local L = ns.L

local Gear = {
    profiles = {}, -- lista de perfis { Class, Spec, Kind, MIN_LEVEL, MAX_LEVEL, pesos... }
}
ns.Gear = Gear

-- Pacotes de dados: AzimuteAPI.RegisterStatWeights({ perfil1, perfil2, ... })
AzimuteAPI.RegisterStatWeights = function(profiles)
    Gear:RegisterProfiles(profiles)
end

-- Especialização padrão de cada classe para upar (a primeira da lista é a usada
-- quando o jogador não escolheu nenhuma com /azimute spec).
local DEFAULT_SPECS = {
    DRUID = { "Feral Combat", "Balance" },
    MAGE = { "Frost", "AOE", "Fire", "Arcane" },
    PALADIN = { "Retribution" },
    PRIEST = { "Shadow", "Discipline" },
    SHAMAN = { "Enhancement", "Elemental" },
    WARLOCK = { "Affliction", "Destruction" },
    WARRIOR = { "Arms" },
    ROGUE = { "Combat" },
    HUNTER = { "Marksmanship" },
}

-- Espaços de equipamento por tipo de item (INVTYPE_*).
local SLOTS = {
    INVTYPE_HEAD = { 1 }, INVTYPE_NECK = { 2 }, INVTYPE_SHOULDER = { 3 },
    INVTYPE_CHEST = { 5 }, INVTYPE_ROBE = { 5 }, INVTYPE_WAIST = { 6 },
    INVTYPE_LEGS = { 7 }, INVTYPE_FEET = { 8 }, INVTYPE_WRIST = { 9 },
    INVTYPE_HAND = { 10 }, INVTYPE_FINGER = { 11, 12 }, INVTYPE_TRINKET = { 13, 14 },
    INVTYPE_CLOAK = { 15 }, INVTYPE_WEAPON = { 16, 17 }, INVTYPE_2HWEAPON = { 16 },
    INVTYPE_WEAPONMAINHAND = { 16 }, INVTYPE_WEAPONOFFHAND = { 17 },
    INVTYPE_SHIELD = { 17 }, INVTYPE_HOLDABLE = { 17 }, INVTYPE_RANGED = { 18 },
    INVTYPE_RANGEDRIGHT = { 18 }, INVTYPE_THROWN = { 18 }, INVTYPE_RELIC = { 18 },
}

-- Armadura que cada classe pode usar (subclasse 1 tecido, 2 couro, 3 malha,
-- 4 placa), usada quando o jogo não oferece C_PlayerInfo.CanUseItem.
local ARMOR_LIMIT = {
    WARRIOR = { 3, 4, 40 }, PALADIN = { 3, 4, 40 }, HUNTER = { 2, 3, 40 },
    SHAMAN = { 2, 3, 40 }, ROGUE = { 2 }, DRUID = { 2 },
    PRIEST = { 1 }, MAGE = { 1 }, WARLOCK = { 1 },
}

local ARMOR_CLASS = Enum and Enum.ItemClass and Enum.ItemClass.Armor or 4

------------------------------------------------------------------------
-- Perfis
------------------------------------------------------------------------

function Gear:RegisterProfiles(profiles)
    for _, profile in pairs(profiles) do
        if type(profile) == "table" and profile.Class then
            self.profiles[#self.profiles + 1] = profile
        end
    end
end

-- Nome para mostrar (traduzido) e o papel: "Proteção (tanque)", "Sagrado (cura)".
local ROLE = { Protection = "tank", ["Feral Combat (Tank)"] = "tank", Holy = "heal", Restoration = "heal" }
function Gear.SpecName(spec)
    if not spec or spec == "" then
        return "-"
    end
    local name = (L["SPEC_NAMES"] ~= "SPEC_NAMES" and L["SPEC_NAMES"][spec]) or spec
    local role = ROLE[spec]
    if role then
        name = name .. " (" .. L["ROLE_" .. role:upper()] .. ")"
    end
    return name
end

function Gear:SpecsForClass(class)
    local specs = {}
    local seen = {}
    for _, profile in ipairs(self.profiles) do
        if profile.Class:upper() == class then
            local spec = strtrim(profile.Spec or "")
            if not seen[spec] then
                seen[spec] = true
                specs[#specs + 1] = spec
            end
        end
    end
    table.sort(specs) -- ordem fixa para o /azimute spec <número>
    return specs
end

-- Árvores de talento na ordem do jogo (a 1ª aba, a 2ª, a 3ª) em inglês,
-- para casar com os perfis de pesos. Os nomes das abas no jogo vêm traduzidos.
local TREES = {
    WARLOCK = { "Affliction", "Demonology", "Destruction" },
    MAGE = { "Arcane", "Fire", "Frost" },
    PRIEST = { "Discipline", "Holy", "Shadow" },
    DRUID = { "Balance", "Feral Combat", "Restoration" },
    SHAMAN = { "Elemental", "Enhancement", "Restoration" },
    PALADIN = { "Holy", "Protection", "Retribution" },
    WARRIOR = { "Arms", "Fury", "Protection" },
    ROGUE = { "Assassination", "Combat", "Subtlety" },
    HUNTER = { "Beast Mastery", "Marksmanship", "Survival" },
}

-- Pontos gastos em cada aba de talentos (Forever: C_Traits). nil se indisponível.
-- Mesmo método da tela de talentos da Blizzard (Blizzard_ClassTalentsFrame).
function Gear:TalentTrees()
    if not (C_ClassTalents and C_ClassTalents.GetActiveConfigID and C_Traits
        and C_Traits.GetGroupDisplayInfoByTreeID and C_Traits.GetGroupCurrencyInfo) then
        return nil
    end
    local configID = C_ClassTalents.GetActiveConfigID()
    local config = configID and C_Traits.GetConfigInfo(configID)
    local treeID = config and config.treeIDs and config.treeIDs[1]
    if not treeID then
        return nil
    end
    local tabs = C_Traits.GetGroupDisplayInfoByTreeID(treeID) or {}
    table.sort(tabs, function(a, b)
        return (a.orderIndex or 0) < (b.orderIndex or 0)
    end)
    local groupIDs = {}
    for i, tab in ipairs(tabs) do
        groupIDs[i] = tab.groupID
    end
    local spentByGroup = {}
    for _, group in ipairs(C_Traits.GetGroupCurrencyInfo(configID, groupIDs) or {}) do
        local currency = group.currencyInfos and group.currencyInfos[1]
        spentByGroup[group.traitNodeGroupID] = currency and currency.spent or 0
    end
    local trees = {}
    for i, tab in ipairs(tabs) do
        trees[i] = { name = tab.displayName, spent = spentByGroup[tab.groupID] or 0 }
    end
    return trees
end

-- Especialização pelos talentos: a aba com mais pontos (nil se não der).
function Gear:TalentSpec(class)
    local names = TREES[class]
    if not names or InCombatLockdown() then
        return self.lastTalentSpec
    end
    local ok, trees = pcall(self.TalentTrees, self)
    if not ok or not trees then
        return self.lastTalentSpec
    end
    local best, bestSpent = nil, 0
    for i, tree in ipairs(trees) do
        if tree.spent > bestSpent then
            best, bestSpent = names[i], tree.spent
        end
    end
    self.lastTalentSpec = best
    return best
end

function Gear:CurrentSpec()
    local class = ns.Engine.player.class or select(2, UnitClass("player"))
    local chosen = ns.char and ns.char.gearSpec
    local available = self:SpecsForClass(class)
    -- 1) escolhida pelo jogador (/azimute spec n); 2) pelos talentos; 3) padrão
    for _, spec in ipairs(available) do
        if spec == chosen then
            return spec, "manual"
        end
    end
    local fromTalents = self:TalentSpec(class)
    for _, spec in ipairs(available) do
        if fromTalents and spec == fromTalents then
            return spec, "talents"
        end
    end
    for _, spec in ipairs(DEFAULT_SPECS[class] or {}) do
        for _, candidate in ipairs(available) do
            if candidate == spec then
                return spec
            end
        end
    end
    return available[1]
end

-- Perfil de pesos para o personagem agora (classe, especialização, nível).
function Gear:Profile()
    local class = ns.Engine.player.class or select(2, UnitClass("player"))
    local level = ns.Engine.player.level or UnitLevel("player")
    local spec = self:CurrentSpec()
    local kind = ns.db.gearHardcore and "Hardcore" or "Speedrun"
    -- Prioridade: pesos do pacote (RXP) no tipo certo > pacote em outro tipo >
    -- pesos próprios do Azimute (Automation/StatWeights.lua).
    local best, bestRank
    for _, profile in ipairs(self.profiles) do
        if profile.Class:upper() == class and strtrim(profile.Spec or "") == (spec or "")
            and level >= (profile.MIN_LEVEL or 1) and level <= (profile.MAX_LEVEL or 999) then
            local rank = (profile.Source == "azimute" and 0 or 2) + (profile.Kind == kind and 1 or 0)
            if not bestRank or rank > bestRank then
                best, bestRank = profile, rank
            end
        end
    end
    return best
end

------------------------------------------------------------------------
-- Nota de um item
------------------------------------------------------------------------

local function GetStats(link)
    if C_Item and C_Item.GetItemStats then
        return C_Item.GetItemStats(link)
    end
    return GetItemStats and GetItemStats(link)
end

local function ItemInfo(link)
    local getInfo = (C_Item and C_Item.GetItemInfo) or GetItemInfo
    if not getInfo then
        return nil
    end
    return getInfo(link)
end

local SPELL_DAMAGE_STATS = { ITEM_MOD_SPELL_POWER = true, ITEM_MOD_SPELL_DAMAGE_DONE = true }

-- Arma à distância (varinha, arco, arma de fogo, arremesso): o jogo informa o
-- DPS com o mesmo nome da arma corpo a corpo; os pesos têm um nome próprio
-- (_RANGED), bem mais alto para conjuradores (varinha) e caçadores.
local RANGED_SLOTS = { INVTYPE_RANGED = true, INVTYPE_RANGEDRIGHT = true, INVTYPE_THROWN = true }
local DPS = "ITEM_MOD_DAMAGE_PER_SECOND_SHORT"

-- Soma peso x valor de cada atributo do item. nil se não der para avaliar.
function Gear:Score(link, profile)
    profile = profile or self:Profile()
    if not link or not profile or ns.IsSecret(link) then
        return nil
    end
    local stats = GetStats(link)
    if not stats then
        return nil
    end
    local ranged = RANGED_SLOTS[select(9, ItemInfo(link)) or ""]
    local score = 0
    for stat, value in pairs(stats) do
        local weight = not SPELL_DAMAGE_STATS[stat] and profile[stat]
        if stat == DPS and ranged and type(profile[DPS .. "_RANGED"]) == "number" then
            weight = profile[DPS .. "_RANGED"]
        end
        if type(weight) == "number" and type(value) == "number" and not ns.IsSecret(value) then
            score = score + weight * value
        end
    end
    -- "Aumenta em até N o dano e a cura mágicos": o jogo devolve como
    -- ITEM_MOD_SPELL_POWER / ITEM_MOD_SPELL_DAMAGE_DONE e com 1 a menos do que a
    -- dica mostra; os pesos chamam de STAT_SPELLDAMAGE (mesma correção do RXP).
    local spellDamage = 0
    for stat in pairs(SPELL_DAMAGE_STATS) do
        local value = stats[stat]
        if type(value) == "number" and not ns.IsSecret(value) and value > spellDamage then
            spellDamage = value
        end
    end
    if spellDamage > 0 and type(profile.STAT_SPELLDAMAGE) == "number" then
        score = score + profile.STAT_SPELLDAMAGE * (spellDamage + 1)
    end
    return score
end

-- O personagem consegue equipar o item agora?
function Gear:CanUse(link)
    local _, _, _, _, minLevel, _, _, _, equipLoc, _, _, classID, subclassID = ItemInfo(link)
    if not equipLoc or equipLoc == "" or not SLOTS[equipLoc] then
        return false
    end
    local level = ns.Engine.player.level or UnitLevel("player")
    if minLevel and minLevel > level then
        return false
    end
    local itemID = tonumber(link:match("item:(%d+)"))
    if C_PlayerInfo and C_PlayerInfo.CanUseItem and itemID then
        return C_PlayerInfo.CanUseItem(itemID)
    end
    if classID == ARMOR_CLASS and subclassID and subclassID >= 1 and subclassID <= 4
        and equipLoc ~= "INVTYPE_CLOAK" then
        local limit = ARMOR_LIMIT[ns.Engine.player.class or ""]
        if limit then
            local allowed = limit[1]
            if limit[3] and level >= limit[3] then
                allowed = limit[2]
            end
            return subclassID <= allowed
        end
    end
    return true
end

local function EquippedScore(slot, profile)
    local link = GetInventoryItemLink("player", slot)
    return link and Gear:Score(link, profile) or 0
end

-- Quanto o item melhora em relação ao que está equipado.
-- Devolve diferença, nota do item, nota atual (ou nil se não dá para comparar).
function Gear:Compare(link)
    local profile = self:Profile()
    if not profile or not self:CanUse(link) then
        return nil
    end
    local score = self:Score(link, profile)
    if not score then
        return nil
    end
    local equipLoc = select(9, ItemInfo(link))
    local slots = SLOTS[equipLoc]
    local current
    if equipLoc == "INVTYPE_2HWEAPON" then
        current = EquippedScore(16, profile) + EquippedScore(17, profile)
    elseif #slots == 2 then
        -- anéis, berloques e armas de uma mão: compara com o pior dos dois
        current = math.min(EquippedScore(slots[1], profile), EquippedScore(slots[2], profile))
        if equipLoc == "INVTYPE_WEAPON" then
            current = EquippedScore(16, profile)
        end
    else
        current = EquippedScore(slots[1], profile)
    end
    return score - current, score, current
end

-- É melhoria? Devolve true e a porcentagem.
function Gear:IsUpgrade(link)
    local diff, score, current = self:Compare(link)
    if not diff or diff <= 0.01 then
        return false
    end
    local percent = current > 0 and (diff / current * 100) or 100
    return true, percent, diff
end

------------------------------------------------------------------------
-- Recompensa de missão
------------------------------------------------------------------------

-- Índice da melhor recompensa entre as opções (ou nil), e o ganho.
function Gear:BestQuestReward()
    if not ns.db.gearAdvisor then
        return nil
    end
    local best, bestDiff
    for i = 1, GetNumQuestChoices() or 0 do
        local link = GetQuestItemLink("choice", i)
        local diff = link and self:Compare(link)
        if diff and diff > 0.01 and (not bestDiff or diff > bestDiff) then
            best, bestDiff = i, diff
        end
    end
    return best, bestDiff
end

-- Marca a melhor recompensa na tela de entrega.
local highlight
local function HighlightReward(index)
    if highlight then
        highlight:Hide()
    end
    if not index or not QuestInfo_GetRewardButton or not QuestInfoFrame then
        return
    end
    local ok, button = pcall(QuestInfo_GetRewardButton, QuestInfoFrame.rewardsFrame, index)
    if not ok or not button then
        return
    end
    if not highlight then
        highlight = CreateFrame("Frame", nil, UIParent)
        highlight.texture = highlight:CreateTexture(nil, "OVERLAY")
        highlight.texture:SetAllPoints()
        highlight.texture:SetTexture("Interface\\Buttons\\CheckButtonHilight")
        highlight.texture:SetBlendMode("ADD")
        highlight.texture:SetVertexColor(0.2, 1, 0.2)
    end
    highlight:SetParent(button)
    highlight:SetAllPoints(button)
    highlight:SetFrameLevel(button:GetFrameLevel() + 5)
    highlight:Show()
end

ns:RegisterEvent("QUEST_COMPLETE", function()
    if (GetNumQuestChoices() or 0) < 2 then
        HighlightReward(nil)
        return
    end
    local best = Gear:BestQuestReward()
    HighlightReward(best)
    if best then
        ns.Print(L["GEAR_BEST_REWARD"]:format(GetQuestItemLink("choice", best) or "?"))
    end
end)

------------------------------------------------------------------------
-- Dica do item (tooltip): "Azimute: melhoria +12%"
------------------------------------------------------------------------

local function AddTooltipLine(tooltip)
    if not ns.db.gearTooltip or not ns.db.gearAdvisor or not tooltip.GetItem then
        return
    end
    local _, link = tooltip:GetItem()
    if not link or ns.IsSecret(link) then
        return
    end
    local upgrade, percent = Gear:IsUpgrade(link)
    if upgrade then
        tooltip:AddLine(L["GEAR_TOOLTIP_UPGRADE"]:format(percent) .. " |cff999999(" .. Gear.SpecName(Gear:CurrentSpec()) .. ")|r", 0.2, 1, 0.2)
    end
end

ns:On("INIT", function()
    if TooltipDataProcessor and TooltipDataProcessor.AddTooltipPostCall and Enum and Enum.TooltipDataType then
        TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item, function(tooltip)
            pcall(AddTooltipLine, tooltip)
        end)
    end
end)

------------------------------------------------------------------------
-- Seta verde nas bolsas da Blizzard
------------------------------------------------------------------------

local arrows = {}

local function ArrowFor(button)
    local arrow = arrows[button]
    if not arrow then
        arrow = button:CreateTexture(nil, "OVERLAY", nil, 7)
        arrow:SetSize(14, 14)
        arrow:SetPoint("TOPLEFT", 1, -1)
        -- seta de melhoria das bolsas do próprio jogo; textura alternativa se faltar
        if not (arrow.SetAtlas and arrow:SetAtlas("bags-greenarrow")) then
            arrow:SetTexture("Interface\\Buttons\\UI-MicroStream-Green")
        end
        arrows[button] = arrow
    end
    return arrow
end

local function UpdateBagFrame(frame)
    if not frame or not frame.EnumerateValidItems or not frame:IsShown() then
        return
    end
    for _, button in frame:EnumerateValidItems() do
        local bag, slot = button:GetBagID(), button:GetID()
        local link = C_Container and C_Container.GetContainerItemLink(bag, slot)
        local upgrade = ns.db.bagArrows and ns.db.gearAdvisor and link and Gear:IsUpgrade(link)
        if upgrade then
            ArrowFor(button):Show()
        elseif arrows[button] then
            arrows[button]:Hide()
        end
    end
end

function Gear:UpdateBags()
    if InCombatLockdown() then
        return
    end
    if ContainerFrameCombinedBags then
        pcall(UpdateBagFrame, ContainerFrameCombinedBags)
    end
    for i = 1, (NUM_CONTAINER_FRAMES or 13) do
        pcall(UpdateBagFrame, _G["ContainerFrame" .. i])
    end
end

local bagQueued = false
local function QueueBags()
    if bagQueued then
        return
    end
    bagQueued = true
    C_Timer.After(0.2, function()
        bagQueued = false
        Gear:UpdateBags()
    end)
end

ns:RegisterEvent("BAG_UPDATE_DELAYED", QueueBags)
-- Talentos mudaram: a especialização (e os pesos) podem ter mudado.
for _, event in ipairs({ "TRAIT_CONFIG_UPDATED", "PLAYER_TALENT_UPDATE", "ACTIVE_TALENT_GROUP_CHANGED" }) do
    ns:RegisterEvent(event, QueueBags)
end
ns:RegisterEvent("PLAYER_EQUIPMENT_CHANGED", QueueBags)
ns:On("LOGIN", function()
    -- Atualiza quando uma bolsa abre.
    if ContainerFrameCombinedBags then
        ContainerFrameCombinedBags:HookScript("OnShow", QueueBags)
    end
    for i = 1, (NUM_CONTAINER_FRAMES or 13) do
        local frame = _G["ContainerFrame" .. i]
        if frame then
            frame:HookScript("OnShow", QueueBags)
        end
    end
end)
