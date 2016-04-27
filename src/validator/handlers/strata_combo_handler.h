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


#ifndef STOKE_SRC_VALIDATOR_HANDLER_STRATA_COMBO_HANDLER_H
#define STOKE_SRC_VALIDATOR_HANDLER_STRATA_COMBO_HANDLER_H

#include "src/validator/handler.h"
#include "src/validator/handlers/add_handler.h"
#include "src/validator/handlers/combo_handler.h"
#include "src/validator/handlers/conditional_handler.h"
#include "src/validator/handlers/lea_handler.h"
#include "src/validator/handlers/move_handler.h"
#include "src/validator/handlers/packed_handler.h"
#include "src/validator/handlers/pseudo_handler.h"
#include "src/validator/handlers/punpck_handler.h"
#include "src/validator/handlers/shift_handler.h"
#include "src/validator/handlers/simple_handler.h"

namespace stoke {

/** Uses several handlers, in prioritized order, to build a circuit */
class StrataComboHandler : public ComboHandler {

public:

  virtual ~StrataComboHandler() {};

protected:

  /** Default prioritized list of handlers */
  virtual std::vector<Handler*> default_handler_list() const;

};

} //namespace stoke


#endif
