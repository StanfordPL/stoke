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

#include "src/ext/cpputil/include/serialize/hex_reader.h"
#include "src/ext/cpputil/include/serialize/hex_writer.h"
#include "src/state/sym_table.h"

#include <string>

using namespace cpputil;
using namespace std;
using namespace x64asm;

namespace stoke {

ostream& SymbolTable::write_text(ostream& os) const {
	const auto fmt = os.flags();

	os << "[ " << table_.size() << " symbols ]";
 	if (table_.empty()) {
		return os;
	}

	os << endl;
	for (const auto& entry : table_) {
		os << endl;
  	HexWriter<uint64_t, 8>()(os, entry.second); 
		os << " " << entry.first.get_text();
	}

	os.flags(fmt);
	return os;
}

istream& SymbolTable::read_text(istream& is) {
	const auto fmt = is.flags();

	table_.clear();

	string s;
	getline(is, s, '[');

	size_t rows = 0;
	is >> dec >> rows;
	
	getline(is, s, ']');

	if (rows != 0) {
		getline(is, s);
	}
	for (size_t i = 0; i < rows; ++i) {
		getline(is, s);

		uint64_t addr = 0;
		HexReader<uint64_t, 8>()(is, addr);

		string label;
		is >> label;

		insert(Label(label), addr);
	}

	is.flags(fmt);
  return is;
}

ostream& SymbolTable::write_bin(ostream& os) const {
	const size_t num_syms = table_.size();
	os.write((const char*)&num_syms, sizeof(size_t));
	for (const auto& entry : table_) {
		const size_t num_chars = entry.first.get_text().length();
		os.write((const char*)&num_chars, sizeof(size_t));
		os.write(entry.first.get_text().c_str(), num_chars);
		os.write((const char*)&entry.second, sizeof(uint64_t));
	}

	return os;
}

istream& SymbolTable::read_bin(istream& is) {
	table_.clear();

	size_t num_syms = 0;
	is.read((char*)&num_syms, sizeof(size_t));

	for (size_t i = 0; i < num_syms; ++i) {
		size_t num_chars = 0;
		is.read((char*)&num_chars, sizeof(size_t));

		string label = "";
		for (size_t j = 0; j < num_chars; ++j) {
			char c;
			is.read(&c, sizeof(char));
			label += c;
		}

		uint64_t addr = 0;
		is.read((char*)&addr, sizeof(uint64_t));

		insert(Label(label), addr);
	}

	return is;
}

} // namespace stoke



