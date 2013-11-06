.PHONY: cv

all: cv-glc.pdf portfolio.pdf publist.pdf

%.pdf: %.tex
	xelatex -shell-escape $^
	biber $(patsubst %.tex, %, $^)
	xelatex -shell-escape $^
	xelatex -shell-escape $^

clean:
	rm -f *.pdf *.aux *.bbl *.blg *-blx.bib *.out *.log *.run.xml
