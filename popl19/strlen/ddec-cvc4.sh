#!/bin/bash

/usr/bin/time -v stoke_debug_verify --strategy ddec --target opt1/func_2.s --rewrite opt1/func_1.s --testcases testcases --heap_out --stack_out --live_out "{ %rax }" --def_in "{ %rdi }" --solver cvc4 --alias_strategy arms_race 
