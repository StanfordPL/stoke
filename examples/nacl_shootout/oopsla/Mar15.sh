#!/bin/bash

export PATH=/home/berkeley/stoke/bin:$PATH

./master.rb MAR_15_ARM_REG
./benchmark.sh MAR_15_ARM_REG
./plot.sh MAR_15_ARM_REG

./master.rb --memory-model flat MAR_15_FLAT_REG
./benchmark.sh MAR_15_FLAT_REG
./plot.sh MAR_15_FLAT_REG

./master.rb --no-bv MAR_15_ARM_NOBV
./benchmark.sh MAR_15_ARM_NOBV
./plot.sh MAR_15_ARM_NOBV

./master.rb --memory-model flat --no-bv MAR_15_FLAT_NOBV
./benchmark.sh MAR_15_FLAT_NOBV
./plot.sh MAR_15_FLAT_NOBV

