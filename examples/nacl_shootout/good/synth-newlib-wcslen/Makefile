
DEPLOY_PATH=/home/berkeley/stoke/examples/nacl_shootout/web-shootout.googlecode.com/git/nacl
NAME=wcslen
TC_OPTS=--char_width 4 --number 40 --dst_only

testcase:
	cat empty_string.tc > testcases
	strcpy_tcs $(TC_OPTS) --max_buffer_size 16 --heap_size 128 >> testcases
	strcpy_tcs $(TC_OPTS) --max_buffer_size 32 --heap_size 256 >> testcases
	strcpy_tcs $(TC_OPTS) --max_buffer_size 512 --heap_size 2048 >> testcases
	strcpy_tcs $(TC_OPTS) --max_buffer_size 1024 --heap_size 4096 >> testcases
	strcpy_tcs --char_width 4 --dst_only --number 200  --max_buffer_size 32 --heap_size 256 >> testcases

search:
	stoke search --config search.conf

replace:
	stoke replace --rewrite result.s -i binary -o optbin
	ncval optbin

benchmark: replace
	sel_ldr.py optbin

deploy: replace
	cp optbin $(DEPLOY_PATH)/$(NAME).nexe
	rm -f $(DEPLOY_PATH)/benchmarks_browser64.nexe
	ln -s $(DEPLOY_PATH)/$(NAME).nexe $(DEPLOY_PATH)/benchmarks_browser64.nexe

clean:
	rm -f testcases optbin
