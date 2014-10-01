
#include "tests/fixture.h"
#include <iostream>
#include <sstream>
#include <fstream>
#include <exception>

namespace stoke {
namespace test {

using namespace std;

Fixture::Fixture(string filename) {
  name_ = filename;

  // slurp the whole file into a string
  cout << "reading " << filename << endl;
  ifstream in(filename);
  stringstream buffer;
  buffer << in.rdbuf();

  // parse the JSON
  cout << "parsing JSON" << endl;
  Json::Value root;
  Json::Reader reader;
  bool parse_success = reader.parse(buffer.str(), root);

  if (!parse_success)
    throw new runtime_error("JSON parsing failed for file " + filename);

  // read the code
  cout << "reading code" << endl;
  stringstream code_ss;
  const Json::Value& code_json = root["code"];
  for(size_t i = 0; i < code_json.size(); ++i) {
    code_ss << code_json.get(i, Json::Value(string(""))).asString() << endl;
  }
  code_ss >> code_;

  // read the test data
  const Json::Value test_json = root["tests"];
  for (auto name : test_json.getMemberNames() ) {
    cout << "Found test " << name << endl;
    test_data_[name] = test_json[name];
  }

  cout << "DONE" << endl;
  
}


void FixtureTest::SetUp() {
  std::string folder = "/home/berkeley/stoke/tests/fixtures/";

  DIR *dp = opendir(folder.c_str());
  if (dp == NULL) {
    throw new std::runtime_error("Could not open fixtures directory.");
  }


  struct dirent *dirp;
  while((dirp = readdir(dp))) {

    // check if filename ends in .json
    std::string filename(dirp->d_name);
    if(filename.length() <= 5)
      continue;
    size_t extension_pos = filename.rfind(".json");
    if (extension_pos != filename.length() - 5)
      continue;

    std::string filepath = folder + "/" + filename; 
    Fixture f(filepath);
    fixtures_.push_back(f);
  }

}
  


}}
