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
      "expiration         TIMESTAMP WITH TIMEZONE"                  \
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

  work tx(connection_);

  /** Add to proof obligations */
  stringstream sql_add_po;
  sql_add_po << "INSERT INTO ProofObligation(hash, problem) "
             << "SELECT '" << tx.esc(hash) << "', '" << tx.esc(ss.str()) << "' "
             << "WHERE"
             << "   NOT EXISTS (SELECT hash FROM ProofObligation WHERE hash='" << tx.esc(hash) << "')";
  tx.exec(sql_add_po.str().c_str());

  /** Add to queue, as needed */
  stringstream sql_add_poq;
  sql_add_poq << "INSERT INTO ProofObligationQueue(hash, solver, strategy) "
              << "SELECT '" << tx.esc(hash) << "', tmp.solver, tmp.strategy FROM "
              << "  (VALUES ('z3','flat'), ('cvc4','flat'), ('z3','arm'), ('cvc4','arm'))"
              << "     as tmp (solver, strategy) "
              << "WHERE "
              << "   (NOT EXISTS (SELECT hash FROM ProofObligationResult "
              << "    WHERE hash='" << tx.esc(hash) << "' "
              << "      AND solver=tmp.solver AND strategy=tmp.strategy)) "
              << "AND "
              << "   (NOT EXISTS (SELECT hash FROM ProofObligationQueue "
              << "    WHERE hash='" << tx.esc(hash) << "'"
              << "      AND solver=tmp.solver AND strategy=tmp.strategy))";

  tx.exec(sql_add_poq.str().c_str());

  tx.commit();

  /** Add to queue */

}

/** Blocks until all the checking has done and the callbacks have been called. */
void PostgresObligationChecker::block_until_complete() {
  while(true) {
    sleep(1);
  }
}

