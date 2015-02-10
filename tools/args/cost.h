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

#ifndef STOKE_TOOLS_ARGS_COST_H
#define STOKE_TOOLS_ARGS_COST_H

#include "src/ext/cpputil/include/command_line/command_line.h"

#include "src/cost/cost.h"

namespace stoke {

extern cpputil::Heading& cost_heading;

extern cpputil::ValueArg<Cost>& max_cost_arg;

extern cpputil::ValueArg<uint32_t>& k_arg;

} // namespace stoke

#endif

