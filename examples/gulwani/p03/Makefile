all: p03 bins p03.tc

clean:
	rm -rf p03 bins p03.tc result.s

p03: main.cc
	g++ -std=c++11 -O0 main.cc -o p03

bins: p03
	stoke extract -i ./p03 -o bins

p03.tc: p03
	stoke testcase --bin ./p03 -o p03.tc --fxn _Z3p03i --max_testcases 1024
