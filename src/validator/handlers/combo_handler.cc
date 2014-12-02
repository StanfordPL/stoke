// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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

using namespace stoke;
using namespace x64asm;
using namespace std;

Handler::SupportLevel ComboHandler::get_support(const Instruction& instr) {

  error_ = "";

  SupportLevel level;
  get_handler(instr, level);
  return level;
}

void ComboHandler::build_circuit(const Instruction& instr, SymState& ss) {

  error_ = "";

  SupportLevel level;
  Handler* h = get_handler(instr, level);
  if(level == Handler::NONE) {
    error_ = "Instruction not supported";
  } else {
    assert(h != 0);
    h->build_circuit(instr, ss);
  }

}

Handler* ComboHandler::get_handler(const Instruction& instr, Handler::SupportLevel& sl) {

  /* Find the best handler for this instruction */
  Handler* best_handler = NULL;
  sl = Handler::SupportLevel::NONE;
  for(auto h : handlers_) {
    auto cur_level = h->get_support(instr);

    if(cur_level != sl && ((cur_level | sl) == cur_level)) {
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

