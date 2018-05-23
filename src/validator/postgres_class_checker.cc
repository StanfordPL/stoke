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

#include "src/serialize/serialize.h"
#include "src/validator/postgres_class_checker.h"
#include "src/validator/md5.h"

using namespace std;
using namespace stoke;
using namespace pqxx;

void PostgresClassChecker::make_tables() {
  
  const char* sql_class_problem = 
    "CREATE TABLE IF NOT EXISTS ClassProblem("                     \
      "hash VARCHAR(50) PRIMARY KEY,"                              \
      "testcase_set VARCHAR(50),"                                  \
      "options TEXT,"                                              \
      "problem TEXT,"                                              \
      "created_at   TIMESTAMP WITH TIME ZONE DEFAULT NOW()"        \
    ")";

  const char* sql_testcase_set = 
    "CREATE TABLE IF NOT EXISTS TestcaseSet("                     \
      "hash VARCHAR(50) PRIMARY KEY,"                             \
      "testcases TEXT,"                                           \
      "created_at   TIMESTAMP WITH TIME ZONE DEFAULT NOW()"       \
    ")";

  const char* sql_class_result = 
    "CREATE TABLE IF NOT EXISTS ClassResult("                       \
      "id                 SERIAL PRIMARY KEY,"                      \
      "hash               VARCHAR(50),"                             \
      "verified           BOOLEAN,"                                 \
      "error              TEXT,"                                    \
      "time_ms            INTEGER,"                                 \
      "version            VARCHAR(128),"                            \
      "created_at   TIMESTAMP WITH TIME ZONE DEFAULT NOW()"         \
    ")";

  const char* sql_class_result_index =
    "CREATE UNIQUE INDEX IF NOT EXISTS class_result_hash_index "    \
      "ON ClassResult(hash)";

  const char* sql_class_queue = 
    "CREATE TABLE IF NOT EXISTS ClassQueue("                        \
      "id                 SERIAL PRIMARY KEY,"                      \
      "hash               VARCHAR(50) UNIQUE,"                      \
      "locked_by          BIGINT,"                                  \
      "expiration         TIMESTAMP WITH TIME ZONE,"                \
      "created_at   TIMESTAMP WITH TIME ZONE DEFAULT NOW()"         \
    ")";

  const char* sql_class_queue_index =
    "CREATE UNIQUE INDEX IF NOT EXISTS class_queue_hash_index "     \
      "ON ClassQueue(hash)";


  work tx(connection_);
  tx.exec(sql_class_problem);
  tx.exec(sql_testcase_set);
  tx.exec(sql_class_result);
  tx.exec(sql_class_result_index);
  tx.exec(sql_class_queue);
  tx.exec(sql_class_queue_index);
  tx.commit();

  cout << "make_tables() complete" << endl;

}

void PostgresClassChecker::initialize() {
  std::cout << "PostgresClassChecker::initialize()" << std::endl;
  // collect all testcases
  vector<CpuState> testcases;
  auto& sb = data_collector_.get_sandbox();
  for(size_t i = 0; i < sb.size(); ++i) {
    testcases.push_back(*sb.get_input(0)); 
  }

  // serialize and hash the testcases
  stringstream ss;
  serialize<vector<CpuState>>(ss, testcases);
  string tc_str = ss.str();
  auto hash = md5(tc_str);

  cout << "Hashed testcases got : " << hash << endl;
  // check if hash is in DB?
  work tx(connection_);
  stringstream sql;
  sql << "SELECT count(*) FROM TestcaseSet WHERE hash='" << tx.esc(hash) << "'";
  auto results = tx.exec(sql.str());
  tx.commit();
  assert(results.size() > 0);
  auto row = results[0];
  size_t count = row[0].as<size_t>();
  testcase_set_ = hash;

  cout << "Count of test case sets found: " << count << endl;
  if(count == 0) {
    work tx2(connection_);
    stringstream insert;
    insert << "INSERT INTO TestcaseSet(hash, testcases) VALUES(" 
           << "'" << tx2.esc(hash) << "', '" << tx2.esc(tc_str) << "')";
    tx2.exec(insert.str());
    tx2.commit();
    //pipeline_->insert(insert.str());
  }

  // initialize pipeline
  pipeline_tx_ = new work(connection_);
  pipeline_ = new pipeline(*pipeline_tx_);


}

int PostgresClassChecker::check( 
                     const DualAutomata& template_pod,
                     const DualBuilder::EquivalenceClassMap& equivalence_class,
                     Callback& callback,
                     void* optional) {
  cout << "PostgresClassChecker::check()" << endl;
  Problem problem(
      template_pod, 
      equivalence_class, 
      target_bound_, 
      rewrite_bound_, 
      pointer_ranges_, 
      extra_assumptions_);

  stringstream ss;
  problem.serialize(ss);
  auto hash = md5(ss.str());

  if(pipeline_ == nullptr)
    initialize();

  auto hash_esc = pipeline_tx_->esc(hash);
  auto prob_esc = pipeline_tx_->esc(ss.str());
  auto testcase_set_esc = pipeline_tx_->esc(testcase_set_);

  /** Add to proof obligations */
  stringstream sql_add_cp;
  sql_add_cp << "INSERT INTO ClassProblem(hash, problem, testcase_set, options) "
             << "SELECT '" << hash_esc << "', " 
             << "'" << prob_esc << "', "
             << "'" << testcase_set_esc << "', "
             << "''"
             << " WHERE NOT EXISTS ("
             << " SELECT hash FROM ClassProblem WHERE hash='" << hash_esc << "')";
  pipeline_->insert(sql_add_cp.str());

  /** Add to queue, as needed */
  stringstream sql_add_cq;
  sql_add_cq  << "INSERT INTO ClassQueue(hash) "
              << "SELECT '" << hash_esc << "' "
              << "WHERE NOT EXISTS ("
              << " SELECT hash FROM ClassQueue WHERE hash='" << hash_esc << "') "
              << "AND NOT EXISTS ("
              << " SELECT hash FROM ClassResult WHERE hash='" << hash_esc << "')";
  pipeline_->insert(sql_add_cq.str());

  /** Add to job list */
  Job& j = outstanding_jobs[hash]; 
  j.callbacks.push_back(&callback);
  j.optionals.push_back(optional);

  cout << "Dispatching hash " << hash << endl;
  return 0;

}


void PostgresClassChecker::poll_database() {
  work tx(connection_);
  stringstream sql;
  sql << "SELECT *, error is NOT NULL as has_error FROM ClassResult "
      << "WHERE hash in (";

  bool first = true;
  for(auto pair : outstanding_jobs) {
    auto hash = pair.first; 
    auto data = pair.second;
    if(data.completed)
      continue;
    if(!first)
      sql << ", ";
    sql << "'" << tx.esc(hash) << "'";
    first = false;
  }
  sql << ")";

  result r = tx.exec(sql.str().c_str());
  tx.commit();
  //cout << "Polling with: " << sql.str() << endl;
  //cout << "Got " << r.size() << " results" << endl;

  for(auto row : r) {
    auto hash = row["hash"].as<string>();
    cout << "Processing row with hash = " << hash << endl;

    // check if job has already been processed
    if(outstanding_jobs.count(hash) == 0) {
      cout << "  * skipping this row" << endl;
      continue;
    }

    auto& job = outstanding_jobs.at(hash);
    if(job.completed)
      continue;

    bool has_error = row["has_error"].as<bool>();
    // invoke callback
    Result r;
    r.verified = row["verified"].as<bool>();
    r.has_error = row["has_error"].as<bool>();
    if(r.has_error)
      r.error_message = row["error"].as<string>();

    job.invoke_callbacks(r);
    job.completed = true;
    outstanding_jobs.erase(hash);
  }

}

/** Blocks until all the checking has done and the callbacks have been called. */
void PostgresClassChecker::block_until_complete() {
  cout << "PostgresClassChecker::block_until_complete()" << endl;
  if(pipeline_) {
    pipeline_->complete();
    pipeline_tx_->commit();
    cout << "Pipeline of inserts complete!" << endl;
  }

  poll_database();
  while(outstanding_jobs.size() > 0) {
    sleep(5);
    poll_database();
  }
}

