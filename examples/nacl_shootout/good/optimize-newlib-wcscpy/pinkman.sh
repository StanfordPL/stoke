#!/bin/bash

INDEX=$1

if [ "X$INDEX" == "X" ]; then
  echo "Launching 4 jobs..."
  # we get to launch the jobs
  for i in 1 2 3 4; do
    cat search.conf | sed "s/result.s/result.s.$i/" > search.conf.$i
    srun ./pinkman.sh $i &
  done
  echo "Done with launch :)"
else
  echo "Running with INDEX=$INDEX"
  FILE=output.$INDEX
  echo "Running search..." > $FILE
  stoke search --config search.conf.$INDEX >trace.$INDEX 2>trace.err.$INDEX
  echo "Replacing" >> $FILE
	stoke replace --rewrite result.s.$INDEX -i binary -o optbin.$INDEX >>$FILE 2>>$FILE
  echo "Validating" >> $FILE
  ncval optbin.$INDEX >> $FILE 2>>$FILE
  echo "Benchmarking" >> $FILE
  sel_ldr.py optbin.$INDEX >> $FILE 2>>$FILE
fi


