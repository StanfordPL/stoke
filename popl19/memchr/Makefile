
all:
	gcc -O1 -std=c99 -I../../glibc -I../../glibc/include  source.c -c -o opt1.o
	gcc -O2 -std=c99 -I../../glibc -I../../glibc/include  source.c -c -o opt2.o
	gcc -O3 -std=c99 -I../../glibc -I../../glibc/include  source.c -c -o opt3.o
	stoke extract -i opt1.o -o opt1
	stoke extract -i opt2.o -o opt2
	stoke extract -i opt3.o -o opt3
