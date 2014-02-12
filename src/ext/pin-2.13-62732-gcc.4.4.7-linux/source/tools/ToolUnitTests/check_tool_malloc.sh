#!/bin/bash

tool_val=`cat $1`
pin_val=`tr -d ',' < $2 | awk '/client_regular_chunks/ { split($4,a,"/") ; print a[1] }'`

if [ $tool_val -eq $pin_val ]
then
    exit 0
fi

# Pin value must be larger or equal to the tool value
if [ $pin_val -le $tool_val ]
then
    exit 1
fi

# We allow pin val to be somewhat larger then the tool value
diff_val=$(($pin_val-$tool_val))
if [ $diff_val -le 10000 ]
then
    exit 0
fi

exit 1
