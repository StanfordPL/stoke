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

#ifndef STOKE_SRC_SEARCH_STATISTICS_CALLBACK_H
#define STOKE_SRC_SEARCH_STATISTICS_CALLBACK_H

#include <chrono>
#include <vector>

#include "src/search/statistics.h"

namespace stoke {

struct StatisticsCallbackData {
  /** Statistics for each transformation type. */
  const std::vector<Statistics>& move_statistics;
  /** The number of proposals that have taken place. */
  const size_t iterations;
  /** The amount of time that has taken place. */
  const std::chrono::duration<double> elapsed;
};

/** Callback signature */
typedef void (*StatisticsCallback)(const StatisticsCallbackData& data, void* arg);

} // namespace stoke

#endif
