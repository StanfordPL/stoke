
PWD=$(shell pwd)

all: glibc-2.23

glibc-%:
	mkdir $@
	cd $@ && ../../sources/$@/configure --prefix=$(PWD)/$@ --disable-werror
	cd $@ && make

clean:
	rm -rf glibc-*
	rm -f config.log
