
DEPLOY_PATH=/home/berkeley/stoke/examples/nacl_shootout/web-shootout.googlecode.com/git/nacl
NAME=wcsrchr
TC_OPTS=--number 40 --char_width 4 --different_size_ok --randomize_stack
TC_EXTRA_OPTS=--number 400 --char_width 4 --different_size_ok --randomize_stack
TC_BIN=strcpy_tcs

all: clean testcase search replace deploy

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

verify: extra_testcases
	stoke debug verify --strategy hold_out --test_set "{ 1 .. 2000 }" --training_set "{ 1 .. 2000 }" --testcases extra_testcases --target target.s --rewrite result.s

replace:
	stoke replace --rewrite result.s -i binary -o optbin
	ncval optbin

benchmark: replace
	sel_ldr.py optbin

clean:
	rm -f testcases optbin
