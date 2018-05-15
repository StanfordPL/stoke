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

#include <sstream>

#include "src/cfg/cfg.h"
#include "src/cfg/paths.h"
#include "src/symstate/memory/trivial.h"
#include "src/validator/bounded.h"
#include "src/validator/invariants/conjunction.h"
#include "src/validator/invariants/memory_equality.h"
#include "src/validator/invariants/no_signals.h"
#include "src/validator/invariants/state_equality.h"
#include "src/validator/invariants/true.h"

#define BOUNDED_DEBUG(X) { X }

#define MAX(X,Y) ( (X) > (Y) ? (X) : (Y) )
#define MIN(X,Y) ( (X) < (Y) ? (X) : (Y) )

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;

void BoundedValidator::callback(ObligationChecker::Result& result, CallbackData& info) {

  auto& P = info.P;
  auto& Q = info.Q;

  // if it didn't verify, take note
  if(!result.verified) {
    correct_.store(false); 

    if(result.has_ceg) {
      found_ceg_.store(true);
      lock_guard<mutex> guard(ceg_m);
      counterexamples_.push_back(result.target_ceg);
      if(counterexamples_.size() == 1) {
        target_final_state_ = result.target_final_ceg;
        rewrite_final_state_ = result.rewrite_final_ceg;
      }
    }
  }

  // count the response
  count_++;

  BOUNDED_DEBUG(
  // prepare result string.
  stringstream ss;
  ss << "[bv] Paths " << P << " / " << Q << endl;
  ss << "     verified: " << (result.verified ? "true" : "false") << endl;
  if(result.has_error) {
    ss << "    error: " << result.error_message << endl;
  }
  auto output = ss.str();

  // print results.
  {
    lock_guard<mutex> guard(print_m);
    cout << output;
  })

}

void BoundedValidator::verify_pair(const Cfg& target, const Cfg& rewrite, 
                                   const CfgPath& P, const CfgPath& Q, 
                                   ObligationChecker::Callback& callback) {

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

  CallbackData* cd = new CallbackData();
  cd->P = P;
  cd->Q = Q;

  bool equiv;
  vector<pair<CpuState, CpuState>> testcases;
  if (heap_out_ || stack_out_) {
    checker_.check(target, rewrite, target.get_entry(), rewrite.get_entry(), P, Q, assume, prove, testcases, callback, (void*)cd);
  } else {
    checker_.check(target, rewrite, target.get_entry(), rewrite.get_entry(), P, Q, assume, prove_state, testcases, callback, (void*)cd);
  }

}



bool BoundedValidator::verify(const Cfg& target, const Cfg& rewrite) {


#ifdef DEBUG_VALIDATOR
  cout << "Enter the dragon!" << endl;
#endif
  // State
  counterexamples_.clear();
  count_.store(0);
  found_ceg_.store(false);
  correct_.store(true);
  has_error_ = false;
  error_ = "";

  vector<CfgPath> target_paths;
  vector<CfgPath> rewrite_paths;

  // Step 0: Background checks
  try {
    sanity_checks(target, rewrite);
  } catch (validator_error e) {
    error_ = e.get_message();
    has_error_ = true; 
    return false;
  }

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

  ObligationChecker::Callback callback = [this] (ObligationChecker::Result& result, void* info) {
    this->callback(result, *static_cast<CallbackData*>(info)); 
  };


  // Step 2: check each pair of paths
  size_t total = target_paths.size() * rewrite_paths.size();
  size_t count = 0;
  for (auto target_path : target_paths) {
    for (auto rewrite_path : rewrite_paths) {

      BOUNDED_DEBUG(
          lock_guard<mutex> guard(print_m);
          cout << "[bv] Checking pair: " << target_path << "; " << rewrite_path << endl;
      )

      count++;
      verify_pair(target, rewrite, target_path, rewrite_path, callback);

      // Case 1: verify failed and we have ceg; return false
      // Case 2: verify failed and no counterexampe: keep going
      // Case 3: verify worked: keep going

      if(bailout_ && found_ceg_.load()) {
        // TODO: tell obligation checker to stop.
        return false;
      }
    }
  }

  // Wait for everything to finish and/or to get a "no" answer.
  checker_.block_until_complete();

  return correct_.load();
}


