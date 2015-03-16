all: testcase sandbox

testcase:
	stoke testcase --target no_loop.s -o tc.tc
sandbox:
	stoke debug sandbox --target loop.s --testcases tc.tc

clean:
	rm -rf tc.tc
