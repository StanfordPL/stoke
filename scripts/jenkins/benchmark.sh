#!/bin/bash

bms=`ls -d examples/hacker/p*`
#bms=$bms" examples/saxpy" # See issue-707.  This is a bug.
bms=$bms" examples/montmul"

PATH=bin:$PATH

HEADER=""
ROW=""

LOG="benchmark.log"
ERROR="benchmark.errors"

for bm in $bms
do
	cd $bm

  #extract human benchmark name from folder
  rm -f $LOG $ERROR
  NAME=`echo $bm | grep -o "[a-z0-9]*$"`
  echo "Testing $NAME ($bm)" >> $LOG 2>> $ERROR
	make orig_gcc >> $LOG 2>> $ERROR
	make extract >> $LOG 2>> $ERROR
	make testcase >> $LOG 2>> $ERROR

	SANDBOX=`stoke benchmark sandbox --config bm_sbox.conf 2>> $ERROR | grep Throughput | cut -c 13- | grep -o "^[0-9e.+]*"`
	CFG=`stoke benchmark cfg --config bm_cfg.conf 2>> $ERROR | grep Throughput | cut -c 13- | grep -o "^[0-9e.+]*"`
	VERIFY=`stoke benchmark verify --config bm_verif.conf 2>>$ERROR | grep Throughput | cut -c 13- | grep -o "^[0-9e.+]*"`

  HEADER=$HEADER"\"$NAME sandbox\",\"$NAME cfg\",\"$NAME verify\","
  ROW=$ROW"\"$SANDBOX\",\"$CFG\",\"$VERIFY\","

	make clean >> $LOG 2>>$ERROR
	cd - > /dev/null 2>/dev/null
done

HEADER=$HEADER"\"END\""
ROW=$ROW"\"END\""

echo $HEADER
echo $ROW
