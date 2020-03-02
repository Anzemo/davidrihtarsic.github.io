#! /bin/bash

pandoc "Building a Glider.md" --to latex -o "Lets STEM IT - Building a glider.pdf" --from markdown \
  --template skripta \
  -M listings \
  -F pandoc-crossref \
  -F pandoc-citeproc \
  -V caption-justification=centering \
  --bibliography=bibtex.bib \
  -V table-use-row-colors \
  --number-sections \
  -V documentclass=book -V book \
  --toc \
  -M author:"Authors: David Rihtaršič, Veronika Šuligoj, Primož Pirnovar, Stanislav Avsec" \
  -M footer-left:"University of Ljubljana, Faculty of Education" \
  -M date:"March 2020" \
  -M titlepage -M title:"Building a Glider" \
  -M subtitle:"Let's STEM IT" \
  -M logo="./Logos/logos.png" \
  -M logo-width=350 \
  --pdf-engine=pdflatex
