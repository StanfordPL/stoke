##### CONSTANT DEFINITIONS

CXX=ccache g++ -std=c++11 -Werror -Wfatal-errors

UARCH=-DSTOKE_HASWELL

TARGET=-mavx -mavx2

INC=\
	-I./ \
	-I./src/ext/cpputil/ \
	-I./src/ext/x64asm

LIB=\
	src/ext/x64asm/lib/libx64asm.a

OBJ=\
	src/args/reg_set.o \
	src/args/testcases.o \
	\
	src/cfg/cfg.o \
	\
	src/sandbox/cpu_io.o \
	src/sandbox/sandbox.o \
	src/sandbox/stack_snapshot.o \
	\
	src/state/cpu_state.o \
	src/state/memory.o \
	src/state/regs.o \
	\
	src/verifier/verifier.o

BIN= \
	bin/stoke_cfg \
	bin/stoke_cost \
	bin/stoke_simulate \
	bin/stoke_verify \
	\
	bin/stoke_extract \
	bin/stoke_search \
	bin/stoke_testcase

##### TOP LEVEL TARGETS (release is default)

all: release

debug:
	make -C . external EXT_OPT="debug"
	make -C . $(BIN) OPT="-g" 
release:
	make -C . external EXT_OPT="release"
	make -C . $(BIN) OPT="-DNDEBUG -O3" 
profile:
	make -C . external EXT_OPT="profile"
	make -C . $(BIN) OPT="-DNDEBUG -O3 -pg" 

##### EXTERNAL TARGETS

external: src/ext/cpputil src/ext/x64asm
	make -C src/ext/pin-2.13-62732-gcc.4.4.7-linux/source/tools/stoke
	make -C src/ext/x64asm $(EXT_OPT) 

src/ext/cpputil:
	git clone git://github.com/eschkufz/cpputil.git src/ext/cpputil

src/ext/x64asm:
	git clone git://github.com/eschkufz/x64asm.git src/ext/x64asm

##### BUILD TARGETS

src/args/%.o: src/args/%.cc src/args/%.h
	$(CXX) $(TARGET) $(UARCH) $(OPT) $(INC) -c $< -o $@
src/cfg/%.o: src/cfg/%.cc src/cfg/%.h
	$(CXX) $(TARGET) $(UARCH) $(OPT) $(INC) -c $< -o $@
src/sandbox/%.o: src/sandbox/%.cc src/sandbox/%.h
	$(CXX) $(TARGET) $(UARCH) $(OPT) $(INC) -c $< -o $@
src/state/%.o: src/state/%.cc src/state/%.h
	$(CXX) $(TARGET) $(UARCH) $(OPT) $(INC) -c $< -o $@
src/verifier/%.o: src/verifier/%.cc src/verifier/%.h
	$(CXX) $(TARGET) $(UARCH) $(OPT) $(INC) -c $< -o $@

##### BINARY TARGETS

bin/%: tools/%.cc $(OBJ) 
	$(CXX) $(TARGET) $(UARCH) $(OPT) $(INC) $< -o $@ $(OBJ) $(LIB)  

##### MISC

.SECONDARY: $(OBJ)

##### CLEAN TARGETS

clean:
	make -C src/ext/x64asm clean	
	make -C src/ext/pin-2.13-62732-gcc.4.4.7-linux/source/tools/stoke clean
	rm -rf $(OBJ) $(BIN)

dist_clean: clean
	rm -rf src/ext/cpputil
	rm -rf src/ext/x64asm
