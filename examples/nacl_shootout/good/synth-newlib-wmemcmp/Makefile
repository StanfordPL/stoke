
DEPLOY_PATH=/home/berkeley/stoke/examples/nacl_shootout/web-shootout.googlecode.com/git/nacl
NAME=wmemcmp
TC_OPTS=--number 40 --width_of_char 4

all: search

testcase:
	memcmp_tcs $(TC_OPTS) > testcases
	memcmp_tcs $(TC_OPTS) --max_buffer_size 16 --heap_size 128 >> testcases
	memcmp_tcs $(TC_OPTS) --max_buffer_size 64 --heap_size 256 >> testcases
	memcmp_tcs $(TC_OPTS) --max_buffer_size 512 --heap_size 2048 >> testcases
	memcmp_tcs $(TC_OPTS) --max_buffer_size 1024 --heap_size 4096 >> testcases
	memcmp_tcs $(TC_OPTS) --max_buffer_size 4096 --heap_size 16384 >> testcases

search:
	stoke search --config search.conf

replace:
	stoke replace --rewrite result.s -i binary -o optbin
	ncval optbin

optbin: result.s
	make replace

benchmark: optbin
	sel_ldr.py optbin

pinkman:
	./pinkman.sh

clean:
	rm -f testcases optbin
