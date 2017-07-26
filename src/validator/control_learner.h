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

#ifndef STOKE_SRC_VALIDATOR_CONTROL_LEARNER_H
#define STOKE_SRC_VALIDATOR_CONTROL_LEARNER_H

#include "src/cfg/cfg.h"
#include "src/sandbox/sandbox.h"

#include <vector>
#include <map>

//#define DEBUG_CUTPOINTS_DATA

namespace stoke {

class ControlLearner {

public:

  /** Initiates computation of the cutpoints for target/rewrite. */
  ControlLearner(const Cfg& target, const Cfg& rewrite, Sandbox& sandbox) :
    target_(target), rewrite_(rewrite), sandbox_(sandbox) {
    compute();
  }

private:

  typedef std::vector<std::vector<int64_t>> Matrix;
  typedef std::vector<int64_t> Vector;

  struct TracePoint {
    Cfg::id_type block_id;
    CpuState cs;
  };

  /** This is the main function that computes all the matricies and fills local variables. */
  void compute();

  /** Get a complete trace from running the Cfg on a testcase and save into 'trace' */
  void mine_data(const Cfg& cfg, size_t testcase, std::vector<TracePoint>& trace);

  /** Helper: Check if a basic block ends with a jump or not. */
  static bool ends_with_jump(const Cfg& cfg, Cfg::id_type block);
  
  ////////////////////////////// Matrix Functions //////////////////////////////

  Matrix remove_constant_cols(Matrix matrix);
  Vector matrix_vector_mult(Matrix matrix, Vector vect, bool ignore_first);
  bool in_nullspace(Matrix matrix, Vector vect, bool ignore_first);
  Matrix solve_diophantine(Matrix matrix);
  void print_matrix(Matrix m);
  void print_matrix(Vector m);


  ////////////////////////////// DATA-STORAGE //////////////////////////////////

  Cfg target_;
  Cfg rewrite_;
  Sandbox sandbox_;

  std::vector<std::vector<TracePoint>> target_traces_;
  std::vector<std::vector<TracePoint>> rewrite_traces_;

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
