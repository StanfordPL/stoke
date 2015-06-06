// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include <array>
#include <string>
#include <utility>

#include "src/ext/cpputil/include/serialize/text_reader.h"
#include "src/ext/cpputil/include/serialize/text_writer.h"

#include "src/ext/x64asm/src/opcode.h"

#include "tools/io/opc_set.h"
#include "tools/io/generic.h"

using namespace cpputil;
using namespace std;
using namespace x64asm;


namespace stoke {

void OpcSetReader::operator()(istream& is, set<Opcode>& os) {
  vector<string> args;
  TextReader<vector<string>>()(is, args);

  for (const auto& a : args) {
    Opcode opc;

    stringstream ss;
    ss.str(a);
    ss >> opc;

    if(failed(ss)) {
      fail(is) << fail_msg(ss);
      return;
    }
    os.insert(opc);
  }
}

void OpcSetWriter::operator()(ostream& os, const set<Opcode>& ocs) {
  os << "{";
  set<const char*> result;
  for (auto opc : ocs) {
    os << " " << opc << "$";
  }
  os << " }";
}

} // namespace stoke

