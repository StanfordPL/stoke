#!/bin/bash

/usr/bin/time -o demo.time stoke_debug_verify --target opt2/sum_all.s --rewrite opt2/sum_all_unroll.s --strategy ddec --heap_out --stack_out --live_out "{ %rax }" --def_in "{ %rdi %rsi }" --solver z3 --alias_strategy arms_race --testcases testcases --obligation_checker postgres --postgres ~/stoke/bin/postgres
