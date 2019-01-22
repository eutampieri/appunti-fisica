set terminal latex
set output "gr-gra-1.tex"
set xlabel "$d_{12} \\cdot 10^6$" 
set xlabel  font "" textcolor lt -1 norotate
set x2label "" 
set x2label  font "" textcolor lt -1 norotate
set xrange [ * : * ] noreverse nowriteback
set x2range [ * : * ] noreverse nowriteback
set ylabel "$F_{12} (N) \\cdot 10^3$"
set ytics rotate
set ylabel  font "" textcolor lt -1 rotate
set fit brief errorvariables nocovariancevariables errorscaling prescale nowrap v5
plot 'gr-gra-1.dat' using 1:2 smooth cspline title ""
