#!/bin/bash

stoke debug verify --strategy eddec --target simple.s --rewrite production.s \
        --live_out "{ %rax %rbx %rsp %rbp %r12 %r13 %r14 %r15 }" \
			 	--testcases ../../../../testcases/stpcpy/stpcpy.tc \
        --solver z3 --solver_timeout 15000 \
        --alias_strategy flat
