#!/bin/bash

N=$1

if [ "$N" == "" ]; then
  echo "Command line argument required!"
  exit 1
fi

for F in optimize-*; do
  cd $F
  nohup ./run_search_n.sh $N &
  cd ..
done

