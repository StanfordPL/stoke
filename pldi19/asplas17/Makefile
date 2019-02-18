
include variables

OPTS=-std=c99
all:
	gcc -O0 $(OPTS) source.c -o opt0bin
	gcc -O1 $(OPTS) source.c -o opt1bin
	gcc -O3 $(OPTS) source.c -o opt3bin
	stoke extract -i opt0bin -o opt0
	stoke extract -i opt1bin -o opt1
	stoke extract -i opt3bin -o opt3
	stoke debug cfg --target $(TARGET) -o $(NAME).pdf
	stoke debug cfg --target $(REWRITE) -o $(NAME)_opt.pdf

tcgen:
	stoke_tcgen --target $(TARGET) --bound 4 --def_in $(DEF_INS) --live_out $(LIVE_OUTS) --output tcs/tcgen1 --mutants 1
	stoke_tcgen --target $(TARGET) --bound 4 --def_in $(DEF_INS) --live_out $(LIVE_OUTS) --output tcs/tcgen2 --mutants 8
	cat tcs/tcgen1 tcs/tcgen2 > tcs/testcases.combo

clean:
	rm -rf opt1* opt3* *.pdf sage* stoke_sage* state* *.tmp
