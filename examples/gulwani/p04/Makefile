all: p04 bins p04.tc

clean:
	rm -rf p04 bins p04.tc result.s

p04: main.cc
	g++ -std=c++11 -O0 main.cc -o p04

bins: p04
	stoke extract -i ./p04 -o bins

p04.tc: p04
	stoke testcase --bin ./p04 -o p04.tc --fxn _Z3p04i --max_testcases 1024
