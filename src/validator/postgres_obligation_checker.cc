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
#include "src/validator/postgres_obligation_checker.h"
#include "src/validator/md5.h"

using namespace std;
using namespace stoke;
using namespace pqxx;

void PostgresObligationChecker::make_tables() {
  
  const char* sql_proof_obligation = 
    "CREATE TABLE IF NOT EXISTS ProofObligation("                  \
      "hash VARCHAR(50) PRIMARY KEY,"                              \
      "problem TEXT"                                               \
    ")";

  const char* sql_proof_obligation_result = 
    "CREATE TABLE IF NOT EXISTS ProofObligationResult("             \
      "id                 SERIAL PRIMARY KEY,"                      \
      "hash               VARCHAR(50),"                             \
      "solver             VARCHAR(8),"                              \
      "strategy           VARCHAR(8),"                              \
      "verified           BOOLEAN,"                                 \
      "ceg_target         TEXT,"                                    \
      "ceg_rewrite        TEXT,"                                    \
      "ceg_target_final   TEXT,"                                    \
      "ceg_rewrite_final  TEXT,"                                    \
      "error              TEXT,"                                    \
      "gen_time           INTEGER,"                                 \
      "smt_time           INTEGER,"                                 \
      "version            VARCHAR(128)"                             \
    ")";

  const char* sql_proof_obligation_queue = 
    "CREATE TABLE IF NOT EXISTS ProofObligationQueue("              \
      "id                 SERIAL PRIMARY KEY,"                      \
      "hash               VARCHAR(50),"                             \
      "solver             VARCHAR(8),"                              \
      "strategy           VARCHAR(8),"                              \
      "locked_by          BIGINT,"                                  \
      "expiration         TIMESTAMP WITH TIME ZONE"                 \
    ")";

  work tx(connection_);
  tx.exec(sql_proof_obligation);
  tx.exec(sql_proof_obligation_result);
  tx.exec(sql_proof_obligation_queue);
  tx.commit();

  cout << "make_tables() complete" << endl;

}

void PostgresObligationChecker::check(const Cfg& target, const Cfg& rewrite,
                   Cfg::id_type target_block, Cfg::id_type rewrite_block,
                   const CfgPath& p, const CfgPath& q,
                   Invariant& assume, Invariant& prove,
                   const std::vector<std::pair<CpuState, CpuState>>& testcases,
                   Callback& callback,
                   void* optional) {

  Obligation obligation;
  obligation.target = target;
  obligation.rewrite = rewrite;
  obligation.target_block = target_block;
  obligation.rewrite_block = rewrite_block;
  obligation.P = p;
  obligation.Q = q;
  obligation.assume = &assume;
  obligation.prove = &prove;
  obligation.testcases = testcases;

  stringstream ss;
  obligation.write_text(ss);
  auto hash = md5(ss.str());

  if(pipeline_ == NULL) {
    pipeline_tx_ = new work(connection_);
    pipeline_ = new pipeline(*pipeline_tx_);
  }

  auto hash_esc = pipeline_tx_->esc(hash);
  auto prob_esc = pipeline_tx_->esc(ss.str());
   

  /** Add to proof obligations */
  stringstream sql_add_po;
  sql_add_po << "INSERT INTO ProofObligation(hash, problem) "
             << "SELECT '" << hash_esc << "', '" << prob_esc << "' "
             << "WHERE"
             << "   NOT EXISTS (SELECT hash FROM ProofObligation WHERE hash='" << hash_esc << "')";
  pipeline_->insert(sql_add_po.str());
  //tx.exec(sql_add_po.str().c_str());

  /** Add to queue, as needed */
  stringstream sql_add_poq;
  sql_add_poq << "INSERT INTO ProofObligationQueue(hash, solver, strategy) "
              << "SELECT '" << hash_esc << "', tmp.solver, tmp.strategy FROM "
              << "  (VALUES ('z3','flat'), ('cvc4','flat'), ('z3','arm'), ('cvc4','arm'))"
              << "     as tmp (solver, strategy) "
              << "WHERE "
              << "   (NOT EXISTS (SELECT hash FROM ProofObligationResult "
              << "    WHERE hash='" << hash_esc << "' "
              << "      AND solver=tmp.solver AND strategy=tmp.strategy)) "
              << "AND "
              << "   (NOT EXISTS (SELECT hash FROM ProofObligationQueue "
              << "    WHERE hash='" << hash_esc << "'"
              << "      AND solver=tmp.solver AND strategy=tmp.strategy))";
  pipeline_->insert(sql_add_poq.str());
  //tx.exec(sql_add_poq.str().c_str());

  /** Add to job list */
  Job j(callback);
  j.hash = hash;
  j.optional = optional;
  outstanding_jobs.insert({j.hash, j});

}


void PostgresObligationChecker::poll_database() {

  work tx(connection_);
  stringstream sql;
  sql << "SELECT *, smt_time+gen_time as total_time, "
      << "  error IS NOT NULL as has_error, "
      << "  ceg_target IS NOT NULL as has_ceg  "
      << "FROM ProofObligationResult JOIN "
      << "  (Values ";

  bool first = true;
  for(auto pair : outstanding_jobs) {
    auto hash = pair.first; 
    if(!first)
      sql << ", ";
    sql << "('" << tx.esc(hash) << "')";
    first = false;
  }

  sql << ") AS outstanding (h) ON hash=h ORDER BY total_time ASC";
  result r = tx.exec(sql.str().c_str());
  //cout << "Polling with: " << sql.str() << endl;
  //cout << "Got " << r.size() << " results" << endl;

  map<string, size_t> error_counts;
  map<string, string> error_message;
  map<string, string> error_version;

  for(auto row : r) {
    auto hash = row["hash"].as<string>();
    //cout << "Processing row with hash = " << hash << endl;

    // check if job has already been processed
    if(outstanding_jobs.count(hash) == 0) {
      //cout << "  * skipping this row" << endl;
      continue;
    }

    // check job status
    auto job = outstanding_jobs.at(hash);
    bool has_error = row["has_error"].as<bool>();
    if(has_error) {
      error_counts[hash]++;
      error_message.insert({hash, row["error"].as<string>()});
      error_version.insert({hash, row["version"].as<string>()});
      //cout << "  * recording an error for this row" << endl;
    } else {
      // invoke callback
      // TODO: add counterexample info
      Result r;
      r.verified = row["verified"].as<bool>();
      r.has_ceg = false;
      r.has_error = false;
      r.smt_time_microseconds = row["smt_time"].as<uint64_t>();
      r.gen_time_microseconds = row["gen_time"].as<uint64_t>();
      r.source_version = row["version"].as<string>();
      //cout << "  * invoking callback for this row.  verified = " << r.verified << endl;
      job.callback(r, job.optional);
      outstanding_jobs.erase(hash);
    }
  }

  for(auto pair : error_counts) {
    if(pair.second >= 4) {
      auto hash = pair.first;
      if(outstanding_jobs.count(hash) == 0)
        continue;

      auto job = outstanding_jobs.at(hash);
      Result r;
      r.verified = false;
      r.has_ceg = false;
      r.has_error = true;
      r.error_message = "At least 4 solvers encountered error; e.g. " + error_message.at(hash);
      r.source_version = error_version.at(hash);
      job.callback(r, job.optional);
    }
  }

}

/** Blocks until all the checking has done and the callbacks have been called. */
void PostgresObligationChecker::block_until_complete() {
  if(pipeline_) {
    pipeline_->complete();
    pipeline_tx_->commit();
  }

  while(outstanding_jobs.size() > 0) {
    sleep(1);
    poll_database();
  }
}

