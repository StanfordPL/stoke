
all:
	gcc -O1 -std=c99 source.c -c -o opt1.o
	gcc -O1 -std=c99 source.c -o opt1bin
	gcc -O3 -std=c99 source.c -c -o opt3.o
	stoke extract -i opt1.o -o opt1
	stoke extract -i opt3.o -o opt3
	stoke debug cfg --target opt1/fib.s -o fib.pdf
	stoke debug cfg --target opt1/fib_unroll.s -o fib_unroll.pdf

testcases:
	- rm -f testcases
	stoke_tcgen --target opt1/fib_unroll.s --bound 5 --mutants 3 --max_jumps 16 --output testcases

clean:
	rm -rf opt1* opt3* *.pdf sage* stoke_sage* state* *.tmp
