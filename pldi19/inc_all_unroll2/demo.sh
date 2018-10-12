#!/bin/bash

/usr/bin/time --verbose -o demo.time stoke_debug_verify --target opt1/inc_all.s --rewrite opt1/inc_unroll2.s --strategy ddec --heap_out --stack_out --live_out "{ }" --def_in "{ %rdi %rsi }" --testcases testcases  --obligation_checker postgres --postgres ~/stoke/bin/postgres --target_bound 5 --rewrite_bound 2 --pointer_range "(%rdi):8(%rdi,%rsi,4)" --assume "t_%rsi<4611686018427385855"

#--assume "(4096<=t_%rdi)&(t_%rdi+t_%esi*4+8<=18446744073709547519)&(t_%rdi<=t_%rdi+t_%esi*4+8)" 
