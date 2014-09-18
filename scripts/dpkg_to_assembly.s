#!/bin/bash

# 
# This script:
#
#  1. Takes a list of packages
#  2. Downloads all of them
#  3. Extracts all the ELF files
#  4. Runs stoke extract on all of them
#  5. Puts all these files into a folder of your choice
#
# INPUT: 
#   $1, a file with a list of packages, one per line
#   $2, a directory to put the binaries in


PACKAGE_LIST=$1
OUTPUT_DIR=$2

TEMP_DIR="tmp.$(date +'%s')"

mkdir $TEMP_DIR
mkdir $TEMP_DIR/binaries

# Download packages and extract ELFs
for PACKAGE in $(cat $PACKAGE_LIST); do
  mkdir $TEMP_DIR/$PACKAGE
  cd $TEMP_DIR/$PACKAGE

  # get the .deb and extract it
  aptitude download $PACKAGE
  dpkg -x *.deb .

  # find all the binaries and move them to a folder
  find . -exec file {} \; | grep -i elf | cut -d":" -f1 | xargs mv -t ../binaries

  cd ../..
done

# Use stoke to extract the binaries
for BINARY in $(ls -1 $TEMP_DIR/binaries); do
  stoke extract -i $TEMP_DIR/binaries/$BINARY -o $OUTPUT_DIR
done


rm -r $TEMP_DIR



