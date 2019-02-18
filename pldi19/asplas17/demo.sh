#!/bin/bash

source variables

/usr/bin/time -o demo.time -v stoke_debug_verify --strategy ddec --target $TARGET --rewrite $REWRITE --testcases tcs/256 --heap_out --live_out "$LIVE_OUTS" --def_in "$DEF_INS" --target_bound $TARGET_BOUND --rewrite_bound $REWRITE_BOUND  --assume "t_%rdi<145&t_%rsp>16777216" --alias_strategy flat #--obligation_checker postgres --postgres ~/stoke/bin/postgres  #--alignment_predicate "t_0xfffffff8[%rbp]=6295744+r_%rax*4"

