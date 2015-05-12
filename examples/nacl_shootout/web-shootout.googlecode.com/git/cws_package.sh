# Copyright (c) 2011 The Native Client Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.
#
# This script is used to package up the web-shootout for the Chrome Web Store

IMAGES="NaCl*.png"
MANIFEST="manifest.json"
WEB="js run.html style.css"
NEXES="benchmarks_browser*.nexe"
NMF="benchmark.nmf"
ZIP_NAME="nacl-bench-app.zip"

if [ "$1" ] ; then
  ZIP_NAME=$1
fi

zip ../${ZIP_NAME} -r ${IMAGES} ${MANIFEST} ${WEB} ${NEXES} ${NMF}