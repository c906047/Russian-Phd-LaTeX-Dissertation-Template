#!/bin/bash
#rm -rf *.aux *.bbl *.bcf *.blg *.glg *.glo *.gls *.ilg *.ist *.lof *.log *.lot *.nlo *.nls *.out *.pdf *.xml *.gz *.toc
/usr/texbin/pdflatex -file-line-error -synctex=1 -shell-escape -enable-write18 -interaction=nonstopmode synopsis.tex
/usr/texbin/biber synopsis
/usr/texbin/makeindex synopsis.nlo -s nomencl.ist -o synopsis.nls
/usr/texbin/pdflatex -file-line-error -synctex=1 -shell-escape -enable-write18 -interaction=nonstopmode synopsis.tex
#rm -rf *.aux *.bbl *.bcf *.blg *.glg *.glo *.gls *.ilg *.ist *.lof *.log *.lot *.nlo *.nls *.out  *.xml *.gz *.toc
