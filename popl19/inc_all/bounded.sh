#!/bin/bash

stoke debug verify --strategy bounded --target opt1/inc_all.s --rewrite opt1/inc_unroll2.s  --def_in "{ %rdi %rsi }" --live_out "{ }" --bound 5
