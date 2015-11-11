all: testcase verify

testcase:
	stoke testcase --target test.s -o tc.tc
verify:
	stoke debug verify --strategy hold_out --target test.s --rewrite alt.s --testcases tc.tc

clean:
	rm -rf tc.tc
