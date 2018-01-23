#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
for BENCHMARK in "example"; do
  echo "BENCHMARK $BENCHMARK"
  cd $DIR/$BENCHMARK
  ./test.sh
done

