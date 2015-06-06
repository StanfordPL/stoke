
all:

testcases:
	fannkuch2_tcs --number 64 --stack_size 64 --heap_size 48 --max_perm_size 8 > fannkuch2.tc

search:
	stoke search --config search.conf

extract:
	stoke extract -i original.nexe -o bins

profile: fannkuchredux.c Makefile
	gcc -std=c99 -g -O2 -DDEFMAIN fannkuchredux.c -o profile

replace:
	stoke replace --rewrite result.s -i original.nexe -o new.nexe
