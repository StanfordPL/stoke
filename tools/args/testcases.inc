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

#ifndef STOKE_TOOLS_ARGS_TESTCASES_INC
#define STOKE_TOOLS_ARGS_TESTCASES_INC

#include <set>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/serialize/span_reader.h"
#include "src/ext/cpputil/include/serialize/span_writer.h"

#include "src/state/cpu_states.h"
#include "tools/io/cpu_states.h"

namespace {

std::set<size_t> create_default_testcase_set() {
  std::vector<size_t> n(10000);
  std::iota(n.begin(), n.end(), 0);
  return std::set<size_t>(n.begin(), n.end());
}

} // namespace

namespace stoke {

cpputil::Heading& testcases_heading =
  cpputil::Heading::create("Testcase Options:");

cpputil::FileArg<CpuStates, CpuStatesReader, CpuStatesWriter>& testcases_arg =
  cpputil::FileArg<CpuStates, CpuStatesReader, CpuStatesWriter>::create("testcases")
  .usage("<path/to/file>")
  .description("Testcases");

cpputil::FlagArg& shuffle_tc_arg =
  cpputil::FlagArg::create("shuffle_testcases")
  .description("Shuffle testcase ordering");

cpputil::ValueArg<std::set<size_t>, cpputil::SpanReader<std::set<size_t>, cpputil::Range<size_t, 0, 1024 * 1024>>,
        cpputil::SpanWriter<std::set<size_t>, cpputil::Range<size_t, 0, 1024 * 1024>>>& training_set_arg =
          cpputil::ValueArg<std::set<size_t>, cpputil::SpanReader<std::set<size_t>,
          cpputil::Range<size_t, 0, 1024 * 1024>>, cpputil::SpanWriter<std::set<size_t>, cpputil::Range<size_t, 0, 1024 * 1024>>>::create("training_set")
          .usage("{ 0 1 ... 9 }")
          .description("Subset of testcase indices to use for training sets")
          .default_val({0, 1, 2, 3});

cpputil::ValueArg<std::set<size_t>, cpputil::SpanReader<std::set<size_t>, cpputil::Range<size_t, 0, 1024 * 1024>>,
        cpputil::SpanWriter<std::set<size_t>, cpputil::Range<size_t, 0, 1024 * 1024>>>& test_set_arg =
          cpputil::ValueArg<std::set<size_t>, cpputil::SpanReader<std::set<size_t>, cpputil::Range<size_t, 0, 1024 * 1024>>,
          cpputil::SpanWriter<std::set<size_t>, cpputil::Range<size_t, 0, 1024 * 1024>>>::create("test_set")
          .usage("{ 0 1 ... 9 }")
          .description("Subset of testcase indices to use for test sets")
          .default_val(create_default_testcase_set());

cpputil::ValueArg<size_t>& testcase_idx_arg =
  cpputil::ValueArg<size_t>::create("index")
  .usage("<int>")
  .description("Testcase index")
  .default_val(0);

} // namespace stoke

#endif
