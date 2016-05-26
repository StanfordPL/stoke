
WARNING_FLAGS=-Wall -Werror -Wextra -Wfatal-errors -Wno-deprecated -Wno-unused-parameter -Wno-unused-variable -Wno-vla -fdiagnostics-color=always

STOKE_ROOT=../../..

CXX=ccache g++ $(OPT) -std=c++14 $(WARNING_FLAGS)
INCLUDE=-I$(STOKE_ROOT) -I$(STOKE_ROOT)/src/ext/x64asm -I$(STOKE_ROOT)/src/ext/cpputil

LIBS=$(STOKE_ROOT)/bin/stoke.o \
		 $(STOKE_ROOT)/src/ext/x64asm/lib/libx64asm.a \
		 -pthread \
		 -lboost_filesystem -lboost_system -lboost_regex -lboost_thread \
		 -lcln -liml -lgmp \
		 -L $(STOKE_ROOT)/src/ext/cvc4-1.4-build/lib -lcvc4 \
		 -L $(STOKE_ROOT)/src/ext/z3/build -lz3

all: stpcpy stpcpy.tc

stpcpy:
	$(CXX) $(INCLUDE) $(LIBS) stpcpy.cc -o stpcpy

stpcpy.tc:
	stpcpy --count 40 > stpcpy.tc

clean:
	rm -f ./stpcpy stpcpy.tc
