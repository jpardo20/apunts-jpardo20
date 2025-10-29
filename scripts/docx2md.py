#!/usr/bin/env python3
"""
docx2md.py — Conversió simple d'un .docx a .md amb pandoc.

Ús bàsic:
  python3 docx2md.py entrada.docx [sortida.md] [--media-dir MEDIA]

Per defecte, si no poses sortida.md, crearà un fitxer .md amb el mateix nom
al mateix directori i extraurà les imatges a "<carpeta_del_md>/media".
"""

from pathlib import Path
import argparse
import shutil
import subprocess
import sys

def check_pandoc():
    if shutil.which("pandoc") is None:
        sys.exit("❌ No s'ha trobat 'pandoc'. Instala'l i torna-ho a provar.")

def build_cmd(docx: Path, md: Path, media: Path, use_legacy_flag: bool = False):
    # Flags recomanades: GFM + no wrap + encapçalaments ATX
    base = [
        "pandoc",
        str(docx),
        "--to", "gfm",
        "--wrap=none",
        "--extract-media", str(media),
        "-o", str(md),
    ]
    # Compatibilitat: pandoc ≥ 2.11 usa --markdown-headings=atx; antics: --atx-headers
    if use_legacy_flag:
        base.insert( base.index("--to") , "--atx-headers")
    else:
        base.extend(["--markdown-headings=atx"])
    return base

def convert(docx: Path, md: Path, media: Path):
    md.parent.mkdir(parents=True, exist_ok=True)
    media.mkdir(parents=True, exist_ok=True)

    # 1r intent: flag modern
    cmd = build_cmd(docx, md, media, use_legacy_flag=False)
    try:
        subprocess.run(cmd, check=True, capture_output=True, text=True)
        return
    except subprocess.CalledProcessError as e:
        # 2n intent: flag antic (compatibilitat)
        cmd2 = build_cmd(docx, md, media, use_legacy_flag=True)
        try:
            subprocess.run(cmd2, check=True, capture_output=True, text=True)
            return
        except subprocess.CalledProcessError as e2:
            print("---- STDERR (intent 1) ----")
            print(e.stderr or "")
            print("---- STDERR (intent 2) ----")
            print(e2.stderr or "")
            sys.exit("❌ Error de pandoc. Revisa el missatge anterior.")

def main():
    parser = argparse.ArgumentParser(description="Converteix un DOCX a Markdown amb pandoc.")
    parser.add_argument("input_docx", type=Path, help="Ruta al fitxer .docx d'entrada")
    parser.add_argument("output_md", nargs="?", type=Path, help="Ruta de sortida .md (opcional)")
    parser.add_argument("--media-dir", type=Path, default=None,
                        help="Carpeta per a les imatges extretes (per defecte: <dir_sortida>/media)")
    args = parser.parse_args()

    docx = args.input_docx
    if not docx.exists() or docx.suffix.lower() != ".docx":
        sys.exit("❌ Cal passar un fitxer existent amb extensió .docx")

    md = args.output_md or docx.with_suffix(".md")
    md = md if md.suffix.lower() == ".md" else md.with_suffix(".md")
    media = args.media_dir or (md.parent / "media")

    check_pandoc()
    convert(docx, md, media)
    rel_media = Path("media") if args.media_dir is None else media
    print(f"✅ Conversió completada:\n  MD: {md}\n  Imatges: {media}\n")
    print(f"Recorda que les rutes d'imatge al Markdown apuntaran a '{rel_media}/...'")

if __name__ == "__main__":
    main()
