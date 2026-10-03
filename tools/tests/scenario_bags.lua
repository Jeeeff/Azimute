-- Bolsas: janela unificada, tecla B, busca, nível de item, banco.
local S, B = STUB, MOD

local function check(cond, msg)
    if not cond then error("FALHOU: " .. msg, 2) end
    print("  ok: " .. msg)
end

local function ShownButtons(container)
    local count = 0
    for _, slots in pairs(container.buttons) do
        for _, button in pairs(slots) do
            if button._shown and container.holders[button._holderBag or 0] then count = count + 1 end
        end
    end
    return count
end

local function CountShown(container)
    local count = 0
    for bag, slots in pairs(container.buttons) do
        if container.holders[bag]._shown then
            for _, button in pairs(slots) do
                if button._shown then count = count + 1 end
            end
        end
    end
    return count
end

S.FireEvent("ADDON_LOADED", "Azimute_Bags")
if WITH_CORE then S.FireEvent("ADDON_LOADED", "Azimute") end
S.FireEvent("PLAYER_LOGIN")
S.RunTimers()
check(AzimuteBagsDB and B.db == AzimuteBagsDB, "dados salvos próprios (AzimuteBagsDB)")
check(SlashCmdList.AZIMUTEBAGS ~= nil, "comando /azb registrado")

if WITH_CORE then
    local found = false
    for _, module in ipairs(NS.modules) do if module.name == B.L["TITLE"] then found = true end end
    check(found, "aparece no menu de módulos do Azimute")
    return
end

-- tecla B (ToggleAllBags): abre a nossa e esconde a do jogo
ToggleAllBags(); S.RunTimers()
check(B.bags:IsShown(), "B abre a janela unificada")
check(not ContainerFrameCombinedBags._shown, "bolsas do jogo ficam escondidas")
check(CountShown(B.bags) == 26, "16 + 6 + 4 (chaveiro) espaços: " .. CountShown(B.bags))
ToggleAllBags(); S.RunTimers()
check(not B.bags:IsShown(), "B de novo fecha")
OpenAllBags(); S.RunTimers()
check(B.bags:IsShown(), "abrir (vendedor/correio) mostra")
CloseAllBags(); S.RunTimers()
check(not B.bags:IsShown(), "fechar esconde")

-- itens
S.itemData["item:armor"] = { equipLoc = "INVTYPE_CHEST", classID = 4, ilvl = 45 }
S.bagItems[0] = {
    [1] = { itemName = "Pedra de Regresso", link = "item:hs", id = 6948 },
    [2] = { itemName = "Peitoral de Couro", link = "item:armor", id = 100, quality = 3 },
}
SlashCmdList.AZIMUTEBAGS(""); S.RunTimers()
check(B.bags:IsShown(), "/azb abre")
local b2 = B.bags.buttons[0][2]
check(b2.ilvl._text == "|cff0070dd45|r", "nível de item colorido na armadura: " .. tostring(b2.ilvl._text))
check(B.bags.buttons[0][1].ilvl._text == "", "sem nível de item em item comum")
check(B.bags.frame.free._text == "Livres: 20", "espaços livres sem contar o chaveiro: " .. tostring(B.bags.frame.free._text))
check(B.bags.frame.money._text == "123456c", "ouro no rodapé")

-- busca
B.bags.search:SetText("pedra")
B.bags.search._scripts.OnTextChanged(B.bags.search)
check(S.search == "pedra", "busca usa a busca do jogo")
check(B.bags.buttons[0][1]._matches == true and B.bags.buttons[0][2]._matches == false, "item que não bate fica apagado")
B.bags.search:SetText("")
B.bags.search._scripts.OnTextChanged(B.bags.search)

-- organizar
SlashCmdList.AZIMUTEBAGS("organizar")
check(S.sorted == 1, "organizar chama o jogo")
S.combat = true
B.Sort("bags")
check(S.sorted == 1, "em combate não organiza")
S.combat = false

-- bolsa trocada por uma menor
S.bagSlots[1] = 4
S.FireEvent("BAG_CONTAINER_UPDATE"); S.RunTimers()
check(CountShown(B.bags) == 24, "bolsa menor: sobra escondida (" .. CountShown(B.bags) .. ")")

-- banco
S.bagSlots[6] = 28
S.FireEvent("BANKFRAME_OPENED"); S.RunTimers()
check(B.bank:IsShown() and CountShown(B.bank) == 28, "banco unificado com 28 espaços")
B.Sort("bank")
check(S.sorted == 11, "organizar o banco")
S.FireEvent("BANKFRAME_CLOSED")
check(not B.bank:IsShown(), "fechar o banco esconde a janela")

-- opção desligada: B volta a abrir as bolsas do jogo
B.bags:SetShown(false)
B.db.replaceBags = false
ToggleAllBags(); S.RunTimers()
check(not B.bags:IsShown() and ContainerFrameCombinedBags._shown, "sem substituir: abre a bolsa do jogo")
B.db.replaceBags = true
CloseAllBags(); S.RunTimers()
