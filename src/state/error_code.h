// Copyright 2014 eric schkufza
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

namespace stoke {

/** Hardware signal states. */
enum class ErrorCode {
  NORMAL = 0,
	SIGILL_ = 4,
  SIGFPE_ = 8,
  SIGKILL_ = 9,
  SIGSEGV_ = 11
};

} // namespace stoke

#endif
