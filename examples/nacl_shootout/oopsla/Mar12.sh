#!/bin/bash

STAMP=$1
echo "Running experiments... [$STAMP]"
export PATH=/home/berkeley/stoke/bin:$PATH

./master.rb --optimize "$STAMP""_ARM_REG"
./benchmark.rb --optimize "$STAMP""_ARM_REG"
./plot.rb "$STAMP""_ARM_REG"
