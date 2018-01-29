#!/bin/bash

stoke_debug_verify --target opt1/simple.s --rewrite opt1/simple_vec.s --strategy ddec --heap_out --stack_out --live_out "{ %rax }" --def_in "{ %rdi %rsi }" --solver z3 --alias_strategy flat --testcases testcases 
