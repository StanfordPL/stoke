#!/bin/bash

cd $1
for F in *.s; do
  echo -n $F >> verify_times
  echo -n ',' >> verify_times
  /usr/bin/time --format '%e' --append -o verify_times  \
    timeout 30m stoke debug verify \
    --target ../target.s \
    --rewrite $F \
    --strategy ddec \
    --alias_strategy string_antialias \
    --def_in '{ %rsp %rbp %r15 %rdi %rsi }' \
    --live_out '{ %rax }' \
    --testcases ../testcases \
    --test_set '{ 0 .. 20 }' \
    --heap_out \
    --sound_nullspace \
    --no_ddec_bv \
    --verify_nacl \
    --solver z3 \
    --result_file verify_times
done
