# Copyright 2013-2015 Stanford University
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

## Include any variables set by the user
-include .stoke_config

## Choose the compiler to use
ifndef CXX
	CXX=g++
endif
ifndef CC
	CC=gcc
endif

ifndef STOKE_PLATFORM
$(error STOKE_PLATFORM is not set.  Did you run ./configure.sh?)
endif

# Set the number of threads used for compiling
ifndef NTHREADS
	NTHREADS=8
endif

# Decide on optimization flags
ifndef BUILD_TYPE
$(error BUILD_TYPE is not set. Did you run ./configure.sh?)
endif
ifeq ($(BUILD_TYPE), release)
	OPT=-O3 -DNDEBUG $(MISC_OPTIONS)
endif
ifeq ($(BUILD_TYPE), debug)
	OPT=-O2 -g $(MISC_OPTIONS)
endif
ifeq ($(BUILD_TYPE), profile)
	OPT=-O3 -DNDEBUG -pg $(MISC_OPTIONS)
endif
ifndef OPT
$(error Invalid BUILD_TYPE '${BUILD_TYPE}' given)
endif

# Set platform-specific compiler options to use
ifndef ARCH_OPT
	ifeq ($(STOKE_PLATFORM), "haswell")
		ARCH_OPT=-march=core-avx2 -DHASWELL_BUILD
	endif
	ifeq ($(STOKE_PLATFORM), "sandybridge")
		ARCH_OPT=-march=corei7-avx -DSANDYBRIDGE_BUILD
	endif
	ifeq ($(STOKE_PLATFORM), "nehalem")
		ARCH_OPT=-march=corei7 -DNEHALEM_BUILD
	endif
endif
ifndef ARCH_OPT
$(error Invalid STOKE_PLATFORM '${STOKE_PLATFORM}' given.)
endif
ifndef EXT_OPT
	EXT_OPT=release
endif
ifndef EXT_TARGET
	EXT_TARGET=$(ARCH_OPT)
endif

#CXX_FLAGS are any extra flags the user might want to pass to the compiler
ifndef NOCVC4
CXX_FLAGS += -DNOCVC4=1
endif

WARNING_FLAGS=-Wall -Werror -Wextra -Wfatal-errors -Wno-deprecated -Wno-unused-parameter -Wno-unused-variable -Wno-vla -fdiagnostics-color=always
STOKE_CXX=ccache $(CXX) $(CXX_FLAGS) -std=c++14 $(WARNING_FLAGS)

INC_FOLDERS=\
						./ \
						src/ext/cpputil/ \
						src/ext/x64asm \
						src/ext/gtest-1.7.0/include \
						src/ext/z3/src/api
ifndef NOCVC4
INC_FOLDERS += src/ext/cvc4-1.4-build/include
endif

INC=$(addprefix -I./, $(INC_FOLDERS))

DEPS=\
	src/ext/x64asm/lib/libx64asm.a

LIB=\
	src/ext/x64asm/lib/libx64asm.a \
	-pthread \
	 -lboost_filesystem -lboost_system -lboost_regex  -lboost_thread \
	-lcln \
	-liml -lgmp \
	-L src/ext/cvc4-1.4-build/lib -lcvc4 \
	-L src/ext/z3/build -lz3
ifndef NOCVC4
LIB += -L src/ext/cvc4-1.4-build/lib -lcvc4
endif

ifndef NOCVC4
LDFLAGS=-Wl,-rpath=\$$ORIGIN/../src/ext/z3/build:\$$ORIGIN/../src/ext/cvc4-1.4-build/lib,--enable-new-dtags
else
LDFLAGS=-Wl,-rpath=\$$ORIGIN/../src/ext/z3/build,--enable-new-dtags
endif

SRC_OBJ=\
	src/cfg/cfg.o \
	src/cfg/cfg_transforms.o \
	src/cfg/dot_writer.o \
	src/cfg/paths.o \
	src/cfg/sccs.o \
	\
	src/cost/correctness.o \
	src/cost/cost_parser.o \
	src/cost/expr.o \
	src/cost/latency.o \
	\
	src/disassembler/disassembler.o \
	\
	src/sandbox/dispatch_table.o \
	src/sandbox/sandbox.o \
	\
	src/search/search.o \
	src/search/search_state.o \
	\
	src/solver/z3solver.o \
	src/solver/cvc4solver.o \
	\
	src/state/cpu_state.o \
	src/state/cpu_states.o \
	src/state/error_code.o \
	src/state/memory.o \
	src/state/regs.o \
	src/state/rflags.o \
	\
	src/stategen/stategen.o \
	\
	src/symstate/array.o \
	src/symstate/bitvector.o \
	src/symstate/bool.o \
	src/symstate/function.o \
	src/symstate/memory_manager.o \
	src/symstate/simplify.o \
	src/symstate/state.o \
	\
	src/symstate/memory/cell.o \
	src/symstate/memory/flat.o \
	\
	src/target/cpu_info.o	\
	\
	src/transform/add_nops.o \
	src/transform/delete.o \
	src/transform/global_swap.o \
	src/transform/instruction.o \
	src/transform/local_swap.o \
	src/transform/opcode.o \
	src/transform/opcode_width.o \
	src/transform/operand.o \
	src/transform/pools.o \
	src/transform/rotate.o \
	src/transform/transform.o \
	\
	src/tunit/tunit.o \
	\
	src/validator/bounded.o \
	src/validator/cutpoints.o \
	src/validator/ddec.o \
	src/validator/handler.o \
	src/validator/invariant.o \
	src/validator/null.o \
	src/validator/obligation_checker.o \
	src/validator/validator.o \
	src/validator/strata_support.o \
	\
	src/validator/handlers/add_handler.o \
	src/validator/handlers/combo_handler.o \
	src/validator/handlers/conditional_handler.o \
	src/validator/handlers/lea_handler.o   \
	src/validator/handlers/move_handler.o  \
	src/validator/handlers/packed_handler.o \
	src/validator/handlers/punpck_handler.o \
	src/validator/handlers/shift_handler.o \
	src/validator/handlers/simple_handler.o \
	src/validator/handlers/strata_combo_handler.o \
	src/validator/handlers/strata_handler.o \
	src/validator/handlers/pseudo_handler.o \
	\
	src/verifier/hold_out.o

ifndef NOCVC4
SRC_OBJ += 	src/solver/cvc4solver.o
endif

TOOL_ARGS_OBJ=\
	tools/args/benchmark.o \
	tools/args/cost.o \
	tools/args/functions.o \
	tools/args/in_out.o \
	tools/args/rewrite.o \
	tools/args/sandbox.o \
	tools/args/search.o \
	tools/args/search_state.o \
	tools/args/seed.o \
	tools/args/solver.o \
	tools/args/target.o \
	tools/args/testcases.o \
	tools/args/transforms.o \
	tools/args/verifier.o

TOOL_NON_ARG_OBJ=\
	tools/io/distance.o \
	tools/io/opc_set.o \
	tools/io/init.o \
	tools/io/mem_set.o \
	tools/io/reduction.o \
	tools/io/postprocessing.o \
	tools/io/solver.o \
	tools/io/state_diff.o \
	tools/io/failed_verification_action.o

TOOL_OBJ=$(TOOL_ARGS_OBJ) $(TOOL_NON_ARG_OBJ)

OBJS=$(wildcard tools/apps/*.cc) $(SRC_OBJ) $(TOOL_NON_ARG_OBJ)

BIN=\
	bin/stoke_extract \
	bin/stoke_replace \
	bin/stoke_search \
	bin/stoke_testcase \
	bin/stoke_tcgen \
	bin/stoke_rename \
	\
	bin/stoke_debug_cfg \
	bin/stoke_debug_formula \
	bin/stoke_debug_cost \
	bin/stoke_debug_diff \
	bin/stoke_debug_effect \
	bin/stoke_debug_sandbox \
	bin/stoke_debug_search \
	bin/stoke_debug_simplify \
	bin/stoke_debug_state \
	bin/stoke_debug_tunit \
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

release:
	$(MAKE) -C . external EXT_OPT="release"
	$(MAKE) -C . -j$(NTHREADS) $(BIN) BUILD_TYPE="release"
	echo -e "\a"
debug:
	$(MAKE) -C . external EXT_OPT="debug"
	$(MAKE) -C . -j$(NTHREADS) $(BIN) BUILD_TYPE="debug"
	echo -e "\a"
profile:
	$(MAKE) -C . external EXT_OPT="profile"
	$(MAKE) -C . -j$(NTHREADS) $(BIN) BUILD_TYPE="profile"
	echo -e "\a"
tests: debug
	$(MAKE) -C . -j$(NTHREADS) bin/stoke_test BUILD_TYPE="debug"
	echo -e "\a"
test: tests
	bin/stoke_test
	echo -e "\a"
fast_tests: debug
	$(MAKE) -C . -j$(NTHREADS) bin/stoke_test BUILD_TYPE="debug" MISC_OPTIONS="-DNO_VERY_SLOW_TESTS $(MISC_OPTIONS)"
	bin/stoke_test
	echo -e "\a"
fast: fast_tests
	echo -e "\a"

##### CTAGS TARGETS

tags:
	ctags -R src

##### DEPENDENCY MANAGEMENT

.PHONY: depend
depend:
	# create depend file (we need to correct the dependencies, because gcc does
	# not behave correctly for files that are in subdirectories;  we add the
	# directories manually in the following loop)
	cp /dev/null ./.depend
	for F in $(OBJS:.o=.cc); do \
		D=`dirname $$F | sed "s/^\.\///"`; \
		echo -n "$$D/" >> ./.depend; \
		$(STOKE_CXX) $(TARGET) $(INC) -MM -MG $$F >> ./.depend; \
	done
	# for the binaries, the path is wrong (because we don't generate an object
	# file, and instead generate the binary in 'bin').  use sed to correct this.
	sed -i 's/tools\/apps\/\(.*\)\.o/bin\/\1/' ./.depend

# pull in dependency info
-include .depend

##### EXTERNAL TARGETS

external: src/ext/astyle cpputil x64asm z3 pintool src/ext/gtest-1.7.0/libgtest.a
	if [ ! -f .depend ]; then \
		$(MAKE) -C . depend; \
	fi

src/ext/astyle:
	svn co https://svn.code.sf.net/p/astyle/code/trunk/AStyle src/ext/astyle
	$(MAKE) -C src/ext/astyle/build/gcc -j$(NTHREADS)

.PHONY: cpputil
cpputil:
	./scripts/make/submodule-init.sh src/ext/cpputil

.PHONY: x64asm
x64asm:
	./scripts/make/submodule-init.sh src/ext/x64asm
	$(MAKE) -C src/ext/x64asm EXT_OPT="$(EXT_OPT)" CXX="${CXX}" CC="${CC}"

.PHONY: pintool
pintool:
	$(MAKE) -C src/ext/pin-2.13-62732-gcc.4.4.7-linux/source/tools/stoke TARGET="$(EXT_TARGET)" \
					CXX="${CXX}" CC="${CC}"

src/ext/gtest-1.7.0/libgtest.a:
	rm -f src/ext/gtest-1.7.0/CMakeCache.txt
	CXX="${CXX}" CC="${CC}" cmake src/ext/gtest-1.7.0/CMakeLists.txt
	VERBOSE="1" $(MAKE) -C src/ext/gtest-1.7.0 -j$(NTHREADS)

.PHONY: z3
z3: z3init src/ext/z3/build/Makefile
	cd src/ext/z3/build && CC="${CC}" CXX="${CXX}" make

z3init:
	./scripts/make/submodule-init.sh src/ext/z3

src/ext/z3/build/Makefile:
	cd src/ext/z3 && python scripts/mk_make.py

##### VALIDATOR AUTOGEN

src/validator/handlers.h: .FORCE
	src/validator/generate_handlers_h.sh src/validator handlers-tmp; \
	cmp -s $@ src/validator/handlers-tmp || mv src/validator/handlers-tmp $@;
	rm -f src/validator/handlers-tmp

##### BUILD TARGETS

src/cfg/%.o: src/cfg/%.cc $(DEPS)
	$(STOKE_CXX) $(TARGET) $(OPT) $(ARCH_OPT) $(INC) -c $< -o $@
src/cost/%.o: src/cost/%.cc $(DEPS)
	$(STOKE_CXX) $(TARGET) $(OPT) $(ARCH_OPT) $(INC) -c $< -o $@
src/disassembler/%.o: src/disassembler/%.cc $(DEPS)
	$(STOKE_CXX) $(TARGET) $(OPT) $(ARCH_OPT) $(INC) -c $< -o $@
src/sandbox/%.o: src/sandbox/%.cc $(DEPS)
	$(STOKE_CXX) $(TARGET) $(OPT) $(ARCH_OPT) $(INC) -c $< -o $@
src/search/%.o: src/search/%.cc $(DEPS)
	$(STOKE_CXX) $(TARGET) $(OPT) $(ARCH_OPT) $(INC) -c $< -o $@
src/solver/%.o: src/solver/%.cc $(DEPS)
	$(STOKE_CXX) $(TARGET) $(OPT) $(ARCH_OPT) $(INC) -c $< -o $@
src/solver/cvc4solver.o: src/solver/cvc4solver.cc $(DEPS)
	$(STOKE_CXX) $(TARGET) $(OPT) $(ARCH_OPT) $(INC) -c $< -o $@
src/state/%.o: src/state/%.cc $(DEPS)
	$(STOKE_CXX) $(TARGET) $(OPT) $(ARCH_OPT) $(INC) -c $< -o $@
src/stategen/%.o: src/stategen/%.cc $(DEPS)
	$(STOKE_CXX) $(TARGET) $(OPT) $(ARCH_OPT) $(INC) -c $< -o $@
src/symstate/%.o: src/symstate/%.cc $(DEPS)
	$(STOKE_CXX) $(TARGET) $(OPT) $(ARCH_OPT) $(INC) -c $< -o $@
src/target/%.o: src/target/%.cc src/target/%.h $(DEPS)
	$(STOKE_CXX) $(TARGET) $(OPT) $(ARCH_OPT) $(INC) -c $< -o $@
src/transform/%.o: src/transform/%.cc $(DEPS)
	$(STOKE_CXX) $(TARGET) $(OPT) $(ARCH_OPT) $(INC) -c $< -o $@
src/tunit/%.o: src/tunit/%.cc src/tunit/%.h $(DEPS)
	$(STOKE_CXX) $(TARGET) $(OPT) $(ARCH_OPT) $(INC) -c $< -o $@
src/validator/handlers/%.o: src/validator/handlers/%.cc $(DEPS)
	$(STOKE_CXX) $(TARGET) $(OPT) $(ARCH_OPT) $(INC) -c $< -o $@
src/validator/%.o: src/validator/%.cc $(DEPS)
	$(STOKE_CXX) $(TARGET) $(OPT) $(ARCH_OPT) $(INC) -c $< -o $@
src/verifier/%.o: src/verifier/%.cc $(DEPS)
	$(STOKE_CXX) $(TARGET) $(OPT) $(ARCH_OPT) $(INC) -c $< -o $@

tools/io/%.o: tools/io/%.cc $(DEPS)
	$(STOKE_CXX) $(TARGET) $(OPT) $(ARCH_OPT) $(INC) -c $< -o $@

##### BINARY TARGETS

bin/%: tools/apps/%.cc $(DEPS) $(SRC_OBJ) $(TOOL_NON_ARG_OBJ) tools/gadgets/*.h
	$(STOKE_CXX) $(TARGET) $(OPT) $(ARCH_OPT) $(INC) $< -o $@ $(SRC_OBJ) $(TOOL_NON_ARG_OBJ) $(LIB) $(LDFLAGS)

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
	$(STOKE_CXX) $(TARGET) $(OPT) $(ARCH_OPT) $(INC) -c $< -o $@ $(TEST_LIBS)

bin/stoke_test: tools/apps/stoke_test.cc $(DEPS) $(SRC_OBJ) $(TEST_OBJ) $(TOOL_NON_ARG_OBJ) $(wildcard src/*/*.h) $(wildcard tests/*.h) $(wildcard tests/*/*.h) $(wildcard tests/*/*/*.h) tests/validator/handlers.h
	$(STOKE_CXX) $(TARGET) $(OPT) $(ARCH_OPT) $(INC) $< -o $@ $(SRC_OBJ) $(TEST_OBJ) $(TOOL_NON_ARG_OBJ) $(LIB) $(LDFLAGS) $(TEST_LIBS)

## MISC

.SECONDARY: $(SRC_OBJ) $(TOOL_OBJ)

zsh_completion: bin/_stoke
bin/_stoke: $(BIN) tools/scripts/completion_generator.py
	tools/scripts/completion_generator.py

bash_completion: bin/stoke.bash
bin/stoke.bash: $(BIN) tools/scripts/completion_generator.py
	tools/scripts/completion_generator.py

format: src/ext/astyle
	chmod +x "scripts/git/pre-commit.d/*.sh"
	scripts/git/pre-commit.d/astyle.sh

# builds a symlink to the post-commit hooks
hooks: .git/hooks/pre-commit .git/hooks/post-merge-checkout

.git/hooks/pre-commit:
	chmod +x "scripts/git/pre-commit.sh"
	ln -sf $(shell pwd)/scripts/git/pre-commit.sh `git rev-parse --git-dir`/hooks/pre-commit

.git/hooks/post-merge-checkout:
	chmod +x "scripts/git/post-merge-checkout.sh"
	ln -sf $(shell pwd)/scripts/git/post-merge-checkout.sh `git rev-parse --git-dir`/hooks/post-merge-checkout

##### CLEAN TARGETS

stoke_clean:
	rm -rf $(SRC_OBJ) $(TOOL_OBJ) $(TEST_OBJ) $(BIN) $(TEST_BIN) tags bin/stoke_* bin/_stoke bin/stoke.bash
	rm -rf $(VALIDATOR_AUTOGEN)

clean: stoke_clean
	./scripts/make/submodule-init.sh src/ext/cpputil
	./scripts/make/submodule-init.sh src/ext/x64asm
	$(MAKE) -C src/ext/cpputil clean
	$(MAKE) -C src/ext/x64asm clean
	- $(MAKE) -C src/ext/pin-2.13-62732-gcc.4.4.7-linux/source/tools/stoke clean
	rm -rf .depend

dist_clean: clean
	rm -f src/ext/gtest-1.7.0/CMakeCache.txt
	./scripts/make/submodule-reset.sh src/ext/cpputil
	./scripts/make/submodule-reset.sh src/ext/x64asm
	./scripts/make/submodule-reset.sh src/ext/z3
	- $(MAKE) -C src/ext/gtest-1.7.0 clean
	rm -rf src/ext/z3/build
