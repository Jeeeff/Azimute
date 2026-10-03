"""Converte os guias do RestedXP (RXPGuides) para o formato do Azimute.

Os guias do RestedXP são licenciados sob CC BY-NC-SA 4.0. O resultado da
conversão é uma obra derivada e mantém a mesma licença: o pacote gerado
(Azimute_Guides_Forever) leva o LICENSE original e os créditos.

Uso:
    python tools/rxp2azimute.py <pasta Guides/forever do RXPGuides> <LICENSE do RXPGuides> <pasta de saída>

O que é convertido:
  - missões (accept/turnin/complete), coleta, treino, voo, pedra de regresso,
    vendedor, zona, nível;
  - .goto: pontos intermediários viram "path seq", o ponto final vira "goto";
    coordenadas do mundo ("1420/0,x,y") viram "@x,y" (convertidas no jogo);
  - condições "<< Classe/Raça" viram "only"; .isOnQuest etc. viram condições;
  - passos "#completewith"/"#sticky" são fundidos no passo seguinte
    (caminho vira pontos do path, objetivos viram "|opt");
  - textos livres (em inglês) viram "note-enUS" (só aparecem no cliente enUS;
    no pt-BR as linhas vêm dos nomes traduzidos pelo próprio jogo).
O que é descartado: comandos sem equivalente (target, mob, itemStat...),
passos de masmorra, hardcore, SSF, temporadas.
"""

import json
import os
import re
import sys
from collections import Counter

# Zonas clássicas (uiMapID do cliente moderno) e zonas iniciais.
ZONES = {
    "Durotar": 1411, "Mulgore": 1412, "The Barrens": 1413, "Alterac Mountains": 1416,
    "Arathi Highlands": 1417, "Badlands": 1418, "Blasted Lands": 1419,
    "Tirisfal Glades": 1420, "Silverpine Forest": 1421, "Western Plaguelands": 1422,
    "Eastern Plaguelands": 1423, "Hillsbrad Foothills": 1424, "The Hinterlands": 1425,
    "Dun Morogh": 1426, "Searing Gorge": 1427, "Burning Steppes": 1428,
    "Elwynn Forest": 1429, "Deadwind Pass": 1430, "Duskwood": 1431, "Loch Modan": 1432,
    "Redridge Mountains": 1433, "Stranglethorn Vale": 1434, "Swamp of Sorrows": 1435,
    "Westfall": 1436, "Wetlands": 1437, "Teldrassil": 1438, "Darkshore": 1439,
    "Ashenvale": 1440, "Thousand Needles": 1441, "Stonetalon Mountains": 1442,
    "Desolace": 1443, "Feralas": 1444, "Dustwallow Marsh": 1445, "Tanaris": 1446,
    "Azshara": 1447, "Felwood": 1448, "Un'Goro Crater": 1449, "Moonglade": 1450,
    "Silithus": 1451, "Winterspring": 1452, "Stormwind City": 1453, "Stormwind": 1453,
    "Orgrimmar": 1454, "Ironforge": 1455, "Thunder Bluff": 1456, "Darnassus": 1457,
    "Undercity": 1458,
    # zonas iniciais (subzonas) -> zona do mapa
    "Shadowglen": 1438, "Northshire": 1429, "Coldridge Valley": 1426,
    "Valley of Trials": 1411, "Deathknell": 1420, "Camp Narache": 1412,
    # nomes especiais usados pelo RXP e continentes
    "StormwindClassic": 1453, "Kalimdor": 1414, "Eastern Kingdoms": 1415,
}
# Nomes em minúsculas (os guias às vezes variam a caixa).
ZONES_LOWER = {name.lower(): map_id for name, map_id in ZONES.items()}
# Apelidos usados nos nomes dos guias ("20-23 Stonetalon / The Barrens").
ZONE_ALIASES = {
    "stonetalon": 1442, "barrens": 1413, "south barrens": 1413, "southern barrens": 1413,
    "hillsbrad": 1424, "stv": 1434, "redridge": 1433, "elwynn": 1429, "tirisfal": 1420,
    "darkshore": 1439, "ashenvale": 1440, "duskwood": 1431, "wetlands": 1437,
    "thousand needles": 1441, "silverpine": 1421, "loch modan": 1432, "westfall": 1436,
}
NAME_SUFFIX = re.compile(r"\s+(Mage AoE|AoE|JJ|\([^)]*\))$")


def parse_zone_name(rest):
    """'Stonetalon / The Barrens JJ' -> ([1442, 1413], 'JJ'); None se alguma zona for desconhecida."""
    suffixes = []
    while True:
        m = NAME_SUFFIX.search(rest)
        if not m:
            break
        suffixes.insert(0, m.group(1))
        rest = rest[:m.start()]
    zones = []
    for part in rest.split("/"):
        key = part.strip().lower()
        map_id = ZONES_LOWER.get(key) or ZONE_ALIASES.get(key)
        if not map_id:
            return None
        if map_id not in zones:
            zones.append(map_id)
    return zones, " ".join(suffixes)

FACTIONS = {"ALLIANCE", "HORDE"}
CLASSES = {"WARRIOR", "PALADIN", "HUNTER", "ROGUE", "PRIEST", "SHAMAN", "MAGE",
           "WARLOCK", "DRUID"}
RACES = {"HUMAN": "HUMAN", "DWARF": "DWARF", "NIGHTELF": "NIGHTELF", "GNOME": "GNOME",
         "ORC": "ORC", "UNDEAD": "SCOURGE", "SCOURGE": "SCOURGE", "TAUREN": "TAUREN",
         "TROLL": "TROLL", "SKYBORNE": "SKYBORNE"}

# Passos só para modos que não são o padrão do Forever.
DROP_STEP_TAGS = {"#hardcore", "#ssf", "#som", "#ah", "#include"}

stats = Counter()
NL = chr(10)
MAX_SKILL = 300  # nível máximo das profissões no Forever
# profissões que o Azimute lê (Guides/Parser.lua); "riding" (montaria) etc. ficam de fora
PROFESSIONS = {"alchemy", "blacksmithing", "enchanting", "engineering", "herbalism",
               "leatherworking", "mining", "skinning", "tailoring", "cooking", "firstaid", "fishing"}


def clean_text(text):
    """Remove cores, texturas e links do RXP; devolve texto simples."""
    text = re.sub(r"\|T[^|]*\|t", "", text)
    text = re.sub(r"\|c(?:RXP_[A-Z_]+_|[0-9a-fA-F]{8})", "", text)
    text = text.replace("|r", "")
    text = re.sub(r"\|H[^|]*\|h(.*?)\|h", r"\1", text)
    text = text.replace("|", "").replace("--", "-")
    text = re.sub(r"\s+", " ", text).strip()
    return text[:280]


def convert_tokens(condition):
    """'Warrior/Warlock !Mage' -> ['Warrior', 'Warlock', '!Mage'].
    Devolve None se o trecho for para algo que o Forever não tem."""
    tokens = []
    for part in condition.split():
        for token in part.split("/"):
            negated = token.startswith("!")
            name = token.lstrip("!").upper()
            if not name:
                continue
            if name in FACTIONS or name in CLASSES:
                tokens.append(("!" if negated else "") + name.capitalize())
            elif name in RACES:
                tokens.append(("!" if negated else "") + RACES[name].capitalize())
            elif negated:
                continue  # "!tbc" etc.: sempre verdadeiro no Forever
            else:
                return None  # "tbc", "SoD"...: não se aplica
    return tokens


def split_condition(line):
    """'.goto a,b << Warrior' -> ('.goto a,b', 'Warrior')."""
    if " << " in line:
        body, cond = line.split(" << ", 1)
        return body.strip(), cond.strip()
    return line.strip(), None


def xprate_ok(expr):
    """Avalia '#xprate <1.5' com xp normal (1.0)."""
    expr = expr.strip()
    m = re.match(r"^([<>])\s*([\d.]+)$", expr)
    if m:
        value = float(m.group(2))
        return 1.0 < value if m.group(1) == "<" else 1.0 > value
    m = re.match(r"^([\d.]+)\s*-\s*([\d.]+)$", expr)
    if m:
        return float(m.group(1)) <= 1.0 <= float(m.group(2))
    return True


def parse_point(args):
    """Argumentos de .goto -> (mapID, ponto, raio) ou None.
    '1420/0,1675.9,1645.0,8,0' -> (1420, '@1675.9,1645.0', 8)
    'Durotar,43.29,68.53'      -> (1411, '43.29,68.53', None)"""
    parts = [p.strip() for p in args.split(",")]
    if len(parts) < 3:
        return None
    zone = parts[0]
    radius = None
    if len(parts) >= 4:
        try:
            radius = float(parts[3])
        except ValueError:
            radius = None
    try:
        x, y = float(parts[1]), float(parts[2])
    except ValueError:
        return None
    m = re.match(r"^(\d+)/\d+$", zone)
    if m:
        return int(m.group(1)), "@%s,%s" % (fmt(x), fmt(y)), radius
    if zone.isdigit():
        map_id = int(zone)
    else:
        map_id = ZONES_LOWER.get(zone.lower())
        if not map_id:
            stats["zona desconhecida: " + zone] += 1
            return None
    if not (0 <= x <= 100 and 0 <= y <= 100):
        return None
    return map_id, "%s,%s" % (fmt(x), fmt(y)), radius


def fmt(value):
    return ("%.2f" % value).rstrip("0").rstrip(".")


def first_ids(args, count=1):
    ids = []
    for part in args.split(","):
        part = part.strip()
        if part.isdigit():
            ids.append(part)
        if len(ids) >= count:
            break
    return ids


class Step:
    def __init__(self, condition):
        self.condition = condition  # lista de tokens ou None
        self.tags = {}
        self.gotos = []             # (condição, mapID, ponto, raio)
        self.lines = []             # linhas do Azimute (sem goto)
        self.conditions = []        # ifonquest...
        self.drop = False


def convert_command(step, cmd, args, cond_tokens):
    """Converte uma linha '.cmd args' do RXP para o Azimute."""
    suffix = ""
    if cond_tokens:
        suffix = " |only " + " ".join(cond_tokens)

    def add(line):
        step.lines.append(line + suffix)

    if cmd in ("goto", "waypoint"):
        point = parse_point(args)
        if point:
            step.gotos.append((tuple(cond_tokens or ()),) + point)
        return
    if cmd == "accept":
        parts = [p.strip() for p in args.split(",")]
        if parts and parts[0].isdigit():
            # flag 1 do RXP = "não aceitar automaticamente" (ex.: escoltas)
            flags = int(parts[1]) if len(parts) > 1 and parts[1].isdigit() else 0
            add("accept " + parts[0] + (" |noauto" if flags & 1 else ""))
    elif cmd == "turnin":
        parts = [p.strip() for p in args.split(",")]
        if parts and parts[0].isdigit():
            # 2º argumento do RXP = índice da recompensa a escolher
            reward = int(parts[1]) if len(parts) > 1 and parts[1].isdigit() else 0
            add("turnin " + parts[0] + (" |reward %d" % reward if reward > 0 else ""))
    elif cmd == "complete":
        ids = first_ids(args, 2)
        if len(ids) == 2:
            add("objective %s/%s" % (ids[0], ids[1]))
        elif len(ids) == 1:
            add("complete " + ids[0])
    elif cmd == "collect":
        # .collect item,qtd,missão,objFlags,flags (ver RXPGuides/functions.lua)
        parts = [p.strip() for p in args.split(",")]
        if parts and parts[0].isdigit():
            line = "collect %s %s" % (parts[0], parts[1] if len(parts) > 1 and parts[1].isdigit() else "1")
            quest = int(parts[2]) if len(parts) > 2 and parts[2].isdigit() else 0
            obj_flags = int(parts[3]) if len(parts) > 3 and parts[3].isdigit() else 0
            flags = int(parts[4]) if len(parts) > 4 and parts[4].lstrip("-").isdigit() else 0
            if quest > 0 and not (flags & 0x10):
                # no RXP a coleta termina quando a missão é entregue
                line += " |quest %d" % quest
            if quest > 0 and obj_flags and obj_flags & (obj_flags - 1) == 0:
                # um único objetivo marcado no bitmask -> índice dele
                line += " |q %d/%d" % (quest, obj_flags.bit_length())
            add(line)
    elif cmd == "train":
        ids = first_ids(args)
        if ids:
            add("train " + ids[0])
    elif cmd == "use":
        ids = first_ids(args)
        if ids:
            add("use " + ids[0])
    elif cmd == "abandon":
        ids = first_ids(args)
        if ids:
            add("abandon " + ids[0])
    elif cmd in ("fly", "zone"):
        map_id = ZONES_LOWER.get(args.strip().lower())
        if map_id:
            add("%s %d" % (cmd, map_id))
        elif cmd == "fly":
            add("fp")  # destino desconhecido: ao menos indica o mestre de voo
    elif cmd == "fp":
        add("fp")
    elif cmd == "hs":
        add("hearth")
    elif cmd == "home":
        add("home")
    elif cmd == "vendor":
        add("vendor")
    elif cmd == "trainer":
        add("trainer")
    elif cmd == "xp":
        parts = [p.strip() for p in args.split(",")]
        m = re.match(r"^(\d+)", parts[0]) if parts else None
        is_condition = len(parts) > 1 and parts[1] == "1"
        if m and not parts[0].startswith(("<", ">")) and not is_condition:
            add("level " + m.group(1))
        else:
            stats["condição de xp descartada"] += 1
    elif cmd in ("isOnQuest", "isQuestComplete", "isQuestTurnedIn", "isQuestAvailable", "isNotOnQuest"):
        ids = [p.strip() for p in args.split(",") if p.strip().isdigit()]
        kind = {
            "isOnQuest": "ifonquest",
            "isQuestComplete": "ifcomplete",
            "isQuestTurnedIn": "ifturnedin",
            "isQuestAvailable": "ifnotturnedin",
            "isNotOnQuest": "ifnotonquest",
        }[cmd]
        if ids and not cond_tokens:
            step.conditions.append("%s %s" % (kind, " ".join(ids)))
    elif cmd == "skill":
        # ".skill herbalism,70" = subir até 70; ".skill herbalism,70,1" = passo só vale abaixo de 70
        parts = [p.strip() for p in args.split(",")]
        if len(parts) >= 2 and parts[1].isdigit() and parts[0].lower() in PROFESSIONS:
            level = int(parts[1])
            if level > MAX_SKILL:
                step.drop = True  # Terralém/Nortúndria: acima do máximo do Forever
            elif len(parts) > 2 and parts[2] == "1":
                step.conditions.append("ifskillbelow %s %d" % (parts[0].lower(), level))
            else:
                add("skill %s %d" % (parts[0].lower(), level))
    elif cmd == "loop":
        # ".loop raio,Zona,x1,y1,x2,y2,..." = circuito de coleta
        parts = [p.strip() for p in args.split(",")]
        map_id = ZONES_LOWER.get(parts[1].lower()) if len(parts) > 3 else None
        coords = parts[2:]
        points = []
        for i in range(0, len(coords) - 1, 2):
            try:
                x, y = float(coords[i]), float(coords[i + 1])
            except ValueError:
                continue  # par malformado no original (ex.: ",84.2")
            if 0 <= x <= 100 and 0 <= y <= 100:
                points.append("%s,%s" % (fmt(x), fmt(y)))
        if map_id and len(points) >= 2:
            add("path loop %d %s" % (map_id, " ".join(points)))
        else:
            stats["circuito descartado (zona fora do Forever)"] += 1
    elif cmd == "dungeon":
        # ".dungeon WC" = só se o jogador escolheu fazer a masmorra;
        # ".dungeon !WC" = a alternativa para quem não vai fazer
        code = args.strip().split()[0] if args.strip() else ""
        if code.startswith("!") and code[1:].isalnum():
            step.conditions.append("ifnotdungeon " + code[1:].upper())
        elif code.isalnum():
            step.conditions.append("ifdungeon " + code.upper())
    else:
        stats["descartado ." + cmd] += 1


def emit_gotos(gotos, loop):
    """Pontos do passo -> linhas 'path' + 'goto', agrupando por condição e mapa."""
    lines = []
    groups = []
    for cond, map_id, point, radius in gotos:
        if groups and groups[-1][0] == cond and groups[-1][1] == map_id:
            if groups[-1][2][-1][0] == point:
                continue  # ponto repetido
            groups[-1][2].append((point, radius))
        else:
            groups.append([cond, map_id, [(point, radius)]])
    for cond, map_id, points in groups:
        suffix = (" |only " + " ".join(cond)) if cond else ""
        if loop:
            lines.append("path closest %d %s%s" % (map_id, " ".join(p for p, _ in points), suffix))
            continue
        *middle, (last, radius) = points
        if middle:
            lines.append("path seq %d %s%s" % (map_id, " ".join(p for p, _ in middle), suffix))
        radius_text = (" %d" % radius) if radius and radius > 0 else ""
        lines.append("goto %d %s%s%s" % (map_id, last, radius_text, suffix))
    return lines


def parse_steps(body_lines):
    steps = []
    step = None
    for raw in body_lines:
        line = raw.split("\t--")[0].rstrip()
        line = re.sub(r"\s--.*$", "", line) if line.lstrip().startswith(".") else line
        stripped = line.strip()
        if not stripped or stripped.startswith("--"):
            continue
        if stripped == "step" or stripped.startswith("step "):
            body, cond = split_condition(stripped)
            tokens = convert_tokens(cond) if cond else []
            step = Step(tokens)
            if tokens is None:
                step.drop = True
            steps.append(step)
            continue
        if step is None:
            continue
        body, cond = split_condition(stripped)
        cond_tokens = convert_tokens(cond) if cond else []
        if cond_tokens is None:
            continue  # linha para outro modo/expansão
        if body.startswith("#"):
            tag, _, value = body.partition(" ")
            if tag in DROP_STEP_TAGS:
                step.drop = True
            elif tag == "#season" and value.strip() not in ("", "0"):
                step.drop = True
            elif tag == "#xprate" and not xprate_ok(value):
                step.drop = True
            else:
                step.tags[tag] = value.strip()
        elif body.startswith("."):
            m = re.match(r"^\.(\w+)\s*(.*)$", body)
            if not m:
                continue
            cmd, rest = m.group(1), m.group(2)
            args = rest.split(">>")[0].strip()
            convert_command(step, cmd, args, cond_tokens)
        elif body.startswith(">>") or body.startswith("+"):
            text = clean_text(body.lstrip(">+ "))
            if text:
                suffix = (" |only " + " ".join(cond_tokens)) if cond_tokens else ""
                step.lines.append("note-enUS " + text + suffix)
    return steps


def build_steps(steps):
    """Funde passos 'completewith/sticky' no seguinte e gera o texto final."""
    out = []
    carry_gotos, carry_lines = [], []
    for step in steps:
        if step.drop:
            stats["passo descartado"] += 1
            continue
        # "#completewith" = feito no caminho até outro passo: vira caminho e
        # objetivos opcionais do passo seguinte. ("#sticky" continua um passo
        # normal: são tarefas de verdade que ficam na tela.)
        side = "#completewith" in step.tags
        if side:
            side_cond = tuple(step.condition or ())
            for cond, map_id, point, radius in step.gotos:
                carry_gotos.append((cond or side_cond, map_id, point, radius))
            for line in step.lines:
                if side_cond and "|only" not in line:
                    line = line + " |only " + " ".join(side_cond)
                if not line.startswith("note-enUS"):
                    line = line + " |opt"
                carry_lines.append(line)
            stats["passo fundido"] += 1
            continue
        loop = "#loop" in step.tags
        gotos = carry_gotos + step.gotos
        lines = []
        if step.condition:
            lines.append("only " + " ".join(step.condition))
        lines.extend(step.conditions)
        lines.extend(emit_gotos(gotos, loop))
        lines.extend(carry_lines)
        lines.extend(step.lines)
        carry_gotos, carry_lines = [], []
        if not any(not l.startswith(("only ", "if")) for l in lines):
            stats["passo vazio"] += 1
            continue
        out.append(lines)
    return out


def slug(text):
    text = text.lower().replace("'", "")
    return re.sub(r"[^a-z0-9]+", "-", text).strip("-")


def convert_guide(block, source_name):
    lines = block.splitlines()
    header, body = [], []
    in_body = False
    for line in lines:
        if line.strip() == "step" or line.strip().startswith("step "):
            in_body = True
        (body if in_body else header).append(line)

    meta = {"names": [], "only": None}
    for raw in header:
        line = raw.strip()
        if line.startswith("<<"):
            meta["only"] = line[2:].strip()
        elif line.startswith("#"):
            tag, _, value = line.partition(" ")
            value, cond = split_condition(value)
            if tag in ("#include", "#internal"):
                return None
            if tag == "#group" and cond:
                # grupo por facção no mesmo guia (Skyborne): nome comum
                value = re.sub(r"\s*\([AH]\)$", "", value.strip())
            if tag in ("#name", "#group", "#subgroup", "#next", "#version", "#defaultfor"):
                meta.setdefault(tag, value.strip())
    # Sem #group = trecho incluído por outros guias do RXP, não um guia.
    if "#name" not in meta or "#group" not in meta:
        return None

    tokens = convert_tokens(meta["only"]) if meta["only"] else []
    if tokens is None:
        return None
    faction = next((t for t in tokens if t.upper() in FACTIONS), None)
    rest = [t for t in tokens if t.upper() not in FACTIONS]

    name = meta["#name"]
    kind = "profession" if "Profession" in (meta.get("#group") or "") else None
    if kind:
        name = name.replace("1-450", "1-%d" % MAX_SKILL)
    levels = None
    zone = None
    zones, suffix = None, ""
    m = re.match(r"^(\d+)-(\d+)\s+(.+)$", name)
    if m:
        levels = "%s-%s" % (m.group(1), m.group(2))
        zone = ZONES_LOWER.get(m.group(3).strip().lower())
        if not zone:
            parsed = parse_zone_name(m.group(3).strip())
            if parsed:
                zones, suffix = parsed

    steps = build_steps(parse_steps(body))
    if not steps:
        return None

    return {
        "name": name,
        "faction": faction,
        "only": rest,
        "levels": levels,
        "zone": None if kind else zone,
        "zones": None if kind else zones,
        "kind": kind,
        "suffix": suffix,
        "group": meta.get("#group"),
        "subgroup": meta.get("#subgroup"),
        "next": (meta.get("#next") or "").split(";")[0].split("\\")[-1].strip() or None,
        "version": meta.get("#version", "1"),
        "recommend": convert_tokens(meta.get("#defaultfor", "")) or None,
        "steps": steps,
        "source": source_name,
    }


def guide_id(guide):
    side = {"Alliance": "a", "Horde": "h"}.get(guide["faction"], "n")
    prefix = "forever.x" if guide.get("experimental") else "forever"
    if guide.get("dungeon"):
        prefix = "forever.dg"  # versão do guia com as masmorras na rota (pasta dungeon/ do RXP)
    return "%s.%s.%s" % (prefix, side, slug(guide["name"]))


def next_guide_id(guide, ids_by_name):
    """#next pelo nome: guias com masmorras preferem a continuação com masmorras."""
    if not guide["next"]:
        return None
    if guide.get("dungeon"):
        found = ids_by_name.get((guide["faction"], guide["next"], True))
        if found:
            return found
    return ids_by_name.get((guide["faction"], guide["next"], False))


def _load_validated():
    """Prefixos de #id dos guias já conferidos no jogo (um por linha, # comenta)."""
    path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "validated_guides.txt")
    if not os.path.exists(path):
        return ()
    with open(path, encoding="utf-8") as f:
        return tuple(l.strip() for l in f if l.strip() and not l.lstrip().startswith("#"))


VALIDATED_PREFIXES = _load_validated()


def render(guide, ids_by_name):
    out = [
        "#format 1",
        "#id " + guide_id(guide),
        "#name " + guide["name"],
        "#author Baseado nos guias do RestedXP (CC BY-NC-SA 4.0)",
        "#version " + guide["version"],
        "#flavor forever",
        "#license CC-BY-NC-SA-4.0",
    ]
    if guide_id(guide).startswith(VALIDATED_PREFIXES):
        out.append("#status validated")  # conferido no jogo (tools/validated_guides.txt)
    if guide["faction"]:
        out.append("#faction " + guide["faction"])
    if guide["only"]:
        out.append("#only " + " ".join(guide["only"]))
    if guide.get("kind"):
        out.append("#kind " + guide["kind"])  # não é escolhido sozinho pelo nível
    elif guide["levels"]:
        out.append("#levels " + guide["levels"])
    if guide["zone"]:
        out.append("#zone %d" % guide["zone"])
    if guide.get("zones"):
        # nome montado no jogo com os nomes traduzidos das zonas
        out.append("#zones " + " ".join(str(z) for z in guide["zones"]))
        if guide.get("suffix"):
            out.append("#suffix " + guide["suffix"])
            suffix_pt = translate_name(guide["suffix"])
            if suffix_pt != guide["suffix"]:
                out.append("#suffix-ptBR " + suffix_pt)
    name_pt = translate_name(guide["name"])
    if guide.get("dungeon"):
        out[2] = "#name " + guide["name"] + " (dungeons)"
        name_pt = name_pt + " (masmorras)"
    if name_pt != guide["name"]:
        out.append("#name-ptBR " + name_pt)
    group_en, group_pt = translate_group(guide["group"])
    if guide.get("dungeon") and group_en:
        group_en = group_en.replace("Leveling", "Leveling with dungeons")
        group_pt = group_pt.replace("Evolução", "Evolução com masmorras")
    if group_en:
        out.append("#group " + group_en)
        out.append("#group-ptBR " + group_pt)
    sub_en, sub_pt = translate_subgroup(guide["subgroup"])
    if guide.get("kind") == "profession":
        sub_en, sub_pt = "Gathering (adapted from Classic)", "Coleta (adaptado do Classic)"
    elif guide.get("experimental"):
        # guias clássicos (TBC/WotLK) adaptados: podem ter missões que mudaram no Forever
        sub_en, sub_pt = "Experimental (from Classic guides)", "Experimental (adaptado do Classic)"
    if sub_en:
        out.append("#subgroup " + sub_en)
        out.append("#subgroup-ptBR " + sub_pt)
    if guide["recommend"]:
        out.append("#recommend " + " ".join(guide["recommend"]))
    next_id = next_guide_id(guide, ids_by_name)
    if next_id:
        out.append("#next " + next_id)
    out.append("")
    for lines in guide["steps"]:
        out.append("step")
        for line in lines:
            if guide.get("kind") == "profession" and line.startswith("hearth"):
                continue  # os originais usam a pedra para ir a Dalaran (não existe no Forever)
            # "Erland::4217" nas dicas do RXP = nome + ID do NPC: fica só o nome.
            out.append("    " + re.sub(r"::\d+", "", line))
            # Tradução pt-BR da dica, se existir no dicionário.
            if line.startswith("note-enUS "):
                m = re.match(r"^note-enUS (.*?)((?: \|(?:only|opt)[^|]*)*)$", line)
                translated = NOTES_PT.get(m.group(1)) if m else None
                if translated:
                    out.append("    note-ptBR " + re.sub(r"::\d+", "", translated) + m.group(2))
                    stats["dica traduzida"] += 1
                else:
                    stats["dica sem tradução"] += 1
    return "\n".join(out)


def load_translations():
    """tools/translations/notes_ptBR*.json -> {inglês: pt-BR}."""
    folder = os.path.join(os.path.dirname(os.path.abspath(__file__)), "translations")
    table = {}
    if os.path.isdir(folder):
        for name in sorted(os.listdir(folder)):
            if name.startswith("notes_ptBR") and name.endswith(".json"):
                with open(os.path.join(folder, name), encoding="utf-8") as f:
                    for en, pt in json.load(f).items():
                        pt = pt.replace("|", "").replace("--", "-").strip()[:280]
                        if pt:
                            table[en] = pt
    return table


NOTES_PT = {}


SIDE_NAMES = {"A": ("Alliance", "Aliança"), "H": ("Horde", "Horda")}


def translate_group(group):
    """Categorias do Azimute (sem o nome do outro addon): devolve (en, pt)."""
    if not group:
        return None, None
    side = re.search(r"\(([AH])\)", group)
    side_en, side_pt = SIDE_NAMES[side.group(1)] if side else (None, None)
    if not side:
        m = re.search(r"\b(Alliance|Horde)\b", group)
        if m:
            side_en = m.group(1)
            side_pt = "Aliança" if side_en == "Alliance" else "Horda"
    suffix_en = " (%s)" % side_en if side_en else ""
    suffix_pt = " (%s)" % side_pt if side_pt else ""
    if "Profession" in group:
        return "Professions" + suffix_en, "Profissões" + suffix_pt
    if "AoE" in group or "Mage" in group:
        return "Mage AoE - Advanced" + suffix_en, "Mago AoE - Avançado" + suffix_pt
    return "Leveling" + suffix_en, "Evolução" + suffix_pt


def translate_subgroup(subgroup):
    if not subgroup:
        return None, None
    m = re.search(r"(\d+-\d+)", subgroup)
    if "Mage" in subgroup or "AoE" in subgroup:
        return "Mage AoE", "Mago AoE"
    if m:
        return "Speedrun " + m.group(1), "Rota rápida " + m.group(1)
    return subgroup, subgroup


NAME_WORDS_PT = [
    ("Herbalism", "Herborismo"), ("Mining", "Mineração"), ("Skinning", "Esfolamento"),
    ("(H)", "(Horda)"), ("(A)", "(Aliança)"),
    ("Human Mage AoE", "Mago AoE Humano"), ("Gnome Mage AoE", "Mago AoE Gnomo"),
    ("LAUNCH ADV ", "Lançamento Avançado "), ("ADV ", "Avançado "),
    ("Mage AoE", "Mago AoE"), ("(Hunter)", "(Caçador)"), ("(Dwarf/Gnome)", "(Anão/Gnomo)"),
]


def translate_name(name):
    for en, pt in NAME_WORDS_PT:
        name = name.replace(en, pt)
    return name


def extract_blocks(text):
    return re.findall(r"RegisterGuide\(\s*\[\[(.*?)\]\]\s*\)", text, re.S)


INCLUDE_RE = re.compile(r"^\s*#include\s+(.+?)\s*$", re.M)


def block_name(block):
    m = re.search(r"^\s*#name\s+(.+?)\s*$", block, re.M)
    return m.group(1).strip() if m else None


def block_steps(block):
    """Corpo do guia dividido em passos (cada item começa na linha "step")."""
    lines = block.split("\n")
    start = next((i for i, l in enumerate(lines) if re.match(r"^\s*step\b", l)), None)
    if start is None:
        return []
    steps, current = [], []
    for line in lines[start:]:
        if re.match(r"^\s*step\b", line) and current:
            steps.append(current)
            current = []
        current.append(line)
    if current:
        steps.append(current)
    # passos vazios (só a linha "step") não contam
    return [s for s in steps if any(l.strip() for l in s[1:])]


def expand_includes(block, index, depth=0):
    """#include [Grupo\\]Nome[@RótuloInício-RótuloFim]: copia os passos do outro guia
    (inteiro ou só o trecho entre os passos com #label)."""
    if depth > 5 or "#include" not in block:
        return block

    def replace(match):
        ref = match.group(1).split("--")[0].strip()
        ref = ref.split("\\")[-1]
        name, _, labels = ref.partition("@")
        source = index.get(name.strip())
        if not source:
            stats["#include não encontrado"] += 1
            return ""
        steps = block_steps(expand_includes(source, index, depth + 1))
        if labels:
            first, _, last = labels.partition("-")

            def find(label):
                for i, step in enumerate(steps):
                    if any(re.match(r"^\s*#label\s+%s\b" % re.escape(label), l) for l in step):
                        return i
                return None
            a = find(first.strip())
            b = find(last.strip()) if last else len(steps) - 1
            if a is None or b is None:
                stats["#include sem rótulo"] += 1
                return ""
            steps = steps[a:b + 1]
        stats["#include expandido"] += 1
        return "\n".join("\n".join(step) for step in steps)

    return INCLUDE_RE.sub(replace, block)


def main():
    args = sys.argv[1:]
    # --wt <pasta Classes/Vanilla> <LICENSE>: feitiços de treinador do What's Training (MIT)
    wt = None
    if "--wt" in args:
        index = args.index("--wt")
        wt = args[index + 1:index + 3]
        args = args[:index] + args[index + 3:]
    # --fdq <Data.lua> <LICENSE>: missões de masmorra do Forever Dungeon Quests (MIT)
    fdq = None
    if "--fdq" in args:
        index = args.index("--fdq")
        fdq = args[index + 1:index + 3]
        args = args[:index] + args[index + 3:]
    extra_files = []
    if "--extra" in args:
        index = args.index("--extra")
        extra_files = args[index + 1:]
        args = args[:index]
    if len(args) != 3:
        print(__doc__)
        sys.exit(1)
    source_dir, license_path, out_dir = args
    NOTES_PT.update(load_translations())
    print("traduções de dicas carregadas: %d" % len(NOTES_PT))
    guides_dir = os.path.join(out_dir, "Guides")
    os.makedirs(guides_dir, exist_ok=True)

    # Índice nome -> texto de todos os guias, para expandir os #include.
    include_index = {}
    dungeon_dir = os.path.join(source_dir, "dungeon")
    index_files = [os.path.join(source_dir, n) for n in os.listdir(source_dir)]
    if os.path.isdir(dungeon_dir):
        index_files += [os.path.join(dungeon_dir, n) for n in os.listdir(dungeon_dir)]
    for path in index_files + list(extra_files):
        if path.endswith(".lua") and os.path.isfile(path) and os.path.dirname(path) != dungeon_dir:
            with open(path, encoding="utf-8") as f:
                for block in extract_blocks(f.read()):
                    name = block_name(block)
                    if name:
                        include_index.setdefault(name, block)

    converted = []
    for file_name in sorted(os.listdir(source_dir)):
        if not file_name.endswith(".lua"):
            continue
        with open(os.path.join(source_dir, file_name), encoding="utf-8") as f:
            text = f.read()
        for block in extract_blocks(text):
            guide = convert_guide(expand_includes(block, include_index), file_name)
            if guide:
                converted.append(guide)
            else:
                stats["guia ignorado (%s)" % file_name] += 1

    # Versões com masmorras (pasta dungeon/ do RXP). As que só fazem #include
    # do guia normal ficam sem passos e são ignoradas.
    if os.path.isdir(dungeon_dir):
        for file_name in sorted(os.listdir(dungeon_dir)):
            if not file_name.endswith(".lua"):
                continue
            with open(os.path.join(dungeon_dir, file_name), encoding="utf-8") as f:
                text = f.read()
            for block in extract_blocks(text):
                block = expand_includes(block, include_index)
                # só #include do guia normal (sem passos próprios): igual ao normal, pula
                if block_name(block) in include_index and block_steps(block) == block_steps(include_index[block_name(block)]):
                    stats["guia com masmorras igual ao normal"] += 1
                    continue
                guide = convert_guide(block, "Dungeon " + file_name)
                if guide:
                    guide["dungeon"] = True
                    converted.append(guide)
                else:
                    stats["guia ignorado (dungeon/%s)" % file_name] += 1

    # Guias extras (clássicos TBC/WotLK) -> "Experimental"
    for path in extra_files:
        with open(path, encoding="utf-8") as f:
            text = f.read()
        file_name = "Extra " + os.path.basename(path)
        for block in extract_blocks(text):
            guide = convert_guide(block, file_name)
            if guide:
                guide["experimental"] = True
                converted.append(guide)
            else:
                stats["guia ignorado (%s)" % file_name] += 1

    ids_by_name = {(g["faction"], g["name"], bool(g.get("dungeon"))): guide_id(g) for g in converted}

    by_file = {}
    for guide in converted:
        by_file.setdefault(guide["source"], []).append(guide)

    file_list = []
    for source, guides in by_file.items():
        out_name = "Forever_" + os.path.splitext(source)[0].replace(" ", "_").replace("-", "_").replace("RestedXP_", "") + ".lua"
        parts = [
            "-- Convertido automaticamente de RXPGuides (%s)" % source,
            "-- (c) RestedXP - CC BY-NC-SA 4.0 (ver LICENSE.txt). Não edite à mão:",
            "-- rode tools/rxp2azimute.py de novo.",
            "local register = AzimuteAPI and AzimuteAPI.RegisterGuide",
            "if not register then return end",
            "",
        ]
        for guide in guides:
            parts.append("register([==[\n%s\n]==])\n" % render(guide, ids_by_name))
        with open(os.path.join(guides_dir, out_name), "w", encoding="utf-8", newline="\n") as f:
            f.write("\n".join(parts))
        file_list.append("Guides\\" + out_name)

    # Pesos de atributos do Forever (indicador de equipamento), se existirem.
    weights_src = os.path.normpath(os.path.join(source_dir, "..", "..", "DB", "forever", "StatWeights.lua"))
    if os.path.exists(weights_src):
        with open(weights_src, encoding="utf-8") as f:
            weights = f.read()
        start = weights.index("addon.statWeights = {")
        body = "local weights = {" + weights[start + len("addon.statWeights = {"):]
        header = ("-- Pesos de atributos por classe/especialização/nível para o WoW: Forever." + NL
                  + "-- (c) RestedXP - CC BY-NC-SA 4.0 (ver LICENSE.txt). Gerado por tools/rxp2azimute.py." + NL)
        footer = (NL + NL + "if AzimuteAPI and AzimuteAPI.RegisterStatWeights then" + NL
                  + "    AzimuteAPI.RegisterStatWeights(weights)" + NL + "end" + NL)
        with open(os.path.join(out_dir, "StatWeights.lua"), "w", encoding="utf-8", newline=NL) as f:
            f.write(header + body.rstrip() + footer)
        file_list.insert(0, "StatWeights.lua")
        print("pesos de equipamento copiados")

    # Tempos de voo entre mestres de voo do Forever (rotas), se existirem.
    flights_src = os.path.normpath(os.path.join(source_dir, "..", "..", "DB", "forever", "flightData.lua"))
    if os.path.exists(flights_src):
        with open(flights_src, encoding="utf-8") as f:
            flights = f.read()
        start = flights.index("addon.FPDB = {")
        body = "local times = {" + flights[start + len("addon.FPDB = {"):]
        header = ("-- Tempos de voo (segundos) entre mestres de voo do WoW: Forever, por facção." + NL
                  + "-- (c) RestedXP - CC BY-NC-SA 4.0 (ver LICENSE.txt). Gerado por tools/rxp2azimute.py." + NL)
        footer = (NL + NL + "if AzimuteAPI and AzimuteAPI.RegisterFlightTimes then" + NL
                  + "    AzimuteAPI.RegisterFlightTimes(times)" + NL + "end" + NL)
        with open(os.path.join(out_dir, "FlightTimes.lua"), "w", encoding="utf-8", newline=NL) as f:
            f.write(header + body.rstrip() + footer)
        file_list.insert(0, "FlightTimes.lua")
        print("tempos de voo copiados")

    # Feitiços de treinador por classe e nível (What's Training, MIT).
    if wt:
        classes_dir, wt_license = wt
        parts = [
            "-- Feitiços de treinador por classe e nível (id, custo em cobre, pré-requisitos)." + NL
            + "-- Fonte: What's Training, (c) fusionpit, licença MIT" + NL
            + "-- (https://github.com/fusionpit/WhatsTraining, ver LICENSE-WhatsTraining.txt)." + NL
            + "local spells = {}" + NL
            # o What's Training filtra por facção com wt.FactionFilter; o Azimute já
            # filtra pelo campo "faction" de cada feitiço, então é só devolver a tabela
            + "local function keep(t) return t end" + NL
            + "local wt = { FactionFilter = keep, RaceFilter = keep }" + NL
        ]
        for file_name in sorted(os.listdir(classes_dir)):
            path = os.path.join(classes_dir, file_name)
            text = open(path, encoding="utf-8").read()
            if "wt.SpellsByLevel =" not in text:
                continue
            class_name = os.path.splitext(file_name)[0].upper()
            body = text[text.index("wt.SpellsByLevel =") + len("wt.SpellsByLevel ="):].strip()
            parts.append("spells[%r] = %s%s" % (class_name, body, NL))
        parts.append("if AzimuteAPI and AzimuteAPI.RegisterClassSpells then" + NL
                     + "    AzimuteAPI.RegisterClassSpells(spells)" + NL + "end" + NL)
        with open(os.path.join(out_dir, "ClassSpells.lua"), "w", encoding="utf-8", newline=NL) as f:
            f.write(NL.join(parts).replace("'", '"'))
        with open(wt_license, encoding="utf-8") as f:
            license_wt = f.read()
        with open(os.path.join(out_dir, "LICENSE-WhatsTraining.txt"), "w", encoding="utf-8", newline=NL) as f:
            f.write(license_wt)
        file_list.insert(0, "ClassSpells.lua")
        print("feitiços de treinador copiados")

    # Missões de masmorra (Forever Dungeon Quests, MIT): a tabela Lua é copiada como está.
    if fdq:
        data_path, fdq_license = fdq
        with open(data_path, encoding="utf-8") as f:
            data = f.read()
        start = data.index("FDQ_Dungeons = {")
        body = "local dungeons = {" + data[start + len("FDQ_Dungeons = {"):]
        header = ("-- Missões de masmorra do WoW: Forever (quem dá, onde, nível, facção, classe)." + NL
                  + "-- Fonte: Forever Dungeon Quests, (c) 2026 Sundee, licença MIT" + NL
                  + "-- (https://github.com/ImSundee/forever-dungeon-quest, ver LICENSE-ForeverDungeonQuests.txt)." + NL
                  + "-- Dados transcritos por eles do guia de masmorras do Wowhead (Forever)." + NL)
        footer = (NL + NL + "if AzimuteAPI and AzimuteAPI.RegisterDungeonQuests then" + NL
                  + "    AzimuteAPI.RegisterDungeonQuests(dungeons)" + NL + "end" + NL)
        with open(os.path.join(out_dir, "DungeonQuests.lua"), "w", encoding="utf-8", newline=NL) as f:
            f.write(header + body.rstrip() + footer)
        with open(fdq_license, encoding="utf-8") as f:
            license_mit = f.read()
        with open(os.path.join(out_dir, "LICENSE-ForeverDungeonQuests.txt"), "w", encoding="utf-8", newline=NL) as f:
            f.write(license_mit)
        file_list.insert(0, "DungeonQuests.lua")
        print("missões de masmorra copiadas")

    toc = [
        "## Interface: 16001",
        "## Title: Azimute - Forever Guides",
        "## Title-ptBR: Azimute - Guias do Forever",
        "## Notes: Forever leveling guides for Azimute. Based on the RestedXP guides (CC BY-NC-SA 4.0), see CREDITS.md.",
        "## Notes-ptBR: Guias de up do Forever para o Azimute. Baseados nos guias do RestedXP (CC BY-NC-SA 4.0), ver CREDITS.md.",
        "## Author: Azimute (adaptação dos guias do RestedXP)",
        "## Version: 0.10.0",
        "## Dependencies: Azimute",
        "## IconTexture: Interface\Icons\INV_Misc_Book_09",
        "## Category: Quests",
        "## X-License: CC BY-NC-SA 4.0",
        "",
    ] + file_list
    with open(os.path.join(out_dir, "Azimute_Guides_Forever.toc"), "w", encoding="utf-8", newline="\n") as f:
        f.write("\n".join(toc) + "\n")

    with open(license_path, encoding="utf-8") as f:
        license_text = f.read()
    with open(os.path.join(out_dir, "LICENSE.txt"), "w", encoding="utf-8", newline="\n") as f:
        f.write(license_text)

    with open(os.path.join(out_dir, "CREDITS.md"), "w", encoding="utf-8", newline="\n") as f:
        f.write(
            "# Créditos\n\n"
            "Os guias deste pacote são uma adaptação dos guias de up do **RestedXP**\n"
            "para o WoW: Forever (https://github.com/RestedXP/RXPGuides), licenciados sob\n"
            "Creative Commons Atribuição-NãoComercial-CompartilhaIgual 4.0 (CC BY-NC-SA 4.0).\n\n"
            "Alterações: conversão automática para o formato do Azimute (tools/rxp2azimute.py);\n"
            "textos livres em inglês mantidos só para o cliente enUS; comandos sem\n"
            "equivalente removidos. Este pacote é distribuído gratuitamente, sob a mesma\n"
            "licença (ver LICENSE.txt). O RestedXP não endossa o Azimute.\n\n"
            "As missões de masmorra (DungeonQuests.lua) vêm do addon **Forever Dungeon Quests**\n"
            "(c) 2026 Sundee, licença MIT (https://github.com/ImSundee/forever-dungeon-quest,\n"
            "ver LICENSE-ForeverDungeonQuests.txt).\n\n"
            "Os feitiços de treinador (ClassSpells.lua) vêm do addon **What's Training**,\n"
            "(c) fusionpit, licença MIT (https://github.com/fusionpit/WhatsTraining,\n"
            "ver LICENSE-WhatsTraining.txt).\n"
        )

    total_steps = sum(len(g["steps"]) for g in converted)
    print("Guias convertidos: %d (%d passos) em %d arquivos" % (len(converted), total_steps, len(file_list)))
    for guide in converted:
        print("  %-12s %-48s %4d passos -> %s" % (guide["faction"] or "-", guide["name"], len(guide["steps"]), guide_id(guide)))
    print("Descartes / ajustes:")
    for key, count in stats.most_common():
        print("  %6d  %s" % (count, key))


if __name__ == "__main__":
    main()
