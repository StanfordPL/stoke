#!/bin/bash

stoke_debug_verify --target opt1/fib.s --rewrite opt1/fib_unroll.s --strategy ddec --heap_out --stack_out --live_out "{ %rax }" --def_in "{ %rdi %rsi }" --solver z3 --alias_strategy flat --testcases testcases --ddec_threads 16 --obligation_checker postgres --postgres ~/stoke/bin/postgres
