file=main

$(file).pdf: main.tex Intro.tex Problem.tex Golden.tex Auto.tex Experiments.tex Conclusion.tex main.bib makefile
	latex $(file) && bibtex $(file) && latex $(file) && latex $(file) && dvipdf $(file)

#	latex $(file) && latex $(file) && latex $(file) && dvipdf $(file)
