#!/bin/bash

echo "WITHOUT RAX COLUMN"
stoke debug invariant --tt state\(3,\ 10\)-target.txt --rt state\(3,\ 10\)-rewrite.txt --only_linear --tr "{ }" --rr "{ %rax %rdx }"

echo "WITH RAX COLUMN"
stoke debug invariant --tt state\(3,\ 10\)-target.txt --rt state\(3,\ 10\)-rewrite.txt --only_linear --tr "{ %rax }" --rr "{ %rax %rdx }"

