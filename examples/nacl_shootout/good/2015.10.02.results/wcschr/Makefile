
DEF_IN="{ %r15 %rdi %rsi }"
LIVE_OUT="{ %rax }"

opt:
	time stoke debug verify --target target.s --rewrite optimize.s --testcases testcases --strategy ddec --max_jumps 4096 --def_in $(DEF_IN) --live_out $(LIVE_OUT)

synth:
	time stoke debug verify --target target.s --rewrite synth.s --testcases testcases --strategy ddec --max_jumps 4096 --def_in $(DEF_IN) --live_out $(LIVE_OUT)

opt_notc:
	time stoke debug verify --target target.s --rewrite optimize.s --strategy ddec --def_in $(DEF_IN) --live_out $(LIVE_OUT) --max_jumps 4096

synth_notc:
	time stoke debug verify --target target.s --rewrite synth.s --strategy ddec --def_in $(DEF_IN) --live_out $(LIVE_OUT) --max_jumps 4096
