all: orig extract testcase replace sandbox

orig:
	g++ -O0 main.cc

extract:
	stoke extract -i ./a.out -o bins

testcase:
	stoke testcase --target bins/main.s --functions bins/ --prune -o tc.tc

replace:
	cp _Z3foov.s bins/

sandbox:
	stoke debug sandbox --target bins/main.s --functions bins --prune --testcases tc.tc | grep "corrupted" > /dev/null

clean:
	rm -rf ./a.out *.tc bins
