
all:
	gcc -O1 -std=c99 source.c -c -o opt1.o
	gcc -O1 -std=c99 source.c -o opt1bin
	gcc -O3 -std=c99 source.c -c -o opt3.o
	stoke extract -i opt1.o -o opt1
	stoke extract -i opt3.o -o opt3
	stoke debug cfg --target opt1/strnlen.s -o strnlen.pdf
	stoke debug cfg --target opt1/strnlen_vec.s -o strnlen_vec.pdf
	stoke debug cfg --target opt1/my_strnlen_vec.s -o strnlen_vec.pdf

tcgen:
	stoke_tcgen --target opt1/strnlen.s --bound 4 --def_in "{ %rdi %rsi }" --live_out "{ %rax }" --output tcs/tcgen --mutants 0
	stoke_tcgen --target opt1/strnlen_vec.s --bound 4 --def_in "{ %rdi %rsi }" --live_out "{ %rax }" --output tcs/tcgen2 --mutants 0
	stoke_tcgen --target opt1/my_strnlen_vec.s --bound 4 --def_in "{ %rdi %rsi }" --live_out "{ %rax }" --output tcs/tcgen3 --mutants 0
	cat tcs/tcgen tcs/tcgen2 tcs/tcgen3 tcs/testcases.one > tcs/testcases.combo

clean:
	rm -rf opt1* opt3* *.pdf sage* stoke_sage* state* *.tmp
