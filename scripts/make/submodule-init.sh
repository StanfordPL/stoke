#!/bin/bash

# if the path does not exist, then we initialize that submodule
if [ ! -d "$1/.git" ]; then
  git submodule update --init --recursive "$1"
fi
