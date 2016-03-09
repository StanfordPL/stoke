set ylabel "Number Successful Runs"

set yrange [0:16]

set style data histogram
set style histogram rowstacked
set style fill solid
set boxwidth 0.5

set key top right

set xtics rotate by -80

set terminal pdf  font ',18' size 6.3, 5
set output "counts.pdf"

load "moreland.pal"

plot 'counts.dat' using 2:xticlabels(1) ls 2 fillstyle pattern 3 title columnheader, \
     '' using 3:xticlabels(1) ls 2 fillstyle pattern 2 title columnheader
