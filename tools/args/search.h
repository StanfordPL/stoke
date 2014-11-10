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

#ifndef STOKE_TOOLS_ARGS_SEARCH_H
#define STOKE_TOOLS_ARGS_SEARCH_H

#include <string>

#include "src/ext/cpputil/include/command_line/command_line.h"

#include "src/args/init.h"
#include "src/search/init.h"

namespace stoke {

extern cpputil::Heading& search_heading;

extern cpputil::ValueArg<size_t>& instruction_mass_arg;
extern cpputil::ValueArg<size_t>& opcode_mass_arg;
extern cpputil::ValueArg<size_t>& operand_mass_arg;
extern cpputil::ValueArg<size_t>& local_swap_mass_arg;
extern cpputil::ValueArg<size_t>& global_swap_mass_arg;
extern cpputil::ValueArg<size_t>& resize_mass_arg;
extern cpputil::ValueArg<size_t>& extension_mass_arg;

extern cpputil::ValueArg<size_t>& timeout_itr_arg;
extern cpputil::ValueArg<size_t>& timeout_sec_arg;

extern cpputil::ValueArg<double>& beta_arg;
extern cpputil::ValueArg<size_t>& max_instrs_arg;

extern cpputil::ValueArg<Init, InitReader, InitWriter>& init_arg;

} // namespace stoke

#endif

