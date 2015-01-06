#!/bin/bash

for f in git/pre-commit.d/*; do
  source $f
done
