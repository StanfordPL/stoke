#!/bin/bash
src/ext/astyle/build/gcc/bin/astyle --options=none --formatted --suffix=none --exclude=ext --convert-tabs --indent=spaces=2 --pad-header --recursive "*.cc" "*.h" "*.inc"
