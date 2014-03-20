all: p17 bins p17.tc

clean:
	rm -rf p17 bins p17.tc result.s

p17: main.cc
	g++ -std=c++11 -O0 main.cc -o p17

bins: p17
	stoke extract -i ./p17 -o bins

p17.tc: p17
	stoke testcase --bin ./p17 -o p17.tc --fxn _Z3p17i --max_testcases 1024
