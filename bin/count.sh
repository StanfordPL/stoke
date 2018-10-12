#!/bin/bash

while [ 1 ]; do
  X=`date`
  Y=`./postgres.sh count.sql | grep [0-9] | grep -v row`
  echo "[$X] $Y"
  sleep 30
done
