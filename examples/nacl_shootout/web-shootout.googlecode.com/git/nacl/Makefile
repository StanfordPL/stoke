NACL_SDK_ROOT ?= /home/berkeley/nacl_sdk/pepper_42
# NACL_SVN_PATH only needed if we want to build with glibc
NACL_SVN_PATH ?= /path/to/native_client/svn
#CC = gcc
#CXX = g++

BITS ?= 64
LIB ?= newlib


OS_NAME := $(shell uname -s)
OS_SUBDIR := UNKNOWN
ifeq ($(OS_NAME), Darwin)
  OS_SUBDIR := mac
endif
ifeq ($(OS_NAME), Linux)
  OS_SUBDIR := linux
endif

ifeq ($(BITS), 64)
  NACL_CC_BASE = x86_64-nacl
  ARCH_FLAG = -m64
  PNACL_ARCH = x86-64
  NEWLIB_LIBDIR = newlib_x86_64
else
  NACL_CC_BASE = i686-nacl
  ARCH_FLAG = -m32
  PNACL_ARCH = x86-32
  NEWLIB_LIBDIR = newlib_x86_32
endif

include $(NACL_SDK_ROOT)/tools/common.mk

ifeq ($(LIB),glibc)
  NACL_CC_PATH = $(NACL_SDK_ROOT)/toolchain/$(OS_SUBDIR)_x86_glibc/bin
else
  NACL_CC_PATH = $(NACL_SDK_ROOT)/toolchain/$(OS_SUBDIR)_x86_newlib/bin
endif

PNACL_PATH = $(NACL_SDK_ROOT)/toolchain/$(OS_SUBDIR)_x86_pnacl/newlib/bin

NACLCC = $(NACL_CC_PATH)/$(NACL_CC_BASE)-gcc
NACLCXX = $(NACL_CC_PATH)/$(NACL_CC_BASE)-g++
PNACLCC = $(PNACL_PATH)/pnacl-clang
PNACLCXX = $(PNACL_PATH)/pnacl-clang++
PNACL_TRANSLATE = $(PNACL_PATH)/pnacl-translate

CFLAGS_NP = -mfpmath=sse -msse3 -march=nocona
#CCFLAGS ?= -O3 -D_GNU_SOURCE
CCFLAGS ?= -O2 -D_GNU_SOURCE
CFLAGS = $(CCFLAGS) -std=gnu99
CXXFLAGS = $(CCFLAGS)
LIBS = -lgmp -lpthread -lm #-lfftw3
LIBDIRS = -L../third_party/libinstall/$(BITS)/lib -L$(NACL_SDK_ROOT)/lib/$(NEWLIB_LIBDIR)
PNACL_LIBDIRS = -L../third_party/libinstall/pnacl/lib -L$(NACL_SDK_ROOT)/lib/pnacl
IRT_CORE=$(NACL_SDK_ROOT)/tools/irt_core_x86_$(BITS).nexe

BENCHMARKS := fannkuchredux fasta revcomp binarytrees knucleotide \
		pidigits richards deltablue memcpy memcpy2 strcpy #fft
# spectralnorm
OTHER_OBJS = bench-framework benchstringio fasta_10k_ref_output

OBJS_NATIVE := $(BENCHMARKS:%=%.native.o) $(OTHER_OBJS:%=%.native.o) nbody.native.o
OBJS_NACL := $(BENCHMARKS:%=%.nacl.o) $(OTHER_OBJS:%=%.nacl.o) nbody.nacl.o
OBJS_PNACL := $(BENCHMARKS:%=%.bc) $(OTHER_OBJS:%=%.bc) nbody-portable.bc

NATIVE_FLAGS=-g

all: native nacl 

%.native.o: %.c
	$(CC) $(ARCH_FLAG) -Iinclude -c $(INC_PATHS) $(NATIVE_FLAGS) $(CFLAGS) $(CFLAGS_NP) $< -o $@
%.native.o: %.cc
	$(CXX) $(ARCH_FLAG) -Iinclude -c $(INC_PATHS) $(NATIVE_FLAGS) $(CXXFLAGS) $(CFLAGS_NP) $< -o $@
%.nacl.o: %.c
	$(NACLCC) -c -Iinclude -I$(INC_PATHS) $(CFLAGS) $(CFLAGS_NP) $< -o $@
%.nacl.o: %.cc
	$(NACLCXX) -c -Iinclude -I$(INC_PATHS) $(CXXFLAGS) $(CFLAGS_NP) $< -o $@
%.bc: %.c
	$(PNACLCC) -c -Iinclude -I$(INC_PATHS) $(CFLAGS) $< -o $@
%.bc: %.cc
	$(PNACLCXX) -c -Iinclude -I$(INC_PATHS) $(CXXFLAGS) -std=c++11 $< -o $@

native: $(OBJS_NATIVE) cli.native.o
	$(CXX) $(ARCH_FLAG) $(NATIVE_FLAGS) $(OBJS_NATIVE) cli.native.o -o \
	  benchmarks$(BITS) $(LIBS)

nacl: benchmarks$(BITS).nexe benchmarks_browser$(BITS).nexe
pexe: benchmarks.pexe benchmarks_browser.pexe
arm: benchmarks-arm.nexe benchmarks_browser-arm.nexe
pnacl-nexe: benchmarks_pexe$(BITS).nexe benchmarks_browser_pexe$(BITS).nexe

benchmarks$(BITS).nexe: $(OBJS_NACL) cli.nacl.o
	$(NACLCXX) $^ -o $@ $(LIBDIRS) $(LIBS)

benchmarks-arm.nexe: benchmarks.pexe
	$(PNACL_TRANSLATE) -arch arm $^ -o $@

benchmarks_browser$(BITS).nexe: $(OBJS_NACL) pepper.nacl.o
	$(NACLCXX) $^ -o $@ $(LIBDIRS) -lppapi $(LIBS)
	chmod a+r *.nexe

benchmarks_browser-arm.nexe: benchmarks_browser.pexe
	$(PNACL_TRANSLATE) -arch arm $^ -o $@

benchmarks.pexe: $(OBJS_PNACL) cli.bc
	$(PNACLCXX) -O3 $^ -o $@ $(PNACL_LIBDIRS) -lppapi $(LIBS)

benchmarks_pexe$(BITS).nexe: benchmarks.pexe
	$(PNACL_TRANSLATE) -arch $(PNACL_ARCH) $^ -o $@

benchmarks_browser.pexe: $(OBJS_PNACL) pepper.bc
	$(PNACLCXX) -O3 $^ -o $@ $(PNACL_LIBDIRS) -lppapi $(LIBS)

benchmarks_browser_pexe$(BITS).nexe: benchmarks_browser.pexe
	$(PNACL_TRANSLATE) -arch $(PNACL_ARCH) $^ -o $@

clean-native:
	rm -f *.native.o
clean-nacl:
	rm -f *.nacl.o
clean-pnacl:
	rm -f *.bc  *.ll *-.o
clean: clean-native clean-nacl clean-pnacl
	rm -f benchmarks64 benchmarks_browser64.nexe


run-native:
	./benchmarks$(BITS)
run-nacl:
	$(NACL_SDK_ROOT)/tools/sel_ldr_x86_$(BITS) -B $(IRT_CORE) -a benchmarks$(BITS).nexe
run-pnacl:
	$(NACL_SDK_ROOT)/tools/sel_ldr_x86_$(BITS) -B $(IRT_CORE) -a benchmarks_pexe$(BITS).nexe

.PHONY: clean-native clean-nacl clean-pnacl run-native run-nacl

.PRECIOUS: benchmarks32.nexe benchmarks64.nexe benchmarks32 benchmarks64
