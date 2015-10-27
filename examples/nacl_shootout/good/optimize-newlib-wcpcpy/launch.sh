#!/bin/bash

for i in `seq 0 1 15`;
do
  ./testcase_sensitivity.rb $i &
done
