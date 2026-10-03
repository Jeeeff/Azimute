"""Copia os dados salvos do GuiaUp para o Azimute (rodar com o jogo FECHADO).

GuiaUp.lua -> Azimute.lua, com GuiaUpDB -> AzimuteDB e GuiaUpCharDB -> AzimuteCharDB.
O arquivo antigo fica intacto; um Azimute.lua já existente não é sobrescrito.
"""
import glob
import os

WTF = r"C:\Program Files (x86)\World of Warcraft\_classic_beta_\WTF\Account"

for old in glob.glob(os.path.join(WTF, "**", "SavedVariables", "GuiaUp.lua"), recursive=True):
    new = os.path.join(os.path.dirname(old), "Azimute.lua")
    if os.path.exists(new):
        print("já existe, pulei:", new)
        continue
    with open(old, encoding="utf-8") as f:
        text = f.read()
    text = text.replace("GuiaUpCharDB", "AzimuteCharDB").replace("GuiaUpDB", "AzimuteDB")
    with open(new, "w", encoding="utf-8", newline="\n") as f:
        f.write(text)
    print("migrado:", new)
