
DEF_IN="{ %r15 %rdi %rsi %rdx }"
LIVE_OUT="{ %rax }"
ARGS=--solver z3 --sound_nullspace --alias_strategy string --bound 2

opt:
	time stoke debug verify --target target.s --rewrite optimize.s --testcases testcases --strategy ddec --def_in $(DEF_IN) --live_out $(LIVE_OUT) $(ARGS)

synth:
	time stoke debug verify --target target.s --rewrite synth.s --testcases testcases --strategy ddec --def_in $(DEF_IN) --live_out $(LIVE_OUT) $(ARGS)

opt_notc:
	time stoke debug verify --target target.s --rewrite optimize.s --strategy ddec --def_in $(DEF_IN) --live_out $(LIVE_OUT) $(ARGS)

synth_notc:
	time stoke debug verify --target target.s --rewrite synth.s --strategy ddec --def_in $(DEF_IN) --live_out $(LIVE_OUT) $(ARGS)

bounded_flat:
	./bounded_flat.sh $(DEF_IN) $(LIVE_OUT)

bounded_flat_syn:
	./bounded_flat_syn.sh $(DEF_IN) $(LIVE_OUT)

