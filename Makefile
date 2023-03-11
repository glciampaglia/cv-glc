.PHONY: cv

all: cv-glc-it.pdf cv-glc.pdf portfolio.pdf publist.pdf eu.pdf

cv: cv-glc.pdf

%.pdf: %.tex
	xelatex -shell-escape $^
	biber $(patsubst %.tex, %, $^)
	xelatex -shell-escape $^
	xelatex -shell-escape $^

clean:
	rm -f *.pdf *.aux *.bbl *.blg *-blx.bib *.out *.log *.run.xml *.bcf \
		*.synctex.gz *.fdb_latexmk *.fls *.bib.sav.tmp *.xdv *.bib.bak
