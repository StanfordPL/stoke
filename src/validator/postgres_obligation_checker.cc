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
      "hash         VARCHAR(50) PRIMARY KEY,"                      \
      "problem      TEXT,"                                         \
      "created_at   TIMESTAMP WITH TIME ZONE DEFAULT NOW()"        \
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
      "gen_time           BIGINT,"                                  \
      "smt_time           BIGINT,"                                  \
      "version            VARCHAR(128),"                            \
      "created_at         TIMESTAMP WITH TIME ZONE DEFAULT NOW(),"  \
      "comments           TEXT"                                     \
    ")";

  // indexes needed:
  // 1. hash
  // 2. hash, solver, strategy

  const char* sql_proof_obligation_queue = 
    "CREATE TABLE IF NOT EXISTS ProofObligationQueue("              \
      "id                 SERIAL PRIMARY KEY,"                      \
      "hash               VARCHAR(50),"                             \
      "solver             VARCHAR(8),"                              \
      "strategy           VARCHAR(8),"                              \
      "locked_by          BIGINT,"                                  \
      "expiration         TIMESTAMP WITH TIME ZONE,"                \
      "created_at         TIMESTAMP WITH TIME ZONE DEFAULT NOW()"   \
    ")";

  // indexes needed:
  // 1. hash
  // 2. hash, solver, strategy

  nontransaction tx(connection_);
  tx.exec(sql_proof_obligation);
  tx.commit();

  nontransaction tx2(connection_);
  tx2.exec(sql_proof_obligation_result);
  tx2.commit();

  nontransaction tx3(connection_);
  tx3.exec(sql_proof_obligation_queue);
  tx3.commit();

  nontransaction tx4(connection_);
  tx4.exec("SET SESSION synchronous_commit TO OFF");
  tx4.commit();

  cout << "make_tables() complete" << endl;

}

void PostgresObligationChecker::check(const Cfg& target, const Cfg& rewrite,
                   Cfg::id_type target_block, Cfg::id_type rewrite_block,
                   const CfgPath& p, const CfgPath& q,
                   shared_ptr<Invariant> assume, shared_ptr<Invariant> prove,
                   const std::vector<std::pair<CpuState, CpuState>>& testcases,
                   Callback& callback,
                   bool override_separate_stack,
                   void* optional) {

  /** Sample test cases */
  vector<pair<CpuState,CpuState>> sampled_testcases;
  if(testcases.size() > 5) {
    // TODO: sample randomly if needed
    for(size_t i = 0; i < testcases.size(); i += testcases.size()/5) {
      sampled_testcases.push_back(testcases[i]);
    }
  } else {
    sampled_testcases = testcases;
  }

  /** Create Proof Oblgiation to put in DB */
  Obligation obligation;
  obligation.target = target;
  obligation.rewrite = rewrite;
  obligation.target_block = target_block;
  obligation.rewrite_block = rewrite_block;
  obligation.P = p;
  obligation.Q = q;
  obligation.assume = assume;
  obligation.prove = prove;
  obligation.testcases = sampled_testcases;
  obligation.separate_stack = separate_stack_ || override_separate_stack;

  stringstream ss;
  obligation.write_text(ss);
  auto hash = md5(ss.str());

  if(local_cache_.count(hash)) {
    // this lightens the load on the database, and maybe even the local solver
    cout << "[check] found answer in cache!" << endl;
    callback(local_cache_[hash], optional);
    return;
  }

  if(shortcircuit_ > 0) {
    // if we can quickly perform the SMT check ourselves, don't go to the database
    auto r = smt_checker_.check_wait(target, rewrite, target_block, rewrite_block,
                                     p, q, assume, prove, testcases, override_separate_stack);
    if(r.verified || r.has_ceg) {
      local_cache_[hash] = r;
      callback(r, optional);
      return;
    }     
  }

  if(pipeline_ == NULL) {
    pipeline_tx_ = new nontransaction(connection_);
    pipeline_ = new pipeline(*pipeline_tx_);
    pipeline_->retain(2);
  }

  /** Add to proof obligations */
  //nontransaction ntx1(connection_);

  auto hash_esc = pipeline_tx_->esc(hash);
  auto prob_esc = pipeline_tx_->esc(ss.str());

  stringstream sql_add_po;
  sql_add_po << "INSERT INTO ProofObligation(hash, problem) "
             << "SELECT '" << hash_esc << "', '" << prob_esc << "' "
             << "WHERE"
             << "   NOT EXISTS (SELECT hash FROM ProofObligation WHERE hash='" << hash_esc << "')";

  //ntx1.exec(sql_add_po.str().c_str());
  //ntx1.commit();
  pipeline_->insert(sql_add_po.str());
  //cout << "SQL" << endl << sql_add_po.str() << endl;

  /** Add to queue, as needed */
  //nontransaction ntx2(connection_);
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
              << "   (NOT EXISTS (SELECT hash FROM ProofObligationResult "
              << "    WHERE hash='" << hash_esc << "' "
              << "      AND error is null)) " 
              << "AND "
              << "   (NOT EXISTS (SELECT hash FROM ProofObligationQueue "
              << "    WHERE hash='" << hash_esc << "'"
              << "      AND solver=tmp.solver AND strategy=tmp.strategy))";
  //ntx2.exec(sql_add_poq.str().c_str());
  //ntx2.commit();
  pipeline_->insert(sql_add_poq.str());
  //cout << "SQL" << endl << sql_add_poq.str() << endl;

  /** Add to job list */
  Job& j = outstanding_jobs[hash]; //create new job or use existing one
  j.callbacks.push_back(&callback);
  j.optionals.push_back(optional);

  cout << "Dispatching hash " << hash << endl;

  dispatches_++;
  if(dispatches_ % 25 == 0) {
    cout << "Waiting on pipeline..." << endl;
    pipeline_->complete();
    cout << "Closing up nontransaction..." << endl;
    pipeline_tx_->commit();
    delete pipeline_;
    delete pipeline_tx_;
    pipeline_ = NULL;
    pipeline_tx_ = NULL;
    dispatches_ = 0;
    // see if anyone is done
    poll_database();
  }

}


void PostgresObligationChecker::poll_database() {

  if(dispatches_ > 0) {
    cout << "Waiting on pipeline..." << endl;
    pipeline_->complete();
    cout << "Closing up nontransaction..." << endl;
    pipeline_tx_->commit();
  }


  if(outstanding_jobs.size() == 0)
    return;

  cout << "[poll_database] querying for " << outstanding_jobs.size() << " jobs." << endl;

  nontransaction tx(connection_);
  stringstream sql;
  sql << "SELECT *, smt_time+gen_time as total_time "
      << "FROM ProofObligationResult "
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
  sql << ") ORDER BY total_time ASC";

  result r = tx.exec(sql.str().c_str());
  tx.commit();
  //cout << "Polling with: " << sql.str() << endl;
  //cout << "Got " << r.size() << " results" << endl;

  map<string, size_t> error_counts;
  map<string, string> error_message;
  map<string, string> error_version;

  for(auto row : r) {
    auto hash = row["hash"].as<string>();
    cout << "[poll_database] Processing row with hash = " << hash << endl;

    // check if job has already been processed
    if(outstanding_jobs.count(hash) == 0) {
      //cout << "  * skipping this row" << endl;
      continue;
    }

    // check job status
    auto& job = outstanding_jobs.at(hash);
    if(job.completed)
      continue;

    bool has_error = !row["error"].is_null();
    bool has_ceg = !row["ceg_target"].is_null();
    if(has_error) {
      // we don't want to invoke the callback unless we get errors from all solvers
      error_counts[hash]++;
      error_message.insert({hash, row["error"].as<string>()});
      error_version.insert({hash, row["version"].as<string>()});
      //cout << "  * recording an error for this row" << endl;
    } else {
      // invoke callback
      Result r;
      r.verified = row["verified"].as<bool>();
      r.has_error = false;
      r.smt_time_microseconds = row["smt_time"].as<uint64_t>();
      r.gen_time_microseconds = row["gen_time"].as<uint64_t>();
      r.source_version = row["version"].as<string>();
      r.info = hash;
      r.solver = (row["solver"].as<string>() == "z3" ? Solver::Z3 : Solver::CVC4);
      r.strategy = (row["strategy"].as<string>() == "flat" ? ObligationChecker::AliasStrategy::FLAT :
                                               ObligationChecker::AliasStrategy::ARM);

      if(has_ceg) {
        r.has_ceg = true;

        stringstream target_ceg;
        stringstream rewrite_ceg;
        stringstream target_final_ceg;
        stringstream rewrite_final_ceg;

        target_ceg << row["ceg_target"].c_str();
        rewrite_ceg << row["ceg_rewrite"].c_str();
        target_final_ceg << row["ceg_target_final"].c_str();
        rewrite_final_ceg << row["ceg_rewrite_final"].c_str();

        r.target_ceg.read_text(target_ceg);
        r.rewrite_ceg.read_text(rewrite_ceg);
        r.target_final_ceg.read_text(target_final_ceg);
        r.rewrite_final_ceg.read_text(rewrite_final_ceg);
      } else {
        r.has_ceg = false;
      }

      //cout << "  * invoking callback for this row.  verified = " << r.verified << endl;
      job.invoke_callbacks(r);
      job.completed = true;
      outstanding_jobs.erase(hash);
    }
  }

  for(auto pair : error_counts) {
    if(pair.second >= 4) {
      auto hash = pair.first;
      if(outstanding_jobs.count(hash) == 0)
        continue;

      auto& job = outstanding_jobs.at(hash);
      if(job.completed)
        continue;
      Result r;
      r.verified = false;
      r.has_ceg = false;
      r.has_error = true;
      r.error_message = "At least 4 solvers encountered error; e.g. " + error_message.at(hash);
      r.source_version = error_version.at(hash);
      r.info = hash;
      local_cache_[hash] = r;
      job.invoke_callbacks(r);
      job.completed = true;
      outstanding_jobs.erase(hash);
    }
  }

}

/** Blocks until all the checking has done and the callbacks have been called. */
void PostgresObligationChecker::block_until_complete() {
  if(pipeline_) {
    cout << "Waiting on pipeline..." << endl;
    pipeline_->complete();
    cout << "Closing up nontransaction..." << endl;
    pipeline_tx_->commit();
  }

  cout << "Polling!" << endl;

  poll_database();
  while(outstanding_jobs.size() > 0) {
    sleep(60);
    poll_database();
  }
}

