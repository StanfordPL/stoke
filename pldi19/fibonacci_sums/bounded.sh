#!/bin/bash

stoke debug verify --strategy bounded --target opt2/fib_unroll.s --rewrite opt2/fib.s  --def_in "{ %rdi %rsi }" --live_out "{ %rax }" --bound 3
