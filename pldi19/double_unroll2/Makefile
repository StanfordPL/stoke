
all:
	gcc -O1 -std=c99 source.c -c -o opt1.o
	gcc -O1 -std=c99 source.c -o opt1bin
	gcc -O3 -std=c99 source.c -c -o opt3.o
	gcc -O3 -std=c99 source.c -o opt3bin
	stoke extract -i opt1bin -o opt1
	stoke extract -i opt3bin -o opt3
	stoke debug cfg --target opt1/double_all.s -o double_all_O1.pdf
	stoke debug cfg --target opt1/double_unroll2.s -o double_unroll2_O1.pdf
	stoke debug cfg --target opt3/double_all.s -o double_all_O3.pdf

tests:
	- rm -f testcases*
	stoke_tcgen --def_in "{ %rdi %rsi %rdx %rcx }" --live_out "{  }" --target opt1/double_all.s --bound 5 --mutants 5 --max_jumps 60 --output testcases.1
#	stoke_tcgen --def_in "{ %rdi %rsi %rdx %rcx }" --live_out "{  }" --target opt3/double_all.s --bound 5 --mutants 3 --max_jumps 60 --output testcases.2
	stoke_tcgen --def_in "{ %rdi %rsi %rdx %rcx }" --live_out "{  }" --target opt1/double_unroll2.s --bound 5 --mutants 3 --max_jumps 60 --output testcases.3
	cat testcases.1 testcases.3 > testcases

clean:
	rm -rf opt1* opt3* *.pdf sage* stoke_sage* state* *.tmp
