all: p11 bins p11.tc

clean:
	rm -rf p11 bins p11.tc result.s

p11: main.cc
	g++ -std=c++11 -O0 main.cc -o p11

bins: p11
	stoke extract -i ./p11 -o bins

p11.tc: p11
	stoke testcase --bin ./p11 -o p11.tc --fxn _Z3p11ii --max_testcases 1024
