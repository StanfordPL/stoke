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

#include <chrono>
#include <fstream>
#include <iostream>
#include <random>
#include <string>
#include <vector>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/serialize/span_reader.h"
#include "src/ext/cpputil/include/system/terminal.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "src/args/tunit.h"
#include "src/cfg/cfg.h"
#include "src/state/cpu_states.h"
#include "src/stategen/stategen.h"

using namespace cpputil;
using namespace std;
using namespace std::chrono;
using namespace stoke;
using namespace x64asm;

auto& h1 = Heading::create("I/O options:");

auto& bin = ValueArg<string>::create("bin")
    .usage("<path/to/bin>")
    .description("Executable binary containing function to generate testcases for")
    .default_val("./a.out");

auto& args = ValueArg<string>::create("args")
    .usage("<arg1 arg2 ... argn>")
    .description("Optional command line arguments to pass to binary")
    .default_val("");

auto& out = ValueArg<string>::create("o")
    .alternate("out")
    .usage("<path/to/file>")
    .description("File to write testcases to (defaults to console if unspecified)")
    .default_val("");

auto& h2 = Heading::create("Common options:");

auto& max_tc = ValueArg<size_t>::create("max_testcases")
    .usage("<int>")
    .description("The maximum number of testcases to generate")
    .default_val(16);

auto& h3 = Heading::create("Trace options:");

auto& fxn = ValueArg<string>::create("fxn")
    .usage("<string>")
    .description("Function to generate testcases for")
    .default_val("main");

auto& begin_line = ValueArg<size_t>::create("begin_line") 
		.usage("<int>")
		.description("The line number to begin recording from")
		.default_val(1);

auto& end_lines = ValueArg<vector<size_t>, SpanReader<vector<size_t>, Range<size_t, 1, 1024>>>::create("end_lines")
    .usage("{ 0 1 ... 9 }")
    .description("Line number to end recording on; recording always stops on returns")
    .default_val({});

auto& max_stack = ValueArg<uint64_t>::create("max_stack")
    .usage("<bytes>")
    .description("The maximum number of bytes to assume could be stack")
    .default_val(1024);

auto& h4 = Heading::create("Autogen options:");

auto& max_attempts = ValueArg<uint64_t>::create("max_attempts")
    .usage("<int>")
    .description("The maximum number of attempts to make at generating a testcase")
    .default_val(16);

auto& max_memory = ValueArg<uint64_t>::create("max_memory")
    .usage("<bytes>")
    .description("The maximum number of bytes to allocate to stack or heap")
    .default_val(1024);

auto& target = FileArg<TUnit, TUnitReader, TUnitWriter>::create("target")
    .usage("<path/to/file>")
    .description("Source code to generate testcases for")
    .default_val({"anon", {{RET}}});

auto& h5 = Heading::create("Sandbox options:");

auto& abi_check = FlagArg::create("abi_check")
		.description("Report SIGSEGV for abi violations");

auto& max_jumps = ValueArg<size_t>::create("max_jumps")
    .usage("<int>")
    .description("Maximum jumps before exit due to infinite loop")
    .default_val(1024);

auto& h6 = Heading::create("File conversion options:");

auto& compress = FlagArg::create("compress")
		.description("Convert testcase file from text to binary");

auto& decompress = FlagArg::create("decompress")
		.description("Convert testcase file from binary to text");

auto& in = ValueArg<string>::create("input")
		.alternate("i")
		.usage("<path/to/file>")
		.description("Path to testcases file")
		.default_val("in.tc");

auto& h7 = Heading::create("Random number generator options");

auto& seed = ValueArg<default_random_engine::result_type>::create("seed")
    .usage("<int>")
    .description("Seed for random number generator; set to zero for random")
    .default_val(0);

int auto_gen() {
  if (seed == 0) {
    const auto time = system_clock::now().time_since_epoch().count();
    default_random_engine gen(time);
    seed.value() = gen();
  }

	Cfg cfg_t(target.value().code, RegSet::universe(), RegSet::empty());

	Sandbox sb;
	sb.set_abi_check(abi_check)
		.set_max_jumps(max_jumps);

	StateGen sg(&sb);
	sg.set_max_attempts(max_attempts.value())
		.set_max_memory(max_stack.value());

	CpuStates tcs;
	for (size_t i = 0, ie = max_tc.value(); i < ie; ++i) {
		CpuState tc;
		if (sg.get(tc, cfg_t)) {
			tcs.push_back(tc);
		}
	}

	if (tcs.empty()) {
		cout << "Unable to generate testcases!" << endl;
		return 1;
	}

	if (out.value() != "") {
		ofstream ofs(out.value());
		tcs.write_text(ofs);
	} else {
		tcs.write_text(cout);
		cout << endl;
	}

	return 0;
}

int trace(const string& argv0) {
  string here = argv0;
  here = here.substr(0, here.find_last_of("/") + 1);

  const string pin_path = here + "../src/ext/pin-2.13-62732-gcc.4.4.7-linux/";
  const string so_path = pin_path + "source/tools/stoke/obj-intel64/";

  Terminal term;
  term << pin_path << "pin -injection child -t " << so_path << "testcase.so ";

  term << "-f " << fxn.value() << " ";
  if (out.value() != "") {
    term << "-o " << out.value() << " ";
  }
  term << "-x " << max_stack.value() << " ";
  term << "-n " << max_tc.value() << " ";
	term << "-b " << begin_line.value() << " ";
	term << "-e \" ";
	for ( auto e : end_lines.value() ) {
		term << e << " ";
	}
	term << "\" ";

  term << " -- " << bin.value() << " " << args.value() << endl;

  return 0;
}

int do_compress() {
	ifstream ifs(in.value());
	if (!ifs.is_open()) {
		cout << "Unable to open input file: " << in.value() << "!" << endl;
		return 1;
	}

	CpuStates cs;
	cs.read_text(ifs);
	if (ifs.fail()) {
		cout << "Unable to read input file: " << in.value() << "!" << endl;
		return 1;
	}

	if (out.value() != "") {
		ofstream ofs(out.value());
		cs.write_bin(ofs);
	} else {
		cs.write_bin(cout);
		cout << endl;
	}

	return 0;	
}

int do_decompress() {
	ifstream ifs(in.value());
	if (!ifs.is_open()) {
		cout << "Unable to open input file: " << in.value() << "!" << endl;
		return 1;
	}

	CpuStates cs;
	cs.read_bin(ifs);
	if (ifs.fail()) {
		cout << "Unable to read input file: " << in.value() << "!" << endl;
		return 1;
	}

	if (out.value() != "") {
		ofstream ofs(out.value());
		cs.write_text(ofs);
	} else {
		cs.write_text(cout);
		cout << endl;
	}

	return 0;	
}

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);

  srand(1);

	if (compress.value()) {
		return do_compress();
	} else if (decompress.value()) {
		return do_decompress();
	} else if (target.value().name != "anon") {
		return auto_gen();
	} else {
		return trace(argv[0]);
	}
}

