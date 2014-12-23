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

#include <sstream>
#include <string>

#include "src/ext/cpputil/include/serialize/text_reader.h"

#include "tools/io/mem_set.h"

using namespace cpputil;
using namespace std;
using namespace x64asm;

namespace stoke {

void MemSetReader::operator()(istream& is, set<M8>& ms) {
	ms.clear();
	
	set<string> strs;
	TextReader<set<string>>()(is, strs);

	for (const auto& s : strs) {
		// Try making an instruction that contains this operands
		stringstream ss;
		ss << "movb %al, " << s << endl;
		Code c;
		ss >> c;

		// If something went wrong the operand is bad	
		if (ss.fail()) {
			is.setstate(ios::failbit);
			return;
		}
		
		// Otherwise we can keep it
		ms.insert(c[0].get_operand<M8>(0));
	}
}

void MemSetWriter::operator()(ostream& os, const set<M8>& ms) {
	os << "{";
	for (const auto& m : ms) {
		os << " " << m;
	}
	os << " }";
}

} // namespace stoke
