#!/bin/bash

if [ ! -d "stats" ]; then
  echo "You need to run 'make search' (and its prerequisites) before making plots."
  exit 1
fi

if [ ! -f "/usr/bin/gnuplot" ]; then
  echo "You need to install gnuplot to make plots."
  exit 1
fi

mkdir -p plots
chmod +x ./plot.gnuplot

cd stats
for i in *; do
  IN=$i OUT=../plots/$i.png ../plot.gnuplot
done
cd ..

