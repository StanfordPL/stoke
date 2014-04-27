all: tan bins tan.tc

clean:
	rm -rf tan tan.o bins tan.tc result.s

tan: main.cc tan.o
	g++ -O3 main.cc -o tan tan.o

tan.o: tan.s
	g++ -c tan.s

bins: tan
	stoke extract -i ./tan -o bins

tan.tc: tan
	stoke testcase --bin ./tan -o tan.tc --fxn _Z3tandPm --max_testcases 1024
