#!/bin/bash

STAMP=$1
echo "Running three experiments... [$STAMP]"

./master.rb "$STAMP""_REGULAR"
./master.rb --memory-model flat "$STAMP""_FLAT"
./master.rb --no-check-all "$STAMP""_NOBV"
