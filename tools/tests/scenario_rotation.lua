-- Rotação: dados das 9 classes, especialização pelos talentos, painel e barra ao vivo.
local S, R = STUB, MOD

local function check(cond, msg)
    if not cond then error("FALHOU: " .. msg, 2) end
    print("  ok: " .. msg)
end

-- APIs de combate (o teste controla o que é secreto)
S.usable, S.cooldowns, S.auras, S.inCombat = {}, {}, {}, false
C_Spell.IsSpellUsable = function(key) return S.usable[key] == true, false end
C_Spell.GetSpellCooldown = function(key)
    if S.cooldownSecret then return { startTime = S.Secret(0), duration = S.Secret(0) } end
    local cd = S.cooldowns[key]
    return { startTime = cd and S.time or 0, duration = cd or 0 }
end
C_Spell.GetSpellCooldownDuration = function(key) return { key = key } end
C_UnitAuras = C_UnitAuras or {}
C_UnitAuras.GetAuraDataBySpellName = function(unit, key)
    if S.auraSecret then return S.Secret("aura") end
    return S.auras[key] and { spellId = 1, expirationTime = S.time + 10 } or nil
end
function UnitAffectingCombat() return S.inCombat end

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

-- barra ao vivo
S.inCombat = true
S.known[7384], S.known[12294], S.known[5308] = true, true, true
local steps = R.Live.Steps(R:CurrentSpec(), true)
local ids = {}
for i, step in ipairs(steps) do ids[i] = step[1] end
check(table.concat(ids, ",") == "772,7384,12294,5308,78", "em combate: dano contínuo, reativos, principal, execução, enchimento: " .. table.concat(ids, ","))
S.usable["Feitiço772"], S.usable["Feitiço12294"], S.usable["Feitiço78"] = true, true, true
S.auras["Feitiço772"] = true
check(R.Live.Next(steps) == 3, "Dilacerar já no alvo e Sobrepujar apagado: próximo é o Golpe Mortal")
S.cooldowns["Feitiço12294"] = 6
check(R.Live.Next(steps) == 5, "Golpe Mortal em recarga: Golpe Heroico")
S.cooldownSecret = true
check(R.Live.Next(steps) == nil, "recarga secreta: sem brilho (nada é comparado)")
S.cooldownSecret = false
S.cooldowns["Feitiço12294"] = nil
S.auras["Feitiço772"] = nil
S.auraSecret = true
check(R.Live.Next(steps) == 3, "efeito no alvo secreto: pula o dano contínuo")
S.auraSecret = false

S.FireEvent("PLAYER_REGEN_DISABLED")
S.cooldownSecret = true
S.RunTimers()
local bar = R.Live.bar
check(bar and bar._shown, "barra aparece em combate")
check(R.db.diag and R.db.diag.cooldown == "secret" and R.db.diag.usable == "ok", "diagnóstico da luta guardado")
S.cooldownSecret = false
S.inCombat = false
S.FireEvent("PLAYER_REGEN_ENABLED")
check(not bar._shown, "fora de combate a barra some")
SlashCmdList.AZIMUTEROTATION("barra")
check(R.db.live == false, "/azrot barra desliga")
SlashCmdList.AZIMUTEROTATION("barra")
SlashCmdList.AZIMUTEROTATION("diag")
