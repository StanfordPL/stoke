#!/bin/bash

stoke_debug_verify --target opt1/mymemset.s --rewrite opt1/mymemset_unroll.s --strategy ddec --heap_out --stack_out --live_out "{ }" --def_in "{ %rdi %rsi %rdx }" --solver cvc4 --alias_strategy arms_race --testcases testcases --ddec_threads 16
