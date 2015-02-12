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

#ifndef STOKE_SRC_STATE_ERROR_CODE_H
#define STOKE_SRC_STATE_ERROR_CODE_H

#include <string>

namespace stoke {

/** Hardware signal states. */
enum class ErrorCode {
  NORMAL = 0,
  SIGILL_ = 4,
  SIGFPE_ = 8,
  SIGKILL_ = 9,
  SIGBUS_ = 10,
  SIGSEGV_ = 11,

  SIGCUSTOM_EXCEEDED_MAX_JUMPS = 256,
  SIGCUSTOM_INVALID_POPF = 257,
  SIGCUSTOM_LINKER_ERROR = 258,
  SIGCUSTOM_ABI_VIOLATION = 259,
  SIGCUSTOM_NO_RETURN = 260,
};

std::string readable_error_code(ErrorCode ec);

} // namespace stoke

#endif
