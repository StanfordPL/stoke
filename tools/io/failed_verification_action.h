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

#ifndef STOKE_TOOLS_IO_FAILED_VERIFICATION_ACTION_H
#define STOKE_TOOLS_IO_FAILED_VERIFICATION_ACTION_H

#include <iostream>

#include "src/search/failed_verification_action.h"

namespace stoke {

struct FailedVerificationActionReader {
  void operator()(std::istream& is, FailedVerificationAction& t);
};

struct FailedVerificationActionWriter {
  void operator()(std::ostream& os, const FailedVerificationAction t);
};

} // namespace stoke

#endif


