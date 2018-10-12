#!/bin/bash

stoke_debug_verify --target opt2/fib.s --rewrite opt2/fib_unroll.s --strategy ddec --heap_out --stack_out --live_out "{ %rax }" --def_in "{ %rdi %rsi }" --testcases testcases --postgres ~/stoke/bin/postgres --obligation_checker postgres
