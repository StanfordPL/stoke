#!/bin/bash

for i in `seq 0 15`; do
  #echo "======$i======="
  grep -i "total search time" ts_runs/${i}_*/trace | cut -c20- | grep -o "[0-9]*" > tmp
  readarray data < tmp
  for j in ${data[@]}; do
    echo "$j $i"
  done
done

