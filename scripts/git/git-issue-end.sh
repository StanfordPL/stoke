#!/bin/bash

set -e

COL_RED="\e[38;5;1m"
COL_GREEN="\e[38;5;2m"
COL_GREY="\e[38;5;244m"
COL_NO_COLOR="\e[0m"

base=$1
if [ $# -eq 0 ]; then
base="develop"
	fi
branch=$(git rev-parse --abbrev-ref HEAD)
	echo -e -n "Press [Enter] to end branch '$COL_GREEN$branch$reset_color${COL_NO_COLOR}' (Ctrl+C to quit)."
	read
	echo -e "${COL_GREY}Going to end the feature branch '$branch' and merge back into '$base'...${COL_NO_COLOR}"

	echo -e "${COL_GREY}-- git checkout $branch${COL_NO_COLOR}"
	git checkout $branch

	echo -e "${COL_GREY}-- git push${COL_NO_COLOR}"
	git push

	echo -e "${COL_GREY}-- git checkout $base${COL_NO_COLOR}"
	git checkout $base

	echo -e "${COL_GREY}-- git pull${COL_NO_COLOR}"
	git pull

	echo -e "${COL_GREY}-- git fetch${COL_NO_COLOR}"
	git fetch

	if [[ $branch == issue-* ]]; then
	msg="Merge branch '$branch' into develop. Fixes #${branch:6:${#branch}}."
	echo -e "${COL_GREY}-- git merge --no-ff $branch -m $msg${COL_NO_COLOR}"
	git merge --no-ff $branch -m "$msg"
	else
	echo -e "${COL_GREY}-- git merge --no-ff $branch${COL_NO_COLOR}"
	git merge --no-ff $branch
	fi

	echo -e "${COL_GREY}-- git push${COL_NO_COLOR}"
	git push

	echo -e "${COL_GREY}-- git push origin --delete $branch${COL_NO_COLOR}"
	git push origin --delete $branch

	echo -e "${COL_GREY}-- git branch -d $branch${COL_NO_COLOR}"
	git branch -d $branch

	echo -e "${COL_GREEN}Success :)${COL_NO_COLOR}"

