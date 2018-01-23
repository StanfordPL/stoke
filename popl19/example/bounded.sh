#!/bin/bash

stoke debug verify --strategy bounded --target opt1/simple_vec.s --rewrite opt1/simple_cheat.s  --def_in "{ %rdi %rsi }" --live_out "{ %rax }" --bound 4
