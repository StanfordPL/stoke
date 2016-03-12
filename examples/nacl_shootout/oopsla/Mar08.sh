#!/bin/bash

STAMP=$1
echo "Running two experiments... [$STAMP]"
export PATH=/home/berkeley/stoke/bin:$PATH

./master.rb "$STAMP""_ARM_REG"
./master.rb --no-check-all "$STAMP""_ARM_NOBV"
