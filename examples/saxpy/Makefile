all: saxpy bins saxpy.tc

clean:
	rm -rf saxpy bins saxpy.tc result.s

saxpy: main.cc
	g++ -std=c++11 -O3 main.cc -o saxpy

bins: saxpy
	stoke extract -i ./saxpy -o bins

saxpy.tc: saxpy
	stoke testcase --bin ./saxpy -o saxpy.tc --fxn _Z5saxpyiPiS_i.constprop.1 --max_testcases 1024
