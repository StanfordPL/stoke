
DEPLOY_PATH=/home/berkeley/stoke/examples/nacl_shootout/web-shootout.googlecode.com/git/nacl
NAME=wcschr
TC_OPTS=--number 40 --width_of_char 4 --null_terminate
TC_BIN=memchr_tcs

all: clean testcase search replace deploy

testcase:
	$(TC_BIN) $(TC_OPTS) > testcases
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

deploy: replace
	cp optbin $(DEPLOY_PATH)/$(NAME).nexe
	rm -f $(DEPLOY_PATH)/benchmarks_browser64.nexe
	ln -s $(DEPLOY_PATH)/$(NAME).nexe $(DEPLOY_PATH)/benchmarks_browser64.nexe

clean:
	rm -f testcases optbin
