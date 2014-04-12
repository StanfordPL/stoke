all: p14 bins p14.tc

clean:
	rm -rf p14 bins p14.tc result.s

p14: main.cc
	g++ -std=c++11 -O0 main.cc -o p14

bins: p14
	stoke extract -i ./p14 -o bins

p14.tc: p14
	stoke testcase --bin ./p14 -o p14.tc --fxn _Z3p14ii --max_testcases 1024
