-- Avisos na tela: bolsas quase cheias, equipamento quebrando e pedra de
-- regresso pronta. Cada aviso só aparece quando a situação muda (não repete).
local addonName, U = ...
local L = U.L

local BAG_WARN = 4          -- espaços livres
local DURABILITY_WARN = 0.2 -- 20%
local HEARTHSTONE = 6948

function U.Alert(text)
    if RaidNotice_AddMessage and RaidWarningFrame and ChatTypeInfo then
        RaidNotice_AddMessage(RaidWarningFrame, text, ChatTypeInfo["RAID_WARNING"])
    elseif UIErrorsFrame then
        UIErrorsFrame:AddMessage(text, 1, 0.82, 0)
    end
    if PlaySound and SOUNDKIT and SOUNDKIT.RAID_WARNING then
        PlaySound(SOUNDKIT.RAID_WARNING)
    end
    U.Print(text)
end

------------------------------------------------------------------------
-- Bolsas
------------------------------------------------------------------------

local lastFree
function U.FreeBagSlots()
    local free = 0
    for bag = 0, 4 do
        local ok, count, family = pcall(C_Container.GetContainerNumFreeSlots, bag)
        if ok and count and (family == nil or family == 0) then
            free = free + count
        end
    end
    return free
end

local function CheckBags()
    if not U:Enabled("alertBags") then
        return
    end
    local free = U.FreeBagSlots()
    if lastFree and free < lastFree then
        if free == 0 then
            U.Alert(L["ALERT_BAGS_FULL"])
        elseif free <= BAG_WARN and lastFree > BAG_WARN then
            U.Alert(L["ALERT_BAGS_LOW"]:format(free))
        end
    end
    lastFree = free
end

------------------------------------------------------------------------
-- Durabilidade
------------------------------------------------------------------------

local lastDurability
function U.LowestDurability()
    local lowest
    for slot = 1, 18 do
        local current, maximum = GetInventoryItemDurability(slot)
        if current and maximum and maximum > 0 and not U.IsSecret(current) then
            local ratio = current / maximum
            if not lowest or ratio < lowest then
                lowest = ratio
            end
        end
    end
    return lowest
end

local function CheckDurability()
    if not U:Enabled("alertDurability") then
        return
    end
    local lowest = U.LowestDurability()
    if lowest and lastDurability and lowest < lastDurability then
        if lowest == 0 then
            U.Alert(L["ALERT_BROKEN"])
        elseif lowest <= DURABILITY_WARN and lastDurability > DURABILITY_WARN then
            U.Alert(L["ALERT_DURABILITY"]:format(lowest * 100))
        end
    end
    lastDurability = lowest
end

------------------------------------------------------------------------
-- Pedra de regresso
------------------------------------------------------------------------

local hearthOnCooldown
local function HearthReady()
    local getCooldown = (C_Container and C_Container.GetItemCooldown) or (C_Item and C_Item.GetItemCooldown)
    if not getCooldown or C_Item.GetItemCount(HEARTHSTONE) == 0 then
        return nil
    end
    local start, duration = getCooldown(HEARTHSTONE)
    if start == nil or U.IsSecret(start) or U.IsSecret(duration) then
        return nil
    end
    return start == 0 or duration == 0 or (start + duration - GetTime()) <= 0
end

local function CheckHearth()
    if not U:Enabled("alertHearth") then
        return
    end
    local ready = HearthReady()
    if ready == nil then
        return
    end
    if ready and hearthOnCooldown then
        U.Alert(L["ALERT_HEARTH"])
    end
    hearthOnCooldown = not ready
end
U.CheckHearth = CheckHearth

U:Feature({ key = "alertBags", label = "OPT_ALERT_BAGS", tip = "OPT_ALERT_BAGS_TIP", default = true,
    init = function()
        U:RegisterEvent("BAG_UPDATE_DELAYED", CheckBags)
        U:On("LOGIN", CheckBags)
    end })
U:Feature({ key = "alertDurability", label = "OPT_ALERT_DURABILITY", tip = "OPT_ALERT_DURABILITY_TIP", default = true,
    init = function()
        U:RegisterEvent("UPDATE_INVENTORY_DURABILITY", CheckDurability)
        U:On("LOGIN", CheckDurability)
    end })
U:Feature({ key = "alertHearth", label = "OPT_ALERT_HEARTH", tip = "OPT_ALERT_HEARTH_TIP", default = true,
    init = function()
        U:RegisterEvent("BAG_UPDATE_COOLDOWN", CheckHearth)
        U:On("LOGIN", function()
            CheckHearth()
            C_Timer.NewTicker(15, CheckHearth)
        end)
    end })
