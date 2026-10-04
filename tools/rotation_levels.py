"""Gera Azimute_Rotation/Levels.lua: nível em que cada feitiço das rotações é
aprendido no treinador, a partir do What's Training (MIT).

Também confere Data.lua: todo passo que não é talento nem de missão precisa
existir nos dados do treinador (pega ID errado).

Uso: python tools/rotation_levels.py
"""
import os
import re
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
WT = os.path.join(ROOT, "tools", "sources", "whatstraining", "Vanilla")
DATA = os.path.join(ROOT, "Azimute_Rotation", "Data.lua")
OUT = os.path.join(ROOT, "Azimute_Rotation", "Levels.lua")
FILES = {"WARRIOR": "Warrior", "ROGUE": "Rogue", "HUNTER": "Hunter", "MAGE": "Mage", "PRIEST": "Priest",
         "WARLOCK": "Warlock", "PALADIN": "Paladin", "SHAMAN": "Shaman", "DRUID": "Druid"}
# Sem treinador: todo personagem da classe já tem.
ALWAYS = {75, 5019, 2973}  # Tiro automático, Atirar (varinha), Golpe do Raptor 1 (caçador começa com ele)
# Feitiços com que o personagem começa. Conferidos abaixo: o posto 2 deles no
# What's Training pede este ID ("requiredIds = {ID}").
START = {78, 1752, 2098, 168, 133, 585, 686, 635, 21084, 403, 331, 5176, 5185}


def trainer_levels(source):
    body = source[source.index("wt.SpellsByLevel"):]
    levels = {}
    level = None
    for line in body.split("\n"):
        m = re.match(r"\s*\[(\d+)\]\s*=", line)
        if m:
            level = int(m.group(1))
        for spell in re.findall(r"\bid\s*=\s*(\d+)", line):
            spell = int(spell)
            if level is not None and (spell not in levels or level < levels[spell]):
                levels[spell] = level
    return levels


def main():
    data = open(DATA, encoding="utf-8").read()
    errors = []
    out = {}
    for cls, name in FILES.items():
        source = open(os.path.join(WT, name + ".lua"), encoding="utf-8").read()
        start = data.index("R.ROTATIONS.%s = {" % cls)
        end = data.find("\nR.ROTATIONS.", start + 10)
        block = data[start:end if end > 0 else len(data)]
        levels = trainer_levels(source)
        for m in re.finditer(r"\{ (\d+), \"(\w+)\"([^\n]*)", block):
            spell, rest = int(m.group(1)), m.group(3)
            if "talent = true" in rest or "quest = " in rest:
                continue
            if spell in ALWAYS:
                level = 1
            elif spell in START:
                level = 1
                if ("requiredIds = {%d}" % spell) not in source:
                    errors.append("%s: feitiço inicial %d não aparece como posto 1" % (cls, spell))
            else:
                level = levels.get(spell)
            if level is None:
                errors.append("%s: feitiço %d não está no treinador" % (cls, spell))
                continue
            out.setdefault(cls, {})[spell] = level
    if errors:
        print("\n".join(sorted(set(errors))))
        sys.exit(1)
    lines = [
        "-- GERADO por tools/rotation_levels.py: nível em que cada feitiço das rotações",
        "-- é aprendido no treinador. Fonte: What's Training, (c) fusionpit, licença MIT",
        "-- (https://github.com/fusionpit/WhatsTraining, ver LICENSE-WhatsTraining.txt).",
        "local addonName, R = ...",
        "",
        "R.LEVELS = {",
    ]
    for cls in FILES:
        items = ", ".join("[%d] = %d" % (k, v) for k, v in sorted(out.get(cls, {}).items()))
        lines.append("    %s = { %s }," % (cls, items))
    lines.append("}")
    open(OUT, "w", encoding="utf-8", newline="\n").write("\n".join(lines) + "\n")
    print("ok: %d feitiços" % sum(len(v) for v in out.values()))


main()
