
all: multiply.c
	gcc -O2 multiply.c -o multiply
	stoke extract -i multiply -o ext
	gcc -O1 multiply.c -o multiply1
	stoke extract -i multiply1 -o ext1
	gcc -O0 multiply.c -o multiply0
	stoke extract -i multiply0 -o ext0





clean:
	rm -rf ext
	rm -f multiply
