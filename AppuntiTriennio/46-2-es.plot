set terminal latex
set output "46-2-es-plt.tex"
set xlabel "$d(m)$" 
set xlabel  font "" textcolor lt -1 norotate
set x2label "" 
set x2label  font "" textcolor lt -1 norotate
set xrange [ * : * ] noreverse nowriteback
set x2range [ * : * ] noreverse nowriteback
set ylabel "$V$"
set ytics rotate
set ylabel  font "" textcolor lt -1 rotate
set fit brief errorvariables nocovariancevariables errorscaling prescale nowrap v5
plot '46-2-es.dat' using 1:2 smooth bezier title ""
