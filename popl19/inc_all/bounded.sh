#!/bin/bash

stoke debug verify --strategy bounded --target opt1/inc_all.s --rewrite opt3/inc_all.s  --def_in "{ %rdi %rsi }" --live_out "{ }" --bound 2
