"""Converte guias do formato Guidelime (ex.: Guidelime_Zarant, GPL-3.0) para o Azimute.

O resultado é um pacote SEPARADO (Azimute_Guides_Classic) sob GPL-3.0, com a licença
e os créditos do autor. Não misture com o pacote do RestedXP (CC BY-NC-SA): as duas
licenças não são compatíveis entre si.

Uso:
    python tools/guidelime2azimute.py <pasta do Guidelime_Zarant> <pasta de saída> [nível mínimo]

Formato Guidelime (uma linha = um passo):
    [N30-32Hillsbrad/Arathi] [NX32-34Shimmering Flats] [GA Horde]  cabeçalho
    [G61.6,20.8Hillsbrad Foothills] ir até   [L x,y Zona] idem
    [QA544 Nome] aceitar  [QC553,1-] objetivo  [QT544 Nome] entregar
    [A Hunter,Warrior] condição   [O] opcional   [OC] feito no caminho (funde no próximo)
    [F Tarren Mill] voar   [P] caminho de voo   [H] pedra   [S] definir pedra
    [V] vendedor  [R] reparar  [T] treinador  [XP30] nível
    "\\\\" = quebra de linha no texto;  "-->>..." = função do addon Zarant (ignorada)
"""

import os
import re
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import rxp2azimute as rxp  # zonas, condições, traduções e utilitários compartilhados

NL = chr(10)

EXTRA_ALIASES = {
    "arathi": 1417, "1kneedles": 1441, "shimmering flats": 1441, "desolace": 1443,
    "swamp": 1435, "alterac": 1416, "dustwallow": 1445, "badlands": 1418, "feralas": 1444,
    "tanaris": 1446, "hinterlands": 1425, "wpl": 1422, "epl": 1423, "felwood": 1448,
    "azshara": 1447, "ungoro": 1449, "winterspring": 1452, "bs": 1428, "sg": 1427,
    "bl": 1419, "searing gorge": 1427, "burning steppes": 1428, "blasted lands": 1419,
    "lochmodan": 1432, "stranglethorn": 1434, "thousandneedles": 1441, "ungorocrater": 1449,
}
rxp.ZONE_ALIASES.update(EXTRA_ALIASES)

TAG = re.compile(r"\[([A-Z]+)\s*([^\]]*)\]")
VERB_WORDS = re.compile(r"\b(accept|turn in|collect|kill|finish off|fly to|complete)\b", re.I)


def zone_id(name):
    key = name.strip().lower()
    return rxp.ZONES_LOWER.get(key) or rxp.ZONE_ALIASES.get(key)


LAST_ZONE = [None]  # no Guidelime, um ponto sem zona usa a zona do ponto anterior


def parse_goto(value):
    """'61.6,20.8Hillsbrad Foothills', '44.8,30.2,50Hillsbrad Foothills' ou '61.6,20.8' (zona anterior)."""
    m = re.match(r"^\s*(\d+\.?\d*)\s*,\s*(\d+\.?\d*)(?:\s*,\s*(\d+))?\s*,?\s*(.*)$", value)
    if not m:
        return None
    zone_text = m.group(4).strip()
    map_id = zone_id(zone_text) if zone_text else LAST_ZONE[0]
    if not map_id:
        rxp.stats["zona desconhecida: " + zone_text] += 1
        return None
    LAST_ZONE[0] = map_id
    x, y = float(m.group(1)), float(m.group(2))
    radius = int(m.group(3)) if m.group(3) else None
    return map_id, "%s,%s" % (rxp.fmt(x), rxp.fmt(y)), radius


ADDON_SUFFIX = re.compile(r"\s*-?[A-Z_]*>>.*$")  # "-BAG_UPDATE>>Crystals_Tanaris49" (função do Zarant)


def strip_suffix(text):
    return ADDON_SUFFIX.sub("", text).strip()


def clean_note(text):
    text = text.split("-->>")[0].split("-->")[0]
    text = strip_suffix(text)
    text = TAG.sub(" ", text)
    text = text.replace("\\\\", " ").replace("\\", " ").replace("*", "")
    text = re.sub(r"\s+", " ", text).strip(" -")
    return rxp.clean_text(text)


def parse_line(raw):
    """Uma linha do guia -> Step do rxp2azimute (ou None)."""
    line = raw.strip()
    if not line:
        return None
    step = rxp.Step([])
    line_only = []
    for tag, value in TAG.findall(line.split("-->>")[0]):
        value = value.strip()
        if tag in ("G", "L"):
            point = parse_goto(value)
            if point:
                step.gotos.append(((),) + point)
        elif tag in ("QA", "QT"):
            m = re.match(r"^(\d+)", value)
            if m:
                step.lines.append(("accept " if tag == "QA" else "turnin ") + m.group(1))
        elif tag in ("QC", "QCC"):
            m = re.match(r"^(\d+)(?:\s*,\s*(\d+))?", value)
            if m:
                if m.group(2):
                    step.lines.append("objective %s/%s" % (m.group(1), m.group(2)))
                else:
                    step.lines.append("complete " + m.group(1))
        elif tag == "A":
            tokens = rxp.convert_tokens(value.replace(",", " "))
            if tokens is None:
                return None  # passo para raça/classe que não existe no Forever
            line_only = tokens
        elif tag == "OC":
            step.tags["#completewith"] = "next"
        elif tag == "O":
            step.tags["#optional"] = ""
        elif tag == "F":
            map_id = zone_id(value)
            step.lines.append("fly %d" % map_id if map_id else "fp")
        elif tag == "P":
            step.lines.append("fp")
        elif tag == "H":
            step.lines.append("hearth")
        elif tag == "S":
            step.lines.append("home")
        elif tag in ("V", "R"):
            step.lines.append("vendor")
        elif tag == "T":
            step.lines.append("trainer")
        elif tag == "XP":
            m = re.match(r"^(\d+)$", value)
            if m:
                step.lines.append("level " + m.group(1))
    note = clean_note(line)
    # Texto livre só vira dica se disser algo além de "Accept/Turn in <missão>".
    if note and len(VERB_WORDS.sub("", note).split()) >= 4:
        step.lines.append("note-enUS " + note)
    if line_only:
        step.condition = line_only
    if "#optional" in step.tags:
        step.lines = [l if l.startswith("note") else l + " |opt" for l in step.lines]
    return step


def parse_guide(block, source):
    LAST_ZONE[0] = None
    meta = {}
    steps = []
    for raw in block.splitlines():
        stripped = raw.strip()
        header = re.match(r"^\[(N|NX|GA|D)\s*([^\]]*)\]\s*$", stripped)
        if header:
            meta.setdefault(header.group(1), header.group(2).strip())
            continue
        step = parse_line(stripped)
        if step and (step.lines or step.gotos):
            steps.append(step)
    if "N" not in meta:
        return None
    m = re.match(r"^(\d+)-(\d+)\s*(.+)$", meta["N"])
    if not m:
        return None
    faction = next((f for f in ("Horde", "Alliance") if f in meta.get("GA", "")), None)
    name_rest = m.group(3).strip()
    parsed = rxp.parse_zone_name(name_rest)
    built = rxp.build_steps(steps)
    if not built:
        return None
    next_name = None
    if meta.get("NX"):
        nm = re.match(r"^(\d+)-(\d+)\s*(.+)$", meta["NX"])
        if nm:
            next_name = "%s-%s %s" % (nm.group(1), nm.group(2), nm.group(3).strip())
    return {
        "name": "%s-%s %s" % (m.group(1), m.group(2), name_rest),
        "levels": "%s-%s" % (m.group(1), m.group(2)),
        "levelMin": int(m.group(1)),
        "faction": faction,
        "zones": parsed[0] if parsed else None,
        "suffix": parsed[1] if parsed else "",
        "next": next_name,
        "steps": built,
        "source": source,
    }


def guide_id(guide):
    side = {"Alliance": "a", "Horde": "h"}.get(guide["faction"], "n")
    return "classic.%s.%s" % (side, rxp.slug(guide["name"]))


def render(guide, ids):
    side_en = guide["faction"] or ""
    side_pt = {"Horde": "Horda", "Alliance": "Aliança"}.get(guide["faction"], "")
    out = [
        "#format 1",
        "#id " + guide_id(guide),
        "#name " + guide["name"],
        "#author Zarant (Guidelime_Zarant, GPL-3.0), adaptado para o Azimute",
        "#version 1",
        "#flavor forever",
        "#license GPL-3.0",
        "#status experimental",  # feito para o Classic, sem teste no Forever
    ]
    if guide["faction"]:
        out.append("#faction " + guide["faction"])
    out.append("#levels " + guide["levels"])
    if guide["zones"]:
        out.append("#zones " + " ".join(str(z) for z in guide["zones"]))
        if guide["suffix"]:
            out.append("#suffix " + guide["suffix"])
    out.append("#group Leveling (%s)" % side_en if side_en else "#group Leveling")
    out.append("#group-ptBR Evolução (%s)" % side_pt if side_pt else "#group-ptBR Evolução")
    out.append("#subgroup 30-60 Classic (Guidelime Zarant)")
    out.append("#subgroup-ptBR 30-60 Clássico (Guidelime Zarant)")
    next_id = ids.get((guide["faction"], guide["next"])) if guide["next"] else None
    if next_id:
        out.append("#next " + next_id)
    out.append("")
    for lines in guide["steps"]:
        out.append("step")
        for line in lines:
            out.append("    " + line)
            if line.startswith("note-enUS "):
                m = re.match(r"^note-enUS (.*?)((?: \|(?:only|opt)[^|]*)*)$", line)
                translated = rxp.NOTES_PT.get(m.group(1)) if m else None
                if translated:
                    out.append("    note-ptBR " + translated + m.group(2))
                    rxp.stats["dica traduzida"] += 1
                else:
                    rxp.stats["dica sem tradução"] += 1
    return NL.join(out)


def main():
    if len(sys.argv) < 3:
        print(__doc__)
        sys.exit(1)
    source_dir, out_dir = sys.argv[1], sys.argv[2]
    min_level = int(sys.argv[3]) if len(sys.argv) > 3 else 29
    rxp.NOTES_PT.update(rxp.load_translations())
    # as traduções foram feitas com o sufixo de código; guarda também sem ele
    for en, pt in list(rxp.NOTES_PT.items()):
        short_en, short_pt = strip_suffix(en), strip_suffix(pt)
        if short_en != en and short_en and short_pt:
            rxp.NOTES_PT.setdefault(short_en, short_pt)
    guides_dir = os.path.join(out_dir, "Guides")
    os.makedirs(guides_dir, exist_ok=True)

    converted = []
    for side in ("Horde", "Alliance"):
        folder = os.path.join(source_dir, side)
        for file_name in sorted(os.listdir(folder)):
            if not file_name.endswith(".lua"):
                continue
            text = open(os.path.join(folder, file_name), encoding="utf-8").read()
            for block in re.findall(r"registerGuide\(\s*\[\[(.*?)\]\]", text, re.S):
                guide = parse_guide(block, "%s/%s" % (side, file_name))
                if guide and guide["levelMin"] >= min_level:
                    converted.append(guide)

    ids = {(g["faction"], g["name"]): guide_id(g) for g in converted}
    by_file = {}
    for guide in converted:
        by_file.setdefault(guide["source"], []).append(guide)
    file_list = []
    for source, guides in by_file.items():
        out_name = "Classic_" + source.replace("/", "_").replace("-", "_").replace(".lua", "") + ".lua"
        parts = [
            "-- Convertido automaticamente de Guidelime_Zarant (%s)." % source,
            "-- (c) Zarant - GNU GPL v3 (ver LICENSE.txt). Gerado por tools/guidelime2azimute.py.",
            "local register = AzimuteAPI and AzimuteAPI.RegisterGuide",
            "if not register then return end",
            "",
        ]
        for guide in guides:
            parts.append("register([==[" + NL + render(guide, ids) + NL + "]==])" + NL)
        with open(os.path.join(guides_dir, out_name), "w", encoding="utf-8", newline=NL) as f:
            f.write(NL.join(parts))
        file_list.append("Guides\\" + out_name)

    toc = [
        "## Interface: 16001",
        "## Title: Azimute - Classic Guides 30-60",
        "## Title-ptBR: Azimute - Guias Clássicos 30-60",
        "## Notes: Classic 30-60 leveling routes for Azimute, based on Guidelime_Zarant (GPL-3.0). See CREDITS.md.",
        "## Notes-ptBR: Rotas de up 30-60 do Clássico para o Azimute, baseadas no Guidelime_Zarant (GPL-3.0). Ver CREDITS.md.",
        "## Author: Azimute (adaptação dos guias de Zarant)",
        "## Version: 0.1.0",
        "## Dependencies: Azimute",
        "## IconTexture: Interface\\Icons\\INV_Misc_Book_11",
        "## Category: Quests",
        "## X-License: GPL-3.0",
        "",
    ] + file_list
    with open(os.path.join(out_dir, "Azimute_Guides_Classic.toc"), "w", encoding="utf-8", newline=NL) as f:
        f.write(NL.join(toc) + NL)
    with open(os.path.join(source_dir, "LICENSE"), encoding="utf-8") as f:
        license_text = f.read()
    with open(os.path.join(out_dir, "LICENSE.txt"), "w", encoding="utf-8", newline=NL) as f:
        f.write(license_text)
    with open(os.path.join(out_dir, "CREDITS.md"), "w", encoding="utf-8", newline=NL) as f:
        f.write("# Créditos" + NL + NL
                + "As rotas deste pacote são uma adaptação dos guias **Guidelime_Zarant**, de Zarant" + NL
                + "(https://github.com/jaydeshow/Guidelime_Zarant), licenciados sob a GNU GPL v3." + NL + NL
                + "Alterações: conversão automática para o formato do Azimute (tools/guidelime2azimute.py)," + NL
                + "só os níveis 30-60; dicas traduzidas para pt-BR. Este pacote é distribuído sob a mesma" + NL
                + "licença GPL v3 (ver LICENSE.txt). As rotas foram feitas para o Classic: algumas missões" + NL
                + "podem ter mudado no WoW: Forever." + NL)

    total = sum(len(g["steps"]) for g in converted)
    print("Guias convertidos: %d (%d passos) em %d arquivos" % (len(converted), total, len(file_list)))
    for g in converted:
        print("  %-9s %-40s %4d passos -> %s" % (g["faction"] or "-", g["name"], len(g["steps"]), guide_id(g)))
    for key, count in rxp.stats.most_common(12):
        print("  %6d  %s" % (count, key))


if __name__ == "__main__":
    main()
