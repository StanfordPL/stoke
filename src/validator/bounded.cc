// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include "src/cfg/cfg.h"
#include "src/validator/bounded.h"

using namespace std;
using namespace stoke;
using namespace x64asm;


void BoundedValidator::learn_paths(const Cfg& cfg, bool is_rewrite) {
  sandbox_->insert_function(cfg);
  sandbox_->set_entrypoint(cfg.get_code()[0].get_operand<x64asm::Label>(0));
  sandbox_->insert_after(BoundedValidator::sandbox_callback, this);
  for(size_t i = 0; i < sandbox_->num_inputs(); ++i) {
    Path p;
    current_path_ = &p;

    sandbox_->run(i);

    paths_[is_rewrite].push_back(p);
    path_to_testcase_[is_rewrite][p].push_back(i);
  }
}

void BoundedValidator::sandbox_callback(const StateCallbackData& data, void* arg) {

  auto ptr = (BoundedValidator*)arg;

  // Record whenever a basic block is entered
  auto cfg = Cfg(data.code, RegSet::universe(), RegSet::universe());
  auto location = cfg.get_loc(data.line); 
  if(location.second == 0) {
    auto bb = location.first; 
    ptr->current_path_->push_back(bb);
  }
  
}

bool BoundedValidator::verify(const Cfg& target, const Cfg& rewrite) {

#ifdef DEBUG_VALIDATOR
  std::cout << "Enter the dragon!" << std::endl;
#endif
  // State
  has_error_ = false;

  // Step 0: check that all the instructions are supported in target/rewrite

  // Step 1: get the paths taken by every testcase
  learn_paths(target, false);
  learn_paths(rewrite, true);

  for(auto pair : path_to_testcase_[0]) {
    auto path = pair.first;
    cout << "PATH: ";
    for(auto index : path) {
      cout << index << "  ";
    }
    cout << endl;
    cout << "  ( " << pair.second.size() << " testcases )" << endl;
  }

  // Step 2: check each pair of feastible paths

  // Step 3: check each pair of infeasible paths

  return false;
}



