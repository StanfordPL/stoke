all: orig extract testcase replace sandbox

orig:
	g++ -O0 main.cc

extract:
	stoke extract -i ./a.out -o bins

testcase:
	stoke testcase --target bins/main.s --functions bins/ --prune -o tc.tc

replace:
	cp _Z3foov.s bins/

sandbox: sandbox_with_check sandbox_without_check

sandbox_with_check:
	stoke debug sandbox --target bins/main.s --functions bins --prune --stack_check --testcases tc.tc | grep "corrupted" > /dev/null

sandbox_without_check:
	stoke debug sandbox --target bins/main.s --functions bins --prune --testcases tc.tc | grep "normal" > /dev/null

clean:
	rm -rf ./a.out *.tc bins
