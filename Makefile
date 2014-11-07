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
  -I./src/ext/gtest-1.7.0/include

LIB=\
	src/ext/x64asm/lib/libx64asm.a\
  -pthread -lmongoclient -lboost_thread -lboost_system\
  -lboost_regex -lboost_filesystem -lssl -lcrypto

OBJ=\
	src/args/distance.o \
	src/args/flag_set.o \
	src/args/opc_set.o \
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
	src/sandbox/sandbox.o \
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
	bin/stoke_test 

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
         src/ext/gtest-1.7.0/libgtest_main.a

TEST_LIBS=-ljsoncpp

TEST_BIN=bin/stoke_test


tests/%.o: tests/%.cc tests/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@ $(TEST_LIBS)

bin/stoke_test: tools/stoke_test.cc $(OBJ) $(TEST_OBJ) $(wildcard tests/*.h) $(wildcard tests/*/*.h)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(OBJ) $(TEST_OBJ) $(LIB) $(TEST_LIBS)

##### MISC

.SECONDARY: $(OBJ)

zsh_completion: bin/_stoke

bin/_stoke: $(BIN) tools/zsh_completion_generator.py
	tools/zsh_completion_generator.py

##### CLEAN TARGETS

clean:
	rm -rf $(OBJ) $(BIN) $(TEST_OBJ) $(TEST_BIN) tags bin/stoke_* bin/_stoke

dist_clean: clean
	rm -rf src/ext/cpputil
	rm -rf src/ext/x64asm
	make -C src/ext/gtest-1.7.0 clean
	make -C src/ext/pin-2.13-62732-gcc.4.4.7-linux/source/tools/stoke clean
