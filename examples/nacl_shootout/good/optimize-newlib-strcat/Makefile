
DEPLOY_PATH=/home/berkeley/stoke/examples/nacl_shootout/web-shootout.googlecode.com/git/nacl
NAME=strat
TC_OPTS=--number 10 --strcat

all: clean testcase search replace deploy

testcase:
	strcpy_tcs $(TC_OPTS) > testcases
	strcpy_tcs $(TC_OPTS) --max_buffer_size 16 --heap_size 128 >> testcases
	strcpy_tcs $(TC_OPTS) --align 64 --max_buffer_size 16 --heap_size 128 >> testcases
	strcpy_tcs $(TC_OPTS) --max_buffer_size 64 --heap_size 384 >> testcases
	strcpy_tcs $(TC_OPTS) --align 64 --max_buffer_size 64 --heap_size 384 >> testcases
	strcpy_tcs $(TC_OPTS) --max_buffer_size 512 --heap_size 3072 >> testcases
	strcpy_tcs $(TC_OPTS) --align 64 --max_buffer_size 512 --heap_size 3072 >> testcases
	strcpy_tcs $(TC_OPTS) --max_buffer_size 1024 --heap_size 6144 >> testcases
	strcpy_tcs $(TC_OPTS) --align 64 --max_buffer_size 1024 --heap_size 6144 >> testcases

search:
	stoke search --config search.conf

replace:
	stoke replace --rewrite result.s -i binary -o optbin
	ncval optbin

pinkman:
	./pinkman.sh

optbin: result.s
	make replace

benchmark: optbin
	sel_ldr.py optbin

clean:
	rm -f optbin
