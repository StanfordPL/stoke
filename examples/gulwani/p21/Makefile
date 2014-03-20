all: p21 bins p21.tc

clean:
	rm -rf p21 bins p21.tc result.s

p21: main.cc
	g++ -std=c++11 -O0 main.cc -o p21

bins: p21
	stoke extract -i ./p21 -o bins

p21.tc: p21
	stoke testcase --bin ./p21 -o p21.tc --fxn _Z3p21iiii --max_testcases 1024
