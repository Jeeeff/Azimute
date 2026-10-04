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
    -- seta de melhoria vem do indicador de equipamento do Azimute
    AzimuteAPI.RegisterStatWeights({ ["Warrior Speedrun 1-60 - Arms"] = { Class = "Warrior", Spec = "Arms", Kind = "Speedrun",
        MIN_LEVEL = 1, MAX_LEVEL = 60, RESISTANCE0_NAME = 0.035, ITEM_MOD_STRENGTH_SHORT = 2 } })
    NS.Engine.player.class, NS.Engine.player.level = "WARRIOR", 10
    S.itemData["luva-velha"] = { equipLoc = "INVTYPE_HAND", subclassID = 1, stats = { RESISTANCE0_NAME = 6 } }
    S.itemData["luva-nova"] = { equipLoc = "INVTYPE_HAND", subclassID = 1, stats = { RESISTANCE0_NAME = 11 } }
    S.equipped[10] = "luva-velha"
    S.bagItems[0] = { [1] = { itemName = "Luvas Enfeitadas", link = "luva-nova", id = 5 }, [2] = { itemName = "Pedra", link = "item:hs", id = 6948 } }
    B.bags:SetShown(true); S.RunTimers()
    check(B.bags.buttons[0][1].upgrade._shown, "seta de melhoria na luva melhor (bolsas unificadas)")
    check(not B.bags.buttons[0][2].upgrade._shown, "item comum sem seta")
    AzimuteDB.bagArrows = false
    B.bags:UpdateItems()
    check(not B.bags.buttons[0][1].upgrade._shown, "opção das setas desligada no Azimute: some")
    AzimuteDB.bagArrows = true
    return
end

-- tecla B (ToggleAllBags): abre a nossa e esconde a do jogo
ToggleAllBags(); S.RunTimers()
check(B.bags:IsShown(), "B abre a janela unificada")
check(not ContainerFrameCombinedBags._shown, "bolsas do jogo ficam escondidas")
check(CountShown(B.bags) == 26, "16 + 6 + 4 (chaveiro) espaços: " .. CountShown(B.bags))
check(B.bags.keyringLabel and B.bags.keyringLabel._shown and B.bags.keyringLabel._text == "Chaveiro", "chaveiro com título próprio, em linha nova")
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

-- usar item: botão seguro por cima (abrir caixote não pode ser bloqueado)
local item = B.bags.buttons[0][1]
local clicked
item._scripts.OnClick = function(_, mouse) clicked = mouse end
item._scripts.OnEnter(item)
local use = B.Overlay.button
check(use and use._shown and B.Overlay.item == item, "item sob o mouse ganha o botão seguro")
check(use:GetAttribute("type2") == "macro" and use:GetAttribute("macrotext2") == "/use 0 1",
    "direito faz /use bolsa espaço: " .. tostring(use:GetAttribute("macrotext2")))
check(use:GetAttribute("useOnKeyDown") == false, "age ao soltar o botão")
use._scripts.PostClick(use, "RightButton")
check(clicked == nil, "direito sem modificador não passa pelo addon")
use._scripts.PostClick(use, "LeftButton")
check(clicked == "LeftButton", "esquerdo (pegar) segue para o item")
S.modifiedClick = true
use._scripts.PostClick(use, "RightButton")
S.modifiedClick = false
check(clicked == "RightButton", "shift/ctrl + direito segue para o item")
use._scripts.OnLeave(use)
check(not use._shown and B.Overlay.item == nil, "saiu do item: botão seguro some")
B.Overlay:Attach(B.bags.buttons[0][2], -2, 1)
check(not use._shown, "chaveiro/banco principal: clique normal do item")
item._scripts.OnEnter(item)
S.FireEvent("PLAYER_REGEN_DISABLED")
check(not use._shown, "combate começando: botão seguro sai antes do bloqueio")
S.combat = true
item._scripts.OnEnter(item)
check(not use._shown, "em combate não mexe no botão seguro")
S.combat = false

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
