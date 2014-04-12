all: p25 bins p25.tc

clean:
	rm -rf p25 bins p25.tc result.s

p25: main.cc
	g++ -std=c++11 -O0 main.cc -o p25

bins: p25
	stoke extract -i ./p25 -o bins

p25.tc: p25
	stoke testcase --bin ./p25 -o p25.tc --fxn _Z3p25ii --max_testcases 1024
