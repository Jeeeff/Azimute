import sys, os, re
# LuaJIT pelo pacote "lupa":  python -m pip install lupa
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "pylibs"))
from lupa import luajit21 as lupa

ADDON = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "Azimute")
HERE = os.path.dirname(os.path.abspath(__file__))

lua = lupa.LuaRuntime(unpack_returned_tuples=True)

def read(path):
    with open(path, "rb") as f:
        data = f.read()
    assert not data.startswith(b"\xef\xbb\xbf"), f"BOM em {path}"
    return data.decode("utf-8")

S = lua.execute(read(os.path.join(HERE, "wowstub.lua")))

# Arquivos na ordem do .toc
toc = read(os.path.join(ADDON, "Azimute.toc"))
files = [l.strip() for l in toc.splitlines() if l.strip() and not l.startswith("#")]
lua.execute("NS = {}")
loader = lua.eval("""function(code, name)
    local chunk, err = loadstring(code, "@" .. name)
    if not chunk then error(err) end
    chunk("Azimute", NS)
end""")
for f in files:
    loader(read(os.path.join(ADDON, f.replace("\\", os.sep))), f)
    print(f"ok  {f}")
# guias de teste (fora do .toc, so para os testes)
for f in ["Elwynn.lua", "Durotar.lua", "Deathknell.lua"]:
    loader(read(os.path.join(ADDON, "Guides", "Test", f)), f)

lua.execute(read(os.path.join(HERE, "scenario.lua")))
print("\nTODOS OS TESTES PASSARAM")
