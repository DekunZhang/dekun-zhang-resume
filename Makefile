DOCUMENT := main
LATEXMK := latexmk
LATEXMKFLAGS := -xelatex -shell-escape -synctex=1 -interaction=nonstopmode -file-line-error
CLEANEXTS := *.aux *.bbl *.bcf *.blg *.log *.out *.run.xml *.toc *.lof *.lot *.fdb_latexmk *.fls

.PHONY: all clean

all: $(DOCUMENT).pdf

$(DOCUMENT).pdf: $(DOCUMENT).tex
	$(LATEXMK) $(LATEXMKFLAGS) $(DOCUMENT)

clean:
	$(LATEXMK) -C $(DOCUMENT)
	rm -f $(CLEANEXTS)

