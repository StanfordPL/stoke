all: build extract testcase search replace

build:
	g++ -std=c++11 main.cc -O0 -fno-inline

extract:
	stoke extract -i ./a.out -o bins

testcase:
	stoke testcase --bin ./a.out --fxn _Z3foov -o rip.tc

search:
	stoke search --config search.conf

replace:
	stoke replace -i ./a.out --rewrite result.s

clean:
	rm -rf ./a.out bins *.tc result.s
