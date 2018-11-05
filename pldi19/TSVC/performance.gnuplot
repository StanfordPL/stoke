set output "performance.png"
set terminal png

color1 = "#0000dd"; color2 = "#7676ee"; color3 = "#c0c0ff"; color4 = "#87CEEB";
set style data histogram
set style histogram cluster gap 1
set style fill solid
set boxwidth 0.9
set xtics format ""
set xtics rotate
set logscale y
set ylabel "Time (minutes)"


plot "data.out" using 3:xtic(1) title "Search Time" linecolor rgb color1, \
             '' using 6 title "SMT Solver Time" linecolor rgb color2, \
             '' using 2 title "Complete Enumeration Time" linecolor rgb color3

