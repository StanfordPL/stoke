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

#ifndef STOKE_SRC_SEARCH_PROGRESS_CALLBACK_H
#define STOKE_SRC_SEARCH_PROGRESS_CALLBACK_H

#include "src/cfg/cfg.h"
#include "src/cost/cost.h"

namespace stoke {

/** POD-datatype passed to callbacks by search */
struct ProgressCallbackData {
  const Cfg& current;
  const Cost current_cost;

  const Cfg& best_yet;
  const Cost best_yet_cost;

  const Cfg& best_correct;
  const Cost best_correct_cost;

  const bool success;
};

/** Callback signature */
typedef void (*ProgressCallback)(const ProgressCallbackData& data, void* arg);

} // namespace stoke

#endif
