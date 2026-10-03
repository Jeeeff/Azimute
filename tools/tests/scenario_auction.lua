-- Leilão: varredura, preço na dica, aviso do vendedor e valor das bolsas.
local S, A = STUB, MOD

local function check(cond, msg)
    if not cond then error("FALHOU: " .. msg, 2) end
    print("  ok: " .. msg)
end

S.FireEvent("ADDON_LOADED", "Azimute_Auction")
if WITH_CORE then S.FireEvent("ADDON_LOADED", "Azimute") end
S.FireEvent("PLAYER_LOGIN")
S.RunTimers()
check(AzimuteAuctionDB and A.db == AzimuteAuctionDB, "dados salvos próprios (AzimuteAuctionDB)")
if WITH_CORE then
    local found = false
    for _, module in ipairs(NS.modules) do if module.name == A.L["TITLE"] then found = true end end
    check(found, "aparece no menu de módulos do Azimute")
    return
end

S.clock = 2000000
check(not A:StartScan(), "sem a casa de leilões aberta não varre")
S.FireEvent("AUCTION_HOUSE_SHOW")
check(A.button ~= nil, "botão de varredura na casa de leilões")
S.replicate = {
    { itemID = 2589, count = 20, buyout = 2000 },   -- 100 cada
    { itemID = 2589, count = 10, buyout = 800 },    -- 80 cada (menor)
    { itemID = 2592, count = 5, buyout = 5000 },    -- 1000 cada
    { itemID = 999, count = 1, buyout = 0 },        -- só lance: ignora
}
check(A:StartScan() and S.replicateCalls == 1, "varredura pedida ao jogo")
S.FireEvent("REPLICATE_ITEM_LIST_UPDATE"); S.RunTimers()
check(A:Price(2589) == 80 and A:Price(2592) == 1000 and A:Price(999) == nil, "menor preço por unidade de cada item")
local summary = false
for _, line in ipairs(S.printed) do if line:find("3 leilões, 2 itens") then summary = true end end
check(summary, "resumo da varredura no chat (3 leilões, 2 itens)")
check(not A:StartScan(), "segunda varredura antes de 15 min é recusada")
-- dica do item
local tip = S.NewTooltip()
S.clock = S.clock + 7200
S.tooltipCalls[Enum.TooltipDataType.Item](tip, { id = 2589 })
check(tip.lines[1] == "Leilão: 80c cada |cff999999(há 2 h)|r", "preço na dica com a idade: " .. tostring(tip.lines[1]))
S.sellPrices[2592] = 1500
tip = S.NewTooltip()
S.tooltipCalls[Enum.TooltipDataType.Item](tip, { id = 2592 })
check(tip.lines[2] == "O vendedor paga mais que o leilão", "aviso quando o vendedor paga mais")
-- valor das bolsas
S.bagSlots = { [0] = 16 }
S.bagItems = { [0] = { [1] = { itemName = "Linho", id = 2589, count = 10 }, [2] = { itemName = "Lã", id = 2592, count = 2 } } }
local auction, vendor = A:BagValue()
check(auction == 10 * 80 + 2 * 1500 and vendor == 3000, ("valor das bolsas: leilão %d, vendedor %d"):format(auction, vendor))
