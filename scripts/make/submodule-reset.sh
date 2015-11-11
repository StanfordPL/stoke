#!/bin/bash

echo "Resetting submodule $1..."
git submodule update --init --recursive "$1"
