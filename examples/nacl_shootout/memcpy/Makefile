
all:

testcases:

search:
	stoke search --config search.conf

extract:
	stoke extract -i original.nexe -o bins

profile: fannkuchredux.c Makefile
	gcc -std=c99 -g -O2 -DDEFMAIN fannkuchredux.c -o profile

replace:
	stoke replace --use_input_offset --rewrite result.s -i original.nexe -o new.nexe

cost:
	stoke debug cost --config cost.config

deploy:
	cp new.nexe /home/berkeley/stoke/examples/nacl_shootout/web-shootout.googlecode.com/git/nacl/memcpy.nexe
