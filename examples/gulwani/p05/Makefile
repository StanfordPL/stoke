all: p05 bins p05.tc

clean:
	rm -rf p05 bins p05.tc result.s

p05: main.cc
	g++ -std=c++11 -O0 main.cc -o p05

bins: p05
	stoke extract -i ./p05 -o bins

p05.tc: p05
	stoke testcase --bin ./p05 -o p05.tc --fxn _Z3p05i --max_testcases 1024
