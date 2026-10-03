-- Botão do item de missão (como o do Zygor/RestedXP): quando o passo atual
-- (ou a missão selecionada) precisa de um item usável, o botão aparece com
-- o ícone. Clique nele ou use o atalho (Esc > Opções > Atalhos > Azimute).
--
-- É um botão seguro (SecureActionButtonTemplate): não pode ser alterado em
-- combate, então as mudanças ficam pendentes até o combate acabar.
-- Shift + arrastar move o botão.
local addonName, ns = ...
local L = ns.L

local ItemButton = {}
ns.ItemButton = ItemButton

local BUTTON_NAME = "AzimuteItemButton"
local SIZE = 40

-- Textos do menu de atalhos do jogo (Bindings.xml).
BINDING_HEADER_AZIMUTE = addonName
_G["BINDING_NAME_CLICK " .. BUTTON_NAME .. ":LeftButton"] = L["BIND_ITEM"]

local function ItemCount(itemID)
    if C_Item and C_Item.GetItemCount then
        return C_Item.GetItemCount(itemID) or 0
    end
    return 0
end

-- Item especial da missão no diário (o mesmo do rastreador da Blizzard).
local function QuestItem(questID)
    if not (C_QuestLog.GetLogIndexForQuestID and GetQuestLogSpecialItemInfo) then
        return nil
    end
    local logIndex = C_QuestLog.GetLogIndexForQuestID(questID)
    if not logIndex then
        return nil
    end
    local link = GetQuestLogSpecialItemInfo(logIndex)
    if not link or ns.IsSecret(link) then
        return nil
    end
    return tonumber(link:match("item:(%d+)"))
end

local function QuestOfGoal(goal)
    return goal.questID or goal.questLink or (goal.objective and goal.objective.questID)
end

-- Item que o jogador precisa usar agora (ou nil).
function ItemButton:FindItem()
    if not ns.db.itemButton then
        return nil
    end
    local quests = {}
    if ns.Focus and ns.Focus:IsActive() then
        quests[1] = ns.Focus.questID
    else
        local step = ns.Engine:CurrentStep()
        for _, goal in ipairs(step and step.goals or {}) do
            if ns.Engine:GoalApplies(goal) then
                if goal.type == "use" and ItemCount(goal.itemID) > 0 then
                    return goal.itemID
                end
                local questID = QuestOfGoal(goal)
                if questID and goal.type ~= "accept" then
                    quests[#quests + 1] = questID
                end
            end
        end
    end
    for _, questID in ipairs(quests) do
        local itemID = QuestItem(questID)
        if itemID and ItemCount(itemID) > 0 then
            return itemID
        end
    end
end

------------------------------------------------------------------------
-- Botão
------------------------------------------------------------------------

function ItemButton:Create()
    local button = CreateFrame("Button", BUTTON_NAME, UIParent, "SecureActionButtonTemplate")
    button:SetSize(SIZE, SIZE)
    button:SetFrameStrata("MEDIUM")
    button:RegisterForClicks("AnyUp", "AnyDown")
    button:SetAttribute("type", "item")

    button.icon = button:CreateTexture(nil, "ARTWORK")
    button.icon:SetAllPoints()
    button:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")
    button:SetPushedTexture("Interface\\Buttons\\UI-Quickslot-Depress")

    button.count = button:CreateFontString(nil, "OVERLAY", "NumberFontNormal")
    button.count:SetPoint("BOTTOMRIGHT", -2, 2)

    button.cooldown = CreateFrame("Cooldown", nil, button, "CooldownFrameTemplate")
    button.cooldown:SetAllPoints()

    -- Shift + arrastar para mover (fora de combate).
    button:SetMovable(true)
    button:SetClampedToScreen(true)
    button:RegisterForDrag("LeftButton")
    button:SetScript("OnDragStart", function(self)
        if IsShiftKeyDown() and not InCombatLockdown() then
            self:StartMoving()
        end
    end)
    button:SetScript("OnDragStop", function(self)
        self:StopMovingOrSizing()
        local point, _, relativePoint, x, y = self:GetPoint(1)
        ns.db.itemButtonPoint = { point, relativePoint, x, y }
    end)

    button:SetScript("OnEnter", function(self)
        if self.itemID then
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
            GameTooltip:SetItemByID(self.itemID)
            GameTooltip:AddLine(L["ITEM_BUTTON_HINT"], 0.6, 0.6, 0.6)
            GameTooltip:Show()
        end
    end)
    button:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)

    ns.RestorePosition(button, "itemButtonPoint")
    button:Hide()
    self.button = button
end

function ItemButton:UpdateCooldown()
    local button = self.button
    if not button or not button.itemID or not C_Container or not C_Container.GetItemCooldown then
        return
    end
    local start, duration, enable = C_Container.GetItemCooldown(button.itemID)
    -- No Midnight/Forever a recarga pode vir secreta em combate: ignora.
    if start and not ns.IsSecret(start) and not ns.IsSecret(duration) then
        button.cooldown:SetCooldown(start, duration, enable)
    end
end

function ItemButton:Update()
    local button = self.button
    if not button then
        return
    end
    if InCombatLockdown() then
        self.pending = true
        return
    end
    self.pending = false

    local itemID = self:FindItem()
    if itemID == button.itemID and button:IsShown() == (itemID ~= nil) then
        if itemID then
            button.count:SetText(ItemCount(itemID) > 1 and ItemCount(itemID) or "")
        end
        return
    end
    button.itemID = itemID
    if itemID then
        button:SetAttribute("item", "item:" .. itemID)
        local icon = C_Item and C_Item.GetItemIconByID and C_Item.GetItemIconByID(itemID)
        button.icon:SetTexture(icon or "Interface\\Icons\\INV_Misc_QuestionMark")
        local count = ItemCount(itemID)
        button.count:SetText(count > 1 and count or "")
        button:Show()
        self:UpdateCooldown()
    else
        button:SetAttribute("item", nil)
        button:Hide()
    end
end

local function Update()
    ItemButton:Update()
end

ns:On("INIT", function()
    ItemButton:Create()
end)
ns:On("STEP_UPDATED", Update)
ns:On("STEP_CHANGED", Update)
ns:RegisterEvent("BAG_UPDATE_DELAYED", Update)
ns:RegisterEvent("PLAYER_REGEN_ENABLED", function()
    if ItemButton.pending then
        ItemButton:Update()
    end
end)
ns:RegisterEvent("BAG_UPDATE_COOLDOWN", function()
    ItemButton:UpdateCooldown()
end)
