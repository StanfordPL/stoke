#!/bin/bash

/usr/bin/time --verbose -o demo.time stoke_debug_verify --target opt1/inc_all.s --rewrite opt3/inc_all.s --strategy ddec --heap_out --stack_out --live_out "{ }" --def_in "{ %rdi %rsi }" --testcases testcases  --obligation_checker postgres --postgres ~/stoke/bin/postgres --target_bound 10 --rewrite_bound 2 --pointer_range "(%rdi):8(%rdi,%rsi,4)"
