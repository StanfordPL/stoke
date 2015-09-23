
DEPLOY_PATH=/home/berkeley/stoke/examples/nacl_shootout/web-shootout.googlecode.com/git/nacl
NAME=wmemchr
TC_OPTS=--number 40 --width_of_char 4
TC_BIN=memchr_tcs

all: search

testcase:
	cat rdx0.tc rsi0.tc > testcases
	$(TC_BIN) $(TC_OPTS) >> testcases
	$(TC_BIN) $(TC_OPTS) --max_buffer_size 16 --heap_size 128 >> testcases
	$(TC_BIN) $(TC_OPTS) --max_buffer_size 64 --heap_size 256 >> testcases
	$(TC_BIN) $(TC_OPTS) --max_buffer_size 512 --heap_size 2048 >> testcases
	$(TC_BIN) $(TC_OPTS) --max_buffer_size 1024 --heap_size 4096 >> testcases
	$(TC_BIN) $(TC_OPTS) --max_buffer_size 4096 --heap_size 16384 >> testcases

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
