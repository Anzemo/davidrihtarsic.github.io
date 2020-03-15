#! /bin/bash

pandoc *.md --to latex --from markdown --number-sections -F pandoc-crossref -F pandoc-citeproc --template skripta --listings --pdf-engine=pdflatex -V caption-justification=centering -o Skripta.pdf
