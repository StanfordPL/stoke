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
	-I./src/ext/x64asm

LIB=\
	src/ext/x64asm/lib/libx64asm.a\
  -pthread -lmongoclient -lboost_thread -lboost_system\
  -lboost_regex -lboost_filesystem -lssl -lcrypto

GTEST_LIB=\
  src/ext/gtest/libgtest.a \
  src/ext/gtest/libgtest_main.a

OBJ=\
	src/args/distance.o \
	src/args/flag_set.o \
	src/args/init.o \
	src/args/move.o \
	src/args/reduction.o \
	src/args/reg_set.o \
	src/args/performance_term.o \
	src/args/strategy.o \
	src/args/testcases.o \
	src/args/timeout.o \
	src/args/tunit.o \
	\
	src/cfg/cfg.o \
	src/cfg/cfg_transforms.o \
	src/cfg/dot_writer.o \
	\
	src/cost/cost_function.o \
	\
	src/sandbox/cpu_io.o \
	src/sandbox/sandbox.o \
	src/sandbox/stack_snapshot.o \
	\
	src/search/search.o \
	src/search/transforms.o \
	\
	src/state/memory.o \
	src/state/state_reader.o \
	src/state/state_writer.o \
	\
	src/verifier/verifier.o \
  \
  src/database/normalizer.o \
  src/database/database.o

BIN=\
	bin/stoke_extract \
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
	bin/stoke_benchmark_verify \
  \
  bin/stoke_database \
	\
	bin/stoke_test

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

test: 
	bin/stoke_test 

tags:
	ctags -R src

##### EXTERNAL TARGETS

external: src/ext/cpputil src/ext/x64asm src/ext/gtest/libgtest.a
	make -C src/ext/pin-2.13-62732-gcc.4.4.7-linux/source/tools/stoke
	make -C src/ext/x64asm $(EXT_OPT) 

src/ext/cpputil:
	git clone -b develop git://github.com/eschkufz/cpputil.git src/ext/cpputil

src/ext/x64asm:
	git clone -b berkeley git://github.com/eschkufz/x64asm.git src/ext/x64asm

src/ext/gtest/libgtest.a:
	cmake src/ext/gtest/CMakeLists.txt
	make -C src/ext/gtest

##### BUILD TARGETS

src/args/%.o: src/args/%.cc src/args/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/cfg/%.o: src/cfg/%.cc src/cfg/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/cost/%.o: src/cost/%.cc src/cost/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/sandbox/%.o: src/sandbox/%.cc src/sandbox/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/search/%.o: src/search/%.cc src/search/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/state/%.o: src/state/%.cc src/state/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/verifier/%.o: src/verifier/%.cc src/verifier/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/database/%.o: src/database/%.cc src/database/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@



##### BINARY TARGETS

bin/%: tools/%.cc $(OBJ) 
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(OBJ) $(LIB)  

bin/stoke_test: tools/stoke_test.cc $(OBJ) tests/
	$(CXX) -pthread $(TARGET) $(OPT) $(INC) $< -o $@ $(OBJ) $(LIB) $(GTEST_LIB)

##### MISC

.SECONDARY: $(OBJ)

##### CLEAN TARGETS

clean:
	make -C src/ext/pin-2.13-62732-gcc.4.4.7-linux/source/tools/stoke clean
	make -C src/ext/gtest clean
	rm -rf $(OBJ) $(BIN)

dist_clean: clean
	rm -rf src/ext/cpputil
	rm -rf src/ext/x64asm
