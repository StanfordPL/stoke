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

#ifndef STOKE_TOOLS_ARGS_REALTIME_INC
#define STOKE_TOOLS_ARGS_REALTIME_INC

#include "src/ext/cpputil/include/command_line/command_line.h"

#include "src/cost/cost.h"

namespace stoke {

cpputil::Heading& realtime_heading =
  cpputil::Heading::create("\"realtime\" Cost Function Options:");

cpputil::ValueArg<size_t>& realtime_reps_arg =
  cpputil::ValueArg<size_t>::create("realtime_reps")
  .description("How many times should the code be executed to estimate real runtime?")
  .default_val(100);

} // namespace stoke

#endif
