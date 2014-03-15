all: p01 bins p01.tc

clean: 
	rm -rf p01 bins p01.tc result.s

p01: main.cc
	g++ -std=c++11 -O0 main.cc -o p01

bins: p01
	stoke extract -i ./p01 -o bins

p01.tc: p01
	stoke testcase --bin ./p01 -o p01.tc --fxn _Z3p01i --max_testcases 1024

