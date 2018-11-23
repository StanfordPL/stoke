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

#include <chrono>

#include "src/cfg/paths.h"
#include "src/serialize/serialize.h"
#include "src/validator/obligation_checker.h"

using namespace stoke;
using namespace std;
using namespace x64asm;
using namespace cpputil;

ostream& std::operator<<(ostream& strm, const stoke::ObligationChecker::Result& result) {
  return result.write_text(strm);
}

istream& std::operator>>(istream& strm, stoke::ObligationChecker::Result& result) {
  return result.read_text(strm);
}

istream& ObligationChecker::Result::read_text(istream& is) {
  is >> verified >> has_ceg >> has_error >> ws;
  CHECK_STREAM(is);
  is >> gen_time_microseconds >> smt_time_microseconds;;
  CHECK_STREAM(is);
  int n_solver, n_strategy;
  is >> n_solver >> n_strategy;
  CHECK_STREAM(is);
  solver = (Solver)n_solver;
  strategy = (AliasStrategy)n_strategy;
  is >> source_version;
  CHECK_STREAM(is);
  if(has_error)
    is >> error_message >> ws; 
  CHECK_STREAM(is);
  if(has_ceg) {
    is >> target_ceg >> ws;
    CHECK_STREAM(is);
    is >> rewrite_ceg >> ws;
    CHECK_STREAM(is);
    is >> target_final_ceg >> ws;
    CHECK_STREAM(is);
    is >> rewrite_final_ceg >> ws;
    CHECK_STREAM(is);
  }

  return is;
}

ostream& ObligationChecker::Result::write_text(ostream& os) const {
  os << verified << " " << has_ceg << " " << has_error << endl;
  os << gen_time_microseconds << " " << smt_time_microseconds << endl;
  os << (size_t)solver << " " << (size_t)strategy << endl;
  os << source_version << endl;
  if(has_error)
    os << error_message << endl;
  if(has_ceg) {
    os << target_ceg << endl;
    os << rewrite_ceg << endl;
    os << target_final_ceg << endl;
    os << rewrite_final_ceg << endl;
  }
  return os;
}


ostream& std::operator<<(ostream& strm, const stoke::ObligationChecker::Obligation& result) {
  return result.write_text(strm);
}

istream& std::operator>>(istream& strm, stoke::ObligationChecker::Obligation& result) {
  return result.read_text(strm);
}

ostream& ObligationChecker::Obligation::write_text(ostream& os) const {
  serialize<Cfg>(os, target);
  serialize<Cfg>(os, rewrite);
  os << target_block << " " << rewrite_block << endl;
  serialize<CfgPath>(os, P);
  serialize<CfgPath>(os, Q);
  assume->serialize(os);
  prove->serialize(os);
  serialize<vector<pair<CpuState, CpuState>>>(os, testcases);
  os << separate_stack << endl;
  return os;
}

istream& ObligationChecker::Obligation::read_text(istream& is) {
  target = deserialize<Cfg>(is);
  CHECK_STREAM(is);
  rewrite = deserialize<Cfg>(is);
  CHECK_STREAM(is);
  is >> target_block >> rewrite_block;
  CHECK_STREAM(is);
  P = deserialize<CfgPath>(is);
  CHECK_STREAM(is);
  Q = deserialize<CfgPath>(is);
  CHECK_STREAM(is);
  assume = Invariant::deserialize(is);
  CHECK_STREAM(is);
  prove = Invariant::deserialize(is);
  CHECK_STREAM(is);
  testcases = deserialize<vector<pair<CpuState, CpuState>>>(is);
  CHECK_STREAM(is);
  is >> separate_stack;
  CHECK_STREAM(is);
  return is;
}


/** Given a path and start state, figure out if the ith block has a jump */
ObligationChecker::JumpType ObligationChecker::is_jump(const Cfg& cfg, Cfg::id_type end_block, const CfgPath& P_copy, size_t i) {

  auto P = P_copy;

  P.push_back(end_block);

  if (i == P.size() - 1)
    return JumpType::NONE;

  auto block = P[i];

  auto itr = cfg.succ_begin(block);
  if (itr == cfg.succ_end(block)) {
    // there are no successors
    cout << "[is_jump] " << block << " NONE" << endl;
    return JumpType::NONE;
  }

  itr++;
  if (itr == cfg.succ_end(block)) {
    // there is only only successor
    cout << "[is_jump] " << block << " NONE" << endl;
    return JumpType::NONE;
  }

  // ok, there are at least 2 successors
  auto next_block = P[i+1];
  if (next_block == block + 1) {
    cout << "[is_jump] " << block << " FALL" << endl;
    return JumpType::FALL_THROUGH;
  }
  else {
    cout << "[is_jump] " << block << " JUMP" << endl;
    return JumpType::JUMP;
  }
}
