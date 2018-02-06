#!/bin/bash

stoke debug verify --strategy bounded --target opt2/sum_all.s --rewrite opt2/sum_all_unroll.s  --def_in "{ %rdi %rsi }" --live_out "{ %rax }" --bound 4
