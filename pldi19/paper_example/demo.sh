#!/bin/bash

source variables

/usr/bin/time -o demo.time -v stoke_debug_verify --strategy ddec --target $TARGET --rewrite $REWRITE --testcases testcases --heap_out --stack_out --live_out "$LIVE_OUTS" --def_in "$DEF_INS" --target_bound $TARGET_BOUND --assume "t_%rsi<268435455&t_%rdi<1152921504606846975" --alignment_predicate "t_%rax=r_%rdi-4" #--obligation_checker postgres --postgres ~/stoke/bin/postgres

