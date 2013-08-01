
TeXFileName = IttiModel

pdf: ${TeXFileName}.pdf

${TeXFileName}.pdf: ${TeXFileName}.tex
	xelatex $<
	xelatex $<
	bibtex ${TeXFileName}
	xelatex $<
	xelatex $<

clean:  
	rm -f ${TeXFileName}.aux ${TeXFileName}.bbl ${TeXFileName}.blg ${TeXFileName}.log ${TeXFileName}.out ${TeXFileName}.pdf ${TeXFileName}.toc
