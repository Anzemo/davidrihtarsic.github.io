#! /bin/bash

pandoc *.md --to latex --from markdown -F pandoc-crossref -F pandoc-citeproc --template skripta --listings --pdf-engine=pdflatex -o Skripta.pdf
