all: p02 bins p02.tc

clean:
	rm -rf p02 bins p02.tc result.s

p02: main.cc
	g++ -std=c++11 -O0 main.cc -o p02

bins: p02
	stoke extract -i ./p02 -o bins

p02.tc: p02
	stoke testcase --bin ./p02 -o p02.tc --fxn _Z3p02i --max_testcases 1024
