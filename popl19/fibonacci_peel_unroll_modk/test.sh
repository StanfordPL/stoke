#!/bin/bash

make >/dev/null
/usr/bin/time -o test.time.tmp stoke_debug_verify --target opt1/fib.s --rewrite opt1/fib_unroll.s --strategy ddec --heap_out --stack_out --live_out "{ %rax }" --def_in "{ %rdi %rsi }" --solver z3 --alias_strategy flat --testcases testcases --ddec_threads 2 > test.tmp
grep "Equivalent: " test.tmp
cat test.time.tmp

