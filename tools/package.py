#!/usr/bin/env python3
"""Monta o zip de distribuição (formato CurseForge/Wago): as pastas de addon na raiz do zip.

Uso (na raiz do projeto):  python tools/package.py
Saída: dist/Azimute-<versão>.zip  (a versão vem de Azimute/Azimute.toc)

Confere antes de empacotar: arquivos do .toc existem, sem BOM, UTF-8 válido.
Fora do zip: Guides/Test/ (só para os testes), ROADMAP.md, caches do Python, arquivos do sistema.
"""
import os
import re
import sys
import zipfile

ROOT = os.path.abspath(os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
PACKAGES = ["Azimute", "Azimute_Guides_Forever", "Azimute_Guides_Classic", "Azimute_Meter", "Azimute_Bags", "Azimute_Utils", "Azimute_Rares", "Azimute_Auction"]
EXCLUDE_DIRS = {"__pycache__", ".git"}
EXCLUDE_REL = {"Azimute/Guides/Test", "Azimute/ROADMAP.md"}
EXCLUDE_NAMES = {".DS_Store", "Thumbs.db"}
FIXED_DATE = (2026, 1, 1, 0, 0, 0)  # zip reproduzível: mesmo conteúdo, mesmo arquivo


def read_toc(pkg):
    path = os.path.join(ROOT, pkg, pkg + ".toc")
    if not os.path.exists(path):
        sys.exit(f"ERRO: {path} não existe")
    data = open(path, "rb").read()
    if data.startswith(b"\xef\xbb\xbf"):
        sys.exit(f"ERRO: BOM em {path}")
    text = data.decode("utf-8")
    meta, files = {}, []
    for line in text.splitlines():
        line = line.strip()
        m = re.match(r"^##\s*([\w-]+):\s*(.*)$", line)
        if m:
            meta[m.group(1)] = m.group(2)
        elif line and not line.startswith("#"):
            files.append(line.replace("\\", "/"))
    return meta, files


def collect(pkg):
    out = []
    base = os.path.join(ROOT, pkg)
    for dirpath, dirnames, filenames in os.walk(base):
        rel_dir = os.path.relpath(dirpath, ROOT).replace(os.sep, "/")
        dirnames[:] = sorted(d for d in dirnames
                             if d not in EXCLUDE_DIRS and f"{rel_dir}/{d}" not in EXCLUDE_REL)
        for name in sorted(filenames):
            rel = f"{rel_dir}/{name}"
            if name in EXCLUDE_NAMES or name.endswith(".pyc") or rel in EXCLUDE_REL:
                continue
            out.append(rel)
    return out


def check(pkg, files_in_zip, toc_files):
    problems, warnings = [], []
    prefix = pkg + "/"
    in_zip = {f[len(prefix):] for f in files_in_zip if f.startswith(prefix)}
    for f in toc_files:
        if f not in in_zip:
            problems.append(f"{pkg}: '{f}' está no .toc mas não vai no zip")
    listed = set(toc_files)
    for f in sorted(in_zip):
        if f.endswith(".lua") and f not in listed:
            warnings.append(f"{pkg}: '{f}' não está no .toc (arquivo solto)")
    for f in files_in_zip:
        if f.startswith(prefix) and f.endswith((".lua", ".toc", ".xml", ".md", ".txt")):
            data = open(os.path.join(ROOT, f), "rb").read()
            if data.startswith(b"\xef\xbb\xbf"):
                problems.append(f"BOM em {f}")
            try:
                data.decode("utf-8")
            except UnicodeDecodeError:
                problems.append(f"{f} não é UTF-8")
    return problems, warnings


def main():
    all_files, problems, warnings, versions = [], [], [], {}
    for pkg in PACKAGES:
        meta, toc_files = read_toc(pkg)
        versions[pkg] = meta.get("Version", "?")
        files = collect(pkg)
        p, w = check(pkg, files, toc_files)
        problems += p
        warnings += w
        all_files += files
    if problems:
        print("\n".join("ERRO: " + p for p in problems))
        sys.exit(1)
    version = versions["Azimute"]
    os.makedirs(os.path.join(ROOT, "dist"), exist_ok=True)
    target = os.path.join(ROOT, "dist", f"Azimute-{version}.zip")
    with zipfile.ZipFile(target, "w", zipfile.ZIP_DEFLATED, compresslevel=9) as z:
        for rel in all_files:
            info = zipfile.ZipInfo(rel, FIXED_DATE)
            info.compress_type = zipfile.ZIP_DEFLATED
            info.external_attr = 0o644 << 16
            with open(os.path.join(ROOT, rel), "rb") as f:
                z.writestr(info, f.read())
    for w in warnings:
        print("aviso:", w)
    for pkg in PACKAGES:
        n = sum(1 for f in all_files if f.startswith(pkg + "/"))
        print(f"{pkg} {versions[pkg]}: {n} arquivos")
    print(f"gerado: {os.path.relpath(target, ROOT)} ({os.path.getsize(target) / 1024:.0f} KB)")


if __name__ == "__main__":
    main()
