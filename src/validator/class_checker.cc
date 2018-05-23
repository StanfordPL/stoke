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
#include "src/validator/class_checker.h"

using namespace stoke;
using namespace std;
using namespace x64asm;
using namespace cpputil;

ostream& std::operator<<(ostream& strm, const stoke::ClassChecker::Result& result) {
  return result.write_text(strm);
}

istream& std::operator>>(istream& strm, stoke::ClassChecker::Result& result) {
  return result.read_text(strm);
}

istream& ClassChecker::Result::read_text(istream& is) {
  is >> verified >> has_error >> ws;
  getline(is, error_message);
  return is;
}

ostream& ClassChecker::Result::write_text(ostream& os) const {
  os << verified << " " << has_error << endl;
  os << error_message << endl;
  return os;
}

ostream& std::operator<<(ostream& strm, const stoke::ClassChecker::Problem& result) {
  result.serialize(strm);
  return strm;
}

ostream& ClassChecker::Problem::serialize(ostream& os) const {
  template_pod.serialize(os);
  stoke::serialize<DualBuilder::EquivalenceClassMap>(os, equivalence_class);
  os << target_bound << " " << rewrite_bound << endl;
  stoke::serialize<vector<pair<M8,M8>>>(os, pointer_ranges);
  stoke::serialize<vector<Invariant*>>(os, extra_assumptions);
  return os;
}


ClassChecker::Problem ClassChecker::Problem::deserialize(istream& is) {
  auto template_pod = DualAutomata::deserialize(is);
  auto equiv_class_map = stoke::deserialize<DualBuilder::EquivalenceClassMap>(is);
  size_t target_bound, rewrite_bound;
  is >> target_bound >> rewrite_bound;
  auto ptr_ranges = stoke::deserialize<vector<pair<M8,M8>>>(is);
  auto extras = stoke::deserialize<vector<Invariant*>>(is);
  ClassChecker::Problem problem(template_pod, equiv_class_map, target_bound, rewrite_bound, ptr_ranges, extras);
  return problem;
}


