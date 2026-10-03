# Azimute: guia de up estilo Zygor para o WoW: Forever (foco pt-BR)

Addon **gratuito** (decisão de 28/09/2026: permite usar os guias CC BY-NC-SA do RestedXP).
O usuário escreve em português: responda em pt-BR. Detalhes de pesquisa, decisões e o formato
completo dos guias ficam em [Azimute/ROADMAP.md](Azimute/ROADMAP.md).

## Jogo alvo
- **WoW: Forever** (beta, lançamento 04/11/2026): Azeroth original + conteúdo novo, nível 60,
  `## Interface: 16001`, API do Mainline 12.x **com as restrições do Midnight** (valores secretos),
  Lua 5.1. Também declaramos `120100, 120105` (Midnight).
- Pasta de teste do usuário: `C:\Program Files (x86)\World of Warcraft\_classic_beta_\Interface\AddOns`
  (lá também estão RXPGuides, TomTom e RestedXP-TomTom; o RXPGuides é a fonte dos guias).
- Particularidades do Forever já confirmadas:
  - `C_SuperTrack.SetSuperTrackedUserWaypoint` é bloqueada; `C_Map.SetUserWaypoint` funciona.
  - Globais antigas removidas: `GetItemInfo`, `GetSpellInfo`, `GetTalentInfo`... (use `C_Item`/`C_Spell`).
  - Talentos: uma árvore de traços por classe; as abas são grupos (`C_Traits.GetGroupDisplayInfoByTreeID`
    + `GetGroupCurrencyInfo`).
  - `GetBindLocation()` só devolve o nome; a posição da pedra é anotada em `HEARTHSTONE_BOUND`.
  - Imprimir/comparar valores secretos dá erro: sempre `ns.IsSecret(v)` antes.
  - Registrar evento inexistente dá erro: `ns:RegisterEvent` já testa e ignora.
  - Pasta nova de addon só aparece reiniciando o jogo; arquivo novo às vezes também.

## Estrutura
```
Azimute/                      núcleo (sem dados de terceiros)
  Locales.lua                textos enUS + ptBR (nomes de quest/NPC/item/zona vêm do cliente)
  Core/Init.lua              ns, dados salvos (AzimuteDB / AzimuteCharDB), eventos, ns:On/ns:Fire
  Core/Commands.lua          /azimute (comandos em pt e en)
  Data/Names.lua             nomes por ID no idioma do cliente (+ cache por idioma)
  Data/Dungeons.lua          masmorras escolhidas (condição ifdungeon)
  Data/DungeonQuests.lua     missões de masmorra (API RegisterDungeonQuests)
  Guides/Parser.lua          texto do guia -> tabelas (SÓ DADOS, nunca loadstring)
  Guides/Registry.lua        guias (leitura do cabeçalho sob demanda), escolha por nível/raça/classe
  Guides/IO.lua              importar/exportar (!GU1! = C_EncodingUtil)
  Guides/Recorder.lua        gravador de rotas
  Engine/Engine.lua          passo atual, condições, avanço automático, hold ao navegar
  Engine/Focus.lua           "missão selecionada" (lê C_SuperTrack)
  Nav/Position.lua           posição, distância, conversão mundo<->mapa
  Nav/Router.lua             rotas (voo/barco/zepelim/pedra), caminho de voo novo
  Nav/Navigator.lua          alvo atual, pontos do path, chegada, TomTom e pino
  Nav/Arrow.lua, MapLines.lua, TomTomBridge.lua
  UI/StepFrame.lua           janela do guia;  UI/GuidePicker, DungeonPanel, ImportFrame (editor),
  UI/Options.lua             Settings API;  UI/MinimapButton.lua (menu no clique direito)
  Automation/AutoQuest, ItemButton, Gear (equipamento), Trainer (treino)
Azimute_Guides_Forever/       pacote gerado: CC BY-NC-SA 4.0 (RestedXP) + dados MIT
Azimute_Guides_Classic/       pacote gerado: GPL-3.0 (Guidelime_Zarant), 30-60
Azimute_Meter/                módulo INDEPENDENTE: medidor de dano/cura (C_DamageMeter), /azm, AzimuteMeterDB
Azimute_Bags/                 módulo INDEPENDENTE: bolsas e banco unificados, /azb, AzimuteBagsDB
tools/rxp2azimute.py          gera o pacote Forever (guias RXP + pesos + voos + masmorras + treino)
tools/guidelime2azimute.py    gera o pacote Classic
tools/sources/               fontes com licença: zarant/ (GPL-3), fdq/ (MIT), whatstraining/ (MIT)
tools/translations/          dicas en->ptBR (notes_ptBR_partN.json); dicas novas: exportar e traduzir
tools/tests/                 testes fora do jogo (LuaJIT via "lupa"; pylibs/ já incluso)
```
Mensagens internas: INIT, LOGIN, STEP_CHANGED, STEP_UPDATED, NAMES_UPDATED, NAV_ARRIVED,
ROUTE_CHANGED, GUIDES_CHANGED. APIs públicas para pacotes: `AzimuteAPI.RegisterGuide`,
`RegisterStatWeights`, `RegisterFlightTimes`, `RegisterDungeonQuests`, `RegisterClassSpells`.

## Licenças (não misturar)
- Guias do RestedXP: **CC BY-NC-SA 4.0** -> só no pacote Forever, com crédito e mesma licença.
  O nome "RestedXP" NÃO aparece na interface (só créditos, notas do .toc e #author).
- Guidelime_Zarant: **GPL-3.0** -> só no pacote Classic (GPL e CC BY-NC-SA são incompatíveis).
- Forever Dungeon Quests e What's Training: **MIT** (com LICENSE junto, no pacote Forever).
- Não reutilizar (só a ideia): TomTom, Zygor, WoW-Pro (NC-ND), Guidelime (addon), DungeonJournal.

## Comandos de trabalho (bash, na raiz do projeto)
Regenerar os pacotes:
```bash
G="tools/sources/rxpguides/Guides"   # git -C tools/sources/rxpguides pull  (antes de regenerar)
python tools/rxp2azimute.py "$G/Forever" "$G/../LICENSE" Azimute_Guides_Forever --extra "$G/RestedXP Horde 20-30.lua" "$G/RestedXP Alliance 23-30.lua" "$G/Herbalism.lua" "$G/Mining.lua" "$G/Skinning.lua" --fdq tools/sources/fdq/Data.lua tools/sources/fdq/LICENSE --wt tools/sources/whatstraining/Vanilla tools/sources/whatstraining/LICENSE
python tools/guidelime2azimute.py tools/sources/zarant Azimute_Guides_Classic
```
Testar (sempre antes de copiar para o jogo):
```bash
PYTHONIOENCODING=utf-8 python tools/tests/run_tests.py   # lógica do addon (simulação da API)
PYTHONIOENCODING=utf-8 python tools/tests/run_pack.py    # carrega e lê todos os guias dos pacotes
PYTHONIOENCODING=utf-8 python tools/tests/run_modules.py # medidor e bolsas (sozinhos e com o Azimute)
```
Copiar para o jogo (depois de subir `## Version` no .toc):
```bash
AD="/c/Program Files (x86)/World of Warcraft/_classic_beta_/Interface/AddOns"
(cd Azimute && cp --parents Azimute.toc Bindings.xml Locales.lua Core/*.lua Data/*.lua Engine/*.lua Guides/*.lua Nav/*.lua UI/*.lua Automation/*.lua "$AD/Azimute"/)
cp -r Azimute_Guides_Forever/. "$AD/Azimute_Guides_Forever/"; cp -r Azimute_Guides_Classic/. "$AD/Azimute_Guides_Classic/"
for m in Azimute_Meter Azimute_Bags; do mkdir -p "$AD/$m"; cp $m/*.toc $m/*.lua $m/LICENSE.txt "$AD/$m/"; done
```
Módulos (Meter, Bags): pasta, .toc, SavedVariables e comando próprios, sem `Dependencies: Azimute`
(só `OptionalDeps`). Um erro neles não derruba o guia e vice-versa. Se o Azimute estiver ligado, eles
aparecem no menu do botão do minimapa via `AzimuteAPI.RegisterModule`.
Interface do Forever (para conferir API): ramo `forever` de github.com/Gethe/wow-ui-source
(`Blizzard_APIDocumentationGenerated`). Valores secretos: nunca fazer conta/comparar; só passar para
`SetText`/`SetValue`/`AbbreviateNumbers`.
`Guides/Test/` e `tools/` não vão para o jogo. Arquivos sempre UTF-8 sem BOM.

## Convenções
- Comentários e textos em português; código segue o estilo dos arquivos vizinhos.
- Tudo que for automático é opção (Settings) e pode ser desligado; SHIFT cancela automações.
- Nada é comprado/aceito sem o jogador saber (ex.: "Treinar tudo" é botão, recompensa automática é opcional).
- Ao mudar algo: teste novo em `tools/tests/scenario.lua`, rodar os dois testes, subir versão, copiar.
