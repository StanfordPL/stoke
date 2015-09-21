
DEPLOY_PATH=/home/berkeley/stoke/examples/nacl_shootout/web-shootout.googlecode.com/git/nacl
NAME=strcpy
TC_OPTS=--number 10 --char_width 4

all: search

testcase:
	strcpy_tcs $(TC_OPTS) > testcases
	strcpy_tcs $(TC_OPTS) --max_buffer_size 16 --heap_size 128 >> testcases
	strcpy_tcs $(TC_OPTS) --align 64 --max_buffer_size 16 --heap_size 128 >> testcases
	strcpy_tcs $(TC_OPTS) --max_buffer_size 64 --heap_size 256 >> testcases
	strcpy_tcs $(TC_OPTS) --align 64 --max_buffer_size 64 --heap_size 256 >> testcases
	strcpy_tcs $(TC_OPTS) --max_buffer_size 512 --heap_size 2048 >> testcases
	strcpy_tcs $(TC_OPTS) --align 64 --max_buffer_size 512 --heap_size 2048 >> testcases
	strcpy_tcs $(TC_OPTS) --max_buffer_size 1024 --heap_size 4096 >> testcases
	strcpy_tcs $(TC_OPTS) --align 64 --max_buffer_size 1024 --heap_size 4096 >> testcases

search:
	stoke search --config search.conf

replace:
	stoke replace --input_offset --rewrite result.s -i binary -o optbin
	ncval optbin

optbin: result.s
	make replace

benchmark: optbin
	sel_ldr.py optbin

pinkman:
	./pinkman.sh

clean:
	rm -f testcases optbin
