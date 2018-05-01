#!/bin/bash

LASTCOMMIT=`git rev-parse HEAD`
STATUSLINES=`git status --untracked-files=no -s`

if [ -z "$STATUSLINES" ]; then
  echo $LASTCOMMIT | xxd -i
else
  echo "$LASTCOMMIT-dirty" | xxd -i
fi

