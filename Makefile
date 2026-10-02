.PHONY: proposal clean

proposal:
	latexmk -outdir="$(CURDIR)/build/proposal" docs/proposal/main.tex

clean:
	latexmk -C -outdir="$(CURDIR)/build/proposal" docs/proposal/main.tex
