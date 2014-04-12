all: p22 bins p22.tc

clean:
	rm -rf p22 bins p22.tc result.s

p22: main.cc
	g++ -std=c++11 -O0 main.cc -o p22

bins: p22
	stoke extract -i ./p22 -o bins

p22.tc: p22
	stoke testcase --bin ./p22 -o p22.tc --fxn _Z3p22i --max_testcases 1024
