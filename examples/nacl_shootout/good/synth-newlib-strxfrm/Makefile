
DEPLOY_PATH=/home/berkeley/stoke/examples/nacl_shootout/web-shootout.googlecode.com/git/nacl
NAME=strxfrm
TC_OPTS=--number 40 --record_dst_size --different_size_ok --randomize_stack

all: clean testcase search replace deploy

testcase:
	cat empty.tc one.tc one-alt.tc two.tc > testcases
	strcpy_tcs $(TC_OPTS) >> testcases
	strcpy_tcs $(TC_OPTS) --max_buffer_size 16 --heap_size 128 >> testcases
	strcpy_tcs $(TC_OPTS) --max_buffer_size 64 --heap_size 256 >> testcases
	strcpy_tcs $(TC_OPTS) --max_buffer_size 512 --heap_size 2048 >> testcases
	strcpy_tcs $(TC_OPTS) --max_buffer_size 1024 --heap_size 4096 >> testcases

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
