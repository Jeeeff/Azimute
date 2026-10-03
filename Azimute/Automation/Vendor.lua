-- Vendedores: vender os itens cinza e reparar tudo ao abrir a janela do vendedor.
-- As duas opções vêm DESLIGADAS. SHIFT ao abrir o vendedor pula a automação.
-- Reparar gasta ouro do próprio jogador: só age se der para pagar e sempre
-- avisa o valor. Nada disso mexe em item que não seja cinza.
local addonName, ns = ...
local L = ns.L

local Vendor = {}
ns.Vendor = Vendor

local SOLD_WINDOW = 3 -- segundos até somar o ouro que entrou com a venda

local function Bypassed()
    return IsShiftKeyDown and IsShiftKeyDown()
end

local function Money(copper)
    return ns.Trainer and ns.Trainer.Money(copper) or tostring(copper)
end

-- Repara tudo com o ouro do jogador. Devolve quanto gastou (0 se nada foi feito).
local function Repair()
    if not (CanMerchantRepair and CanMerchantRepair()) then
        return 0
    end
    local cost, canRepair = GetRepairAllCost()
    if not canRepair or not cost or ns.IsSecret(cost) or cost <= 0 then
        return 0
    end
    local have = GetMoney()
    if have < cost then
        ns.Print(L["VENDOR_REPAIR_NO_MONEY"]:format(Money(cost), Money(have)))
        return 0
    end
    RepairAllItems()
    ns.Print(L["VENDOR_REPAIRED"]:format(Money(cost)))
    return cost
end

-- Vende só itens de qualidade "pobre" (cinza). Devolve true se tentou vender.
local function SellJunk()
    local merchant = C_MerchantFrame
    if merchant and merchant.SellAllJunkItems then
        if merchant.GetNumJunkItems and merchant.GetNumJunkItems() == 0 then
            return false
        end
        merchant.SellAllJunkItems()
        return true
    end
    -- Cliente sem a venda em massa: vende as bolsas uma a uma.
    if not (C_Container and C_Container.GetContainerNumSlots and C_Container.UseContainerItem) then
        return false
    end
    local sold = false
    for bag = 0, NUM_BAG_SLOTS or 4 do
        for slot = 1, C_Container.GetContainerNumSlots(bag) or 0 do
            local info = C_Container.GetContainerItemInfo(bag, slot)
            if info and info.quality == 0 and not info.hasNoValue then
                C_Container.UseContainerItem(bag, slot)
                sold = true
            end
        end
    end
    return sold
end

local function OnMerchantShow()
    if Bypassed() or not (ns.db.autoRepair or ns.db.autoSellJunk) then
        return
    end
    local before = GetMoney()
    local spent = ns.db.autoRepair and Repair() or 0
    if ns.db.autoSellJunk and SellJunk() then
        -- O ouro da venda chega depois: soma o que entrou (descontando o reparo).
        C_Timer.After(SOLD_WINDOW, function()
            local gained = GetMoney() - before + spent
            if gained > 0 then
                ns.Print(L["VENDOR_SOLD"]:format(Money(gained)))
            end
        end)
    end
end

ns:RegisterEvent("MERCHANT_SHOW", OnMerchantShow)
