local addonName, B = ...

local L = setmetatable({}, { __index = function(_, key) return key end })
B.L = L

local enUS = {
    TITLE = "Azimute Bags",
    LOADED = "loaded. Type /azb for options.",
    BAGS = "Bags",
    BANK = "Bank",
    SEARCH = "Search",
    SORT = "Sort",
    SORT_COMBAT = "Sorting is not available in combat.",
    FREE = "Free: %d",
    CLOSE = "Close",
    KEYRING = "Keyring",
    OPT_REPLACE = "Replace the default bags",
    OPT_REPLACE_TIP = "The bag key (B) and the bag buttons open the unified window instead of the separate bags.",
    OPT_BANK = "Unified bank",
    OPT_BANK_TIP = "Opens a unified bank window next to the game's bank.",
    OPT_ILVL = "Item level on gear",
    OPT_ILVL_TIP = "Shows the item level on weapons and armor.",
    OPT_KEYRING = "Show the keyring",
    OPT_KEYRING_TIP = "Includes the keyring slots in the bag window.",
    OPT_COLUMNS = "Bag columns",
    OPT_BANK_COLUMNS = "Bank columns",
    OPT_SCALE = "Window scale",
    HELP = {
        "/azb - open/close the bags",
        "/azb sort - sort the bags",
        "/azb options - open the options",
    },
}

local ptBR = {
    TITLE = "Azimute Bolsas",
    LOADED = "carregado. Digite /azb para as opções.",
    BAGS = "Bolsas",
    BANK = "Banco",
    SEARCH = "Buscar",
    SORT = "Organizar",
    SORT_COMBAT = "Não dá para organizar em combate.",
    FREE = "Livres: %d",
    CLOSE = "Fechar",
    KEYRING = "Chaveiro",
    OPT_REPLACE = "Substituir as bolsas do jogo",
    OPT_REPLACE_TIP = "A tecla das bolsas (B) e os botões de bolsa abrem a janela unificada em vez das bolsas separadas.",
    OPT_BANK = "Banco unificado",
    OPT_BANK_TIP = "Abre uma janela unificada do banco ao lado do banco do jogo.",
    OPT_ILVL = "Nível de item nos equipamentos",
    OPT_ILVL_TIP = "Mostra o nível de item em armas e armaduras.",
    OPT_KEYRING = "Mostrar o chaveiro",
    OPT_KEYRING_TIP = "Inclui os espaços do chaveiro na janela das bolsas.",
    OPT_COLUMNS = "Colunas das bolsas",
    OPT_BANK_COLUMNS = "Colunas do banco",
    OPT_SCALE = "Escala da janela",
    HELP = {
        "/azb - abre/fecha as bolsas",
        "/azb organizar - organiza as bolsas",
        "/azb opcoes - abre as opções",
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
