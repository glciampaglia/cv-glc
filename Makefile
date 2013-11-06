.PHONY: cv

cv: cv-glc.pdf

cv-glc.pdf: cv-glc.tex
	xelatex -shell-escape $^
	bibtex8 $(patsubst %.tex, %, $^)
	xelatex -shell-escape $^

clean:
	rm -f *.pdf
