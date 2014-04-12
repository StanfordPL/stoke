all: p23 bins p23.tc

clean:
	rm -rf p23 bins p23.tc result.s

p23: main.cc
	g++ -std=c++11 -O0 main.cc -o p23

bins: p23
	stoke extract -i ./p23 -o bins

p23.tc: p23
	stoke testcase --bin ./p23 -o p23.tc --fxn _Z3p23i --max_testcases 1024
