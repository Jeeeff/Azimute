-- Rotação: núcleo do módulo (dados salvos, eventos, especialização, feitiços
-- conhecidos). Funciona sem o Azimute; com ele, aparece no menu de módulos.
local addonName, R = ...
local L = R.L

R.DEFAULTS = {
    live = true,        -- barra ao vivo em combate
    liveAlways = false, -- barra também fora de combate
    locked = true,
    panelPoint = { "CENTER", "CENTER", -300, 60 },
    barPoint = { "CENTER", "CENTER", 0, -190 },
    diag = nil,         -- o que o jogo deixou ler na última luta
}

function R.IsSecret(value)
    return type(issecretvalue) == "function" and issecretvalue(value) and true or false
end

function R.Print(msg)
    print("|cff33ff99" .. L["TITLE"] .. "|r " .. msg)
end

------------------------------------------------------------------------
-- Mensagens internas e eventos
------------------------------------------------------------------------

local callbacks = {}
function R:On(message, handler)
    callbacks[message] = callbacks[message] or {}
    table.insert(callbacks[message], handler)
end
function R:Fire(message, ...)
    for _, handler in ipairs(callbacks[message] or {}) do
        handler(...)
    end
end

local eventFrame = CreateFrame("Frame")
local handlers = {}
function R:RegisterEvent(event, handler)
    if C_EventUtils and C_EventUtils.IsEventValid and not C_EventUtils.IsEventValid(event) then
        return false
    end
    if not pcall(eventFrame.RegisterEvent, eventFrame, event) then
        return false
    end
    handlers[event] = handlers[event] or {}
    table.insert(handlers[event], handler)
    return true
end
eventFrame:SetScript("OnEvent", function(_, event, ...)
    if event ~= "ADDON_LOADED" and not R.db then
        return
    end
    for _, handler in ipairs(handlers[event] or {}) do
        local ok, err = pcall(handler, ...)
        if not ok and R.db and R.db.debug then
            R.Print(event .. ": " .. tostring(err))
        end
    end
end)

------------------------------------------------------------------------
-- Classe, especialização e feitiços
------------------------------------------------------------------------

function R.Class()
    return select(2, UnitClass("player"))
end

function R:Specs(class)
    return self.ROTATIONS[class or self.Class()] or {}
end

-- Pontos gastos em cada aba de talentos (Forever: uma árvore por classe, as
-- abas são grupos). Mesmo método do indicador de equipamento do Azimute.
function R.TalentTabs()
    if not (C_ClassTalents and C_ClassTalents.GetActiveConfigID and C_Traits
        and C_Traits.GetGroupDisplayInfoByTreeID and C_Traits.GetGroupCurrencyInfo) then
        return nil
    end
    local configID = C_ClassTalents.GetActiveConfigID()
    local config = configID and C_Traits.GetConfigInfo(configID)
    local treeID = config and config.treeIDs and config.treeIDs[1]
    if not treeID then
        return nil
    end
    local tabs = C_Traits.GetGroupDisplayInfoByTreeID(treeID) or {}
    table.sort(tabs, function(a, b)
        return (a.orderIndex or 0) < (b.orderIndex or 0)
    end)
    local groupIDs = {}
    for i, tab in ipairs(tabs) do
        groupIDs[i] = tab.groupID
    end
    local spent = {}
    for _, group in ipairs(C_Traits.GetGroupCurrencyInfo(configID, groupIDs) or {}) do
        local currency = group.currencyInfos and group.currencyInfos[1]
        spent[group.traitNodeGroupID] = currency and currency.spent or 0
    end
    local result = {}
    for i, tab in ipairs(tabs) do
        result[i] = spent[tab.groupID] or 0
    end
    return result
end

-- Aba com mais pontos (nil sem talentos).
function R:TalentTab()
    if InCombatLockdown() then
        return self.lastTab
    end
    local ok, tabs = pcall(self.TalentTabs)
    if ok and tabs then
        local best, bestSpent = nil, 0
        for i, spent in ipairs(tabs) do
            if spent > bestSpent then
                best, bestSpent = i, spent
            end
        end
        self.lastTab = best
    end
    return self.lastTab
end

-- Especialização atual: escolhida (/azrot 1-4) > pelos talentos > a primeira.
-- Devolve a tabela da rotação e a origem ("chosen", "talents" ou nil).
function R:CurrentSpec()
    local specs = self:Specs()
    local chosen = self.char and self.char.spec
    for _, spec in ipairs(specs) do
        if spec.key == chosen then
            return spec, "chosen"
        end
    end
    local tab = self:TalentTab()
    if tab then
        for _, spec in ipairs(specs) do
            if spec.tab == tab then
                return spec, "talents"
            end
        end
    end
    return specs[1]
end

function R.Text(entry)
    return R.isPT and entry.pt or entry.en
end

function R.SpellName(spellID)
    if C_Spell and C_Spell.GetSpellName then
        return C_Spell.GetSpellName(spellID)
    end
    local info = C_Spell and C_Spell.GetSpellInfo and C_Spell.GetSpellInfo(spellID)
    return info and info.name
end

function R.SpellIcon(spellID)
    return C_Spell and C_Spell.GetSpellTexture and C_Spell.GetSpellTexture(spellID) or 134400
end

-- Conhece o feitiço (qualquer posto: os postos antigos continuam no livro).
function R.Knows(spellID)
    if IsPlayerSpell and IsPlayerSpell(spellID) then
        return true
    end
    if IsSpellKnown and IsSpellKnown(spellID) then
        return true
    end
    if C_SpellBook and C_SpellBook.IsSpellKnown then
        local ok, known = pcall(C_SpellBook.IsSpellKnown, spellID)
        if ok and known then
            return true
        end
    end
    return false
end

-- Como se aprende: "talent", "quest" (nível) ou "trainer" (nível).
function R:HowToLearn(step, class)
    if step.talent then
        return "talent"
    end
    if step.quest then
        return "quest", step.quest
    end
    local levels = self.LEVELS and self.LEVELS[class or self.Class()]
    return "trainer", levels and levels[step[1]]
end

-- Identificador para as APIs de feitiço: o nome pega o posto mais alto do livro.
function R.SpellKey(spellID)
    return R.SpellName(spellID) or spellID
end

------------------------------------------------------------------------
-- Inicialização
------------------------------------------------------------------------

local function CopyDefaults(db, defaults)
    for key, value in pairs(defaults) do
        if db[key] == nil and value ~= nil then
            db[key] = type(value) == "table" and CopyTable(value) or value
        end
    end
    return db
end

R:RegisterEvent("ADDON_LOADED", function(name)
    if name ~= addonName then
        return
    end
    AzimuteRotationDB = CopyDefaults(AzimuteRotationDB or {}, R.DEFAULTS)
    AzimuteRotationCharDB = AzimuteRotationCharDB or {}
    R.db, R.char = AzimuteRotationDB, AzimuteRotationCharDB
    R:Fire("INIT")
end)

R:RegisterEvent("PLAYER_LOGIN", function()
    R:Fire("LOGIN")
    if AzimuteAPI and AzimuteAPI.RegisterModule then
        pcall(AzimuteAPI.RegisterModule, {
            name = L["TITLE"],
            toggle = function() R.Panel:Toggle() end,
        })
    end
end)

for _, event in ipairs({ "SPELLS_CHANGED", "PLAYER_LEVEL_UP", "TRAIT_CONFIG_UPDATED", "PLAYER_TALENT_UPDATE" }) do
    R:RegisterEvent(event, function()
        R:Fire("CHANGED")
    end)
end

------------------------------------------------------------------------
-- Comandos
------------------------------------------------------------------------

function R:ChooseSpec(index)
    local specs = self:Specs()
    if index == 0 then
        self.char.spec = nil
    elseif specs[index] then
        self.char.spec = specs[index].key
    else
        return
    end
    local spec = self:CurrentSpec()
    if spec then
        R.Print(L["PANEL_TITLE"]:format(R.Text(spec.name)))
    end
    self:Fire("CHANGED")
end

function R:PrintDiag()
    local diag = self.db.diag
    if not diag then
        R.Print(L["DIAG_NONE"])
        return
    end
    R.Print(L["DIAG_TITLE"])
    for _, key in ipairs({ "usable", "cooldown", "duration", "aura", "assisted" }) do
        local value = diag[key]
        local text = value == "ok" and L["DIAG_OK"] or value == "secret" and L["DIAG_SECRET"]
            or value == "missing" and L["DIAG_MISSING"] or tostring(value)
        print(L["DIAG_LINE"]:format(L["DIAG_NAMES"][key], text))
    end
end

SLASH_AZIMUTEROTATION1 = "/azrot"
SLASH_AZIMUTEROTATION2 = "/azrotacao"
SlashCmdList.AZIMUTEROTATION = function(input)
    local command = strtrim(input or ""):lower()
    local number = tonumber(command)
    if command == "" then
        R.Panel:Toggle()
    elseif number then
        R:ChooseSpec(number)
    elseif command == "bar" or command == "barra" then
        R.db.live = not R.db.live
        R:Fire("CHANGED")
    elseif command == "diag" then
        R:PrintDiag()
    else
        for _, line in ipairs(L["HELP"]) do
            R.Print(line)
        end
    end
end
