// Copyright 2013-2015 Stanford University
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


#include "src/state/error_code.h"

#include <cassert>

using namespace std;
using namespace stoke;

string stoke::readable_error_code(ErrorCode ec) {
  switch (ec) {
  case ErrorCode::NORMAL:
    return "normal exit";
  case ErrorCode::SIGILL_:
    return "SIGILL (illegal instruction)";
  case ErrorCode::SIGFPE_:
    return "SIGFPE (erroneous arithmetic operation)";
  case ErrorCode::SIGKILL_:
    return "SIGKILL (kill)";
  case ErrorCode::SIGBUS_:
    return "SIGBUS (bus error)";
  case ErrorCode::SIGSEGV_:
    return "SIGSEGV (segmentation fault)";
  case ErrorCode::SIGCUSTOM_EXCEEDED_MAX_JUMPS:
    return "SIGCUSTOM (exceeded the maximum number of jumps)";
  case ErrorCode::SIGCUSTOM_INVALID_POPF:
    return "SIGCUSTOM (invalid popf; can only modify AF, CF, OF, PF, SF, and ZF)";
  case ErrorCode::SIGCUSTOM_LINKER_ERROR:
    return "SIGCUSTOM (linker error)";
  case ErrorCode::SIGCUSTOM_ABI_VIOLATION:
    return "SIGCUSTOM (abi violation)";
  case ErrorCode::SIGCUSTOM_NO_RETURN:
    return "SIGCUSTOM (no return)";
  case ErrorCode::SIGCUSTOM_STACK_SMASH:
    return "SIGCUSTOM (corrupted return address on stack)";
  case ErrorCode::SIGCUSTOM_ASSEMBLER_ERROR:
    return "SIGCUSTOM (assembler error)";
  default:
    assert(false);
    return "STOKE_BUG";
  }
}

