#!/bin/bash

# fix PATH
echo "PATH=\"\$HOME/stoke/bin:\$PATH\"" >> .bashrc
echo "PATH=\"\$HOME/SageMath:\$PATH\"" >> .bashrc

# download sagemath and unpack
FILENAME=sage-8.5-Ubuntu_14.04-x86_64.tar.bz2

wget --no-verbose http://mirrors.xmission.com/sage/linux/64bit/$FILENAME
tar -xf $FILENAME
rm $FILENAME

# prepare sage
echo "exit" | /home/stoke/SageMath/sage

# download stoke
git clone https://github.com/StanfordPL/stoke.git stoke

# compile stoke
cd stoke
git checkout develop
./configure.sh
make

