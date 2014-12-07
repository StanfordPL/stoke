#!/bin/bash

# Copyright template
echo "// Copyright" >> cr.txt
echo "//" >> cr.txt
echo "// Licensed under the Apache License, Version 2.0 (the "License");" >> cr.txt
echo "// you may not use this file except in compliance with the License." >> cr.txt
echo "// You may obtain a copy of the License at" >> cr.txt
echo "//" >> cr.txt
echo "//     http://www.apache.org/licenses/LICENSE-2.0" >> cr.txt
echo "//" >> cr.txt
echo "// Unless required by applicable law or agreed to in writing, software" >> cr.txt
echo "// distributed under the License is distributed on an "AS IS" BASIS," >> cr.txt
echo "// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied." >> cr.txt
echo "// See the License for the specific language governing permissions and" >> cr.txt
echo "// limitations under the License." >> cr.txt
echo "" >> cr.txt

cr="Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule"

for file in `find . -type f -and \( -name "*.h" -o -name "*.c" -o -name "*.cc" \) -not -path "./src/ext/*"`; do

	# Prepend copright template to any file that doesn't already have one
	line1=`head --lines 1 $file`
	if [ "${line1:0:12}" != "// Copyright" ]
	then
		cat cr.txt >> file.tmp 
		cat $file >> file.tmp
		mv file.tmp $file
		echo Added copright notice to $file
	fi

	# Replace first line with current copyright 
  ORIG=`head -n1 $file`
	sed -i "1s/.*/\/\/\/\/ $cr/" $file
  DONE=`head -n1 $file`
  if [ "$ORIG" != "$HEAD" ]; then
	  echo Modified copright notice in $file
  fi
done

rm -f cr.txt
