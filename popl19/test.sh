#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export PATH=$PATH:$DIR/../bin

for BENCHMARK in "example" "fibonacci"; do
  echo "BENCHMARK $BENCHMARK"
  cd $DIR/$BENCHMARK
  ./test.sh
done

