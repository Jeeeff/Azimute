local addonName, A = ...

local L = setmetatable({}, { __index = function(_, key) return key end })
A.L = L

local enUS = {
    TITLE = "Azimute Auction",
    SCAN = "Full scan",
    SCAN_TIP = "Reads every auction once (the game allows it every 15 minutes) and saves the lowest price of each item.",
    SCAN_WAIT = "Full scan available again in %d min.",
    SCAN_START = "Full scan started; it may take a few seconds.",
    SCAN_DONE = "Scan done: %d auctions, %d items with price.",
    SCAN_NEED_AH = "Open the auction house to scan.",
    TOOLTIP_PRICE = "Auction: %s each",
    TOOLTIP_STACK = "Auction (x%d): %s",
    TOOLTIP_AGE = "(%s ago)",
    TOOLTIP_VENDOR_BETTER = "The vendor pays more than the auction",
    AGE_MIN = "%d min",
    AGE_HOURS = "%d h",
    AGE_DAYS = "%d days",
    NO_SCAN = "No scan yet on this realm: open the auction house and click \"Full scan\".",
    LAST_SCAN = "Last scan: %s ago (%d items).",
    BAG_VALUE = "Your bags (not bound): %s at the auction, %s at the vendor.",
    OPT_TOOLTIP = "Auction price in tooltips",
    OPT_TOOLTIP_TIP = "Shows the lowest price from the last full scan on item tooltips.",
    OPT_VENDOR_HINT = "Warn when the vendor pays more",
    OPT_VENDOR_HINT_TIP = "Adds a note when selling to a vendor is better than the auction.",
    HELP = {
        "/azl - last scan and the value of your bags",
        "/azl scan - full scan (with the auction house open)",
        "/azl options - options",
    },
}

local ptBR = {
    TITLE = "Azimute Leilão",
    SCAN = "Varredura completa",
    SCAN_TIP = "Lê todos os leilões de uma vez (o jogo deixa a cada 15 minutos) e guarda o menor preço de cada item.",
    SCAN_WAIT = "Varredura completa liberada de novo em %d min.",
    SCAN_START = "Varredura completa iniciada; pode levar alguns segundos.",
    SCAN_DONE = "Varredura pronta: %d leilões, %d itens com preço.",
    SCAN_NEED_AH = "Abra a casa de leilões para fazer a varredura.",
    TOOLTIP_PRICE = "Leilão: %s cada",
    TOOLTIP_STACK = "Leilão (x%d): %s",
    TOOLTIP_AGE = "(há %s)",
    TOOLTIP_VENDOR_BETTER = "O vendedor paga mais que o leilão",
    AGE_MIN = "%d min",
    AGE_HOURS = "%d h",
    AGE_DAYS = "%d dias",
    NO_SCAN = "Ainda não há varredura neste reino: abra a casa de leilões e clique em \"Varredura completa\".",
    LAST_SCAN = "Última varredura: há %s (%d itens).",
    BAG_VALUE = "Suas bolsas (não vinculados): %s no leilão, %s no vendedor.",
    OPT_TOOLTIP = "Preço de leilão nas dicas",
    OPT_TOOLTIP_TIP = "Mostra o menor preço da última varredura na dica dos itens.",
    OPT_VENDOR_HINT = "Avisar quando o vendedor paga mais",
    OPT_VENDOR_HINT_TIP = "Acrescenta um aviso quando vender ao vendedor vale mais que o leilão.",
    HELP = {
        "/azl - última varredura e valor das suas bolsas",
        "/azl varrer - varredura completa (com a casa de leilões aberta)",
        "/azl opcoes - opções",
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
