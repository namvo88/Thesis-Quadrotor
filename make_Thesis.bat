latex.exe mscThesis.tex
bibtex.exe mscThesis
latex.exe mscThesis.tex
makeindex.exe mscThesis.glo -s nomencl.ist -o mscThesis.gls
latex.exe mscThesis
makeindex.exe -s StyleStuff/myindex.ist mscThesis.idx
latex.exe mscThesis
bibtex.exe mscThesis
latex.exe mscThesis
dvips.exe -P pdf -G0 -t A4 mscThesis.dvi
ps2pdf.exe mscThesis.ps
pause
