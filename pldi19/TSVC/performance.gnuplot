set output "performance.png"
set terminal png

color1 = "#0000dd"; color2 = "#6666dd"; color3 = "#bbbbdd"; color4 = "#87CEEB";
set style data histogram
set style histogram cluster gap 1
set style fill solid
set boxwidth 0.9
set xtics format ""
set xtics rotate
set logscale y

set title "Performance"
plot "data.out" using 3:xtic(1) title "Search Time" linecolor rgb color1, \
             '' using 4 title "SMT Solver Time" linecolor rgb color2, \
             '' using 2 title "Complete Enumeration Time" linecolor rgb color3

