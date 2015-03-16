#!/bin/bash

set -e

COL_RED="\e[38;5;1m"
COL_GREEN="\e[38;5;2m"
COL_GREY="\e[38;5;244m"
COL_NO_COLOR="\e[0m"

if [ $# -eq 0 ]; then
echo -e "usage: $0 <issue-number> [base-branch = develop]"
exit 1
fi
base=$2
if [ $# -eq 1 ]; then
base="develop"
fi
branch=issue-$1

echo -e "${COL_GREY}Going to start a feature branch '$branch', branching off of '$base'...${COL_NO_COLOR}"

echo -e "${COL_GREY}-- git checkout $base${COL_NO_COLOR}"
git checkout $base

echo -e "${COL_GREY}-- git checkout -b $branch $base${COL_NO_COLOR}"
git checkout -b $branch $base

echo -e "${COL_GREY}-- git push -u origin $branch${COL_NO_COLOR}"
git push -u origin $branch

echo -e "${COL_GREEN}Success :)${COL_NO_COLOR}"

