all: p12 bins p12.tc

clean:
	rm -rf p12 bins p12.tc result.s

p12: main.cc
	g++ -std=c++11 -O0 main.cc -o p12

bins: p12
	stoke extract -i ./p12 -o bins

p12.tc: p12
	stoke testcase --bin ./p12 -o p12.tc --fxn _Z3p12ii --max_testcases 1024
