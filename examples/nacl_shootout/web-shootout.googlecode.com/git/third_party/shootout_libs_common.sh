#!/bin/bash

OS_NAME=`uname -s`
OS_SUBDIR=UNKNOWN
if [ $OS_NAME = Darwin ] ; then
  OS_SUBDIR=mac
fi
if [ $OS_NAME = Linux ] ; then
  OS_SUBDIR=linux
fi

#readonly PNACL_TC_BASE=${NACL_BASE}/native_client/toolchain/pnacl_linux_x86_64_newlib/bin
readonly PNACL_TC_BASE=${NACL_SDK_ROOT}/toolchain/${OS_SUBDIR}_x86_pnacl/newlib/bin
readonly PNACL_GCC=${PNACL_TC_BASE}/pnacl-clang
readonly PNACL_CXX=${PNACL_TC_BASE}/pnacl-g++
readonly PNACL_AR=${PNACL_TC_BASE}/pnacl-ar
readonly PNACL_AS=${PNACL_TC_BASE}/pnacl-as
readonly PNACL_LD=${PNACL_TC_BASE}/pnacl-ld
readonly PNACL_RANLIB=${PNACL_TC_BASE}/pnacl-ranlib

readonly NACL_TC_BASE=${NACL_SDK_ROOT}/toolchain/${OS_SUBDIR}_x86_glibc/bin
readonly NACL_TC_BASE_NEWLIB=${NACL_SDK_ROOT}/toolchain/${OS_SUBDIR}_x86_newlib/bin

readonly NACL_CC=${NACL_CC:-nacl-gcc-newlib}
readonly NACL_ARCH=${NACL_ARCH:-x86-32}

INSTALL_DIR=${INSTALL_DIR:-${SHOOTOUT_BASE}/third_party/libinstall}

NEXE_SUFFIX=pexe

setup-pnacl() {
  local arch=$1
  local mode=$2
  local flags

  NEXE_SUFFIX=pexe

  flags="-static"
  INSTALL_DIR=${INSTALL_DIR}/pnacl

  CONFIGURE_ENV=(
    CC="${PNACL_GCC} ${flags}" \
    CXX="${PNACL_CXX} ${flags}" \
    LD="${PNACL_LD} ${flags}" \
    RANLIB="${PNACL_RANLIB}" )
}

setup-naclgcc() {
  local arch=$1
  local mode=$2
  local flags
  local tc_base
  local gcc_prefix="i686"

  NEXE_SUFFIX=nexe
  case $arch in
    x86-32) 
      gcc_prefix="i686"
      INSTALL_DIR=${INSTALL_DIR}/32
      ;;
    x86-64)
      gcc_prefix="x86_64"
      INSTALL_DIR=${INSTALL_DIR}/64
    ;;
    *)
    echo "Bad naclgcc arch" $arch
    exit -1
  esac

  if [ $NACL_CC == "nacl-gcc" ]; then
    tc_base=${NACL_TC_BASE}
  elif [ $NACL_CC == "nacl-gcc-newlib" ]; then
    tc_base=${NACL_TC_BASE_NEWLIB}
    flags="-static"
  fi

  CONFIGURE_ENV=(
    CC="${tc_base}/${gcc_prefix}-nacl-gcc ${flags}" \
    CXX="${tc_base}/${gcc_prefix}-nacl-g++ ${flags}" \
    LD="${tc_base}/${gcc_prefix}-nacl-ld ${flags}" \
    RANLIB="${tc_base}/${gcc_prefix}-nacl-ranlib" \
    AR="${tc_base}/${gcc_prefix}-nacl-ar" \
    OBJCOPY="${tc_base}/${gcc_prefix}-nacl-objcopy" \
    NM="nm")
}

basic-driver() {
  if [ $# -lt 1 ]; then
    echo "Usage: $0 <do-clean|do-make|do-install|all>"
    exit 1
  fi

  if [ $NACL_CC == "pnacl" ]; then
    setup-pnacl $NACL_ARCH
  elif [ $NACL_CC == "nacl-gcc" ] || 
       [ $NACL_CC == "nacl-gcc-newlib" ]; then
    setup-naclgcc $NACL_ARCH
  elif [ $NACL_CC == "native" ]; then
      CONFIGURE_ENV=(
	  CC="gcc -m$NACL_ARCH" \
	  CXX="g++ -m$NACL_ARCH" )
  else 
    echo "Bad NACL_CC" $NACL_CC
  fi

  if [ $1 == "all" ]; then
    echo "Using" $NACL_CC $NACL_ARCH $NEXE_SUFFIX
    do-clean
    do-configure && \
    do-make && \
    do-install
    exit $?
  fi

  "$@"
}

if [ x${NACL_SDK_ROOT}x == "xx" ]; then
  echo "You need to set the env variable NACL_SDK_ROOT to your NaCl SDK directory"
  exit 1
fi
if [ x${SHOOTOUT_BASE}x == "xx" ]; then
  echo "You need to set the env variable SHOOTOUT_BASE to toplevel shootout directory"
  exit 1
fi
