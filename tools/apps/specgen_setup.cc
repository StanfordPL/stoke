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

auto& out_arg = ValueArg<string>::create("out")
                .alternate("o")
                .usage("<path/to/dir>")
                .description("Directory where to set up environment")
                .default_val("./a.out");

auto& num_funcs_arg = ValueArg<int>::create("num_funcs")
                      .usage("<int>")
                      .description("Number of pseudo opcodes")
                      .required();

auto& opc_arg = ValueArg<string>::create("opc")
                .description("The opcode for which to find a program")
                .required();

auto& timeout_arg = ValueArg<size_t>::create("timeout")
                    .description("The number of iterations before giving up")
                    .required();

auto& allowed_opc_arg = ValueArg<set<Opcode>, OpcSetReader, OpcSetWriter>::create("allowed_opc")
                        .usage("{ opcode1 opcode2 ... opcoden; e.g., xorl or xorl_r32_r32 }")
                        .description("The set of opcodes allowed to be used")
                        .default_val({});

auto& no_del_dir_arg = FlagArg::create("no_del_dir")
                       .description("Don't delete the directory first.");

auto& allow_all_arg = FlagArg::create("allow_all")
                      .description("Allow the use of all instructions (except the one we are searching for)");

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
    cerr << "ERROR: could not parse opc: " << opc_arg.value() << endl;
    exit(1);
  }

  auto instr = get_instruction(opc, num);

  string out = out_arg.value();

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

  stream.str("");
  stream << def_in;
  string def_in_str = stream.str();

  stream.str("");
  stream << live_out;
  string live_out_str = stream.str();

  auto af = RegSet::empty() + Constants::eflags_af();
  auto def_in_formal = def_in - af;
  stream.str("");
  stream << def_in_formal;
  string def_in_formal_str = stream.str();

  auto live_out_formal = live_out - af;
  stream.str("");
  stream << live_out_formal;
  string live_out_formal_str = stream.str();

  stream.str("");
  stream << instr;
  string instr_str = stream.str();

  stream.str("");
  OpcSetWriter()(stream, allowed_opc_arg);
  string whitelist = stream.str();

  boost::filesystem::path dir(out);
  if (!no_del_dir_arg.value()) {
    boost::filesystem::remove_all(dir);
  }
  boost::filesystem::create_directories(dir);

  std::string timeout_str = to_string(timeout_arg.value());

  int num_funcs = num_funcs_arg.value();

  int num_tests = 5;

  write_file(out + "/Makefile", R"STR(
all: search formal

search:
	stoke search --config search.config

verify:
	stoke debug verify --config verify.config --rewrite result.s

verify_alt:
	stoke debug verify --config verify.config --rewrite alt.s

formal:
	stoke debug verify --config formal.config --rewrite result.s

formal_alt:
	stoke debug verify --config formal.config --rewrite alt.s

diff:
	stoke debug diff --target target.s --rewrite alt.s --testcases tc.tc --functions ../../functions --def_in ")STR" + def_in_str + R"STR(" --live_out ")STR" + live_out_str + R"STR("

)STR");

  write_file(out + "/target.s", R"STR(
.target:
  )STR" + instr_str + R"STR(
  retq
)STR");

  write_file(out + "/search.config", R"STR(

--no_progress_update

##### Output Options:
--out result.s

##### Statistics Options:
# Place to put files with cost function data
# --statistics_directory <path/to/dir>
--statistics_interval 5000000000
# Maximum cost to record when collecting statistics
# --statistics_max_cost <int>

##### Correctness Options:
--distance hamming
--misalign_penalty 1
--reduction sum
# --no-relax_mem 
# --relax_reg 
--sig_penalty 10000
--sse_count 4
--sse_width 8

##### Cost Function Evaluation Options:
--cost correctness + nongoal

)STR" + (allow_all_arg.value()?"--non_goal ../../avoid/" + opc_arg.value():"") + R"STR(

##### Search Options:
# --beta <double>
--init zero
--max_instrs 15
--cycle_timeout "10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,100000,100000,100000,100000,1000000,1000000,1000000,1000000,1000000,10000000,10000000,10000000,50000000,50000000,50000000,50000000"
--timeout_iterations )STR" + timeout_str + R"STR(

##### Random Seed Options:
#--seed <int>

##### Sandbox Options:
# --abi_check 

##### Target Options:
--def_in ")STR" + def_in_str + R"STR("
--live_out ")STR" + live_out_str + R"STR("
--functions ../../functions
# --heap_out 
# --stack_out 
--target target.s

##### Testcase Options:
# --index <int>
# --shuffle_testcases 
#--test_set "{ ... }"
--testcases ../../../testcases/tc.tc
--training_set "{ 0 ... )STR" + to_string(num_tests-1) + R"STR( }"

##### Transform Options:
--callee_save 
--cpu_flags "{ fpu tsc msr cx8 sep cmov clflush mmx fxsr sse sse2 syscall rdtscp rep_good nopl pni pclmulqdq monitor ssse3 fma cx16 sse4_1 sse4_2 movbe popcnt aes xsave avx f16c rdrand lahf_lm abm xsaveopt fsgsbase bmi1  avx2 bmi2 erms invpcid }" # not included rtm hle
# --immediates "{ imm1 imm2 ... }"
# --mem_read 
# --mem_write 
--opc_blacklist "{ )STR" + opc_arg.value() + R"STR( }"
--opc_whitelist ")STR" + whitelist + R"STR("
--preserve_regs "{ %r14 %r15 %ymm14 %ymm15 %rsp %rbp }"
--call_weight ")STR" + to_string(num_funcs) + R"STR("

##### Verifier Options:
--strategy hold_out
)STR");

  write_file(out + "/verify.config", R"STR(
##### Correctness Options:
--distance hamming
--misalign_penalty 1
--reduction sum
# --relax_mem 
# --relax_reg 
--sig_penalty 10000
--sse_count 4
--sse_width 8

##### Cost Function Evaluation Options:
# --max_cost <int>
# -k <int>

##### Performance Options:
# --nesting_penalty <int>
--cost correctness

##### Rewrite Options:
#--rewrite alt.s

##### Sandbox Options:
# --abi_check 
# --max_jumps <int>

##### Random Seed Options:
# --seed <int>

##### Target Options:
--def_in ")STR" + def_in_str + R"STR("
--live_out ")STR" + live_out_str + R"STR("
--functions ../../functions
# --heap_out 
# --stack_out 
--target target.s

##### Testcase Options:
# --index <int>
# --shuffle_testcases 
# --test_set "{ ... }"
--testcases ../../../testcases/tc.tc
#--training_set "{ ... }"

##### Verifier Options:
--strategy hold_out
)STR");

  write_file(out + "/formal.config", R"STR(
##### Correctness Options:
--distance hamming
--misalign_penalty 1
--reduction sum
# --relax_mem 
# --relax_reg 
--sig_penalty 10000
--sse_count 4
--sse_width 8

##### Cost Function Evaluation Options:
# --max_cost <int>
# -k <int>

##### Performance Options:
# --nesting_penalty <int>

##### Rewrite Options:
#--rewrite result.s

##### Sandbox Options:
# --abi_check 
# --max_jumps <int>

##### Random Seed Options:
# --seed <int>

##### Target Options:
--def_in ")STR" + def_in_formal_str + R"STR("
--live_out ")STR" + live_out_formal_str + R"STR("
--functions ../../functions
# --heap_out 
# --stack_out 
--target target.s

##### Testcase Options:
# --index <int>
# --shuffle_testcases 

##### Verifier Options:
--strategy formal
)STR");
}
