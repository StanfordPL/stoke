
OPTS=-std=c99

all:
	gcc -O2 $(OPTS) source.c -c -o opt2.o
	stoke extract -i opt2.o -o opt2
	stoke debug cfg --target opt2/sum_all.s -o sum.pdf
	stoke debug cfg --target opt2/sum_all_unroll.s -o sum_unroll.pdf

testcases:
	stoke_tcgen --max_tcs 400 --target opt2/sum_all_unroll.s --bound 5 --output testcases

