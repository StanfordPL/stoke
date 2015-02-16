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

#ifndef STOKE_TOOLS_ARGS_LATENCY_H
#define STOKE_TOOLS_ARGS_LATENCY_H

#include "src/ext/cpputil/include/command_line/command_line.h"

#include "src/cost/cost.h"

namespace stoke {

extern cpputil::Heading& latency_heading;

extern cpputil::ValueArg<Cost>& nesting_penalty_arg;

} // namespace stoke

#ifdef DEFINE_STOKE_ARGS

using namespace cpputil;

namespace stoke {

Heading& latency_heading =
  Heading::create("\"latency\" Cost Function Options:");

ValueArg<Cost>& nesting_penalty_arg =
  ValueArg<Cost>::create("nesting_penalty")
  .usage("<int>")
  .description("Latency multiplier for nested code")
  .default_val(5);

} // namespace stoke


#endif
#endif
