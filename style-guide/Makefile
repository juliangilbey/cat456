all: style-guide.pdf

style-guide.pdf: ../cat456.sty style-guide.tex
	pdflatex -interaction=nonstopmode style-guide

clean:
	rm -rf *.log *.aux *.out *.thm

veryclean: clean
	rm -f style-guide.pdf

.PHONY: clean veryclean

