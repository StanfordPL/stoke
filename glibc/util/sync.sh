#!/bin/bash

X=$(git status | grep clean)
LAST_COMMIT=$(git log | head -n1 | sed "s/^commit //g")

if [ "$X" == "" ]; then
  echo "Git checkout isn't clean"
  echo "Last commit was $LAST_COMMIT"
  git status
  exit 1
else
  echo "$LAST_COMMIT"
  echo "Repository is clean at this commit"
  exit 0
fi

echo "Error checking git status"
exit 2


