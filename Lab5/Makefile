SRC := 0.pas 1-0.pas

Inf5_1.pdf: 5.tex 5-2.tex $(SRC)
	pdflatex 5.tex -o Inf5_1.pdf

5-2.tex: 5-2.dot
	dot2tex --figonly 5-2.dot > 5-2.tex
