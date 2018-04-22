#!/bin/bash

/usr/bin/time --verbose -o demo.time stoke debug verify --target opt1/func_2.s --rewrite opt1/func_1.s --strategy ddec --heap_out --stack_out --live_out "{ %rax }" --def_in "{ %rdi }" --solver z3 --alias_strategy arms_race --testcases testcases --target_bound 9 --obligation_checker pubsub

