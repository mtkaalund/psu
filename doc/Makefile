PROJECT=psu.tex

######
RM=@rm -rfv
#####
psu.pdf: $(PROJECT)
	pdflatex $(PROJECT)

spell-en: $(PROJECT)
	aspell -l en -t -c $(PROJECT)

spell-da: $(PROJECT)
	aspell -l da -t -c $(PROJECT)

dvi: $(PROJECT)
	latex $(PROJECT)

compress: psu.pdf
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile="psu-compressed.pdf" "psu.pdf"

show: psu.pdf
	evince psu.pdf &

all: psu.pdf dvi

clean:
#	@rm -rfv *.pdf
#	@rm -rfv *.dvi
#	@rm -rfv *.aux
#	@rm -rfv *.log
#	@rm -rfv *.toc
#	@rm -rfv *.tex.bak
	$(RM) *.out *.pdf *.dvi *.aux *.log *.tox *.tex.bak
