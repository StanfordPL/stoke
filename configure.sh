#!/bin/bash

function show_help {
  echo "$0 [--debug-default-target] [--debug-ddec] [--debug-ceg] [--no-cvc4]"
  echo ""
}

function error {
  echo "Configure failed!  Fix errors and run again."
  echo ""
  rm -f .stoke_config
  show_help
  exit
}

## START

## All options are off by default
MISC_OPTIONS=""

## Detect platform
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

## Now do some parsing, look for options

BUILD_TYPE="release"

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
    -d|--debug-default-target)
      BUILD_TYPE="debug"
      shift
      ;;
    --no-cvc4)
      NOCVC4=1
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

echo ""
echo "The default build type is '$BUILD_TYPE'."
echo "Configuring STOKE for $PLATFORM"

rm -f .stoke_config

## Write options to config file
echo "STOKE_PLATFORM=\"$PLATFORM\"" >> .stoke_config
echo "BUILD_TYPE=$BUILD_TYPE" >> .stoke_config
echo "MISC_OPTIONS=$MISC_OPTIONS" >> .stoke_config

if [ ! -z $NOCVC4 ]; then
echo "NOCVC4=$NOCVC4" >> .stoke_config
fi


## All done!

echo ""
echo "You're all set to run make!"
echo ""
