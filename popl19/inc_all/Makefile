
all:
	gcc -O1 -std=c99 source.c -c -o opt1.o
	gcc -O1 -std=c99 source.c -o opt1bin
	gcc -O3 -std=c99 source.c -c -o opt3.o
	gcc -O3 -std=c99 source.c -o opt3bin
	stoke extract -i opt1bin -o opt1
	stoke extract -i opt3bin -o opt3
	stoke debug cfg --target opt1/inc_all.s -o inc_all_O1.pdf
	stoke debug cfg --target opt3/inc_all.s -o inc_all_O3.pdf

tests:
	- rm -f testcases*
	stoke_tcgen --def_in "{ %rdi %rsi }" --live_out "{  }" --target opt1/inc_all.s --bound 5 --mutants 5 --max_jumps 60 --output testcases.1
	stoke_tcgen --def_in "{ %rdi %rsi }" --live_out "{  }" --target opt3/inc_all.s --bound 5 --mutants 3 --max_jumps 60 --output testcases.2
	cat testcases.1 testcases.2 > testcases

clean:
	rm -rf opt1* opt3* *.pdf sage* stoke_sage* state* *.tmp
