-- Nomes localizados por ID. O cliente devolve o texto no idioma do jogo
-- (ptBR, enUS...), então os guias guardam só IDs.
local addonName, ns = ...

local Names = {}
ns.Names = Names

local cache -- ns.db.names[locale] = { quest = {}, npc = {} }

ns:On("INIT", function()
    local byLocale = ns.db.names
    byLocale[ns.locale] = byLocale[ns.locale] or { quest = {}, npc = {} }
    cache = byLocale[ns.locale]
end)

local function Usable(text)
    return text ~= nil and not ns.IsSecret(text) and text ~= ""
end

------------------------------------------------------------------------
-- Quests: se o título ainda não estiver no cache do cliente, pedimos ao
-- servidor e esperamos QUEST_DATA_LOAD_RESULT.
------------------------------------------------------------------------

local pendingQuests = {}

function Names.Quest(questID)
    local title = C_QuestLog.GetTitleForQuestID(questID)
    if Usable(title) then
        if cache then
            cache.quest[questID] = title
        end
        return title
    end
    if cache and cache.quest[questID] then
        return cache.quest[questID]
    end
    if not pendingQuests[questID] then
        pendingQuests[questID] = true
        C_QuestLog.RequestLoadQuestByID(questID)
    end
    return nil
end

ns:RegisterEvent("QUEST_DATA_LOAD_RESULT", function(questID, success)
    if not pendingQuests[questID] then
        return
    end
    pendingQuests[questID] = nil
    if success then
        ns:Fire("NAMES_UPDATED")
    end
end)

------------------------------------------------------------------------
-- NPCs: lidos do tooltip de um link de criatura. No Midnight/Forever o
-- texto pode vir secreto (instância/combate), então só tentamos fora de
-- combate, com poucas novas tentativas, e guardamos em cache.
------------------------------------------------------------------------

local MAX_NPC_ATTEMPTS = 3
local npcAttempts = {}
local npcPending = {}

local function ReadNPCName(npcID)
    if InCombatLockdown() or not C_TooltipInfo then
        return nil
    end
    local data = C_TooltipInfo.GetHyperlink("unit:Creature-0-0-0-0-" .. npcID .. "-0")
    if not data or ns.IsSecret(data) or not data.lines then
        return nil
    end
    local line = data.lines[1]
    if not line or ns.IsSecret(line) then
        return nil
    end
    local text = line.leftText
    return Usable(text) and text or nil
end

function Names.NPC(npcID)
    if cache and cache.npc[npcID] then
        return cache.npc[npcID]
    end
    local name = ReadNPCName(npcID)
    if name then
        if cache then
            cache.npc[npcID] = name
        end
        return name
    end

    local attempts = npcAttempts[npcID] or 0
    if not npcPending[npcID] and attempts < MAX_NPC_ATTEMPTS then
        npcPending[npcID] = true
        npcAttempts[npcID] = attempts + 1
        C_Timer.After(0.5 * (attempts + 1), function()
            npcPending[npcID] = nil
            local retry = ReadNPCName(npcID)
            if retry and cache then
                cache.npc[npcID] = retry
                ns:Fire("NAMES_UPDATED")
            end
        end)
    end
    return nil
end

------------------------------------------------------------------------
-- Itens e feitiços: pedidos ao servidor se ainda não estiverem em cache.
-- (No Forever, GetItemInfo/GetSpellInfo globais não existem: só C_Item/C_Spell.)
------------------------------------------------------------------------

local pendingItems, pendingSpells = {}, {}

function Names.Item(itemID)
    local name = C_Item and C_Item.GetItemNameByID and C_Item.GetItemNameByID(itemID)
    if Usable(name) then
        return name
    end
    if not pendingItems[itemID] and C_Item and C_Item.RequestLoadItemDataByID then
        pendingItems[itemID] = true
        C_Item.RequestLoadItemDataByID(itemID)
    end
    return nil
end

ns:RegisterEvent("ITEM_DATA_LOAD_RESULT", function(itemID, success)
    if pendingItems[itemID] then
        pendingItems[itemID] = nil
        if success then
            ns:Fire("NAMES_UPDATED")
        end
    end
end)

function Names.Spell(spellID)
    local name
    if C_Spell and C_Spell.GetSpellName then
        name = C_Spell.GetSpellName(spellID)
    elseif C_Spell and C_Spell.GetSpellInfo then
        local info = C_Spell.GetSpellInfo(spellID)
        name = info and info.name
    end
    if Usable(name) then
        return name
    end
    if not pendingSpells[spellID] and C_Spell and C_Spell.RequestLoadSpellData then
        pendingSpells[spellID] = true
        C_Spell.RequestLoadSpellData(spellID)
    end
    return nil
end

ns:RegisterEvent("SPELL_DATA_LOAD_RESULT", function(spellID, success)
    if pendingSpells[spellID] then
        pendingSpells[spellID] = nil
        if success then
            ns:Fire("NAMES_UPDATED")
        end
    end
end)

------------------------------------------------------------------------
-- Zonas: resposta imediata.
------------------------------------------------------------------------

function Names.Zone(mapID)
    local info = C_Map.GetMapInfo(mapID)
    if info and Usable(info.name) then
        return info.name
    end
    return "#" .. mapID
end
