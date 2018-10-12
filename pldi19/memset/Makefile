
all:
	gcc -O1 -std=c99 -I../../glibc -I../../glibc/include  source.c -c -o opt1.o
	gcc -O2 -std=c99 -I../../glibc -I../../glibc/include  source.c -c -o opt2.o
	gcc -O3 -std=c99 -I../../glibc -I../../glibc/include  source.c -c -o opt3.o
	stoke extract -i opt1.o -o opt1
	stoke extract -i opt2.o -o opt2
	stoke extract -i opt3.o -o opt3
	stoke debug cfg --target opt1/libc_memset.s -o libc_memset.pdf
	stoke debug cfg --target opt1/my_memset.s -o my_memset.pdf

tests:
	stoke_tcgen --target opt1/libc_memset.s --bound 4 --def_in "{ %rdi %rsi %rdx }" --live_out "{ }" --output tcs/gen --mutants 2
