-- Vendedor: Alt+clique num item compra uma pilha inteira de uma vez (ou o
-- quanto o ouro der). Shift+clique continua abrindo a escolha de quantidade
-- do jogo. Itens com custo especial (fichas, emblemas) ficam de fora.
local addonName, U = ...
local L = U.L

function U.StackToBuy(index)
    local info = C_MerchantFrame and C_MerchantFrame.GetItemInfo and C_MerchantFrame.GetItemInfo(index)
    if not info or info.hasExtendedCost or info.isPurchasable == false or not info.price or info.price <= 0 then
        return nil
    end
    local maxStack = GetMerchantItemMaxStack(index) or 1
    local perUnit = info.price / math.max(1, info.stackCount or 1)
    local affordable = math.floor(GetMoney() / perUnit)
    if info.numAvailable and info.numAvailable > 0 then -- 0 = sem limite
        affordable = math.min(affordable, info.numAvailable)
    end
    return math.min(maxStack, affordable), info
end

local function OnModifiedClick(button, mouseButton)
    if not U:Enabled("merchantStack") or not IsAltKeyDown() then
        return
    end
    if not (MerchantFrame and MerchantFrame.selectedTab == 1) then
        return -- aba de recompra
    end
    local index = button:GetID()
    local quantity, info = U.StackToBuy(index)
    if not quantity or quantity <= 1 then
        return
    end
    BuyMerchantItem(index, quantity)
    U.Print(L["MERCHANT_BOUGHT"]:format(quantity, info.name or "?"))
end

U:Feature({
    key = "merchantStack",
    label = "OPT_MERCHANT_STACK",
    tip = "OPT_MERCHANT_STACK_TIP",
    default = true,
    init = function()
        if type(MerchantItemButton_OnModifiedClick) == "function" then
            hooksecurefunc("MerchantItemButton_OnModifiedClick", OnModifiedClick)
        end
    end,
})
