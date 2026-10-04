-- Diagnóstico (/azimute diag): confere se as APIs e eventos que o Azimute usa
-- ainda existem neste cliente (o jogo atualiza e a Blizzard muda coisas) e
-- anota o que existe nas APIs que os módulos novos vão usar. O resultado fica
-- em AzimuteDB.diag (para ler fora do jogo) e um resumo vai para o chat.
local addonName, ns = ...
local L = ns.L

local Diag = {}
ns.Diag = Diag

-- Gerado a partir do código do Azimute (C_*.função e funções globais).
local USED_API = {
    "C_AddOns.GetAddOnMetadata", "C_ClassTalents.GetActiveConfigID",
    "C_Container.GetContainerItemInfo", "C_Container.GetContainerItemLink",
    "C_Container.GetContainerNumSlots", "C_Container.GetItemCooldown",
    "C_Container.UseContainerItem", "C_DeathInfo.GetCorpseMapPosition", "C_EventUtils.IsEventValid",
    "C_GossipInfo.GetActiveQuests", "C_GossipInfo.GetAvailableQuests",
    "C_GossipInfo.SelectActiveQuest", "C_GossipInfo.SelectAvailableQuest", "C_Item.GetItemCount",
    "C_Item.GetItemIconByID", "C_Item.GetItemInfo", "C_Item.GetItemNameByID", "C_Item.GetItemStats",
    "C_Item.RequestLoadItemDataByID", "C_Map.CanSetUserWaypointOnMap", "C_Map.ClearUserWaypoint",
    "C_Map.GetBestMapForUnit", "C_Map.GetMapInfo", "C_Map.GetMapPosFromWorldPos",
    "C_Map.GetPlayerMapPosition", "C_Map.GetWorldPosFromMapPos", "C_Map.SetUserWaypoint",
    "C_PlayerInfo.CanUseItem", "C_QuestLog.GetInfo", "C_QuestLog.GetLogIndexForQuestID",
    "C_QuestLog.GetNextWaypoint", "C_QuestLog.GetNumQuestLogEntries",
    "C_QuestLog.GetQuestObjectives", "C_QuestLog.GetQuestsOnMap", "C_QuestLog.GetTitleForQuestID",
    "C_QuestLog.IsOnQuest", "C_QuestLog.IsQuestFlaggedCompleted", "C_QuestLog.ReadyForTurnIn",
    "C_QuestLog.RequestLoadQuestByID", "C_Spell.GetSpellInfo", "C_Spell.GetSpellName",
    "C_Spell.RequestLoadSpellData", "C_SuperTrack.GetSuperTrackedQuestID",
    "C_TaxiMap.GetAllTaxiNodes", "C_TaxiMap.GetTaxiNodesForMap", "C_Timer.After",
    "C_Timer.NewTicker", "C_TooltipInfo.GetHyperlink", "C_Traits.GetConfigInfo",
    "C_Traits.GetGroupCurrencyInfo", "C_Traits.GetGroupDisplayInfoByTreeID",
}
local USED_GLOBALS = {
    "AcceptQuest", "BuyTrainerService", "CanMerchantRepair", "CompleteQuest", "CreateFrame",
    "CreateFromMixins", "CreateSettingsListSectionHeaderInitializer", "CreateVector2D",
    "GetActiveQuestID", "GetActiveTitle", "GetAvailableQuestInfo", "GetBindLocation",
    "GetBuildInfo", "GetCursorPosition", "GetInventoryItemLink",
    "GetLocale", "GetMoney", "GetNumActiveQuests", "GetNumAvailableQuests", "GetNumQuestChoices",
    "GetNumTrainerServices", "GetPlayerFacing", "GetProfessionInfo", "GetProfessions", "GetQuestID",
    "GetQuestItemLink", "GetQuestLogSpecialItemInfo", "GetQuestReward", "GetQuestUiMapID",
    "GetRealZoneText", "GetRepairAllCost", "GetTaxiMapID", "GetTime", "GetTrainerServiceCost",
    "GetTrainerServiceInfo", "InCombatLockdown", "IsPlayerSpell", "IsQuestCompletable",
    "IsShiftKeyDown", "IsSpellKnown", "NumTaxiNodes", "OpenWorldMap", "QuestGetAutoAccept",
    "RepairAllItems", "SelectActiveQuest", "SelectAvailableQuest", "TakeTaxiNode",
    "TaxiNodeGetType", "TaxiNodeName", "UnitClass", "UnitFactionGroup", "UnitGUID", "UnitIsGhost",
    "UnitLevel", "UnitName", "UnitOnTaxi", "UnitRace", "hooksecurefunc", "issecretvalue",
    "CopyTable",
}
local USED_EVENTS = {
    "ADDON_LOADED", "BAG_UPDATE_COOLDOWN", "BAG_UPDATE_DELAYED", "GOSSIP_SHOW", "HEARTHSTONE_BOUND",
    "ITEM_DATA_LOAD_RESULT", "MERCHANT_CLOSED", "MERCHANT_SHOW", "PLAYER_ALIVE",
    "PLAYER_CONTROL_GAINED", "PLAYER_DEAD", "PLAYER_ENTERING_WORLD", "PLAYER_EQUIPMENT_CHANGED",
    "PLAYER_INTERACTION_MANAGER_FRAME_SHOW", "PLAYER_LEVEL_UP", "PLAYER_LOGIN", "PLAYER_MONEY",
    "PLAYER_REGEN_DISABLED", "PLAYER_REGEN_ENABLED", "PLAYER_UNGHOST", "QUEST_ACCEPTED",
    "QUEST_COMPLETE", "QUEST_DATA_LOAD_RESULT", "QUEST_DETAIL", "QUEST_GREETING",
    "QUEST_LOG_UPDATE", "QUEST_PROGRESS", "QUEST_REMOVED", "QUEST_TURNED_IN", "SKILL_LINES_CHANGED",
    "SPELLS_CHANGED", "SPELL_DATA_LOAD_RESULT", "SUPER_TRACKING_CHANGED", "TAXIMAP_OPENED",
    "TRAINER_CLOSED", "TRAINER_SHOW", "UNIT_SPELLCAST_SUCCEEDED", "ZONE_CHANGED_NEW_AREA",
}

-- APIs dos módulos novos (bolsas, medidor de dano): lista o que existe.
local NAMESPACES = { "C_DamageMeter", "C_Container", "C_Bank", "C_CombatLog", "C_NewItems", "C_Item", "C_ItemUpgrade" }
local EXTRA_EVENTS = {
    "COMBAT_LOG_EVENT_UNFILTERED", "COMBAT_LOG_EVENT", "DAMAGE_METER_COMBAT_SESSION_UPDATED",
    "DAMAGE_METER_CURRENT_SESSION_UPDATED", "DAMAGE_METER_RESET", "BAG_UPDATE_DELAYED", "BAG_UPDATE",
    "BANKFRAME_OPENED", "BANKFRAME_CLOSED", "PLAYERBANKSLOTS_CHANGED", "PLAYER_INTERACTION_MANAGER_FRAME_SHOW",
    "GROUP_ROSTER_UPDATE", "ENCOUNTER_START", "ENCOUNTER_END", "PLAYER_REGEN_DISABLED", "PLAYER_REGEN_ENABLED",
    "ITEM_LOCK_CHANGED", "BAG_NEW_ITEMS_UPDATED", "INVENTORY_SEARCH_UPDATE",
}
local EXTRA_GLOBALS = {
    "CombatLogGetCurrentEventInfo", "UnitIsGroupLeader", "GetNumGroupMembers", "IsInRaid", "IsInGroup",
    "SortBags", "SortBankBags", "ToggleAllBags", "OpenAllBags", "CloseAllBags", "ContainerFrame_UpdateAll",
    "SetItemButtonTexture", "SetItemButtonCount", "SetItemButtonQuality", "SetItemButtonDesaturated",
}
local EXTRA_ENUMS = { "DamageMeterType", "BankType", "BagIndex", "PlayerInteractionType" }

local function Resolve(path)
    local value = _G
    for part in path:gmatch("[^%.]+") do
        if type(value) ~= "table" then
            return nil
        end
        value = value[part]
    end
    return value
end

local function EventValid(event)
    if C_EventUtils and C_EventUtils.IsEventValid then
        return C_EventUtils.IsEventValid(event) and true or false
    end
    return nil
end

local function Keys(tbl)
    local keys = {}
    for key in pairs(tbl) do
        keys[#keys + 1] = tostring(key)
    end
    table.sort(keys)
    return keys
end

function Diag:Run()
    local version, build, date, interface = GetBuildInfo()
    local report = {
        when = date and (version .. " " .. build) or "?",
        build = ("%s.%s"):format(tostring(version), tostring(build)),
        buildDate = date,
        interface = interface,
        locale = GetLocale(),
        addonVersion = C_AddOns.GetAddOnMetadata(addonName, "Version"),
        missingAPI = {}, missingGlobals = {}, invalidEvents = {},
        namespaces = {}, extraEvents = {}, extraGlobals = {}, enums = {},
        unavailableEvents = ns.unavailableEvents,
    }
    for _, path in ipairs(USED_API) do
        if type(Resolve(path)) ~= "function" then
            report.missingAPI[#report.missingAPI + 1] = path
        end
    end
    for _, name in ipairs(USED_GLOBALS) do
        if type(_G[name]) ~= "function" then
            report.missingGlobals[#report.missingGlobals + 1] = name
        end
    end
    for _, event in ipairs(USED_EVENTS) do
        if EventValid(event) == false then
            report.invalidEvents[#report.invalidEvents + 1] = event
        end
    end
    for _, name in ipairs(NAMESPACES) do
        local tbl = _G[name]
        report.namespaces[name] = type(tbl) == "table" and Keys(tbl) or false
    end
    for _, event in ipairs(EXTRA_EVENTS) do
        report.extraEvents[event] = EventValid(event)
    end
    for _, name in ipairs(EXTRA_GLOBALS) do
        report.extraGlobals[name] = type(_G[name]) == "function"
    end
    for _, name in ipairs(EXTRA_ENUMS) do
        local tbl = Enum and Enum[name]
        if type(tbl) == "table" then
            local values = {}
            for key, value in pairs(tbl) do
                values[#values + 1] = tostring(key) .. "=" .. tostring(value)
            end
            table.sort(values)
            report.enums[name] = values
        else
            report.enums[name] = false
        end
    end
    -- Guia de Aventuras: existe com dados das masmorras clássicas? (para o
    -- futuro "saque por chefe"; a interface dele não carrega no Forever)
    local ej = { tiers = false, dungeons = {} }
    if EJ_GetNumTiers and EJ_SelectTier and EJ_GetInstanceByIndex then
        local ok = pcall(function()
            ej.tiers = EJ_GetNumTiers()
            for tier = 1, ej.tiers or 0 do
                EJ_SelectTier(tier)
                for index = 1, 40 do
                    local instanceID, name = EJ_GetInstanceByIndex(index, false)
                    if not instanceID then
                        break
                    end
                    ej.dungeons[#ej.dungeons + 1] = ("%d:%s"):format(instanceID, tostring(name))
                end
            end
        end)
        ej.ok = ok
    end
    report.encounterJournal = ej
    -- entradas de masmorra informadas pelo jogo (painel "Masmorras")
    ns.DungeonEntrances:Scan()
    local entrances = {}
    for name in pairs(ns.DungeonEntrances.cache or {}) do
        entrances[#entrances + 1] = name
    end
    table.sort(entrances)
    report.dungeonEntrances = entrances
    ns.db.diag = report

    ns.Print(L["DIAG_HEADER"]:format(report.build, tostring(interface)))
    local problems = #report.missingAPI + #report.missingGlobals + #report.invalidEvents
    if problems == 0 then
        ns.Print(L["DIAG_OK"]:format(#USED_API + #USED_GLOBALS, #USED_EVENTS))
    else
        for _, path in ipairs(report.missingAPI) do
            ns.Print(L["DIAG_MISSING"]:format(path))
        end
        for _, name in ipairs(report.missingGlobals) do
            ns.Print(L["DIAG_MISSING"]:format(name))
        end
        for _, event in ipairs(report.invalidEvents) do
            ns.Print(L["DIAG_EVENT"]:format(event))
        end
    end
    ns.Print(L["DIAG_EJ"]:format(tostring(ej.tiers), #ej.dungeons))
    ns.Print(L["DIAG_ENTRANCES"]:format(#entrances))
    ns.Print(L["DIAG_SAVED"])
    return report
end
