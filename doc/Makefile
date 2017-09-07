PROJECT=Documentation
PDFCMD	?= pdflatex -halt-on-error -file-line-error -shell-escape -jobname=$(PROJECT)
FILES=$(wildcard *.tex)
HEADDOCUMENT=psu.tex
######
RM=@rm -rfv
#####
$(PROJECT).pdf: $(HEADDOCUMENT) dvi
	pdflatex $(HEADDOCUMENT)
.DEFAULT: all
.PHONY: all clean

$(PROJECT).pdf: $(FILES)
	$(PDFCMD) $(HEADDOCUMENT)
	$(PDFCMD) $(HEADDOCUMENT)

spell-en: $(PROJECT)
	aspell -l en -t -c $(PROJECT)

spell-da: $(PROJECT)
	aspell -l da -t -c $(PROJECT)

dvi: $(PROJECT)
	latex $(PROJECT)

compress: psu.pdf
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile="psu-compressed.pdf" "$(PROJECT).pdf"

show: $(PROJECT).pdf
	evince $(PROJECT).pdf &

all: $(PROJECT).pdf

clean:
#	@rm -rfv *.pdf
#	@rm -rfv *.dvi
#	@rm -rfv *.aux
#	@rm -rfv *.log
#	@rm -rfv *.toc
#	@rm -rfv *.tex.bak
	$(RM) *.out *.pdf *.dvi *.aux *.log *.toc *.tex.bak *.bbl *.blg
