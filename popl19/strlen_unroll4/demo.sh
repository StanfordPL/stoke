#!/bin/bash

/usr/bin/time -o demo.time stoke_debug_verify --target opt1/stlen.s --rewrite opt1/stlen_unroll.s --strategy ddec --heap_out --stack_out --live_out "{ %rax }" --def_in "{ %rdi }" --testcases testcases --target_bound 9 --rewrite_bound 2 --postgres ~/stoke/bin/postgres --obligation_checker postgres
