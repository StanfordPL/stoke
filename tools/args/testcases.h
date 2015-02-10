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

#ifndef STOKE_TOOLS_ARGS_TESTCASES_H
#define STOKE_TOOLS_ARGS_TESTCASES_H

#include <set>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/serialize/span_reader.h"

#include "src/state/cpu_states.h"
#include "tools/io/cpu_states.h"

namespace stoke {

extern cpputil::Heading& testcases_heading;

extern cpputil::FileArg<CpuStates, CpuStatesReader, CpuStatesWriter>& testcases_arg;
extern cpputil::FlagArg& shuffle_tc_arg;
extern cpputil::ValueArg<std::set<size_t>, cpputil::SpanReader<std::set<size_t>, cpputil::Range<size_t, 0, 1024 * 1024>>>&
training_set_arg;
extern cpputil::ValueArg<std::set<size_t>, cpputil::SpanReader<std::set<size_t>, cpputil::Range<size_t, 0, 1024 * 1024>>>&
test_set_arg;
extern cpputil::ValueArg<size_t>& testcase_idx_arg;

} // namespace stoke

#endif

