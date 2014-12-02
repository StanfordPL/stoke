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

INC_FOLDERS=\
						./ \
						src/ext/cpputil/ \
						src/ext/x64asm \
						src/ext/gtest-1.7.0/include \
						src/ext/z3/include

INC=$(addprefix -I./, $(INC_FOLDERS))

LIB=\
	src/ext/x64asm/lib/libx64asm.a\
	-pthread\
	-L src/ext/z3/bin -lz3

SRC_OBJ=\
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
	src/solver/z3solver.o \
	\
	src/state/cpu_state.o \
	src/state/cpu_states.o \
	src/state/memory.o \
	src/state/regs.o \
	src/state/rflags.o \
	\
	src/stategen/stategen.o \
	\
	src/symstate/bitvector.o \
	src/symstate/bool.o \
	src/symstate/function.o \
	src/symstate/state.o \
	\
	src/tunit/tunit.o \
	\
	src/validator/handler.o \
	src/validator/validator.o \
	\
	src/validator/legacy/c_interface.o \
	src/validator/legacy/legacy.o \
	src/validator/legacy/legacy_handlers.o \
	src/validator/legacy/switch.o \
	src/validator/legacy/sym_state.o \
	src/validator/legacy/validator.o \
	\
	src/validator/handlers/combo_handler.o \
	src/validator/handlers/lea_handler.o   \
	src/validator/handlers/move_handler.o  \
	src/validator/handlers/shift_handler.o \
	\
	src/verifier/verifier.o

TOOL_ARGS_OBJ=\
	tools/args/benchmark.o \
	tools/args/correctness.o \
	tools/args/cost.o \
	tools/args/move.o \
	tools/args/performance.o \
	tools/args/rewrite.o \
	tools/args/sandbox.o \
	tools/args/search.o \
	tools/args/search_state.o \
	tools/args/seed.o \
	tools/args/target.o \
	tools/args/testcases.o \
	tools/args/transforms.o \
	tools/args/verifier.o

TOOL_IO_OBJ=\
	tools/io/distance.o \
	tools/io/opc_set.o \
	tools/io/init.o \
	tools/io/move.o \
	tools/io/reduction.o \
	tools/io/performance_term.o \
	tools/io/strategy.o \
	tools/io/timeout.o

TOOL_OBJ=$(TOOL_ARGS_OBJ) $(TOOL_IO_OBJ)

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

# used to force a target to rebuild
.PHONY: .FORCE


##### TOP LEVEL TARGETS (release is default)

all: release tags hooks

debug:
	$(MAKE) -C . external EXT_OPT="debug"
	$(MAKE) -C . -j8 $(BIN) OPT="-g" 
release:
	$(MAKE) -C . external EXT_OPT="release"
	$(MAKE) -C . -j8 $(BIN) OPT="-DNDEBUG -O3" 
profile:
	$(MAKE) -C . external EXT_OPT="profile"
	$(MAKE) -C . -j8 $(BIN) OPT="-DNDEBUG -O3 -pg" 

test: bin/stoke_test tags
	LD_LIBRARY_PATH=src/ext/z3/bin bin/stoke_test 

tags:
	ctags -R src

##### EXTERNAL TARGETS

external: src/ext/astyle src/ext/cpputil src/ext/x64asm src/ext/gtest-1.7.0/libgtest.a
	$(MAKE) -C src/ext/x64asm $(EXT_OPT) 
	$(MAKE) -C src/ext/pin-2.13-62732-gcc.4.4.7-linux/source/tools/stoke

src/ext/astyle:
	svn co https://svn.code.sf.net/p/astyle/code/trunk/AStyle src/ext/astyle
	$(MAKE) -C src/ext/astyle/build/gcc -j8

src/ext/cpputil:
	git clone -b develop git://github.com/eschkufz/cpputil.git src/ext/cpputil

src/ext/x64asm:
	git clone -b develop git://github.com/eschkufz/x64asm.git src/ext/x64asm

src/ext/gtest-1.7.0/libgtest.a:
	cmake src/ext/gtest-1.7.0/CMakeLists.txt
	$(MAKE) -C src/ext/gtest-1.7.0 -j8

##### VALIDATOR MISCELANEOUS

VALIDATOR_AUTOGEN=src/validator/handlers.h \
								 	src/validator/legacy/validator.switch \
									src/validator/legacy/switch.h \
									src/validator/legacy/switch.cc \
									src/validator/legacy/supported.switch 

VALIDATOR_AUTOGEN_TEST=src/validator/legacy/switch.cc

VALIDATOR_CLEAN=src/validator/legacy/*.switch\
						   	src/validator/legacy/switch.* \
								src/validator/legacy/autogen \
								src/validator/legacy/autogen.hi \
								src/validator/legacy/autogen.o

src/validator/legacy/autogen: src/validator/legacy/autogen.hs
	ghc src/validator/legacy/autogen.hs -o src/validator/legacy/autogen

src/validator/legacy/%.switch: src/validator/legacy/autogen
	cd src/validator/legacy; ./autogen; cd ../../..;

src/validator/legacy/switch.%: src/validator/legacy/autogen
	cd src/validator/legacy; ./autogen; cd ../../..;

src/validator/handlers.h: .FORCE
	src/validator/generate_handlers_h.sh src/validator

##### BUILD TARGETS

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
src/solver/%.o: src/solver/%.cc src/solver/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/state/%.o: src/state/%.cc src/state/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/stategen/%.o: src/stategen/%.cc src/stategen/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/symstate/%.o: src/symstate/%.cc src/symstate/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/tunit/%.o: src/tunit/%.cc src/tunit/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/validator/legacy/legacy_handlers.o: src/validator/legacy/legacy_handlers.cc src/validator/legacy/*.h $(VALIDATOR_AUTOGEN)
	$(CXX) $(TARGET) $(OPT) -O0 $(INC) -c $< -o $@
src/validator/legacy/switch.o: src/validator/legacy/switch.cc src/validator/legacy/switch.h 
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/validator/legacy/%.o: src/validator/legacy/%.cc src/validator/legacy/%.h 
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/validator/handlers/%.o: src/validator/handlers/%.cc src/validator/handlers/%.h src/validator/handlers.h src/validator/*.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/validator/%.o: src/validator/%.cc src/validator/%.h src/validator/handlers.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/verifier/%.o: src/verifier/%.cc src/verifier/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@

tools/args/%.o: tools/args/%.cc tools/args/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
tools/io/%.o: tools/io/%.cc tools/io/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@

##### BINARY TARGETS

bin/stoke_benchmark_cfg: tools/apps/stoke_benchmark_cfg.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) tools/args/benchmark.o tools/args/target.o \
	$(TOOL_IO_OBJ) $(LIB)  
bin/stoke_benchmark_cost: tools/apps/stoke_benchmark_cost.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) tools/args/benchmark.o tools/args/correctness.o \
	tools/args/cost.o tools/args/performance.o tools/args/rewrite.o tools/args/sandbox.o \
	tools/args/seed.o tools/args/target.o tools/args/testcases.o $(TOOL_IO_OBJ) $(LIB)  
bin/stoke_benchmark_sandbox: tools/apps/stoke_benchmark_sandbox.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) tools/args/benchmark.o tools/args/sandbox.o \
	tools/args/seed.o tools/args/target.o tools/args/testcases.o $(TOOL_IO_OBJ) $(LIB)  
bin/stoke_benchmark_search: tools/apps/stoke_benchmark_search.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) tools/args/benchmark.o tools/args/move.o \
	tools/args/seed.o tools/args/target.o tools/args/transforms.o $(TOOL_IO_OBJ) $(LIB)  
bin/stoke_benchmark_state: tools/apps/stoke_benchmark_state.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) tools/args/benchmark.o tools/args/seed.o \
	tools/args/testcases.o $(TOOL_IO_OBJ) $(LIB)  
bin/stoke_benchmark_verify: tools/apps/stoke_benchmark_verify.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) tools/args/benchmark.o \
	tools/args/correctness.o tools/args/cost.o tools/args/performance.o tools/args/rewrite.o tools/args/sandbox.o \
	tools/args/seed.o tools/args/target.o tools/args/testcases.o tools/args/verifier.o \
	$(TOOL_IO_OBJ) $(LIB)  

bin/stoke_debug_cfg: tools/apps/stoke_debug_cfg.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) tools/args/target.o $(TOOL_IO_OBJ) $(LIB)  
bin/stoke_debug_cost: tools/apps/stoke_debug_cost.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) tools/args/correctness.o tools/args/cost.o \
	tools/args/performance.o tools/args/rewrite.o tools/args/sandbox.o tools/args/seed.o \
	tools/args/target.o tools/args/testcases.o $(TOOL_IO_OBJ) $(LIB)  
bin/stoke_debug_sandbox: tools/apps/stoke_debug_sandbox.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) tools/args/sandbox.o tools/args/seed.o \
	tools/args/target.o tools/args/testcases.o $(TOOL_IO_OBJ) $(LIB)  
bin/stoke_debug_search: tools/apps/stoke_debug_search.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) tools/args/move.o tools/args/seed.o \
	tools/args/target.o tools/args/transforms.o $(TOOL_IO_OBJ) $(LIB)  
bin/stoke_debug_state: tools/apps/stoke_debug_state.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) tools/args/seed.o tools/args/testcases.o \
	$(TOOL_IO_OBJ) $(LIB)  
bin/stoke_debug_verify: tools/apps/stoke_debug_verify.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) tools/args/correctness.o tools/args/cost.o \
	tools/args/performance.o tools/args/rewrite.o tools/args/sandbox.o tools/args/seed.o \
	tools/args/target.o tools/args/testcases.o tools/args/verifier.o $(TOOL_IO_OBJ) $(LIB)  

bin/stoke_extract: tools/apps/stoke_extract.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) $(TOOL_IO_OBJ) $(LIB)  
bin/stoke_replace: tools/apps/stoke_replace.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) tools/args/rewrite.o $(TOOL_IO_OBJ) $(LIB)  
bin/stoke_search: tools/apps/stoke_search.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) tools/args/correctness.o tools/args/cost.o \
	tools/args/performance.o tools/args/search.o tools/args/search_state.o tools/args/seed.o \
	tools/args/sandbox.o tools/args/target.o tools/args/testcases.o tools/args/transforms.o \
	tools/args/verifier.o $(TOOL_IO_OBJ) $(LIB)  
bin/stoke_testcase: tools/apps/stoke_testcase.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) tools/args/sandbox.o tools/args/target.o \
	$(TOOL_IO_OBJ) $(LIB)  

##### TESTING

TEST_OBJ=\
         tests/fixture.o \
         \
         src/ext/gtest-1.7.0/libgtest.a \
         src/ext/gtest-1.7.0/libgtest_main.a

TEST_LIBS=-ljsoncpp

TEST_BIN=bin/stoke_test

tests/validator/handlers.h: .FORCE
	tests/validator/generate_handlers_h.sh tests/validator	

tests/%.o: tests/%.cc tests/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@ $(TEST_LIBS)

bin/stoke_test: tools/apps/stoke_test.cc $(SRC_OBJ) $(TEST_OBJ) $(wildcard tests/*.h) $(wildcard tests/*/*.h) tests/validator/handlers.h
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) $(TEST_OBJ) $(LIB) $(TEST_LIBS)


##### MISC

.SECONDARY: $(SRC_OBJ) $(TOOL_OBJ)

zsh_completion: bin/_stoke

bin/_stoke: $(BIN) tools/scripts/zsh_completion_generator.py
	tools/scripts/zsh_completion_generator.py

format: src/ext/astyle
	chmod +x tools/scripts/pre-commit.sh
	tools/scripts/pre-commit.sh

# builds a symlink to the post-commit hooks
hooks: .git/hooks/pre-commit

.git/hooks/pre-commit: tools/scripts/pre-commit.sh src/ext/astyle
	chmod +x tools/scripts/pre-commit.sh
	ln -sf $(shell pwd)/tools/scripts/pre-commit.sh .git/hooks/pre-commit


##### CLEAN TARGETS

clean: 
	rm -rf $(SRC_OBJ) $(TOOL_OBJ) $(TEST_OBJ) $(BIN) $(TEST_BIN) tags bin/stoke_* bin/_stoke
	rm -rf $(VALIDATOR_AUTOGEN) $(VALIDATOR_CLEAN)

dist_clean: clean
	rm -rf src/ext/astyle
	rm -rf src/ext/cpputil
	rm -rf src/ext/x64asm
	- $(MAKE) -C src/ext/gtest-1.7.0 clean
	- $(MAKE) -C src/ext/pin-2.13-62732-gcc.4.4.7-linux/source/tools/stoke clean
