all: solutions.pdf subdirs

solutions.pdf: cat456.sty intro.tex solutions.tex ch*/ch*.tex ch*/sec*/*.tex
	latexmk -pdf -interaction=nonstopmode solutions

subdirs:
	$(MAKE) -C style-guide all

clean:
	latexmk -c solutions
	rm -f *.thm
	$(MAKE) -C style-guide clean

veryclean: clean
	rm -f solutions.pdf
	$(MAKE) -C style-guide veryclean

.PHONY: subdirs clean veryclean

