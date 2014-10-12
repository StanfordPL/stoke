
#ifndef STOKE_VALIDATOR_ERROR_H
#define STOKE_VALIDATOR_ERROR_H

#include <exception>
#include <string>

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

    virtual const char* what() const throw() {
      return message_.c_str();
    }

  private:

    std::string message_;
    std::string file_;
    int line_;

};

#endif
