-- Convertido automaticamente de RXPGuides (Horde-01-14_Undead.lua)
-- (c) RestedXP - CC BY-NC-SA 4.0 (ver LICENSE.txt). Não edite à mão:
-- rode tools/rxp2azimute.py de novo.
local register = AzimuteAPI and AzimuteAPI.RegisterGuide
if not register then return end

register([==[
#format 1
#id forever.h.1-6-tirisfal-glades
#name 1-6 Tirisfal Glades
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 11
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Horde
#levels 1-6
#zone 1420
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup Speedrun 1-22
#subgroup-ptBR Rota rápida 1-22
#recommend Scourge
#next forever.h.6-12-tirisfal-glades

step
    path seq 1420 @1675.9,1645 @1665.51,1645
    goto 1420 @1667.77,1679.04 10
    note-enUS You have selected a guide meant for Undead. It is recommended you choose the same starter zone that you start in |only !Scourge
    note-ptBR Você selecionou um guia feito para Mortos-vivos. Recomenda-se escolher a mesma zona inicial em que você começou |only !Scourge
    note-enUS Destroy the [Hearthstone] in your bags, as it's no longer needed
    note-ptBR Destrua a [Hearthstone] nas suas bolsas, pois não é mais necessária
    note-enUS Run up out of the crypt toward Mordo
    note-ptBR Saia correndo da cripta em direção a Mordo
    note-enUS Talk to Mordo
    note-ptBR Fale com Mordo
    accept 363
step
    only Priest Mage
    goto 1420 @1646.08,1750.44 |only Warrior Warlock
    path seq 1420 @1681.32,1719.71 |only Warrior Warlock Priest Mage
    goto 1420 @1646.08,1750.44 40 |only Warrior Warlock Priest Mage
    path seq 1420 @1714.76,1760.68 @1718.38,1799.24 |only Priest Mage
    goto 1420 @1669.12,1869.73 40 |only Priest Mage
    goto 1420 @1577.39,1860.09 8 |only Warrior Priest Mage
    goto 1420 @1574.23,1866.12
    note-enUS Kill Young Scavengers and Duskbats. Loot them until you have 60 copper worth of vendor items (including your armor) |only Mage
    note-ptBR Mate Young Scavengers e Duskbats. Saqueie-os até ter 60 cobres em itens para vender (incluindo sua armadura) |only Mage
    note-enUS Kill Young Scavengers and Duskbats. Loot them until you have 50 copper worth of vendor items (including your armor) |only Priest
    note-ptBR Mate Young Scavengers e Duskbats. Saqueie-os até ter 50 cobres em itens para vender (incluindo sua armadura) |only Priest
    note-enUS Kill Young Scavengers and Duskbats. Loot them until you have 10 copper worth of vendor items (including your armor) |only Warrior Warlock
    note-ptBR Mate Young Scavengers e Duskbats. Saqueie-os até ter 10 cobres em itens para vender (incluindo sua armadura) |only Warrior Warlock
    note-enUS Go inside the building |only Warrior Priest Mage
    note-ptBR Entre no prédio |only Warrior Priest Mage
    note-enUS Talk to Joshua
    note-ptBR Fale com Joshua
    note-enUS Buy [Refreshing Spring Water] from him
    note-ptBR Compre [Refreshing Spring Water] dele
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
    collect 159 10 |quest 383 |q 383/1
step
    only Warlock Mage
    goto 1420 @1633.42,1836.9 |only Warlock
    goto 1420 @1639.75,1843.22
    note-enUS Talk to Venya and Sarvis |only Warlock
    note-ptBR Fale com Venya e Sarvis |only Warlock
    note-enUS Talk to Sarvis |only Mage
    note-ptBR Fale com Sarvis |only Mage
    accept 1470 |only Warlock
    turnin 363
    accept 364
step
    only Warlock Mage
    path seq 1420 @1616.71,1842.92
    goto 1420 @1638.85,1847.74
    note-enUS Talk to Elreth
    note-ptBR Fale com Elreth
    accept 376
step
    only Mage
    goto 1420 @1635.23,1847.44
    note-enUS Talk to Isabella
    note-ptBR Fale com Isabella
    train 1459
    note-enUS Train [Arcane Intellect]
    note-ptBR Treine [Arcane Intellect]
step
    only Warlock
    goto 1420 @1641.11,1836.9
    note-enUS Talk to Kayla
    note-ptBR Fale com Kayla
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
step
    only Warlock
    goto 1420 @1636.59,1839.01
    note-enUS Talk to Maximillion
    note-ptBR Fale com Maximillion
    train 348
    note-enUS Train [Immolate]
    note-ptBR Treine [Immolate]
step
    only !Warlock !Mage
    path seq 1420 @1616.71,1842.92
    goto 1420 @1639.75,1843.22
    note-enUS Talk to Sarvis
    note-ptBR Fale com Sarvis
    turnin 363
    accept 364
step
    only !Warlock !Mage
    goto 1420 @1638.85,1847.74
    note-enUS Talk to Elreth
    note-ptBR Fale com Elreth
    accept 376
step
    only Warrior
    goto 1420 @1568.35,1859.49 |only Warrior
    goto 1420 @1556.61,1862.5
    note-enUS Talk to Archibald |only Warrior
    note-ptBR Fale com Archibald |only Warrior
    vendor |only Warrior |opt
    note-enUS Vendor Trash |only Warrior
    note-ptBR Venda o lixo |only Warrior
    note-enUS Talk to Dannal
    note-ptBR Fale com Dannal
    train 6673
    note-enUS Train [Battle Shout]
    note-ptBR Treine [Battle Shout]
step
    only Warlock
    path closest 1420 @1595.47,1985.41 @1627.55,2008.61 @1584.17,2024.88 @1575.58,2053.8 @1529.49,2044.16 @1512.32,2007.1 @1499.67,1975.47 @1487.47,1938.12 @1541.69,1939.32
    note-enUS Kill Rattlecage Skeletons. Loot them for their Rattlecage Skulls
    note-ptBR Mate Rattlecage Skeletons. Saqueie-os para obter Rattlecage Skulls
    objective 1470/1
step
    only Warlock
    ifonquest 1470
    path seq 1420 @1576.94,1861.6
    goto 1420 @1574.23,1866.12
    note-enUS Kill Mindless Zombies and Wretched Zombies. Loot them until you have 25 copper worth of vendor items (including your armor) |only Warlock
    note-ptBR Mate Mindless Zombies e Wretched Zombies. Saqueie-os até ter 25 cobres em itens para vender (incluindo sua armadura) |only Warlock
    note-enUS Talk to Joshua
    note-ptBR Fale com Joshua
    note-enUS Buy [Refreshing Spring Water] from him
    note-ptBR Compre [Refreshing Spring Water] dele
    collect 159 5 |quest 383 |q 383/1
step
    only Warlock
    path seq 1420 @1616.71,1842.92
    goto 1420 @1633.42,1836.9
    note-enUS Talk to Venya
    note-ptBR Fale com Venya
    turnin 1470
step
    path closest 1420 @1599.99,1910.1 @1646.53,1913.11 @1637.04,1963.72 @1644.72,1979.99 @1626.19,1987.52 @1596.37,1974.87 @1548.92,1939.02 @1546.66,1923.36 @1523.62,1937.82 @1508.26,1943.84 @1519.1,1914.92 @1517.29,1892.33 @1529.04,1880.58
    note-enUS Cast [Summon Imp] |only Warlock
    note-ptBR Lance [Summon Imp] |only Warlock
    note-enUS Kill Mindless Zombies and Wretched Zombies
    note-ptBR Mate Mindless Zombies e Wretched Zombies
    objective 364/1
    objective 364/2
step
    only Mage Warlock Priest
    ifonquest 364
    path seq 1420 @1576.94,1861.6
    goto 1420 @1574.23,1866.12
    note-enUS Kill Mindless Zombies and Wretched Zombies. Loot them until you have 33 copper worth of vendor items (including your armor) |only Mage Warlock Priest
    note-ptBR Mate Mindless Zombies e Wretched Zombies. Saqueie-os até ter 33 cobres em itens para vender (incluindo sua armadura) |only Mage Warlock Priest
    note-enUS Talk to Joshua
    note-ptBR Fale com Joshua
    note-enUS Buy [Refreshing Spring Water] from him
    note-ptBR Compre [Refreshing Spring Water] dele
    collect 159 10 |quest 383 |q 383/1
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
step
    only Mage Warlock Priest
    ifonquest 364
    path seq 1420 @1576.94,1861.6
    goto 1420 @1574.23,1866.12
    note-enUS Talk to Joshua
    note-ptBR Fale com Joshua
    note-enUS Buy [Refreshing Spring Water] from him
    note-ptBR Compre [Refreshing Spring Water] dele
    collect 159 5 |quest 383 |q 383/1
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
step
    path seq 1420 @1616.71,1842.92 @1639.75,1843.22
    goto 1420 @1638.85,1847.74
    goto 1420 @1636.59,1839.01 |only Warlock
    goto 1420 @1635.23,1847.44 |only Mage
    goto 1420 @1627.55,1848.65 |only Priest
    note-enUS Talk to Sarvis and Elreth |only !Warlock !Mage !Priest
    note-ptBR Fale com Sarvis e Elreth |only !Warlock !Mage !Priest
    note-enUS Talk to Sarvis, Elreth, and Maximillion |only Warlock
    note-ptBR Fale com Sarvis, Elreth e Maximillion |only Warlock
    note-enUS Talk to Sarvis, Elreth, and Isabella |only Mage
    note-ptBR Fale com Sarvis, Elreth e Isabella |only Mage
    note-enUS Talk to Sarvis, Elreth, and Duesten |only Priest
    note-ptBR Fale com Sarvis, Elreth e Duesten |only Priest
    turnin 364
    accept 3095 |only Warrior
    accept 3096 |only Rogue
    accept 3097 |only Priest
    accept 3098 |only Mage
    accept 3099 |only Warlock
    accept 98601 |only Paladin
    accept 3901
    accept 376
    turnin 3099 |only Warlock
    turnin 3098 |only Mage
    turnin 3097 |only Priest
step
    only Paladin
    goto 1420 @1628.4,1837.4
    note-enUS Talk to Aramis Hammerhand
    note-ptBR Fale com Aramis Hammerhand
    turnin 98601
    accept 90902
step
    only Mage Warlock Priest
    ifonquest 364
    path seq 1420 @1576.94,1861.6
    goto 1420 @1574.23,1866.12
    note-enUS Cast [Holy Light] on Injured Deathguards |only Paladin
    note-ptBR Lance [Holy Light] nos Injured Deathguards |only Paladin
    objective 90902/1 |only Paladin |opt
    note-enUS Talk to Joshua
    note-ptBR Fale com Joshua
    note-enUS Buy [Refreshing Spring Water] from him
    note-ptBR Compre [Refreshing Spring Water] dele
    collect 159 10 |quest 383 |q 383/1
step
    path closest 1420 @1482.5,2126.7 @1713.41,1828.76 @1701.21,1858.29 @1695.78,1908.29 @1692.62,1927.88 @1673.64,1984.51 @1633.88,2040.24 @1604.96,2073.08 @1584.17,2098.08 @1548.92,2079.71 @1482.5,2126.7
    note-enUS Kill Young Scavengers and Ragged Scavengers. Loot them for their Scavenger Paws
    note-ptBR Mate Young Scavengers e Ragged Scavengers. Saqueie-os para obter Scavenger Paws
    note-enUS Kill Duskbats and Mangy Duskbats. Loot them for their Duskbat Wings
    note-ptBR Mate Duskbats e Mangy Duskbats. Saqueie-os para obter as Duskbat Wings
    note-enUS Try to avoid Mangy Duskbats if you can due to them being much tougher to kill than Duskbats
    note-ptBR Evite os Mangy Duskbats se puder, pois são bem mais difíceis de matar que os Duskbats
    objective 376/1
    objective 376/2
step
    path closest 1420 @1595.47,1985.41 @1627.55,2008.61 @1584.17,2024.88 @1575.58,2053.8 @1529.49,2044.16 @1512.32,2007.1 @1499.67,1975.47 @1487.47,1938.12 @1541.69,1939.32
    note-enUS Kill Rattlecage Skeletons
    note-ptBR Mate Rattlecage Skeletons
    objective 3901/1
step
    path closest 1420 @1595.47,1985.41 @1627.55,2008.61 @1584.17,2024.88 @1575.58,2053.8 @1529.49,2044.16 @1512.32,2007.1 @1499.67,1975.47 @1487.47,1938.12 @1541.69,1939.32
    level 3 |only Paladin
    note-enUS Grind to 895+/1400xp |only Paladin
    note-ptBR Mate monstros até 895+/1400xp |only Paladin
    level 3 |only Warrior Rogue
    note-enUS Grind to 940+/1400xp |only Warrior Rogue
    note-ptBR Mate monstros até 940+/1400xp |only Warrior Rogue
    level 3 |only !Warrior !Rogue !Paladin
    note-enUS Grind to 980+/1400xp |only !Warrior !Rogue !Paladin
    note-ptBR Mate monstros até 980+/1400xp |only !Warrior !Rogue !Paladin
step
    only Paladin
    goto 1420 @1593.5,1876.4
    note-enUS Cast [Holy Light] on Injured Deathguards
    note-ptBR Lance [Holy Light] nos Injured Deathguards
    objective 90902/1
step
    only Mage Warlock Priest Paladin
    ifonquest 3901
    path seq 1420 @1576.04,1861.6
    goto 1420 @1574.23,1866.12
    note-enUS Talk to Joshua
    note-ptBR Fale com Joshua
    note-enUS Buy [Refreshing Spring Water] from him |only !Paladin
    note-ptBR Compre [Refreshing Spring Water] dele |only !Paladin
    note-enUS Do NOT go below 1 Silver |only Mage Warlock Priest
    note-ptBR NÃO fique abaixo de 1 de prata |only Mage Warlock Priest
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
step
    path seq 1420 @1616.71,1842.92 @1639.75,1843.22
    goto 1420 @1638.85,1847.74
    note-enUS Talk to Sarvis and Elreth
    note-ptBR Fale com Sarvis e Elreth
    turnin 3901
    turnin 376
    accept 6395
step
    only Paladin
    ifonquest 90902
    goto 1420 @1568.35,1859.49
    note-enUS Talk to Archibald
    note-ptBR Fale com Archibald
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
step
    goto 1420 @1628.3,1837.3
    note-enUS Talk to Aramis Hammerhand
    note-ptBR Fale com Aramis Hammerhand
    turnin 90902 |only Paladin
    accept 91208 |only Paladin
    accept 91209 |only Paladin
    accept 98389
step
    only Paladin
    goto 1420 @1628.3,1837.3
    note-enUS Talk to Aramis Hammerhand
    note-ptBR Fale com Aramis Hammerhand
    train 20271
    note-enUS Train [Judgement]
    note-ptBR Treine [Judgement]
    train 19740
    note-enUS Train [Blessing of Might]
    note-ptBR Treine [Blessing of Might]
step
    only Paladin
    goto 1420 @1628.3,1837.3
    note-enUS Talk to Aramis Hammerhand
    note-ptBR Fale com Aramis Hammerhand
    train 20271
    note-enUS Train [Judgement]
    note-ptBR Treine [Judgement]
step
    only Priest
    goto 1420 @1627.55,1848.65
    note-enUS Talk to Duesten
    note-ptBR Fale com Duesten
    train 589
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Priest
    goto 1420 @1627.55,1848.65
    note-enUS Talk to Duesten
    note-ptBR Fale com Duesten
    train 2052
    note-enUS Train [Lesser Heal Rank 2]
    note-ptBR Treine [Lesser Heal Rank 2]
    train 589
    note-enUS Train [Shadow Word: Pain]
    note-ptBR Treine [Shadow Word: Pain]
step
    only Priest
    goto 1420 @1627.55,1848.65
    note-enUS Talk to Duesten
    note-ptBR Fale com Duesten
    train 1243
    note-enUS Train [Power Word: Fortitude]
    note-ptBR Treine [Power Word: Fortitude]
    train 589
    note-enUS Train [Shadow Word: Pain]
    note-ptBR Treine [Shadow Word: Pain]
step
    only Priest
    goto 1420 @1627.55,1848.65
    note-enUS Talk to Duesten
    note-ptBR Fale com Duesten
    train 589
    note-enUS Train [Shadow Word: Pain]
    note-ptBR Treine [Shadow Word: Pain]
step
    only Warlock
    goto 1420 @1636.59,1839.01
    note-enUS Talk to Maximillion
    note-ptBR Fale com Maximillion
    train 172
    note-enUS Train [Corruption]
    note-ptBR Treine [Corruption]
step
    only Mage
    goto 1420 @1635.23,1847.44
    note-enUS Talk to Isabella
    note-ptBR Fale com Isabella
    train 116
    note-enUS Train [Frostbolt]
    note-ptBR Treine [Frostbolt]
step
    path seq 1420 @1616.71,1842.92 @1604.96,1860.7
    goto 1420 @1580.56,1848.95
    note-enUS Talk to Deathguard Saltain and Executor Arren
    note-ptBR Fale com Deathguard Saltain e Executor Arren
    accept 3902
    accept 380
step
    only Rogue Warrior Paladin
    goto 1420 @1568.35,1859.49
    note-enUS Talk to Archibald
    note-ptBR Fale com Archibald
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
step
    only Warrior
    goto 1420 @1556.61,1862.5
    note-enUS Talk to Dannal
    note-ptBR Fale com Dannal
    turnin 3095
    train 100
    note-enUS Train [Charge]
    note-ptBR Treine [Charge]
    train 772
    note-enUS Train [Rend]
    note-ptBR Treine [Rend]
step
    only Warrior
    goto 1420 @1556.61,1862.5
    note-enUS Talk to Dannal
    note-ptBR Fale com Dannal
    turnin 3095
    train 772
    note-enUS Train [Rend]
    note-ptBR Treine [Rend]
step
    only Rogue
    goto 1420 @1563.38,1859.79
    note-enUS Talk to David
    note-ptBR Fale com David
    turnin 3096
step
    only Rogue Warrior Paladin
    goto 1420 @1577.1,1854.6
    note-enUS Talk to Walter Mason upstairs
    note-ptBR Fale com Walter Mason no andar de cima
    note-enUS Buy a [Mining Pick] from him
    note-ptBR Compre uma [Mining Pick] dele
    train 2575
    note-enUS Train [Mining]
    note-ptBR Treine [Mining]
    collect 2901 1 |quest 792 |q 792/1
    note-enUS This will allow you to find [Rough Stones] from nodes in order to craft [Sharpening Stones] (+2 Weapon Damage for 30 minutes)
    note-ptBR Isto permitirá obter [Rough Stones] dos veios para criar [Sharpening Stones] (+2 de dano da arma por 30 minutos)
step
    path closest 1420 @1570.61,1898.35 @1550.73,1897.75 @1547.12,1891.42 @1541.69,1867.93 @1506.45,1892.33 @1536.27,1937.21 @1551.64,1936.31 @1593.66,1985.11 @1598.63,1970.95 @1600.89,1953.78 @1617.16,1956.49
    note-enUS Open the Equipment Boxes on the ground. Loot them for the Scavenged Goods
    note-ptBR Abra as Equipment Boxes no chão. Saqueie-as para obter os Scavenged Goods
    objective 3902/1
step
    only Paladin
    note-enUS Talk to the Frightened Paladin, kill her as she becomes hostile
    note-ptBR Fale com a Frightened Paladin e mate-a quando ela ficar hostil
    objective 91208/1
step
    path closest 1420 @1680.42,2110.43 @1685.84,2149.6 @1711.6,2157.43 @1750.01,2135.14 @1782.54,2117.36 @1754.98,2080.91 @1756.79,2047.77 @1731.93,2044.16 @1709.79,2048.07 @1692.62,2074.28
    note-enUS Kill Young Night Web Spiders
    note-ptBR Mate Young Night Web Spiders
    objective 380/1
step
    path closest 1420 @1756.79,2082.12 @1749.1,2058.02 @1774.41,2012.83 @1805.59,2054.7 @1799.71,2091.15 @1815.98,2137.85 @1790.23,2150.5
    note-enUS Kill Young Night Web Spiders close to the cave entrance
    note-ptBR Mate Young Night Web Spiders perto da entrada da caverna
    objective 380/1
step
    path closest 1420 @1822.31,2048.07 @1844.45,2042.05 @1918.11,2043.86 @1844.45,2042.05 @1876.08,2043.56 @1898.68,2020.06 @1940.7,2006.8 @1983.63,2032.71 @1953.8,2079.4 @1918.11,2043.86
    note-enUS Go inside the cave
    note-ptBR Entre na caverna
    note-enUS Attack the Webbed Forsaken
    note-ptBR Ataque o Webbed Forsaken
    objective 98389/1 |opt
    note-enUS Kill Night Web Spiders inside the cave
    note-ptBR Mate Night Web Spiders dentro da caverna
    objective 380/2
step
    goto 1420 @1921.5,2046.5
    note-enUS Attack the Webbed Forsaken
    note-ptBR Ataque o Webbed Forsaken
    objective 98389/1
step
    goto 1420 @1604.96,1860.7
    note-enUS Die and respawn at the Spirit Healer
    note-ptBR Morra e renasça no Spirit Healer
    note-enUS Cast [Summon Imp] |only Warlock
    note-ptBR Lance [Summon Imp] |only Warlock
    note-enUS Talk to Saltain
    note-ptBR Fale com Saltain
    turnin 3902
step
    goto 1420 @1580.56,1848.95
    note-enUS Talk to Arren
    note-ptBR Fale com Arren
    turnin 380
    accept 381
step
    goto 1420 @1628.4,1837
    note-enUS Talk to Aramis Hammerhand
    note-ptBR Fale com Aramis Hammerhand
    turnin 91208 |only Paladin
    turnin 98389
step
    only Rogue Warrior Paladin
    ifonquest 6395
    goto 1420 @1568.35,1859.49
    note-enUS Talk to Archibald
    note-ptBR Fale com Archibald
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
step
    only Warlock Mage Priest
    ifonquest 6395
    goto 1420 @1574.23,1866.12
    note-enUS Talk to Joshua
    note-ptBR Fale com Joshua
    note-enUS Buy [Refreshing Spring Water] from him
    note-ptBR Compre [Refreshing Spring Water] dele
    collect 159 15 |quest 383 |q 383/1 |only Warlock Mage Priest
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
step
    path closest 1420 @1400.71,1766.71 @1385.8,1744.11 @1368.17,1728.15 @1342.42,1741.4 @1313.95,1735.08 @1320.28,1752.25 @1314.85,1765.8 @1294.07,1780.56 @1283.67,1817.02 @1289.55,1841.72 @1286.84,1877.27 @1333.38,1868.53 @1364.56,1867.93 @1383.54,1866.72 @1368.17,1831.48 @1341.06,1790.51 @1364.56,1784.18
    note-enUS Kill Scarlet Initiates and Scarlet Converts. Loot them for their Scarlet Armbands
    note-ptBR Mate Scarlet Initiates e Scarlet Converts. Saqueie-os para obter as Scarlet Armbands
    note-enUS Don't kill Meven Korgal yet
    note-ptBR Não mate Meven Korgal ainda
    note-enUS Try to avoid Scarlet Initiates if you can as they have [Frost Armor] (slows your attack speed) |only Warrior Rogue
    note-ptBR Evite os Scarlet Initiates se puder, pois eles têm [Frost Armor] (reduz sua velocidade de ataque) |only Warrior Rogue
    objective 381/1
step
    goto 1420 @1375.4,1979.69
    note-enUS Kill Samuel. Loot him for Samuel's Remains
    note-ptBR Mate Samuel. Saqueie-o para obter Samuel's Remains
    collect 16333 1 |quest 6395 |q 6395/1
step
    goto 1420 @1624.84,1876.96
    note-enUS Die and respawn at the Spirit Healer
    note-ptBR Morra e renasça no Spirit Healer
    note-enUS Click Marla's Grave on the ground
    note-ptBR Clique em Marla's Grave no chão
    objective 6395/1
step
    path seq 1420 @1616.71,1842.92
    goto 1420 @1638.85,1847.74
    goto 1420 @1627.55,1848.65 |only Priest
    note-enUS Cast [Summon Imp] |only Warlock
    note-ptBR Lance [Summon Imp] |only Warlock
    note-enUS Talk to Elreth |only !Priest
    note-ptBR Fale com Elreth |only !Priest
    note-enUS Talk to Elreth and Duesten |only Priest
    note-ptBR Fale com Elreth e Duesten |only Priest
    turnin 6395
    accept 5651 |only Priest
step
    goto 1420 @1580.56,1848.95
    note-enUS Talk to Arren
    note-ptBR Fale com Arren
    turnin 381
    accept 382
step
    goto 1420 @1568.35,1859.49
    note-enUS Talk to Archibald
    note-ptBR Fale com Archibald
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
step
    goto 1420 @1383.99,1764.3
    note-enUS Kill Meven. Loot him for the Scarlet Crusade Documents
    note-ptBR Mate Meven. Saqueie-o para obter os Scarlet Crusade Documents
    objective 382/1
step
    goto 1420 @1580.56,1848.95
    note-enUS Talk to Arren
    note-ptBR Fale com Arren
    turnin 382
    accept 383
    accept 96656
step
    path closest 1420 @1493.34,2044.76 @1436.41,2133.93 @1369.08,2124.89 @1327.05,2048.68 @1338.35,1939.93 @1400.71,1766.71 @1385.8,1744.11 @1368.17,1728.15 @1342.42,1741.4 @1313.95,1735.08 @1320.28,1752.25 @1314.85,1765.8 @1294.07,1780.56 @1283.67,1817.02 @1289.55,1841.72 @1286.84,1877.27 @1333.38,1868.53 @1364.56,1867.93 @1383.54,1866.72 @1368.17,1831.48 @1341.06,1790.51 @1364.56,1784.18 @1400.71,1766.71
    level 5 |only !Paladin
    note-enUS Grind to 1940+/2800xp |only !Paladin
    note-ptBR Mate monstros até 1940+/2800xp |only !Paladin
    level 5 |only Paladin
    note-enUS Grind to 1850+/2800xp |only Paladin
    note-ptBR Mate monstros até 1850+/2800xp |only Paladin
step
    goto 1420 @1305.36,2127.3
    note-enUS Talk to Calvin
    note-ptBR Fale com Calvin
    accept 8
]==])

register([==[
#format 1
#id forever.h.6-12-tirisfal-glades
#name 6-12 Tirisfal Glades
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 11
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Horde
#levels 6-12
#zone 1420
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup Speedrun 1-22
#subgroup-ptBR Rota rápida 1-22
#recommend Scourge
#next forever.h.12-14-silverpine-forest

step
    goto 1420 @1184.71,2205.63
    note-enUS Talk to Simmer
    note-ptBR Fale com Simmer
    accept 365
step
    path closest 1420 @496.96,2256.54 @1191.04,2198.1 @1133.65,2177.31 @1063.61,2201.71 @945.22,2127 @824.57,2092.36 @740.97,2112.24 @660.09,2196.29 @571.07,2251.42 @496.96,2256.54
    note-enUS Talk to Gordo
    note-ptBR Fale com Gordo
    note-enUS He's an abomination that patrols along the road to Brill
    note-ptBR Ele é uma abominação que patrulha a estrada para Brill
    accept 5481
step
    only Priest
    goto 1420 @656.92,2164.66
    note-enUS Talk to Bowen
    note-ptBR Fale com Bowen
    train 3908
    note-enUS Train [Tailoring]. Save up your [Linen Cloth]. This will allow you to create a wand later
    note-ptBR Treine [Tailoring]. Guarde seu [Linen Cloth]. Isso vai permitir criar uma varinha depois
step
    goto 1420 @391.4,2289.2
    note-enUS Die and respawn at the Spirit Healer or run to Brill
    note-ptBR Morra e renasça no Spirit Healer ou corra até Brill
    note-enUS Talk to Deathguard Bartholomew
    note-ptBR Fale com Deathguard Bartholomew
    accept 86784
step
    goto 1420 @403.42,2287.57
    note-enUS Loot Dry Branches on the ground underneath trees near Brill
    note-ptBR Saqueie Dry Branches no chão embaixo das árvores perto de Brill
    objective 86784/1 |opt
    note-enUS Talk to Dillinger
    note-ptBR Fale com Dillinger
    accept 404
step
    path closest 1420 @603.6,2268.3 @539.7,2220.4 @305.6,2180.1 @375.6,2246.4 @442.8,2259.4
    note-enUS Loot Dry Branches on the ground underneath trees near Brill
    note-ptBR Saqueie Dry Branches no chão embaixo das árvores perto de Brill
    objective 86784/1
step
    goto 1420 @445.5,2165.9
    note-enUS Talk to Eleanor Shackleton
    note-ptBR Fale com Eleanor Shackleton
    turnin 86784
    turnin 96656
    accept 96607
step
    goto 1411 @-4715.2,140.1
    note-enUS Type /sit at the campfire and wait for one minute until you get the "Camp Benefits" buff
    note-ptBR Digite /sit na fogueira e espere um minuto até receber o bônus "Camp Benefits"
    objective 96607/1
    objective 96607/2
step
    goto 1420 @445.4,2166
    note-enUS Talk to Eleanor Shackleton
    note-ptBR Fale com Eleanor Shackleton
    turnin 96607
    accept 96658
step
    goto 1420 @346.94,2258.95
    note-enUS Talk to Johaan
    note-ptBR Fale com Johaan
    accept 367
step
    goto 1420 @296.6,2278.2
    note-enUS Talk to Executor Zygand
    note-ptBR Fale com Executor Zygand
    turnin 383
    accept 427
    accept 99141
    accept 99134
step
    only Rogue
    goto 1420 @270.12,2253.23
    use 286176 |opt
    note-enUS Use [Executor's Motivator] on any Deathguard in and around Brill
    note-ptBR Use [Executor's Motivator] em qualquer Deathguard dentro e ao redor de Brill
    objective 99134/1 |opt
    note-enUS Talk to Mrs. Winters. Buy [Weighted Throwing Axe] from her
    note-ptBR Fale com Mrs. Winters. Compre [Weighted Throwing Axe] dela
    collect 3131 200 |quest 786 |q 786/1
step
    only Rogue
    goto 1420 @316.66,2227.32
    note-enUS Talk to Oliver
    note-ptBR Fale com Oliver
    vendor
    note-enUS Vendor trash. Sell your weapon if it gives you enough money for a [Stiletto] (3s 81c). You'll come back later if you don't have enough yet
    note-ptBR Venda o lixo. Venda sua arma se der dinheiro suficiente para comprar [Stiletto] (3s 81c). Você volta depois se ainda não tiver o suficiente
step
    only Rogue
    goto 1420 @316.66,2227.32
    note-enUS Talk to Oliver. Buy a [Stiletto] from him
    note-ptBR Fale com Oliver. Compre [Stiletto] dele
    collect 2494 1 |quest 404 |q 404/1
step
    only Warrior
    goto 1420 @316.66,2227.32
    note-enUS Equip the [Weighted Throwing Axe] |only Rogue
    note-ptBR Equipe o [Weighted Throwing Axe] |only Rogue
    use 3131 |only Rogue |opt
    note-enUS Equip the [Stiletto] |only Rogue
    note-ptBR Equipe o [Stiletto] |only Rogue
    use 2494 |only Rogue |opt
    note-enUS Talk to Oliver
    note-ptBR Fale com Oliver
    vendor
    note-enUS Vendor trash. Sell your weapon if it gives you enough money for a [Gladius] (5s 10c). You'll come back later if you don't have enough yet
    note-ptBR Venda o lixo. Venda sua arma se der dinheiro suficiente para comprar [Gladius] (5s 10c). Você volta depois se ainda não tiver o suficiente
step
    only Warrior
    goto 1420 @316.66,2227.32
    note-enUS Talk to Oliver. Buy a [Gladius] from him
    note-ptBR Fale com Oliver. Compre [Gladius] dele
    collect 2488 1 |quest 404 |q 404/1
step
    only Paladin
    goto 1420 @311.6,2250.8
    note-enUS Equip the [Gladius] |only Warrior
    note-ptBR Equipe o [Gladius] |only Warrior
    use 2488 |only Warrior |opt
    note-enUS Talk to Shari Stilwell
    note-ptBR Fale com Shari Stilwell
    objective 91209/1
    turnin 91209
step
    only Paladin
    goto 1420 @311.6,2250.8
    note-enUS Talk to Shari Stilwell
    note-ptBR Fale com Shari Stilwell
    train 679
    note-enUS Train [Holy Strike]
    note-ptBR Treine [Holy Strike]
step
    only Paladin
    goto 1420 @316.66,2227.32
    note-enUS Talk to Oliver
    note-ptBR Fale com Oliver
    vendor
    note-enUS Vendor trash. Sell your weapon if it gives you enough money for a [Wooden Mallet] (6s 66c). You'll come back later if you don't have enough yet
    note-ptBR Venda o lixo. Venda sua arma se der dinheiro suficiente para comprar [Wooden Mallet] (6s 66c). Você volta depois se ainda não tiver o suficiente
step
    only Paladin
    goto 1420 @316.66,2227.32
    note-enUS Talk to Oliver. Buy a [Wooden Mallet] from him
    note-ptBR Fale com Oliver. Compre [Wooden Mallet] dele
    collect 2493 1 |quest 404 |q 404/1
step
    goto 1420 @244.81,2269.19
    note-enUS Equip the [Wooden Mallet] |only Paladin
    note-ptBR Equipe o [Wooden Mallet] |only Paladin
    use 2493 |only Paladin |opt
    note-enUS Talk to Innkeeper Renee
    note-ptBR Fale com Innkeeper Renee
    turnin 8
    home
    note-enUS Set your Hearthstone to Brill
    note-ptBR Defina sua pedra de regresso em Brill
step
    ifonquest 8
    goto 1420 @244.81,2269.19
    note-enUS Talk to Innkeeper Renee
    note-ptBR Fale com Innkeeper Renee
    turnin 8
step
    goto 1420 @243.2,2288.1
    note-enUS Talk to William
    note-ptBR Fale com William
    train 2550
    note-enUS Train Cooking
    note-ptBR Treine Cooking
    turnin 96658
step
    goto 1420 @236.68,2249.01
    note-enUS Talk to Gretchen
    note-ptBR Fale com Gretchen
    note-enUS Gretchen is on the second floor of the inn
    note-ptBR Gretchen está no segundo andar da estalagem
    accept 375
step
    only Priest
    goto 1420 @251.14,2265.28
    note-enUS Talk to Beryl on the second floor
    note-ptBR Fale com Beryl no segundo andar
    turnin 5651
    accept 5650
    train 591
    note-enUS Train [Smite]
    note-ptBR Treine [Smite]
    train 17
    note-enUS Train [Power Word: Shield]
    note-ptBR Treine [Power Word: Shield]
    train 2052
    note-enUS Train [Lesser Heal Rank 2]
    note-ptBR Treine [Lesser Heal Rank 2]
step
    only Mage
    goto 1420 @233.06,2256.84
    note-enUS Talk to Cain on the second floor
    note-ptBR Fale com Cain no segundo andar
    train 143
    note-enUS Train [Fireball]
    note-ptBR Treine [Fireball]
    train 2136
    note-enUS Train [Fire Blast]
    note-ptBR Treine [Fire Blast]
step
    only Warrior
    goto 1420 @238.49,2255.03
    note-enUS Talk to Austil
    note-ptBR Fale com Austil
    train 3127
    note-enUS Train [Parry]
    note-ptBR Treine [Parry]
step
    only Rogue
    goto 1420 @243.01,2271
    note-enUS Talk to Marion on the second floor
    note-ptBR Fale com Marion no segundo andar
    train 1757
    note-enUS Train [Sinister Strike]
    note-ptBR Treine [Sinister Strike]
step
    only Warlock
    goto 1420 @251.59,2252.62
    note-enUS Talk to Gina Lang on the second floor
    note-ptBR Fale com Gina Lang no segundo andar
    note-enUS Buy the [Grimoire of Blood Pact] from her
    note-ptBR Compre o [Grimoire of Blood Pact] dela
    collect 16321 1 |quest 404 |q 404/1
    vendor
    note-enUS Vendor Trash
    note-ptBR Venda o lixo
    train 6307
step
    only Warlock
    goto 1420 @250.24,2259.25
    note-enUS Talk to Rupert
    note-ptBR Fale com Rupert
    train 695
    note-enUS Train [Shadow Bolt]
    note-ptBR Treine [Shadow Bolt]
    train 1454
    note-enUS Train [Life Tap]
    note-ptBR Treine [Life Tap]
step
    only Warlock
    goto 1420 @250.24,2259.25
    note-enUS Talk to Rupert
    note-ptBR Fale com Rupert
    train 695
    note-enUS Train [Shadow Bolt]
    note-ptBR Treine [Shadow Bolt]
step
    only Priest Warlock
    goto 1420 @242.55,2284.25
    note-enUS Talk to Vance
    note-ptBR Fale com Vance
    train 7411
    note-enUS Train [Enchanting]
    note-ptBR Treine [Enchanting]
    note-enUS This together with [Tailoring] will allow you to create a wand later
    note-ptBR Isto, junto com [Tailoring], permitirá criar uma varinha mais tarde
step
    goto 1420 @244.81,2269.19
    note-enUS Talk to Innkeeper Renee
    note-ptBR Fale com Innkeeper Renee
    note-enUS Buy [Ice Cold Milk] from her |only Mage Priest Paladin
    note-ptBR Compre [Ice Cold Milk] dela |only Mage Priest Paladin
    note-enUS Buy [Red-speckled Mushrooms] from her |only Warrior Rogue
    note-ptBR Compre [Red-speckled Mushrooms] dela |only Warrior Rogue
    note-enUS Buy [Ice Cold Milk] and [Red-speckled Mushrooms] from her |only Warlock
    note-ptBR Compre [Ice Cold Milk] e [Red-speckled Mushrooms] dela |only Warlock
    collect 1179 15 |quest 367 |q 367/1 |only Mage Priest Paladin
    collect 4605 10 |quest 367 |q 367/1 |only Rogue Warrior
    collect 1179 10 |quest 367 |q 367/1 |only Warlock
    collect 4605 5 |quest 367 |q 367/1 |only Warlock
step
    goto 1420 @84.9,2023.5
    note-enUS Talk to Deathguard Kristof
    note-ptBR Fale com Deathguard Kristof
    note-enUS Select "I need a report for Executor Zygand"
    note-ptBR Selecione "I need a report for Executor Zygand"
    objective 99141/2
step
    goto 1420 @77.2,2026.7
    note-enUS Talk to Shelene Rhobart
    note-ptBR Fale com Shelene Rhobart
    accept 97558
step
    goto 1420 @346.94,2258.95
    note-enUS Talk to Johaan
    note-ptBR Fale com Johaan
    accept 367
step
    only Priest
    goto 1420 @359.14,2436.99
    note-enUS Cast [Lesser Heal] and [Power Word: Fortitude] on Deathguard Kel
    note-ptBR Lance [Lesser Heal] e [Power Word: Fortitude] em Deathguard Kel
    note-enUS You need Lesser Heal Rank 2 for this quest
    note-ptBR Você precisa de Lesser Heal Grau 2 para esta missão
    objective 5650/1
step
    path closest 1420 @655.12,2120.98 @550.28,2315.28 @622.58,2322.51 @678.16,2319.8 @716.12,2282.15 @682.23,2218.58 @670.48,2128.81 @595.47,2134.53 @613.54,2082.72 @655.12,2120.98
    note-enUS Loot the Gloom Weed on the ground
    note-ptBR Saqueie a Gloom Weed no chão
    objective 5481/1 |opt
    note-enUS Kill Darkhounds. Loot them for their Blood and Hides
    note-ptBR Mate Darkhounds. Saqueie-os para obter sangue e couros
    objective 367/1 |opt
    objective 97558/2 |opt
    note-enUS Kill Rotting Dead and Ravaged Corpses. Loot them for their Claws
    note-ptBR Mate Rotting Dead e Ravaged Corpses. Saqueie-os para obter as garras
    objective 404/1
step
    path closest 1420 @496.96,2256.54 @571.07,2251.42 @660.09,2196.29 @740.97,2112.24 @824.57,2092.36 @945.22,2127 @1063.61,2201.71 @1133.65,2177.31 @1191.04,2198.1 @496.96,2256.54
    note-enUS Talk to Gordo
    note-ptBR Fale com Gordo
    note-enUS He's an abomination that patrols along the road to Brill
    note-ptBR Ele é uma abominação que patrulha a estrada para Brill
    note-enUS Select "I need a report for Executor Zygand
    note-ptBR Selecione "I need a report for Executor Zygand
    objective 99141/3
step
    path closest 1420 @1246.17,2311.97 @1025.65,2110.43 @1246.17,2311.97 @1025.65,2110.43
    note-enUS Finish looting the Gloom Weed on the ground
    note-ptBR Termine de saquear o Gloom Weed no chão
    objective 5481/1
step
    path closest 1420 @1378.12,2328.54 @1352.36,2265.88 @1377.66,2328.54 @1402.06,2359.27 @1448.16,2336.67 @1438.21,2303.84 @1471.2,2283.65 @1378.12,2328.54
    note-enUS Loot the Pumpkins found in the field
    note-ptBR Saqueie as abóboras no campo
    objective 365/1
step
    goto 1420 @1587.7,2439.7
    note-enUS Kill Scarlet Warriors
    note-ptBR Mate Scarlet Warriors
    note-enUS Be careful as they have 50% increased parry for 8 seconds after they do their defense stance animation |only Rogue Warrior
    note-ptBR Cuidado, eles têm 50% a mais de aparo por 8 segundos após a animação de postura defensiva |only Rogue Warrior
    objective 427/1 |opt
    note-enUS Talk to Bareth Dawnstone at the top of the tower
    note-ptBR Fale com Bareth Dawnstone no topo da torre
    note-enUS This starts an escort quest
    note-ptBR Isto inicia uma missão de escolta
    note-enUS Be careful!. At the top of the tower you can easily agro 3 Scarlet Warriors at the same time
    note-ptBR Cuidado! No topo da torre você pode facilmente puxar 3 Scarlet Warriors ao mesmo tempo
    accept 99144 |noauto
step
    goto 1420 @1268,2368.2
    note-enUS Escort Bareth Dawnstone out of Solliden Farmstead
    note-ptBR Escolte Bareth Dawnstone para fora de Solliden Farmstead
    objective 99144/1
step
    path closest 1420 @1597.27,2290.28 @1509.16,2351.13 @1512.77,2299.02 @1597.27,2290.28 @1676.8,2316.79 @1681.78,2354.14 @1649.69,2405.66 @1632.07,2436.69 @1580.56,2487 @1509.16,2473.14 @1492.44,2395.11 @1509.16,2351.13
    note-enUS Kill Scarlet Warriors
    note-ptBR Mate Scarlet Warriors
    note-enUS Be careful as they have 50% increased parry for 8 seconds after they do their defense stance animation |only Rogue Warrior
    note-ptBR Cuidado, eles têm 50% a mais de aparo por 8 segundos após a animação de postura defensiva |only Rogue Warrior
    objective 427/1
step
    path closest 1420 @1238.6,2424.9 @1204.8,2543 @1122.6,2396.8
    note-enUS Kill Darkhounds. Loot them for their Blood and Hides
    note-ptBR Mate Darkhounds. Saqueie-os para obter sangue e couros
    objective 367/1
    objective 97558/2
step
    path closest 1420 @425.56,2362.58 @399.35,2337.27 @425.56,2362.58 @355.52,2429.76
    note-enUS Die and respawn at the Spirit Healer
    note-ptBR Morra e renasça no Spirit Healer
    note-enUS Talk to Holland
    note-ptBR Fale com Holland
    note-enUS He patrols around the graveyard
    note-ptBR Ele patrulha ao redor do cemitério
    turnin 5481
    accept 5482
step
    goto 1420 @403.3,2287.7
    use 286176 |opt
    note-enUS Use [Executor's Motivator] on any Deathguard in and around Brill
    note-ptBR Use [Executor's Motivator] em qualquer Deathguard dentro e ao redor de Brill
    objective 99134/1 |opt
    note-enUS Talk to Deathguard Dillinger
    note-ptBR Fale com Deathguard Dillinger
    note-enUS Select "I need a report for Executor Zygand
    note-ptBR Selecione "I need a report for Executor Zygand
    turnin 404
    accept 426
    objective 99141/1
step
    goto 1420 @346.94,2258.95
    note-enUS Talk toJohaan
    note-ptBR Fale com Johaan
    turnin 367
    turnin 365
    accept 368
    accept 407
step
    goto 1420 @347.6,2265.1
    note-enUS Talk to Carolai Anise
    note-ptBR Fale com Carolai Anise
    accept 95314
step
    only Mage
    note-enUS Loot the Book in the shelf
    note-ptBR Saqueie o livro na estante
    collect 208185 1
step
    path closest 1420 @290.4,2272.9 @257.2,2239.5 @313.4,2259.4
    use 286176
    note-enUS Use [Executor's Motivator] on any Deathguard in and around Brill
    note-ptBR Use [Executor's Motivator] em qualquer Deathguard dentro e ao redor de Brill
    objective 99134/1
step
    goto 1420 @295.87,2277.93
    note-enUS Talk to Zygand
    note-ptBR Fale com Zygand
    turnin 427
    accept 370
    turnin 99141
    turnin 99134
step
    path seq 1420 @280.06,2270.7 @288.64,2285.46
    goto 1420 @265.15,2305.94
    note-enUS Destroy the [Executor's Motivator] as it's no longed needed for anything
    note-ptBR Destrua o [Executor's Motivator], pois não é mais necessário para nada
    note-enUS Talk to Burgess, Wanted Poster and Sevren inside the building
    note-ptBR Fale com Burgess, confira o Wanted Poster e fale com Sevren dentro do prédio
    accept 374
    accept 398
    accept 358
step
    only Paladin
    goto 1420 @311.6,2251
    note-enUS Talk to Shari Stilwell
    note-ptBR Fale com Shari Stilwell
    turnin 99144
    train 853
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    goto 1420 @311.9,2250.7
    note-enUS Talk to Shari Stilwell
    note-ptBR Fale com Shari Stilwell
    turnin 99144
step
    only Priest
    goto 1420 @251.14,2265.28
    note-enUS Talk to Beryl on the second floor
    note-ptBR Fale com Beryl no segundo andar
    turnin 5650
    train 591
    note-enUS Train [Smite]
    note-ptBR Treine [Smite]
    train 17
    note-enUS Train [Power Word: Shield]
    note-ptBR Treine [Power Word: Shield]
step
    goto 1420 @236.68,2249.01
    note-enUS Talk to Gretchen
    note-ptBR Fale com Gretchen
    note-enUS Gretchen is on the second floor of the inn
    note-ptBR Gretchen está no segundo andar da estalagem
    accept 375
step
    only Priest
    goto 1420 @251.14,2265.28
    note-enUS Talk to Beryl on the second floor
    note-ptBR Fale com Beryl no segundo andar
    train 139
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Mage
    goto 1420 @233.06,2256.84
    note-enUS Talk to Cain on the second floor
    note-ptBR Fale com Cain no segundo andar
    train 205
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warrior
    goto 1420 @238.49,2255.03
    note-enUS Talk to Austil
    note-ptBR Fale com Austil
    train 284
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Rogue
    goto 1420 @243.01,2271
    note-enUS Talk to Marion on the second floor
    note-ptBR Fale com Marion no segundo andar
    train 6760
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warlock
    goto 1420 @250.24,2259.25
    note-enUS Talk to Rupert
    note-ptBR Fale com Rupert
    train 980
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    goto 1420 @243.2,2288.1
    note-enUS Talk to William
    note-ptBR Fale com William
    train 2550
    note-enUS Train Cooking
    note-ptBR Treine Cooking
    turnin 96658
step
    only Rogue Warrior
    goto 1420 @240.29,2246.3
    note-enUS Talk to Neela
    note-ptBR Fale com Neela
    note-enUS Try to make them during points at which you're waiting for things, such as Zeppelins
    note-ptBR Tente fazê-los enquanto estiver esperando algo, como os Zepelins
    train 3273
    note-enUS Train [First Aid]
    note-ptBR Treine [First Aid]
step
    only Rogue
    goto 1420 @316.66,2227.32
    note-enUS Talk to Oliver
    note-ptBR Fale com Oliver
    vendor
    note-enUS Vendor trash. Sell your weapon if it gives you enough money for a [Stiletto] (3s 81c). You'll come back later if you don't have enough yet
    note-ptBR Venda o lixo. Venda sua arma se der dinheiro suficiente para comprar [Stiletto] (3s 81c). Você volta depois se ainda não tiver o suficiente
step
    only Rogue
    goto 1420 @316.66,2227.32
    note-enUS Talk to Oliver. Buy a [Stiletto] from him
    note-ptBR Fale com Oliver. Compre [Stiletto] dele
    collect 2494 1 |quest 367 |q 367/1
step
    only Warrior
    goto 1420 @316.66,2227.32
    note-enUS Equip the [Stiletto] |only Rogue
    note-ptBR Equipe o [Stiletto] |only Rogue
    use 2494 |only Rogue |opt
    note-enUS Talk to Oliver
    note-ptBR Fale com Oliver
    vendor
    note-enUS Vendor trash. Sell your weapon if it gives you enough money for a [Gladius] (5s 10c). You'll come back later if you don't have enough yet
    note-ptBR Venda o lixo. Venda sua arma se der dinheiro suficiente para comprar [Gladius] (5s 10c). Você volta depois se ainda não tiver o suficiente
step
    only Warrior
    goto 1420 @316.66,2227.32
    note-enUS Talk to Oliver. Buy a [Gladius] from him
    note-ptBR Fale com Oliver. Compre [Gladius] dele
    collect 2488 1 |quest 367 |q 367/1
step
    only Paladin
    goto 1420 @311.6,2250.8
    note-enUS Equip the [Gladius] |only Warrior
    note-ptBR Equipe o [Gladius] |only Warrior
    use 2488 |only Warrior |opt
    note-enUS Talk to Shari Stilwell
    note-ptBR Fale com Shari Stilwell
    train 679
    note-enUS Train [Holy Strike]
    note-ptBR Treine [Holy Strike]
step
    only Paladin
    goto 1420 @316.66,2227.32
    note-enUS Talk to Oliver
    note-ptBR Fale com Oliver
    vendor
    note-enUS Vendor trash. Sell your weapon if it gives you enough money for a [Wooden Mallet] (6s 66c). You'll come back later if you don't have enough yet
    note-ptBR Venda o lixo. Venda sua arma se der dinheiro suficiente para comprar [Wooden Mallet] (6s 66c). Você volta depois se ainda não tiver o suficiente
step
    only Paladin
    goto 1420 @316.66,2227.32
    note-enUS Talk to Oliver. Buy a [Wooden Mallet] from him
    note-ptBR Fale com Oliver. Compre [Wooden Mallet] dele
    collect 2493 1 |quest 367 |q 367/1
step
    note-enUS Equip the [Wooden Mallet] |only Paladin
    note-ptBR Equipe o [Wooden Mallet] |only Paladin
    use 2493 |only Paladin |opt
    note-enUS Talk to Mrs. Winters
    note-ptBR Fale com Mrs. Winters
    note-enUS Buy a [Small Brown Pouch] from her
    note-ptBR Compre uma [Small Brown Pouch] dela
    collect 4496 1 |quest 5482 |q 5482/1
step
    only Rogue Warrior
    path closest 1420 @482.5,1951.07 @403.42,2085.73 @413.36,1979.99 @482.5,1951.07 @560.22,1901.06 @645.63,1961.92 @750.46,1993.55 @869.76,2003.79 @950.64,2039.04 @1068.13,1975.47
    note-enUS Kill Duskbats. Loot them for their Pelts and Wing Membranes
    note-ptBR Mate Duskbats. Saqueie-os para obter peles e Wing Membranes
    objective 375/1
    objective 97558/1
step
    only Rogue Warrior
    path closest 1420 @482.5,1951.07 @403.42,2085.73 @413.36,1979.99 @482.5,1951.07 @560.22,1901.06 @645.63,1961.92 @750.46,1993.55 @869.76,2003.79 @950.64,2039.04 @1068.13,1975.47
    level 7
    note-enUS Grind to 3260+/4500
    note-ptBR Mate monstros até 3260+/4500
step
    only Rogue Warrior
    ifnotturnedin 375
    goto 1420 @275.54,2260.46
    note-enUS Talk to Abigail
    note-ptBR Fale com Abigail
    note-enUS Buy a [Coarse Thread] from her
    note-ptBR Compre um [Coarse Thread] dela
    objective 375/2
step
    only Rogue Warrior
    ifcomplete 375
    goto 1420 @236.68,2249.01
    note-enUS Talk to Gretchen
    note-ptBR Fale com Gretchen
    turnin 375
step
    only Warrior
    goto 1420 @238.49,2255.03
    note-enUS Talk to Austil
    note-ptBR Fale com Austil
    train 284
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Rogue
    goto 1420 @243.01,2271
    note-enUS Talk to Marion on the second floor
    note-ptBR Fale com Marion no segundo andar
    train 6760
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Rogue
    goto 1420 @316.66,2227.32
    note-enUS Talk to Oliver
    note-ptBR Fale com Oliver
    vendor
    note-enUS Vendor trash. Sell your weapon if it gives you enough money for a [Stiletto] (3s 81c). You'll come back later if you don't have enough yet
    note-ptBR Venda o lixo. Venda sua arma se der dinheiro suficiente para comprar [Stiletto] (3s 81c). Você volta depois se ainda não tiver o suficiente
step
    only Rogue
    goto 1420 @316.66,2227.32
    note-enUS Talk to Oliver. Buy a [Stiletto] from him
    note-ptBR Fale com Oliver. Compre [Stiletto] dele
    collect 2494 1 |quest 398 |q 398/1
step
    only Warrior
    goto 1420 @316.66,2227.32
    note-enUS Equip the [Stiletto] |only Rogue
    note-ptBR Equipe o [Stiletto] |only Rogue
    use 2494 |only Rogue |opt
    note-enUS Talk to Oliver
    note-ptBR Fale com Oliver
    vendor
    note-enUS Vendor trash. Sell your weapon if it gives you enough money for a [Gladius] (5s 10c). You'll come back later if you don't have enough yet
    note-ptBR Venda o lixo. Venda sua arma se der dinheiro suficiente para comprar [Gladius] (5s 10c). Você volta depois se ainda não tiver o suficiente
step
    only Warrior
    goto 1420 @316.66,2227.32
    note-enUS Talk to Oliver. Buy a [Gladius] from him
    note-ptBR Fale com Oliver. Compre [Gladius] dele
    collect 2488 1 |quest 398 |q 398/1
step
    path closest 1420 @537.18,2555.98 @488.83,2642.44 @561.13,2596.65 @597.73,2514.11 @537.18,2555.98 @483.4,2514.41
    note-enUS Equip the [Gladius] |only Warrior
    note-ptBR Equipe o [Gladius] |only Warrior
    use 2488 |only Warrior |opt
    note-enUS Loot the Doom Weed on the ground
    note-ptBR Saqueie a Doom Weed no chão
    note-enUS They are found near trees in the Gnoll area
    note-ptBR Eles ficam perto das árvores na área dos Gnolls
    objective 5482/1 |opt
    note-enUS Kill Rot Hide Graverobbers. Loot them for their Ichor
    note-ptBR Mate Rot Hide Graverobbers. Saqueie-os para obter icor
    objective 358/1
    objective 358/3
step
    ifonquest 5482
    path closest 1420 @435.96,2754.51 @426.92,2802.1 @437.31,2754.2 @467.14,2699.08 @500.57,2669.85 @543.95,2670.46 @536.72,2627.68 @562.48,2568.63 @534.92,2587.01 @476.62,2572.55 @399.35,2544.23 @374.95,2612.01 @396.19,2676.18 @435.96,2754.51
    note-enUS Kill Rot Hide Mongrels. Loot them for their Ichor
    note-ptBR Mate Rot Hide Mongrels. Saqueie-os para obter icor
    objective 358/2 |opt
    objective 358/3 |opt
    note-enUS Loot the Doom Weed on the ground
    note-ptBR Saqueie a Doom Weed no chão
    note-enUS They are found near trees in the Gnoll area
    note-ptBR Eles ficam perto das árvores na área dos Gnolls
    objective 5482/1
step
    goto 1420 @382.63,2910.55
    note-enUS Kill Rot Hide Mongrels. Loot them for their Ichor
    note-ptBR Mate Rot Hide Mongrels. Saqueie-os para obter icor
    objective 358/2 |opt
    objective 358/3 |opt
    note-enUS Kill Maggot Eye. Loot him for his Paw
    note-ptBR Mate Maggot Eye. Saqueie-o para obter a pata dele
    objective 398/1
step
    path closest 1420 @332.48,2862.35 @380.38,2768.97 @332.48,2862.35 @401.16,2895.19 @318.47,2696.36
    note-enUS Kill Rot Hide Mongrels. Loot them for their Ichor
    note-ptBR Mate Rot Hide Mongrels. Saqueie-os para obter icor
    objective 358/2
    objective 358/3
step
    path closest 1420 @332.48,2862.35 @380.38,2768.97 @332.48,2862.35 @401.16,2895.19 @318.47,2696.36
    note-enUS Kill Rot Hide Gnolls. Loot them for their Ichor
    note-ptBR Mate Rot Hide Gnolls. Saqueie-os para obter icor
    objective 358/3
step
    path closest 1420 @342.87,2998.22 @350.1,2962.37 @342.87,2998.22 @293.16,2974.12 @254.75,2951.82 @188.33,2950.02 @65.42,2927.12 @-15.92,2964.78 @-49.36,3040.39
    note-enUS Kill Vile Fin Murlocs. Loot them for their Scales and Murloc Skin
    note-ptBR Mate Vile Fin Murlocs. Saqueie-os para obter escamas e Murloc Skin
    note-enUS Vile Fin Puddlejumpers do NOT drop Vile Fin Murloc Skin
    note-ptBR Os Vile Fin Puddlejumpers NÃO derrubam Vile Fin Murloc Skin
    objective 368/1
    objective 97558/3
step
    path closest 1420 @138.3,2829.6 @121.2,2727.4 @127.5,2601.8 @211.4,2545.5 @146.3,2408 @94.6,2312.1 @39.9,2248.1 @-137.1,2206 @-190.8,2387.7
    note-enUS Kill Duskbats. Loot them for their Pelts and Wing Membranes
    note-ptBR Mate Duskbats. Saqueie-os para obter peles e Wing Membranes
    objective 375/1
    objective 97558/1
step
    goto 1420 @244.36,2262.26
    hearth |opt
    note-enUS Hearth to Brill
    note-ptBR Use a pedra de regresso para Brill
    note-enUS Travel back to Brill
    note-ptBR Volte para Brill
    note-enUS Talk to Coleman
    note-ptBR Fale com Coleman
    accept 354
    accept 362
step
    ifnotturnedin 375
    goto 1420 @275.54,2260.46
    note-enUS Talk to Abigail
    note-ptBR Fale com Abigail
    note-enUS Buy a [Coarse Thread] from her
    note-ptBR Compre um [Coarse Thread] dela
    objective 375/2
step
    note-enUS Talk to Zygand
    note-ptBR Fale com Zygand
    turnin 398
step
    goto 1420 @265.15,2305.94
    note-enUS Talk to Sevren
    note-ptBR Fale com Sevren
    turnin 358
    accept 405 |only Mage Warlock
    accept 359
step
    ifcomplete 375
    goto 1420 @236.68,2249.01
    note-enUS Talk to Gretchen
    note-ptBR Fale com Gretchen
    turnin 375
step
    only Priest
    goto 1420 @251.14,2265.28
    note-enUS Talk to Beryl on the second floor
    note-ptBR Fale com Beryl no segundo andar
    train 139
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Mage
    goto 1420 @233.06,2256.84
    note-enUS Talk to Cain on the second floor
    note-ptBR Fale com Cain no segundo andar
    train 205
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warrior
    goto 1420 @238.49,2255.03
    note-enUS Talk to Austil
    note-ptBR Fale com Austil
    train 284
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Rogue
    goto 1420 @243.01,2271
    note-enUS Talk to Marion on the second floor
    note-ptBR Fale com Marion no segundo andar
    train 6760
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warlock
    goto 1420 @250.24,2259.25
    note-enUS Talk to Rupert
    note-ptBR Fale com Rupert
    train 980
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Rogue Warrior
    goto 1420 @240.29,2246.3
    note-enUS Talk to Neela
    note-ptBR Fale com Neela
    note-enUS Try to make them during points at which you're waiting for things, such as Zeppelins
    note-ptBR Tente fazê-los enquanto estiver esperando algo, como os Zepelins
    train 3273
    note-enUS Train [First Aid]
    note-ptBR Treine [First Aid]
step
    goto 1420 @244.81,2269.19
    note-enUS Talk to Innkeeper Renee
    note-ptBR Fale com Innkeeper Renee
    note-enUS Buy [Ice Cold Milk] from her |only Mage Priest Paladin
    note-ptBR Compre [Ice Cold Milk] dela |only Mage Priest Paladin
    note-enUS Buy [Red-speckled Mushrooms] from her |only Warrior Rogue
    note-ptBR Compre [Red-speckled Mushrooms] dela |only Warrior Rogue
    note-enUS Buy [Ice Cold Milk] and [Red-speckled Mushrooms] from her |only Warlock
    note-ptBR Compre [Ice Cold Milk] e [Red-speckled Mushrooms] dela |only Warlock
    collect 1179 20 |quest 426 |q 426/1 |only Mage Priest Paladin
    collect 4605 20 |quest 426 |q 426/1 |only Rogue Warrior
    collect 1179 10 |quest 426 |q 426/1 |only Warlock
    collect 4605 10 |quest 426 |q 426/1 |only Warlock
step
    only Paladin
    goto 1420 @311.6,2251
    note-enUS Talk to Shari Stilwell
    note-ptBR Fale com Shari Stilwell
    train 853
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Rogue
    goto 1420 @316.66,2227.32
    note-enUS Talk to Oliver
    note-ptBR Fale com Oliver
    vendor
    note-enUS Vendor trash. Sell your weapon if it gives you enough money for a [Stiletto] (3s 81c). You'll come back later if you don't have enough yet
    note-ptBR Venda o lixo. Venda sua arma se der dinheiro suficiente para comprar [Stiletto] (3s 81c). Você volta depois se ainda não tiver o suficiente
step
    only Rogue
    goto 1420 @316.66,2227.32
    note-enUS Talk to Oliver. Buy a [Stiletto] from him
    note-ptBR Fale com Oliver. Compre [Stiletto] dele
    collect 2494 1 |quest 354 |q 354/1
step
    only Warrior
    goto 1420 @316.66,2227.32
    note-enUS Equip the [Stiletto] |only Rogue
    note-ptBR Equipe o [Stiletto] |only Rogue
    use 2494 |only Rogue |opt
    note-enUS Talk to Oliver
    note-ptBR Fale com Oliver
    vendor
    note-enUS Vendor trash. Sell your weapon if it gives you enough money for a [Gladius] (5s 10c). You'll come back later if you don't have enough yet
    note-ptBR Venda o lixo. Venda sua arma se der dinheiro suficiente para comprar [Gladius] (5s 10c). Você volta depois se ainda não tiver o suficiente
step
    only Warrior
    goto 1420 @316.66,2227.32
    note-enUS Talk to Oliver. Buy a [Gladius] from him
    note-ptBR Fale com Oliver. Compre [Gladius] dele
    collect 2488 1 |quest 354 |q 354/1
step
    only Paladin
    goto 1420 @311.6,2250.8
    note-enUS Equip the [Gladius] |only Warrior
    note-ptBR Equipe o [Gladius] |only Warrior
    use 2488 |only Warrior |opt
    note-enUS Talk to Shari Stilwell
    note-ptBR Fale com Shari Stilwell
    train 679
    note-enUS Train [Holy Strike]
    note-ptBR Treine [Holy Strike]
step
    only Paladin
    goto 1420 @316.66,2227.32
    note-enUS Talk to Oliver
    note-ptBR Fale com Oliver
    vendor
    note-enUS Vendor trash. Sell your weapon if it gives you enough money for a [Wooden Mallet] (6s 66c). You'll come back later if you don't have enough yet
    note-ptBR Venda o lixo. Venda sua arma se der dinheiro suficiente para comprar [Wooden Mallet] (6s 66c). Você volta depois se ainda não tiver o suficiente
step
    only Paladin
    goto 1420 @316.66,2227.32
    note-enUS Talk to Oliver. Buy a [Wooden Mallet] from him
    note-ptBR Fale com Oliver. Compre [Wooden Mallet] dele
    collect 2493 1 |quest 354 |q 354/1
step
    goto 1420 @76,2026.9
    note-enUS Equip the [Wooden Mallet] |only Paladin
    note-ptBR Equipe o [Wooden Mallet] |only Paladin
    use 2493 |only Paladin |opt
    note-enUS Talk to Shelene Rhobart
    note-ptBR Fale com Shelene Rhobart
    turnin 97558
step
    goto 1420 @74,2022.47
    note-enUS Talk to Linnea
    note-ptBR Fale com Linnea
    turnin 359
    accept 360
    accept 356
step
    goto 1420 @346.94,2258.95
    note-enUS Talk to Johaan
    note-ptBR Fale com Johaan
    turnin 368
    accept 369
step
    path closest 1420 @425.56,2362.58 @399.35,2337.27 @425.56,2362.58 @355.52,2429.76
    note-enUS Talk to Holland
    note-ptBR Fale com Holland
    note-enUS He patrols around the graveyard
    note-ptBR Ele patrulha ao redor do cemitério
    turnin 5482
    accept 99142
step
    ifonquest 362
    path seq 1420 @882.41,2511.1
    goto 1420 @892.8,2520.74
    note-enUS Travel North/West toward Agamand Mills
    note-ptBR Vá para o norte/oeste em direção a Agamand Mills
step
    goto 1420 @894.16,2609
    note-enUS [Thurman's Letter] may drop from these mobs. Accept the quest if it does
    note-ptBR [Thurman's Letter] pode cair destes mobs. Aceite a missão se cair
    collect 2839 1 |quest 361 |opt
    accept 361 |opt
    use 2839 |opt
    note-enUS Kill Soldiers and Bonecasters. Loot them for their Ribs and Skulls
    note-ptBR Mate Soldiers e Bonecasters. Saqueie-os para obter costelas e crânios
    objective 426/1 |opt
    objective 426/2 |opt
    note-enUS Kill Devlin. Loot him for his Remains
    note-ptBR Mate Devlin. Saqueie-o para obter os restos dele
    objective 362/1
step
    goto 1420 @803.78,2752.4
    note-enUS Kill Nissa. Loot her for her Remains. She can be inside the building
    note-ptBR Mate Nissa. Saqueie-a para obter os restos dela. Ela pode estar dentro do edifício
    objective 354/2
step
    path closest 1420 @996.28,2899.11 @1058.19,2775.59 @998.54,2903.93 @919.01,2939.77 @1098.4,2875.61 @996.28,2899.11
    note-enUS Kill Thurman and Gregor. Loot them for their Remains
    note-ptBR Mate Thurman e Gregor. Saqueie-os para obter os restos deles
    note-enUS They can patrol around
    note-ptBR Eles podem patrulhar a área
    objective 354/3
    objective 354/1
step
    path closest 1420 @996.28,2899.11 @1058.19,2775.59 @998.54,2903.93 @919.01,2939.77 @1098.4,2875.61 @996.28,2899.11
    note-enUS Kill Soldiers and Bonecasters. Loot them for their Ribs and Skulls
    note-ptBR Mate Soldiers e Bonecasters. Saqueie-os para obter costelas e crânios
    objective 426/1
    objective 426/2
step
    path closest 1420 @857.56,2793.97 @880.15,2884.04 @953.35,2926.22 @1025.2,2908.44 @1040.56,2793.07 @918.56,2780.11 @953.35,2926.22
    level 9
    note-enUS Grind to 4320+/6500xp
    note-ptBR Mate monstros até 4320+/6500xp
step
    path closest 1420 @857.56,2793.97 @880.15,2884.04 @953.35,2926.22 @1025.2,2908.44 @1040.56,2793.07 @918.56,2780.11 @953.35,2926.22
    level 9
    note-enUS Grind to 3360+/6500xp
    note-ptBR Mate monstros até 3360+/6500xp
step
    goto 1420 @403.42,2287.87
    note-enUS Die and respawn at the Spirit Healer
    note-ptBR Morra e renasça no Spirit Healer
    note-enUS Talk to Dillinger
    note-ptBR Fale com Dillinger
    turnin 426
step
    ifonquest 361
    path seq 1420 @250.69,2252.92
    goto 1420 @244.36,2262.26
    note-enUS Talk to Yvette and Coleman
    note-ptBR Fale com Yvette e Coleman
    turnin 361
    turnin 354
    turnin 362
    accept 355
step
    goto 1420 @244.36,2262.26
    note-enUS Talk to Coleman
    note-ptBR Fale com Coleman
    turnin 354
    turnin 362
    accept 355
step
    goto 1420 @265.15,2305.94
    note-enUS Talk to Sevren
    note-ptBR Fale com Sevren
    turnin 360
    turnin 355
step
    only Priest
    goto 1420 @251.14,2265.28
    note-enUS Talk to Beryl on the second floor
    note-ptBR Fale com Beryl no segundo andar
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warrior
    ifonquest 1505
    abandon 1505
    note-enUS Abandon Veteran Uzzek
    note-ptBR Abandone Veteran Uzzek
step
    only Warrior
    ifonquest 1498
    abandon 1498
    note-enUS Abandon Path of Defense
    note-ptBR Abandone Path of Defense
step
    only Warrior
    ifnotturnedin 1498
    goto 1420 @238.49,2254.43
    note-enUS Talk to Austil
    note-ptBR Fale com Austil
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
    accept 1818
step
    only Warlock
    goto 1420 @248.88,2251.12
    note-enUS Talk to Ageron inside the inn
    note-ptBR Fale com Ageron dentro da estalagem
    accept 1478
step
    only Warlock
    goto 1420 @250.24,2259.25
    note-enUS Talk to Rupert
    note-ptBR Fale com Rupert
    train 707
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Rogue
    goto 1420 @243.01,2270.7
    note-enUS Talk to Marion inside the inn
    note-ptBR Fale com Marion dentro da estalagem
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
    accept 1885
step
    only Mage
    goto 1420 @233.52,2256.84
    note-enUS Talk to Cain inside the inn
    note-ptBR Fale com Cain dentro da estalagem
    accept 1881
step
    goto 1420 @244.81,2269.19
    note-enUS Talk to Innkeeper Renee
    note-ptBR Fale com Innkeeper Renee
    note-enUS Buy [Ice Cold Milk] from her |only Mage Priest Shaman
    note-ptBR Compre [Ice Cold Milk] dela |only Mage Priest Shaman
    note-enUS Buy [Red-speckled Mushrooms] from her <<Warrior/Rogue
    note-ptBR Compre [Red-speckled Mushrooms] dela <<Warrior/Rogue
    note-enUS Buy [Ice Cold Milk] and [Red-speckled Mushrooms] from her |only Warlock
    note-ptBR Compre [Ice Cold Milk] e [Red-speckled Mushrooms] dela |only Warlock
    collect 1179 20 |quest 370 |q 370/1 |only Mage Priest Shaman
    collect 4605 20 |quest 370 |q 370/1 |only Rogue Warrior
    collect 1179 15 |quest 370 |q 370/1 |only Warlock
    collect 4605 15 |quest 370 |q 370/1 |only Warlock
step
    only Warrior
    ifnotturnedin 1498
    goto 1420 @403.87,2287.87
    note-enUS Talk to Dillinger
    note-ptBR Fale com Dillinger
    turnin 1818
    accept 1819
step
    only Warrior
    goto 1420 @360.04,2376.14
    note-enUS Click on the skull on the ground. This will summon Ulag. Kill him
    note-ptBR Clique na caveira no chão. Isso invocará Ulag. Mate-o
    objective 1819/1
step
    only Warrior
    goto 1420 @403.87,2287.87
    note-enUS Talk to Dillinger
    note-ptBR Fale com Dillinger
    turnin 1819
    accept 1820
step
    goto 1420 @254.6,2225.8
    note-enUS Talk to Deathguard Terrence
    note-ptBR Fale com Deathguard Terrence
    accept 96895
step
    only Paladin
    goto 1420 @311.6,2251
    note-enUS Talk to Shari Stilwell
    note-ptBR Fale com Shari Stilwell
    accept 91282
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warlock
    goto 1420 @240.75,1877.57 20 |only Warlock
    path seq 1458 @239.14,1749.54 @255.64,1724.7 @240.68,1706.97 @241.06,1660.12 @257.08,1623.38 |only Warlock
    goto 1458 @244.51,1598.73 15 |only Warlock
    goto 1458 @57.05,1711.77
    note-enUS Enter Undercity |only Warlock
    note-ptBR Entre em Undercity |only Warlock
    note-enUS Take the lift down to the Undercity |only Warlock
    note-ptBR Pegue o elevador descendo até Undercity |only Warlock
    note-enUS Talk to Carendin in the Magic Quarter
    note-ptBR Fale com Carendin no Magic Quarter
    turnin 1478
    accept 1473
step
    only Warlock
    goto 1458 @66.74,1766.31
    note-enUS Talk to Bethor in the Magic Quarter
    note-ptBR Fale com Bethor no Magic Quarter
    turnin 405
step
    only Warlock
    path seq 1458 @419.89,1627.54 @428.52,1597.2 @439.17,1626.06 @476.78,1632.15 @482.34,1660.63 @539.33,1665.49 @610.42,1684.44
    goto 1458 @663.19,1600.46 35
    goto 1420 @724.25,1682.66 50
    zone 1420
    note-enUS Leave Undercity through the Sewers
    note-ptBR Saia de Undercity pelos Sewers
step
    path closest 1420 @726.06,1801.95 |only Warlock
    path closest 1420 @770.8,1762.79 @763.57,1820.93 @721.54,1857.38 @694.88,1848.04 @641.56,1800.45 @651.05,1748.93 @685.39,1741.7 @727.42,1742.31
    note-enUS Loot Perrine's Chest for [Egalin's Grimoire] |only Warlock
    note-ptBR Saqueie o Perrine's Chest para obter [Egalin's Grimoire] |only Warlock
    objective 1473/1 |only Warlock |opt
    note-enUS Kill Captain Perrine, Scarlet Zealots and Scarlet Missionaries. Loot them for their Scarlet Insignia Rings
    note-ptBR Mate Captain Perrine, Scarlet Zealots e Scarlet Missionaries. Saqueie-os para obter os Scarlet Insignia Rings
    objective 370/1
    objective 370/2
    objective 370/3
    objective 374/1
step
    only Warlock
    goto 1420 @726.06,1801.95
    note-enUS Loot Perrine's Chest on the ground for [Egalin's Grimoire]
    note-ptBR Saqueie o Perrine's Chest no chão para obter [Egalin's Grimoire]
    objective 1473/1
step
    only Rogue
    path seq 1458 @714.8,1604.24 @652.73,1623.44 @634.02,1669.66 @539.52,1665.17 @481.48,1659.8 @476.49,1632.15 @439.08,1627.02 @435.05,1598.86
    goto 1458 @323.57,1668.5
    zone 1458 |opt
    note-enUS Travel into the Undercity through the sewers
    note-ptBR Entre em Undercity pelos sewers
    note-enUS Talk to Archibald in the War Quarter
    note-ptBR Fale com Archibald no War Quarter
    train 201
    note-enUS Train 1h Swords
    note-ptBR Treine 1h Swords
step
    only Warrior Rogue
    goto 1458 @335.37,1638.29
    note-enUS Talk to Brom
    note-ptBR Fale com Brom
    train 2575
    note-enUS Train [Mining]
    note-ptBR Treine [Mining]
    note-enUS This will allow you to find [Rough Stones] from nodes in order to craft [Sharpening Stones] (+2 Weapon Damage for 30 minutes)
    note-ptBR Isto permitirá obter [Rough Stones] dos veios para criar [Sharpening Stones] (+2 de dano da arma por 30 minutos)
step
    only Warrior Rogue
    goto 1458 @329.04,1641.62
    note-enUS Talk to Sarah
    note-ptBR Fale com Sarah
    note-enUS Buy a [Mining Pick] from Sarah
    note-ptBR Compre uma [Mining Pick] de Sarah
    collect 2901 1 |quest 371 |q 371/1
    train 2575
step
    only Warrior Rogue
    goto 1458 @295.94,1691.61
    note-enUS Talk to Basil Frye
    note-ptBR Fale com Basil Frye
    train 2018
    note-enUS Train [Blacksmithing]
    note-ptBR Treine [Blacksmithing]
    train 2575
step
    only Warlock
    goto 1458 @57.05,1711.77
    note-enUS Talk to Carendin in the Magic Quarter
    note-ptBR Fale com Carendin no Magic Quarter
    turnin 1473
    accept 1471
step
    only Warlock
    goto 1458 @41.99,1704.48
    note-enUS Use the [Runes of Summoning] at the Summoning Circle |only Warlock
    note-ptBR Use as [Runes of Summoning] no Summoning Circle |only Warlock
    use 6284 |only Warlock |opt
    note-enUS Kill the Summoned Voidwalker
    note-ptBR Mate o Summoned Voidwalker
    objective 1471/1
    use 6284
step
    only Warlock
    goto 1458 @57.34,1711.71
    note-enUS Talk to Carendin
    note-ptBR Fale com Carendin
    turnin 1471
step
    only Rogue
    goto 1458 @129.68,1560.26
    note-enUS Equip the [Claymore] |only Warrior
    note-ptBR Equipe a [Claymore] |only Warrior
    use 1198 |only Warrior |opt
    note-enUS Equip the [Cutlass] |only Rogue
    note-ptBR Equipe o [Cutlass] |only Rogue
    use 851 |only Rogue |opt
    note-enUS Talk to Nathaniel Steenwick in the Rogue Quarter
    note-ptBR Fale com Nathaniel Steenwick no Rogue Quarter
    note-enUS Buy [Keen Throwing Knives] from him
    note-ptBR Compre [Keen Throwing Knives] dele
    collect 3107 200 |quest 371 |q 371/1
step
    only Rogue
    goto 1458 @71.92,1435.7
    note-enUS Remember to equip the [Keen Throwing Knives] when you are level 11 |only Rogue
    note-ptBR Lembre-se de equipar as [Keen Throwing Knives] quando chegar ao nível 11 |only Rogue
    use 3107 |only Rogue |opt
    note-enUS Equip the [Keen Throwing Knives] |only Rogue
    note-ptBR Equipe as [Keen Throwing Knives] |only Rogue
    use 3107 |only Rogue |opt
    note-enUS Talk to Mennet
    note-ptBR Fale com Mennet
    turnin 1885
    accept 1886
step
    only Mage
    goto 1458 @168.6,1662.9
    note-enUS Talk to Owen Thadd
    note-ptBR Fale com Owen Thadd
    turnin 79095
step
    only Mage
    ifonquest 1883
    abandon 1883
    note-enUS Abandon Speak with Un'thuwa, otherwise you won't be able to accept the upcoming quest
    note-ptBR Abandone Speak with Un'thuwa, senão você não poderá aceitar a próxima missão
step
    only Mage
    goto 1458 @56.57,1813.49
    note-enUS Talk to Anastasia in the Magic Quarter
    note-ptBR Fale com Anastasia no Magic Quarter
    turnin 1881
    accept 1882
step
    only Mage
    goto 1458 @66.74,1766.31
    note-enUS Talk to Bethor in the Magic Quarter
    note-ptBR Fale com Bethor no Magic Quarter
    turnin 405
step
    only Paladin
    goto 1458 @223.31,1634.96
    note-enUS Talk to Norman
    note-ptBR Fale com Norman
    home
    note-enUS Set your Hearthstone to Undercity
    note-ptBR Defina sua pedra de regresso em Undercity
step
    ifcomplete 374
    path seq 1420 @235.32,1883.89
    goto 1420 @280.06,2270.7
    zone 1420 |opt
    note-enUS Exit Undercity
    note-ptBR Saia de Undercity
    note-enUS If you see Astor, talk to him and kill him. Loot him for the letter. He patrols the road between Brill and The Sepulcher |only Scourge Rogue
    note-ptBR Se vir Astor, fale com ele e mate-o. Saqueie-o para obter a carta. Ele patrulha a estrada entre Brill e The Sepulcher |only Scourge Rogue
    objective 1886/1 |only Scourge Rogue |opt
    note-enUS Talk to Burgess
    note-ptBR Fale com Burgess
    turnin 374
step
    goto 1420 @295.87,2277.93
    note-enUS Talk to Zygand
    note-ptBR Fale com Zygand
    turnin 370
    accept 371
step
    goto 1420 @270.12,2253.23
    note-enUS Talk to Mrs. Winters
    note-ptBR Fale com Mrs. Winters
    note-enUS Buy a [Small Brown Pouch] from her
    note-ptBR Compre uma [Small Brown Pouch] dela
    collect 4496 1 |quest 356 |q 356/1
step
    only Warrior
    goto 1420 @244.36,2262.26
    note-enUS Talk to Coleman
    note-ptBR Fale com Coleman
    turnin 1820
step
    goto 1420 @54.6,1996.6
    note-enUS Talk to Hadric Harlson
    note-ptBR Fale com Hadric Harlson
    turnin 96895
    accept 96897
    accept 96898
step
    goto 1420 @-130.5,1907.8
    note-enUS Kill Dark Enforcers and Dark Neophytes. Loot them for Necrotic Crystal Fragments
    note-ptBR Mate Dark Enforcers e Dark Neophytes. Saqueie-os para obter Necrotic Crystal Fragments
    note-enUS Necrotic Crystal Fragments can also be looted on the ground
    note-ptBR Necrotic Crystal Fragments também podem ser saqueados no chão
    note-enUS Be careful! These mobs hit hard. Dark Enforcers also have an instant cast 50-70 damage ability
    note-ptBR Cuidado! Esses mobs batem forte. Os Dark Enforcers também têm uma habilidade instantânea de 50-70 de dano
    objective 96897/2
    objective 96897/1
    objective 96898/1
step
    goto 1420 @54.5,1996.4
    note-enUS Talk to Hadric Harlson
    note-ptBR Fale com Hadric Harlson
    turnin 96897
    turnin 96898
    accept 96899
step
    ifonquest 356
    goto 1420 @-423.96,1976.68
    note-enUS Travel to Balnir Farmstead
    note-ptBR Vá até Balnir Farmstead
step
    only Mage
    goto 1420 @-467.79,1969.75
    note-enUS Loot the Tomb Weed on the ground
    note-ptBR Saqueie a Tomb Weed no chão
    objective 99142/1 |opt
    note-enUS Kill Bleeding Horrors and Wandering Spirits |only Mage
    note-ptBR Mate Bleeding Horrors e Wandering Spirits |only Mage
    objective 356/1 |only Mage |opt
    objective 356/2 |only Mage |opt
    note-enUS Loot any of the plants on the ground for a Balnir Snapdragon
    note-ptBR Saqueie qualquer uma das plantas no chão para obter uma Balnir Snapdragon
    objective 1882/1
step
    path closest 1420 @-324.55,2000.48 @-330.88,2040.84 @-359.34,2073.38 @-421.25,2070.07 @-464.63,2070.37 @-516.14,2017.05 @-466.44,1986.02 @-436.61,1951.67 @-355.28,1970.35
    note-enUS Kill Bleeding Horrors and Wandering Spirits
    note-ptBR Mate Bleeding Horrors e Wandering Spirits
    objective 356/1
    objective 356/2
step
    goto 1420 @-354.8,2049
    note-enUS Loot the Tomb Weed on the ground
    note-ptBR Saqueie a Tomb Weed no chão
    objective 99142/1
step
    ifonquest 374
    path closest 1420 @-624.59,2114.05 @-452.43,2183.03 @-573.53,2138.45 @-624.59,2114.05 @-654.87,2185.44 @-652.16,2238.77 @-550.49,2173.09 @-452.43,2183.03 @-407.69,2171.59 @-406.34,2113.75 @-453.33,2127.91 @-573.53,2138.45
    note-enUS Save 10 [Linen Cloth] for a quest later. Make sure you do not sell it |only Paladin
    note-ptBR Guarde 10 [Linen Cloth] para uma missão mais tarde. Não venda |only Paladin
    collect 2589 10 |only Paladin |opt
    note-enUS Kill Scarlet Friars and Scarlet Zealots. Loot them for their Scarlet Insignia Rings
    note-ptBR Mate Scarlet Friars e Scarlet Zealots. Saqueie-os para obter os Scarlet Insignia Rings
    objective 371/2
    objective 374/1
step
    ifturnedin 374
    path closest 1420 @-624.59,2114.05 @-452.43,2183.03 @-573.53,2138.45 @-624.59,2114.05 @-654.87,2185.44 @-652.16,2238.77 @-550.49,2173.09 @-452.43,2183.03 @-407.69,2171.59 @-406.34,2113.75 @-453.33,2127.91 @-573.53,2138.45
    note-enUS Kill Scarlet Friars
    note-ptBR Mate Scarlet Friars
    objective 371/2
step
    goto 1420 @-528.35,2146.28
    note-enUS Kill Captain Vachon inside the tower
    note-ptBR Mate Captain Vachon dentro da torre
    objective 371/1
step
    path closest 1420 @-808.96,2189.06 @-739.82,2163.75 @-808.96,2189.06 @-878.1,2195.39 @-945.88,2180.93 @-985.64,2224 @-1019.99,2274.61 @-1075.11,2314.38 @-1072.85,2381.56 @-1027.67,2432.17 @-809.41,2431.26 @-785.91,2352.64 @-738.02,2268.29
    note-enUS Kill Vicious Night Web Spiders. Loot them for their Venom
    note-ptBR Mate Vicious Night Web Spiders. Saqueie-as para obter o veneno
    objective 369/1
step
    goto 1420 @346.94,2259.25
    note-enUS Travel back to Brill
    note-ptBR Volte para Brill
    note-enUS Talk to Johaan
    note-ptBR Fale com Johaan
    turnin 369
    accept 492
    accept 445
step
    goto 1420 @295.87,2277.93
    note-enUS Talk to Zygand
    note-ptBR Fale com Zygand
    turnin 371
step
    goto 1420 @265.15,2305.94
    note-enUS Talk to Sevren
    note-ptBR Fale com Sevren
    turnin 360
    turnin 355
step
    goto 1420 @280.06,2270.7
    note-enUS Talk to Burgess
    note-ptBR Fale com Burgess
    turnin 374
step
    goto 1420 @244.81,2269.19
    note-enUS Talk to Innkeeper Renee
    note-ptBR Fale com Innkeeper Renee
    vendor |only !Rogue !Warrior
    note-enUS Sell your junk, then restock on food and water if necessary |only !Rogue !Warrior
    note-ptBR Venda seu lixo e depois reabasteça comida e água se necessário |only !Rogue !Warrior
    vendor |only Rogue Warrior
    note-enUS Sell your junk, then restock on food if necessary |only Rogue Warrior
    note-ptBR Venda seu lixo e depois reabasteça comida se necessário |only Rogue Warrior
step
    path seq 1420 @233.06,2292.39
    goto 1420 @234.42,2289.07
    note-enUS Talk to the Captured Scarlet Zealot and the Captured Mountaineer downstairs in the back of the inn
    note-ptBR Fale com o Captured Scarlet Zealot e o Captured Mountaineer no andar de baixo, nos fundos da estalagem
    turnin 407
    turnin 492
step
    only Priest
    note-enUS Talk to Beryl on the second floor
    note-ptBR Fale com Beryl no segundo andar
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warrior
    note-enUS Talk to Austil
    note-ptBR Fale com Austil
    train 7384
    note-enUS Train Train your class spells
    note-ptBR Treine suas magias de classe
step
    only Warlock
    note-enUS Talk to Rupert
    note-ptBR Fale com Rupert
    train 755
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Rogue
    note-enUS Talk to Marion
    note-ptBR Fale com Marion
    train 1766
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Mage
    note-enUS Talk to Cain inside the inn
    note-ptBR Fale com Cain dentro da estalagem
    train 145
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Paladin
    goto 1420 @311.6,2251
    note-enUS Talk to Shari Stilwell
    note-ptBR Fale com Shari Stilwell
    train 678
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    path closest 1420 @425.56,2362.58 @399.35,2337.27 @425.56,2362.58 @355.52,2429.76
    note-enUS Talk to Holland
    note-ptBR Fale com Holland
    note-enUS He patrols around the graveyard
    note-ptBR Ele patrulha ao redor do cemitério
    turnin 99142
step
    only Paladin
    path seq 1420 @1732.5,2437.9 @1834.3,2424 @1963.1,2340.6 @2041,2352.5 @2049.9,2463.2
    goto 1420 @2045.9,2475.4
    note-enUS Travel to Bandarion Keep
    note-ptBR Vá até Bandarion Keep
    note-enUS Talk to Breton Samuels
    note-ptBR Fale com Breton Samuels
    turnin 91282
    accept 91285
step
    goto 1420 @2038,2490.1
    note-enUS Talk to Leonid Barthalomew the Revered upstairs
    note-ptBR Fale com Leonid Barthalomew the Revered no andar de cima
    turnin 96899
    accept 96896
step
    goto 1420 @2038,2490.1
    note-enUS Talk to Leonid Barthalomew the Revered upstairs
    note-ptBR Fale com Leonid Barthalomew the Revered no andar de cima
    turnin 96896
    accept 98545
step
    goto 1420 @2041.2,2416.2
    note-enUS Talk to Hilda the Breaker outside
    note-ptBR Fale com Hilda the Breaker lá fora
    accept 99152
step
    goto 1420 @2122.1,2436.8
    note-enUS Talk to Ephram Barbaro outside
    note-ptBR Fale com Ephram Barbaro lá fora
    accept 99153
step
    only Paladin
    path closest 1420 @2424.2,2151.9 @2212,2022.6 @2424.2,2151.9 @2212,2022.6
    note-enUS Kill Vile Fin Seers and Vile Fin Attackers
    note-ptBR Mate Vile Fin Seers e Vile Fin Attackers
    objective 91285/2
    objective 91285/1
step
    only Paladin
    goto 1420 @2045.8,2475.5
    note-enUS Talk to Breton Samuels
    note-ptBR Fale com Breton Samuels
    turnin 91285
    accept 91294
step
    only Paladin
    goto 1420 @2035.1,2492.2
    note-enUS Talk to Danitha Morr
    note-ptBR Fale com Danitha Morr
    turnin 91294
    accept 91317
step
    only Paladin
    goto 1420 @2007.8,2491.4
    note-enUS Talk to Jorin Croge
    note-ptBR Fale com Jorin Croge
    accept 91316
step
    only Paladin
    goto 1420 @2514.6,1903.6
    note-enUS Kill Tarnished Zealots and Tarnished Drudges |only Paladin
    note-ptBR Mate Tarnished Zealots e Tarnished Drudges |only Paladin
    objective 91317/3 |only Paladin |opt
    objective 91317/2 |only Paladin |opt
    note-enUS Kill Rudolph Gelhardt upstairs. Loot him for his Head
    note-ptBR Mate Rudolph Gelhardt no andar de cima. Saqueie-o para obter a cabeça dele
    objective 91317/1
step
    only Paladin
    goto 1420 @2487.7,1910
    note-enUS Kill Tarnished Zealots and Tarnished Drudges
    note-ptBR Mate Tarnished Zealots e Tarnished Drudges
    objective 91317/3
    objective 91317/2
step
    ifonquest 99152 95314 99153
    goto 1420 @2449.5,1857.6 10
    note-enUS Enter the Shadowvale Crypt
    note-ptBR Entre na Shadowvale Crypt
step
    goto 1420 @2648.1,2027.2
    note-enUS Kill Shadowvale Lurchers and Shadowvale Mystics. Loot them for their Faintly Glowing Bones
    note-ptBR Mate Shadowvale Lurchers e Shadowvale Mystics. Saqueie-os para obter Faintly Glowing Bones
    objective 99152/1 |opt
    note-enUS Loot the Lumber Piles on the ground |only Paladin
    note-ptBR Saqueie as Lumber Piles no chão |only Paladin
    note-enUS Loot the Bottles of Whispering Elixir on the ground and on the walls
    note-ptBR Saqueie as Bottles of Whispering Elixir no chão e nas paredes
    objective 95314/1 |opt
    use 268812
    note-enUS Kill the Whispering Horror (elite). Loot him for [Whispering Horror Residue]
    note-ptBR Mate o Whispering Horror (elite). Saqueie-o para [Whispering Horror Residue]
    note-enUS This is hard! Group up if possible. It has 700 health but his damage is manageable. Skip this step if you can't kill it
    note-ptBR Isto é difícil! Forme um grupo se possível. Tem 700 de vida, mas o dano é controlável. Pule esta etapa se não conseguir matá-lo
    collect 268812 1 |quest 95328
    accept 95328
step
    goto 1420 @2592.4,1748.4
    note-enUS Loot the Glowing Crystal Fragment on the ground
    note-ptBR Saqueie o Glowing Crystal Fragment no chão
    objective 99153/1
step
    goto 1420 @2556.1,1868.8
    note-enUS Kill Shadowvale Lurchers and Shadowvale Mystics. Loot them for their Faintly Glowing Bones
    note-ptBR Mate Shadowvale Lurchers e Shadowvale Mystics. Saqueie-os para obter Faintly Glowing Bones
    objective 99152/1
step
    goto 1420 @2647.8,1815.5
    note-enUS Loot the Lumber Piles on the ground |only Paladin
    note-ptBR Saqueie as Lumber Piles no chão |only Paladin
    note-enUS Loot the Bottles of Whispering Elixir on the ground and on the walls
    note-ptBR Saqueie as Bottles of Whispering Elixir no chão e nas paredes
    objective 95314/1
step
    goto 1420 @2037.1,2416.8
    note-enUS Die and respawn at the Spirit Healer
    note-ptBR Morra e renasça no Spirit Healer
    note-enUS Talk to Hilda the Breaker
    note-ptBR Fale com Hilda the Breaker
    turnin 99152
step
    goto 1420 @2122.5,2436.8
    note-enUS Talk to Ephram Barbaro
    note-ptBR Fale com Ephram Barbaro
    turnin 99153
step
    only Paladin
    goto 1420 @2008,2491.2
    note-enUS Talk to Jorin Croge
    note-ptBR Fale com Jorin Croge
    turnin 91316
step
    only Paladin
    goto 1420 @2035.1,2492
    note-enUS Talk to Danitha Morr
    note-ptBR Fale com Danitha Morr
    turnin 91317
    accept 95803
    accept 94427
step
    only !Paladin
    goto 1420 @347.6,2265.2
    hearth |only !Paladin |opt
    note-enUS Hearth to Brill |only !Paladin
    note-ptBR Use a pedra de regresso para Brill |only !Paladin
    note-enUS Travel back to Brill |only !Paladin
    note-ptBR Volte para Brill |only !Paladin
    note-enUS Talk to Carolai Anise
    note-ptBR Fale com Carolai Anise
    turnin 95314
step
    only Priest
    note-enUS Talk to Beryl on the second floor
    note-ptBR Fale com Beryl no segundo andar
    trainer
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warrior
    note-enUS Talk to Austil
    note-ptBR Fale com Austil
    train 7384
    note-enUS Train Train your class spells
    note-ptBR Treine suas magias de classe
step
    only Warlock
    note-enUS Talk to Rupert
    note-ptBR Fale com Rupert
    train 755
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Rogue
    note-enUS Talk to Marion
    note-ptBR Fale com Marion
    train 1766
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Mage
    note-enUS Talk to Cain inside the inn
    note-ptBR Fale com Cain dentro da estalagem
    train 145
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only !Paladin
    goto 1420 @74,2022.47
    note-enUS If you see Astor, talk to him and kill him. Loot him for the letter. He patrols the road between Brill and The Sepulcher |only Rogue
    note-ptBR Se vir Astor, fale com ele e mate-o. Saqueie-o para obter a carta. Ele patrulha a estrada entre Brill e The Sepulcher |only Rogue
    objective 1886/1 |only Rogue |opt
    note-enUS Talk to Linnea
    note-ptBR Fale com Linnea
    turnin 356
step
    only !Paladin
    goto 1420 @240.75,1877.57 20 |only !Paladin
    path seq 1458 @239.14,1749.54 @255.64,1724.7 @240.68,1706.97 @241.06,1660.12 @257.08,1623.38 |only !Paladin
    goto 1458 @244.51,1598.73 15 |only !Paladin
    goto 1458 @223.31,1634.96
    note-enUS Enter Undercity |only !Paladin
    note-ptBR Entre em Undercity |only !Paladin
    note-enUS Take the lift down to the Undercity |only !Paladin
    note-ptBR Pegue o elevador descendo até Undercity |only !Paladin
    note-enUS Talk to Norman
    note-ptBR Fale com Norman
    home
    note-enUS Set your Hearthstone to Undercity
    note-ptBR Defina sua pedra de regresso em Undercity
step
    goto 1458 @201.4,1575.2
    hearth |only Paladin |opt
    note-enUS Hearth to Undercity |only Paladin
    note-ptBR Use a pedra de regresso para Undercity |only Paladin
    note-enUS Talk to Glix Xizzix
    note-ptBR Fale com Glix Xizzix
    turnin 98545
step
    only Mage
    goto 1458 @56.57,1813.49
    note-enUS Equip the [Cutlass] |only Rogue
    note-ptBR Equipe o [Cutlass] |only Rogue
    use 851 |only Rogue |opt
    note-enUS Equip the [Claymore] |only Warrior
    note-ptBR Equipe a [Claymore] |only Warrior
    use 1198 |only Warrior |opt
    note-enUS Talk to Anastasia in the Magic Quarter
    note-ptBR Fale com Anastasia no Magic Quarter
    turnin 1882
step
    only Rogue
    ifcomplete 1886
    goto 1458 @71.92,1435.63
    note-enUS Talk to Mennet
    note-ptBR Fale com Mennet
    turnin 1886
step
    only Rogue
    ifturnedin 1886
    goto 1458 @71.92,1435.63
    note-enUS Talk to Mennet
    note-ptBR Fale com Mennet
    accept 1898
step
    only Rogue
    ifturnedin 1886
    goto 1458 @347.07,1389.48
    note-enUS Talk to Andron
    note-ptBR Fale com Andron
    turnin 1898
    accept 1899
step
    only Rogue
    ifturnedin 1886
    goto 1458 @341.41,1385.9
    note-enUS Loot Andron's Bookshelf behind Andron
    note-ptBR Saqueie a Andron's Bookshelf atrás de Andron
    objective 1899/1
step
    only Rogue
    ifturnedin 1886
    goto 1458 @71.83,1435.51
    note-enUS Talk to Mennet
    note-ptBR Fale com Mennet
    turnin 1899
    accept 1978
step
    only Rogue
    ifturnedin 1886
    path seq 1420 @373.6,1464.85
    goto 1420 @333.38,1287.72
    note-enUS Talk to Varimathras
    note-ptBR Fale com Varimathras
    turnin 1978
step
    ifonquest 95328
    goto 1458 @399.8,1776.6
    note-enUS Talk to Father Lankester
    note-ptBR Fale com Father Lankester
    turnin 95328
step
    only Priest
    goto 1458 @403.29,1760.61
    note-enUS Talk to Aelthalyste
    note-ptBR Fale com Aelthalyste
    turnin 5658
    train 2652
step
    only Priest
    goto 1458 @201.05,1686.94
    note-enUS Talk to Victor
    note-ptBR Fale com Victor
    train 3908
    note-enUS Train [Tailoring]
    note-ptBR Treine [Tailoring]
step
    only Priest
    goto 1458 @194.34,1681.63
    note-enUS Turn all your [Linen Cloth] into [Bolt of linen Linen Cloth]
    note-ptBR Transforme todo o seu [Linen Cloth] em [Bolt of linen Linen Cloth]
    collect 2996 30 |quest 435 |q 435/1
step
    only Priest
    goto 1458 @201.05,1686.94
    note-enUS Talk to Victor
    note-ptBR Fale com Victor
    train 7623
    note-enUS Train [Brown Linen Robe]
    note-ptBR Treine [Brown Linen Robe]
step
    only Priest
    goto 1458 @196.16,1684.83
    note-enUS Talk to Millie
    note-ptBR Fale com Millie
    note-enUS Buy [Coarse Thread] from her
    note-ptBR Compre [Coarse Thread] dela
    collect 2320 30 |quest 435 |q 435/1
step
    only Priest
    note-enUS Create as many [Brown Linen Robes] as you can
    note-ptBR Crie o máximo de [Brown Linen Robes] que puder
    collect 6238 9 |quest 398 |q 398/1
step
    only Priest
    goto 1458 @273.87,1482.36
    note-enUS Talk to Lavinia
    note-ptBR Fale com Lavinia
    train 7411
    note-enUS Train [Enchanting]
    note-ptBR Treine [Enchanting]
step
    only Priest
    goto 1458 @275.02,1487.55
    note-enUS Talk to Thaddeus. Buy a [Copper Rod] and [Simple Wood] from him
    note-ptBR Fale com Thaddeus. Compre [Copper Rod] e [Simple Wood] dele
    note-enUS Disenchant all the [Brown Linen Robes] that you made and create a [Runed Copper Rod]
    note-ptBR Desencante todos os [Brown Linen Robes] que fez e crie um [Runed Copper Rod]
    note-enUS If you did not get a [Lesser Magic Essence] then buy one from Thaddeus if there is one available. Otherwise finish this step later
    note-ptBR Se não conseguiu uma [Lesser Magic Essence], compre uma de Thaddeus se houver disponível. Caso contrário, termine esta etapa depois
    collect 6218 1 |quest 435 |q 435/1
    collect 4470 1 |quest 435 |q 435/1
step
    only Priest
    goto 1458 @273.2,1491.71
    note-enUS Talk to Malcomb
    note-ptBR Fale com Malcomb
    train 14293
    note-enUS Train [Lesser Magic Wand]
    note-ptBR Treine [Lesser Magic Wand]
step
    only Priest
    note-enUS Create a [Lesser Magic Wand]
    note-ptBR Crie uma [Lesser Magic Wand]
    note-enUS If you did not get a [Lesser Magic Essence] then buy one from Thaddeus if there is one available. Otherwise finish this step later
    note-ptBR Se não conseguiu uma [Lesser Magic Essence], compre uma de Thaddeus se houver disponível. Caso contrário, termine esta etapa depois
    collect 11287 1 |quest 435 |q 435/1
step
    only Paladin
    path seq 1458 @374.41,1464.82 @429.48,1409.26 @438.4,1376.62 @429.39,1340.83 @402.81,1315.17 |only Paladin
    goto 1458 @365.3,1304.41 10 |only Paladin
    goto 1458 @316.2,1290.6
    note-enUS Equip the [Lesser Magic Wand] |only Priest
    note-ptBR Equipe a [Lesser Magic Wand] |only Priest
    use 11287 |only Priest |opt
    note-enUS Enter the Royal Quarter-c:Undercity,52.94,89.60 |only Paladin
    note-ptBR Entre no Royal Quarter-c:Undercity,52.94,89.60 |only Paladin
    note-enUS Talk to Lady Sylvanas Windrunner
    note-ptBR Fale com Lady Sylvanas Windrunner
    turnin 95803
step
    only Paladin
    goto 1420 @235.32,1883.89 |only Paladin
    goto 1420 @74,2022.47
    zone 1420 |only Paladin |opt
    note-enUS Exit Undercity |only Paladin
    note-ptBR Saia de Undercity |only Paladin
    note-enUS Talk to Linnea
    note-ptBR Fale com Linnea
    turnin 356
step
    only Paladin
    goto 1420 @311.6,2251
    note-enUS Talk to Shari Stilwell
    note-ptBR Fale com Shari Stilwell
    train 678
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Paladin
    goto 1420 @347.6,2265.2
    note-enUS Talk to Carolai Anise
    note-ptBR Fale com Carolai Anise
    turnin 95314
step
    only Paladin
    path seq 1420 @1732.5,2437.9 @1834.3,2424 @1963.1,2340.6 @2041,2352.5 |only Paladin
    goto 1420 @2049.9,2463.2 50 |only Paladin
    goto 1420 @2035.1,2492.1
    note-enUS You will now do the quest chain for your [Redemption] ability. This will take ~15 minutes and won't give much exp |only Paladin
    note-ptBR Agora você fará a cadeia de missões da habilidade [Redemption]. Isso leva ~15 minutos e não dá muita experiência |only Paladin
    note-enUS Feel free to skip this for now and come back later if you wish |only Paladin
    note-ptBR Fique à vontade para pular isso por enquanto e voltar depois, se quiser |only Paladin
    note-enUS Travel to Bandarion Keep |only Paladin
    note-ptBR Vá até Bandarion Keep |only Paladin
    note-enUS Talk to Danitha Morr
    note-ptBR Fale com Danitha Morr
    turnin 94435
    accept 94436
step
    only Paladin
    ifonquest 94436
    goto 1420 @2043.4,2497.3
    note-enUS Talk to Deathguard Billmuth
    note-ptBR Fale com Deathguard Billmuth
    turnin 94436
    accept 94438
step
    only Paladin
    ifturnedin 94436
    goto 1420 @2043.4,2497.3
    note-enUS Talk to Deathguard Billmuth
    note-ptBR Fale com Deathguard Billmuth
    accept 94438
step
    only Paladin
    ifturnedin 94436
    goto 1420 @-885.2,2399.8 50 |only Paladin
    goto 1420 @-885.2,2399.8
    note-enUS Travel to Eastern Tirisfal |only Paladin
    note-ptBR Vá até Eastern Tirisfal |only Paladin
    note-enUS Use the [Symbol of Life] on Deathguard Falgan |only Paladin
    note-ptBR Use o [Symbol of Life] em Deathguard Falgan |only Paladin
    use 6866 |only Paladin |opt
    note-enUS Talk to Deathguard Falgan
    note-ptBR Fale com Deathguard Falgan
    turnin 94438
    accept 94440
step
    only Paladin
    ifturnedin 94436
    goto 1420 @-889.7,2531.4
    note-enUS Kill Scarlet Friars and Scarlet Zealots. Loot them for the Scarlet Crusade Attack Plans
    note-ptBR Mate Scarlet Friars e Scarlet Zealots. Saqueie-os para obter os Scarlet Crusade Attack Plans
    objective 94440/1
step
    only Paladin
    ifturnedin 94436
    path seq 1420 @1732.5,2437.9 @1834.3,2424 @1963.1,2340.6 @2041,2352.5 |only Paladin
    goto 1420 @2049.9,2463.2 50 |only Paladin
    goto 1420 @2043.5,2497.3
    note-enUS Travel to Bandarion Keep |only Paladin
    note-ptBR Vá até Bandarion Keep |only Paladin
    note-enUS Talk to Deathguard Billmuth
    note-ptBR Fale com Deathguard Billmuth
    turnin 94440
    accept 94441
step
    only Paladin
    ifturnedin 94436
    goto 1420 @2034.9,2492.2
    note-enUS Talk to Danitha Morr
    note-ptBR Fale com Danitha Morr
    turnin 94441
step
    path seq 1458 @419.89,1627.54 @428.52,1597.2 @439.17,1626.06 @476.78,1632.15 @482.34,1660.63 @539.33,1665.49 @610.42,1684.44 |only !Paladin
    goto 1458 @663.19,1600.46 35 |only !Paladin
    goto 1420 @724.25,1682.66 50 |only !Paladin
    goto 1420 @629.36,1553.42
    abandon 96899 |only !Paladin |opt
    note-enUS Abandon Bandarion Keep |only !Paladin
    note-ptBR Abandone Bandarion Keep |only !Paladin
    abandon 95314 |only !Paladin |opt
    note-enUS Abandon That Shadowvale Green Elixir |only !Paladin
    note-ptBR Abandone That Shadowvale Green Elixir |only !Paladin
    zone 1420 |only !Paladin |opt
    note-enUS Leave Undercity through the Sewers |only !Paladin
    note-ptBR Saia de Undercity pelos Sewers |only !Paladin
    zone 1421
    note-enUS Travel to Silverpine Forest
    note-ptBR Vá até Silverpine Forest
]==])

register([==[
#format 1
#id forever.h.12-14-silverpine-forest
#name 12-14 Silverpine Forest
#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)
#version 11
#flavor forever
#license CC-BY-NC-SA-4.0
#faction Horde
#levels 12-14
#zone 1421
#group Leveling (Horde)
#group-ptBR Evolução (Horda)
#subgroup Speedrun 1-22
#subgroup-ptBR Rota rápida 1-22
#recommend !Hunter !Shaman !Tauren
#next forever.h.12-17-the-barrens

step
    goto 1421 @1090.44,1409.63
    note-enUS If you see Astor, talk to him and kill him. Loot him for the letter. He patrols the road between Brill and The Sepulcher |only Scourge Rogue
    note-ptBR Se vir Astor, fale com ele e mate-o. Saqueie-o para obter a carta. Ele patrulha a estrada entre Brill e The Sepulcher |only Scourge Rogue
    objective 1886/1 |only Scourge Rogue |opt
    note-enUS Talk to Deathstalker Erland to begin the escort
    note-ptBR Fale com Deathstalker Erland para iniciar a escolta
    note-enUS If he is not there, skip this quest for now
    note-ptBR Se ele não estiver lá, pule esta missão por enquanto
    accept 435 |noauto
step
    ifonquest 435
    path seq 1421 @1087.5,1379.11 @1087.5,1346.63 @1090.86,1313.31
    goto 1421 @1204.68,1290.07
    note-enUS Escort Erland safely to Rane Yorick
    note-ptBR Escolte Erland em segurança até Rane Yorick
    note-enUS Worgs can spawn on top of each other, eat and drink whenever you are able to
    note-ptBR Worgs podem surgir uns em cima dos outros, coma e beba sempre que puder
    objective 435/1
step
    ifcomplete 435
    goto 1421 @1204.68,1290.07
    note-enUS Talk to Rane Yorick
    note-ptBR Fale com Rane Yorick
    turnin 435
    accept 429
    accept 449
step
    goto 1421 @1204.68,1290.07
    note-enUS Talk to Rane Yorick
    note-ptBR Fale com Rane Yorick
    accept 429
step
    goto 1421 @715,1335.4
    note-enUS Kill Worgs. Loot them for their Hearts
    note-ptBR Mate Worgs. Saqueie-os para obter os corações
    collect 3164 3 |quest 429 |q 429/1 |opt
    note-enUS Kill Vile Vin Murlocs. Loot them for their [Murloc Eyes]
    note-ptBR Mate Vile Vin Murlocs. Saqueie-os para obter [Murloc Eyes]
    collect 730 3 |quest 91920 |q 91920/1
step
    goto 1421 @1090.44,1409.63
    note-enUS Talk to Deathstalker Erland to begin the escort
    note-ptBR Fale com Deathstalker Erland para iniciar a escolta
    accept 435 |noauto
step
    ifonquest 435
    path seq 1421 @1087.5,1379.11 @1087.5,1346.63 @1090.86,1313.31
    goto 1421 @1204.68,1290.07
    note-enUS Escort Erland safely to Rane Yorick
    note-ptBR Escolte Erland em segurança até Rane Yorick
    note-enUS Worgs can spawn on top of each other, eat and drink whenever you are able to
    note-ptBR Worgs podem surgir uns em cima dos outros, coma e beba sempre que puder
    objective 435/1
step
    path closest 1421 @1025.76,1384.71 @1099.68,1213.63 @998.46,1230.99 @955.2,1286.43 @925.38,1372.39 @1025.76,1384.71
    note-enUS Kill Worgs. Loot them for their Hearts
    note-ptBR Mate Worgs. Saqueie-os para obter os corações
    collect 3164 3 |quest 429 |q 429/1
step
    goto 1421 @1204.68,1290.07
    note-enUS Talk to Rane Yorick
    note-ptBR Fale com Rane Yorick
    turnin 435
    turnin 429
    accept 449
step
    goto 1421 @1593.6,554.23
    note-enUS Die and respawn at the Spirit Healer
    note-ptBR Morra e renasça no Spirit Healer
    note-enUS Talk to Dalar
    note-ptBR Fale com Dalar
    accept 421
step
    only !Mage !Priest
    goto 1421 @1599.9,552.83
    note-enUS Talk to Gwyn
    note-ptBR Fale com Gwyn
    vendor
    note-enUS Buy [Red-speckled Mushroom] from him
    note-ptBR Compre [Red-speckled Mushroom] dele
    note-enUS Do NOT sell your [Murloc Eyes]
    note-ptBR NÃO venda seus [Murloc Eyes]
    collect 4605 20 |quest 421 |q 421/1
step
    goto 1421 @1602.84,549.75
    note-enUS Talk to Edwin
    note-ptBR Fale com Edwin
    note-enUS Buy [Ice Cold Milk] from him |only Mage Warlock Priest Shaman Druid
    note-ptBR Compre [Ice Cold Milk] dele |only Mage Warlock Priest Shaman Druid
    vendor
    note-enUS Buy [Lesser Healing Potions] from him if they're up
    note-ptBR Compre [Lesser Healing Potions] dele, se estiverem disponíveis
    note-enUS Do NOT sell your [Murloc Eyes]
    note-ptBR NÃO venda seus [Murloc Eyes]
    collect 1179 20 |quest 421 |q 421/1 |only Mage Warlock Priest Shaman Druid
step
    only Scourge
    path seq 1421 @1602.84,520.63
    goto 1421 @1625.94,499.91
    note-enUS Talk to Allister and Podrig
    note-ptBR Fale com Allister e Podrig
    accept 477
    accept 6321
step
    goto 1421 @1602.84,520.63
    note-enUS Talk to Allister
    note-ptBR Fale com Allister
    accept 477
step
    path seq 1421 @1640.22,509.43 @1654.5,510.27 @1654.08,521.47
    goto 1421 @1625.94,522.31 2
    note-enUS Enter the crypt
    note-ptBR Entre na cripta
    note-enUS Talk to Hadrec in the crypt
    note-ptBR Fale com Hadrec na cripta
    turnin 449
    accept 3221
    accept 437
step
    ifonquest 445
    goto 1421 @1652.82,522.31
    note-enUS Talk to Renferrel
    note-ptBR Fale com Renferrel
    turnin 429
    turnin 445
    turnin 3221
    accept 1359
    accept 447
    accept 430
step
    goto 1421 @1652.82,522.31
    note-enUS Talk to Renferrel
    note-ptBR Fale com Renferrel
    turnin 429
    turnin 3221
    accept 1359
    accept 447
    accept 430
step
    path closest 1421 @1386.96,638.51 @1336.56,568.51 @1271.88,502.99 @1285.74,460.99 @1281.96,410.87 @1274.4,361.87 @1315.14,329.95 @1386.96,638.51
    note-enUS Kill Moonrage Whitescalps
    note-ptBR Mate Moonrage Whitescalps
    objective 421/1
step
    goto 1421 @1593.6,554.23
    note-enUS Talk to Dalar
    note-ptBR Fale com Dalar
    turnin 421
    accept 422
step
    path seq 1421 @1234.92,891.07 @1218.54,884.91 @1226.52,886.03
    goto 1421 @1231.14,866.99
    note-enUS Travel to Valgan's Field
    note-ptBR Vá até Valgan's Field
    note-enUS Enter the house and go to the second floor. Loot the Dusty Spellbooks on the ground
    note-ptBR Entre na casa e vá ao segundo andar. Saqueie os Dusty Spellbooks no chão
    objective 422/1
step
    path seq 1421 @1207.62,1293.71 @1220.64,1299.59 @1212.66,1298.19
    goto 1421 @1205.94,1314.15
    note-enUS Travel to The Ivar Patch
    note-ptBR Vá até The Ivar Patch
    note-enUS Talk to Quinn Yorick on the second floor of the house
    note-ptBR Fale com Quinn Yorick no segundo andar da casa
    turnin 430
    accept 91920
step
    goto 1421 @715,1335.4
    note-enUS Kill Vile Vin Murlocs. Loot them for their [Murloc Eyes]
    note-ptBR Mate Vile Vin Murlocs. Saqueie-os para obter [Murloc Eyes]
    collect 730 3 |quest 91920 |q 91920/1
step
    goto 1421 @1541.52,1078.39
    note-enUS Be careful! There may be a Son of Arugal in the area! This is a level 25 elite, steer clear from him!
    note-ptBR Cuidado! Pode haver um Son of Arugal na área! É um elite nível 25, fique longe dele!
    note-enUS Kill Bears. Loot them for their Hearts
    note-ptBR Mate ursos. Saqueie-os para obter os corações
    objective 447/1 |opt
    note-enUS Kill Rot Hide Gnolls around The Dead Field until Nightlash spawns. Kill and loot her for her Essence
    note-ptBR Mate Rot Hide Gnolls ao redor de The Dead Field até Nightlash aparecer. Mate-a e saqueie-a para obter a essência dela
    note-enUS They are immune to fear! |only Priest Warlock
    note-ptBR Eles são imunes a medo! |only Priest Warlock
    objective 437/1
    objective 437/2
step
    ifonquest 447
    goto 1421 @2064,1167.15
    note-enUS Kill Bears. Loot them for their Hearts
    note-ptBR Mate ursos. Saqueie-os para obter os corações
    objective 447/1 |opt
    note-enUS Kill Spiders. Loot them for their Blood
    note-ptBR Mate aranhas. Saqueie-as para obter o sangue
    note-enUS Be careful of Krethis Shadowspinner as it's impossibly difficult to kill her! |only !Mage !Warlock
    note-ptBR Cuidado com Krethis Shadowspinner, é quase impossível matá-la! |only !Mage !Warlock
    note-enUS Be careful of Krethis Shadowspinner as it's difficult but doable. She has a 130 damage shield on a 15s cooldown, and 110 damage instant shock ability |only Mage Warlock
    note-ptBR Cuidado com Krethis Shadowspinner, é difícil mas possível. Ela tem um escudo de 130 de dano com recarga de 15s e um choque instantâneo de 110 de dano |only Mage Warlock
    objective 447/2 |opt
    note-enUS Talk to Killian
    note-ptBR Fale com Killian
    vendor
    note-enUS Vendor trash
    note-ptBR Venda o lixo
step
    path closest 1421 @1924.14,1269.07 @1885.5,1218.95 @1951.86,1218.39 @1981.68,1209.15 @2022.42,1183.95 @2016.12,1239.39 @1977.48,1260.67 @1944.3,1279.43 @1924.14,1269.07
    note-enUS Kill Spiders. Loot them for their Blood
    note-ptBR Mate aranhas. Saqueie-as para obter o sangue
    note-enUS Be careful of Krethis Shadowspinner as it's impossibly difficult to kill her! |only !Mage !Warlock
    note-ptBR Cuidado com Krethis Shadowspinner, é quase impossível matá-la! |only !Mage !Warlock
    note-enUS Be careful of Krethis Shadowspinner as it's difficult but doable. She has a 130 damage shield on a 15s cooldown, and 110 damage instant shock ability |only Mage Warlock
    note-ptBR Cuidado com Krethis Shadowspinner, é difícil mas possível. Ela tem um escudo de 130 de dano com recarga de 15s e um choque instantâneo de 110 de dano |only Mage Warlock
    objective 447/2
step
    path closest 1421 @1702.8,1060.47 @1712.46,1116.75 @1702.8,1060.47 @1670.88,1001.11 @1573.86,971.15 @1514.64,921.31
    note-enUS Finish killing Bears. Loot them for their Hearts
    note-ptBR Termine de matar Ursos. Saqueie-os para obter os Corações
    objective 447/1
step
    path seq 1421 @1538.58,511.39
    goto 1421 @1593.6,554.23
    note-enUS Travel back to The Sepulcher
    note-ptBR Volte para The Sepulcher
    note-enUS Talk to Dalar
    note-ptBR Fale com Dalar
    turnin 422
    accept 423
step
    path seq 1421 @1640.22,509.43 @1654.5,510.27 @1654.08,521.47
    goto 1421 @1625.94,522.31 2
    note-enUS Enter the crypt
    note-ptBR Entre na cripta
    note-enUS Talk to Hadrec in the crypt
    note-ptBR Fale com Hadrec na cripta
    turnin 437
    accept 438
step
    goto 1421 @1652.6,522.4
    note-enUS Talk to Apothecary Renferrel
    note-ptBR Fale com Apothecary Renferrel
    turnin 91920
    accept 91921
step
    only !Mage !Priest
    goto 1421 @1599.9,552.83
    note-enUS Talk to Gwyn
    note-ptBR Fale com Gwyn
    note-enUS Buy [Red-speckled Mushrooms] from her
    note-ptBR Compre [Red-speckled Mushrooms] dela
    vendor
    note-enUS Vendor trash
    note-ptBR Venda o lixo
    collect 4605 20 |quest 423 |q 423/1
step
    goto 1421 @1602.84,549.75
    note-enUS Talk to Edwin
    note-ptBR Fale com Edwin
    note-enUS Buy [Ice Cold Milk] from him |only Warlock Priest Shaman Druid
    note-ptBR Compre [Ice Cold Milk] dele |only Warlock Priest Shaman Druid
    vendor
    note-enUS Buy [Lesser Healing Potions] from him if they're up
    note-ptBR Compre [Lesser Healing Potions] dele, se estiverem disponíveis
    collect 1179 20 |quest 423 |q 423/1 |only Warlock Priest Shaman Druid
step
    only Warlock Mage Priest
    goto 1421 @1568.4,567.95
    note-enUS Talk to Andrea
    note-ptBR Fale com Andrea
    vendor
    note-enUS Buy [Wise Man's Belt] from her if it's up
    note-ptBR Compre [Wise Man's Belt] dela, se estiver disponível
step
    only Rogue
    goto 1421 @1576.38,571.59
    note-enUS Talk to Alexandre
    note-ptBR Fale com Alexandre
    vendor
    note-enUS Buy [Agile Boots] from her if it's up
    note-ptBR Compre [Agile Boots] dela, se estiver disponível
step
    path closest 1421 @1593.6,597.91 @1582.68,640.47 @1563.78,738.75 @1609.14,798.67 @1592.76,783.27 @1622.58,760.03 @1660.38,795.31 @1716.24,819.67 @1782.6,819.95 @1813.68,850.47 @1842.24,907.87 @1870.8,990.19 @1851.06,1019.03 @1830.48,1052.63 @1781.34,1015.39 @1707.42,1008.39 @1722.12,952.67 @1720.86,875.39 @1685.58,847.11 @1609.14,798.67
    note-enUS Equip the [Wise Man's Belt] |only Warlock Mage Priest
    note-ptBR Equipe o [Wise Man's Belt] |only Warlock Mage Priest
    use 4786 |only Warlock Mage Priest |opt
    note-enUS Equip the [Agile Boots] |only Rogue
    note-ptBR Equipe as [Agile Boots] |only Rogue
    use 4788 |only Rogue |opt
    note-enUS Travel down the hill-c:Silverpine Forest,44.91,33.14
    note-ptBR Desça a colina-c:Silverpine Forest,44.91,33.14
    note-enUS Be careful! There may be a Son of Arugal in the area! This is a level 25 elite, steer clear from him!
    note-ptBR Cuidado! Pode haver um Son of Arugal na área! É um elite nível 25, fique longe dele!
    note-enUS Kill Moonrage Gluttons and Moonrage Darksouls. Loot them for their Shackles
    note-ptBR Mate Moonrage Gluttons e Moonrage Darksouls. Saqueie-os para obter as algemas
    note-enUS Be careful! Moonrage Darksouls enrage when they are below 25% health. Kill them quickly when they are low
    note-ptBR Cuidado! Moonrage Darksouls se enfurecem abaixo de 25% de vida. Mate-os rápido quando estiverem com pouca vida
    objective 423/1
    objective 423/2
step
    path seq 1421 @1207.62,1293.71 @1220.64,1299.59 @1212.66,1298.19
    goto 1421 @1205.94,1314.15
    note-enUS Talk to Quinn Yorick on the second floor of the house
    note-ptBR Fale com Quinn Yorick no segundo andar da casa
    turnin 91921
step
    goto 1421 @1204.68,1290.07
    note-enUS Talk to Rane Yorick outside
    note-ptBR Fale com Rane Yorick lá fora
    accept 425
step
    path seq 1421 @1265.58,1274.11 @1270.62,1279.71
    goto 1421 @1285.32,1277.19
    note-enUS Kill Ivar the Foul. Loot him for his Head
    note-ptBR Mate Ivar the Foul. Saqueie-o para obter a cabeça dele
    note-enUS Ivar is protected by two Ravenclaw Slaves inside the barn. You can solopull one of them as he patrols forward
    note-ptBR Ivar é protegido por dois Ravenclaw Slaves dentro do celeiro. Você pode puxar um deles sozinho quando ele patrulhar para a frente
    note-enUS They are immune to fear! |only Priest Warlock
    note-ptBR Eles são imunes a medo! |only Priest Warlock
    objective 425/1
step
    goto 1421 @1204.68,1290.07
    note-enUS Talk to Rane Yorick
    note-ptBR Fale com Rane Yorick
    turnin 425
step
    goto 1421 @997.62,692.55
    note-enUS Click the Boat at the side of the docks
    note-ptBR Clique no Barco ao lado das docas
    turnin 438
    accept 439
step
    path seq 1421 @1538.58,511.39
    goto 1421 @1593.6,554.23
    note-enUS Travel back to The Sepulcher
    note-ptBR Volte para The Sepulcher
    note-enUS Talk to Dalar
    note-ptBR Fale com Dalar
    turnin 423
    accept 424
step
    path seq 1421 @1640.22,509.43 @1654.5,510.27 @1654.08,521.47
    goto 1421 @1625.94,522.31 2
    note-enUS Enter the crypt
    note-ptBR Entre na cripta
    note-enUS Talk to Hadrec in the crypt
    note-ptBR Fale com Hadrec na cripta
    turnin 439
step
    goto 1421 @1077.84,380.35 10
    note-enUS Enter the Mine-c:Silverpine Forest,56.48,45.94
    note-ptBR Entre na mina-c:Silverpine Forest,56.48,45.94
    note-enUS Kill Grimson the Pale. Loot him for his Head
    note-ptBR Mate Grimson the Pale. Saqueie-o para obter a cabeça dele
    objective 424/1
step
    goto 1421 @1354.62,-22.57
    note-enUS Click the Crate in the camp
    note-ptBR Clique na Crate no acampamento
    note-enUS Be careful, these mobs cast [Frostbolt]
    note-ptBR Cuidado, esses mobs lançam [Frostbolt]
    turnin 477
    accept 478
step
    path seq 1421 @1602.84,520.63
    goto 1421 @1593.6,554.23
    note-enUS Die and respawn at the Spirit Healer
    note-ptBR Morra e renasça no Spirit Healer
    note-enUS Talk to Allister and Dalar
    note-ptBR Fale com Allister e Dalar
    turnin 478
    accept 481
    turnin 424
    turnin 481
    accept 482
step
    goto 1421 @1602.84,520.63
    note-enUS Talk to Allister
    note-ptBR Fale com Allister
    turnin 482
step
    goto 1421 @1533.96,474.43
    note-enUS Talk to Karos
    note-ptBR Fale com Karos
    turnin 6321 |only Scourge
    accept 6323 |only Scourge
    fp |only !Scourge
    note-enUS Get the Sepulcher flight path |only !Scourge
    note-ptBR Pegue o ponto de voo de Sepulcher |only !Scourge
    fly 1458 |only !Scourge
    note-enUS Fly to the Undercity |only !Scourge
    note-ptBR Voe para Undercity |only !Scourge
step
    only Scourge
    hearth
    note-enUS Hearth to the Undercity
    note-ptBR Use a pedra de regresso para Undercity
    use 6948
step
    only Scourge
    goto 1458 @283.37,1610.32
    note-enUS Talk to Gordon
    note-ptBR Fale com Gordon
    turnin 6323
    accept 6322
step
    only Scourge
    goto 1458 @266.2,1567.17
    note-enUS Equip the [Scimitar] |only Rogue
    note-ptBR Equipe a [Scimitar] |only Rogue
    use 2027 |only Rogue |opt
    note-enUS Talk to Michael
    note-ptBR Fale com Michael
    turnin 6322
step
    only Scourge Warrior
    ifdungeon RFC
    goto 1458 @418.35,1767.02
    note-enUS Talk to Baltus Fowler
    note-ptBR Fale com Baltus Fowler
    train 285
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Rogue Warrior
    goto 1458 @171.03,1524.8
    note-enUS Talk to Mary in the Rogues' Quarter
    note-ptBR Fale com Mary no Rogues' Quarter
    train 3273
    note-enUS Train [First Aid]
    note-ptBR Treine [First Aid]
step
    only Rogue Warrior
    goto 1458 @171.03,1524.8
    skill firstaid 40
    note-enUS Create [Linen Bandages] until your skill is 40 or higher
    note-ptBR Crie [Linen Bandages] até sua habilidade chegar a 40 ou mais
step
    only Rogue Warrior
    goto 1458 @171.03,1524.8
    note-enUS Talk to Mary in the Rogues' Quarter
    note-ptBR Fale com Mary no Rogues' Quarter
    train 3276
    note-enUS Train [Heavy Linen Bandage]
    note-ptBR Treine [Heavy Linen Bandage]
step
    only Rogue Warrior
    goto 1458 @171.03,1524.8
    skill firstaid 50
    note-enUS Create [Heavy Linen Bandages] until your skill is 50 or higher
    note-ptBR Crie [Heavy Linen Bandages] até sua habilidade chegar a 50 ou mais
step
    only Rogue Warrior
    goto 1458 @171.03,1524.8
    note-enUS Talk to Mary in the Rogues' Quarter
    note-ptBR Fale com Mary no Rogues' Quarter
    train 3274
    note-enUS Train Journeyman First Aid
    note-ptBR Treine Journeyman First Aid
step
    only Scourge Rogue
    ifcomplete 1886
    goto 1458 @71.92,1435.63
    note-enUS Talk to Mennet
    note-ptBR Fale com Mennet
    turnin 1886
    accept 1898
step
    only Scourge Rogue
    ifturnedin 1886
    goto 1458 @71.92,1435.63
    note-enUS Talk to Mennet
    note-ptBR Fale com Mennet
    accept 1898
step
    only Scourge Rogue
    goto 1458 @68.66,1416.69
    note-enUS Talk to Carolyn
    note-ptBR Fale com Carolyn
    train 1758
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Scourge Rogue
    goto 1458 @68.66,1416.69
    note-enUS Talk to Carolyn
    note-ptBR Fale com Carolyn
    train 6761
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Scourge Rogue
    ifdungeon RFC
    goto 1458 @68.66,1416.69
    note-enUS Talk to Carolyn
    note-ptBR Fale com Carolyn
    train 1758
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Scourge Rogue
    ifdungeon RFC
    goto 1458 @68.66,1416.69
    note-enUS Talk to Carolyn
    note-ptBR Fale com Carolyn
    train 6761
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Scourge Rogue
    ifturnedin 1886
    goto 1458 @347.07,1389.48
    note-enUS Talk to Andron
    note-ptBR Fale com Andron
    turnin 1898
    accept 1899
step
    only Scourge Rogue
    ifturnedin 1886
    goto 1458 @341.41,1385.9
    note-enUS Loot Andron's Bookshelf behind Andron
    note-ptBR Saqueie a Andron's Bookshelf atrás de Andron
    objective 1899/1
step
    goto 1458 @310.9,1528.1
    note-enUS Talk to Alessandro Luca
    note-ptBR Fale com Alessandro Luca
    accept 97891
step
    goto 1458 54.38,73.01 50 |only !Scourge !Rogue
    path seq 1458 52.84,77.72 52.27,79.25 51.28,79.92 49.69,78.9 47.95,76.17 @404.63,1434.67
    goto 1458 @426.1,1403.6
    note-enUS Travel toward Faranell in The Apothecarium
    note-ptBR Vá em direção a Faranell em The Apothecarium
    note-enUS Talk to Doctor Martin Felben
    note-ptBR Fale com Doctor Martin Felben
    objective 97891/1
    turnin 97891
step
    path seq 1458 @404.63,1434.67
    goto 1458 @391.97,1442.87
    note-enUS Talk to Faranell and Zinge in The Apothecarium
    note-ptBR Fale com Faranell e Zinge em The Apothecarium
    turnin 447
    turnin 1359
    accept 1358
step
    only Scourge Rogue
    ifturnedin 1886
    goto 1458 @71.83,1435.51
    note-enUS Talk to Mennet
    note-ptBR Fale com Mennet
    turnin 1899
    accept 1978
step
    only Scourge Rogue
    ifdungeon RFC
    goto 1458 @68.66,1416.69
    note-enUS Talk to Carolyn
    note-ptBR Fale com Carolyn
    train 1758
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Scourge Rogue
    ifdungeon RFC
    goto 1458 @68.66,1416.69
    note-enUS Talk to Carolyn
    note-ptBR Fale com Carolyn
    train 6761
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Scourge Rogue
    ifturnedin 1886
    path seq 1420 @373.6,1464.85
    goto 1420 @333.38,1287.72
    note-enUS Talk to Varimathras
    note-ptBR Fale com Varimathras
    turnin 1978
step
    only !Rogue !Warrior
    goto 1458 @171.03,1524.8
    skill firstaid 40
    note-enUS Create [Linen Bandages] until your skill is 40 or higher
    note-ptBR Crie [Linen Bandages] até sua habilidade chegar a 40 ou mais
step
    only !Rogue !Warrior
    goto 1458 @171.03,1524.8
    note-enUS Talk to Mary in the Rogues' Quarter
    note-ptBR Fale com Mary no Rogues' Quarter
    train 3276
    note-enUS Train [Heavy Linen Bandage]
    note-ptBR Treine [Heavy Linen Bandage]
step
    only !Rogue !Warrior
    goto 1458 @171.03,1524.8
    skill firstaid 50
    note-enUS Create [Heavy Linen Bandages] until your skill is 50 or higher
    note-ptBR Crie [Heavy Linen Bandages] até sua habilidade chegar a 50 ou mais
step
    only !Rogue !Warrior
    goto 1458 @171.03,1524.8
    note-enUS Talk to Mary in the Rogues' Quarter
    note-ptBR Fale com Mary no Rogues' Quarter
    train 3274
    note-enUS Train Journeyman First Aid
    note-ptBR Treine Journeyman First Aid
step
    only Mage
    goto 1458 @56.38,1813.81
    note-enUS Talk to Anastasia
    note-ptBR Fale com Anastasia
    train 2137
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Mage
    goto 1458 @56.38,1813.81
    note-enUS Talk to Anastasia
    note-ptBR Fale com Anastasia
    train 2120
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Scourge Warlock
    goto 1458 @20.02,1776.42
    note-enUS Talk to Richard
    note-ptBR Fale com Richard
    train 6222
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Scourge Warlock
    goto 1458 @20.02,1776.42
    note-enUS Talk to Richard
    note-ptBR Fale com Richard
    train 1455
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Scourge Priest
    ifdungeon RFC
    goto 1458 @403.29,1760.61
    note-enUS Equip the [Smoldering Wand] when you are level 15 |only Priest Mage Warlock
    note-ptBR Equipe a [Smoldering Wand] quando estiver no nível 15 |only Priest Mage Warlock
    use 5208 |only Priest Mage Warlock |opt
    note-enUS Equip the [Smoldering Wand] |only Priest Mage Warlock
    note-ptBR Equipe a [Smoldering Wand] |only Priest Mage Warlock
    use 5208 |only Priest Mage Warlock |opt
    note-enUS Talk to Aelthalyste
    note-ptBR Fale com Aelthalyste
    turnin 5658
    train 2652
step
    only !Scourge Priest
    ifdungeon RFC
    ifonquest 5660
    goto 1458 @403.29,1760.61
    note-enUS Talk to Aelthalyste
    note-ptBR Fale com Aelthalyste
    turnin 5660
    train 2652
step
    only Scourge Priest
    ifdungeon RFC
    goto 1458 @416.91,1757.03
    note-enUS Talk to Lazarus
    note-ptBR Fale com Lazarus
    train 6074
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Scourge Priest
    ifdungeon RFC
    goto 1458 @416.91,1757.03
    note-enUS Talk to Lazarus
    note-ptBR Fale com Lazarus
    train 8102
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Scourge
    goto 1420 @235.32,1883.89 50 |only Scourge
    path seq 1420 @278.7,2071.27 @253.85,2059.82 @264.7,2053.5 @271.02,2064.94 @259.72,2068.86 @261.53,2055 @299.04,2069.46
    goto 1420 @279.61,2441.21
    note-enUS Abandon The Deathstalkers, there's no opportunity left to do it |only Scourge Rogue
    note-ptBR Abandone The Deathstalkers, não haverá mais oportunidade de fazê-la |only Scourge Rogue
    abandon 1886 |only Scourge Rogue |opt
    note-enUS Abandon The Deathstalkers |only Scourge Rogue
    note-ptBR Abandone The Deathstalkers |only Scourge Rogue
    note-enUS Now you should be looking for a group to Ragefire Chasm |only Scourge Skyborne
    note-ptBR Agora você deve procurar um grupo para Ragefire Chasm |only Scourge Skyborne
    zone 1420 |only Scourge |opt
    note-enUS Exit Undercity |only Scourge
    note-ptBR Saia de Undercity |only Scourge
    zone 1411
    note-enUS Take the Zeppelin to Durotar
    note-ptBR Pegue o zepelim para Durotar
    note-enUS Make Sharpening Stones/Bandages while you wait |only Warrior Rogue
    note-ptBR Faça Sharpening Stones/ataduras enquanto espera |only Warrior Rogue
    note-enUS Conjure Food/water while you wait |only Mage
    note-ptBR Conjure comida/água enquanto espera |only Mage
step
    only Skyborne Druid
    note-enUS Cast [Teleport: Moonglade] |only Druid
    note-ptBR Lance [Teleport: Moonglade] |only Druid
    note-enUS Talk to Dendrite
    note-ptBR Fale com Dendrite
    turnin 94913
step
    only Druid
    goto 1450 @-2593.82,7866.9
    note-enUS Talk to Loganaar
    note-ptBR Fale com Loganaar
    train 5178
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Druid
    goto 1450 @-2593.82,7866.9
    note-enUS Talk to Loganaar
    note-ptBR Fale com Loganaar
    train 8925
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Skyborne
    hearth
    note-enUS Hearth to Orgrimmar
    note-ptBR Use a pedra de regresso para Orgrimmar
    use 6948
step
    only Scourge
    ifdungeon RFC
    goto 1454 @-4367.46,1405.44 50 |only Scourge
    goto 1454 @-4313.6,1676.24
    zone 1454 |only Scourge |opt
    note-enUS Travel to Orgrimmar |only Scourge
    note-ptBR Vá até Orgrimmar |only Scourge
    note-enUS Talk to Doras
    note-ptBR Fale com Doras
    note-enUS Don't fly anywhere!
    note-ptBR Não voe para lugar nenhum!
    fp
    note-enUS Get the Orgrimmar flight path
    note-ptBR Pegue o ponto de voo de Orgrimmar
step
    only Scourge Skyborne
    ifdungeon RFC
    goto 1454 @-4125.79,1920.1
    note-enUS Talk to Thrall
    note-ptBR Fale com Thrall
    accept 5726
step
    only Scourge Skyborne
    ifdungeon RFC
    goto 1411 @-4769.1,1484.39
    note-enUS Kill Burning Blade mobs in Skull Rock until Lieutenant's Insignia drops
    note-ptBR Mate mobs Burning Blade em Skull Rock até Lieutenant's Insignia dropar
    objective 5726/1
step
    only Scourge Skyborne
    ifdungeon RFC
    goto 1454 @-4125.79,1920.1
    note-enUS Talk to Thrall
    note-ptBR Fale com Thrall
    turnin 5726
    accept 5727
step
    only Scourge Skyborne
    ifdungeon RFC
    goto 1454 @-4376.29,1802.43
    note-enUS Talk to Neeru Fireblade
    note-ptBR Fale com Neeru Fireblade
    accept 5761
step
    only Scourge Skyborne
    ifdungeon RFC
    goto 1454 @-4376.29,1802.43
    note-enUS Talk to Neeru Fireblade
    note-ptBR Fale com Neeru Fireblade
    objective 5727/1
step
    only Scourge Skyborne
    ifdungeon RFC
    goto 1454 @-4125.79,1920.1
    note-enUS Talk to Thrall
    note-ptBR Fale com Thrall
    turnin 5727
    accept 5728
step
    only Scourge Skyborne
    ifdungeon RFC
    goto 1454 @-4420.76,1815.8
    note-enUS Destroy [Lieutenant's Insignia] as you no longer need it |only Scourge Skyborne
    note-ptBR Destrua [Lieutenant's Insignia], pois não é mais necessário |only Scourge Skyborne
    note-enUS Enter the RFC Instance portal. Zone in
    note-ptBR Entre no portal da instância RFC. Entre na instância
step
    only Scourge Skyborne
    ifdungeon RFC
    note-enUS If possible, have party members share the following quests
    note-ptBR Se possível, peça aos membros do grupo que compartilhem as seguintes missões
    accept 5722
    accept 5723
step
    only Scourge Skyborne
    ifonquest 5722
    ifdungeon RFC
    note-enUS Kill Ragefire Troggs and Ragefire Shamans |only Scourge Skyborne
    note-ptBR Mate Ragefire Troggs e Ragefire Shamans |only Scourge Skyborne
    objective 5723/1 |only Scourge Skyborne |opt
    objective 5723/2 |only Scourge Skyborne |opt
    note-enUS Talk to Maur
    note-ptBR Fale com Maur
    turnin 5722
    accept 5724
step
    only Scourge Skyborne
    ifturnedin 5722
    ifdungeon RFC
    note-enUS Talk to Maur
    note-ptBR Fale com Maur
    accept 5724
step
    only Scourge Skyborne
    ifonquest 5723
    ifdungeon RFC
    note-enUS Kill Ragefire Troggs and Ragefire Shamans
    note-ptBR Mate Ragefire Troggs e Ragefire Shamans
    objective 5723/1
    objective 5723/2
step
    only Scourge Skyborne
    ifonquest 5761
    ifdungeon RFC
    note-enUS Kill Searing Blade Cultists and Searing Blade Warlocks. Loot them for the Spells of Shadow and Incantations from the Nether |only Scourge Skyborne
    note-ptBR Mate Searing Blade Cultists e Searing Blade Warlocks. Saqueie-os para obter Spells of Shadow e Incantations from the Nether |only Scourge Skyborne
    objective 5725/1 |only Scourge Skyborne |opt
    objective 5725/2 |only Scourge Skyborne |opt
    note-enUS Kill Taragaman the Hungerer. Loot him for his Heart
    note-ptBR Mate Taragaman the Hungerer. Saqueie-o para obter Heart
    objective 5761/1
step
    only Scourge Skyborne
    ifonquest 5728
    ifdungeon RFC
    note-enUS Kill Bazzalan and Jergosh the Invoker
    note-ptBR Mate Bazzalan e Jergosh the Invoker
    objective 5728/1
    objective 5728/2
step
    only Scourge Skyborne
    ifonquest 5725
    ifdungeon RFC
    note-enUS Kill Searing Blade Cultists and Searing Blade Warlocks. Loot them for the Spells of Shadow and Incantations from the Nether
    note-ptBR Mate Searing Blade Cultists e Searing Blade Warlocks. Saqueie-os para obter Spells of Shadow e Incantations from the Nether
    objective 5725/1
    objective 5725/2
step
    only Scourge Skyborne
    ifcomplete 5761
    ifdungeon RFC
    goto 1454 @-4376.29,1802.43
    note-enUS Talk to Neeru Fireblade
    note-ptBR Fale com Neeru Fireblade
    turnin 5761
step
    only Scourge Skyborne
    ifcomplete 5728
    ifdungeon RFC
    goto 1454 @-4125.79,1920.1
    note-enUS Talk to Thrall
    note-ptBR Fale com Thrall
    turnin 5728
    accept 5729
step
    only Scourge Skyborne
    ifturnedin 5728
    ifdungeon RFC
    goto 1454 @-4125.79,1920.1
    note-enUS Talk to Thrall
    note-ptBR Fale com Thrall
    accept 5729
step
    only Scourge Skyborne
    ifdungeon RFC
    ifturnedin 5728
    goto 1454 @-4376.29,1802.43
    note-enUS Talk to Neeru Fireblade
    note-ptBR Fale com Neeru Fireblade
    turnin 5729
    accept 5730
step
    only Scourge Skyborne
    ifturnedin 5728
    ifdungeon RFC
    goto 1454 @-4125.79,1920.1
    note-enUS Talk to Thrall
    note-ptBR Fale com Thrall
    turnin 5730
step
    only Skyborne
    ifonquest 5724
    ifcomplete 5723
    ifdungeon RFC
    goto 1456 @-212.71,-1065.01 80 |only Skyborne
    goto 1456 @-218.13,-1055.97
    note-enUS Talk to Doras |only Skyborne
    note-ptBR Fale com Doras |only Skyborne
    fly 1456 |only Skyborne |opt
    note-enUS Fly to Thunder Bluff |only Skyborne
    note-ptBR Voe para Thunder Bluff |only Skyborne
    note-enUS Travel to the Elder Rise |only Skyborne
    note-ptBR Vá até Elder Rise |only Skyborne
    note-enUS Talk to Rahauro
    note-ptBR Fale com Rahauro
    turnin 5724
    turnin 5723
step
    only Skyborne
    ifonquest 5724
    ifdungeon RFC
    goto 1456 @-218.13,-1055.97
    note-enUS Talk to Rahauro
    note-ptBR Fale com Rahauro
    turnin 5724
step
    only !Scourge !Skyborne
    goto 1456 47,49.82 |only Skyborne
    hearth |only Skyborne |opt
    note-enUS Hearth to Orgrimmar |only Skyborne
    note-ptBR Use a pedra de regresso para Orgrimmar |only Skyborne
    use 6948 |only Skyborne |opt
    note-enUS Talk to Tal |only Skyborne
    note-ptBR Fale com Tal |only Skyborne
    fly 1454 |only Skyborne |opt
    note-enUS Fly to the Orgrimmar |only Skyborne
    note-ptBR Voe para Orgrimmar |only Skyborne
    note-enUS Travel to Razor Hill |only Scourge Skyborne
    note-ptBR Vá até Razor Hill |only Scourge Skyborne
    hearth
    note-enUS Hearth to Razor Hill
    note-ptBR Use a pedra de regresso para Razor Hill
    use 6948
step
    only Rogue
    goto 1411 @-4710.94,268.26
    note-enUS Talk to Kaplak
    note-ptBR Fale com Kaplak
    train 1758
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Rogue
    goto 1411 @-4710.94,268.26
    note-enUS Talk to Kaplak
    note-ptBR Fale com Kaplak
    train 6761
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Priest
    goto 1411 @-4831.5,295.05
    note-enUS Talk to Tai'jin
    note-ptBR Fale com Tai'jin
    train 8122
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Priest
    goto 1411 @-4831.5,295.05
    note-enUS Talk to Tai'jin
    note-ptBR Fale com Tai'jin
    train 8102
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warrior
    goto 1411 @-4827.27,311.62
    note-enUS Talk to Tarshaw
    note-ptBR Fale com Tarshaw
    train 285
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warlock
    goto 1411 @-4837.31,356.03
    note-enUS Talk to Dhugru
    note-ptBR Fale com Dhugru
    train 6222
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    only Warlock
    goto 1411 @-4837.31,356.03
    note-enUS Talk to Dhugru
    note-ptBR Fale com Dhugru
    train 1455
    note-enUS Train your class spells
    note-ptBR Treine your class spells
step
    goto 1411 @-4648.55,271.43
    note-enUS Talk to Takrin
    note-ptBR Fale com Takrin
    accept 840
step
    goto 1413 @-3687.11,303.14
    note-enUS Travel to Far Watch Post
    note-ptBR Vá até Far Watch Post
    note-enUS Talk to Kargal
    note-ptBR Fale com Kargal
    turnin 840
    accept 842
step
    only !Scourge !Skyborne
    ifturnedin 829
    goto 1413 @-3694.2,256.52
    note-enUS Talk to Ak'Zeloth
    note-ptBR Fale com Ak'Zeloth
    turnin 809
    accept 924
step
    only !Scourge !Skyborne
    ifonquest 924
    goto 1413 @-3694.2,259.22
    note-enUS Loot the [Flawed Power Stone] next to Ak'Zeloth. This item has a 30 minute timer, so be sure to be quick
    note-ptBR Saqueie a [Flawed Power Stone] ao lado de Ak'Zeloth. Este item tem um cronômetro de 30 minutos, então seja rápido
    turnin 926
]==])
