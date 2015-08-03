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

#ifndef STOKE_TOOLS_ARGS_NACL2_INC
#define STOKE_TOOLS_ARGS_NACL2_INC

#include "src/cost/nacl2.h"

namespace stoke {

cpputil::Heading& nacl_heading =
  cpputil::Heading::create("NaCl Cost Options:");

cpputil::ValueArg<Cost>& nacl_restricted_register_arg =
  cpputil::ValueArg<Cost>::create("restricted_reg_penalty")
  .usage("<int>")
  .description("Penalty for memory access without restricted register")
  .default_val(1);

cpputil::ValueArg<Cost>& nacl_bad_penalty_arg =
  cpputil::ValueArg<Cost>::create("bad_instruction_penalty")
  .usage("<int>")
  .description("Penalty for illegal NaCl instruction")
  .default_val(100);


} // namespace stoke

#endif
