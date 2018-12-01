#based off of github.com/bd-j/speccal

all: main.pdf

# '$<' holds the first dependency of a rule
# 'latexmk' properly handles latex files, bib files, and should be included with all
# latex distributions
# -use-make tells latexmk to call 'make' to generate missing files
%.pdf: %.tex 
	latexmk -pdf $<

clean:
	latexmk -c
	rm *.bbl *.blg *.dvi *.fdb_latexmk *Notes.bib main.pdf *~
