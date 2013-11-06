.PHONY: cv

all: cv-glc.pdf portfolio.pdf publist.pdf

portfolio.pdf: portfolio.tex
	xelatex -shell-escape $^

%.pdf: %.tex
	xelatex -shell-escape $^
	biber $(patsubst %.tex, %, $^)
	xelatex -shell-escape $^
	xelatex -shell-escape $^

clean:
	rm -f *.pdf *.aux *.bbl *.blg *-blx.bib *.out *.log *.run.xml *.bcf
