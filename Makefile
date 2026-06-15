main: main.tex clean
	pdflatex main.tex
	makeindex -s nomencl.ist -t "main.nlg" -o "main.nls" "main.nlo"
	bibtex main.aux
	pdflatex main.tex
	pdflatex main.tex
	pdflatex main.tex
tikz: main.tex clean
	pdflatex -shell-escape main.tex
	makeindex -s nomencl.ist -t "main.nlg" -o "main.nls" "main.nlo"
	bibtex main.aux
	pdflatex -shell-escape main.tex
	pdflatex -shell-escape main.tex
	pdflatex -shell-escape main.tex
clean:
	-rm main.aux main.auxlock main.bbl main.blg main.lof main.log main.out main.pdf main.toc main.nlo main.nls main.nlg main.lot
	-rm tikz/*
	-rm */*.aux
