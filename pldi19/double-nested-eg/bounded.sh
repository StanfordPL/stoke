#!/bin/bash

source variables

/usr/bin/time -o bounded.time -v stoke_debug_verify --strategy bounded --target $TARGET --rewrite $REWRITE --testcases testcases --heap_out --stack_out --live_out "$LIVE_OUTS" --def_in "$DEF_INS" --bound $TARGET_BOUND #--obligation_checker postgres --postgres ~/stoke/bin/postgres
