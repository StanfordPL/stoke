all: testcase effect

testcase:
	stoke testcase --target test.s -o tc.tc --functions functions
effect:
	# we want rax to be unmodified (because we execute the empty program), so
	# check that it does not show up in the output of 'stoke debug effect'
	stoke debug effect --live_out "{ }" --def_in "{ ... }" --target test.s --testcases tc.tc --functions functions | grep -L "rax" | grep "(standard input)"

clean:
	rm -rf tc.tc
