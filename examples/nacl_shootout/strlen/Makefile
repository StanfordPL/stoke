
DEPLOY_PATH=/home/berkeley/stoke/examples/nacl_shootout/web-shootout.googlecode.com/git/nacl
NAME=strlen

testcase:
	strcpy_tcs $(TC_OPTS) > nacl.tc
	strcpy_tcs $(TC_OPTS) --max_buffer_size 16 --heap_size 128 >> nacl.tc
	strcpy_tcs $(TC_OPTS) --max_buffer_size 512 --heap_size 2048 >> nacl.tc
	strcpy_tcs $(TC_OPTS) --max_buffer_size 1024 --heap_size 4096 >> nacl.tc

search:
	stoke search --config nacl.search

replace_nacl:
	stoke replace --input_offset --rewrite nacl_result.s -i nacl.nexe -o nacl_opt.nexe
	ncval nacl_opt.nexe

replace_synth:
	stoke replace --input_offset --rewrite native_result.s -i nacl.nexe -o native_synth.nexe
	ncval native_synth.nexe

replace_opt:
	stoke replace --input_offset --rewrite native_opt.s -i nacl.nexe -o native_opt.nexe
	ncval native_opt.nexe

deploy_nacl: replace_nacl
	cp nacl_opt.nexe $(DEPLOY_PATH)/$(NAME).nexe
	rm -f $(DEPLOY_PATH)/benchmarks_browser64.nexe
	ln -s $(DEPLOY_PATH)/$(NAME).nexe $(DEPLOY_PATH)/benchmarks_browser64.nexe

deploy_synth: replace_synth
	cp native_synth.nexe $(DEPLOY_PATH)/$(NAME).nexe
	rm -f $(DEPLOY_PATH)/benchmarks_browser64.nexe
	ln -s $(DEPLOY_PATH)/$(NAME).nexe $(DEPLOY_PATH)/benchmarks_browser64.nexe

deploy_opt: replace_opt
	cp native_opt.nexe $(DEPLOY_PATH)/$(NAME).nexe
	rm -f $(DEPLOY_PATH)/benchmarks_browser64.nexe
	ln -s $(DEPLOY_PATH)/$(NAME).nexe $(DEPLOY_PATH)/benchmarks_browser64.nexe

clean:
	rm -rf bins_native bins_nacl nacl.tc native.tc
