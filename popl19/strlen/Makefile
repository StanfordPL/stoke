
all:
	gcc -O1 -std=c99 source.c -c -o opt1.o
	gcc -O1 -std=c99 source.c -o opt1bin
	gcc -O3 -std=c99 source.c -c -o opt3.o
	stoke extract -i opt1.o -o opt1
	stoke extract -i opt3.o -o opt3
	stoke debug cfg --target opt1/func_1.s -o strlen_vec.pdf
	stoke debug cfg --target opt1/func_2.s -o strlen.pdf

tcgen:
	stoke_tcgen --target opt1/func_1.s --bound 4 --def_in "{ %rdi %rsi }" --live_out "{ %rax }" --output tcs/tcgen --mutants 0
	cat tcs/tcgen tcs/testcases.four > tcs/testcases.combo

clean:
	rm -rf opt1* opt3* *.pdf sage* stoke_sage* state* *.tmp
