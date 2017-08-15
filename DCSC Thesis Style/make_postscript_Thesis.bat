latex.exe --src  mscThesis.tex
bibtex.exe mscThesis
latex.exe --src -interaction=nonstopmode mscThesis.tex
makeindex.exe mscThesis.nlo -s STYLESTUFF/mynomencl.ist -o mscThesis.nls
latex.exe --src -interaction=nonstopmode mscThesis
makeindex.exe -s STYLESTUFF/myindex.ist mscThesis.idx
latex.exe --src -interaction=nonstopmode mscThesis
bibtex.exe mscThesis
latex.exe --src -interaction=nonstopmode mscThesis
REM Convert DVI to Postscript:
dvips.exe -P pdf -j0 mscThesis.dvi
REM Convert Postscript to PDF:
ps2pdf.exe -sPAPERSIZE#a4 -dSAFER -dBATCH -dNOPAUSE -sDEVICE#pdfwrite -dColorConversionStrategy#/LeaveColorUnchanged -dPDFSETTINGS#/printer "mscThesis.ps" "mscThesis.pdf"
pause
