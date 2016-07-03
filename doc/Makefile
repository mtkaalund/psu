PROJECT=psu.tex

pdf: $(PROJECT)
	pdflatex $(PROJECT)

dvi: $(PROJECT)
	latex $(PROJECT)

compress: pdf
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile="psu-compressed.pdf" "psu.pdf"

all: pdf dvi

clean:
	@rm -rfv *.pdf
	@rm -rfv *.dvi
	@rm -rfv *.aux
	@rm -rfv *.log
