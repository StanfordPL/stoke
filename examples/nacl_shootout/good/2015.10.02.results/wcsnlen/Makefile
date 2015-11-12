
DEF_IN="{ %r15 %rdi %rsi }"
LIVE_OUT="{ %rax }"
ARGS=--def_in $(DEF_IN) --live_out $(LIVE_OUT) --solver z3 --sound_nullspace
OPT_ARGS=--test_set "{ 0 .. 50 }"
SYNTH_ARGS=--no_ddec_bv --test_set "{ 0 .. 100 }"

opt:
	time stoke debug verify --target target.s --rewrite optimize.s --testcases testcases --strategy ddec $(ARGS) $(OPT_ARGS)

synth:
	time stoke debug verify --target target.s --rewrite synth.s --testcases testcases --strategy ddec $(ARGS) $(SYNTH_ARGS)

opt_notc:
	time stoke debug verify --target target.s --rewrite optimize.s --strategy ddec $(ARGS)

synth_notc:
	time stoke debug verify --target target.s --rewrite synth.s --strategy ddec $(ARGS)
