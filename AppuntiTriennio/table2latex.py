from sys import argv
file=open(argv[1]).read().replace("\r",'').split("\n")
ncol=len(file[0].split("\t"));
latexTab="\\begin{tabular}{"+ncol*("| l ")+"|}\n"
for r in file:
	d=r.split("\t")
	latexTab=latexTab+"\\hline\n"
	for c in d:
		latexTab=latexTab+c+" & "
	latexTab=latexTab[:-3]+"\\\\ "
latexTab=latexTab+"\\hline\n\\end{tabular}"
f=open(argv[1].replace(".dat", "-tab.tex"),'w')
f.write(latexTab)
f.close()