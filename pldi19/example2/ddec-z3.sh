#!/bin/bash

/usr/bin/time -v stoke_debug_verify --strategy ddec --target opt1/simple.s --rewrite opt1/simple_vec.s --testcases testcases --heap_out --stack_out --live_out "{ %rax }" --def_in "{ %rdi %rsi }" --solver z3 --alias_strategy flat --solver_timeout 3600000
