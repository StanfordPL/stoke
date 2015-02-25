# Copyright 2014 eric schkufza
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

PIN_INC=\
	-I../../../../../.. \
	-I../../../../../ext/cpputil \
	-I../../../../../ext/x64asm \
	-I../../../source/include/pin \
	-I../../../source/include/pin/gen \
	-I../../../extras/components/include \
	-I../../../extras/xed2-intel64/include \
	-I../../../source/tools/InstLib 
	
PIN_DEF=\
	-DBIGARRAY_MULTIPLIER=1 \
	-DUSING_XED \
	-DTARGET_IA32E \
	-DHOST_IA32E \
	-DTARGET_LINUX  

PIN_CC=g++ -std=c++11 -fPIC $(TARGET)

PIN_OPT=-O3

PIN_WARN=\
	-Wno-unknown-pragmas 

PIN_COMPILE=$(PIN_CC) $(PIN_WARN) $(PIN_OPT) $(PIN_DEF) $(PIN_INC)

PIN_LIB=\
 	-L../../../intel64/lib \
	-L../../../intel64/lib-ext \
	-L../../../intel64/runtime/glibc \
	-L../../../extras/xed2-intel64/lib \
	-L../../../../../ext/x64asm/lib/ \
	-lx64asm -lpin -lxed -ldwarf -lelf -ldl

PIN_OBJ=\
	obj-intel64/error_code.o \
	obj-intel64/cpu_state.o \
	obj-intel64/cpu_states.o \
	obj-intel64/memory.o \
	obj-intel64/regs.o \
	obj-intel64/rflags.o \
	obj-intel64/testcase.o

all: obj-intel64/testcase.so
	
clean:
	rm -rf obj-intel64

obj-intel64/error_code.o: ../../../../../state/error_code.cc
	mkdir -p obj-intel64 && $(PIN_COMPILE) -c $< -o $@
obj-intel64/cpu_state.o: ../../../../../state/cpu_state.cc
	mkdir -p obj-intel64 && $(PIN_COMPILE) -c $< -o $@
obj-intel64/cpu_states.o: ../../../../../state/cpu_states.cc
	mkdir -p obj-intel64 && $(PIN_COMPILE) -c $< -o $@
obj-intel64/memory.o: ../../../../../state/memory.cc
	mkdir -p obj-intel64 && $(PIN_COMPILE) -c $< -o $@
obj-intel64/regs.o: ../../../../../state/regs.cc
	mkdir -p obj-intel64 && $(PIN_COMPILE) -c $< -o $@
obj-intel64/rflags.o: ../../../../../state/rflags.cc
	mkdir -p obj-intel64 && $(PIN_COMPILE) -c $< -o $@
	
obj-intel64/testcase.o: testcase.cpp
	mkdir -p obj-intel64 && $(PIN_COMPILE) -c $< -o $@

obj-intel64/testcase.so: $(PIN_OBJ)
	mkdir -p obj-intel64 && $(PIN_CC) -shared -Wl,--hash-style=sysv -Wl,-Bsymbolic -Wl,--version-script=../../../source/include/pin/pintool.ver -o $@ $(PIN_OBJ) $(PIN_LIB)
