#!/bin/bash

/usr/bin/time --verbose -o demo.time stoke_debug_verify --target opt1/stlen.s --rewrite opt1/stlen_unroll.s --strategy ddec --heap_out --live_out "{ %rax %rdi }" --def_in "{ %rdi %rsp }" --solver z3 --alias_strategy flat --testcases testcases.1
