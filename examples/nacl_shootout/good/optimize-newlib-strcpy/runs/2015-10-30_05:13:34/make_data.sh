#!/bin/bash

DATA=data
OTHER=data2

grep -i aggregate */benchmark_data | grep -v 214748 >> $DATA
sort -n $DATA > $OTHER
rm $DATA
mv $OTHER $DATA
