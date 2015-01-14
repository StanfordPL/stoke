#!/bin/sh

bms=`ls -d examples/hacker/p*`
bms=$bms" examples/saxpy"
bms=$bms" examples/montmul"

for bm in $bms
do
	cd $bm > /dev/null
	echo "Benchmarking dir = "$bm

	make orig_gcc > /dev/null
	make extract > /dev/null
	make testcase > /dev/null

	stoke benchmark sandbox --config bm_sbox.conf
	stoke benchmark cfg --config bm_cfg.conf
	stoke benchmark verify --config bm_verif.conf

	make clean > /dev/null
	cd - > /dev/null
done
