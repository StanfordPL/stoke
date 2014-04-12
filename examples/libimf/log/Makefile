all: log bins log.tc

clean:
	rm -rf log log.o bins log.tc result.s

log: main.cc log.o
	g++ -O3 main.cc -o log log.o

log.o: log.s
	g++ -c log.s

bins: log
	stoke extract -i ./log -o bins

log.tc: log
	stoke testcase --bin ./log -o log.tc --fxn _Z3logdPm --max_testcases 1024
