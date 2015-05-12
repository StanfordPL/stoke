#!/bin/bash

set -o errexit

LIBS_TO_BUILD="gmp-5.0.2"

export SHOOTOUT_BASE=$(pwd)
# NACL_CC is one of {nacl-gcc,nacl-gcc-newlib,pnacl}
export NACL_CC=${NACL_CC:-nacl-gcc-newlib}

#If you get gcc-newlib build failures, uncomment this 
#(not needed for sdk compiler)
#pushd $NACL_BASE
#./scons install includedir=toolchain/linux_x86_newlib/nacl64/include/ libdir=toolchain/linux_x86_newlib/nacl64/lib32/
#./scons install includedir=toolchain/linux_x86_newlib/nacl64/include/ libdir=toolchain/linux_x86_newlib/nacl64/lib/ platform=x86-64
#popd

# GMP_CONFIG_HOST is one of {none-pc-nacl,pentium4-pc-nacl}
#if [ $NACL_CC == "pnacl" ]; then
    export GMP_CONFIG_HOST=none-pc-nacl
#else
#    export GMP_CONFIG_HOST=pentium4-pc-nacl
#fi

#Build all the libs for nacl, 32 and 64 bit
for arch in x86-32 x86-64; do
  for lib in ${LIBS_TO_BUILD}; do
    pushd third_party/$lib
    NACL_ARCH=$arch ./build_nacl.sh all
    popd
  done
done
