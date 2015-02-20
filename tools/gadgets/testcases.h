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

#ifndef STOKE_TOOLS_GADGETS_TESTCASES_H
#define STOKE_TOOLS_GADGETS_TESTCASES_H

#include <algorithm>
#include <random>

#include "src/state/cpu_state.h"
#include "src/state/cpu_states.h"
#include "tools/args/testcases.inc"

namespace stoke {

class TestcaseGadget : public CpuState {
public:
  TestcaseGadget(std::default_random_engine::result_type seed) : CpuState() {
    if (shuffle_tc_arg) {
      std::default_random_engine rand;
      rand.seed(seed);
      std::shuffle(testcases_arg.value().begin(), testcases_arg.value().end(), rand);
    }
    const auto idx = std::min(testcases_arg.value().size() - 1, testcase_idx_arg.value());
    *(static_cast<CpuState*>(this)) = testcases_arg.value()[idx];
  }
};

class TestcasesGadget : public CpuStates {
public:
  TestcasesGadget(std::default_random_engine::result_type seed) : CpuStates() {
    if (shuffle_tc_arg) {
      std::default_random_engine rand;
      rand.seed(seed);
      std::shuffle(testcases_arg.value().begin(), testcases_arg.value().end(), rand);
    }
    *(static_cast<CpuStates*>(this)) = testcases_arg.value();
  }
};

class TrainingSetGadget : public CpuStates {
public:
  TrainingSetGadget(std::default_random_engine::result_type seed) : CpuStates() {
    if (shuffle_tc_arg) {
      std::default_random_engine rand;
      rand.seed(seed);
      std::shuffle(testcases_arg.value().begin(), testcases_arg.value().end(), rand);
    }
    for (size_t i = 0, ie = testcases_arg.value().size(); i < ie; ++i) {
      if (training_set_arg.value().find(i) != training_set_arg.value().end()) {
        push_back(testcases_arg.value()[i]);
      }
    }
  }
};

class TestSetGadget : public CpuStates {
public:
  TestSetGadget(std::default_random_engine::result_type seed) : CpuStates() {
    if (shuffle_tc_arg) {
      std::default_random_engine rand;
      rand.seed(seed);
      std::shuffle(testcases_arg.value().begin(), testcases_arg.value().end(), rand);
    }
    for (size_t i = 0, ie = testcases_arg.value().size(); i < ie; ++i) {
      if (test_set_arg.value().find(i) != test_set_arg.value().end()) {
        push_back(testcases_arg.value()[i]);
      }
    }
  }
};

} // namespace stoke

#endif
