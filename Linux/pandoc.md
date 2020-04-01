### PANDOC
Program za pretvorbo dokumentov. Naveč ga uporabljam za pretvorbo iz `MARKDOWN` dokumentov v `PDF` dokumente. Na primer:  

```bash
pandoc --from markdown -F pandoc-crossref -F pandoc-citeproc --template eisvogel --listings --pdf-engine=xelatex index.md -o index.pdf
```

V verziji pandoc 2.8 mi niso delale slike...  

- odstraniš grffile iz templata in je ok (menda da delajo na tem...)

**Skripta**  
Lahko bi v templatu definral različne listingse.

``` vaja
VAJA: NAPETOSTNI POTENCIALI IN NAPETOST
Zanima me kako bi zgledalo tole v dokumenti, če bi podajal naloge za študente v taki obliki.
A je v tem listingsu vsaka vrstica naoisana v novi 
nrstici.
```


