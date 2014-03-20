all: p08 bins p08.tc

clean:
	rm -rf p08 bins p08.tc result.s

p08: main.cc
	g++ -std=c++11 -O0 main.cc -o p08

bins: p08
	stoke extract -i ./p08 -o bins

p08.tc: p08
	stoke testcase --bin ./p08 -o p08.tc --fxn _Z3p08i --max_testcases 1024
