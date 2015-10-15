
DEF_IN="{ %r15 %rdi %rsi %rsp %rbx }"
LIVE_OUT="{ %rax }"

opt:
	time stoke debug verify --target target.s --rewrite optimize.s --testcases testcases --strategy ddec --def_in $(DEF_IN) --live_out $(LIVE_OUT) --functions functions

synth:
	time stoke debug verify --target target.s --rewrite synth.s --testcases testcases --strategy ddec --def_in $(DEF_IN) --live_out $(LIVE_OUT) --functions functions

opt_notc:
	time stoke debug verify --target target.s --rewrite optimize.s --strategy ddec --def_in $(DEF_IN) --live_out $(LIVE_OUT) --functions functions

synth_notc:
	time stoke debug verify --target target.s --rewrite synth.s --strategy ddec --def_in $(DEF_IN) --live_out $(LIVE_OUT) --functions functions
