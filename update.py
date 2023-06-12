#!/usr/bin/env python
# coding: utf-8

from pathlib import Path
import subprocess
import os
from datetime import datetime

lily = Path(r"c:\Program Files (x86)\LilyPond\usr\bin\lilypond.exe")
timidity = Path(r"c:\Users\fabienma\Downloads\TiMidity++-2.15.0\timidity.exe")
normalize = Path(r"ffmpeg-normalize.exe")
#  ffmpeg-normalize.exe .\out.wav -nt peak -t -1 -c:a mp3 -o out3.mp3
# .\timidity.exe C:\Users\fabienma\git\musique\coro_s\hymn\hymn.mid -Ow -o out.wav

sources = Path("lilypond")
for f in sources.glob("*"):
    if not (f.is_file() and f.suffix == ".ly"):
        continue
    dest = Path(f"{f.stem}")
    pdf = dest / f"{f.stem}.pdf"
    has_pdf = pdf.exists()
    update = not has_pdf
    if has_pdf:
        pdf_date = datetime.fromtimestamp(pdf.stat().st_mtime)
        ly_date = datetime.fromtimestamp(f.stat().st_mtime)
        if pdf_date < ly_date:
            update = True
    if update:
        print(f"{f} to be compiled!")
        process = subprocess.run([str(lily), '-dno-point-and-click', str(f)],
                                 shell=True,
                                 stdout=subprocess.PIPE, 
                                 universal_newlines=True)
        for midi in Path(".").glob('*.mid'):
            wav = midi.with_suffix(".wav")
            mp3 = midi.with_suffix(".mp3")
            os.system(f"{timidity} {midi} -Ow -o {wav}")
            # process = subprocess.run([str(timidity), f'{midi}', '-Ow', f'-o{wav}'],
            #                          shell=True,
            #                      stdout=subprocess.PIPE,
            #                      universal_newlines=True)
            os.system(f'ffmpeg-normalize.exe {wav} -nt peak -t -1 -c:a mp3 -o {mp3}')
            wav.unlink()
        for o in Path(".").glob('*'):
            if o.is_file():
                suf = o.suffix
                if suf not in ['.pdf', '.mid', '.mp3']:
                    continue
                stem = o.stem.replace('--', '-')
                dest.mkdir(exist_ok=True)
                o.replace(dest / f"{stem}{suf}")


