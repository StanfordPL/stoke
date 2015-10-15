
all: opt synth

opt:
	time stoke debug verify --target target.s --rewrite optimize.s --testcases testcases --strategy ddec --def_in "{ %r15 %rdi %rsi }" --live_out "{ %rax }"

synth:
	time stoke debug verify --target target.s --rewrite synth.s --testcases testcases --strategy ddec --def_in "{ %r15 %rdi %rsi }" --live_out "{ %rax }"



alt:
	time stoke debug verify --target target.s --rewrite optimize.s --strategy ddec --live_out "{ %rax }"
