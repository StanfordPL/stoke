
DEF_IN="{ %r15 %rdi %rsi }"
LIVE_OUT="{ %rax }"
ARGS=--solver z3 --no_ddec_bv --test_set "{ 0 .. 20 }" --sound_nullspace --alias_strategy string_antialias

opt:
	time stoke debug verify --target target.s --rewrite optimize.s --testcases testcases --strategy ddec --def_in $(DEF_IN) --live_out $(LIVE_OUT) $(ARGS)

opt_debug:
	gdb --args stoke_debug_verify --target target.s --rewrite optimize.s --testcases testcases --strategy ddec --def_in $(DEF_IN) --live_out $(LIVE_OUT) $(ARGS)

synth:
	time stoke debug verify --target target.s --rewrite synth.s --testcases testcases --strategy ddec --def_in $(DEF_IN) --live_out $(LIVE_OUT) $(ARGS)

opt_notc:
	time stoke debug verify --target target.s --rewrite optimize.s --strategy ddec --def_in $(DEF_IN) --live_out $(LIVE_OUT) $(ARGS)

synth_notc:
	time stoke debug verify --target target.s --rewrite synth.s --strategy ddec --def_in $(DEF_IN) --live_out $(LIVE_OUT) $(ARGS)

bounded_flat:
	./bounded_flat.sh $(DEF_IN) $(LIVE_OUT) flat 2

bounded_flat_syn:
	./bounded_flat_syn.sh $(DEF_IN) $(LIVE_OUT) flat 2

