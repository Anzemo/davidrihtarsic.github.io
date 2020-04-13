#! /bin/sh

grep -h "^>\|^#" [0-2]*.md | sed 's/^> #/\n> #/;s/^#/\n#/' > ./Zbirnik_nalog_Naloge.md
pandoc Zbirnik*.md --to latex --from markdown --number-sections -F pandoc-crossref -F pandoc-citeproc --template skripta --listings --pdf-engine=pdflatex -V caption-justification=centering -o ZbirnikNalog.pdf
