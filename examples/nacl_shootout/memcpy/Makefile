
all:

testcases:
	memcpy_tcs --number 32 > memcpy.tc

search:
	stoke search --config search.conf

extract:
	stoke extract -i original.nexe -o bins

replace:
	stoke replace --use_input_offset --rewrite result.s -i original.nexe -o new.nexe

cost:
	stoke debug cost --config cost.config

deploy:
	cp new.nexe /home/berkeley/stoke/examples/nacl_shootout/web-shootout.googlecode.com/git/nacl/memcpy.nexe
