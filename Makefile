##### CONSTANT DEFINITIONS

CXX=ccache g++ -std=c++11 -Werror

UARCH=-DSTOKE_HASWELL

TARGET=-mavx -mavx2

INC=\
	-I./ \
	-I./src/ext/cpputil/ \
	-I./src/ext/x64asm

LIB=

OBJ=

BIN= \
	bin/stoke_cfg \
	bin/stoke_cost \
	bin/stoke_simulate \
	bin/stoke_validate \
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
	make -C src/ext/x64asm $(EXT_OPT) 

src/ext/cpputil:
	git clone git://github.com/eschkufz/cpputil.git src/ext/cpputil

src/ext/x64asm:
	git clone git://github.com/eschkufz/x64asm.git src/ext/x64asm

##### BINARY TARGETS

bin/%: tools/%.cc $(OBJ) 
	$(CXX) $(TARGET) $(UARCH) $(OPT) $(INC) $(OBJ) $(LIB) $< -o $@

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
