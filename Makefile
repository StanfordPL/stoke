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

CXX=ccache g++ -std=c++11 -Werror -Wextra -Wfatal-errors -Wno-deprecated

INC_FOLDERS=\
						./ \
						src/ext/cpputil/ \
						src/ext/x64asm \
						src/ext/gtest-1.7.0/include \
						src/ext/z3/include \
						src/ext/cvc4-1.4-build/include

INC=$(addprefix -I./, $(INC_FOLDERS))

LIB=\
	src/ext/x64asm/lib/libx64asm.a\
	-pthread\
	-lcln \
	-L src/ext/cvc4-1.4-build/lib -lcvc4 \
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
	src/solver/cvc4solver.o \
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
	src/symstate/memory.o \
	src/symstate/memory_manager.o \
	src/symstate/state.o \
	\
	src/target/cpu_info.o	\
	\
	src/tunit/tunit.o \
	\
	src/validator/handler.o \
	src/validator/validator.o \
	\
	src/validator/handlers/add_handler.o \
	src/validator/handlers/combo_handler.o \
	src/validator/handlers/conditional_handler.o \
	src/validator/handlers/lea_handler.o   \
	src/validator/handlers/move_handler.o  \
	src/validator/handlers/packed_handler.o \
	src/validator/handlers/shift_handler.o \
	src/validator/handlers/simple_handler.o \
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

TOOL_NON_ARG_OBJ=\
	tools/io/distance.o \
	tools/io/opc_set.o \
	tools/io/init.o \
	tools/io/mem_set.o \
	tools/io/move.o \
	tools/io/reduction.o \
	tools/io/performance_term.o \
	tools/io/solver.o \
	tools/io/strategy.o \
	tools/io/timeout.o

TOOL_OBJ=$(TOOL_ARGS_OBJ) $(TOOL_NON_ARG_OBJ)

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


##### TOP LEVEL TARGETS 

all: release hooks

release: haswell_release
debug: haswell_debug 
profile: haswell_profile 
test: haswell_test

haswell: haswell_release
haswell_release:
	$(MAKE) -C . external EXT_OPT="release" EXT_TARGET="-march=core-avx2"
	$(MAKE) -C . -j8 $(BIN) OPT="-march=core-avx2 -O3 -DNDEBUG"
haswell_debug:
	$(MAKE) -C . external EXT_OPT="debug" EXT_TARGET="-march=core-avx2"
	$(MAKE) -C . -j8 $(BIN) OPT="-march=core-avx2 -g"
haswell_profile:
	$(MAKE) -C . external EXT_OPT="profile" EXT_TARGET="-march=core-avx2"
	$(MAKE) -C . -j8 $(BIN) OPT="-march=core-avx2 -O3 -DNDEBUG -pg"
haswell_test: haswell_debug
	$(MAKE) -C . -j8 bin/stoke_test OPT="-march=core-avx2 -O3 -DNDEBUG"
	LD_LIBRARY_PATH=src/ext/z3/bin:src/ext/cvc4-1.4-build/lib bin/stoke_test

sandybridge: sandybridge_release
sandybridge_release:
	$(MAKE) -C . external EXT_OPT="release" EXT_TARGET="-march=corei7-avx"
	$(MAKE) -C . -j8 $(BIN) OPT="-march=corei7-avx -O3 -DNDEBUG"
sandybridge_debug:
	$(MAKE) -C . external EXT_OPT="debug" EXT_TARGET="-march=corei7-avx"
	$(MAKE) -C . -j8 $(BIN) OPT="-march=corei7-avx -g"
sandybridge_profile:
	$(MAKE) -C . external EXT_OPT="profile" EXT_TARGET="-march=corei7-avx"
	$(MAKE) -C . -j8 $(BIN) OPT="-march=corei7-avx -O3 -DNDEBUG -pg"
sandybridge_test: sandybridge_debug
	$(MAKE) -C . -j8 bin/stoke_test OPT="-march=corei7-avx -O3 -DNDEBUG"
	LD_LIBRARY_PATH=src/ext/z3/bin:src/ext/cvc4-1.4-build/lib bin/stoke_test

nehalem: nehalem_release
nehalem_release:
	$(MAKE) -C . external EXT_OPT="release" EXT_TARGET="-march=corei7"
	$(MAKE) -C . -j8 $(BIN) OPT="-march=corei7 -O3 -DNDEBUG"
nehalem_debug:
	$(MAKE) -C . external EXT_OPT="debug" EXT_TARGET="-march=corei7"
	$(MAKE) -C . -j8 $(BIN) OPT="-march=corei7 -g"
nehalem_profile:
	$(MAKE) -C . external EXT_OPT="debug" EXT_TARGET="-march=corei7"
	$(MAKE) -C . -j8 $(BIN) OPT="-march=corei7 -O3 -DNDEBUG -pg"
nehalem_test: nehalem_debug
	$(MAKE) -C . -j8 bin/stoke_test OPT="-march=corei7 -O3 -DNDEBUG"
	LD_LIBRARY_PATH=src/ext/z3/bin:src/ext/cvc4-1.4-build/lib bin/stoke_test

##### CTAGS TARGETS

tags:
	ctags -R src

##### EXTERNAL TARGETS

external: src/ext/astyle src/ext/cpputil src/ext/x64asm src/ext/gtest-1.7.0/libgtest.a
	$(MAKE) -C src/ext/x64asm $(EXT_OPT) 
	$(MAKE) -C src/ext/pin-2.13-62732-gcc.4.4.7-linux/source/tools/stoke TARGET=$(EXT_TARGET)

src/ext/astyle:
	svn co https://svn.code.sf.net/p/astyle/code/trunk/AStyle src/ext/astyle
	$(MAKE) -C src/ext/astyle/build/gcc -j8

src/ext/cpputil:
	git clone -b release-2.0 git://github.com/eschkufz/cpputil.git src/ext/cpputil

src/ext/x64asm:
	git clone -b release-2.0 git://github.com/eschkufz/x64asm.git src/ext/x64asm

src/ext/gtest-1.7.0/libgtest.a:
	cmake src/ext/gtest-1.7.0/CMakeLists.txt
	$(MAKE) -C src/ext/gtest-1.7.0 -j8

##### VALIDATOR AUTOGEN

src/validator/handlers.h: .FORCE
	src/validator/generate_handlers_h.sh src/validator handlers-tmp; \
	cmp -s $@ src/validator/handlers-tmp || mv src/validator/handlers-tmp $@;
	rm -f src/validator/handlers-tmp

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
src/solver/cvc4solver.o: src/solver/cvc4solver.cc src/solver/cvc4solver.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/state/%.o: src/state/%.cc src/state/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/stategen/%.o: src/stategen/%.cc src/stategen/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/symstate/%.o: src/symstate/%.cc src/symstate/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/target/%.o: src/target/%.cc src/target/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@
src/tunit/%.o: src/tunit/%.cc src/tunit/%.h
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
	$(TOOL_NON_ARG_OBJ) $(LIB)  
bin/stoke_benchmark_cost: tools/apps/stoke_benchmark_cost.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) tools/args/benchmark.o tools/args/correctness.o \
	tools/args/cost.o tools/args/performance.o tools/args/rewrite.o tools/args/sandbox.o \
	tools/args/seed.o tools/args/target.o tools/args/testcases.o $(TOOL_NON_ARG_OBJ) $(LIB)  
bin/stoke_benchmark_sandbox: tools/apps/stoke_benchmark_sandbox.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) tools/args/benchmark.o tools/args/sandbox.o \
	tools/args/seed.o tools/args/target.o tools/args/testcases.o $(TOOL_NON_ARG_OBJ) $(LIB)  
bin/stoke_benchmark_search: tools/apps/stoke_benchmark_search.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) tools/args/benchmark.o tools/args/move.o \
	tools/args/seed.o tools/args/verifier.o tools/args/target.o tools/args/transforms.o $(TOOL_NON_ARG_OBJ) $(LIB)  
bin/stoke_benchmark_state: tools/apps/stoke_benchmark_state.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) tools/args/benchmark.o tools/args/seed.o \
	tools/args/testcases.o $(TOOL_NON_ARG_OBJ) $(LIB)  
bin/stoke_benchmark_verify: tools/apps/stoke_benchmark_verify.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) tools/args/benchmark.o \
	tools/args/correctness.o tools/args/cost.o tools/args/performance.o tools/args/rewrite.o tools/args/sandbox.o \
	tools/args/seed.o tools/args/target.o tools/args/testcases.o tools/args/verifier.o \
	$(TOOL_NON_ARG_OBJ) $(LIB)  

bin/stoke_debug_cfg: tools/apps/stoke_debug_cfg.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) tools/args/target.o $(TOOL_NON_ARG_OBJ) $(LIB)  
bin/stoke_debug_cost: tools/apps/stoke_debug_cost.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) tools/args/correctness.o tools/args/cost.o \
	tools/args/performance.o tools/args/rewrite.o tools/args/sandbox.o tools/args/seed.o \
	tools/args/target.o tools/args/testcases.o $(TOOL_NON_ARG_OBJ) $(LIB)  
bin/stoke_debug_sandbox: tools/apps/stoke_debug_sandbox.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) tools/args/sandbox.o tools/args/seed.o \
	tools/args/target.o tools/args/testcases.o $(TOOL_NON_ARG_OBJ) $(LIB)  
bin/stoke_debug_search: tools/apps/stoke_debug_search.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) tools/args/move.o tools/args/seed.o \
	tools/args/target.o tools/args/transforms.o $(TOOL_NON_ARG_OBJ) $(LIB)  
bin/stoke_debug_state: tools/apps/stoke_debug_state.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) tools/args/seed.o tools/args/testcases.o \
	$(TOOL_NON_ARG_OBJ) $(LIB)  
bin/stoke_debug_verify: tools/apps/stoke_debug_verify.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) tools/args/correctness.o tools/args/cost.o \
	tools/args/performance.o tools/args/rewrite.o tools/args/sandbox.o tools/args/seed.o \
	tools/args/target.o tools/args/testcases.o tools/args/verifier.o $(TOOL_NON_ARG_OBJ) $(LIB)  

bin/stoke_extract: tools/apps/stoke_extract.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) $(TOOL_NON_ARG_OBJ) $(LIB)  
bin/stoke_replace: tools/apps/stoke_replace.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) tools/args/rewrite.o $(TOOL_NON_ARG_OBJ) $(LIB)  
bin/stoke_search: tools/apps/stoke_search.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) tools/args/correctness.o tools/args/cost.o \
	tools/args/performance.o tools/args/search.o tools/args/search_state.o tools/args/seed.o \
	tools/args/sandbox.o tools/args/target.o tools/args/testcases.o tools/args/transforms.o \
	tools/args/verifier.o $(TOOL_NON_ARG_OBJ) $(LIB)  
bin/stoke_testcase: tools/apps/stoke_testcase.cc tools/gadgets/*.h $(SRC_OBJ) $(TOOL_OBJ)
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) tools/args/sandbox.o tools/args/target.o \
	$(TOOL_NON_ARG_OBJ) $(LIB)  

##### TESTING

TEST_OBJ=\
         tests/fixture.o \
         \
         src/ext/gtest-1.7.0/libgtest.a \
         src/ext/gtest-1.7.0/libgtest_main.a

TEST_LIBS=-ljsoncpp

TEST_BIN=bin/stoke_test

tests/validator/handlers.h: .FORCE
	tests/validator/generate_handlers_h.sh tests/validator handlers-tmp; \
	cmp -s $@ tests/validator/handlers-tmp || mv tests/validator/handlers-tmp $@;
	rm -f tests/validator/handlers-tmp

tests/%.o: tests/%.cc tests/%.h
	$(CXX) $(TARGET) $(OPT) $(INC) -c $< -o $@ $(TEST_LIBS)

bin/stoke_test: tools/apps/stoke_test.cc $(SRC_OBJ) $(TEST_OBJ) $(wildcard src/*/*.h) $(wildcard tests/*.h) $(wildcard tests/*/*.h) $(wildcard tests/*/*/*.h) tests/validator/handlers.h
	$(CXX) $(TARGET) $(OPT) $(INC) $< -o $@ $(SRC_OBJ) $(TEST_OBJ) $(LIB) $(TEST_LIBS)

## MISC

.SECONDARY: $(SRC_OBJ) $(TOOL_OBJ)

zsh_completion: bin/_stoke
bin/_stoke: $(BIN) tools/scripts/completion_generator.py
	tools/scripts/completion_generator.py

bash_completion: bin/stoke.bash
bin/stoke.bash: $(BIN) tools/scripts/completion_generator.py
	tools/scripts/completion_generator.py

format: src/ext/astyle
	chmod +x "git/pre-commit.d/astyle.sh"
	git/pre-commit.d/astyle.sh

# builds a symlink to the post-commit hooks
hooks: .git/hooks/pre-commit

.git/hooks/pre-commit: git/pre-commit.sh src/ext/astyle
	chmod +x "git/pre-commit.sh"
	ln -sf $(shell pwd)/git/pre-commit.sh .git/hooks/pre-commit

##### CLEAN TARGETS

clean: 
	rm -rf $(SRC_OBJ) $(TOOL_OBJ) $(TEST_OBJ) $(BIN) $(TEST_BIN) tags bin/stoke_* bin/_stoke bin/stoke.bash
	rm -rf $(VALIDATOR_AUTOGEN)

dist_clean: clean
	rm -rf src/ext/cpputil
	rm -rf src/ext/x64asm
	- $(MAKE) -C src/ext/gtest-1.7.0 clean
	- $(MAKE) -C src/ext/pin-2.13-62732-gcc.4.4.7-linux/source/tools/stoke clean
