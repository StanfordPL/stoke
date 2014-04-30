all: 
	g++ -c tan.s
	g++ -O3 main.cc -o tan tan.o
	stoke extract -i ./tan -o bins
	stoke testcase --bin ./tan -o tan.tc --fxn _Z3tandPm --max_testcases 1024

clean:
	rm -rf tan tan.o bins tan.tc result.s
