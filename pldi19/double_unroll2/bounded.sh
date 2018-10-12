#!/bin/bash

stoke debug verify --strategy bounded --target opt1/double_all.s --rewrite opt1/double_unroll2.s  --def_in "{ %rdi %rsi %rdx %rcx }" --live_out "{ }" --bound 5
