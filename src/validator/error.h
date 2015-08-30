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


#ifndef STOKE_VALIDATOR_ERROR_H
#define STOKE_VALIDATOR_ERROR_H

#include <exception>
#include <string>
#include <sstream>

#define VALIDATOR_ERROR(X) validator_error(__FILE__, __LINE__, X);
#define SET_ERROR(X) { error_=(X); has_error_=true; error_file_=__FILE__; error_line_=__LINE__; }

class validator_error : public std::exception {

public:

  validator_error(std::string file, int line, std::string message) {
    file_ = file;
    line_ = line;
    message_ = message;
  }

  int get_line() {
    return line_;
  }

  std::string get_file() {
    return file_;
  }

  std::string get_message() {
    return message_;
  }

  virtual const char* what() const throw() {
    std::stringstream ss;
    ss << "[" << file_ << ":" << line_ << "] " << message_;
    return ss.str().c_str();
  }

private:

  std::string message_;
  std::string file_;
  int line_;

};

#endif
