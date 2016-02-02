#!/bin/bash

for F in wcpcpy wcslen wmemset wcsnlen wmemcmp wcschr strxfrm wcscmp wmemchr wcscpy wcscat strcpy; do
	cd $F
	nohup ./run_bounded.sh &
	cd ..
done
