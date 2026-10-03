"""Carrega o Azimute + o pacote Azimute_Guides_Forever no LuaJIT e valida todos os guias."""
import sys, os, time
# LuaJIT pelo pacote "lupa":  python -m pip install lupa
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "pylibs"))
from lupa import luajit21 as lupa

BASE = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..")
HERE = os.path.dirname(os.path.abspath(__file__))
lua = lupa.LuaRuntime(unpack_returned_tuples=True)

def read(path):
    with open(path, "rb") as f:
        data = f.read()
    assert not data.startswith(b"\xef\xbb\xbf"), f"BOM em {path}"
    return data.decode("utf-8")

lua.execute(read(os.path.join(HERE, "wowstub.lua")))
lua.execute("NS = {}; PACK = {}")
loader = lua.eval("""function(code, name, ns, addon)
    local chunk, err = loadstring(code, "@" .. name)
    if not chunk then error(err) end
    chunk(addon, ns)
end""")

def load_addon(folder, toc_name, ns):
    toc = read(os.path.join(BASE, folder, toc_name))
    for f in [l.strip() for l in toc.splitlines() if l.strip() and not l.startswith("#")]:
        loader(read(os.path.join(BASE, folder, f.replace("\\", os.sep))), f, ns, folder)

load_addon("Azimute", "Azimute.toc", lua.eval("NS"))
start = time.time()
load_addon("Azimute_Guides_Forever", "Azimute_Guides_Forever.toc", lua.eval("PACK"))
load_addon("Azimute_Guides_Classic", "Azimute_Guides_Classic.toc", lua.eval("PACK"))
print("pacote carregado (só cabeçalhos) em %.0f ms" % ((time.time() - start) * 1000))

lua.execute(r'''
local S, ns = STUB, NS
S.player.faction, S.player.race, S.player.map = "Horde", "Scourge", 1420
S.FireEvent("ADDON_LOADED", "Azimute")
S.FireEvent("PLAYER_LOGIN")
S.RunTimers()
local list = ns.Registry:List()
local lazy = 0
for _, g in ipairs(list) do if g.lazy then lazy = lazy + 1 end end
print(("guias registrados: %d (%d sob demanda)"):format(#list, lazy))
print("guia escolhido para Renegado nível 1: " .. tostring(ns.Engine.guide and ns.Registry.DisplayName(ns.Engine.guide)))

-- lê todos os guias por completo e conta avisos do parser
local before = #S.printed
local steps, goals, badNext = 0, 0, 0
local t0 = os.clock()
for _, g in ipairs(list) do
    local full = ns.Registry:Get(g.id)
    assert(full and full.steps, "falhou: " .. g.id)
    steps = steps + #full.steps
    for _, step in ipairs(full.steps) do goals = goals + #step.goals end
    if full.next and not ns.Registry:Peek(full.next) then badNext = badNext + 1 end
end
local warnings = #S.printed - before
print(("leitura completa: %d passos, %d objetivos em %.0f ms"):format(steps, goals, (os.clock() - t0) * 1000))
print("avisos do parser: " .. warnings)
for i = before + 1, math.min(#S.printed, before + 15) do print("   " .. S.printed[i]) end
print("#next quebrados: " .. badNext)
print("perfis de equipamento: " .. #ns.Gear.profiles)
local n = 0 for _ in pairs(ns.Router.flightTimes.Horde or {}) do n = n + 1 end
print("tempos de voo (Horda): " .. n .. " mestres")
local q = 0 for _, d in ipairs(ns.DungeonQuests.dungeons) do q = q + #d.quests end
local c = 0 for _ in pairs(ns.Trainer.spells) do c = c + 1 end
print("classes com treino: " .. c)
print("masmorras com missões: " .. #ns.DungeonQuests.dungeons .. " (" .. q .. " missões)")
''')
