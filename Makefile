build: main.tex
	docker run --rm -v ${PWD}:/workdir paperist/alpine-texlive-ja latexmk

clear:
	rm -rf *.aux *.aux *.dvi *.out *.toc *.fdb_latexmk *.fls *.log

watch: main.tex main.pdf
	docker run --rm -v ${PWD}:/workdir paperist/alpine-texlive-ja latexmk -pvc
