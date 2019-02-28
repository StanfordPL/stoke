#!/bin/bash

# fix PATH
echo "PATH=\"\$HOME/stoke/bin:\$PATH\"" >> ~/.bashrc

# compile stoke
./configure.sh

echo "[user-setup.sh] TRAVIS=$TRAVIS"
if [ $TRAVIS == "1" ] ; then
  make objectfiles
else
  make
fi

