#!/bin/bash

# if the path does not exist, then we initialize that submodule
if [ ! -f "$1/.git" ]; then
  echo "Updating submodule $1..."
#  git submodule update --init --recursive "$1"
fi
