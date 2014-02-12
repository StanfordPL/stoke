PIN_INC= \
	-I../../../../.. \
	-I../../../../../src/x64asm \
	-I../../../source/include/pin \
	-I../../../source/include/pin/gen \
	-I../../../extras/components/include \
	-I../../../extras/xed2-intel64/include \
	-I../../../source/tools/InstLib 
	
PIN_DEF= \
	-DBIGARRAY_MULTIPLIER=1 \
	-DUSING_XED \
	-DTARGET_IA32E \
	-DHOST_IA32E \
	-DTARGET_LINUX  

PIN_CC=g++ -std=c++11

PIN_OPT=-O3

PIN_WARN= \
	-Wall \
	-Werror \
	-Wno-unknown-pragmas 

PIN_OBJ=\
 	-L../../../intel64/lib \
	-L../../../intel64/lib-ext \
	-L../../../intel64/runtime/glibc \
	-L../../../extras/xed2-intel64/lib \
	obj-intel64/testcase.o \
	../../../../../src/state/cpu_state.o \
	../../../../../src/state/memory.o \
	../../../../../src/state/bit_array.o \
	../../../../../src/rand/random.o \
	../../../../../src/x64asm/src/constants.o \
	-lpin -lxed -ldwarf -lelf -ldl

all:
	mkdir -p obj-intel64 && \
	$(PIN_CC) $(PIN_WARN) $(PIN_OPT) $(PIN_DEF) $(PIN_INC) -c testcase.cpp -o obj-intel64/testcase.o && \
	$(PIN_CC) -shared -Wl,--hash-style=sysv -Wl,-Bsymbolic -Wl,--version-script=../../../source/include/pin/pintool.ver -o obj-intel64/testcase.so $(PIN_OBJ)
	
clean:
	rm -rf obj-intel64
