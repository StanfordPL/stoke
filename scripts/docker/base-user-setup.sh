#!/bin/bash

cd /home/stoke/base

echo "STOKE_PLATFORM=\"nehalem\"" > .stoke_config
echo "BUILD_TYPE=release" >> .stoke_config
echo "MISC_OPTIONS=\"\"" >> .stoke_config

make z3
make cvc4

