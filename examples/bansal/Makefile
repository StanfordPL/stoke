all: bansal bins bansal.tc

clean:
	rm -rf bansal bins bansal.tc result.s

bansal: main.cc
	g++ -std=c++11 -O0 -mavx -mavx2 main.cc -o bansal

bins: bansal
	stoke extract -i ./bansal -o bins

bansal.tc: bansal
	stoke testcase --bin ./bansal -o bansal.tc --fxn _Z8traverseP4Node --max_testcases 1024
