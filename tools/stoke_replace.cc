// Copyright 2014 eric schkufza
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

#include <fstream>
#include <iostream>
#include <map>
#include <sstream>
#include <string>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/system/terminal.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "src/args/tunit.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;

auto& h1 = Heading::create("I/O options:");

auto& in = ValueArg<string>::create("i")
    .alternate("in")
    .usage("<path/to/bin>")
    .description("Binary file to extract code from")
    .default_val("./a.out");

auto& target = FileArg<TUnit, TUnitReader, TUnitWriter>::create("target")
    .usage("<path/to/file>")
    .description("Target function to replace in input binary")
    .default_val({"anon", {{RET}}});

auto& out = ValueArg<string>::create("o")
    .alternate("out")
    .usage("<path/to/dir>")
    .description("File to write changes to; default is to overwrite")
    .default_val("");

bool exists(const string& file) {
  Terminal term;
  term << "ls " << file << " >> /dev/null" << endl;
  return term.result() == 0;
}

bool header(map<string, uint64_t>& section_offsets) {
  Terminal term;
  term << "objdump -h " << in.value() << " > /tmp/stoke.$USER.header" << endl;
  if (term.result() != 0) {
		return false;
	}

  ifstream ifs(string("/tmp/stoke.") + getenv("USER") + ".header");
	string line;

	// Skip ahead to table
	for (auto i = 0; i < 5; ++i) {
		getline(ifs, line);
	}

	// Read entries one at a time
	while (getline(ifs, line)) {
		istringstream iss(line);
		string section, temp;
		uint64_t lma, offset;

		iss >> temp >> section >> temp >> temp >> hex >> lma >> offset;
		section_offsets[section] = lma - offset;
		
		// Trailing second line 
		getline(ifs, line);
	}

	return true;
}

bool lookup(const map<string, uint64_t>& section_offsets, uint64_t& offset, size_t& size) {
  Terminal term;
  term << "objdump -d -Msuffix " << in.value() << " > /tmp/stoke.$USER.objdump" << endl;
  if (term.result() != 0) {
		return false;
	}

  ifstream ifs(string("/tmp/stoke.") + getenv("USER") + ".objdump");
	string line;

	// Skip ahead to contents
	for (auto i = 0; i < 4; ++i) {
		getline(ifs, line);
	}

	uint64_t section_offset = 0;
	while (getline(ifs, line)) {
		// If this is a header, update section_offset
		if (line.substr(0,11) == "Disassembly") {
			istringstream iss(line);
			string section;
			iss >> section >> section >> section >> section;
			section = section.substr(0,section.length()-1);
			
			const auto itr = section_offsets.find(section);
			if (itr == section_offsets.end()) {
				return false;
			}
			section_offset = itr->second;
			continue;
		}
		
		// Skip blank lines
		if (line == "") {
			continue;
		}
		
		// Parse function
		istringstream iss(line);
		iss >> hex >> offset;

		string fxn;
		iss >> fxn;
		fxn = fxn.substr(1, fxn.length()-3);

		size_t last_offset = offset;
		while (true) {
			getline(ifs, line);
			if (line == "") {
				break;
			}
			istringstream iss(line);
			iss >> hex >> last_offset;
		}

		size = last_offset - offset + 1;
		offset = offset - section_offset;

		if (fxn == target.value().name) {
			return true;
		}
	}
	
	return false;
}

bool replace(uint64_t offset, size_t size) {
	// Assemble the new function
	Assembler assm;
	auto fxn = assm.assemble(target.value().code);

	// Fail if the new function is larger than the old
	if (fxn.size() > size) {
		return false;
	}

	// Copy binary to new destination if path was specified
	string dest = in.value();
	if (out.value() != "") {
		dest = out.value();
		ifstream ifs(in.value(), ios::binary);
		ofstream ofs(out.value(), ios::binary); 
		ofs << ifs.rdbuf();
		ofs.close();
	}	

	// Overwrite the old function (fingers crossed!)
	fstream fs(dest, ios::binary | ios::in | ios::out);
	fs.seekg(offset);
	for (size_t i = 0; i < fxn.size(); ++i) {
		cout << hex << (int)fxn.get_buffer()[i] << endl;
		fs.put(fxn.get_buffer()[i]);
	}

	return true;
}

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);

	map<string, uint64_t> section_offsets;
	uint64_t fxn_offset;
	size_t fxn_size;

  if (!exists(in.value())) {
    cout << "Unable to read binary file " << in.value() << "!" << endl;
    return 1;
  } else if (!header(section_offsets)) {
    cout << "Unable to extract metadata from binary file " << in.value() << "!" << endl;
    return 1;
	} else if (!lookup(section_offsets, fxn_offset, fxn_size)) {
		cout << "Unable to lookup function " << target.value().name << " in binary file " << in.value() << "!" << endl;
		return 1;
	} else if (!replace(fxn_offset, fxn_size)) {
		cout << "Unable to replace function text!" << endl;
		return 1;
	}

	cout << "Offset = " << dec << fxn_offset << endl;
	cout << "Size   = " << dec << fxn_size << endl;

	return 0;
}
