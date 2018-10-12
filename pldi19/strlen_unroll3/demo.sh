#!/bin/bash

stoke_debug_verify --target opt1/stlen.s --rewrite opt1/stlen_unroll.s --testcases testcases --strategy ddec --heap_out --stack_out --live_out "{ %rax }" --def_in "{ %rdi }" --obligation_checker postgres --postgres ~/stoke/bin/postgres
