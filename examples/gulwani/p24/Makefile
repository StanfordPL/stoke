all: p24 bins p24.tc

clean:
	rm -rf p24 bins p24.tc result.s

p24: main.cc
	g++ -std=c++11 -O0 main.cc -o p24

bins: p24
	stoke extract -i ./p24 -o bins

p24.tc: p24
	stoke testcase --bin ./p24 -o p24.tc --fxn _Z3p24i --max_testcases 1024
