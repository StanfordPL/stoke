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
  if(has_error)
    is >> error_message >> ws; 
  if(has_ceg) {
    is >> target_ceg >> ws;
    is >> rewrite_ceg >> ws;
    is >> target_final_ceg >> ws;
    is >> rewrite_final_ceg >> ws;
  }
  return is;
}

ostream& ObligationChecker::Result::write_text(ostream& os) const {
  os << verified << " " << has_ceg << " " << has_error << endl;
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

istream& ObligationChecker::Obligation::read_text(istream& is) {
  size_t p_count, q_count, tc_count;
  Code target_code, rewrite_code;

  stringstream target_ss, rewrite_ss;

  int ends = 0;
  while(ends < 2) {
    string line;
    getline(is, line);
    if(line == "CODEEND") {
      ends++;
    } else {
      if(ends == 0) {
        target_ss << line << endl;
      } else {
        rewrite_ss << line << endl;
      }
    }
  }

  target_ss >> target_code; 
  rewrite_ss >> rewrite_code;

  // todo should handle Code offset too
  target = Cfg(TUnit(target_code), RegSet::empty(), RegSet::empty());
  rewrite = Cfg(TUnit(rewrite_code), RegSet::empty(), RegSet::empty());

  is >> target_block >> rewrite_block;
  is >> p_count >> q_count;
  for(size_t i = 0; i < p_count; ++i) {
    int x;
    is >> x;
    P.push_back(x);
  }
  for(size_t i = 0; i < q_count; ++i) {
    int x;
    is >> x;
    Q.push_back(x);
  }

  //cout << "Got P=" << P << " and Q=" << Q << endl;

  assume = Invariant::deserialize(is);
  prove = Invariant::deserialize(is);
  is >> tc_count;
  for(size_t i = 0; i < tc_count; ++i) {
    CpuState a, b;
    is >> a >> b;
    testcases.push_back(pair<CpuState, CpuState>(a,b));
  }
  return is;
}

ostream& ObligationChecker::Obligation::write_text(ostream& os) const {
  os << target.get_function().get_code() << endl << endl;
  os << "CODEEND" << endl;
  os << rewrite.get_function().get_code() << endl << endl;
  os << "CODEEND" << endl;
  os << target_block << " " << rewrite_block << endl;
  os << P.size() << " " << Q.size() << endl;
  for(auto p : P)
    os << p << " ";
  for(auto q : Q)
    os << q << " ";
  os << endl;
  assume->serialize(os);
  prove->serialize(os);
  os << testcases.size() << endl;
  for(auto tc : testcases) {
    os << tc.first << endl << tc.second << endl;
  }
  return os;
}

ObligationChecker::JumpType ObligationChecker::is_jump(const Cfg& cfg, Cfg::id_type start_block, const CfgPath& P_copy, size_t i) {

  auto P = P_copy;

  if (i == 0 && P.size() == 1) {
    P.insert(P.begin(), start_block);
  }

  if (i == P.size() - 1)
    return JumpType::NONE;

  auto block = P[i];

  auto itr = cfg.succ_begin(block);
  if (itr == cfg.succ_end(block)) {
    // there are no successors
    //cout << "is_jump " << block << " NONE" << endl;
    return JumpType::NONE;
  }

  itr++;
  if (itr == cfg.succ_end(block)) {
    // there is only only successor
    //cout << "is_jump " << block << " NONE" << endl;
    return JumpType::NONE;
  }

  // ok, there are at least 2 successors
  auto next_block = P[i+1];
  if (next_block == block + 1) {
    //cout << "is_jump " << block << " FALL" << endl;
    return JumpType::FALL_THROUGH;
  }
  else {
    //cout << "is_jump " << block << " JUMP" << endl;
    return JumpType::JUMP;
  }
}
