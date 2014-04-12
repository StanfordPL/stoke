orig:
	g++ -std=c++11 -O3 -c popcnt.cc
	g++ -std=c++11 -O3 main.cc popcnt.o

opt:
	g++ -std=c++11 -c result.s 
	g++ -std=c++11 -O3 main.cc result.o

time:
	time ./a.out 100000000

extract:
	stoke extract --config extract.conf

testcase:
	stoke testcase --config testcase.conf

search:
	stoke search --config search.conf

clean:
	rm -rf bins ./a.out *.o *.tc *.s
