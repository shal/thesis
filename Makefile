TEX = pdflatex -interaction nonstopmode
BIB = bibtex8 -H -c cp1251

COVER   = cover
PAPER   = main
BUNDLE  = main.pdf

all:
	$(TEX) $(PAPER) || true
	$(BIB) $(PAPER) || true
	$(TEX) $(PAPER) || true
	$(TEX) $(PAPER) || true

view: $(BUNDLE)
	open $(BUNDLE)

clean:
	rm -fv *.aux *.log *.bbl *.blg *.toc *.out *.lot *.lof $(PAPER).pdf $(BUNDLE)
