
DEPLOY_PATH=/home/berkeley/stoke/examples/nacl_shootout/web-shootout.googlecode.com/git/nacl
NAME=strcasecmp
TC_OPTS=--number 40 --width_of_char 1 --null_terminate --different_size_ok --data_from_tc data.tc

all: testcase search replace deploy

## This is to extract the table out of newlib
generate_data: generate_data.c
	gcc -std=c99 lib_a-ctype_.o binary.o generate_data.c -o generate_data

data.tc: generate_data
	stoke testcase --bin ./generate_data --fxn go -o data.tc


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

deploy: replace
	cp optbin $(DEPLOY_PATH)/$(NAME).nexe
	rm -f $(DEPLOY_PATH)/benchmarks_browser64.nexe
	ln -s $(DEPLOY_PATH)/$(NAME).nexe $(DEPLOY_PATH)/benchmarks_browser64.nexe

clean:
	rm -f testcases optbin generate_data
