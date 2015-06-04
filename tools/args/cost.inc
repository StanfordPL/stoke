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

#ifndef STOKE_TOOLS_ARGS_COST_INC
#define STOKE_TOOLS_ARGS_COST_INC

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/serialize/line_reader.h"
#include "src/cost/cost_function.h"
#include "src/cost/cost.h"

namespace stoke {

cpputil::Heading& cost_heading =
  cpputil::Heading::create("Cost Function Evaluation Options:");

cpputil::ValueArg<Cost>& max_cost_arg =
  cpputil::ValueArg<Cost>::create("max_cost")
  .usage("<int>")
  .description("Give up once cost exceeds this value")
  .default_val(CostFunction::max_cost - 1);

cpputil::ValueArg<std::string, cpputil::LineReader<>>& cost_function_arg =
      cpputil::ValueArg<std::string, cpputil::LineReader<>>::create("cost")
      .usage("<string>")
      .description(R"(The cost function.  Can be an arbitrary expression involving the following constructs:
# - arithmetic operators: + - * / % == << >> < > >= <= & |
# - binsize: Size of the binary
# - correctness: Correctness according to the testcases
# - latency: Latency of the instructions
# - measured: Measured latency (more precise for loops than 'latency')
# - size: The number of instructions
# - sseavx: 1 if both sse and avx instructions are used, 0 otherwise)")
      .default_val("correctness+latency");

cpputil::ValueArg<std::string, cpputil::LineReader<>>& correctness_arg =
      cpputil::ValueArg<std::string, cpputil::LineReader<>>::create("correctness")
      .usage("<string>")
      .description("Expression to check if code is correct")
      .default_val("correctness == 0");

} //namespace stoke

#endif
