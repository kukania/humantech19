MAIN = abstract_hutech_english

all: pdflatex

pdflatex: ${MAIN}.pdflatex
pdf: ${MAIN}.pdf

${MAIN}.pdflatex : ${MAIN}.tex references.bib
	pdflatex ${MAIN}

${MAIN}.pdf: ${MAIN}.ps
	rm -rf ./${MAIN}.pdf
	ps2pdf -dPDFSETTINGS=/prepress -dEmbedAllFonts=true ${MAIN}*.ps 

${MAIN}.ps: ${MAIN}.dvi
	dvips -Ppdf -Pcmz -Pamz -t letter -D 1200 -G0 -o ${MAIN}.ps ${MAIN}.dvi 

${MAIN}.dvi : ${MAIN}.tex *.tex references.bib
	latex --interaction=nonstopmode ${MAIN}.tex

bibtex:
	pdflatex ${MAIN}
	bibtex ${MAIN}
	pdflatex ${MAIN}
	pdflatex ${MAIN}

clean:
	rm -f ./*.aux~
	rm -f ./*.tex~
	rm -f ./${MAIN}.dvi
	rm -f ./${MAIN}.ps
	rm -f ./${MAIN}.pdf
