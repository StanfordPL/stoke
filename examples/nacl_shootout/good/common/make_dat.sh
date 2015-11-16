#!/bin/bash

for i in `seq 0 15`; do
  #echo "======$i======="
  grep -i "attempted searches" ts_runs/${i}_*/trace | cut -c20- | grep -o "[0-9]*" > tmp
  readarray data < tmp
  echo -n "$i"
  for j in ${data[@]}; do
    echo -n ",$j"
  done
  echo ""
done

