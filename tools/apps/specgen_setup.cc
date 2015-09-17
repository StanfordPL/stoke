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

#include <chrono>
#include <fstream>
#include <iostream>
#include <random>
#include <map>
#include <string>
#include <vector>
#include <cassert>

#include <boost/regex.hpp>

#include "src/ext/cpputil/include/command_line/command_line.h"

#include "tools/io/opc_set.h"

#include "tools/apps/specgen.h"
#include "tools/apps/support.h"

#include <boost/filesystem.hpp>

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;
using namespace std::chrono;
using namespace boost;

auto& io_opt = Heading::create("Main option:");

auto& workdir_arg = ValueArg<string>::create("workdir")
                    .usage("<path/to/dir>")
                    .description("The working directory")
                    .required();

auto& opc_arg = ValueArg<string>::create("opc")
                .description("The opcode to consider;  use opcode_number to indicate an imm8 argument")
                .required();

void write_file(string fname, string content) {
  ofstream f;
  f.open(fname);
  f << content;
  f.close();
}

int main(int argc, char** argv) {
  ostringstream stream;
  CommandLineConfig::strict_with_convenience(argc, argv);

  // parse opcode
  // we use opc_8 to indicate that we want to use 8 as the imm8 argument
  smatch result;
  regex reg("(.*?)(_([0-9]+))?");
  string opc_str;
  uint8_t num;
  if (regex_match(opc_arg.value(), result, reg)) {
    if (result[2] == "") {
      num = 0;
    } else {
      string t = result[3];
      num = stoi(t);
    }
    opc_str = result[1];
  } else {
    exit(3);
  }
  Opcode opc;
  stringstream ss(opc_arg.value());
  ss >> opc;
  if (opc == LABEL_DEFN) {
    cerr << "ERROR: could not parse opcoce: " << opc_arg.value() << endl;
    exit(1);
  }

  auto instr = get_instruction(opc, num);

  string workdir = workdir_arg.value();

  auto def_in = instr.maybe_read_set();
  auto live_out = instr.maybe_write_set();
  if (live_out != instr.must_write_set()) {
    // this affects the following instructions: blsil,blsiq,blsmskl,blsmskq,blsrl,blsrq,bsfl,bsfq,bsrw,bsrl,bsrq,cmovaw,cmoval,cmovaq,cmovaew,cmovael,cmovaeq,cmovbw,cmovbl,cmovbq,cmovbew,cmovbel,cmovbeq,cmovcw,cmovcl,cmovcq,cmovew,cmovel,cmoveq,cmovgw,cmovgl,cmovgq,cmovgew,cmovgel,cmovgeq,cmovlw,cmovll,cmovlq,cmovlew,cmovlel,cmovleq,cmovnaw,cmovnal,cmovnaq,cmovnaew,cmovnael,cmovnaeq,cmovnbw,cmovnbl,cmovnbq,cmovnbew,cmovnbel,cmovnbeq,cmovncw,cmovncl,cmovncq,cmovnew,cmovnel,cmovneq,cmovngw,cmovngl,cmovngq,cmovngew,cmovngel,cmovngeq,cmovnlw,cmovnll,cmovnlq,cmovnlew,cmovnlel,cmovnleq,cmovnow,cmovnol,cmovnoq,cmovnpw,cmovnpl,cmovnpq,cmovnsw,cmovnsl,cmovnsq,cmovnzw,cmovnzl,cmovnzq,cmovow,cmovol,cmovoq,cmovpw,cmovpl,cmovpq,cmovpew,cmovpel,cmovpeq,cmovpow,cmovpol,cmovpoq,cmovsw,cmovsl,cmovsq,cmovzw,cmovzl,cmovzq,cmpxchgw,cmpxchgl,cmpxchgq,cmpxchgb,cmpxchgb,cmpxchgb,cmpxchgb,cmpxchgb,cmpxchgb,cmpxchgb,sti
    def_in |= live_out;
  }

  if ((live_out & instr.maybe_undef_set()) != RegSet::empty()) {
    // this affects all shifts and rotates
    live_out -= instr.maybe_undef_set();
  }

  auto af = RegSet::empty() + Constants::eflags_af();
  auto def_in_formal = def_in - af;
  auto live_out_formal = live_out - af;

  auto full_opc_str = opc_arg.value();
  auto out = workdir + "/instructions/" + full_opc_str;
  boost::filesystem::path dir(out);
  boost::filesystem::create_directories(dir);

  ofstream f_code;
  f_code.open(out + "/" + full_opc_str + ".s");
  f_code << "target:" << endl;
  f_code << "  " << instr << endl;
  f_code.close();

  ofstream f_meta;
  f_meta.open(out + "/" + full_opc_str + ".meta.json");
  f_meta << "{" << endl;
  f_meta << "  \"def_in\": \"" << def_in << "\"," << endl;
  f_meta << "  \"live_out\": \"" << live_out << "\"," << endl;
  f_meta << "  \"def_in_formal\": \"" << def_in_formal << "\"," << endl;
  f_meta << "  \"live_out_formal\": \"" << live_out_formal << "\"," << endl;
  f_meta << "  \"delim\": 0" << endl;
  f_meta << "}" << endl;
  f_meta.close();
}
