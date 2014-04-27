all: 
	g++ -c sin.s
	g++ -O3 main.cc -o sin sin.o
	stoke extract -i ./sin -o bins
	stoke testcase --bin ./sin -o sin.tc --fxn _Z3sindPm --max_testcases 1024

clean:
	rm -rf sin sin.o bins sin.tc result.s
