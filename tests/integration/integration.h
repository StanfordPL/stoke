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


#include <iostream>
#include <fstream>
#include <cstdlib>
#include <sys/time.h>

class IntegrationTest : public ::testing::Test {

public:

  virtual void SetUp() {
    set_path("../../bin");
  }

  /** Specify the working directory for calls to 'system' */
  void set_working_dir(std::string wd) {
    working_directory_ = wd;
  }

  /** Specify the path for calls to 'system' */
  void set_path(std::string path) {
    path_ = path;
  }

  /** Execute in the shell */
  uint64_t shell(std::string code, uint64_t* time = NULL) {
    struct timeval start;
    struct timeval finish;

    gettimeofday(&start, NULL);

    std::stringstream ss;

    if(working_directory_ != "")
      ss << "cd " << working_directory_ << "; ";

    if(path_ != "")
      ss << "PATH=" << path_ << ":$PATH ";

    ss << code;
    ss << " >/dev/null";

    uint64_t value = system(ss.str().c_str());

    gettimeofday(&finish, NULL);

    if(time) {
      *time = (finish.tv_sec - start.tv_sec)*1000000 +
              (finish.tv_usec - start.tv_usec);
    }

    return value;
  }

private:

  std::string working_directory_;
  std::string path_;

};

TEST_F(IntegrationTest, TutorialTest) {

  uint64_t diff_1;
  uint64_t diff_2;

  set_working_dir("examples/tutorial");

  // Build and test original program
  EXPECT_EQ(0, shell("make clean orig"));
  EXPECT_EQ(42752, shell("./a.out 90000000", &diff_1));

  // Run make extract, testcase
  EXPECT_EQ(0, shell("make extract"));
  EXPECT_EQ(0, shell("make testcase"));

  // In 10 tries, search should succeed at least once...
  size_t good = 0;
  for(size_t i = 0; i < 10; ++i) {
    if(!shell("make search")) {
      good++;
      break;
    }
  }
  EXPECT_GT(good, (size_t)0);

  // Run make replace
  EXPECT_EQ(0, shell("make replace"));

  // Test new program
  EXPECT_EQ(42752, shell("./a.out 90000000", &diff_2));

  // There should have been at least a 20% speedup.
  // Usually we see a 10x speedup.
  // Note, we're also timing system() here,
  EXPECT_GT(diff_1*100, diff_2*120);

  // Cleanup
  EXPECT_EQ(0, shell("make clean"));

}

int wc(std::string filename) {
  std::ifstream inFile(filename);
  return std::count(std::istreambuf_iterator<char>(inFile),
                    std::istreambuf_iterator<char>(), '\n');
}

TEST_F(IntegrationTest, PairityTest) {

  uint64_t diff_1;
  uint64_t diff_2;

  set_working_dir("examples/pairity");

  // Build and test original program
  EXPECT_EQ(0, shell("make clean orig"));

  EXPECT_EQ(0, shell("./a.out 1000000000", &diff_1));

  // Run make extract
  EXPECT_EQ(0, shell("make extract"));

  // In 10 tries, search should succeed at least once...
  size_t good = 0;
  for(size_t i = 0; i < 10; ++i) {
    if(!shell("make search")) {
      if(wc("examples/pairity/result.s") < 20) {
        good++;
        break;
      }
    }
  }
  EXPECT_GT(good, (size_t)0);

  // Run make replace
  EXPECT_EQ(0, shell("make replace"));

  // Test new program
  EXPECT_EQ(0, shell("./a.out 1000000000", &diff_2));

  // Cleanup
  EXPECT_EQ(0, shell("make clean"));

}
