all: p25_alt bins p25_alt.tc

clean:
	rm -rf p25_alt bins p25_alt.tc result.s

p25_alt: main.cc
	g++ -std=c++11 -O0 main.cc -o p25_alt

bins: p25_alt
	stoke extract -i ./p25_alt -o bins

p25_alt.tc: p25_alt
	stoke testcase --bin ./p25_alt -o p25_alt.tc --fxn _Z7p25_altii --max_testcases 1024
