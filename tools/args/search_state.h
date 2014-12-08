// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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

#ifndef STOKE_TOOLS_ARGS_SEARCH_STATE_H
#define STOKE_TOOLS_ARGS_SEARCH_STATE_H

#include "src/ext/cpputil/include/command_line/command_line.h"

#include "src/tunit/tunit.h"
#include "tools/io/tunit.h"

namespace stoke {

extern cpputil::Heading& search_state_heading;

extern cpputil::FileArg<TUnit, TUnitReader, TUnitWriter>& current_arg;
extern cpputil::FileArg<TUnit, TUnitReader, TUnitWriter>& best_yet_arg;
extern cpputil::FileArg<TUnit, TUnitReader, TUnitWriter>& best_correct_arg;

} // namespace stoke

#endif


