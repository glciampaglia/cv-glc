.PHONY: cv

all: cv-glc-it.pdf cv-glc.pdf portfolio.pdf publist.pdf eu.pdf

eu.pdf: eu.tex
	xelatex -shell-escape $^

portfolio.pdf: portfolio.tex
	xelatex -shell-escape $^

%.pdf: %.tex
	xelatex -shell-escape $^
	xelatex -shell-escape $^
	biber $(patsubst %.tex, %, $^)
	xelatex -shell-escape $^

clean:
	rm -f *.pdf *.aux *.bbl *.blg *-blx.bib *.out *.log *.run.xml *.bcf \
		*.synctex.gz *.fdb_latexmk *.fls *.bib.sav.tmp *.xdv *.bib.bak
