# Azimute

A leveling guide for **WoW: Forever**, with a Portuguese-first interface. It shows the current step in
a window, points you in the right direction with an arrow, marks points on the map and, if you want,
accepts and turns in quests for you.

> **Status: beta.** Azimute started as a tool for me and my friends. The Forever beta only lets you
> level up to a certain point, so **the guides above level 30 have not been checked in the game yet**
> (see "Guide coverage"). Some steps will be wrong: please use the report button.

## What it does

- Guide window with the current step, progress, recommended reward and tips (compact mode by default).
- Direction arrow and map pin; optional TomTom integration.
- Suggested routes when they save time: flights, boats, zeppelins and hearthstone.
- Automatic quest accept and turn-in (optional; SHIFT cancels any automation).
- Safe item button, gear suggestions per spec, spells to train and their cost.
- Dungeon quest panel where you choose which quests to add to the guide.
- Guide picker that recommends a guide for your race, class, faction and level.
- **Community guides:** route recorder, editor, import and export through `!AZ1!` codes.
- Interface in Portuguese and English. Quest, NPC, item and zone names come from the game, in your
  client's language.
- Everything automatic can be turned off in Options. The addon sends no data outside the game.

### Bundled modules (independent)

Each one is a separate addon: you can disable it in the addon list without affecting the guide, and if
one of them errors the guide keeps working.

- **Azimute Meter** (`/azm`): group damage, DPS, healing, interrupts, deaths etc., using the game's own
  combat data; current, overall and previous fights; spell details; chat report. During combat the game
  hides exact numbers from addons, so percentages, reports and details show up when combat ends.
- **Azimute Utilities** (`/azu`): max camera zoom, item IDs and target in tooltips, item level on the
  character window and in the bags, world map coordinates, alerts (bags full, gear breaking, hearthstone ready), Alt+click
  buys a full stack at merchants, and optional social automation (decline duels and stranger invites,
  accept resurrection and summons; all off by default).
- **Azimute Rares** (`/azr`): warns when a rare creature (or treasure) is nearby and leads the arrow there.
- **Azimute Auction** (`/azl`): full auction house scan, auction price on any item tooltip, a warning
  when the vendor pays more, and the value of your bags.
- **Azimute Rotation** (`/azrot`): ability priority for every class and specialization (leveling), showing
  what you know and when you learn the rest, plus a live icon bar in combat (dims what you cannot use and
  shows cooldowns; in Forever the game hides part of combat from addons).

## Guide coverage

| Range | Source | Status |
|---|---|---|
| 1 to ~30 (Alliance up to 32), Alliance and Horde, per race | RestedXP, adapted to Forever | Base tested in simulation only; in-game checking under way |
| ~30 to 60 | Guidelime_Zarant (made for Classic) | **Experimental**: not checked in Forever, tagged `[experimental]` |
| Mage AoE 1-22, Skyborne 1-14, Herbalism/Mining/Skinning 1-300 | RestedXP | Same as the 1-30 range |

Not available yet: guides for other classes, dungeon routes (quests only), Alliance level 22 and the
new Forever content at level 60.

## Installation

1. Extract the zip and copy all `Azimute*` folders into the Forever client's `Interface\AddOns` folder (in
   the beta, `World of Warcraft\_classic_beta_\Interface\AddOns`). Only `Azimute` and one guide pack are
   required; Meter, Utilities, Rares and Auction are optional.
2. Start the game and type `/azimute` to see the commands. **A new addon folder only shows up after restarting the game.**

Useful commands: `/azimute guides` (picker), `/azimute show` / `hide`, `/azimute next` / `prev`,
`/azimute report`, `/azimute record` and `/azimute export` (Portuguese aliases also work).

## Reporting a problem

Use the bug icon on the guide window or `/azimute report`. Copy the text (Ctrl+C) and paste it in the
project's support channel, saying what went wrong on the last line.
Support channel: [GitHub issues](https://github.com/Jeeeff/Azimute/issues).

## Licenses and credits

| Part | License | Origin |
|---|---|---|
| `Azimute` (code) | GPL-3.0-or-later (`Azimute/LICENSE.txt`) | Original code |
| `Azimute_Guides_Forever` (guides) | CC BY-NC-SA 4.0 | Guides from [RestedXP](https://github.com/RestedXP/RXPGuides), converted automatically |
| ↳ dungeon quests | MIT | Forever Dungeon Quests, by Sundee |
| ↳ trainer spells | MIT | What's Training, by fusionpit |
| `Azimute_Guides_Classic` (guides) | GPL-3.0 | Guidelime_Zarant, by Zarant |
| `Azimute_Meter`, `Azimute_Utils`, `Azimute_Rares`, `Azimute_Auction`, `Azimute_Rotation` | GPL-3.0-or-later | Own code (trainer levels: What's Training, MIT) |

RestedXP guides may only be used non-commercially, which is why Azimute is free. RestedXP and the other
authors do not endorse Azimute. Details in the `CREDITS.md` inside each package.

World of Warcraft and WoW: Forever are trademarks of Blizzard Entertainment. This project is not
affiliated with Blizzard.

Copyright (C) 2026 jeeeff. Want to help? See [CONTRIBUTING.md](CONTRIBUTING.md).
