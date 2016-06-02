#!/bin/bash

stoke debug verify --strategy bounded --target simple.s --rewrite production.s \
        --live_out "{ %rax %rbx %rsp %rbp %r12 %r13 %r14 %r15 }"
