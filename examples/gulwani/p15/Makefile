all: p15 bins p15.tc

clean:
	rm -rf p15 bins p15.tc result.s

p15: main.cc
	g++ -std=c++11 -O0 main.cc -o p15

bins: p15
	stoke extract -i ./p15 -o bins

p15.tc: p15
	stoke testcase --bin ./p15 -o p15.tc --fxn _Z3p15ii --max_testcases 1024
