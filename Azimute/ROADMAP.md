# Azimute — Roadmap

Pesquisa feita em 28/09/2026 em duas rodadas de agentes em paralelo (WoW Forever, API moderna,
addons de guia existentes, localização, Forever Beacon, TomTom/navegação e guias da comunidade). O Reddit (r/wowaddons) estava bloqueado para acesso automático,
então as fontes são warcraft.wiki.gg, o código-fonte dos addons no GitHub e sites de notícias.

---

## 1. WoW Forever: o que sabemos

| Item | Valor | Confiança |
|---|---|---|
| O que é | "World of Warcraft: Forever" (codinome **Camelot**): Azeroth original + conteúdo novo, nível máximo 60 | Verificado |
| Beta / lançamento | Beta de 17/09 a 21/10/2026, lançamento em 04/11/2026 | Verificado |
| `## Interface` | **16001** (cliente 1.60.1) | Verificado (wiki) |
| Sufixo do TOC | `_Camelot` (o Forever também lê `_Mainline.toc` e `.toc` sem sufixo) | Verificado (wiki) |
| Pasta do cliente (beta) | `_classic_beta_` → `Interface\AddOns\Azimute\` | Comunidade; muda no lançamento |
| API | A mesma do retail moderno (Midnight), **com os valores secretos** | Testes da comunidade |
| Detectar em execução | `select(4, GetBuildInfo())` entre 16000 e 16999 (o `WOW_PROJECT_ID` é igual ao do retail) | Comunidade |

Notas do wowforeverguides.com/addons (build 69913):
- A API é a mesma do Mainline 12.1.5, com as restrições do Midnight; a linguagem é **Lua 5.1** (sem `goto`, `//`, `_ENV` ou `require`).
- **Funções globais antigas removidas:** `GetItemInfo`, `GetSpellInfo`, `GetSpellBookItemName`,
  `GetTalentInfo`, `GetNumTalentTabs`, `GetNumSkillLines`. Usar `C_Item.GetItemInfo` / `C_Spell.GetSpellInfo`
  com checagem de `nil` e carregamento assíncrono (`ITEM_DATA_LOAD_RESULT`, `SPELL_DATA_LOAD_RESULT`).
- Não diferenciar Forever e Midnight só pelo `WOW_PROJECT_ID` (é igual nos dois); usar o número de interface.
- A página tem um addon de exemplo, "Forever Beacon" (página 7 do guia), bom para consultar.

Midnight atual: 12.1.0 = `120100` (PTR 12.1.5 = `120105`). Um único `.toc` sem sufixo com
`## Interface: 16001, 120100, 120105` cobre os dois jogos.

**Consequência para o guia:** o Forever é sobre a **Azeroth original até o nível 60**. Os primeiros
guias devem ser das zonas clássicas (Floresta de Elwynn, Durotar etc.). A pasta `l10n/Forever` do
QuestieDB e os guias clássicos do WoW-Pro e do Guidelime servem de referência de rotas (atenção às
licenças antes de reaproveitar dados).

---

## 2. Restrições do Midnight/Forever (valores secretos)

Os valores secretos só aparecem em **estados restritos**: combate, luta contra chefe, Mítica+ ativa e PvP.

| Recurso do guia | Situação |
|---|---|
| `C_QuestLog`, `C_Map`, `C_Map.SetUserWaypoint` (pino no mapa) | Liberado (basta passar valores normais) |
| `C_SuperTrack.SetSuperTrackedUserWaypoint` | **Bloqueada no Forever** segundo o wowforeverguides (falha sem avisar) → não usar; a seta é nossa ou do TomTom |
| Aceitar e entregar automaticamente (`AcceptQuest`, `CompleteQuest`, `GetQuestReward`, `C_GossipInfo`) | Liberado |
| Botão de item de quest (`SecureActionButtonTemplate`) | Liberado, mas não pode ser criado nem alterado em combate |
| Recompensas (XP e dinheiro, `GetQuestLogReward*`) | **Podem vir secretas** → checar com `issecretvalue()` antes de usar (já feito no `QUEST_TURNED_IN`) |
| Nome de NPC pelo tooltip (`C_TooltipInfo`) | **Pode vir secreto** em instância e em combate → resolver no mundo aberto e guardar em cache |
| `GetPlayerMapPosition` | Retorna `nil` dentro de instâncias (já era assim antes do Midnight) |
| `COMBAT_LOG_EVENT_UNFILTERED` | Proibido (registrar dá erro); não usar para contar abates |

Regra geral: **os eventos só avisam que algo mudou**; quem decide se o passo foi concluído é
uma consulta ao estado do jogo (`IsOnQuest`, `IsQuestFlaggedCompleted`, `GetQuestObjectives`,
distância até o ponto do `goto`).

---

## 3. Como os addons existentes fazem

| Addon | Formato do guia | O que aproveitar |
|---|---|---|
| **Zygor** (código fechado) | `step` / `accept Nome##123` / `goto Zona 41.3,45.0` / `\|q` / `only if` | Legibilidade do texto; condições por linha |
| **RestedXP** (RXPGuides) | `step` + `.accept 4641` + `.goto Durotar,43.29,68.53` + `<< Classe` | **Cada comando declara os eventos que escuta** |
| **WoW-Pro** | `A Nome \|QID\|12818\|M\|41.0,86.4\|N\|nota\|` (uma letra por ação) | Lista completa de tipos de passo |
| **APR** | Tabelas Lua (`PickUp`, `Qpart`, `Done`, `Coord` em coordenadas do mundo) | Estrutura de pastas; rotas encadeadas (`nextRoute`) |
| **Guidelime** | `[QA123] [QT123] [G 45,30 Zona]` | Nome da quest omitido → vem localizado do cliente |
| **TomTom** | `TomTom:AddWaypoint(mapID, x, y, opts)` | Integração opcional com a seta |

Recursos que todos têm: janela do passo atual, seta, pinos no mapa, aceitar e entregar
automaticamente, botão de item seguro, pular/voltar, seletor de guias, próximo guia encadeado e
condições por facção, raça, classe e nível.

**Localização:** todos guardam **só IDs** nos guias e buscam o nome no cliente em tempo de execução,
com cache. Nenhum depende de base traduzida no retail. O Questie (Classic) precisa do QuestieDB porque
o Classic não tem as funções que buscam nomes pelo ID.

---

## 4. Formato de guia do Azimute (texto convertido em tabelas por um parser)

Estilo Zygor/RestedXP, **somente com IDs**: o texto é exibido no idioma do cliente. O mesmo texto
serve para pacotes de guias (addons), guias colados dentro do jogo e o editor.
```
#format 1
#id azimute.elwynn.1-10
#name Floresta de Elwynn (1-10)
#name-enUS Elwynn Forest (1-10)
#author jeeeff
#version 1
#flavor forever
#faction Alliance
#levels 1-10
#next azimute.westfall.10-20
#license CC-BY-4.0

step
    goto 1429 48.2,42.0
    talk 197
    accept 783
step
    path seq 1429 47.0,40.1 45.3,38.8 44.0,37.5   -- pontos intermediários (contornar muro/colina)
    kill 6 |q 783/1
step
    turnin 783
    |only if Warrior
```
- Um comando desconhecido gera **aviso**, não erro (guias novos continuam carregando em versões antigas).
- `#format` sobe em mudanças incompatíveis, com um conversor para cada versão.

## 5. Tipos de passo, eventos e verificação

| Tipo | Eventos que disparam a checagem | Verificação real |
|---|---|---|
| `accept` | QUEST_ACCEPTED, QUEST_REMOVED, QUEST_TURNED_IN | `C_QuestLog.IsOnQuest` ou `IsQuestFlaggedCompleted` |
| `turnin` | QUEST_TURNED_IN | `C_QuestLog.IsQuestFlaggedCompleted` |
| `\|q id/n` (objetivo) | QUEST_LOG_UPDATE (agrupado) | `GetQuestObjectives(id)[n].finished` |
| `complete` | QUEST_LOG_UPDATE | `C_QuestLog.ReadyForTurnIn` |
| `goto` | timer de ~0,2 s enquanto o passo está ativo | distância via `C_Map.GetPlayerMapPosition` |
| `talk` | GOSSIP_SHOW, QUEST_DETAIL | `UnitGUID("npc")` → ID do NPC (checar `issecretvalue`) |
| `level` | PLAYER_LEVEL_UP, PLAYER_XP_UPDATE | `UnitLevel("player")` |
| `home` / `hearth` | HEARTHSTONE_BOUND / ZONE_CHANGED_NEW_AREA | `GetBindLocation()` / `C_Map.GetBestMapForUnit` |
| `fp` / `fly` | TAXIMAP_OPENED, UI_INFO_MESSAGE | estado do mapa de voo / zona |
| `collect` | BAG_UPDATE_DELAYED | `C_Item.GetItemCount` |
| `use` | UNIT_SPELLCAST_SUCCEEDED | botão seguro (fora de combate) |

---

## 5.1 Navegação: guiar pelo caminho certo, não só apontar a direção

**O TomTom não calcula caminho.** Pelo código-fonte, a seta dele é só direção e distância em
linha reta (via HereBeDragons). Ela é boa porque se atualiza a cada 0,1 s, avisa na chegada e
passa sozinha para o próximo ponto. **Licença: All Rights Reserved** → não copiar código; usar
só como integração opcional (`## OptionalDeps: TomTom`). A versão 4.3.11 (23/09/2026) já suporta o Forever.

Como os outros resolvem as paredes:
- **WoW-Pro:** o autor do guia coloca pontos intermediários à mão (`M|x1,y1;x2,y2;...|`), como
  a base da rampa, a entrada da caverna ou a ponte. O modo `CS` obriga seguir a ordem, e o `CC` pula
  para o ponto mais próximo à frente.
- **RestedXP:** vários `.goto` com raio no mesmo passo, e a seta sempre aponta para o primeiro não concluído.
- **Zygor (LibRover, fechado):** "GPS" com mestres de voo, portais, barcos e pedra de regresso; os nós de rota são colocados à mão, sem malha de navegação.
- **FarstriderLib (GPL-3, usada pelo APR)** e **Mapzeroth (MIT)**: grafo de viagem com Dijkstra.
  **O Mapzeroth é MIT**, então é o mais seguro para reaproveitar código e estrutura de dados (com crédito).
- **AzerothWaypoint (GPL-3):** permite escolher o motor de rota e manda o resultado para o TomTom. É um bom modelo de motores de rota intercambiáveis.

**Arquitetura em 3 camadas:**
1. **Seta própria + saída opcional para o TomTom.** Sem o TomTom, a nossa seta funciona; com ele, mandamos
   `TomTom:AddWaypoint(mapID, x, y, {title=..., crazy=true, silent=true, persistent=false, from="Azimute", callbacks=...})`
   e removemos com `TomTom:RemoveWaypoint(uid)`. Posição e distância: a HereBeDragons (BSD) ainda **não lista a
   versão 16001**; se não funcionar no Forever, usar `C_Map.GetPlayerMapPosition` + `C_Map.GetWorldPosFromMapPos`.
2. **Cadeias de pontos no guia (a solução principal para paredes).** `path seq|closest mapID x,y x,y ...`:
   avança ao entrar no raio de cada ponto (checagem a cada 0,1–0,2 s), não avança em voo de táxi e, ao
   carregar, retoma do ponto mais próximo à frente. Desenha a linha do caminho no mapa.
3. **Grafo de viagem (depois).** Nós `{mapID, x, y, tipo = andar|voo|portal|barco|zepelim|regresso}` e arestas
   `{de, para, método, custo, só_ida, requisitos = {facção, nível, item, quest}}`. A\* ou Dijkstra com heap
   (poucos milissegundos para alguns milhares de nós em Lua 5.1). Recalcula só na troca de zona ou de passo;
   o resultado vira trechos: andar vira uma cadeia de pontos (camada 2); o resto vira instrução ("Pegue o voo para X").
   **Nunca calcular em combate** e tratar recarga de feitiço ou item protegida pelo jogo como "indisponível" (como faz o APR).

---

## 5.2 Guias da comunidade

| Addon | Como a comunidade contribui |
|---|---|
| RestedXP | `RXPGuides.RegisterGuide(texto)` em arquivos Lua; importação dentro do jogo com proteção contra cópia (guias pagos) |
| Guidelime | Pacotes `Guidelime_<Nome>` com `## Dependencies: Guidelime`; editor dentro do jogo; mais de 20 pacotes de 1-60 na CurseForge |
| WoW-Pro | Módulos + gravador de guias dentro do jogo + PRs no GitHub |
| APR | Gravador de rotas; importação **só de dados, sem `loadstring`**, com limite de 1 MB |

**Linha de carregamento do Azimute:**
1. **Pacotes de guias:** addons separados com `## Dependencies: Azimute` + `## LoadOnDemand: 1`
   (o núcleo chama `C_AddOns.LoadAddOn` quando o guia é escolhido). `Azimute.RegisterGuide(texto)` usa uma fila
   para o caso de o pacote carregar antes do núcleo.
2. **Colar dentro do jogo:** texto puro ou `!GU1!` + `C_EncodingUtil.EncodeBase64(C_EncodingUtil.CompressString(texto))`.
   O `C_EncodingUtil` existe no Forever, no Classic Era e no Midnight. Fica salvo compactado nos dados do addon.
3. **Editor e exportação dentro do jogo:** para compartilhar no Discord ou no Wago.
4. **Conversores externos** Guidelime/RXP → Azimute, só para guias cuja licença ou autor permitir.

**Segurança:** um único parser **só de dados** para tudo; **nunca `loadstring`** (um guia colado poderia
usar chat, correio ou `SendAddonMessage`). Limite de tamanho, lista fechada de comandos, IDs numéricos e
coordenadas validadas, códigos de formatação `|T`/`|H` removidos, parse dentro de `pcall` e dividido em partes (coroutine).

**Licenças dos guias existentes:**
| Fonte | Licença | Pode converter? |
|---|---|---|
| RestedXP (inclui `Guides/forever/`) | CC BY-NC-SA 4.0 | Sim, se o Azimute for **gratuito**, der crédito e mantiver a mesma licença nesses guias |
| WoW-Pro | CC BY-NC-ND 3.0 | Não sem permissão (proíbe obras derivadas) |
| Guidelime (núcleo e pacotes) | Todos os direitos reservados | Só com permissão de cada autor |
| APR | GPL-3.0 | Só tem conteúdo do retail |
| **Núcleo do Azimute (código próprio)** | GPL-3.0-or-later (proposta de 28/09/2026, confirmar antes de publicar) | Sem código de terceiros no núcleo; dono do copyright pode relicenciar o próprio código, desde que contribuições externas venham com concessão de licença (ver CONTRIBUTING.md) |

---

## 5.3 Regras do wowforeverguides.com (Forever Beacon)
- Os dados salvos só são criados no `ADDON_LOADED` ✅. As únicas variáveis globais são os dados salvos, os comandos de barra e as funções do menu de addons.
- Imprimir um valor secreto **dá erro** no Forever: sempre checar com `IsSecret` ✅.
- Não usar `pcall` em funções bloqueadas: deixa um contador de "Ação de interface falhou" que o `/reload` não zera.
- `C_Timer.NewTimer` quando o timer precisar ser cancelado (o `C_Timer.After` não retorna nada).
- Facção: `UnitFactionGroup(unit)`, não `UnitIsEnemy`.
- Frames protegidos: guardar as ações numa fila durante o combate e executar no `PLAYER_REGEN_ENABLED`.
- Não usar `OnUpdate` quando existe um evento para aquilo (a seta é a exceção necessária).
- Detectar o Forever: `WOW_PROJECT_ID == WOW_PROJECT_MAINLINE and LE_EXPANSION_LEVEL_CURRENT == LE_EXPANSION_CLASSIC`.
- Os dados salvos se perdiam até o build 70009 do beta.

---

## 6. Estrutura de pastas planejada (baseada no APR e no RestedXP)
```
Azimute/
  Azimute.toc
  Locales.lua              ✅ textos da interface (enUS base + ptBR)
  Azimute.lua               ✅ núcleo atual (será dividido abaixo)
  Core/Init.lua            namespace, dados salvos, detecção Forever/Midnight
  Core/Events.lua          despacho evento → tipos de passo interessados
  Parser/Parser.lua        texto do guia → tabelas de passos
  Parser/Conditions.lua    facção, raça, classe, nível, "only if"
  Steps/<Tipo>.lua         um arquivo por tipo: events = {...}, IsComplete(step), OnActivate(step)
  Data/Names.lua           nomes quest/NPC/item/zona por ID + cache por idioma nos dados salvos
  Nav/Position.lua         posição e distância do jogador (HereBeDragons ou C_Map como alternativa)
  Nav/Arrow.lua            seta própria + pino no mapa (C_Map.SetUserWaypoint)
  Nav/Path.lua             cadeias de pontos (seq/closest), avanço por raio
  Nav/TomTomBridge.lua     manda os pontos para o TomTom se ele estiver instalado
  Nav/Router.lua           (depois) grafo de viagem + A*/Dijkstra
  Data/Travel/*.lua        (depois) nós e arestas: mestres de voo, portais, barcos
  Guides/Registry.lua      RegisterGuide, fila, carregamento sob demanda dos pacotes
  Guides/Import.lua        colar/exportar (C_EncodingUtil), validação, armazenamento
  UI/Editor.lua            (depois) editor de guias dentro do jogo
  Automation/AutoQuest.lua aceitar e entregar automaticamente (opcional nas opções)
  Automation/ItemButton.lua botão seguro de item de quest
  UI/StepFrame.lua         janela de passos (várias linhas, voltar/pular)
  UI/GuidePicker.lua       seletor de guias
  UI/Options.lua           Settings API (RegisterVerticalLayoutCategory + RegisterAddOnSetting)
Azimute_Guides_Forever/     guias carregados sob demanda (LoadOnDemand), separados por jogo
```

## 7. Localização (foco pt-BR)
- **Textos da interface e dos guias:** `Locales.lua` / tabela `title = { enUS, ptBR }`.
- **Quest:** `C_QuestLog.GetTitleForQuestID`; se ainda não estiver no cache, `RequestLoadQuestByID` + `QUEST_DATA_LOAD_RESULT` ✅
- **NPC:** `C_TooltipInfo.GetHyperlink("unit:Creature-0-0-0-0-<id>-0").lines[1].leftText`, com até 3 novas tentativas, `issecretvalue` e só fora de combate.
- **Item:** `Item:CreateFromItemID(id):ContinueOnItemLoad(...)`.
- **Zona:** `C_Map.GetMapInfo(uiMapID).name` (resposta imediata).
- **Cache:** `AzimuteDB.names[locale][tipo][id]`, separado por idioma.
- **Arquivos:** UTF-8 **sem BOM**.

## 8. Próximas iterações
1. ✅ **Motor mínimo (v0.2.0):** Parser (só dados) + registro de guias + `accept`, `turnin`, `complete`, `kill |q`, `talk`, `level`, `note`, `only` + guias de teste em Northshire e no Vale das Provações.
2. ✅ **Navegação (v0.2.0):** seta própria + cadeias de pontos (`path seq|closest`) + TomTom + pino no mapa. ✅ Linha do caminho no mapa-múndi (v0.3.0, `Nav/MapLines.lua`).
3. **Guias da comunidade:** ✅ importar/exportar dentro do jogo (v0.3.0, texto puro ou `!GU1!`); ✅ **gravador de rotas** (v0.3.0, `/azimute gravar|ponto|nota|parar`), que gera o texto do guia enquanto o jogador faz as missões, inclusive as missões novas do Forever cujos IDs não são públicos. Falta: pacotes de guias carregados sob demanda.
4. **Janela completa:** várias linhas, pular/voltar, seletor de guias e opções no menu do jogo.
   ✅ Modo "missão selecionada" (v0.4.0): clicar numa missão no rastreador, no registro ou no mapa faz o Azimute guiar até ela (caminho do guia, se houver; senão o marcador da Blizzard).
   ✅ v0.6.0: botão no minimapa (esquerdo: janela, Shift: seletor, direito: opções, arrastar para
   mover) + menu de addons do jogo + tela de opções (Settings API) com 10 opções.
   ✅ v0.6.0: ◀/▶ mostram também os passos já concluídos, com aviso, para o jogador conferir.
5. ✅ **Automação (v0.6.0):** aceitar e entregar sozinho as missões do guia (passo atual + 3 seguintes),
   SHIFT desliga na conversa, escoltas marcadas com `|noauto` não são aceitas sozinhas, recompensa
   indicada pelo guia (`|reward N`) ou escolha do jogador quando há várias.
   ✅ v0.7.0: botão do item de missão (item especial do diário ou `use <item>`), botão seguro,
   atualiza fora de combate, atalho em Atalhos > Azimute, Shift + arrastar para mover.
   ✅ v0.7.0 / pacote 0.4.0: guias experimentais 20-32 (Horda e Aliança, adaptados dos guias
   clássicos TBC/WotLK do RestedXP), nomes com várias zonas (`#zones`, `#suffix`), próximo
   guia automático por nível quando o guia não tem `#next`, 8.945 dicas em pt-BR.
5. **Automação:** aceitar e entregar automaticamente, e botão de item.
6. ✅ **Rotas (v0.9.0):** `Nav/Router.lua`: Dijkstra entre jogador, mestres de voo conhecidos
   (anotados ao abrir o mapa de voo; posições e nomes do cliente via `C_TaxiMap.GetTaxiNodesForMap`),
   docas de barco/zepelim (tabela própria, posições aproximadas) e o alvo. Tempos de voo do pacote
   (`FlightTimes.lua`, RestedXP, CC BY-NC-SA). Sugere a rota se economizar ≥45 s, voo automático
   opcional (SHIFT cancela).
   ✅ v0.10.0: docas conferidas (HandyNotes: TravelGuide Classic + mestres de zepelim do Wowhead);
   pedra de regresso na rota (posição anotada em HEARTHSTONE_BOUND, pois a API só dá o nome);
   caminho de voo novo por perto (≤250 jd) vira o primeiro passo até ser pego;
   especialização do equipamento pelos talentos (C_Traits: GetGroupDisplayInfoByTreeID +
   GetGroupCurrencyInfo, aba com mais pontos; `/azimute spec 0` = automático).
   ✅ v0.10.0 / pacote 0.7.0: guias de profissão (Herborismo, Mineração, Esfolamento 1-300, circuitos
   de coleta `path loop`, `skill`/`ifskillbelow`, `#kind profession` = só pelo seletor).
7. **Conteúdo:** ✅ v0.5.0: pacote `Azimute_Guides_Forever` com 47 guias do RestedXP convertidos
   (níveis 1 a ~22, as duas facções, magos AoE, Skyborne), CC BY-NC-SA 4.0, gerado por
   `tools/rxp2azimute.py`. Falta: 22-60 (comunidade/gravador), profissões, masmorras.
   Decisão (28/09/2026): o Azimute é **gratuito**, então os guias do RestedXP podem ser usados com crédito.
8. ✅ **Equipamento (v0.8.0):** `Automation/Gear.lua` avalia itens com os 192 perfis de pesos do
   RestedXP para o Forever (no pacote, `StatWeights.lua`, CC BY-NC-SA). Destaca a melhor recompensa
   na entrega, linha "melhoria +X%" na dica do item, seta verde nas bolsas da Blizzard, escolha
   automática opcional da recompensa, `/azimute spec` para a especialização, perfis Speedrun/Hardcore.
   Falta confirmar no jogo: nomes dos atributos de `C_Item.GetItemStats` no Forever, velocidade de arma.

## v0.12.0: conteúdo 30-60, masmorras, treino e editor
- **Pacote `Azimute_Guides_Classic` (GPL-3.0):** 61 guias 29/30-60 das duas facções convertidos do
  Guidelime_Zarant (`tools/guidelime2azimute.py`). Separado do pacote do RestedXP porque GPL-3.0 e
  CC BY-NC-SA não se misturam. Feito para o Classic: missões podem ter mudado no Forever.
- **Missões de masmorra:** passos `.dungeon` do RestedXP viram `ifdungeon`/`ifnotdungeon`; o jogador
  escolhe as masmorras (opções ou painel). Painel "Missões de masmorra" com os dados do Forever Dungeon
  Quests (MIT, 25 masmorras, 219 missões com IDs do Forever): estado, quem dá, onde, guiar até lá.
- **Treino da classe:** dados do What's Training (MIT); linha "N feitiços para treinar (custo)",
  aviso de dinheiro, lista na dica, botão "Treinar tudo" no treinador, `/azimute treino`.
- **Editor de guias** (`/azimute editar`, `/azimute novo`) e **menu no botão do minimapa**.
- Fontes guardadas em `tools/sources/` (zarant, fdq, whatstraining) com as licenças.
- Ideias futuras (de DungeonJournal, All Rights Reserved: só a ideia): saque por chefe + melhorias
  para o personagem usando o indicador de equipamento; dados próprios (gravador de saque).

## v0.13.0: novo nome — GuiaUp virou Azimute
- Pastas, `.toc`, SavedVariables (`AzimuteDB`/`AzimuteCharDB`), `/azimute` e `/azi` (`/guiaup` continua
  funcionando), `AzimuteAPI` (`GuiaUpAPI` de apelido), exportação `!AZ1!` (aceita `!GU1!`).
- Conversores renomeados: `tools/rxp2azimute.py`, `tools/guidelime2azimute.py`.

## v0.14.0: visual da janela
- Fundo escuro liso, borda dourada de 1px, faixa de título e barra fina de progresso do guia.
- Uma linha por objetivo com ícone do tipo (aceitar/entregar/matar/coletar/ir até...); feito = ✓ + texto cinza.
- Modo compacto (padrão): dicas atrás do ícone "i" do título quando o passo tem outro objetivo concreto.
- Botão de minimizar, brilho verde ao avançar passo, clique numa linha com local abre o mapa-múndi.
- Opções novas (seção "Janela do guia"): dicas compactas, transparente quando parada, esconder em
  combate, brilho, escala 50-150% (controle deslizante, só se a Settings API do cliente tiver).

## v0.15.0: volta ao corpo
- `Nav/Corpse.lua`: fantasma (`UnitIsGhost`) -> alvo da seta/TomTom/pino é o corpo
  (`C_DeathInfo.GetCorpseMapPosition` no mapa do jogador ou nos mapas acima), prioridade sobre o guia
  e sem rotas de voo. Aviso na tela com a distância, linha na janela, termina em `PLAYER_UNGHOST`.
  Opção "Guiar até o corpo" (padrão ligada). Falta confirmar no jogo: corpo dentro de masmorra.

## v0.16.0: voltar a um guia
- `AzimuteCharDB.progress[id] = passo`: escolher de novo um guia continua de onde parou.
- Sem passo salvo, `Engine:ResumeIndex` estima pelo diário: depois do último accept/turnin feito, ou
  no primeiro objetivo aberto de uma missão que o jogador tem no diário.
- Recomendado: +3 por missão do diário que o guia conduz (máx. +15) e +3 se o guia é da zona atual.
  O seletor mostra "(N missões suas)" e "passo N" em cada guia.

## v0.17.0: marcar como feito
- Clique direito numa linha do passo marca/desmarca o objetivo como feito (missão não reconhecida ou
  pulada). Salvo em `AzimuteCharDB.marked[guia]["passo:objetivo"]`; `Engine:IsGoalDone` e o
  `goal.reached` dos goto respeitam a marca. A linha mostra "(marcado)"; dica explica os cliques.

## v0.18.0: destino avulso na janela
- Clicar numa missão do painel de masmorras (ou `/azimute ir`) coloca a janela no modo "Indo até:
  <missão>" (rota + "Vá até" + "Fale com <NPC> para pegar <missão>"), com X para cancelar; ao chegar,
  volta ao guia sozinho (`Nav:SetManualTarget(mapa, x, y, info)`, `Nav:ClearManual`, `Nav:Manual`).
- Modo "missão selecionada" não apaga mais as linhas de rota/treino.

## v0.19.0: confiança do guia e relatório de problema
- Cabeçalho `#status validated|experimental`: selo no seletor e no título da janela. Sem `#status` = sem selo
  (valor inválido vira aviso do parser e é ignorado). O pacote Classic (GPL) sai todo `experimental`
  (feito para o Classic, sem teste no Forever, `Azimute_Guides_Classic` 0.2.0). O pacote Forever só marca
  `validated` o que estiver em `tools/validated_guides.txt` (prefixos de `#id`), para nunca declarar
  teste que ninguém fez.
- Relatório de problema: botão (ícone de inseto) na janela e `/azimute reportar`: abre um texto curto para
  copiar (addon, interface, guia, versão, status, passo, jogador, posição, ids e coordenadas do passo e uma
  linha `note:` para o jogador escrever). Nada é enviado pela rede (`Core/Report.lua`).

## v0.20.0: `/way` e vendedores
- `/way x y [nome]`, `/way #mapa x y [nome]` e `/way reset` (também `/azimute way`): destino avulso na janela,
  seta e pino. O `/way` só é registrado quando o TomTom não está carregado (conferido no LOGIN), para não
  disputar o comando com ele.
- Vendedores (`Automation/Vendor.lua`, opções `autoSellJunk` e `autoRepair`, **desligadas por padrão**): vende só
  itens cinza (`C_MerchantFrame.SellAllJunkItems`, com alternativa bolsa a bolsa) e repara com o ouro do
  jogador. Avisa o valor; sem ouro suficiente não repara e explica; SHIFT pula. Repara antes de vender, porque
  o ouro da venda só chega depois.
- Falta confirmar no jogo: `C_MerchantFrame.SellAllJunkItems`/`GetNumJunkItems` e `GetRepairAllCost` no Forever.

## v0.21.0: atualização do jogo (build 1.60.1.70205) e guias novos do RXP
- `/azimute diag` (`Core/Diag.lua`): confere no cliente as 51 funções `C_*`, 61 globais e 38 eventos usados
  (lista gerada do código) e anota o que existe em `C_DamageMeter`, `C_Container`, `C_Bank` e enums úteis.
  Resultado em `AzimuteDB.diag`.
- Fonte dos guias passa a ser o GitHub do RXP (`tools/sources/rxpguides`, clone raso): o RXP separou as rotas
  com masmorras (pasta `dungeon/`) e passou a usar `#include Grupo\Nome@RótuloA-RótuloB`. O conversor expande
  `#include` (com intervalos de `#label`) e gera as versões com masmorras como `forever.dg.*`, categoria
  "Evolução com masmorras"; o `#next` delas prefere a continuação com masmorras. Pacote Forever 0.10.0:
  77 guias (eram 67), 343 dicas novas traduzidas (`notes_ptBR_part10.json`).
- Recomendado: rota com masmorras só ganha quando o personagem escolheu masmorras.

## Depois da 0.22.0 (03/10/2026)
- **Medidor 0.3.0** (ideias do Details! que ainda funcionam no Midnight/Forever): recap de morte pelo `deathRecapID` +
  `C_DeathRecap` (painel, botão "Recap do jogo" = `OpenDeathRecapUI`, resumo no chat), dano por alvo (sessão
  `EnemyDamageTaken` + `combatSpellDetails.unitName`), evitável/mortal destacados, dica da barra com os 3 feitiços
  principais, lutas salvas (dano/cura, 15 últimas, sobrevivem ao /reload), mostrador pessoal, segunda janela
  (`M.windows`, cada uma com `cfg` próprio; `Meter:View()` diz de qual janela são o modo e a luta).
- **Treino:** habilidades de arma que faltam e a capital do mestre de armas (Classic 1.12; só aparece se o
  personagem conhece alguma habilidade de arma).
- **Equipamento:** porcentagem só quando o item atual tem atributos ("melhoria pequena/grande" para itens só
  com armadura).
- **Guias:** instruções `>>` dos comandos recuperadas e todas as dicas traduzidas (0 em inglês); nota sem
  tradução aparece em inglês; ▶ pula passos feitos; "Voltar ao guia".
- **Saque por chefe:** a interface do Guia de Aventuras não carrega no Forever (`AllowLoadGameType standard, classic`);
  o `/azimute diag` agora lista o que `EJ_*` devolve para decidir se dá para ler o saque do próprio jogo.

## Qualidade de vida (03/10/2026): Utilidades, Raros, Leilão, ritmo de up, voos no caminho
- **Azimute_Utils** (`/azu`): zoom máximo da câmera (CVar, o menu do Forever para em 2.0), ID de item/feitiço e alvo
  na dica, nível de item nos espaços do personagem, coordenadas no mapa-múndi, avisos (bolsa cheia, durabilidade,
  pedra de regresso), Alt+clique compra pilha, e automáticos sociais desligados por padrão (duelo, convite de
  desconhecido, ressurreição, invocação). Cada recurso num arquivo, registrado com `U:Feature` e rodando em pcall.
  Fora da lista porque o jogo já tem: "abrir tudo" do correio, esconder grifos (Modo de Edição), preço de venda e
  guilda na dica, Shift+clique para escolher quantidade no vendedor.
- **Azimute_Rares** (`/azr`): vignettes do minimapa + `UnitClassification` (placas de nome, alvo, mouse), aviso
  sem repetir por 10 min, histórico, `/azr ir` (seta do Azimute via `AzimuteAPI.GoTo` ou pino do jogo).
- **Azimute_Auction** (`/azl`): varredura completa (`C_AuctionHouse.ReplicateItems`, índice a partir de 0, a cada
  15 min), menor preço por unidade por reino-facção, preço e idade na dica, aviso "vendedor paga mais", valor das
  bolsas. O formulário de venda do Forever já sugere o menor preço, por isso não mexemos nele.
- **Ritmo de up** (`Engine/Pace.lua`): XP/h, tempo até o nível e missões/h dos últimos 30 min, linha no fim da
  janela do guia e `/azimute ritmo`.
- **Liberar voos no caminho** (`pickupFlightPathsOnWay`): mestre de voo desconhecido que acrescenta até 400 jardas
  (ou 20% do trajeto) vira desvio da seta; desiste se o jogador se afastar.
- **Ícone próprio** (rosa dos ventos) em `Azimute/Media/Icon.tga` (botão do minimapa, menu de addons, .toc).

## Indicador de equipamento: correções e pesos próprios (03/10/2026)
- **Dano mágico era ignorado:** o jogo devolve `ITEM_MOD_SPELL_POWER`/`ITEM_MOD_SPELL_DAMAGE_DONE` (1 a menos que a
  dica) e os pesos do RXP chamam de `STAT_SPELLDAMAGE`; agora soma o valor + 1 (como o RXP). Bug visto no jogo:
  cinto de +3 Vigor aparecia como +85% contra um de +4 dano mágico.
- **Varinha/arco usavam o peso de corpo a corpo:** DPS de arma à distância (`INVTYPE_RANGED*`, `THROWN`) usa
  `ITEM_MOD_DAMAGE_PER_SECOND_SHORT_RANGED` (14 para conjuradores e caçadores).
- **Pesos próprios** (`Automation/StatWeights.lua`, GPL, `Source = "azimute"`, nível 1-60): Guerreiro
  (Armas/Fúria/Proteção), Ladino, Caçador, Paladino Proteção e Sagrado, Sacerdote Sagrado, Druida Restauração e
  "Feral Combat (Tank)", Xamã Restauração. Estimativas pelas fórmulas do Classic na escala do RXP. Os do pacote
  (RXP) sempre ganham quando existem para a mesma especialização.
- Especialização em português e com papel no `/azimute spec` e na dica ("melhoria +12% (Proteção (tanque))").

## Módulos independentes (03/10/2026): Azimute_Meter 0.1.0 e Azimute_Bags 0.1.0
Pedido do autor: bolsas unificadas e medidor de dano dentro do pacote, cada um podendo ser desligado e
sem derrubar o guia se quebrar. Cada um é um addon separado (pasta, .toc, SavedVariables e comando
próprios, `OptionalDeps: Azimute`); `AzimuteAPI.RegisterModule` só põe um atalho no menu do minimapa.
- **Medidor** (`/azm`): lê `C_DamageMeter` (o log de combate saiu dos addons no Midnight/Forever). Modos:
  dano, DPS, cura, HPS, absorção, interrupções, dissipações, dano sofrido/evitável, mortes, dano nos
  inimigos; luta atual, total e anteriores; detalhes por feitiço; relatório no chat; zerar. Em combate os
  números são secretos: vão direto para SetText/SetValue/AbbreviateNumbers, sem conta nem comparação
  (porcentagem, relatório e detalhes só depois do combate). O teste usa valores secretos falsos que dão
  erro em qualquer conta. Falta ver no jogo: `IsDamageMeterAvailable` (nível/condição) e o visual.
- **Bolsas** (`/azb`): janela única com mochila, bolsas, bolsa de reagentes e chaveiro; banco unificado
  (abas do banco do Forever, bolsas 6-14); busca do jogo (`SetItemSearch`), organizar, livres, ouro, nível
  de item. A tecla B é observada com `hooksecurefunc` (sem substituir funções da Blizzard); botões com o
  modelo do jogo, pai com `SetID(bolsa)`. Falta ver no jogo: cliques em combate, banco (abas) e visual.
- A linha da tabela abaixo que dizia "medidor não vale" ficou superada pelo pedido do autor.

## Módulos de qualidade de vida (planejamento de 28/09/2026)
Decisão do autor: o Azimute passa a ser o addon "oficial" dele, e recursos de outros addons que ele usa entram
**só como ideia** (nada de copiar código sem licença aberta). Código de terceiros só de repositório com licença
compatível com a GPL (MIT, BSD, GPL), com aviso de copyright e sem nome nem ícones deles. Regras: tudo opcional;
o que gasta ouro vem desligado; cada módulo em arquivo próprio, e se crescer vira pacote separado com
`Dependencies: Azimute`, para um bug de bolsa não derrubar o guia.

| Ideia | Inspirada em | Situação |
|---|---|---|
| `/way` sem TomTom | TomTom | feito (v0.20.0) |
| Vender lixo e reparar | Leatrix Plus | feito (v0.20.0), opcional |
| Item level no tooltip e nos itens | (uso próprio) | próximo |
| Habilidades de arma e cidade do treinador | What's Training | a fazer; `ClassSpells.lua` não traz armas |
| Zoom maior da câmera | Leatrix Plus | trivial (uma configuração do jogo) |
| Bolsas unificadas | (uso próprio) | removido (04/10/2026): o Forever já tem a opção nativa de bolsa única; ficou só o nível de item nas bolsas do jogo (Azimute_Utils) e a seta de melhoria (Azimute) |
| Medidor de dano da party | Details / Skada | não vale: o Forever já traz medidor nativo e, no Midnight, o log de combate saiu dos addons; só dá para reapresentar `C_DamageMeter` (ex.: RocketMeter, MIT), e em combate os dados dos outros jogadores vêm parciais |
| Loot de masmorras | AtlasLoot | conferir o Guia de Aventuras do jogo; dados de drop exigem fonte com licença |
| Raros no mapa | Rare Scanner | baixa prioridade (só caçadores) |
| BigWigs, Auctionator, MoveAny, Threat Plates | — | não vale: maduros, ligados a combate ou a janelas da Blizzard (taint) |

Distribuição: no app do CurseForge o jogador acha addons em Explorar com o filtro "Forever"; publicar marcado com
essa versão do jogo. `python tools/package.py` monta o zip (`dist/`).

## Formato de guia: comandos (v0.5.0)
| Comando | Concluído quando |
|---|---|
| `accept` / `turnin` / `complete <quest>` | missão aceita / entregue / pronta |
| `objective <quest>/<n>`, `kill <npc> \|q q/n` | objetivo concluído |
| `collect <item> <qtd> [\|q q/n]` | quantidade nas bolsas |
| `train <feitiço>` | feitiço aprendido |
| `goto <mapa> <x,y \| @mundoX,mundoY> [raio]`, `path seq\|closest ...` | chegada ao ponto |
| `zone <mapa>` / `fly <mapa>` | entrar na zona |
| `vendor` / `trainer` / `fp` / `home` / `hearth` | evento do jogo depois que o passo começou |
| `use <item>`, `talk <npc>`, `note`, `note-enUS` | só informativo |
| `level <n>` / `abandon <quest>` | nível atingido / missão abandonada |
Condições: `only Classe Raça !Negação`, `ifonquest`, `ifnotonquest`, `ifcomplete`, `ifturnedin`, `ifnotturnedin`.
Modificadores: `|q q/n`, `|only ...`, `|opt` (não segura o passo). Cabeçalhos novos: `#group`,
`#subgroup`, `#zone` (nome traduzido pelo cliente), `#recommend`, `#only`.

## Fontes
- https://warcraft.wiki.gg/wiki/Public_client_builds · https://warcraft.wiki.gg/wiki/TOC_format
- https://warcraft.wiki.gg/wiki/Patch_12.0.0/API_changes · https://warcraft.wiki.gg/wiki/Patch_12.0.0/Planned_API_changes
- https://github.com/xIGBClutchIx/ForeverPlusPlus (testes da API do Forever)
- https://blizzardwatch.com/2026/09/17/world-warcraft-forever-beta/
- https://wowforeverguides.com/addons (guia de desenvolvimento de addons para o Forever)
- https://github.com/Gethe/wow-ui-source (documentação gerada da API)
- https://github.com/Ludovicus-Maior/WoW-Pro-Guides · https://github.com/RestedXP/RXPGuides
- https://github.com/Azeroth-Pilot-Reloaded/azeroth-pilot-reloaded · https://github.com/max-ri/Guidelime
- https://github.com/Questie/Questie · https://zygorguides.com/support/manual/overview
- https://warcraft.wiki.gg/wiki/Settings_API · https://warcraft.wiki.gg/wiki/API_C_TooltipInfo.GetHyperlink
- https://www.curseforge.com/wow/addons/tomtom · https://github.com/Nevcairiel/HereBeDragons
- https://github.com/tr0tsky0/Mapzeroth (MIT) · https://github.com/Deathwing/FarstriderLib (GPL-3)
- https://github.com/MorningStarGG/ZygorWaypoint · https://zygorguides.com/support/manual/travel
- https://github.com/max-ri/Guidelime/wiki/WriteAGuide · https://github.com/max-ri/Guidelime/wiki/PublishAGuide
- https://github.com/Azeroth-Pilot-Reloaded/APR-Route-Recorder
- https://github.com/Gethe/wow-ui-source/blob/live/Interface/AddOns/Blizzard_APIDocumentationGenerated/EncodingUtilDocumentation.lua

## Azimute_Rotation 0.1.0 (04/10/2026)
- Módulo independente `/azrot`: ordem de golpes para as 9 classes (28 rotações, druida feral gato e urso),
  texto próprio em pt/en; nível de treino gerado por `tools/rotation_levels.py` a partir do What's Training (MIT).
- Especialização pela aba de talentos com mais pontos (ou escolhida: `/azrot 1-4`).
- Barra ao vivo em combate: só usa o que não é secreto (`C_Spell.IsSpellUsable`), o giro da recarga pelo
  objeto de duração (`GetSpellCooldownDuration` + `SetCooldownFromDurationObject`) e brilho no próximo golpe
  só quando recarga/efeito no alvo vierem legíveis. O Combate Assistido da Blizzard vem desligado no Forever
  (`InterfaceOverrides.HasAssistedCombat` = false).
- A primeira atualização de cada luta grava em `AzimuteRotationDB.diag` o que veio secreto (`/azrot diag`):
  decidir a próxima versão da barra com isso.

### Azimute_Rotation 0.1.1 (05/10/2026): barra ao vivo retirada
- O usuário não gostou da barra de ícones em combate; ficou só o painel. Ideia para depois: brilho na
  próxima habilidade, quando houver rotações melhores (fonte confiável por classe/especialização).
- O que já se sabe para isso (código da barra no commit 0b19c5a, `Azimute_Rotation/Live.lua`):
  `C_Spell.IsSpellUsable` não é secreto; `GetSpellCooldown` fica secreto quando as recargas são
  restritas; auras do alvo idem; o giro da recarga sai por `GetSpellCooldownDuration` +
  `SetCooldownFromDurationObject`. Combate Assistido da Blizzard: desligado no Forever.
