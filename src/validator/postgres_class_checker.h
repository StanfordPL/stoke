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

#ifndef STOKE_SRC_VALIDATOR_POSTGRES_CLASS_CHECKER_H
#define STOKE_SRC_VALIDATOR_POSTGRES_CLASS_CHECKER_H

#include <functional>
#include <vector>
#include <pqxx/pqxx>

#include "src/validator/class_checker.h"

namespace stoke {

class PostgresClassChecker : public ClassChecker {

public:

  PostgresClassChecker(
      DataCollector& dc,
      ControlLearner& cl,
      size_t target_bound,
      size_t rewrite_bound, 
      std::string connection_string) : 
    ClassChecker(dc,cl,target_bound,rewrite_bound),
    connection_string_(connection_string),
    connection_(connection_string.c_str()), 
    pipeline_(nullptr), pipeline_tx_(nullptr)
  {
    if(!connection_.is_open()) {
      std::cerr << "Failed to open connection to database." << std::endl;
    } else {
      std::cout << "Database connection open." << std::endl;
    }

    make_tables();
  }

  ~PostgresClassChecker() {
    std::cout << "Closing database connection." << std::endl;
    connection_.disconnect();
  }

  virtual int check(const DualAutomata& template_pod,
                     const DualBuilder::EquivalenceClassMap& equivalence_class,
                     Callback& callback,
                     bool separate_stack,
                     void* optional);

  virtual void block_until_complete();

private:

  void initialize();
  void make_tables();
  void poll_database();

  /** Reusable across several queries. */
  std::string testcase_set_;

  /** Database connection */
  std::string connection_string_;
  pqxx::connection connection_;
  pqxx::pipeline* pipeline_;
  pqxx::work* pipeline_tx_;


  /** Info to track the jobs that should be running. */
  /** Sometimes two jobs with the same hash will be submitted, in which case we need to
    be prepared to perform the callback multiple times. */
  struct Job {
    std::string hash;
    std::vector<Callback*> callbacks;
    std::vector<void*> optionals;
    bool completed;

    void invoke_callbacks(ClassChecker::Result r) {
      for(size_t i = 0; i < callbacks.size(); ++i) {
        (*callbacks[i])(r, optionals[i]);
      }
    }

    Job() {
      completed = false;
      hash = "";
    }
  };

  /** A list of the jobs we don't have results for. */
  std::map<std::string, Job> outstanding_jobs;


};

} //namespace stoke

#endif
