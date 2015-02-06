#!/bin/sh

bms=`ls -d examples/hacker/p*`
bms=$bms" examples/saxpy"
bms=$bms" examples/montmul"

HEADER=""
ROW=""

for bm in $bms
do
	cd $bm > /dev/null

  #extract human benchmark name from folder
  NAME=`echo $bm | grep -o "[a-z0-9]*$"`
	make orig_gcc > /dev/null
	make extract > /dev/null
	make testcase > /dev/null

	SANDBOX=`stoke benchmark sandbox --config bm_sbox.conf | grep Throughput | cut -c 13- | grep -o "^[0-9e.+]*"`
	CFG=`stoke benchmark cfg --config bm_cfg.conf | grep Throughput | cut -c 13- | grep -o "^[0-9e.+]*"`
	VERIFY=`stoke benchmark verify --config bm_verif.conf | grep Throughput | cut -c 13- | grep -o "^[0-9e.+]*"`

  HEADER=$HEADER"\"$NAME sandbox\",\"$NAME cfg\",\"$NAME verify\","
  ROW=$ROW"\"$SANDBOX\",\"$CFG\",\"$VERIFY\","

	make clean > /dev/null
	cd - > /dev/null
done

HEADER=$HEADER"\"END\""
ROW=$ROW"\"END\""

echo $HEADER
echo $ROW
