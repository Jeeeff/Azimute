-- Masmorras clássicas: o jogador escolhe quais pretende fazer e os passos
-- das missões delas (condição "ifdungeon CÓDIGO" nos guias) entram no guia.
-- Os nomes vêm do cliente, já traduzidos (GetRealZoneText pelo ID da instância).
local addonName, ns = ...
local L = ns.L

local Dungeons = {}
ns.Dungeons = Dungeons

-- code = código usado nos guias; instance = ID do mapa da instância.
Dungeons.LIST = {
    { code = "RFC", instance = 389, levels = "13-18", faction = "Horde", name = "Ragefire Chasm" },
    { code = "WC", instance = 43, levels = "17-24", name = "Wailing Caverns" },
    { code = "DM", instance = 36, levels = "17-26", name = "The Deadmines" },
    { code = "SFK", instance = 33, levels = "22-30", name = "Shadowfang Keep" },
    { code = "BFD", instance = 48, levels = "24-32", name = "Blackfathom Deeps" },
    { code = "STOCKS", instance = 34, levels = "24-32", faction = "Alliance", name = "The Stockade" },
    { code = "GNOMER", instance = 90, levels = "29-38", name = "Gnomeregan" },
    { code = "RFK", instance = 47, levels = "30-40", name = "Razorfen Kraul" },
    { code = "SM", instance = 189, levels = "34-45", name = "Scarlet Monastery" },
    { code = "RFD", instance = 129, levels = "40-50", name = "Razorfen Downs" },
    { code = "ULDA", instance = 70, levels = "42-52", name = "Uldaman" },
    { code = "ZF", instance = 209, levels = "44-54", name = "Zul'Farrak" },
    { code = "MARA", instance = 349, levels = "46-55", name = "Maraudon" },
    { code = "ST", instance = 109, levels = "50-60", name = "Sunken Temple" },
    { code = "BRD", instance = 230, levels = "52-60", name = "Blackrock Depths" },
}

function Dungeons.Name(entry)
    if GetRealZoneText then
        local name = GetRealZoneText(entry.instance)
        if name and name ~= "" and not ns.IsSecret(name) then
            return name
        end
    end
    return entry.name
end

function Dungeons.Find(code)
    code = code and code:upper()
    for _, entry in ipairs(Dungeons.LIST) do
        if entry.code == code then
            return entry
        end
    end
end

function Dungeons:IsChosen(code)
    return ns.char.dungeons[code] == true
end

function Dungeons:SetChosen(code, chosen)
    ns.char.dungeons[code] = chosen and true or nil
    ns.Engine:RequestEvaluate()
end

-- Masmorras da facção do personagem (ou de ambas).
function Dungeons:ForPlayer()
    local faction = UnitFactionGroup("player")
    local list = {}
    for _, entry in ipairs(self.LIST) do
        if not entry.faction or entry.faction == faction then
            list[#list + 1] = entry
        end
    end
    return list
end
