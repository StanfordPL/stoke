
TC_OPTS=--normal_abi --number 32 --stack_size 16
DEPLOY_PATH=/home/berkeley/stoke/examples/nacl_shootout/web-shootout.googlecode.com/git/nacl

extract:
	stoke extract -i native -o bins_native
	stoke extract -i nacl -o bins_nacl

testcase:
	memcpy_tcs $(TC_OPTS) > nacl.tc
	memcpy_tcs $(TC_OPTS) --max_buffer_size 16 --heap_size 128 >> nacl.tc
	memcpy_tcs $(TC_OPTS) --max_buffer_size 512 --heap_size 2048 >> nacl.tc
	memcpy_tcs $(TC_OPTS) --max_buffer_size 1024 --heap_size 4096 >> nacl.tc
	memcpy_tcs $(TC_OPTS) --native > native.tc
	memcpy_tcs $(TC_OPTS) --native --max_buffer_size 16 --heap_size 128 >> native.tc
	memcpy_tcs $(TC_OPTS) --native --max_buffer_size 512 --heap_size 2048 >> native.tc
	memcpy_tcs $(TC_OPTS) --native --max_buffer_size 1024 --heap_size 4096 >> native.tc

search:
	stoke search --config nacl.search

check:
	ncval nacl.nexe
	ncval nacl_synth.nexe
	ncval native_opt.nexe

replace:
	stoke replace --input_offset --rewrite nacl_result.s -i nacl -o nacl.nexe

deploy:
	cp nacl.nexe $(DEPLOY_PATH)/memcpy2.nexe
	rm -f $(DEPLOY_PATH)/benchmarks_browser64.nexe
	ln -s $(DEPLOY_PATH)/memcpy2.nexe $(DEPLOY_PATH)/benchmarks_browser64.nexe

replace_native:
	stoke replace --input_offset --rewrite native_result.s -i nacl -o nacl_synth.nexe

replace_opt:
	stoke replace --input_offset --rewrite native_opt.s -i nacl -o native_opt.nexe

deploy_native:
	cp nacl_synth.nexe $(DEPLOY_PATH)/memcpy2.nexe
	rm -f $(DEPLOY_PATH)/benchmarks_browser64.nexe
	ln -s $(DEPLOY_PATH)/memcpy2.nexe $(DEPLOY_PATH)/benchmarks_browser64.nexe

deploy_opt:
	cp native_opt.nexe $(DEPLOY_PATH)/memcpy2.nexe
	rm -f $(DEPLOY_PATH)/benchmarks_browser64.nexe
	ln -s $(DEPLOY_PATH)/memcpy2.nexe $(DEPLOY_PATH)/benchmarks_browser64.nexe



clean:
	rm -rf bins_native bins_nacl nacl.tc native.tc
