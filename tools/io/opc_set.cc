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
#include <regex>
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

namespace {

// sorted opcode list (for performance)
vector<pair<Opcode, string>> opcodes;

}

namespace stoke {

bool cmp(const pair<Opcode, string>& a, const pair<Opcode, string>& b) {
  return b.second.compare(a.second) > 0;
}
bool binary_search(const string& key, set<Opcode>& os) {
  if (opcodes.size() == 0) {
    stringstream ss;
    // initialize sorted opcode list
    for(size_t i = 0; i < X64ASM_NUM_OPCODES; ++i) {
      ss.clear();
      ss.str("");
      ss << ((Opcode) i);
      opcodes.push_back(pair<Opcode, string>((Opcode) i, ss.str()));
    }
    sort(opcodes.begin(), opcodes.end(), cmp);
  }

  auto k = pair<Opcode, string>(XTEST, key);
  auto lower = lower_bound(opcodes.begin(), opcodes.end(), k, cmp);
  if (lower != opcodes.end() && lower->second == key) {
    os.insert(lower->first);
    return true;
  }
  return false;
}

bool no_regex_needed(const string& pattern) {
  for (auto& c : pattern) {
    if ((c >= 'a' && c <= 'z') || (c >= '0' && c <= '9') || (c == '_')) {
      // this is fine
    } else {
      return false;
    }
  }
  return true;
}

void OpcSetReader::operator()(istream& is, set<Opcode>& os) {
  vector<string> args;
  TextReader<vector<string>>()(is, args);

  for (const auto& a : args) {

<<<<<<< HEAD
    //cout << "Found " << a << endl;

    bool found = false;

    if(a[a.size() - 1] == '*') {
      for(size_t i = 0; i < X64ASM_NUM_OPCODES; ++i) {
        if(opcode_write_att((Opcode)i).find(a.substr(0, a.size()-1)) == 0) {
          os.insert((Opcode)i);
          //cout << "  bl: " << (Opcode)i << endl;
          found = true;
        }
      }
    } else {
      for(size_t i = 0; i < X64ASM_NUM_OPCODES; ++i) {
        if(opcode_write_att((Opcode)i) == a) {
          os.insert((Opcode)i);
          //cout << "  bl: " << (Opcode)i << endl;
          found = true;
        }
      }
    }

    stringstream ss;
    ss.str(a);
    ss >> opc;

    if(!failed(ss)) {
      //cout << "bl: " << opc << endl;
      os.insert(opc);
    } else if (!found) {
      fail(is) << fail_msg(ss);
=======
    bool found = false;

    if (no_regex_needed(a)) {
      found = binary_search(a, os);
    } else {
      regex pattern(a);
      stringstream ss;
      for(size_t i = 0; i < X64ASM_NUM_OPCODES; ++i) {
        Opcode opc = (Opcode) i;
        ss.clear();
        ss.str("");
        ss << opc;
        if (regex_match(ss.str(), pattern)) {
          found = true;
          os.insert(opc);
        }
      }
    }

    if (!found) {
      is.setstate(ios::failbit);
      return;
>>>>>>> develop
    }
  }
}

void OpcSetWriter::operator()(ostream& os, const set<Opcode>& ocs) {
  os << "{";
  set<const char*> result;
  for (auto opc : ocs) {
    os << " " << opc;
  }
  os << " }";
}

} // namespace stoke

