
DEF_IN="{ %r15 %rdi %rsi %rdx }"
LIVE_OUT="{ %rax }"

opt:
	time stoke debug verify --target target.s --rewrite optimize.s --testcases testcases --training_set "{ 1 .. 30 }" --strategy ddec --def_in $(DEF_IN) --live_out $(LIVE_OUT)

synth:
	time stoke debug verify --target target.s --rewrite synth.s --testcases testcases --strategy ddec --def_in $(DEF_IN) --live_out $(LIVE_OUT)

opt_notc:
	time stoke debug verify --target target.s --rewrite optimize.s --strategy ddec --def_in $(DEF_IN) --live_out $(LIVE_OUT)

synth_notc:
	time stoke debug verify --target target.s --rewrite synth.s --strategy ddec --def_in $(DEF_IN) --live_out $(LIVE_OUT)
