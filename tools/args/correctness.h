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

#ifndef STOKE_TOOLS_ARGS_CORRECTNESS_H
#define STOKE_TOOLS_ARGS_CORRECTNESS_H

#include "src/ext/cpputil/include/command_line/command_line.h"

#include "src/cost/cost.h"
#include "src/cost/distance.h"
#include "src/cost/reduction.h"
#include "tools/io/distance.h"
#include "tools/io/reduction.h"

namespace stoke {

extern cpputil::Heading& correctness_heading;

extern cpputil::ValueArg<Distance, DistanceReader, DistanceWriter>& distance_arg;
extern cpputil::ValueArg<Reduction, ReductionReader, ReductionWriter>& reduction_arg;
extern cpputil::ValueArg<size_t>& sse_width_arg;
extern cpputil::ValueArg<size_t>& sse_count_arg;
extern cpputil::FlagArg& no_relax_reg_arg;
extern cpputil::FlagArg& relax_mem_arg;
extern cpputil::FlagArg& blocked_heap_opt_arg;
extern cpputil::ValueArg<Cost>& misalign_penalty_arg;
extern cpputil::ValueArg<Cost>& sig_penalty_arg;
extern cpputil::ValueArg<Cost>& min_ulp_arg;
extern cpputil::ValueArg<size_t>& max_size_bytes;
extern cpputil::ValueArg<Cost>& max_size_base_penalty;
extern cpputil::ValueArg<Cost>& max_size_linear_penalty;

} // namespace stoke


#ifdef DEFINE_STOKE_ARGS
using namespace cpputil;

namespace stoke {

Heading& correctness_heading =
  Heading::create("Correctness Options:");

ValueArg<Distance, DistanceReader, DistanceWriter>& distance_arg =
  ValueArg<Distance, DistanceReader, DistanceWriter>::create("distance")
  .usage("(hamming|ulp|extension)")
  .description("Metric for measuring distance between states")
  .default_val(Distance::HAMMING);

ValueArg<Reduction, ReductionReader, ReductionWriter>& reduction_arg =
  ValueArg<Reduction, ReductionReader, ReductionWriter>::create("reduction")
  .usage("(max|sum|extension)")
  .description("Reduction method")
  .default_val(Reduction::SUM);

ValueArg<size_t>& sse_width_arg =
  ValueArg<size_t>::create("sse_width")
  .usage("(1|2|4|8)")
  .description("Number of bytes in sse elements")
  .default_val(8);

ValueArg<size_t>& sse_count_arg =
  ValueArg<size_t>::create("sse_count")
  .usage("<int>")
  .description("Number of values in sse registers")
  .default_val(4);

FlagArg& no_relax_reg_arg =
  FlagArg::create("no_relax_reg")
  .description("Disallow correct values in incorrect register locations");

FlagArg& relax_mem_arg =
  FlagArg::create("relax_mem")
  .description("Allow correct values in incorrect memory locations");

FlagArg& blocked_heap_opt_arg =
  FlagArg::create("blocked_heap_opt")
  .description("Enables an optimized version of relax_mem that assumes heap writes occur in 128-bit blocks");

ValueArg<Cost>& misalign_penalty_arg =
  ValueArg<Cost>::create("misalign_penalty")
  .usage("<int>")
  .description("Penalty for correct values in incorrect locations")
  .default_val(1);

ValueArg<Cost>& sig_penalty_arg =
  ValueArg<Cost>::create("sig_penalty")
  .usage("<int>")
  .description("Penalty for incorrect signal behavior")
  .default_val(10000);

ValueArg<Cost>& min_ulp_arg =
  ValueArg<Cost>::create("min_ulp")
  .usage("<int>")
  .description("Minimum ULP value to record")
  .default_val(0);

ValueArg<size_t>& max_size_bytes =
  ValueArg<size_t>::create("max_size_bytes")
  .usage("<int>")
  .description("Add penalty if assembled rewrite exceeds this size. (when non-zero)")
  .default_val(0);

ValueArg<Cost>& max_size_base_penalty =
  ValueArg<Cost>::create("max_size_base_penalty")
  .usage("<int>")
  .description("The one-time cost for having a rewrite too large.")
  .default_val(0);

ValueArg<Cost>& max_size_linear_penalty =
  ValueArg<Cost>::create("max_size_linear_penalty")
  .usage("<int>")
  .description("The cost per bytes for having a rewrite too large.")
  .default_val(0);

} // namespace stoke

#endif

#endif
