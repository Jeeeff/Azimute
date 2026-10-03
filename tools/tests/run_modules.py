"""Testa os módulos independentes do pacote (Azimute_Meter, Azimute_Bags) fora do jogo.

Cada módulo roda num LuaJIT separado, SEM o Azimute carregado, para provar que
funciona sozinho; depois um segundo teste carrega junto com o Azimute para
conferir o atalho no menu do minimapa.
"""
import sys, os
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "pylibs"))
from lupa import luajit21 as lupa

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.join(HERE, "..", "..")


def read(path):
    with open(path, "rb") as f:
        data = f.read()
    assert not data.startswith(b"\xef\xbb\xbf"), f"BOM em {path}"
    return data.decode("utf-8")


def toc_files(folder):
    name = os.path.basename(folder)
    toc = read(os.path.join(folder, name + ".toc"))
    return [l.strip() for l in toc.splitlines() if l.strip() and not l.startswith("#")]


def load_addon(lua, folder, ns_name):
    name = os.path.basename(folder)
    lua.execute("%s = {}" % ns_name)
    loader = lua.eval("""function(code, file, addon, ns)
        local chunk, err = loadstring(code, "@" .. file)
        if not chunk then error(err) end
        chunk(addon, _G[ns])
    end""")
    for f in toc_files(folder):
        loader(read(os.path.join(folder, f.replace("\\", os.sep))), f, name, ns_name)


def run(module, scenario, with_core=False):
    lua = lupa.LuaRuntime(unpack_returned_tuples=True)
    lua.execute(read(os.path.join(HERE, "wowstub.lua")))
    lua.execute(read(os.path.join(HERE, "modstub.lua")))
    if with_core:
        load_addon(lua, os.path.join(ROOT, "Azimute"), "NS")
    load_addon(lua, os.path.join(ROOT, module), "MOD")
    print(f"\n######## {module}{' + Azimute' if with_core else ' (sozinho)'}")
    lua.globals().WITH_CORE = with_core
    lua.execute(read(os.path.join(HERE, scenario)))


for module, scenario in [("Azimute_Meter", "scenario_meter.lua"), ("Azimute_Bags", "scenario_bags.lua"),
                         ("Azimute_Utils", "scenario_utils.lua"),
                         ("Azimute_Rares", "scenario_rares.lua"),
                         ("Azimute_Auction", "scenario_auction.lua")]:
    if not os.path.exists(os.path.join(ROOT, module, module + ".toc")):
        continue
    run(module, scenario, with_core=False)
    run(module, scenario, with_core=True)
print("\nTODOS OS TESTES DOS MÓDULOS PASSARAM")
