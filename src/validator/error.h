
#ifndef STOKE_VALIDATOR_ERROR_H
#define STOKE_VALIDATOR_ERROR_H

#include <exception>
#include <string>
#include <sstream>

#define VALIDATOR_ERROR(X) validator_error(__FILE__, __LINE__, X);

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
