
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

    cout << "DONE" << endl;
    
  }

}}
