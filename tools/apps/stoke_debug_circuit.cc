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

#include <iostream>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/io/column.h"
#include "src/ext/cpputil/include/io/console.h"

#include "src/validator/straight_line.h"
#include "src/validator/handlers/combo_handler.h"

#include "tools/gadgets/functions.h"
#include "tools/gadgets/solver.h"
#include "tools/gadgets/target.h"
#include "tools/gadgets/validator.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;

auto& dbg = Heading::create("Circuit Printing Options:");
auto& only_live_out_arg = FlagArg::create("only_live_out")
                       .description("Only show live out registers");
auto& show_unchanged = FlagArg::create("show_unchanged")
                       .description("Show the formula for unchanged registers");

template <typename T>
string out_padded(T t, size_t min_length, char pad = ' ') {
  stringstream ss;
  ss << (*t);
  size_t len = ss.str().size();
  for (size_t i = 0; i < (min_length - len); i++) {
    ss << pad;
  }
  return ss.str();
}

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  FunctionsGadget aux_fxns;
  TargetGadget target(aux_fxns, false);
  auto code = target.get_code();

  Console::msg() << "Target" << endl;
  Console::msg() << endl;
  Console::msg() << target_arg.value().get_code() << endl;
  Console::msg() << endl;

  ComboHandler ch;
  SymState state("in");

  // compute circuit
  size_t line = 0;
  for (auto it : code) {
    state.set_lineno(line);
    ch.build_circuit(it, state);
    line++;
  }

  // print symbolic state
  RegSet rs = (RegSet::all_gps() | RegSet::all_ymms()) +
    Constants::eflags_cf() + 
    Constants::eflags_sf() + 
    Constants::eflags_zf() + 
    Constants::eflags_of() + 
    Constants::eflags_pf();
  for (auto gp_it = rs.gp_begin(); gp_it != rs.gp_end(); ++gp_it) {
    cout << out_padded(gp_it, 7) << "= ";
    cout << state.lookup(*gp_it) << endl;
  }
  for (auto sse_it = rs.sse_begin(); sse_it != rs.sse_end(); ++sse_it) {
    cout << out_padded(sse_it, 7) << "= ";
    cout << state.lookup(*sse_it) << endl;
  }
  for (auto flag_it = rs.flags_begin(); flag_it != rs.flags_end(); ++flag_it) {
    cout << out_padded(flag_it, 7) << "= ";
    SymBool flag = state[*flag_it];
    cout << flag << endl;
  }

  return 0;
}
