// Copyright 2013-2016 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


#include "src/validator/handlers/combo_handler.h"
#include "src/validator/handlers.h"

using namespace stoke;
using namespace x64asm;
using namespace std;

vector<Handler*> ComboHandler::default_handler_list() const {
  vector<Handler*> v;

  if (strata_path_.size() != 0) {
    v.push_back(new StrataHandler(strata_path_));
  }

  // New Handlers
  v.push_back(new PackedHandler());
  v.push_back(new SimpleHandler());

  v.push_back(new AddHandler());
  v.push_back(new ConditionalHandler());
  v.push_back(new LeaHandler());
  v.push_back(new MoveHandler());
  v.push_back(new PunpckHandler());
  v.push_back(new ShiftHandler());
  v.push_back(new PseudoHandler());

  return v;
}

Handler::SupportLevel ComboHandler::get_support(const Instruction& instr) {

  if (!operands_supported(instr) && instr.get_opcode() != CALL_LABEL) {
    return Handler::NONE;
  }

  error_ = "";

  SupportLevel level;
  get_handler(instr, level);
  return level;
}

void ComboHandler::build_circuit(const Instruction& instr, SymState& ss) {

  error_ = "";

  SupportLevel level;
  Handler* h = get_handler(instr, level);
  if (level == Handler::NONE) {
    error_ = "Instruction not supported";
  } else {
    assert(h != 0);
    h->build_circuit(instr, ss);
    if (h->has_error()) {
      error_ = h->error();
    }
  }

}

Handler* ComboHandler::get_handler(const Instruction& instr, Handler::SupportLevel& sl) {

  /* Find the best handler for this instruction */
  Handler* best_handler = NULL;
  sl = Handler::SupportLevel::NONE;
  for (auto h : handlers_) {
    auto cur_level = h->get_support(instr);

    if (cur_level != sl && ((cur_level | sl) == cur_level)) {
      best_handler = h;
      sl = cur_level;
    }
  }

  /* If we didn't find a handler, give an error */
  if (!best_handler) {
    stringstream ss;
    ss << "Unsupported instruction: " << instr;
    error_ = ss.str();
  }

  return best_handler;

}

