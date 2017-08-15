latex.exe --src -interaction=nonstopmode mscThesis
bibtex.exe mscThesis
rem latex.exe --src -interaction=nonstopmode mscThesis.tex
latex.exe --src  mscThesis
makeindex.exe mscThesis.nlo -s STYLESTUFF/mynomencl.ist -o mscThesis.nls
latex.exe --src -interaction=nonstopmode mscThesis
makeindex.exe -s STYLESTUFF/myindex.ist mscThesis.idx
latex.exe --src -interaction=nonstopmode mscThesis
bibtex.exe mscThesis
REM Convert DVI straight to PDF:
pdflatex.exe -interaction=nonstopmode mscThesis
pause
