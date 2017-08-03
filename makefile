file=main

$(file).pdf:
	latex $(file) && latex $(file) && latex $(file) && dvipdf $(file)

#	latex $(file) && latex $(file) && latex $(file) && bibtex $(file) && latex $(file) && dvipdf $(file)
