set xlabel "Benchmark"
set ylabel "Number Successful Runs"

set yrange [0:11]

set style data histogram
set style histogram rowstacked
set style fill solid
set boxwidth 0.5

set key outside top

set xtics rotate by -50

set terminal pdf  font ',18' size 6.3, 5
set output "counts.pdf"

set style line 1 lt 1 lc rgb "green"
set style line 2 lt 1 lc rgb "blue"
set style line 3 lt 1 lc rgb "orange"
set style line 4 lt 1 lc rgb "red"

plot 'counts.dat' using 2:xticlabels(1) ls 2 fillstyle pattern 3 title columnheader, \
     '' using 3:xticlabels(1) ls 3 fillstyle pattern 1 title columnheader
