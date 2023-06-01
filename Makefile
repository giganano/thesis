
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
	@ rm -f *.bbl
	@ rm -f *.blg
	@ rm -f *.log
	@ rm -f *.out
	@ rm -f main.pdf

