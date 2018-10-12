#!/bin/bash

stoke debug verify --strategy bounded --target opt1/fib.s --rewrite opt1/fib_unroll.s  --def_in "{ %rdi %rsi }" --live_out "{ %rax }" --bound 6
