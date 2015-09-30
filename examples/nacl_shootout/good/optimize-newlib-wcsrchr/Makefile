
DEPLOY_PATH=/home/berkeley/stoke/examples/nacl_shootout/web-shootout.googlecode.com/git/nacl
NAME=wcsrchr
TC_OPTS=--number 100 --width_of_char 4 --null_terminate
TC_EXTRA_OPTS=--number 400 --width_of_char 4 --null_terminate
TC_BIN=memchr_tcs

all: search

testcase:
	$(TC_BIN) $(TC_OPTS) > testcases
	$(TC_BIN) $(TC_OPTS) --max_buffer_size 16 --heap_size 128 >> testcases
	$(TC_BIN) $(TC_OPTS) --max_buffer_size 64 --heap_size 256 >> testcases
	$(TC_BIN) $(TC_OPTS) --max_buffer_size 512 --heap_size 2048 >> testcases
	$(TC_BIN) $(TC_OPTS) --max_buffer_size 1024 --heap_size 4096 >> testcases
	$(TC_BIN) $(TC_OPTS) --max_buffer_size 4096 --heap_size 16384 >> testcases

extra_testcases:
	$(TC_BIN) $(TC_EXTRA_OPTS) > extra_testcases
	$(TC_BIN) $(TC_EXTRA_OPTS) --max_buffer_size 16 --heap_size 128 >> extra_testcases
	$(TC_BIN) $(TC_EXTRA_OPTS) --max_buffer_size 64 --heap_size 256 >> extra_testcases
	$(TC_BIN) $(TC_EXTRA_OPTS) --max_buffer_size 512 --heap_size 2048 >> extra_testcases
	$(TC_BIN) $(TC_EXTRA_OPTS) --max_buffer_size 1024 --heap_size 4096 >> extra_testcases
	$(TC_BIN) $(TC_EXTRA_OPTS) --max_buffer_size 4096 --heap_size 16384 >> extra_testcases

search:
	stoke search --config search.conf

verify:
	time stoke debug verify --config verify.conf

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
