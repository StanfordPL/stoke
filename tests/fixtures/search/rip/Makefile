all: build search replace

build:
	g++ -std=c++11 main.cc -O2 -fno-inline

extract:
	stoke extract -i ./a.out -o bins

search:
	stoke search --config search.conf

replace:
	stoke replace -i ./a.out --rewrite result.s

clean:
	rm -rf ./a.out bins result.s
