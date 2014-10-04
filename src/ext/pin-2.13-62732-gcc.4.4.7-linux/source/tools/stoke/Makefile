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

PIN_CC=g++ -std=c++11 -fPIC -mavx -mavx2 -mbmi -mbmi2 -mpopcnt

PIN_OPT=-O3

PIN_WARN=\
	-Wall \
	-Werror \
	-Wno-unknown-pragmas 

PIN_COMPILE=$(PIN_CC) $(PIN_WARN) $(PIN_OPT) $(PIN_DEF) $(PIN_INC)

PIN_OBJ=\
 	-L../../../intel64/lib \
	-L../../../intel64/lib-ext \
	-L../../../intel64/runtime/glibc \
	-L../../../extras/xed2-intel64/lib \
	obj-intel64/memory.o \
	obj-intel64/state_reader.o \
	obj-intel64/state_writer.o \
	obj-intel64/testcase.o \
	obj-intel64/testcases.o \
	-lpin -lxed -ldwarf -lelf -ldl

all:
	mkdir -p obj-intel64 && \
	$(PIN_COMPILE) -c testcase.cpp -o obj-intel64/testcase.o && \
	$(PIN_COMPILE) -c ../../../../../state/memory.cc -o obj-intel64/memory.o && \
	$(PIN_COMPILE) -c ../../../../../state/state_reader.cc -o obj-intel64/state_reader.o && \
	$(PIN_COMPILE) -c ../../../../../state/state_writer.cc -o obj-intel64/state_writer.o && \
	$(PIN_COMPILE) -c ../../../../../args/testcases.cc -o obj-intel64/testcases.o && \
	$(PIN_CC) -shared -Wl,--hash-style=sysv -Wl,-Bsymbolic -Wl,--version-script=../../../source/include/pin/pintool.ver -o obj-intel64/testcase.so $(PIN_OBJ)
	
clean:
	rm -rf obj-intel64
