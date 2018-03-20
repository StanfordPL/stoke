#!/bin/bash

stoke debug verify --strategy bounded --alias_strategy arms_race --target opt1/mymemset.s --rewrite opt1/mymemset_unroll.s  --def_in "{ %rdi %rsi %rdx }" --live_out "{ }" --bound 6 --heap_out --stack_out
