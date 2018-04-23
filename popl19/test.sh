#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export PATH=$PATH:$DIR/../bin

#for BENCHMARK in "example2"  \
#                 "example4"  \
#                 "fibonacci"  \
#                 "fibonacci_modk" \
#                 "fibonacci_peel_unroll" \
#                 "fibonacci_peel_unroll_modk" \
#                 "strlen_unroll2" \
#                 "strlen_unroll3"; do
#  echo "BENCHMARK $BENCHMARK"
#  cd $DIR/$BENCHMARK
#  ./test.sh
#done

