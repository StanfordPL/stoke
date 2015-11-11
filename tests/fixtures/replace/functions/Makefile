
all: check

orig: test.c
	gcc -g -std=c99 -O1 test.c -o orig

extract: orig
	stoke extract -i orig -o extract

new: extract
	stoke replace -i orig --rewrite extract/run_fib.s -o new

check: new
	diff orig new

clean:
	rm -f orig new
	rm -rf extract
