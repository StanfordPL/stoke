
all:
	gcc -O1 -std=c99 source.c -c -o opt1.o
	gcc -O1 -std=c99 source.c -o opt1bin
	gcc -O3 -std=c99 source.c -c -o opt3.o
	stoke extract -i opt1.o -o opt1
	stoke extract -i opt3.o -o opt3
	stoke debug cfg --target opt1/simple_vec.s -o simple_vec.pdf
	stoke debug cfg --target opt1/simple.s -o simple.pdf

clean:
	rm -rf *.pdf state*.txt opt1 opt2 opt3 opt1bin *sage* *.o test*.tmp 
