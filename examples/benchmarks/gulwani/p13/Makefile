all: p13 bins p13.tc

clean:
	rm -rf p13 bins p13.tc result.s

p13: main.cc
	g++ -std=c++11 -O0 main.cc -o p13

bins: p13
	stoke extract -i ./p13 -o bins

p13.tc: p13
	stoke testcase --bin ./p13 -o p13.tc --fxn _Z3p13i --max_testcases 1024
