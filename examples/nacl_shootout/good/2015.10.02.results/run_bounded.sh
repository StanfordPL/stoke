#!/bin/bash
DIRNAME=`basename $PWD`
for LOG in string; do
  rm $LOG
  NAME=$DIRNAME"_"$LOG
  echo "$NAME" > $LOG"2"
  for i in 1 2 3 4 5 6 7 8 9 10; do
    echo $NAME" : "$i
    /usr/bin/time --format "%e" --append --output $LOG timeout 30m \
      ./bounded_flat.sh "{ %rdi %rsi %rdx %r15 }" "{ %rax }" $LOG $i >/dev/null 2>/dev/null
  done
done
