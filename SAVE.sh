#!/bin/bash
set -e

TEXTMF=${1:-"~/texlive/texmf-local"}
FILE=m_style.sty

cp $FILE $TEXTMF/tex/latex/local/
texhash

cd example
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex

#rm $TEXTMF/tex/latex/local/$FILE