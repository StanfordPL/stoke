// Copyright 2013-2016 Stanford University
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
#include "src/cfg/paths.h"
#include "src/ext/cpputil/include/io/console.h"
#include "src/symstate/memory/trivial.h"
#include "src/validator/bounded.h"
#include "src/validator/invariants/conjunction.h"
#include "src/validator/invariants/memory_equality.h"
#include "src/validator/invariants/no_signals.h"
#include "src/validator/invariants/state_equality.h"
#include "src/validator/invariants/true.h"

#define BOUNDED_DEBUG(X) { }

#define MAX(X,Y) ( (X) > (Y) ? (X) : (Y) )
#define MIN(X,Y) ( (X) < (Y) ? (X) : (Y) )

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;


bool BoundedValidator::verify_pair(const Cfg& target, const Cfg& rewrite, const CfgPath& P, const CfgPath& Q) {
  StateEqualityInvariant assume_state(target.def_ins());
  StateEqualityInvariant prove_state(target.live_outs());
  NoSignalsInvariant no_sig;

  MemoryEqualityInvariant memory_equal;

  ConjunctionInvariant assume;
  assume.add_invariant(&assume_state);
  assume.add_invariant(&memory_equal);
  assume.add_invariant(&no_sig);

  ConjunctionInvariant prove;
  prove.add_invariant(&prove_state);
  prove.add_invariant(&memory_equal);

  //BOUNDED_DEBUG(cout << "[bv] heap/stack out: " << heap_out_ << " " << stack_out_ << endl;)
  bool equiv;
  if (heap_out_ || stack_out_) {
    equiv = check(target, rewrite, target.get_entry(), rewrite.get_entry(), P, Q, assume, prove);
  } else {
    equiv = check(target, rewrite, target.get_entry(), rewrite.get_entry(), P, Q, assume, prove_state);
  }

  if (checker_has_ceg()) {
    assert(!equiv);
    counterexamples_.push_back(checker_get_target_ceg());
    target_final_state_ = checker_get_target_ceg_end();
    rewrite_final_state_ = checker_get_rewrite_ceg_end();
  }

  return equiv;
}



bool BoundedValidator::verify(const Cfg& init_target, const Cfg& init_rewrite) {


#ifdef DEBUG_VALIDATOR
  std::cout << "Enter the dragon!" << std::endl;
#endif
  // State
  counterexamples_.clear();

  vector<CfgPath> target_paths;
  vector<CfgPath> rewrite_paths;

  has_error_ = false;
  init_mm();

  auto target = inline_functions(init_target);
  auto rewrite = inline_functions(init_rewrite);

  try {

    // Step 0: Background checks
    sanity_checks(target, rewrite);

    // Step 1: get all the paths from the enumerator
    for (auto path : CfgPaths::enumerate_paths(target, bound_)) {
      //cout << "adding TP: " << path << endl;
      target_paths.push_back(path);
    }
    //cout << "REWRITE: " << endl << rewrite.get_code() << endl;
    for (auto path : CfgPaths::enumerate_paths(rewrite, bound_)) {
      //cout << "adding RP: " << path << endl;
      rewrite_paths.push_back(path);
    }

    // Handle the shorter paths first, please
    // [helps find counterexamples sooner]
    auto by_length = [](const CfgPath& lhs, const CfgPath& rhs) {
      return lhs.size() < rhs.size();
    };
    sort(target_paths.begin(), target_paths.end(), by_length);
    sort(rewrite_paths.begin(), rewrite_paths.end(), by_length);

    // Step 2: check each pair of paths
    bool ok = true;
    size_t total = target_paths.size() * rewrite_paths.size();

    if(target_paths.size() == 0) {
      Console::warn() << "There are no paths through the target with bound " << bound_ << endl;
    }
    if(rewrite_paths.size() == 0) {
      Console::warn() << "There are no paths through the rewrite with bound " << bound_ << endl;
    }
    if(total == 0) {
      Console::warn() << "(No paths will be tested.)" << endl;
    }

    size_t count = 0;
    for (auto target_path : target_paths) {
      for (auto rewrite_path : rewrite_paths) {

        BOUNDED_DEBUG(cout << "[bv] Checking pair: " << target_path << "; " << rewrite_path << endl;)

        count++;
        ok &= verify_pair(target, rewrite, target_path, rewrite_path);

        // Case 1: verify failed and we have ceg; return false
        // Case 2: verify failed and no counterexampe: keep going
        // Case 3: verify worked: keep going

        if (bailout_ && !ok && counterexamples_.size() > 0)
          break;
      }
      if (bailout_ && !ok && counterexamples_.size() > 0)
        break;
    }

    reset_mm();
    return ok;

  } catch (validator_error e) {
    has_error_ = true;
    error_ = e.get_message();
    error_file_ = e.get_file();
    error_line_ = e.get_line();

    reset_mm();
    return false;
  }

  reset_mm();

  has_error_ = true;
  error_ = "Internal error!  Unexpected control flow.";
  return false;

}


