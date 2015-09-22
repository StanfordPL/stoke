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


#include "src/ext/cpputil/include/container/bit_vector.h"

namespace stoke {

class TestSolver : public SMTSolver {

public:
  TestSolver() {
    solvers_.push_back(new Cvc4Solver());
    solvers_.push_back(new Z3Solver());
  }

  ~TestSolver() {
    for (auto it : solvers_)
      delete it;
  }

  SMTSolver& set_timeout(uint64_t timeout) {
    for (auto it : solvers_) {
      it->set_timeout(timeout);
    }
    return *this;
  }

  bool is_sat(const std::vector<SymBool>& c) {
    error_ = "";
    bool first = false;
    bool success = false;
    bool last = false;
    std::vector<bool> results;
    for (auto it : solvers_) {

      // Is it SAT?
      last = it->is_sat(c);

      // If there's an error, skip entirely
      if (!it->has_error()) {

        // Record answer if it's the first one OK
        if (!success) {
          first = last;
          success = true;
        }

        // Check it's not different from previous answers
        for (auto ij : results) {
          EXPECT_EQ(last, ij);
          if (last != ij) {
            first = false;
            error_ = "Validators don't agree with each other.";
          }
        }

        // Record the result
        results.push_back(last);
      }
    }
    if (!success) {
      error_ = "All solvers encountered an error.";
      for (auto it : solvers_) {
        error_ = error_ + "\n\n" + it->get_error();
      }
    }
    return first;
  }

  bool has_model() const {
    for (auto it : solvers_) {
      if (it->has_model() && !it->has_error())
        return true;
    }
    return false;
  }

  bool get_model_bool(const std::string& s) {
    for (auto it : solvers_) {
      if (it->has_model() && !it->has_error()) {
        return it->get_model_bool(s);
      }
    }
    return false;
  }

  cpputil::BitVector get_model_bv(const std::string& s, uint16_t n) {
    for (auto it : solvers_) {
      if (it->has_model() && !it->has_error()) {
        return it->get_model_bv(s, n);
      }
    }
    return false;
  }



private:

  std::vector<SMTSolver*> solvers_;
};

} //namespace stoke
