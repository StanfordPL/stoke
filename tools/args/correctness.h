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

#ifndef STOKE_TOOLS_ARGS_CORRECTNESS_H
#define STOKE_TOOLS_ARGS_CORRECTNESS_H

#include "src/ext/cpputil/include/command_line/command_line.h"

#include "src/args/distance.h"
#include "src/args/reduction.h"
#include "src/cost/cost.h"
#include "src/cost/distance.h"
#include "src/cost/reduction.h"

namespace stoke {

extern cpputil::Heading& correctness_heading;

extern cpputil::ValueArg<Distance, DistanceReader, DistanceWriter>& distance_arg;
extern cpputil::ValueArg<Reduction, ReductionReader, ReductionWriter>& reduction_arg;
extern cpputil::ValueArg<size_t>& sse_width_arg;
extern cpputil::ValueArg<size_t>& sse_count_arg;
extern cpputil::FlagArg& relax_reg_arg;
extern cpputil::FlagArg& relax_mem_arg;
extern cpputil::ValueArg<Cost>& misalign_penalty_arg;
extern cpputil::ValueArg<Cost>& sig_penalty_arg;
extern cpputil::ValueArg<Cost>& min_ulp_arg;

} // namespace stoke

#endif
