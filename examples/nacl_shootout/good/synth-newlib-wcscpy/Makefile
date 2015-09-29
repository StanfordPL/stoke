
DEPLOY_PATH=/home/berkeley/stoke/examples/nacl_shootout/web-shootout.googlecode.com/git/nacl
NAME=wcscpy
TC_OPTS=--char_width 4 --number 40

testcase:
	strcpy_tcs $(TC_OPTS) > testcases
	strcpy_tcs $(TC_OPTS) --max_buffer_size 16 --heap_size 128 >> testcases
	strcpy_tcs $(TC_OPTS) --max_buffer_size 512 --heap_size 2048 >> testcases
	strcpy_tcs $(TC_OPTS) --max_buffer_size 1024 --heap_size 4096 >> testcases

search:
	stoke search --config search.conf

verify:
	stoke debug verify --config verify.conf

replace:
	stoke replace --rewrite result.s -i binary -o optbin
	ncval optbin

benchmark: replace
	sel_ldr.py optbin	

pinkman:
	./pinkman.sh

clean:
	rm -f optbin
