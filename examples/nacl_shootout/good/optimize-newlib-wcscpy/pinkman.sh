#!/bin/bash

INDEX=$1
DIR=$2

if [ "X$DIR" == "X" ]; then
  DIR="pinkman_`date +"%s"`"
fi

if [ "X$INDEX" == "X" ]; then
  echo "Launching 4 jobs..."
  # we get to launch the jobs
  for i in 1 2 3 4; do
    cat search.conf | sed "s/result.s/$DIR\/result.s.$i/" > $DIR/search.conf.$i
    srun ./pinkman.sh $i $DIR &
  done
  echo "Done with launch :)"
else
  echo "Running with INDEX=$INDEX"
  FILE=$DIR/output.$INDEX
  echo "Running search..." > $FILE
  stoke search --config $DIR/search.conf.$INDEX >$DIR/trace.$INDEX 2>$DIR/trace.err.$INDEX
  echo "Replacing" >> $FILE
	stoke replace --rewrite $DIR/result.s.$INDEX -i binary -o $DIR/optbin.$INDEX >>$FILE 2>>$FILE
  echo "Validating" >> $FILE
  ncval $DIR/optbin.$INDEX >>$FILE 2>>$FILE
  echo "Benchmarking" >> $FILE
  sel_ldr.py $DIR/optbin.$INDEX >> $FILE 2>>$FILE
fi


