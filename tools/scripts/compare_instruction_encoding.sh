#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ $# -ne 0 ]; then
  a=1
else
  echo "usage: compare_instruction_encoding.sh <instr>"
  exit 1
fi

p=$1
echo $p > asm.s
g++ -c asm.s -o asm.o
if [ $? -ne 0 ]; then
  echo "GCC ERROR for "$p
  rm -rf asm.s asm.o
  exit 1
else
  echo "GCC encoding:"
  objdump -D -Msuffix asm.o | grep -A 10 00000000 | grep -v 00000000

  echo ""

  echo "x64asm encoding:"
  cat asm.s | $DIR/../../src/ext/x64asm/bin/asm | tail -n +6 | sed -e "s/^/        /"
  rm -rf asm.s asm.o

  exit 0
fi
