#!/bin/bash

stoke_debug_verify --strategy bounded --target opt1/strnlen.s --rewrite opt1/strnlen_vec.s --testcases testcases --heap_out --stack_out --live_out "{ %rax }" --def_in "{ %rdi %rsi }" --solver z3 --bound 2 --alias_strategy flat --obligation_checker postgres --postgres ~/stoke/bin/postgres
