// Copyright 2013-2016 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include <array>
#include <string>
#include <utility>
#include <unistd.h>

#include "src/ext/cpputil/include/io/console.h"
#include "tools/io/stoke_path.h"

using namespace std;
using namespace stoke;
using namespace x64asm;
using namespace cpputil;

namespace stoke {

string stoke_bin_path() {
  char buf[1000];
  string res;
  if (readlink("/proc/self/exe", buf, 999) > 0) {
    res = string(buf);
  } else {
    if (readlink("/proc/curproc/file", buf, 999) > 0) {
      res = string(buf);
    } else {
      Console::error() << "Could not locate the bin directory of STOKE" << endl;
    }
  }
  res = res.substr(0, res.rfind("/"));
  if (res == "") {
    Console::error() << "Could not locate the bin directory of STOKE" << endl;
  }
  return res;
}


} // namespace stoke
