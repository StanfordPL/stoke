#!/bin/bash

function show_help {
  echo "$0 [--debug-ddec] [--debug-ceg]"
  echo ""
}

function error {
  echo "Configure failed!  Fix errors and run again."
  echo ""
  rm -f stoke_config
  show_help
  exit
}

## START

echo ""
rm -f .stoke_config

## All options are off by default
MISC_OPTIONS=""

## Now do some parsing, look for options

while :; do
  case $1 in
    -h|--help)
      show_help
      exit
      ;;
    --debug-ddec)
      MISC_OPTIONS="$MISC_OPTIONS -DSTOKE_DEBUG_DDEC"
      shift
      ;; 
    --debug-ceg)
      MISC_OPTIONS="$MISC_OPTIONS -DSTOKE_DEBUG_CEG"
      shift
      ;; 
    -?*)
      echo "WARNING: unknown option $1"
      error
      exit
      ;;
    *)
      break
  esac
done

## Write options to config file
echo "MISC_OPTIONS=$MISC_OPTIONS" >> .stoke_config

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
echo "STOKE_PLATFORM=\"$PLATFORM\"" >> .stoke_config



## All done!

echo ""
echo "You're all set to run make!"
echo ""
