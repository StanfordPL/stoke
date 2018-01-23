#!/bin/bash

for BENCHMARK in "example"; do
  echo "BENCHMARK $BENCHMARK"
  cd $BENCHMARK
  ./test.sh
  cd ..
done

