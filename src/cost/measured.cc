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

#include "src/cost/measured.h"
#include "src/ext/x64asm/include/x64asm.h"

using namespace std;

namespace stoke {

// @todo THIS IS A HACK AROUND PORTING OVER THE NEW X64ASM CHANGES
//       CHANGE SIZE BACK TO SYMBOLIC CONSTANT AND FIX TABLE CONTENTS
array<stoke::Cost, 4000> MeasuredCost::latencies_ {{
    #include "src/cost/tables/haswell_latency.h"
  }
};

} //namespace stoke


