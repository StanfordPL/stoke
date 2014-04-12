all: p20 bins p20.tc

clean:
	rm -rf p20 bins p20.tc result.s

p20: main.cc
	g++ -std=c++11 -O0 main.cc -o p20

bins: p20
	stoke extract -i ./p20 -o bins

p20.tc: p20
	stoke testcase --bin ./p20 -o p20.tc --fxn _Z3p20i --max_testcases 1024
