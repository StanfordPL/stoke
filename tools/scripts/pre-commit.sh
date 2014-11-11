#!/bin/bash
src/ext/astyle/build/gcc/bin/astyle --options=none --suffix=none --exclude=ext --convert-tabs --indent=spaces=2 --recursive "*.cc" "*.h"
