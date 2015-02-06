#!/bin/sh

bms=`ls -d examples/hacker/p*`
bms=$bms" examples/saxpy"
bms=$bms" examples/montmul"

for bm in $bms
do
	cd $bm > /dev/null

  #extract human benchmark name from folder
  NAME=`echo $bm | grep -o "[a-z0-9]*$"`

	make orig_gcc > /dev/null
	make extract > /dev/null
	make testcase > /dev/null

	stoke benchmark sandbox --config bm_sbox.conf | grep Throughput | cut -c 13- | grep -o "^[0-9e.+]*" | sed "s/^/$NAME - sandbox,/g"
	stoke benchmark cfg --config bm_cfg.conf | grep Throughput | cut -c 13- | grep -o "^[0-9e.+]*" | sed "s/^/$NAME - cfg,/g"
	stoke benchmark verify --config bm_verif.conf | grep Throughput | cut -c 13- | grep -o "^[0-9e.+]*" | sed "s/^/$NAME - verify,/g"

	make clean > /dev/null
	cd - > /dev/null
done
