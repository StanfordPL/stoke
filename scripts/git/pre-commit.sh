#!/bin/bash

for f in scripts/git/pre-commit.d/*; do
  source $f
done
