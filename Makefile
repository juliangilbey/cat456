all: solutions.pdf

solutions.pdf: intro.tex solutions.tex ch*/ch*.tex ch*/sec*/*.tex
	latexmk -pdf -interaction=nonstopmode solutions

clean:
	latexmk -c solutions
	rm -f *.thm

veryclean: clean
	rm -f solutions.pdf

.PHONY: clean veryclean

