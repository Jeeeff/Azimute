-- Rotações por classe e especialização (foco: upar no Forever, nível 1-60).
-- Texto próprio do Azimute. Cada passo: { feitiço (posto 1), tipo, pt = ..., en = ... }
-- O nome e o ícone do feitiço vêm do próprio jogo (no idioma do cliente);
-- o nível em que se aprende vem de Levels.lua (gerado a partir do What's Training).
--   talent = true  -> talento (não se aprende no treinador)
--   quest = N      -> aprendido em missão de classe por volta do nível N
-- Tipos:
--   buff     manter ativo (fora de combate / antes de puxar)
--   opener   abre a luta
--   dot      dano contínuo: manter no alvo
--   main     golpe principal (usar sempre que estiver pronto)
--   reactive só aparece depois de algo (esquiva, bloqueio, alvo fraco...)
--   execute  alvo com pouca vida
--   filler   enchimento: quando nada acima estiver pronto
--   cd       recarga longa (lutas difíceis, chefes)
--   aoe      2 ou mais inimigos
--   util     situacional (interromper, prender, fugir)
--   heal     cura
--   pet      ajudante
local addonName, R = ...

R.ROTATIONS = {}

------------------------------------------------------------------------
-- Guerreiro (Armas, Fúria, Proteção)
------------------------------------------------------------------------
R.ROTATIONS.WARRIOR = {
    {
        key = "arms", tab = 1, role = "dps",
        name = { pt = "Armas", en = "Arms" },
        tip = {
            pt = "Upar de Armas: Investida para começar com fúria, Dilacerar em quem vive bastante e golpes fortes. Fúria sobrando vira Golpe Heroico.",
            en = "Arms leveling: Charge to start with rage, Rend on targets that last, big hits. Extra rage goes into Heroic Strike.",
        },
        steps = {
            { 6673, "buff", pt = "Antes de puxar (e quando acabar).", en = "Before the pull (and when it fades)." },
            { 100, "opener", pt = "Abre a luta de longe e gera fúria.", en = "Opens from range and builds rage." },
            { 772, "dot", pt = "Logo no começo, em alvos que não são mortos-vivos nem elementais.", en = "Early, on targets that are not undead or elementals." },
            { 7384, "reactive", pt = "Sempre que o alvo se esquivar (acende sozinho).", en = "Whenever the target dodges (it lights up)." },
            { 12294, "main", talent = true, pt = "Sempre que estiver pronto.", en = "Whenever it is ready." },
            { 5308, "execute", pt = "Alvo abaixo de 20% de vida.", en = "Target below 20% health." },
            { 78, "filler", pt = "Só com fúria sobrando (mais de 50).", en = "Only with spare rage (over 50)." },
            { 12292, "aoe", talent = true, pt = "Com 2 inimigos: o próximo golpe acerta os dois.", en = "With 2 enemies: your next hits strike both." },
            { 6343, "aoe", pt = "Vários inimigos colados em você.", en = "Several enemies around you." },
            { 1715, "util", pt = "Alvo fugindo (humanoides fogem com pouca vida).", en = "Target running away (humanoids flee at low health)." },
        },
    },
    {
        key = "fury", tab = 2, role = "dps",
        name = { pt = "Fúria", en = "Fury" },
        tip = {
            pt = "Fúria quer duas armas e muita fúria: Sede de Sangue e Redemoinho são os golpes principais; Raiva Sangrenta e Fúria Berserker dão fúria extra.",
            en = "Fury wants two weapons and lots of rage: Bloodthirst and Whirlwind are the main hits; Bloodrage and Berserker Rage give extra rage.",
        },
        steps = {
            { 6673, "buff", pt = "Antes de puxar.", en = "Before the pull." },
            { 100, "opener", pt = "Abre a luta (Posição de Batalha).", en = "Opens the fight (Battle Stance)." },
            { 2687, "cd", pt = "Fúria extra no começo da luta.", en = "Extra rage at the start of the fight." },
            { 23881, "main", talent = true, pt = "Golpe principal: sempre que estiver pronto.", en = "Main hit: whenever it is ready." },
            { 1680, "main", pt = "Pronto e com fúria: usar (Posição Berserker).", en = "Ready and with rage: use it (Berserker Stance)." },
            { 5308, "execute", pt = "Alvo abaixo de 20% de vida.", en = "Target below 20% health." },
            { 78, "filler", pt = "Fúria sobrando (mais de 50).", en = "Spare rage (over 50)." },
            { 18499, "cd", pt = "Mais fúria e imune a medo.", en = "More rage and immune to fear." },
            { 12328, "cd", talent = true, pt = "Lutas difíceis: mais dano por 30 s.", en = "Hard fights: more damage for 30 s." },
            { 845, "aoe", pt = "2 ou mais inimigos: troca o Golpe Heroico.", en = "2+ enemies: replaces Heroic Strike." },
        },
    },
    {
        key = "protection", tab = 3, role = "tank",
        name = { pt = "Proteção", en = "Protection" },
        tip = {
            pt = "Tanque: Posição Defensiva e escudo. Fender Armadura acumula ameaça; Golpe de Escudo e Revanche são os golpes de mais ameaça.",
            en = "Tank: Defensive Stance and a shield. Sunder Armor stacks threat; Shield Slam and Revenge are the big threat hits.",
        },
        steps = {
            { 71, "buff", quest = 10, pt = "Postura de tanque (missão de classe no nível 10).", en = "Tanking stance (class quest at level 10)." },
            { 6673, "buff", pt = "Antes de puxar.", en = "Before the pull." },
            { 100, "opener", pt = "Abre em Posição de Batalha e troca para Defensiva.", en = "Open in Battle Stance, then switch to Defensive." },
            { 2565, "main", pt = "Bloquear libera a Revanche.", en = "Blocking enables Revenge." },
            { 6572, "reactive", pt = "Sempre que acender: muita ameaça por pouca fúria.", en = "Whenever it lights up: lots of threat for little rage." },
            { 23922, "main", talent = true, pt = "Pronto: usar.", en = "Ready: use it." },
            { 7386, "filler", quest = 10, pt = "Acumular 5 no alvo principal.", en = "Stack 5 on the main target." },
            { 78, "filler", pt = "Fúria sobrando.", en = "Spare rage." },
            { 1160, "aoe", pt = "Vários inimigos: menos dano em você e ameaça em todos.", en = "Several enemies: less damage taken and threat on all." },
            { 6343, "aoe", pt = "Vários inimigos (Posição de Batalha).", en = "Several enemies (Battle Stance)." },
            { 355, "util", quest = 10, pt = "Inimigo foi para outro jogador: puxa de volta.", en = "Enemy went for someone else: pull it back." },
            { 72, "util", pt = "Interromper feitiço.", en = "Interrupt a spell." },
            { 12975, "cd", talent = true, pt = "Vida acabando.", en = "Health running out." },
        },
    },
}

------------------------------------------------------------------------
-- Ladino (Assassinato, Combate, Subterfúgio)
------------------------------------------------------------------------
R.ROTATIONS.ROGUE = {
    {
        key = "assassination", tab = 1, role = "dps",
        name = { pt = "Assassinato", en = "Assassination" },
        tip = {
            pt = "Gera pontos de combo com Golpe Sinistro e gasta em Picar e Eviscerar. Sangue Frio deixa o Eviscerar crítico.",
            en = "Build combo points with Sinister Strike, spend them on Slice and Dice and Eviscerate. Cold Blood makes Eviscerate crit.",
        },
        steps = {
            { 1784, "buff", pt = "Chegue em furtividade.", en = "Approach in stealth." },
            { 1833, "opener", pt = "Abre atordoando (ou Garrote por trás).", en = "Open with a stun (or Garrote from behind)." },
            { 5171, "main", pt = "Com 1-2 pontos: mais velocidade de ataque.", en = "With 1-2 points: faster attacks." },
            { 1752, "filler", pt = "Gera pontos de combo.", en = "Builds combo points." },
            { 14177, "cd", talent = true, pt = "Antes de um Eviscerar com 5 pontos.", en = "Before a 5-point Eviscerate." },
            { 2098, "main", pt = "Gasta 4-5 pontos (ou finaliza o alvo).", en = "Spend 4-5 points (or finish the target)." },
            { 1766, "util", pt = "Interromper feitiço.", en = "Interrupt a spell." },
            { 5277, "cd", pt = "Dois inimigos ou vida baixa.", en = "Two enemies or low health." },
        },
    },
    {
        key = "combat", tab = 2, role = "dps",
        name = { pt = "Combate", en = "Combat" },
        tip = {
            pt = "O jeito mais fácil de upar de Ladino: espada ou maça, Golpe Sinistro para gerar e Picar + Eviscerar para gastar.",
            en = "The easiest Rogue leveling: sword or mace, Sinister Strike to build, Slice and Dice + Eviscerate to spend.",
        },
        steps = {
            { 1784, "buff", pt = "Chegue em furtividade.", en = "Approach in stealth." },
            { 1833, "opener", pt = "Abre atordoando (ou só Golpe Sinistro).", en = "Open with a stun (or just Sinister Strike)." },
            { 5171, "main", pt = "Com 1-2 pontos: manter ativo.", en = "With 1-2 points: keep it up." },
            { 1752, "filler", pt = "Gera pontos de combo.", en = "Builds combo points." },
            { 14251, "reactive", talent = true, pt = "Depois de aparar: usar.", en = "After a parry: use it." },
            { 2098, "main", pt = "Gasta 4-5 pontos.", en = "Spend 4-5 points." },
            { 13877, "aoe", talent = true, pt = "2 inimigos: os golpes acertam os dois.", en = "2 enemies: hits strike both." },
            { 13750, "cd", talent = true, pt = "Lutas difíceis: energia em dobro.", en = "Hard fights: double energy." },
            { 5277, "cd", pt = "Dois inimigos ou vida baixa.", en = "Two enemies or low health." },
            { 1766, "util", pt = "Interromper feitiço.", en = "Interrupt a spell." },
        },
    },
    {
        key = "subtlety", tab = 3, role = "dps",
        name = { pt = "Subterfúgio", en = "Subtlety" },
        tip = {
            pt = "Adaga e posicionamento: Emboscar abrindo e Apunhalar pelas costas. Hemorragia serve quando não dá para ficar atrás.",
            en = "Dagger and positioning: open with Ambush and Backstab from behind. Hemorrhage when you cannot stay behind.",
        },
        steps = {
            { 1784, "buff", pt = "Chegue em furtividade.", en = "Approach in stealth." },
            { 8676, "opener", pt = "Por trás, com adaga: abre com muito dano.", en = "From behind with a dagger: big opening hit." },
            { 5171, "main", pt = "Com 1-2 pontos: manter ativo.", en = "With 1-2 points: keep it up." },
            { 53, "filler", pt = "Por trás, com adaga: gera pontos.", en = "From behind with a dagger: builds points." },
            { 16511, "filler", talent = true, pt = "Quando não dá para ficar atrás.", en = "When you cannot stay behind." },
            { 2098, "main", pt = "Gasta 4-5 pontos.", en = "Spend 4-5 points." },
            { 1776, "util", pt = "Atordoa de frente: dá tempo de ir para as costas.", en = "Stuns from the front: time to get behind." },
            { 14185, "cd", talent = true, pt = "Zera as recargas (Evasão, Sumir...).", en = "Resets cooldowns (Evasion, Vanish...)." },
        },
    },
}

------------------------------------------------------------------------
-- Caçador (Domínio das Feras, Precisão, Sobrevivência)
------------------------------------------------------------------------
R.ROTATIONS.HUNTER = {
    {
        key = "beastmastery", tab = 1, role = "dps",
        name = { pt = "Domínio das Feras", en = "Beast Mastery" },
        tip = {
            pt = "O ajudante faz o trabalho pesado: mande ele primeiro, espere ele pegar a atenção e atire. Ajudante feliz e curado.",
            en = "Your pet does the heavy lifting: send it first, let it grab attention, then shoot. Keep it happy and healed.",
        },
        steps = {
            { 13165, "buff", pt = "Aspecto para atirar (Macaco só para corpo a corpo).", en = "Shooting aspect (Monkey only for melee)." },
            { 1130, "opener", pt = "Marca o alvo e mande o ajudante atacar.", en = "Mark the target and send your pet." },
            { 1978, "dot", pt = "Logo no começo.", en = "Early in the fight." },
            { 3044, "main", pt = "Pronto: usar.", en = "Ready: use it." },
            { 75, "filler", pt = "Tiro automático o tempo todo.", en = "Auto Shot all the time." },
            { 136, "pet", pt = "Ajudante com vida baixa.", en = "Pet at low health." },
            { 19574, "cd", talent = true, pt = "Lutas difíceis: ajudante muito mais forte.", en = "Hard fights: much stronger pet." },
            { 2973, "util", pt = "Inimigo colado em você.", en = "Enemy in melee range." },
            { 5384, "util", pt = "Tudo deu errado: finge de morto.", en = "Everything went wrong: play dead." },
        },
    },
    {
        key = "marksmanship", tab = 2, role = "dps",
        name = { pt = "Precisão", en = "Marksmanship" },
        tip = {
            pt = "Tiro Mirado abre com muito dano; depois Picada da Serpente, Tiro Arcano e Tiro automático. Vários inimigos: Multisparo.",
            en = "Aimed Shot opens with a big hit; then Serpent Sting, Arcane Shot and Auto Shot. Several enemies: Multi-Shot.",
        },
        steps = {
            { 13165, "buff", pt = "Aspecto para atirar.", en = "Shooting aspect." },
            { 1130, "opener", pt = "Marca o alvo.", en = "Mark the target." },
            { 19434, "opener", talent = true, pt = "Abre com muito dano (tem tempo de lançar).", en = "Big opening hit (has a cast time)." },
            { 1978, "dot", pt = "Logo no começo.", en = "Early in the fight." },
            { 3044, "main", pt = "Pronto: usar.", en = "Ready: use it." },
            { 2643, "aoe", pt = "Vários inimigos.", en = "Several enemies." },
            { 75, "filler", pt = "Tiro automático o tempo todo.", en = "Auto Shot all the time." },
            { 5116, "util", pt = "Alvo vindo em você: deixa ele lento.", en = "Target coming at you: slow it." },
            { 136, "pet", pt = "Ajudante com vida baixa.", en = "Pet at low health." },
        },
    },
    {
        key = "survival", tab = 3, role = "dps",
        name = { pt = "Sobrevivência", en = "Survival" },
        tip = {
            pt = "Atira de longe e se vira bem de perto: Cortar Asa + Golpe do Raptor quando o inimigo chega.",
            en = "Shoots from range and handles melee well: Wing Clip + Raptor Strike when the enemy reaches you.",
        },
        steps = {
            { 13165, "buff", pt = "Aspecto para atirar.", en = "Shooting aspect." },
            { 1130, "opener", pt = "Marca o alvo e mande o ajudante.", en = "Mark the target and send your pet." },
            { 1978, "dot", pt = "Logo no começo.", en = "Early in the fight." },
            { 3044, "main", pt = "Pronto: usar.", en = "Ready: use it." },
            { 75, "filler", pt = "Tiro automático o tempo todo.", en = "Auto Shot all the time." },
            { 2974, "util", pt = "Inimigo colado: deixa lento e se afaste.", en = "Enemy in melee: slow it and step away." },
            { 2973, "main", pt = "Corpo a corpo: pronto, usar.", en = "In melee: ready, use it." },
            { 1495, "reactive", pt = "Depois que o alvo se esquivar.", en = "After the target dodges." },
            { 19306, "reactive", talent = true, pt = "Depois de aparar.", en = "After a parry." },
            { 19386, "util", talent = true, pt = "Coloca um segundo inimigo para dormir.", en = "Puts a second enemy to sleep." },
        },
    },
}

------------------------------------------------------------------------
-- Mago (Arcano, Fogo, Gelo)
------------------------------------------------------------------------
R.ROTATIONS.MAGE = {
    {
        key = "arcane", tab = 1, role = "dps",
        name = { pt = "Arcano", en = "Arcane" },
        tip = {
            pt = "Arcano gasta muita mana: Mísseis Arcanos como golpe principal e Evocação para recuperar. Presença da Mente deixa o próximo feitiço instantâneo.",
            en = "Arcane is mana hungry: Arcane Missiles as the main spell and Evocation to recover. Presence of Mind makes your next spell instant.",
        },
        steps = {
            { 1459, "buff", pt = "Antes de sair (e no grupo).", en = "Before heading out (and on the group)." },
            { 168, "buff", pt = "Armadura sempre ativa.", en = "Armor always on." },
            { 116, "opener", pt = "Abre deixando o alvo lento.", en = "Opens and slows the target." },
            { 5143, "main", pt = "Golpe principal.", en = "Main spell." },
            { 2136, "main", pt = "Instantâneo: termina o alvo.", en = "Instant: finishes the target." },
            { 12043, "cd", talent = true, pt = "Próximo feitiço instantâneo.", en = "Next spell is instant." },
            { 12042, "cd", talent = true, pt = "Mais dano (e mais custo) por 15 s.", en = "More damage (and cost) for 15 s." },
            { 122, "util", pt = "Inimigo colado: congela e se afaste.", en = "Enemy in melee: freeze it and step away." },
            { 1449, "aoe", pt = "Vários inimigos colados.", en = "Several enemies around you." },
            { 12051, "cd", pt = "Sem mana.", en = "Out of mana." },
            { 2139, "util", pt = "Interromper feitiço.", en = "Interrupt a spell." },
        },
    },
    {
        key = "fire", tab = 2, role = "dps",
        name = { pt = "Fogo", en = "Fire" },
        tip = {
            pt = "Muito dano por feitiço: Pirolampo abre de longe, Bola de Fogo enche e Impacto de Fogo termina.",
            en = "Big hits: Pyroblast opens from range, Fireball fills and Fire Blast finishes.",
        },
        steps = {
            { 1459, "buff", pt = "Antes de sair.", en = "Before heading out." },
            { 168, "buff", pt = "Armadura sempre ativa.", en = "Armor always on." },
            { 11366, "opener", talent = true, pt = "Abre de longe com muito dano.", en = "Opens from range with a big hit." },
            { 133, "filler", pt = "Golpe principal.", en = "Main spell." },
            { 2136, "main", pt = "Instantâneo: termina o alvo.", en = "Instant: finishes the target." },
            { 2948, "filler", pt = "Rápido; com o talento, deixa o alvo mais fraco a fogo.", en = "Fast; with the talent, weakens the target to fire." },
            { 11113, "aoe", talent = true, pt = "Inimigos colados: empurra e deixa lento.", en = "Enemies in melee: knocks back and slows." },
            { 2120, "aoe", pt = "Grupo de inimigos parado.", en = "A group of enemies standing still." },
            { 11129, "cd", talent = true, pt = "Lutas difíceis: mais críticos.", en = "Hard fights: more crits." },
            { 122, "util", pt = "Inimigo colado: congela e se afaste.", en = "Enemy in melee: freeze it and step away." },
            { 2139, "util", pt = "Interromper feitiço.", en = "Interrupt a spell." },
        },
    },
    {
        key = "frost", tab = 3, role = "dps",
        name = { pt = "Gelo", en = "Frost" },
        tip = {
            pt = "O melhor para upar: Seta Gélida deixa lento, Nova Congelante prende e você nunca apanha. Vários inimigos: Nevasca.",
            en = "The best for leveling: Frostbolt slows, Frost Nova roots and you never get hit. Several enemies: Blizzard.",
        },
        steps = {
            { 1459, "buff", pt = "Antes de sair.", en = "Before heading out." },
            { 168, "buff", pt = "Armadura sempre ativa.", en = "Armor always on." },
            { 11426, "buff", talent = true, pt = "Escudo antes de puxar.", en = "Shield before the pull." },
            { 116, "filler", pt = "Golpe principal (deixa lento).", en = "Main spell (slows)." },
            { 122, "util", pt = "Inimigo colado: congela e se afaste.", en = "Enemy in melee: freeze it and step away." },
            { 2136, "main", pt = "Instantâneo: termina o alvo.", en = "Instant: finishes the target." },
            { 120, "aoe", pt = "Inimigos na frente, perto.", en = "Enemies in front, close." },
            { 10, "aoe", pt = "Vários inimigos presos ou lentos.", en = "Several rooted or slowed enemies." },
            { 12472, "cd", talent = true, pt = "Zera Nova Congelante e Bloco de Gelo.", en = "Resets Frost Nova and Ice Block." },
            { 12051, "cd", pt = "Sem mana.", en = "Out of mana." },
            { 2139, "util", pt = "Interromper feitiço.", en = "Interrupt a spell." },
        },
    },
}

------------------------------------------------------------------------
-- Sacerdote (Disciplina, Sagrado, Sombra)
------------------------------------------------------------------------
R.ROTATIONS.PRIEST = {
    {
        key = "discipline", tab = 1, role = "dps",
        name = { pt = "Disciplina", en = "Discipline" },
        tip = {
            pt = "Upar de Disciplina: escudo em você, Palavra Sombria: Dor, Explosão Mental e varinha para terminar (economiza mana).",
            en = "Discipline leveling: shield yourself, Shadow Word: Pain, Mind Blast and a wand to finish (saves mana).",
        },
        steps = {
            { 1243, "buff", pt = "Sempre ativa (e no grupo).", en = "Always on (and on the group)." },
            { 588, "buff", pt = "Sempre ativa.", en = "Always on." },
            { 17, "opener", pt = "Escudo antes de puxar.", en = "Shield before the pull." },
            { 589, "dot", pt = "Logo no começo.", en = "Early in the fight." },
            { 8092, "main", pt = "Pronto: usar.", en = "Ready: use it." },
            { 585, "filler", pt = "Enchimento com mana sobrando.", en = "Filler with spare mana." },
            { 5019, "filler", pt = "Varinha para terminar e poupar mana.", en = "Wand to finish and save mana." },
            { 139, "heal", pt = "Cura leve sem parar de lutar.", en = "Light heal while fighting." },
            { 10060, "cd", talent = true, pt = "Lutas difíceis: mais dano e cura.", en = "Hard fights: more damage and healing." },
        },
    },
    {
        key = "holy", tab = 2, role = "heal",
        name = { pt = "Sagrado", en = "Holy" },
        tip = {
            pt = "Curador de grupo: Renovar no tanque, Cura Rápida quando precisa rápido e Cura (ou Cura Maior) para eficiência. Escudo antes do dano.",
            en = "Group healer: Renew on the tank, Flash Heal when fast is needed and Heal (or Greater Heal) for efficiency. Shield before damage.",
        },
        steps = {
            { 1243, "buff", pt = "Grupo todo.", en = "Whole group." },
            { 17, "heal", pt = "No tanque antes do dano.", en = "On the tank before damage." },
            { 139, "heal", pt = "Mantenha no tanque.", en = "Keep on the tank." },
            { 2054, "heal", pt = "Cura eficiente (sem pressa).", en = "Efficient heal (no rush)." },
            { 2061, "heal", pt = "Vida caindo rápido.", en = "Health dropping fast." },
            { 2060, "heal", pt = "Dano pesado no tanque.", en = "Heavy damage on the tank." },
            { 596, "heal", pt = "Vários do grupo machucados.", en = "Several group members hurt." },
            { 8122, "util", pt = "Inimigos em você: assusta.", en = "Enemies on you: fear them." },
            { 5019, "filler", pt = "Sobrou tempo: varinha no alvo do tanque.", en = "Spare time: wand the tank's target." },
        },
    },
    {
        key = "shadow", tab = 3, role = "dps",
        name = { pt = "Sombra", en = "Shadow" },
        tip = {
            pt = "O melhor para upar de Sacerdote: escudo, Dor, Explosão Mental, Tortura Mental e varinha. Forma de Sombra assim que tiver.",
            en = "The best Priest leveling: shield, Pain, Mind Blast, Mind Flay and wand. Shadowform as soon as you get it.",
        },
        steps = {
            { 1243, "buff", pt = "Sempre ativa.", en = "Always on." },
            { 15473, "buff", talent = true, pt = "Sempre ativa (mais dano de sombra).", en = "Always on (more shadow damage)." },
            { 17, "opener", pt = "Escudo antes de puxar.", en = "Shield before the pull." },
            { 15286, "dot", talent = true, pt = "Cura você com o dano de sombra.", en = "Heals you from shadow damage." },
            { 589, "dot", pt = "Logo no começo.", en = "Early in the fight." },
            { 8092, "main", pt = "Pronto: usar.", en = "Ready: use it." },
            { 15407, "filler", talent = true, pt = "Enchimento (deixa lento).", en = "Filler (slows)." },
            { 5019, "filler", pt = "Varinha para terminar e poupar mana.", en = "Wand to finish and save mana." },
            { 8122, "util", pt = "Dois inimigos: assusta.", en = "Two enemies: fear them." },
        },
    },
}

------------------------------------------------------------------------
-- Bruxo (Suplício, Demonologia, Destruição)
------------------------------------------------------------------------
R.ROTATIONS.WARLOCK = {
    {
        key = "affliction", tab = 1, role = "dps",
        name = { pt = "Suplício", en = "Affliction" },
        tip = {
            pt = "Deixe o Abissal segurar o inimigo e espalhe dano contínuo: Corrupção, Maldição da Agonia e Drenar Vida. Sangria Vital troca vida por mana.",
            en = "Let the Voidwalker hold the enemy and spread damage over time: Corruption, Curse of Agony and Drain Life. Life Tap trades health for mana.",
        },
        steps = {
            { 706, "buff", pt = "Armadura sempre ativa (Pele Demoníaca antes do 20).", en = "Armor always on (Demon Skin before 20)." },
            { 697, "pet", quest = 10, pt = "Ajudante tanque (missão no 10).", en = "Tank pet (quest at 10)." },
            { 172, "dot", pt = "Primeiro.", en = "First." },
            { 980, "dot", pt = "Logo depois.", en = "Right after." },
            { 18265, "dot", talent = true, pt = "Dano e cura.", en = "Damage and healing." },
            { 689, "filler", pt = "Enchimento: dano e cura.", en = "Filler: damage and healing." },
            { 1120, "execute", pt = "Alvo quase morto: rende Fragmento de Alma.", en = "Target almost dead: yields a Soul Shard." },
            { 1454, "util", pt = "Sem mana e com vida sobrando.", en = "Out of mana with spare health." },
            { 5782, "util", pt = "Segundo inimigo: assusta.", en = "Second enemy: fear it." },
        },
    },
    {
        key = "demonology", tab = 2, role = "dps",
        name = { pt = "Demonologia", en = "Demonology" },
        tip = {
            pt = "Ajudante mais forte e mais resistente: Elo de Alma divide o dano com ele. Dano contínuo e Seta Sombria.",
            en = "A stronger, sturdier pet: Soul Link shares damage with it. Damage over time and Shadow Bolt.",
        },
        steps = {
            { 706, "buff", pt = "Armadura sempre ativa.", en = "Armor always on." },
            { 697, "pet", quest = 10, pt = "Ajudante tanque.", en = "Tank pet." },
            { 19028, "buff", talent = true, pt = "Divide o dano com o ajudante.", en = "Shares damage with your pet." },
            { 172, "dot", pt = "Primeiro.", en = "First." },
            { 980, "dot", pt = "Logo depois.", en = "Right after." },
            { 348, "dot", pt = "Alvos que vivem bastante.", en = "Targets that last." },
            { 686, "filler", pt = "Enchimento.", en = "Filler." },
            { 755, "pet", pt = "Ajudante com vida baixa.", en = "Pet at low health." },
            { 1454, "util", pt = "Sem mana e com vida sobrando.", en = "Out of mana with spare health." },
        },
    },
    {
        key = "destruction", tab = 3, role = "dps",
        name = { pt = "Destruição", en = "Destruction" },
        tip = {
            pt = "Dano direto: Imolação, Conflagrar logo depois e Seta Sombria. Queimadura Sombria termina o alvo.",
            en = "Direct damage: Immolate, Conflagrate right after and Shadow Bolt. Shadowburn finishes the target.",
        },
        steps = {
            { 706, "buff", pt = "Armadura sempre ativa.", en = "Armor always on." },
            { 697, "pet", quest = 10, pt = "Ajudante tanque (ou Diabrete em grupo).", en = "Tank pet (or Imp in groups)." },
            { 348, "dot", pt = "Primeiro.", en = "First." },
            { 17962, "main", talent = true, pt = "Logo depois da Imolação.", en = "Right after Immolate." },
            { 172, "dot", pt = "Alvos que vivem bastante.", en = "Targets that last." },
            { 686, "filler", pt = "Enchimento.", en = "Filler." },
            { 17877, "execute", talent = true, pt = "Alvo quase morto.", en = "Target almost dead." },
            { 1454, "util", pt = "Sem mana e com vida sobrando.", en = "Out of mana with spare health." },
        },
    },
}

------------------------------------------------------------------------
-- Paladino (Sagrado, Proteção, Retribuição)
------------------------------------------------------------------------
R.ROTATIONS.PALADIN = {
    {
        key = "holy", tab = 1, role = "heal",
        name = { pt = "Sagrado", en = "Holy" },
        tip = {
            pt = "Curador: Clarão de Luz para cura rápida e barata, Luz Sagrada para dano pesado. Bênção da Sabedoria segura a mana.",
            en = "Healer: Flash of Light for fast, cheap heals, Holy Light for heavy damage. Blessing of Wisdom keeps your mana up.",
        },
        steps = {
            { 19742, "buff", pt = "Em você (mana).", en = "On yourself (mana)." },
            { 465, "buff", pt = "Aura do grupo.", en = "Group aura." },
            { 19750, "heal", pt = "Cura principal: rápida e barata.", en = "Main heal: fast and cheap." },
            { 635, "heal", pt = "Dano pesado.", en = "Heavy damage." },
            { 20473, "heal", talent = true, pt = "Cura instantânea.", en = "Instant heal." },
            { 20216, "cd", talent = true, pt = "Próxima cura crítica.", en = "Next heal crits." },
            { 1152, "util", pt = "Tirar veneno ou doença.", en = "Remove poison or disease." },
            { 633, "cd", pt = "Emergência: cura toda a vida.", en = "Emergency: full heal." },
        },
    },
    {
        key = "protection", tab = 2, role = "tank",
        name = { pt = "Proteção", en = "Protection" },
        tip = {
            pt = "Tanque: Fúria Justa ligada, Selo da Retidão + Julgamento, Escudo Sagrado e Consagração para segurar vários.",
            en = "Tank: Righteous Fury on, Seal of Righteousness + Judgement, Holy Shield and Consecration to hold many.",
        },
        steps = {
            { 25780, "buff", pt = "Sempre ligada (mais ameaça).", en = "Always on (more threat)." },
            { 465, "buff", pt = "Aura de tanque.", en = "Tank aura." },
            { 20217, "buff", talent = true, pt = "Bênção em você.", en = "Blessing on yourself." },
            { 21084, "main", pt = "Selo ativo o tempo todo.", en = "Seal up all the time." },
            { 20271, "main", pt = "Pronto: julgar e pôr o selo de novo.", en = "Ready: judge and reapply the seal." },
            { 20925, "main", talent = true, pt = "Pronto: usar.", en = "Ready: use it." },
            { 26573, "aoe", talent = true, pt = "Vários inimigos em volta.", en = "Several enemies around you." },
            { 853, "util", pt = "Atordoa (interrompe também).", en = "Stuns (also interrupts)." },
            { 633, "cd", pt = "Emergência: cura toda a vida.", en = "Emergency: full heal." },
        },
    },
    {
        key = "retribution", tab = 3, role = "dps",
        name = { pt = "Retribuição", en = "Retribution" },
        tip = {
            pt = "Arma de duas mãos lenta: Selo do Comando (ou da Retidão antes do talento), Julgamento quando pronto e selo de novo.",
            en = "Slow two-hander: Seal of Command (or Righteousness before the talent), Judgement when ready, then reseal.",
        },
        steps = {
            { 19740, "buff", pt = "Bênção em você.", en = "Blessing on yourself." },
            { 7294, "buff", pt = "Aura (Devoção antes do 16).", en = "Aura (Devotion before 16)." },
            { 20375, "main", talent = true, pt = "Selo ativo o tempo todo.", en = "Seal up all the time." },
            { 21084, "main", pt = "Selo antes de ter o Comando.", en = "Seal before you get Command." },
            { 20271, "main", pt = "Pronto: julgar e pôr o selo de novo.", en = "Ready: judge and reapply the seal." },
            { 879, "main", pt = "Mortos-vivos e demônios.", en = "Undead and demons." },
            { 24275, "execute", pt = "Alvo abaixo de 20% de vida.", en = "Target below 20% health." },
            { 853, "util", pt = "Atordoa: impede fuga e cura do inimigo.", en = "Stun: stops fleeing and enemy heals." },
            { 19750, "heal", pt = "Entre as lutas.", en = "Between fights." },
        },
    },
}

------------------------------------------------------------------------
-- Xamã (Elemental, Aperfeiçoamento, Restauração)
------------------------------------------------------------------------
R.ROTATIONS.SHAMAN = {
    {
        key = "elemental", tab = 1, role = "dps",
        name = { pt = "Elemental", en = "Elemental" },
        tip = {
            pt = "Dano de longe: Raio abre, Choque Flamejante e Choque Terrestre terminam. Cadeia de Raios em vários.",
            en = "Ranged damage: Lightning Bolt opens, Flame Shock and Earth Shock finish. Chain Lightning on several.",
        },
        steps = {
            { 324, "buff", pt = "Escudo sempre ativo.", en = "Shield always on." },
            { 403, "opener", pt = "Abre de longe (1-2 vezes).", en = "Opens from range (1-2 times)." },
            { 8050, "dot", pt = "Logo no começo.", en = "Early in the fight." },
            { 3599, "main", quest = 10, pt = "Totem de dano.", en = "Damage totem." },
            { 8042, "main", pt = "Termina o alvo (e interrompe).", en = "Finishes the target (and interrupts)." },
            { 16166, "cd", talent = true, pt = "Próximo feitiço crítico.", en = "Next spell crits." },
            { 421, "aoe", pt = "Vários inimigos.", en = "Several enemies." },
            { 331, "heal", pt = "Entre as lutas.", en = "Between fights." },
        },
    },
    {
        key = "enhancement", tab = 2, role = "dps",
        name = { pt = "Aperfeiçoamento", en = "Enhancement" },
        tip = {
            pt = "Arma de duas mãos com encantamento (Pedregulho, depois Língua de Fogo e Fúria dos Ventos), totens e choques.",
            en = "Two-hander with an imbue (Rockbiter, later Flametongue and Windfury), totems and shocks.",
        },
        steps = {
            { 8017, "buff", pt = "Encantamento da arma (Fúria dos Ventos no 30).", en = "Weapon imbue (Windfury at 30)." },
            { 324, "buff", pt = "Escudo sempre ativo.", en = "Shield always on." },
            { 8075, "buff", pt = "Totem de força.", en = "Strength totem." },
            { 17364, "main", talent = true, pt = "Pronto: usar.", en = "Ready: use it." },
            { 8050, "dot", pt = "Logo no começo.", en = "Early in the fight." },
            { 8042, "main", pt = "Pronto: usar (e interrompe).", en = "Ready: use it (and interrupts)." },
            { 3599, "main", quest = 10, pt = "Totem de dano.", en = "Damage totem." },
            { 331, "heal", pt = "Entre as lutas.", en = "Between fights." },
        },
    },
    {
        key = "restoration", tab = 3, role = "heal",
        name = { pt = "Restauração", en = "Restoration" },
        tip = {
            pt = "Curador: Cura Inferior para rapidez, Onda Curativa para eficiência e Cura em Cadeia em grupo. Totem de mana sempre.",
            en = "Healer: Lesser Healing Wave for speed, Healing Wave for efficiency and Chain Heal for the group. Mana totem always.",
        },
        steps = {
            { 5675, "buff", pt = "Totem de mana.", en = "Mana totem." },
            { 5394, "buff", quest = 20, pt = "Totem de cura.", en = "Healing totem." },
            { 331, "heal", pt = "Cura eficiente.", en = "Efficient heal." },
            { 8004, "heal", pt = "Vida caindo rápido.", en = "Health dropping fast." },
            { 1064, "heal", pt = "Vários do grupo machucados.", en = "Several group members hurt." },
            { 16188, "cd", talent = true, pt = "Emergência: próxima cura instantânea.", en = "Emergency: next heal instant." },
            { 16190, "cd", talent = true, pt = "Grupo sem mana.", en = "Group out of mana." },
            { 8042, "util", pt = "Interromper feitiço.", en = "Interrupt a spell." },
        },
    },
}

------------------------------------------------------------------------
-- Druida (Equilíbrio, Combate Feral, Restauração)
------------------------------------------------------------------------
R.ROTATIONS.DRUID = {
    {
        key = "balance", tab = 1, role = "dps",
        name = { pt = "Equilíbrio", en = "Balance" },
        tip = {
            pt = "Dano de longe: Fogo Estelar ou Ira abrem, Fogo Lunar e Enxame de Insetos ficam no alvo e Ira enche. Raízes Enredantes seguram o inimigo longe.",
            en = "Ranged damage: Starfire or Wrath open, Moonfire and Insect Swarm stay on the target and Wrath fills. Entangling Roots keep the enemy away.",
        },
        steps = {
            { 1126, "buff", pt = "Sempre ativa (e no grupo).", en = "Always on (and on the group)." },
            { 467, "buff", pt = "Espinhos em você (ou no tanque).", en = "Thorns on yourself (or the tank)." },
            { 24858, "buff", talent = true, pt = "Forma de Luniscante.", en = "Moonkin Form." },
            { 2912, "opener", pt = "Abre de longe.", en = "Opens from range." },
            { 8921, "dot", pt = "Logo no começo.", en = "Early in the fight." },
            { 5570, "dot", talent = true, pt = "Logo depois.", en = "Right after." },
            { 5176, "filler", pt = "Enchimento.", en = "Filler." },
            { 339, "util", pt = "Prende o inimigo longe de você.", en = "Roots the enemy away from you." },
            { 5185, "heal", pt = "Entre as lutas.", en = "Between fights." },
        },
    },
    {
        key = "cat", tab = 2, role = "dps",
        name = { pt = "Feral (gato)", en = "Feral (cat)" },
        tip = {
            pt = "Forma de Gato: Espreitar, Rasgar abrindo, Garra para gerar pontos e Mordida Feroz para gastar. Rasgo em lutas longas.",
            en = "Cat Form: Prowl, open with Rake, Claw to build points and Ferocious Bite to spend. Rip on long fights.",
        },
        steps = {
            { 1126, "buff", pt = "Antes de virar gato.", en = "Before shifting." },
            { 768, "buff", pt = "Forma de Gato.", en = "Cat Form." },
            { 5215, "buff", pt = "Chegue espreitando.", en = "Approach while prowling." },
            { 1822, "opener", pt = "Abre e sangra o alvo.", en = "Opens and bleeds the target." },
            { 16857, "util", talent = true, pt = "Puxa de longe e enfraquece armadura.", en = "Pulls from range and lowers armor." },
            { 1082, "filler", pt = "Gera pontos de combo.", en = "Builds combo points." },
            { 5221, "filler", pt = "Por trás: gera pontos com mais dano.", en = "From behind: builds points with more damage." },
            { 1079, "dot", pt = "Lutas longas: 5 pontos.", en = "Long fights: 5 points." },
            { 22568, "main", pt = "Gasta 4-5 pontos.", en = "Spend 4-5 points." },
            { 5217, "cd", pt = "Mais dano por pouco tempo.", en = "Short damage boost." },
        },
    },
    {
        key = "bear", tab = 2, role = "tank",
        name = { pt = "Feral (urso)", en = "Feral (bear)" },
        tip = {
            pt = "Tanque em Forma de Urso: Investida Feral, Rugido Desmoralizante, Espancar com fúria e Golpe Amplo em vários.",
            en = "Bear Form tank: Feral Charge, Demoralizing Roar, Maul with rage and Swipe on several.",
        },
        steps = {
            { 1126, "buff", pt = "Antes de virar urso.", en = "Before shifting." },
            { 5487, "buff", quest = 10, pt = "Forma de Urso (missão no 10).", en = "Bear Form (quest at 10)." },
            { 16979, "opener", talent = true, pt = "Avança e interrompe.", en = "Charges and interrupts." },
            { 5229, "cd", pt = "Fúria no começo da luta.", en = "Rage at the start of the fight." },
            { 99, "main", pt = "Menos dano em você e ameaça em todos.", en = "Less damage taken and threat on all." },
            { 6807, "filler", quest = 10, pt = "Fúria sobrando.", en = "Spare rage." },
            { 779, "aoe", pt = "Vários inimigos.", en = "Several enemies." },
            { 16857, "util", talent = true, pt = "Enfraquece armadura e puxa de longe.", en = "Lowers armor and pulls from range." },
            { 6795, "util", quest = 10, pt = "Inimigo foi para outro jogador.", en = "Enemy went for someone else." },
        },
    },
    {
        key = "restoration", tab = 3, role = "heal",
        name = { pt = "Restauração", en = "Restoration" },
        tip = {
            pt = "Curador: Rejuvenescer e Recrescimento no tempo certo, Toque de Cura para dano pesado e Inervar quando a mana acabar.",
            en = "Healer: Rejuvenation and Regrowth at the right time, Healing Touch for heavy damage and Innervate when mana runs out.",
        },
        steps = {
            { 1126, "buff", pt = "Grupo todo.", en = "Whole group." },
            { 774, "heal", pt = "Mantenha no tanque.", en = "Keep on the tank." },
            { 8936, "heal", pt = "Vida caindo rápido.", en = "Health dropping fast." },
            { 5185, "heal", pt = "Dano pesado (lento).", en = "Heavy damage (slow)." },
            { 18562, "heal", talent = true, pt = "Cura instantânea (consome o Rejuvenescer).", en = "Instant heal (consumes Rejuvenation)." },
            { 17116, "cd", talent = true, pt = "Emergência: próximo feitiço instantâneo.", en = "Emergency: next spell instant." },
            { 29166, "cd", pt = "Sem mana.", en = "Out of mana." },
            { 740, "heal", pt = "Grupo todo machucado.", en = "Whole group hurt." },
            { 2782, "util", pt = "Tirar maldição.", en = "Remove a curse." },
        },
    },
}
