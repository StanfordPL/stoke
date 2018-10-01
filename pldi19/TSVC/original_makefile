CC = gcc

flags = -std=c99 -O3 -fivopts -flax-vector-conversions -funsafe-math-optimizations -msse4.2 -Wall -Werror
vecflags = -ftree-vectorizer-verbose=1
novecflags = -fno-tree-vectorize
libs = -lm
noopt = -O0

all : runvec runnovec 

runnovec : tscnovec.o dummy.o
	$(CC) $(noopt) dummy.o tscnovec.o -o runnovec $(libs)

runvec : tscvec.o dummy.o
	$(CC) $(noopt) dummy.o tscvec.o -o runvec $(libs)

tscvec.o : tsc.c
	rm -f report.lst
	$(CC) $(flags) $(vecflags) -c -o tscvec.o tsc.c  2> reportgcc.lst

tscnovec.o : tsc.c
	$(CC) $(flags) $(novecflags) -c -o tscnovec.o tsc.c

tsc.s : tsc.c dummy.o
	$(CC) $(flags) dummy.o tsc.c -S 

dummy.o : dummy.c
	$(CC) -c dummy.c

clean :
	rm -f *.o runnovec runvec *.lst *.s
