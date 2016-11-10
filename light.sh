#!/bin/bash
/usr/texbin/pdflatex -file-line-error -synctex=1 -shell-escape -enable-write18 -interaction=nonstopmode dissertation.tex
#/usr/texbin/biber dissertation
#/usr/texbin/makeglossaries dissertation.glo
#/usr/texbin/pdflatex -file-line-error -synctex=1 -shell-escape -enable-write18 -interaction=nonstopmode dissertation.tex
#/usr/texbin/makeindex dissertation.nlo -s nomencl.ist -o dissertation.nls
#/usr/texbin/pdflatex -file-line-error -synctex=1 -shell-escape -enable-write18 -interaction=nonstopmode dissertation.tex
