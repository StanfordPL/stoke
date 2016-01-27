#!/bin/bash

for f in scripts/git/post-merge-checkout.d/*; do
  source $f
done
