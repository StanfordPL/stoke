all: p10 bins p10.tc

clean:
	rm -rf p10 bins p10.tc result.s

p10: main.cc
	g++ -std=c++11 -O0 main.cc -o p10

bins: p10
	stoke extract -i ./p10 -o bins

p10.tc: p10
	stoke testcase --bin ./p10 -o p10.tc --fxn _Z3p10ii --max_testcases 1024
