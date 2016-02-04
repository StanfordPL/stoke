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
    error_ = "";
    compute();
  }

  /** Get testcases representing the data at a given cutpoint. */
  std::vector<CpuState> data_at(size_t i, bool is_rewrite) {
    std::vector<CpuState> results;
    return results;
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

  bool has_error() {
    return error_ != "";
  }
  std::string get_error() {
    return error_;
  }

  void test() {
    for(size_t i = 1; i < 6; ++i) {
      std::cout << "Computing permutations of { 1 .. " << i << " }" << std::endl;

      auto perms = get_permutations(i);
      for(auto perm : perms) {
        for(auto k : perm) {
          std::cout << "  " << k;
        }
        std::cout << std::endl;
      }
    }
  }

private:

  struct TracePoint {
    Cfg::id_type block_id;
    CpuState cs;
  };

  //typedef CutpointList std::pair<std::vector<Cfg::id_type>, std::vector<Cfg::id_type>>;

  /** This is the main function that computes all the cutpoints and fills the data structures. */
  void compute();

  /** Get a complete trace from running the Cfg on a testcase and save into 'trace' */
  //void mine_data(const Cfg& cfg, size_t testcase, std::vector<TracePoint>& trace);

  /** Get a list of all possible sets of cutpoints. */
  //std::vector<CutpointList> get_possible_cutpoints();

  /** Check if a selection of cutpoints is correct. */
  //bool check_cutpoints(CutpointList& cutpoints);
                       
  /** Get a list of permutations of { 1 .. n }.  Used for guessing cutpoints.*/
  static std::vector<std::vector<size_t>> get_permutations(size_t n);

  /** Check if a basic block ends with a jump or not. */
  static bool ends_with_jump(const Cfg& cfg, Cfg::id_type block);

  ////////////////////////////// DATA-STORAGE //////////////////////////////////

  Cfg target_;
  Cfg rewrite_;
  Sandbox sandbox_;

  std::vector<std::vector<TracePoint>> target_traces_;
  std::vector<std::vector<TracePoint>> rewrite_traces_;

  ////////////////////////////// ANSWER STORAGE ////////////////////////////////

  std::vector<Cfg::id_type> target_cutpoints_;
  std::vector<Cfg::id_type> rewrite_cutpoints_;

  std::string error_;

  ////////////////////////////// DATA-MINING CALLBACKS //////////////////////////////////

  struct CallbackParam {
    Cfg::id_type block_id;
    std::vector<TracePoint>* trace;
  };

  /** The callback used for gathering data from each of the cutpoints */
  static void callback(const StateCallbackData& data, void* arg);

};

} // namespace stoke

#endif
