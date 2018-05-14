#!/bin/bash

/usr/bin/time -o demo.time stoke_debug_verify --target opt1/mymemset.s --rewrite opt1/mymemset_unroll.s --strategy ddec --heap_out --stack_out --live_out "{ }" --def_in "{ %rdi %rsi %rdx }" --testcases testcases --target_bound 5 --rewrite_bound 3 --vector_invariants --obligation_checker postgres --postgres ~/stoke/bin/postgres --pointer_range "(%rdi):(%rdi,%rdx,1)"
