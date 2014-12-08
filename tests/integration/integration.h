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


#include <cstdlib>
#include <sys/time.h>

TEST(Integration, TutorialTest) {

  struct timeval start;
  struct timeval finish;
  uint64_t diff_1;
  uint64_t diff_2;

  // Build and test original program
  EXPECT_EQ(0, system("cd examples/tutorial; make clean orig >/dev/null"));

  gettimeofday(&start, NULL);
  EXPECT_EQ(49152, system("./examples/tutorial/a.out 90000000 >/dev/null"));
  gettimeofday(&finish, NULL);
  diff_1 = (finish.tv_sec - start.tv_sec)*1000000 +
           (finish.tv_usec - start.tv_usec);

  // Run make extract, testcase
  EXPECT_EQ(0, system("cd examples/tutorial; make extract >/dev/null"));
  EXPECT_EQ(0, system("cd examples/tutorial; make testcase >/dev/null"));

  // In 10 tries, search should succeed at least once...
  size_t good = 0;
  for(size_t i = 0; i < 10; ++i) {
    if(!system("cd examples/tutorial; make search >/dev/null")) {
      good++;
      break;
    }
  }
  EXPECT_GT(good, (size_t)0);

  // Run make replace
  EXPECT_EQ(0, system("cd examples/tutorial; make replace >/dev/null"));

  // Test new program
  gettimeofday(&start, NULL);
  EXPECT_EQ(49152, system("./examples/tutorial/a.out 90000000"));
  gettimeofday(&finish, NULL);
  diff_2 = (finish.tv_sec - start.tv_sec)*1000000 +
           (finish.tv_usec - start.tv_usec);


  // There should have been at least a 5x speedup.
  // Note, we're also timing system() here,
  EXPECT_GT(diff_1, diff_2*5);

  // Cleanup
  EXPECT_EQ(0, system("cd examples/tutorial; make clean >/dev/null"));

}
