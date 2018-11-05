set output "search.png"
set terminal png

color1 = "#0000dd"; color2 = "#7676ee"; color3 = "#c0c0ff"; color4 = "#87CEEB";
set style data histogram
set style histogram cluster gap 1
set style fill solid
set boxwidth 0.9
set xtics format ""
set xtics rotate
set logscale y
set ylabel "Count"


plot "data.out" using 5:xtic(1) title "PAAs Found" linecolor rgb color1, \
             '' using 4 title "Total Alignment Predicates" linecolor rgb color2

