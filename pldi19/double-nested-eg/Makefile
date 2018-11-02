
include variables

all:
	gcc -O0 -std=c99 source.c -o opt0bin
	gcc -O1 -std=c99 source.c -c -o opt1.o
	gcc -O1 -std=c99 source.c -o opt1bin
	gcc -O3 -std=c99 source.c -c -o opt3.o
	stoke extract -i opt0bin -o opt0
	stoke extract -i opt1.o -o opt1
	stoke extract -i opt3.o -o opt3
	stoke debug cfg --target $(TARGET) -o $(NAME).pdf
	stoke debug cfg --target $(REWRITE) -o $(NAME)_vec.pdf

tcgen:
	stoke testcase --target $(TARGET) --max_attempts 64 --register_max "rdi=8" >tcs/testcases.combo

clean:
	rm -rf opt1* opt3* *.pdf sage* stoke_sage* state* *.tmp
