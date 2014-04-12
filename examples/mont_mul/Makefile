all: mont_mul bins mont_mul.tc 

clean: 
	rm -rf mont_mul.o mont_mul bins mont_mul.tc result.s

mont_mul.o: mont_mul.s
	g++ -std=c++11 -c mont_mul.s

mont_mul: mont_mul.o main.cc
	g++ -std=c++11 -O3 main.cc -o mont_mul mont_mul.o

bins: mont_mul
	stoke extract -i ./mont_mul -o bins

mont_mul.tc: mont_mul
	stoke testcase --bin ./mont_mul -o mont_mul.tc --fxn _Z8mont_mulmmjjm --max_testcases 1024
