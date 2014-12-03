// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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

#ifndef STOKE_TOOLS_IO_LINE_H
#define STOKE_TOOLS_IO_LINE_H

#include <iostream>
#include <sstream>
#include <string>

namespace stoke {

struct LineReader {
  void operator()(std::istream& is, std::string& s) {
		std::stringstream ss;
		ss << is.rdbuf();
		s = ss.str();
	}
};

struct LineWriter {
  void operator()(std::ostream& os, const std::string& s) {
		os << s;
	}
};

} // namespace stoke

#endif



