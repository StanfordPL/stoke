
PWD=$(shell pwd)

all: glibc-2.23

glibc-%:
	mkdir $@
	cd $@ && ../../sources/$@/configure --prefix=$(PWD)/$@ --disable-werror --disable-rt
	cd $@ && make && make check && make check

clean:
	rm -rf glibc-*
	rm -f config.log
