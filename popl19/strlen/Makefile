
all:
	gcc -O1 -std=c99 source.c -c -o opt1.o
	gcc -O3 -std=c99 source.c -c -o opt3.o
	stoke extract -i opt1.o -o opt1
	stoke extract -i opt3.o -o opt3
