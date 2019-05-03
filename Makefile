TEX = pdflatex -interaction nonstopmode
BIB = bibtex

COVER   = cover
PAPER   = main
BUNDLE  = main.pdf

all:
	$(TEX) $(PAPER).tex

view: $(BUNDLE)
	open $(BUNDLE)

clean:
	rm -fv *.aux *.log *.bbl *.blg *.toc *.out *.lot *.lof $(PAPER).pdf $(BUNDLE)
