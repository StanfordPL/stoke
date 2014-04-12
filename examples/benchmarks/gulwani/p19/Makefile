all: p19 bins p19.tc

clean:
	rm -rf p19 bins p19.tc result.s

p19: main.cc
	g++ -std=c++11 -O0 main.cc -o p19

bins: p19
	stoke extract -i ./p19 -o bins

p19.tc: p19
	stoke testcase --bin ./p19 -o p19.tc --fxn _Z3p19iii --max_testcases 1024
