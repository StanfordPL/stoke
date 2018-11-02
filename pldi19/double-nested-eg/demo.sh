#!/bin/bash

source variables

/usr/bin/time -o demo.time -v stoke_debug_verify --strategy ddec --target $TARGET --rewrite $REWRITE --testcases testcases --heap_out --stack_out --live_out "$LIVE_OUTS" --def_in "$DEF_INS" --target_bound $TARGET_BOUND --rewrite_bound $REWRITE_BOUND --alias_strategy flat --alignment_predicate "t_0xfffffff4[%rbp]=r_0xfffffff8[%rbp]" #--obligation_checker postgres --postgres ~/stoke/bin/postgres

