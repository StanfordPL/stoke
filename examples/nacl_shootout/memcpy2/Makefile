
TC_OPTS=--normal_abi --number 32 --stack_size 16

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

replace:
	stoke replace --use_input_offset --rewrite nacl_result.s -i nacl -o nacl.nexe

clean:
	rm -rf bins_native bins_nacl nacl.tc native.tc
