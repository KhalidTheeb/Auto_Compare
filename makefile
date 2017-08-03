file=main

$(file).pdf: main.tex Intro.tex Problem.tex
	latex $(file) && latex $(file) && latex $(file) && dvipdf $(file)

#	latex $(file) && latex $(file) && latex $(file) && bibtex $(file) && latex $(file) && dvipdf $(file)
