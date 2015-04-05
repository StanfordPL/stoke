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


#ifndef _STOKE_TEST_X64ASM_R_H
#define _STOKE_TEST_X64ASM_R_H

namespace x64asm {

// In the old code, the Rb class threw an assertion to
// make sure that it couldn't print al/bl/cl/dl.  
// None of these classes exist anymore, so this test is of
// questionable value.
TEST(RegisterPrinting, CanPrintAl) {
  std::stringstream ss;
  ss << (R8)Constants::al();
  ASSERT_EQ("%al", ss.str());
}

TEST(RegisterPrinting, CanPrintBl) {
  std::stringstream ss;
  ss << (R8)Constants::bl();
  ASSERT_EQ("%bl", ss.str());
}

TEST(RegisterPrinting, CanPrintCl) {
  std::stringstream ss;
  ss << (R8)Constants::cl();
  ASSERT_EQ("%cl", ss.str());
}

TEST(RegisterPrinting, CanPrintDl) {
  std::stringstream ss;
  ss << (R8)Constants::dl();
  ASSERT_EQ("%dl", ss.str());
}

} //namespace x64asm

#endif
