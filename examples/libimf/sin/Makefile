all: sin bins sin.tc

clean:
	rm -rf sin sin.o bins sin.tc result.s

sin: main.cc sin.o
	g++ -O0 main.cc -o sin sin.o

sin.o: sin.s
	g++ -c sin.s

bins: sin
	stoke extract -i ./sin -o bins

sin.tc: sin
	stoke testcase --bin ./sin -o sin.tc --fxn _Z3sindPm --max_testcases 1024
