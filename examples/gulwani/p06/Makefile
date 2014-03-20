all: p06 bins p06.tc

clean:
	rm -rf p06 bins p06.tc result.s

p06: main.cc
	g++ -std=c++11 -O0 main.cc -o p06

bins: p06
	stoke extract -i ./p06 -o bins

p06.tc: p06
	stoke testcase --bin ./p06 -o p06.tc --fxn _Z3p06i --max_testcases 1024
