latex.exe mscThesis.tex
bibtex.exe mscLiterature
latex.exe mscLiterature.tex
makeindex.exe mscLiterature.glo -s nomencl.ist -o mscLiterature.gls
latex.exe mscLiterature
makeindex.exe -s StyleStuff/myindex.ist mscLiterature.idx
latex.exe mscLiterature
bibtex.exe mscLiterature
latex.exe mscLiterature
dvips.exe -P pdf -G0 -t A4 mscLiterature.dvi
ps2pdf.exe mscLiterature.ps
pause
