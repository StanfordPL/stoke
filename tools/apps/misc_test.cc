// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


#include <cstdlib>
#include <ctime>

#include "src/cfg/cfg.h"
#include "src/sandbox/sandbox.h"
#include "src/validator/cutpoints.h"

using namespace stoke;
using namespace std;
using namespace x64asm;
using namespace cpputil;

int main(int argc, char** argv) {

  Sandbox sb;
  x64asm::Code c, d;

  Cfg t(c, RegSet::universe(), RegSet::universe());
  Cfg r(d, RegSet::universe(), RegSet::universe());

  Cutpoints cpts(t, r, sb);
  cpts.test();
}


