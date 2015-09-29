
DEPLOY_PATH=/home/berkeley/stoke/examples/nacl_shootout/web-shootout.googlecode.com/git/nacl
NAME=wcslen
TC_OPTS=--width_of_char 4 --number 40 --null_terminate --add_size_arg

all: search

testcase:
	wcsnlen_tcs $(TC_OPTS) > testcases
	wcsnlen_tcs $(TC_OPTS) --max_buffer_size 16 --heap_size 128 >> testcases
	wcsnlen_tcs $(TC_OPTS) --max_buffer_size 512 --heap_size 2048 >> testcases
	wcsnlen_tcs $(TC_OPTS) --max_buffer_size 1024 --heap_size 4096 >> testcases

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
