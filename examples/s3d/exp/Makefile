all: exp bins exp.tc

clean:
	rm -rf exp exp.o bins exp.tc result.s

exp: main.cc exp.o
	g++ -O3 main.cc -o exp exp.o

exp.o: exp.s
	g++ -c exp.s

bins: exp
	stoke extract -i ./exp -o bins

exp.tc: exp
	stoke testcase --bin ./exp -o exp.tc --fxn _Z3expdPm --max_testcases 1024
