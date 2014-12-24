// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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

#include "tools/args/correctness.h"

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

} // namespace stoke
