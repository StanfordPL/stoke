#!/bin/bash

INPUT=notcs_result_.s

stoke replace --rewrite $INPUT -i binary -o notcs_bin
awk 'BEGIN {SKIP=4} /pop/ { print "  retq"; SKIP=0} // {if (SKIP < 4) { SKIP=SKIP+1 } else { print $0 } }' < $INPUT > notcs_candidate.s
stoke debug verify --target target.s --rewrite notcs_candidate.s --strategy ddec --testcases bounded_tcs --alias_strategy string --bound 1 --sound_nullspace --live_out "{ %rax }" --heap_out
