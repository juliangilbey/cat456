all: solutions.pdf

solutions.pdf: intro.tex solutions.tex ch*/ch*.tex ch*/sec*/*.tex
	latexmk --pdf solutions

clean:
	latexmk -c solutions
	rm -f *.thm

veryclean:
	rm -f solutions.pdf

.PHONY: clean veryclean

