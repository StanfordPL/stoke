
DEF_IN="{ %r15 %rdi %rsi }"
LIVE_OUT="{ %rax }"
ARGS=--def_in $(DEF_IN) --live_out $(LIVE_OUT) --solver z3 --no_ddec_bv --sound_nullspace --test_set "{ 0 .. 50 }"

opt:
	time stoke debug verify --target target.s --rewrite optimize.s --testcases testcases --strategy ddec $(ARGS)

synth:
	time stoke debug verify --target target.s --rewrite synth.s --testcases testcases --strategy ddec $(ARGS)

opt_notc:
	time stoke debug verify --target target.s --rewrite optimize.s --strategy ddec $(ARGS)

synth_notc:
	time stoke debug verify --target target.s --rewrite synth.s --strategy ddec $(ARGS)
