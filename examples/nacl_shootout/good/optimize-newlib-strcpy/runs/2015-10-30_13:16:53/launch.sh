#!/bin/bash

for F in *; do
  echo $F
  cd $F
  ./rewrite.rb
  make verify > verify_data
  cd ..
done
