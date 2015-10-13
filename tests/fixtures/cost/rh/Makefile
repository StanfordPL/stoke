all: testcase cost

testcase:
	stoke testcase --target target.s -o tc.tc --max_testcases 100

cost:
	stoke debug cost --target target.s --rewrite alt.s --testcases tc.tc --def_in "{ %zf %cf }" --live_out "{ %ah }" | grep "Correct: no"

clean:
	rm -f tc.tc result.s
