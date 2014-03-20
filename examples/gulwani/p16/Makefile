all: p16 bins p16.tc

clean:
	rm -rf p16 bins p16.tc result.s

p16: main.cc
	g++ -std=c++11 -O0 main.cc -o p16

bins: p16
	stoke extract -i ./p16 -o bins

p16.tc: p16
	stoke testcase --bin ./p16 -o p16.tc --fxn _Z3p16ii --max_testcases 1024
