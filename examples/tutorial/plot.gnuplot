#!/usr/bin/gnuplot

infile=system("echo $IN")
outfile=system("echo $OUT")

set terminal png
set output outfile
set title  "Popcnt Proposed Candidates"
set xlabel "Correctness Cost"
set ylabel "Performance Cost"

set palette defined ( 0 "black", 2 "green", 4 "yellow", 6 "red" )

set cbrange [0:6]

plot infile u 1:2:(log($3)/log(10.)) with points palette pt 20
