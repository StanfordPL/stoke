#!/bin/bash

for f in src/pre-commit.d/*; do
  source $f
done
