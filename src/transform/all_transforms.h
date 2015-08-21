// Copyright 2013-2015 Stanford University
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


#include "src/transform/add_nops.h"
#include "src/transform/delete.h"
#include "src/transform/global_copy.h"
#include "src/transform/global_swap.h"
#include "src/transform/instruction.h"
#include "src/transform/local_swap.h"
#include "src/transform/memory.h"
#include "src/transform/multi.h"
#include "src/transform/opcode.h"
#include "src/transform/opcode_width.h"
#include "src/transform/operand.h"
#include "src/transform/replace_nop.h"
#include "src/transform/rotate.h"
#include "src/transform/weighted.h"
