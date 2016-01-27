#!/bin/bash
DEF_IN=$1
LIVE_OUT=$2
STRATEGY=$3
BOUND=$4

time stoke debug verify \
       --target target.s --rewrite optimize.s \
       --strategy bounded --alias_strategy $STRATEGY \
       --bound $BOUND --def_in "$DEF_IN" --live_out "$LIVE_OUT" \
       --solver z3 --no_early_bailout --heap_out --verify_nacl


