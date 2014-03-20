all: p07 bins p07.tc

clean:
	rm -rf p07 bins p07.tc result.s

p07: main.cc
	g++ -std=c++11 -O0 main.cc -o p07

bins: p07
	stoke extract -i ./p07 -o bins

p07.tc: p07
	stoke testcase --bin ./p07 -o p07.tc --fxn _Z3p07i --max_testcases 1024
