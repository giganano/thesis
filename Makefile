
TEXCOMPILER := pdflatex
BIBCOMPILER := bibtex

all: main.pdf

%.pdf: *.tex *.bib
	@ $(TEXCOMPILER) $(basename $@)
	@ $(BIBCOMPILER) $(basename $@)
	@ $(TEXCOMPILER) $(basename $@)
	@ $(TEXCOMPILER) $(basename $@)

.PHONY: clean
clean:
	@ rm -f *.aux
	@ rm -f *-blx.bib
	@ rm -f *.bbl
	@ rm -f *.blg
	@ rm -f *.lof
	@ rm -f *.log
	@ rm -f *.lot
	@ rm -f *.out
	@ rm -f *.toc
	@ rm -f *.run.xml
	@ rm -f *.pdf

