#!/bin/bash

/usr/bin/time --verbose -o demo.time stoke_debug_verify --target opt1/double_all.s --rewrite opt1/double_unroll2.s --strategy ddec --heap_out --stack_out --live_out "{ }" --def_in "{ %rdi %rsi %rdx %rcx }" --testcases testcases  --obligation_checker postgres --postgres ~/stoke/bin/postgres --target_bound 10 --rewrite_bound 5
