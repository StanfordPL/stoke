#!/bin/bash

/usr/bin/time -o demo.tim -v stoke_debug_verify --target opt1/fib.s --rewrite opt1/fib_unroll.s --strategy ddec --heap_out --stack_out --live_out "{ %rax }" --def_in "{ %rdi %rsi }" --testcases testcases --obligation_checker postgres --postgres ~/stoke/bin/postgres
