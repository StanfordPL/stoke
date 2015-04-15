all: testcase cost

testcase:
	stoke testcase --target target.s -o tc.tc --max_testcases 10

cost:
	stoke debug cost --target target.s --rewrite alt.s --testcases tc.tc --live_out "{ %eax }" --def_in "{ %rax %rcx }" | grep "Correct: yes"

clean:
	rm -f tc.tc result.s
