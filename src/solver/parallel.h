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


#ifndef _STOKE_SRC_SOLVER_PARALLEL_H
#define _STOKE_SRC_SOLVER_PARALLEL_H

#include <map>
#include <vector>
#include <atomic>
#include <thread>

#include "src/ext/cpputil/include/container/bit_vector.h"

namespace stoke {

class ParallelSolver : public SMTSolver {

public:

  /* Resets the state common to SMT solvers */
  ParallelSolver(const std::vector<SMTSolver*>& solvers) : solvers_(solvers) {
    has_error_ = true;
    error_ = "Solver not yet run";
  }

  ~ParallelSolver() {
  }

  ParallelSolver* clone() const {
    std::vector<SMTSolver*> new_solvers;
    for(auto s : solvers_) 
      new_solvers.push_back(s->clone());
    return new ParallelSolver(new_solvers);
  }

  /** Check if a query is satisfiable given constraints */
  bool is_sat(const std::vector<SymBool>& constraints) {

    std::atomic<size_t> finished;
    finished.store(0);
    std::atomic<bool> the_result;
    the_result.store(false);
    has_error_ = true;
    error_ = "no threads finished successfully";

    auto thread_body = [&](size_t index) {
      //std::cout << "Starting solver index=" << index << std::endl;
      auto& solver = *solvers_[index];
      bool my_result = solver.is_sat(constraints);
      bool has_error = solver.has_error();
      //std::cout << "Solver index=" << index << " has my_result = " << my_result << " and error=" << has_error << std::endl;

      if(!has_error) {
        size_t swap_zero = 0;
        bool i_was_first = finished.compare_exchange_strong(swap_zero, index+1);
        if(i_was_first) {
          //std::cout << "Solver index=" << index << " was first" << std::endl;
          // tell all the solvers to stop what they're doing
          interrupt();
          has_error_ = false;
          the_result.store(my_result);
          // TODO: do something for access to counterexamples here
        } else {
          //std::cout << "Solver index=" << index << " too slow!" << std::endl;
        }
      }
    };

    std::vector<std::thread> threads;
    for(size_t i = 0; i < solvers_.size(); ++i) {
      threads.push_back(std::thread(thread_body, i));
    }

    for(auto& thread : threads) {
      thread.join();
    }

    
    return the_result;

  }
  /** Check if a satisfying assignment is available. */
  bool has_model() const {
    return false;
  }
  /** Get the satisfying assignment for a bit-vector from the model.
      For now, one must specify the expected number of octwords. */
  cpputil::BitVector get_model_bv(const std::string& var, uint16_t octs) {
    return cpputil::BitVector(8);
  }
  /** Get the satisfying assignment for a bit from the model. */
  bool get_model_bool(const std::string& var) {
    return false;
  }
  /** Get the satisfying assignment for an array */
  std::pair<std::map<uint64_t, cpputil::BitVector>,uint8_t> get_model_array(const std::string& var, uint16_t key_bits, uint16_t value_bits) {
    return std::pair<std::map<uint64_t, cpputil::BitVector>,uint8_t>();
  }

  /** Check if the last query triggered an error. */
  bool has_error() {
    return has_error_;
  }
  /** Report the last encountered error. */
  std::string get_error() {
    return error_;
  }

  void interrupt() {
    for(auto it : solvers_) {
      it->interrupt();
    }
  }

private:

  const std::vector<SMTSolver*> solvers_;
  bool has_error_;

};

} //namespace stoke

#endif
