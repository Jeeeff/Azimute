# Azimute

Guia de up para o **WoW: Forever**, em português. Mostra o passo atual numa janela, aponta a direção
com uma seta, marca os pontos no mapa e, se você quiser, aceita e entrega as missões por você.

> **Estado: beta.** O Azimute nasceu para uso próprio e de amigos. O beta do Forever só deixa subir
> até certo nível, então **a parte dos guias acima do 30 ainda não foi conferida no jogo** (veja
> "Cobertura dos guias"). Passos errados vão existir: use o botão de reportar.

## O que faz

- Janela do guia com o passo atual, progresso, recompensa recomendada e dicas (modo compacto por padrão).
- Seta de direção e pino no mapa; integração opcional com o TomTom.
- Rotas sugeridas quando compensa: voo, barco, zepelim e pedra de regresso.
- Aceitar e entregar missões automaticamente (opcional; SHIFT cancela qualquer automação).
- Botão de item seguro, equipamento sugerido por especialização, feitiços para treinar e custo.
- Painel de missões de masmorra que você escolhe incluir no guia.
- Seletor de guias que recomenda o guia pela sua raça, classe, facção e nível.
- **Guias da comunidade:** gravador de rotas, editor, importar e exportar por código `!AZ1!`.
- Interface em português e inglês. Nomes de missão, NPC, item e zona vêm do próprio jogo, no idioma
  do seu cliente.
- Tudo que é automático pode ser desligado em Opções. O addon não envia nenhum dado para fora do jogo.

## Cobertura dos guias

| Faixa | Origem | Situação |
|---|---|---|
| 1 a ~30 (Aliança até 32), Aliança e Horda, por raça | RestedXP, adaptados ao Forever | Base testada só em simulação; conferência no jogo em andamento |
| ~30 a 60 | Guidelime_Zarant (feitos para o Classic) | **Experimental**: não conferidos no Forever, marcados com o selo `[experimental]` |
| Mago AoE 1-22, Skyborne 1-14, Herbalismo/Mineração/Couro 1-300 | RestedXP | Igual à faixa 1-30 |

Ainda não há: guias de outras classes, rotas de masmorra (só as missões), nível 22 da Aliança e o
conteúdo novo do Forever no nível 60.

## Instalação

1. Copie as pastas `Azimute`, `Azimute_Guides_Forever` e `Azimute_Guides_Classic` para a pasta
   `Interface\AddOns` do cliente do Forever (no beta, `_classic_beta_\Interface\AddOns`).
2. Abra o jogo e digite `/azimute` para ver os comandos. **Pasta nova de addon só aparece reiniciando o jogo.**

Comandos úteis: `/azimute guias` (seletor), `/azimute mostrar` / `esconder`, `/azimute avancar` /
`voltar`, `/azimute reportar`, `/azimute gravar` e `/azimute exportar`.

## Reportar um problema

Use o ícone de inseto na janela do guia ou `/azimute reportar`. Copie o texto (Ctrl+C) e cole no canal de
suporte do projeto, escrevendo o que deu errado na última linha.
<!-- TODO: colocar aqui o link do canal de suporte (issues/Discord) antes de publicar -->

## Licenças e créditos

| Parte | Licença | Origem |
|---|---|---|
| `Azimute` (código) | GPL-3.0-or-later (`Azimute/LICENSE.txt`) | Código próprio |
| `Azimute_Guides_Forever` (guias) | CC BY-NC-SA 4.0 | Guias do [RestedXP](https://github.com/RestedXP/RXPGuides), convertidos automaticamente |
| ↳ missões de masmorra | MIT | Forever Dungeon Quests, de Sundee |
| ↳ feitiços de treinador | MIT | What's Training, de fusionpit |
| `Azimute_Guides_Classic` (guias) | GPL-3.0 | Guidelime_Zarant, de Zarant |

Os guias do RestedXP só podem ser usados sem fins comerciais, por isso o Azimute é gratuito. O RestedXP e
os demais autores não endossam o Azimute. Detalhes em `CREDITS.md` dentro de cada pacote.

World of Warcraft e WoW: Forever são marcas da Blizzard Entertainment. Este projeto não é afiliado à Blizzard.

Copyright (C) 2026 jeeeff. Quer ajudar? Veja o [CONTRIBUTING.md](CONTRIBUTING.md).
