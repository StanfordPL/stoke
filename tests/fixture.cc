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


#include "tests/fixture.h"
#include <iostream>
#include <sstream>
#include <fstream>
#include <exception>


using namespace std;



CodeFixture::CodeFixture(string filename) {
  // slurp the whole file into a string
  ifstream in(filename);
  stringstream buffer;
  buffer << in.rdbuf();

  // parse the JSON
  Json::Value root;
  Json::Reader reader;
  bool parse_success = reader.parse(buffer.str(), root);

  if (!parse_success)
    throw runtime_error("JSON parsing failed for file " + filename +
                        ":" + reader.getFormattedErrorMessages());

  // get the metadata
  size_t name_pos = filename.rfind("/") + 1;
  string root_name = root["name"].asString();
  string file_given_name = filename.substr(name_pos);
  if (root_name.compare(file_given_name + ".json")) {
    name_ = root_name;
  } else {
    name_ = root_name + " [" + file_given_name + "]";
  }


  // read the code
  stringstream code_ss;
  const Json::Value& code_json = root["code"];
  for (size_t i = 0; i < code_json.size(); ++i) {
    code_ss << code_json.get(i, Json::Value(string(""))).asString() << endl;
  }
  code_ss >> code_;

  // read the test data
  const Json::Value test_json = root["tests"];
  for (auto name : test_json.getMemberNames()) {
    test_data_[name] = test_json[name];
  }


}

::std::ostream& operator<<(::std::ostream& os, const CodeFixture& f) {
  return os << f.get_name();
}

/*
void PrintTo(const CodeFixture& f, ::std::ostream* os) {
  *os << f.get_name();  // whatever needed to print bar to os
}
*/



vector<CodeFixture> CodeFixtureTestInit::fixtures_;

void CodeFixtureTestInit::generate_fixtures() {

  //make sure that if this function gets called twice,
  //we don't add them all over again.

  fixtures_.clear();
  std::string folder = "tests/fixtures";

  DIR* dp = opendir(folder.c_str());
  if (dp == NULL) {
    throw new std::runtime_error("Could not open fixtures directory.");
  }


  struct dirent* dirp;
  while ((dirp = readdir(dp))) {

    // check if filename ends in .json
    std::string filename(dirp->d_name);
    if (filename.length() <= 5) {
      continue;
    }
    size_t extension_pos = filename.rfind(".json");
    if (extension_pos != filename.length() - 5) {
      continue;
    }

    std::string filepath = folder + "/" + filename;


    CodeFixture f(filepath);
    fixtures_.push_back(f);
  }

}




