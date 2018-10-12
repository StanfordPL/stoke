#!/bin/bash

/usr/bin/time -o demo-cvc4.time -v stoke_debug_verify --strategy ddec --target opt1/my_memset.s --rewrite opt1/libc_memset.s --testcases tcs/gen --heap_out --stack_out --live_out "{ %rax }" --def_in "{ %rdi %rsi %rdx }" --solver cvc4 --alias_strategy arms_race --ddec_threads 8 --target_bound 64 --rewrite_bound 2

