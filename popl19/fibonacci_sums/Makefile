
all:
	gcc -O1 -std=c99 source.c -c -o opt1.o
	gcc -O2 -std=c99 source.c -c -o opt2.o
	gcc -O3 -std=c99 source.c -c -o opt3.o
	gcc -std=c99 source.c -o bin
	stoke extract -i opt1.o -o opt1
	stoke extract -i opt2.o -o opt2
	stoke extract -i opt3.o -o opt3
	stoke debug cfg --target opt2/fib.s -o fib.pdf
	stoke debug cfg --target opt2/fib_unroll.s -o fib_unroll.pdf

tests:
	- rm -f testcases
	stoke_tcgen --def_in "{ %rdi %rsi }" --live_out "{ %rax }" --target opt1/fib_unroll.s --bound 5 --mutants 3 --max_jumps 16 --output testcases

clean:
	rm -rf opt1* opt2* bin opt3* *.pdf sage* stoke_sage* state* *.tmp
