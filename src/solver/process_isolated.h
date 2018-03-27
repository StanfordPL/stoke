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


#ifndef _STOKE_SRC_SOLVER_PROCESS_ISOLATED_H
#define _STOKE_SRC_SOLVER_PROCESS_ISOLATED_H

#include <map>
#include <vector>
#include <atomic>
#include <sys/types.h>
#include <signal.h>
#include <unistd.h>
#include <fcntl.h>

#include "src/ext/cpputil/include/container/bit_vector.h"

namespace stoke {

class ProcessIsolatedSolver : public SMTSolver {

public:

  /* Resets the state common to SMT solvers */
  ProcessIsolatedSolver(SMTSolver* child) : child_(child){
    has_error_ = true;
  }

  ~ProcessIsolatedSolver() {
  }

  ProcessIsolatedSolver* clone() const {
    return new ProcessIsolatedSolver(child_->clone());
  }

  /** Check if a query is satisfiable given constraints */
  bool is_sat(const std::vector<SymBool>& constraints) {

    int pipefd[2];
    int result = pipe(pipefd);
    if(result != 0) {
      error_ = "call to pipe() failed";
      has_error_ = true;
      return false;
    }

    error_ = "";
    pid_t pid = fork();
    if(pid == 0) {
      // child
      close(pipefd[0]);
      bool result = child_->is_sat(constraints); 
      int n;
      if (child_->has_error()) {
        //std::cout << "[pi_solver] sending err" << std::endl;
        n = write(pipefd[1], "err", 3);
      } else if(result) {
        //std::cout << "[pi_solver] sending sat" << std::endl;
        n = write(pipefd[1], "sat", 3);
      } else {
        //std::cout << "[pi_solver] sending unsat" << std::endl;
        n = write(pipefd[1], "uns", 3);
      }
      if(n < 3) {
        //std::cout << "[pi_solver] error! child only sent " << n << " bytes!" << std::endl;
      }
      close(pipefd[1]);
      exit(0);
    } else {
      // parent
      close(pipefd[1]);
      pid_ = pid;
      wait(pid);

      // read child's output
      char buffer[4];
      ssize_t count = read(pipefd[0], buffer, 4);
      buffer[3] = '\0';
      //std::cout << "[pi_solver] READ FROM CHILD: " << buffer << std::endl;
      close(pipefd[0]);
      if(count == (ssize_t)(-1) || count == 0 || !strcmp(buffer, "err")) {
        has_error_ = true;
        error_ = "unknown error";
        return false;
      } else if(!strcmp(buffer, "sat")) {
        has_error_ = false;
        error_ = "";
        return true;
      } else if(!strcmp(buffer, "uns")) {
        has_error_ = false;
        error_ = "";
        return false;
      }
    }

    has_error_ = true;
    error_ = "Reached (supposedly) unreachable fall-through case";
    return false;
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

  /** Check if the last query trivvered an error. */
  bool has_error() {
    return has_error_;
  }
  /** Report the last encountered error. */
  std::string get_error() {
    return error_;
  }

  void interrupt() {
    kill(pid_, SIGTERM);    
  }

private:

  bool has_error_;
  SMTSolver* child_;
  pid_t pid_;

};

} //namespace stoke

#endif
