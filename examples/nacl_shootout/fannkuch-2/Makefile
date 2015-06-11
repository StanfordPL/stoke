
all:

testcases:
	fannkuch2_tcs --number 64 --stack_size 64 --heap_size 48 --max_perm_size 8 > fannkuch2.tc
	fannkuch2_tcs --number 10 --stack_size 64 --heap_size 480 --max_perm_size 80 >> fannkuch2.tc
	fannkuch2_tcs --number 10 --stack_size 64 --heap_size 4800 --max_perm_size 800 >> fannkuch2.tc
	fannkuch2_tcs --number 10 --stack_size 64 --heap_size 48000 --max_perm_size 8000 >> fannkuch2.tc
	fannkuch2_tcs --number 10 --stack_size 64 --heap_size 480000 --max_perm_size 80000 >> fannkuch2.tc

search:
	stoke search --config search.conf

extract:
	stoke extract -i original.nexe -o bins

profile: fannkuchredux.c Makefile
	gcc -std=c99 -g -O2 -DDEFMAIN fannkuchredux.c -o profile

replace:
	stoke replace --use_input_offset --rewrite result.s -i original.nexe -o new.nexe

deploy:
	cp new.nexe /home/berkeley/stoke/examples/nacl_shootout/web-shootout.googlecode.com/git/nacl/fannkuch2.nexe
