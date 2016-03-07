set xlabel "Benchmark"
set ylabel "Speedup over Native Client"

set yrange [0.6:2.5]

set style data histogram
set style fill solid

set xtics rotate by -50

set terminal pdf  font ',18' size 6.3, 5
set output "performance.pdf"

load "moreland.pal"

plot for [COL=2:4] 'performance.dat' using COL:xticlabels(1) ls COL title columnheader, 1 title "" ls 8
