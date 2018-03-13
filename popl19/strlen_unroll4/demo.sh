#!/bin/bash

/usr/bin/time -o demo.time stoke_debug_verify --target opt1/stlen.s --rewrite opt1/stlen_unroll.s --strategy ddec --heap_out --stack_out --live_out "{ %rax }" --def_in "{ %rdi }" --solver z3 --alias_strategy arms_race --testcases testcases --ddec_threads 16 --target_bound 9 --rewrite_bound 2 --solver_timeout 1000000
