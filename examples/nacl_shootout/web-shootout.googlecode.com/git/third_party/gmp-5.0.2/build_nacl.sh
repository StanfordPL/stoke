#!/bin/bash

source ../shootout_libs_common.sh
readonly BUILD_DIR=$(pwd)/build
#use portable C unless specific host is specified

if [ x${GMP_CONFIG_HOST}x == "xx" ]; then
    if [ ${NACL_ARCH} == "x86-32" ]; then
	GMP_CONFIG_HOST=pentium4-pc-nacl
    else
	GMP_CONFIG_HOST=none-pc-nacl
    fi
fi

do-clean() {
  rm -rf ${BUILD_DIR}
}

do-configure() {
  mkdir -p ${BUILD_DIR}
  mkdir -p ${INSTALL_DIR}
  pushd ${BUILD_DIR}
  ../configure "${CONFIGURE_ENV[@]}" \
  --prefix=${INSTALL_DIR} \
  --enable-shared \
  --host=${GMP_CONFIG_HOST}
#  --host=pentium4-pc-nacl #use this for SSE asm on x86
  local ret=$?
  popd
  return $ret
}

do-make() {
  pushd ${BUILD_DIR}
  make -j8
  local ret=$?
  popd
  return $ret
}

do-install() {
  pushd ${BUILD_DIR}
  make install
  return $?
}


basic-driver "$@"