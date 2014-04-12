all: p24_alt bins p24_alt.tc

clean:
	rm -rf p24_alt bins p24_alt.tc result.s

p24_alt: main.cc
	g++ -std=c++11 -O0 main.cc -o p24_alt

bins: p24_alt
	stoke extract -i ./p24_alt -o bins

p24_alt.tc: p24_alt
	stoke testcase --bin ./p24_alt -o p24_alt.tc --fxn _Z7p24_altj --max_testcases 1024
