-- Rotação: dados das 9 classes, especialização pelos talentos e painel.
local S, R = STUB, MOD

local function check(cond, msg)
    if not cond then error("FALHOU: " .. msg, 2) end
    print("  ok: " .. msg)
end

S.FireEvent("ADDON_LOADED", "Azimute_Rotation")
if WITH_CORE then S.FireEvent("ADDON_LOADED", "Azimute") end
S.FireEvent("PLAYER_LOGIN")
S.RunTimers()
check(AzimuteRotationDB and R.db == AzimuteRotationDB and R.char == AzimuteRotationCharDB, "dados salvos próprios")
check(SlashCmdList.AZIMUTEROTATION ~= nil, "comando /azrot registrado")

if WITH_CORE then
    local found = false
    for _, module in ipairs(NS.modules) do if module.name == R.L["TITLE"] then found = true end end
    check(found, "aparece no menu de módulos do Azimute")
    return
end

-- dados
local KINDS = { buff = 1, opener = 1, dot = 1, main = 1, reactive = 1, execute = 1, filler = 1, cd = 1, aoe = 1, util = 1, heal = 1, pet = 1 }
local classes, specs = 0, 0
for class, list in pairs(R.ROTATIONS) do
    classes = classes + 1
    local tabs = {}
    for _, spec in ipairs(list) do
        specs = specs + 1
        tabs[spec.tab] = true
        assert(spec.name.pt and spec.name.en and spec.tip.pt and spec.tip.en, class .. " " .. spec.key .. ": nome/dica")
        assert(#spec.steps >= 6, class .. " " .. spec.key .. ": poucos passos")
        for i, step in ipairs(spec.steps) do
            local where = class .. " " .. spec.key .. " passo " .. i
            assert(type(step[1]) == "number" and KINDS[step[2]], where .. ": feitiço/tipo")
            assert(step.pt and step.en, where .. ": texto pt/en")
            if not step.talent and not step.quest then
                assert(R.LEVELS[class][step[1]], where .. ": sem nível no treinador (rodar tools/rotation_levels.py)")
            end
        end
    end
    assert(tabs[1] and tabs[2] and tabs[3], class .. ": falta especialização de alguma aba")
end
check(classes == 9 and specs == 28, "9 classes, 28 rotações (druida feral: gato e urso): " .. classes .. "/" .. specs)

-- especialização pelos talentos (aba 3 = Proteção)
S.talentGroups = { { traitNodeGroupID = 13, currencyInfos = { { spent = 12 } } } }
local spec, source = R:CurrentSpec()
check(spec.key == "protection" and source == "talents", "guerreiro com pontos na 3ª aba: Proteção pelos talentos")
SlashCmdList.AZIMUTEROTATION("2")
spec, source = R:CurrentSpec()
check(spec.key == "fury" and source == "chosen", "/azrot 2 escolhe Fúria")
SlashCmdList.AZIMUTEROTATION("0")
check(R:CurrentSpec().key == "protection", "/azrot 0 volta para os talentos")
S.talentGroups = {}
R.lastTab = nil
SlashCmdList.AZIMUTEROTATION("1")

-- painel
S.player.level = 10
S.known[6673], S.known[100], S.known[772], S.known[78] = true, true, true, true
SlashCmdList.AZIMUTEROTATION("")
local frame = R.Panel.frame
check(frame and frame:IsShown(), "/azrot abre o painel")
check(frame.title._text == "Rotação: Guerreiro Armas", "título com classe e especialização: " .. tostring(frame.title._text))
local rows = frame.rows
check(rows[1]._shown and rows[1].status._text == "", "Grito de Batalha conhecido: sem aviso")
check(rows[4].status._text == "aprende no nível 12", "Sobrepujar: aprende no 12: " .. tostring(rows[4].status._text))
check(rows[5].status._text == "talento", "Golpe Mortal é talento")
check(rows[1].text._text == "Antes de puxar (e quando acabar).", "texto do passo em português")
check(frame.tabs[1] and frame.tabs[3] and frame.tabs[3]._text == "Proteção", "abas das especializações")
