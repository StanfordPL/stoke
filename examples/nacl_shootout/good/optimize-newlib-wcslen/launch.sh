#!/bin/bash

DIR=runs/`date +"%F_%T"`
mkdir -p $DIR

for i in `seq 0 1 15`;
do
  ./testcase_sensitivity.rb $DIR $i &
done
