#!/bin/bash

INDEX=$1
DIR=$2

if [ "X$DIR" == "X" ]; then
  export DIR="pinkman_`date +"%s"`"
fi

echo "DIR=$DIR"

if [ "X$INDEX" == "X" ]; then
  echo "Launching 4 jobs..."
  # we get to launch the jobs
  mkdir -p $DIR
  cp testcases $DIR
  cp target.s $DIR
  cp binary $DIR
  for i in 1 2 3 4; do
    cat search.conf | sed "s/result.s/result.s.$i/" > $DIR/search.conf.$i
    srun ./pinkman.sh $i $DIR &
  done
  echo "Done with launch :)"
else
  cd $DIR
  echo "Running with INDEX=$INDEX"
  FILE=output.$INDEX
  echo "Running search..." > $FILE
  stoke search --config search.conf.$INDEX >trace.$INDEX 2>trace.err.$INDEX
  echo "Replacing" >> $FILE
	stoke replace --rewrite result.s.$INDEX -i binary -o optbin.$INDEX >>$FILE 2>>$FILE
  echo "Validating" >> $FILE
  ncval optbin.$INDEX >>$FILE 2>>$FILE
  echo "Benchmarking" >> $FILE
  sel_ldr.py optbin.$INDEX >> $FILE 2>>$FILE
fi


