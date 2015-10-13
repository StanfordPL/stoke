all: check_cost

check_cost:
	stoke debug cost --target target.s --rewrite alt.s --testcases tc.tc --def_in "{ %zf %cf }" --live_out "{ %ah }" --cost correctness | grep "Correct: no"

cost:
	stoke debug cost --target target.s --rewrite alt.s --testcases tc.tc --def_in "{ %zf %cf }" --live_out "{ %ah }" --cost correctness

sandbox:
	stoke debug sandbox --target target.s --testcases tc.tc > a.out
	stoke debug sandbox --target alt.s --testcases tc.tc > b.out
	-diff a.out b.out
	rm a.out b.out

clean:
	rm -f tc.tc result.s
