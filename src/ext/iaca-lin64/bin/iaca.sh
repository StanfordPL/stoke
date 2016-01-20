#!/bin/bash
myname=`realpath $0`
mypath=`dirname "$myname"`
ld_lib="$LD_LIBRARY_PATH"
app_loc="../lib"

if [ "$LD_LIBRARY_PATH" = "" ]
then
export LD_LIBRARY_PATH="$mypath/$app_loc"
else
export LD_LIBRARY_PATH="$mypath/$app_loc:$LD_LIBRARY_PATH"
fi

$mypath/iaca $@

export LD_LIBRARY_PATH="$ld_lib"
