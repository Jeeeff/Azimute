-- Automáticos sociais (todos desligados por padrão; SHIFT segurado cancela):
-- recusar duelos, recusar convites de grupo de quem não é amigo nem da guilda,
-- aceitar ressurreição e invocação.
local addonName, U = ...
local L = U.L

local function Skip()
    return IsShiftKeyDown and IsShiftKeyDown()
end

local function HidePopup(...)
    if StaticPopup_Hide then
        for i = 1, select("#", ...) do
            StaticPopup_Hide((select(i, ...)))
        end
    end
end

local function SafeName(name)
    if not name or U.IsSecret(name) then
        return "?"
    end
    return name
end

-- Amigo ou colega de guilda? (GUID pode vir secreto: na dúvida, conhecido.)
function U.IsKnown(guid)
    if not guid or U.IsSecret(guid) then
        return true
    end
    if C_FriendList and C_FriendList.IsFriend and C_FriendList.IsFriend(guid) then
        return true
    end
    if IsGuildMember and IsGuildMember(guid) then
        return true
    end
    if C_BattleNet and C_BattleNet.GetAccountInfoByGUID and C_BattleNet.GetAccountInfoByGUID(guid) then
        return true
    end
    return false
end

U:Feature({
    key = "declineDuels", label = "OPT_DECLINE_DUELS", tip = "OPT_DECLINE_DUELS_TIP", default = false,
    init = function()
        U:RegisterEvent("DUEL_REQUESTED", function(name)
            if U:Enabled("declineDuels") and not Skip() then
                CancelDuel()
                HidePopup("DUEL_REQUESTED")
                U.Print(L["SOCIAL_DUEL"]:format(SafeName(name)))
            end
        end)
    end,
})

U:Feature({
    key = "declineInvites", label = "OPT_DECLINE_INVITES", tip = "OPT_DECLINE_INVITES_TIP", default = false,
    init = function()
        U:RegisterEvent("PARTY_INVITE_REQUEST", function(name, _, _, _, _, _, inviterGUID)
            if U:Enabled("declineInvites") and not Skip() and not U.IsKnown(inviterGUID) then
                DeclineGroup()
                HidePopup("PARTY_INVITE")
                U.Print(L["SOCIAL_INVITE"]:format(SafeName(name)))
            end
        end)
    end,
})

U:Feature({
    key = "acceptResurrect", label = "OPT_ACCEPT_RES", tip = "OPT_ACCEPT_RES_TIP", default = false,
    init = function()
        U:RegisterEvent("RESURRECT_REQUEST", function(name)
            if U:Enabled("acceptResurrect") and not Skip() then
                AcceptResurrect()
                HidePopup("RESURRECT", "RESURRECT_NO_SICKNESS", "RESURRECT_NO_TIMER")
                U.Print(L["SOCIAL_RES"]:format(SafeName(name)))
            end
        end)
    end,
})

U:Feature({
    key = "acceptSummon", label = "OPT_ACCEPT_SUMMON", tip = "OPT_ACCEPT_SUMMON_TIP", default = false,
    init = function()
        U:RegisterEvent("CONFIRM_SUMMON", function()
            if U:Enabled("acceptSummon") and not Skip() and C_SummonInfo and C_SummonInfo.ConfirmSummon then
                -- um instante depois, como o jogo faz ao clicar em "Aceitar"
                C_Timer.After(0.5, function()
                    if C_SummonInfo.GetSummonConfirmTimeLeft and C_SummonInfo.GetSummonConfirmTimeLeft() <= 0 then
                        return
                    end
                    C_SummonInfo.ConfirmSummon()
                    HidePopup("CONFIRM_SUMMON")
                    U.Print(L["SOCIAL_SUMMON"])
                end)
            end
        end)
    end,
})
