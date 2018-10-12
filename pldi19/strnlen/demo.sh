#!/bin/bash

/usr/bin/time -o demo.time -v stoke_debug_verify --strategy ddec --target opt1/strnlen.s --rewrite opt1/strnlen_vec.s --testcases testcases --heap_out --stack_out --live_out "{ %rax }" --def_in "{ %rdi %rsi }" --target_bound 12 --rewrite_bound 3 --process_count 32 --obligation_checker postgres --postgres ~/stoke/bin/postgres

