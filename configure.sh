#!/bin/bash

echo ""

## All we're going to do is figure out what platform you're on, buddy.

$(grep avx2 /proc/cpuinfo >/dev/null)
AVX2=$?
$(grep avx /proc/cpuinfo >/dev/null)
AVX=$?

if [ $AVX2 -eq 0 ]; then
  PLATFORM="haswell"
elif [ $AVX -eq 0 ]; then
  PLATFORM="sandybridge"
else
  echo "ERROR: STOKE is currently only supported on sandybridge or haswell machines.  You appear to have an older CPU."
  exit 1
fi

echo "Configuring STOKE for $PLATFORM"
echo "STOKE_PLATFORM=\"$PLATFORM\"" > .stoke_config

## All done!

echo ""
echo "You're all set to run make!"
echo ""
