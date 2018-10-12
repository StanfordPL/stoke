#!/bin/bash
stoke_debug_invariant --target opt1/func_1.s --rewrite opt1/func_2.s --tt "state(3, 4)-target.txt" --rt "state(3, 4)-rewrite.txt" --tr "{ %rax %rdi %cf %of %zf }" --rr "{ %rax %rdi %cf %of %zf }" --target_flag "ne" --rewrite_flag "ne"
