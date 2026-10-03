-- Utilidades: câmera, dicas, coordenadas, avisos, vendedor e social.
local S, U = STUB, MOD

local function check(cond, msg)
    if not cond then error("FALHOU: " .. msg, 2) end
    print("  ok: " .. msg)
end

S.FireEvent("ADDON_LOADED", "Azimute_Utils")
if WITH_CORE then S.FireEvent("ADDON_LOADED", "Azimute") end
S.FireEvent("PLAYER_LOGIN")
S.RunTimers()
check(AzimuteUtilsDB and U.db == AzimuteUtilsDB, "dados salvos próprios (AzimuteUtilsDB)")

if WITH_CORE then
    local found = false
    for _, module in ipairs(NS.modules) do if module.name == U.L["TITLE"] then found = true end end
    check(found, "aparece no menu de módulos do Azimute")
    return
end

-- 1. câmera
check(S.cvars.cameraDistanceMaxZoomFactor == "2.6" and U.db.cameraPrevious == 1.9, "zoom máximo ligado, valor antigo guardado")
S.settings.camera:SetValue(false)
check(S.cvars.cameraDistanceMaxZoomFactor == "1.9" and U.db.cameraPrevious == nil, "desligar volta o zoom de antes")
S.settings.camera:SetValue(true)

-- 2. dicas
local tip = S.NewTooltip()
S.tooltipCalls[Enum.TooltipDataType.Item](tip, { id = 6948 })
check(tip.lines[1] == "ID do item: 6948", "ID do item na dica")
tip = S.NewTooltip()
S.tooltipCalls[Enum.TooltipDataType.Item](tip, { id = S.Secret(1) })
check(#tip.lines == 0, "ID secreto: nada na dica")
S.units = { mouseovertarget = { name = "Thrall", player = true } }
tip = S.NewTooltip("mouseover")
S.tooltipCalls[Enum.TooltipDataType.Unit](tip)
check(tip.lines[1] == "Alvo: |cffc79c6eThrall|r", "alvo do jogador com cor da classe: " .. tostring(tip.lines[1]))
S.units = { mouseovertarget = { name = "Jeeff", isPlayer = true } }
tip = S.NewTooltip("mouseover")
S.tooltipCalls[Enum.TooltipDataType.Unit](tip)
check(tip.lines[1]:find("VOCÊ"), "alvo sou eu")
S.units = { mouseovertarget = { name = S.Secret("x") } }
tip = S.NewTooltip("mouseover")
S.tooltipCalls[Enum.TooltipDataType.Unit](tip)
check(#tip.lines == 0, "nome do alvo secreto (combate): nada na dica")

-- 3. coordenadas no mapa
check(U.coords ~= nil and U.coords._shown, "faixa de coordenadas criada no mapa-múndi")
S.displayMap, S.player.map, S.player.x, S.player.y = 1429, 1429, 0.423, 0.657
U.coords._scripts.OnUpdate(U.coords, 1)
check(U.coords.text._text == "Você: 42.3, 65.7     Cursor: --", "coordenadas do jogador: " .. tostring(U.coords.text._text))
S.mouseOverMap = true
U.coords._scripts.OnUpdate(U.coords, 1)
check(U.coords.text._text == "Você: 42.3, 65.7     Cursor: 50.0, 25.0", "coordenadas do cursor: " .. tostring(U.coords.text._text))
S.mouseOverMap = false

-- 4. avisos
S.bagSlots = { [0] = 16, [1] = 6 }
S.bagItems = {}
S.FireEvent("BAG_UPDATE_DELAYED")
local items = {}
for slot = 1, 18 do items[slot] = { itemName = "x" } end
S.bagItems[0] = items
S.FireEvent("BAG_UPDATE_DELAYED")
check(S.alerts[#S.alerts] == "Bolsas quase cheias: restam 4 espaços", "aviso de bolsa quase cheia: " .. tostring(S.alerts[#S.alerts]))
local count = #S.alerts
S.FireEvent("BAG_UPDATE_DELAYED")
check(#S.alerts == count, "não repete o mesmo aviso")
S.durability[5] = { 50, 100 }
S.FireEvent("UPDATE_INVENTORY_DURABILITY")
S.durability[5] = { 15, 100 }
S.FireEvent("UPDATE_INVENTORY_DURABILITY")
check(S.alerts[#S.alerts] == "Equipamento com 15% de durabilidade: conserte logo", "aviso de durabilidade")
S.items[6948] = 1
S.hearthCooldown = { S.time, 600 }
U.CheckHearth()
S.hearthCooldown = { 0, 0 }
U.CheckHearth()
check(S.alerts[#S.alerts] == "Pedra de regresso pronta", "aviso da pedra de regresso")

-- 5. vendedor: Alt+clique compra a pilha
S.merchant[3] = { name = "Água", price = 25, stackCount = 1, maxStack = 20, numAvailable = 0, isPurchasable = true }
S.money = 10000
local button = { GetID = function() return 3 end }
S.alt = true
MerchantItemButton_OnModifiedClick(button, "LeftButton")
check(S.bought[1] == "3x20", "Alt+clique compra 20 (pilha inteira)")
S.money = 100
MerchantItemButton_OnModifiedClick(button, "LeftButton")
check(S.bought[2] == "3x4", "só o que o ouro der (4)")
S.merchant[4] = { name = "Ficha", price = 0, hasExtendedCost = true, maxStack = 20 }
MerchantItemButton_OnModifiedClick({ GetID = function() return 4 end }, "LeftButton")
check(#S.bought == 2, "item com custo especial fica de fora")
S.alt = false
MerchantItemButton_OnModifiedClick(button, "LeftButton")
check(#S.bought == 2, "sem Alt não compra")

-- 6. social: desligado por padrão
S.FireEvent("DUEL_REQUESTED", "Fulano")
check(#S.social == 0, "duelo: desligado por padrão não mexe")
U.db.declineDuels, U.db.declineInvites, U.db.acceptResurrect, U.db.acceptSummon = true, true, true, true
S.FireEvent("DUEL_REQUESTED", "Fulano")
check(S.social[1] == "cancelDuel", "duelo recusado")
S.FireEvent("PARTY_INVITE_REQUEST", "Estranho", false, false, false, true, false, "Player-9")
check(S.social[#S.social - 1] == "declineGroup", "convite de desconhecido recusado")
local before = #S.social
S.friends["Player-7"] = true
S.FireEvent("PARTY_INVITE_REQUEST", "Amigo", false, false, false, true, false, "Player-7")
check(#S.social == before, "convite de amigo não é recusado")
S.FireEvent("RESURRECT_REQUEST", "Sacerdote")
check(S.social[before + 1] == "acceptRes", "ressurreição aceita")
S.FireEvent("CONFIRM_SUMMON")
S.RunTimers()
check(S.social[#S.social - 1] == "summon", "invocação aceita")
S.npc.shift = true
before = #S.social
S.FireEvent("DUEL_REQUESTED", "Fulano")
check(#S.social == before, "SHIFT segurado pula a automação")
S.npc.shift = false
