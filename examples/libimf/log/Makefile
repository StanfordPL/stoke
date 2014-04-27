all: 
	g++ -c log.s
	g++ -O3 main.cc -o log log.o
	stoke extract -i ./log -o bins
	stoke testcase --bin ./log -o log.tc --fxn _Z3logdPm --max_testcases 1024

clean:
	rm -rf log log.o bins log.tc result.s
