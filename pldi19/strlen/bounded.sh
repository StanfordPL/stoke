#!/bin/bash

stoke_debug_verify --strategy bounded --target opt1/func_1.s --rewrite opt1/func_2.s --testcases testcases --heap_out --stack_out --live_out "{ %rax }" --def_in "{ %rdi }" --solver z3 --bound 1 --alias_strategy arms_race
