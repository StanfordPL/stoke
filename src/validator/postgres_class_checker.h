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

#ifndef STOKE_SRC_VALIDATOR_POSTGRES_OBLIGATION_CHECKER_H
#define STOKE_SRC_VALIDATOR_POSTGRES_OBLIGATION_CHECKER_H

#include <functional>
#include <vector>
#include <pqxx/pqxx>

#include "src/validator/obligation_checker.h"
#include "src/validator/handlers/combo_handler.h"

namespace stoke {

class PostgresClassChecker : public ClassChecker {

public:

  PostgresClassChecker(std::string connection_string) : 
    connection_string_(connection_string),
    connection_(connection_string.c_str()), pipeline_(NULL), pipeline_tx_(NULL)
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
                     void* optional = NULL) {

  }



private:

  /** Reusable across several queries. */
  string testcase_set_;

  /** Database connection */
  std::string connection_string_;
  pqxx::connection connection_;
  pqxx::pipeline* pipeline_;
  pqxx::work* pipeline_tx_;


};

} //namespace stoke

#endif
