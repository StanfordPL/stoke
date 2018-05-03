#!/bin/bash

LASTCOMMIT=`git rev-parse HEAD`
STATUSLINES=`git status --untracked-files=no -s`

if [ -z "$STATUSLINES" ]; then
  VERSION="$LASTCOMMIT"
else
  VERSION="$LASTCOMMIT-dirty"
fi

if [ ! -f $1 ] ; then
  touch $1
fi

echo $VERSION | xxd -i > /tmp/stoke_version
DIFF=`diff /tmp/stoke_version $1`

if [ -z "$DIFF" ] ; then
  echo "Git version has not changed: $VERSION"
else
  echo "Updating git version to $VERSION"
  echo $VERSION | xxd -i >$1
fi
