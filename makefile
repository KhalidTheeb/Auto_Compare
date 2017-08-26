file1=Cast
file2=Autocast
file3=CastShort

all: $(file1).pdf $(file2).pdf 

$(file1).pdf: $(file1).tex CastIntro.tex CastProblem.tex CastUsage.tex CastExp.tex Conclusion.tex main.bib makefile
	latex $(file1) && bibtex $(file1) && latex $(file1) && latex $(file1) && dvipdf $(file1)

$(file2).pdf: $(file2).tex AutoIntro.tex AutoProblem.tex AutoUsage.tex AutoImpl.tex AutoExp.tex AutoConclude.tex main.bib makefile
	latex $(file2) && bibtex $(file2) && latex $(file2) && latex $(file2) && dvipdf $(file2)

$(file3).pdf: $(file3).tex CastIntroShort.tex CastProblemShort.tex CastUsageShort.tex CastExpShort.tex CastConcludeShort.tex main.bib makefile
	latex $(file3) && latex $(file3) && latex $(file3) && dvipdf $(file3)
