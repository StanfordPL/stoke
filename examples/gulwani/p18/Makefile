all: p18 bins p18.tc

clean:
	rm -rf p18 bins p18.tc result.s

p18: main.cc
	g++ -std=c++11 -O0 main.cc -o p18

bins: p18
	stoke extract -i ./p18 -o bins

p18.tc: p18
	stoke testcase --bin ./p18 -o p18.tc --fxn _Z3p18i --max_testcases 1024
