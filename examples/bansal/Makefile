all: 
	g++ -c traverse.s
	g++ -std=c++11 -O3 -mavx -mavx2 main.cc -o bansal traverse.o
	stoke extract -i ./bansal -o bins
	stoke testcase --bin ./bansal -o bansal.tc --fxn _Z8traverseP4Node --max_testcases 1024

clean:
	rm -rf bansal bins bansal.tc result.s traverse.o
