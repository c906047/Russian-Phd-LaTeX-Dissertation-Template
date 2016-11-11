#!/bin/bash
rm -rf *.aux *.bbl *.bcf *.blg *.glg *.glo *.gls *.ilg *.ist *.lof *.log *.lot *.nlo *.nls *.out *.pdf *.xml *.gz *.toc
/usr/texbin/pdflatex -file-line-error -synctex=1 -shell-escape -enable-write18 -interaction=nonstopmode dissertation.tex
/usr/texbin/biber dissertation
/usr/texbin/makeglossaries dissertation.glo
/usr/texbin/pdflatex -file-line-error -synctex=1 -shell-escape -enable-write18 -interaction=nonstopmode dissertation.tex
/usr/texbin/makeindex dissertation.nlo -s nomencl.ist -o dissertation.nls
/usr/texbin/pdflatex -file-line-error -synctex=1 -shell-escape -enable-write18 -interaction=nonstopmode dissertation.tex
#rm -rf *.aux *.bbl *.bcf *.blg *.glg *.glo *.gls *.ilg *.ist *.lof *.log *.lot *.nlo *.nls *.out  *.xml *.gz *.toc
