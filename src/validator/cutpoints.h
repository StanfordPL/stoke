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

#ifndef STOKE_SRC_VALIDATOR_CUTPOINTS_H
#define STOKE_SRC_VALIDATOR_CUTPOINTS_H

#include "src/cfg/cfg.h"
#include "src/sandbox/sandbox.h"

#include <vector>
#include <map>

namespace stoke {

class Cutpoints {

public:

  /** Initiates computation of the cutpoints for target/rewrite. */
  Cutpoints(const Cfg& target, const Cfg& rewrite, Sandbox& sandbox) :
    target_(target), rewrite_(rewrite), sandbox_(sandbox) {
    compute();
  }

  /** Get testcases representing the data at a given cutpoint. */
  std::vector<CpuState> data_at(size_t i, bool is_rewrite) {
    if (is_rewrite) {
      assert(i < rewrite_count());
      return rewrite_cutpoint_data[i];
    } else {
      assert(i < target_count());
      return target_cutpoint_data[i];
    }
  }

  /** Get cutpoint locations. */
  std::vector<Cfg::id_type> target_cutpoint_locations() {
    return target_cutpoints_;
  }
  /** Get cutpoint locations. */
  std::vector<Cfg::id_type> rewrite_cutpoint_locations() {
    return rewrite_cutpoints_;
  }


  /** Get the number of cutpoints found. */
  size_t target_count() {
    return target_cutpoints_.size();
  }
  /** Get the number of cutpoints found. */
  size_t rewrite_count() {
    return rewrite_cutpoints_.size();
  }

private:

  /** The target. */
  const Cfg& target_;
  /** The rewrite. */
  const Cfg& rewrite_;
  /** The sandbox. Won't be "harmed", except with regard to callbacks. */
  Sandbox& sandbox_;

  /** The set of computed cutpoints, which are always going to be at the end
    of a basic block (and thus identified by a Cfg::id_type).  They can either
    refer to immediately after the last instruction (if control-flow falls
    through), or can refer to immediately before the last jump. */
  std::vector<Cfg::id_type> target_cutpoints_;
  /** Track if the cutpoint blocks end with a jump. */
  std::vector<bool> target_cutpoint_ends_with_jump_;
  /** Cutpoints for the rewrite. */
  std::vector<Cfg::id_type> rewrite_cutpoints_;
  /** Track if the cutpoint blocks end with a jump. */
  std::vector<bool> rewrite_cutpoint_ends_with_jump_;

  /** Data collected from target cutpoints. */
  std::map<size_t, std::vector<CpuState>> target_cutpoint_data;
  /** Data collected from rewrite cutpoints. */
  std::map<size_t, std::vector<CpuState>> rewrite_cutpoint_data;

  /** Does a given basic block end in a jump? */
  bool ends_with_jump(const Cfg& cfg, Cfg::id_type block);

  /** Find the cutpoints for the target/rewrite. */
  void compute();

  /** Check if the current set of cutpoints is okay. */
  bool check();

  ////////////////////////////// CALLBACKS //////////////////////////////////

  struct CallbackParam {
    Cutpoints* self;
    size_t callback_number;
    bool is_rewrite;
  };

  /** The callback used for gathering data from each of the cutpoints */
  static void callback(const StateCallbackData& data, void* arg);

  /** The list of cutpoint-memory states in the target. */
  std::vector<CpuState> callback_target_states_;
  /** The list of cutpoint-memory states in the rewrite. */
  std::vector<CpuState> callback_rewrite_states_;
  /** The list of cutpoints we've seen in the target. */
  std::vector<size_t> callback_target_trace_;
  /** The list of cutpoints we've seen in the rewrite. */
  std::vector<size_t> callback_rewrite_trace_;


};

} // namespace stoke

#endif
