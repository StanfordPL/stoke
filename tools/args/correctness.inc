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

#ifndef STOKE_TOOLS_ARGS_CORRECTNESS_INC
#define STOKE_TOOLS_ARGS_CORRECTNESS_INC

#include "src/ext/cpputil/include/command_line/command_line.h"

#include "src/cost/cost.h"
#include "src/cost/distance.h"
#include "src/cost/reduction.h"
#include "tools/io/distance.h"
#include "tools/io/reduction.h"

namespace stoke {

cpputil::Heading& correctness_heading =
  cpputil::Heading::create("Correctness Options:");

cpputil::ValueArg<Distance, DistanceReader, DistanceWriter>& distance_arg =
  cpputil::ValueArg<Distance, DistanceReader, DistanceWriter>::create("distance")
  .usage("(hamming|ulp|extension)")
  .description("Metric for measuring distance between states")
  .default_val(Distance::HAMMING);

cpputil::ValueArg<Reduction, ReductionReader, ReductionWriter>& reduction_arg =
  cpputil::ValueArg<Reduction, ReductionReader, ReductionWriter>::create("reduction")
  .usage("(max|sum|extension)")
  .description("Reduction method")
  .default_val(Reduction::SUM);

cpputil::ValueArg<size_t>& sse_width_arg =
  cpputil::ValueArg<size_t>::create("sse_width")
  .usage("(1|2|4|8)")
  .description("Number of bytes in sse elements")
  .default_val(8);

cpputil::ValueArg<size_t>& sse_count_arg =
  cpputil::ValueArg<size_t>::create("sse_count")
  .usage("<int>")
  .description("Number of values in sse registers")
  .default_val(4);

cpputil::FlagArg& no_relax_reg_arg =
  cpputil::FlagArg::create("no_relax_reg")
  .description("Disallow correct values in incorrect register locations");

cpputil::FlagArg& relax_mem_arg =
  cpputil::FlagArg::create("relax_mem")
  .description("Allow correct values in incorrect memory locations");

cpputil::FlagArg& blocked_heap_opt_arg =
  cpputil::FlagArg::create("blocked_heap_opt")
  .description("Enables an optimized version of relax_mem that assumes heap writes occur in 128-bit blocks");

cpputil::ValueArg<Cost>& misalign_penalty_arg =
  cpputil::ValueArg<Cost>::create("misalign_penalty")
  .usage("<int>")
  .description("Penalty for correct values in incorrect locations")
  .default_val(1);

cpputil::ValueArg<Cost>& sig_penalty_arg =
  cpputil::ValueArg<Cost>::create("sig_penalty")
  .usage("<int>")
  .description("Penalty for incorrect signal behavior")
  .default_val(10000);

cpputil::ValueArg<Cost>& min_ulp_arg =
  cpputil::ValueArg<Cost>::create("min_ulp")
  .usage("<int>")
  .description("Minimum ULP value to record")
  .default_val(0);

cpputil::ValueArg<size_t>& max_size_bytes =
  cpputil::ValueArg<size_t>::create("max_size_bytes")
  .usage("<int>")
  .description("Add penalty if assembled rewrite exceeds this size. (when non-zero)")
  .default_val(0);

cpputil::ValueArg<Cost>& max_size_base_penalty =
  cpputil::ValueArg<Cost>::create("max_size_base_penalty")
  .usage("<int>")
  .description("The one-time cost for having a rewrite too large.")
  .default_val(0);

cpputil::ValueArg<Cost>& max_size_linear_penalty =
  cpputil::ValueArg<Cost>::create("max_size_linear_penalty")
  .usage("<int>")
  .description("The cost per bytes for having a rewrite too large.")
  .default_val(0);

} // namespace stoke

#endif
