all: testcase sandbox

testcase:
	stoke testcase --target no_loop.s -o tc.tc
sandbox:
	stoke debug sandbox --target loop.s --testcases tc.tc | grep "maximum" > /dev/null

clean:
	rm -rf tc.tc
