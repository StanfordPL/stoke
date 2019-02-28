#!/bin/bash

# fix PATH
echo "PATH=\"\$HOME/stoke/bin:\$PATH\"" >> .bashrc

# download stoke
git clone https://github.com/StanfordPL/stoke.git stoke

# compile stoke
cd stoke
git checkout develop
./configure.sh
make

