all:
	g++ -std=c++11 -c mont_mul.s
	g++ -std=c++11 -O3 main.cc -o mont_mul mont_mul.o
	stoke extract -i ./mont_mul -o bins
	stoke testcase --bin ./mont_mul -o mont_mul.tc --fxn _Z8mont_mulmmjjm --max_testcases 1024

clean: 
	rm -rf mont_mul.o mont_mul bins mont_mul.tc result.s
