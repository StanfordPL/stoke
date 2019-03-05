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

Handler::SupportLevel ComboHandler::get_support(const Instruction& instr) {

  if (!operands_supported(instr)) {
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

std::string ComboHandler::get_handler_name(const Instruction& instr) {

  Handler::SupportLevel level;
  auto handler = get_handler(instr, level) ;
  std::string handler_string("Un-known");

  if (dynamic_cast<StrataHandler *>(handler)) {
    handler_string = string("StrataHandler");
  } else if (dynamic_cast<PackedHandler *>(handler)) {
    handler_string = string("PackedHandler");
  } else if (dynamic_cast<SimpleHandler *>(handler)) {
    handler_string = string("SimpleHandler");
  } else if (dynamic_cast<AddHandler *>(handler)) {
    handler_string = string("AddHandler");
  } else if (dynamic_cast<ConditionalHandler *>(handler)) {
    handler_string = string("ConditionalHandler");
  } else if (dynamic_cast<LeaHandler *>(handler)) {
    handler_string = string("LeaHandler");
  } else if (dynamic_cast<MoveHandler *>(handler)) {
    handler_string = string("MoveHandler");
  } else if (dynamic_cast<PunpckHandler *>(handler)) {
    handler_string = string("PunpckHandler");
  } else if (dynamic_cast<ShiftHandler *>(handler)) {
    handler_string = string("ShiftHandler");
  } else if (dynamic_cast<PseudoHandler *>(handler)) {
    handler_string = string("PseudoHandler");
  }

  return handler_string;
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

std::vector<Handler*> ComboHandler::default_handler_list() const {
  std::vector<Handler*> v;

  v.push_back(new PackedHandler());
  v.push_back(new SimpleHandler());
  v.push_back(new AddHandler());
  v.push_back(new ConditionalHandler());
  v.push_back(new LeaHandler());
  v.push_back(new MoveHandler());
  v.push_back(new PunpckHandler());
  v.push_back(new ShiftHandler());
  v.push_back(new StrataHandler());

  return v;
}

