#!/bin/bash
stoke_debug_invariant --target opt1/stlen.s --rewrite opt1/stlen_unroll.s --tt "state(3, 12)-target.txt" --rt "state(3, 12)-rewrite.txt" --tr "{ %rax %rdi }" --rr "{ %rax %rdi %rdx %rcx }"
