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

#include "tools/io/state_diff.h"

using namespace std;
using namespace stoke;

namespace {
// see http://stackoverflow.com/questions/13172158/c-split-string-by-line
std::vector<std::string> split_string(const std::string& str,
                                      const std::string& delimiter) {
  std::vector<std::string> strings;
  std::string::size_type pos = 0;
  std::string::size_type prev = 0;
  while ((pos = str.find(delimiter, prev)) != std::string::npos) {
    strings.push_back(str.substr(prev, pos - prev));
    prev = pos + 1;
  }
  strings.push_back(str.substr(prev));
  return strings;
}

}

namespace stoke {

string red(string s) {
  return "\033[91m" + s + "\033[0m";
}

string green(string s) {
  return "\033[92m" + s + "\033[0m";
}

string diff_states(const CpuState& state1, const CpuState& state2, bool show_unchanged) {
  ostringstream result;
  if (state1.code != state2.code) {
    result << red("Target and rewrite did not finish with the same error code:") << endl << endl;
    if (state1.code != ErrorCode::NORMAL) {
      result << "Target returned abnormally with signal " << dec << (int)state1.code << " [" << readable_error_code(state1.code) << "]" << endl << endl;
    } else {
      result << "Target returned normally with state " << endl;
      result << state1 << endl << endl;
    }
    if (state2.code != ErrorCode::NORMAL) {
      result << "Rewrite returned abnormally with signal " << dec << (int)state2.code << " [" << readable_error_code(state2.code) << "]" << endl;
    } else {
      result << "Rewrite returned normally with state " << endl;
      result << state2 << endl;
    }
  } else {
    if (state1.code != ErrorCode::NORMAL) {
      ostringstream os;
      os << "Both target and rewrite returned abnormally with signal " << dec << (int)state1.code << " [" << readable_error_code(state1.code) << "]";
      result << green(os.str()) << endl;
    } else {
      ostringstream os1, os2;
      os1 << state1 << endl;
      os2 << state2 << endl;
      vector<string> ss1 = split_string(os1.str(), "\n");
      vector<string> ss2 = split_string(os2.str(), "\n");
      size_t len = min(ss1.size(), ss2.size());
      for (size_t i = 0; i < len; i++) {
        os1.str("");
        os2.str("");
        string s1 = ss1[i];
        string s2 = ss2[i];
        if (s1.size() != s2.size()) {
          os1 << red(s1);
          os2 << green(s2);
        } else {
          if (s1 != s2 || show_unchanged) {
            for (size_t j = 0; j < s1.size(); j++) {
              if (s1[j] == s2[j]) {
                os1 << s1[j];
                os2 << s1[j];
              } else {
                os1 << red(string(1, s1[j]));
                os2 << green(string(1, s2[j]));
              }
            }
            result << os1.str() << endl << os2.str() << endl;
          }
        }
      }
    }
  }

  return result.str();
}


} // namespace stoke
