all: p09 bins p09.tc

clean:
	rm -rf p09 bins p09.tc result.s

p09: main.cc
	g++ -std=c++11 -O0 main.cc -o p09

bins: p09
	stoke extract -i ./p09 -o bins

p09.tc: p09
	stoke testcase --bin ./p09 -o p09.tc --fxn _Z3p09i --max_testcases 1024
