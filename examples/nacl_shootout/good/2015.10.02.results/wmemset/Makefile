
DEF_IN="{ %r15 %rdi %rsi %rdx }"
LIVE_OUT="{ %rax }"
ARGS=--solver z3 --alias_strategy string --no_ddec_bv --verify_nacl
OPT_ARGS=--test_set "{ 0 .. 100 }" --sound_nullspace
SYNTH_ARGS=--test_set "{ 0 .. 50 }" --sound_nullspace

opt:
	time stoke debug verify --target target.s --rewrite optimize.s --testcases testcases --training_set "{ 1 .. 30 }" --strategy ddec --def_in $(DEF_IN) --live_out $(LIVE_OUT) $(ARGS) $(OPT_ARGS)

synth:
	time stoke debug verify --target target.s --rewrite synth.s --testcases testcases --strategy ddec --def_in $(DEF_IN) --live_out $(LIVE_OUT) $(ARGS) $(SYNTH_ARGS)

opt_notc:
	time stoke debug verify --target target.s --rewrite optimize.s --strategy ddec --def_in $(DEF_IN) --live_out $(LIVE_OUT) $(ARGS)

synth_notc:
	time stoke debug verify --target target.s --rewrite synth.s --strategy ddec --def_in $(DEF_IN) --live_out $(LIVE_OUT) $(ARGS)

duh:
	time stoke debug verify --target target.s --rewrite target.s --testcases testcases --training_set "{ 1 .. 30 }" --strategy ddec --def_in $(DEF_IN) --live_out $(LIVE_OUT) $(ARGS)


bounded_flat:
	./bounded_flat.sh $(DEF_IN) $(LIVE_OUT)

bounded_flat_syn:
	./bounded_flat_syn.sh $(DEF_IN) $(LIVE_OUT)



