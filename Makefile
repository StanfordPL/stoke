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

##### CONSTANT DEFINITIONS

CXX=ccache g++ -std=c++11 -Werror -Wextra -Wfatal-errors

TARGET=-mavx -mavx2 -mbmi -mbmi2 -mpopcnt

INC=\
	-I./ \
	-I./src/ext/cpputil/ \
	-I./src/ext/x64asm \
  -I./src/ext/gtest-1.7.0/include \
	-I./src/ext/z3/include

LIB=\
	src/ext/x64asm/lib/libx64asm.a\
  -pthread -lmongoclient -lboost_thread -lboost_system\
  -lboost_regex -lboost_filesystem -lssl -lcrypto \
	-L src/ext/z3/bin -lz3

OBJ=\
	src/args/distance.o \
	src/args/flag_set.o \
	src/args/init.o \
	src/args/move.o \
	src/args/reduction.o \
	src/args/reg_set.o \
	src/args/performance_term.o \
	src/args/strategy.o \
	src/args/timeout.o \
	\
	src/cfg/cfg.o \
	src/cfg/cfg_transforms.o \
	src/cfg/dot_writer.o \
	\
	src/cost/cost_function.o \
	\
	src/disassembler/disassembler.o \
	\
	src/sandbox/cpu_io.o \
	src/sandbox/sandbox.o \
	src/sandbox/stack_snapshot.o \
	\
	src/search/search.o \
	src/search/transforms.o \
	\
	src/state/cpu_state.o \
	src/state/cpu_states.o \
	src/state/memory.o \
	src/state/regs.o \
	src/state/rflags.o \
	\
	src/stategen/stategen.o \
	\
	src/tunit/tunit.o \
	\
	src/validator/aliasing.o \
	src/validator/c_interface.o \
	src/validator/extras.o \
	src/validator/handlers.o \
	src/validator/switch.o  \
	src/validator/SymState.o \
	src/validator/validator.o \
	\
	src/verifier/verifier.o

BIN=\
	bin/stoke_extract \
	bin/stoke_replace \
	bin/stoke_search \
	bin/stoke_testcase \
	\
	bin/stoke_debug_cfg \
	bin/stoke_debug_cost \
	bin/stoke_debug_sandbox \
	bin/stoke_debug_search \
	bin/stoke_debug_state \
	bin/stoke_debug_verify \
	\
	bin/stoke_benchmark_cfg \
	bin/stoke_benchmark_cost \
	bin/stoke_benchmark_sandbox \
	bin/stoke_benchmark_search \
	bin/stoke_benchmark_state \
	bin/stoke_benchmark_verify 

##### TOP LEVEL TARGETS (release is default)

all: release tags

debug:
	make -C . external EXT_OPT="debug"
	make -C . $(BIN) OPT="-g" 
release:
	make -C . external EXT_OPT="release"
	make -C . $(BIN) OPT="-DNDEBUG -O3" 
profile:
	make -C . external EXT_OPT="profile"
	make -C . $(BIN) OPT="-DNDEBUG -O3 -pg" 

test: bin/stoke_test tags
	LD_LIBRARY_PATH=src/ext/z3/bin bin/stoke_test 

tags:
	ctags -R src

##### EXTERNAL TARGETS

external: src/ext/cpputil src/ext/x64asm src/ext/gtest-1.7.0/libgtest.a
	make -C src/ext/pin-2.13-62732-gcc.4.4.7-linux/source/tools/stoke
	make -C src/ext/x64asm $(EXT_OPT) 

src/ext/cpputil:
	git clone -b develop git://github.com/eschkufz/cpputil.git src/ext/cpputil

src/ext/x64asm:
	git clone -b develop git://github.com/eschkufz/x64asm.git src/ext/x64asm

src/ext/gtest-1.7.0/libgtest.a:
	cmake src/ext/gtest-1.7.0/CMakeLists.txt
	make -C src/ext/gtest-1.7.0

##### BUILD TARGETS

src/args/%.o: src/args/%.cc src/args/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/cfg/%.o: src/cfg/%.cc src/cfg/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/cost/%.o: src/cost/%.cc src/cost/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/disassembler/%.o: src/disassembler/%.cc src/disassembler/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/sandbox/%.o: src/sandbox/%.cc src/sandbox/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/search/%.o: src/search/%.cc src/search/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/state/%.o: src/state/%.cc src/state/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/stategen/%.o: src/stategen/%.cc src/stategen/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/tunit/%.o: src/tunit/%.cc src/tunit/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/validator/handlers.o: src/validator/handlers.cc src/validator/handlers.o
	$(CXX) $(TARGET) -Wno-maybe-uninitialized -O0 $(OPT) -O0 $(INC) -c $< -o $@
src/validator/%.o: src/validator/%.cc src/validator/%.h
	$(CXX) $(TARGET) -Wno-maybe-uninitialized $(OPT) $(INC) -c $< -o $@
src/verifier/%.o: src/verifier/%.cc src/verifier/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@

##### BINARY TARGETS

bin/%: tools/%.cc $(OBJ) 
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(OBJ) $(LIB)  

##### TESTING

TEST_OBJ=\
         tests/fixture.o \
         \
         src/ext/gtest-1.7.0/libgtest.a \
         src/ext/gtest-1.7.0/libgtest_main.a \


TEST_LIBS=-ljsoncpp

TEST_BIN=bin/stoke_test

.FORCE:

tests/validator/handlers.h: .FORCE
	tests/validator/generate_handlers_h.sh tests/validator	

tests/%.o: tests/%.cc tests/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@ $(TEST_LIBS)

bin/stoke_test: tools/stoke_test.cc $(OBJ) $(TEST_OBJ) $(wildcard tests/*.h) $(wildcard tests/*/*.h)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(OBJ) $(TEST_OBJ) $(LIB) $(TEST_LIBS)

##### VALIDATOR AUTOGENERATED FILES

src/validator/autogen: src/validator/autogen.hs
	ghc src/validator/autogen.hs -o src/validator/autogen

src/validator/switch.h: src/validator/autogen
	cd src/validator; ./autogen; cd ..;

src/validator/switch.cc: src/validator/autogen
	cd src/validator; ./autogen; cd ..;

src/validator/validator.switch: src/validator/autogen
	cd src/validator; ./autogen; cd ..;

validator_clean:
	rm -f src/validator/validator.switch src/validator/switch.h src/validator/switch.cc src/validator/autogen src/validator/autogen.hi src/validator/autogen.o tests/validator/handlers.h



##### MISC

.SECONDARY: $(OBJ)

##### CLEAN TARGETS

clean: validator_clean
	rm -rf $(OBJ) $(BIN) $(TEST_OBJ) $(TEST_BIN) tags bin/stoke_*

dist_clean: clean
	rm -rf src/ext/cpputil
	rm -rf src/ext/x64asm
	make -C src/ext/gtest-1.7.0 clean
	make -C src/ext/pin-2.13-62732-gcc.4.4.7-linux/source/tools/stoke clean

