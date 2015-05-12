#!/bin/bash

source ../shootout_libs_common.sh
readonly BUILD_DIR=$(pwd)/build

do-clean() {
  rm -rf ${BUILD_DIR}
}

do-configure() {
  mkdir -p ${BUILD_DIR}
  mkdir -p ${INSTALL_DIR}
  pushd ${BUILD_DIR}
  ../configure "${CONFIGURE_ENV[@]}" \
  --prefix=${INSTALL_DIR} \
  --enable-minimal \
  --host=nacl
  local ret=$?
  popd
  return $ret
}

do-make() {
  pushd ${BUILD_DIR}
  make -j4
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