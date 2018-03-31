#!/bin/bash

/usr/bin/time -v stoke_debug_verify --strategy ddec --target opt1/my_memset.s --rewrite opt1/libc_memset.s --testcases testcases --heap_out --stack_out --live_out "{ %rax }" --def_in "{ %rdi %rsi %rdx }" --solver cvc4 --alias_strategy arms_race 
