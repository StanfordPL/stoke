#!/bin/bash

echo "WITHOUT RAX COLUMN"
stoke debug invariant --tt short-target-2.txt --rt short-rewrite-2.txt --only_linear --tr "{ }" --rr "{ %rax %rdx }"

echo "WITH RAX COLUMN"
stoke debug invariant --tt short-target-2.txt --rt short-rewrite-2.txt --only_linear --tr "{ %rax }" --rr "{ %rax %rdx }"

