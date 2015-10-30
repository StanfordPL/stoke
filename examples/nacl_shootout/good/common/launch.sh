#!/bin/bash

DIR=runs/`date +"%F_%T"`
mkdir -p $DIR

for i in `seq 2 2 20`;
do
  testcase_sensitivity.rb $DIR $i &
done
