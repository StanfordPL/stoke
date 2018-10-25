#!/bin/bash

/usr/bin/time -o cloud.time -v stoke_debug_verify --strategy ddec --target opt1/my_memset.s --rewrite opt1/libc_memset.s --testcases tcs/gen --heap_out --stack_out --live_out "{ %rax }" --def_in "{ %rdi %rsi %rdx }" --target_bound 70 --rewrite_bound 12 --obligation_checker postgres --class_checker postgres --postgres ~/stoke/bin/postgres

