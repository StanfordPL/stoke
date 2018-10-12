#!/bin/bash

/usr/bin/time --verbose -o demo.time stoke_debug_verify --target opt1/inc_unroll2.s --rewrite opt1/inc_unroll2.s --strategy ddec --heap_out --stack_out --live_out "{ }" --def_in "{ %rdi %rsi }" --testcases testcases  --obligation_checker postgres --postgres ~/stoke/bin/postgres --target_bound 2 --rewrite_bound 2
