// Copyright 2014 eric schkufza
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef CPPUTIL_INCLUDE_COMMAND_LINE_FOLDER_ARG_H
#define CPPUTIL_INCLUDE_COMMAND_LINE_FOLDER_ARG_H

#include <string>
#include <vector>

#include <dirent.h>
#include <unistd.h>
#include <sys/stat.h>
#include <sys/types.h>

#include <cstdio>

#include "include/command_line/arg.h"
#include "include/serialize/text_reader.h"
#include "include/serialize/text_writer.h"

namespace cpputil {

template <typename T, typename R = TextReader<T>, typename W = TextWriter<T>>
class FolderArg : public Arg {
 public:
  virtual ~FolderArg() = default;

  /** Creates and registers a new flag */
  static FolderArg& create(const std::string& opt) {
    return *(new FolderArg(opt));
  }

  /** Consumes indices from first alias to next - */
  virtual std::pair<size_t, size_t> read(int argc, char** argv) {
    for (const auto i : get_appearances(argc, argv)) {
      if (i == (argc - 1) || argv[i + 1][0] == '-') {
        error(parse_error_);
        return std::make_pair(i, i);
      }

      // some code borrowed from 
      // http://www.cplusplus.com/forum/beginner/10292/
      DIR *dp = opendir(argv[i+1]);
      if(dp == NULL) {
        perror("could not open directory");
        error(folder_error_);        
      }

      struct dirent *dirp;
      while((dirp = readdir(dp))) {
        std::string filepath = std::string(argv[i+1]) + "/" + dirp->d_name;

        struct stat filestat;
        if (stat(filepath.c_str(), &filestat)) continue;
        if (S_ISDIR(filestat.st_mode)) continue;

        std::ifstream ifs(filepath);
        if (!ifs.is_open()) {
          error(file_error_);
        } else {
          T temp = T();
          R()(ifs, temp);

          if (ifs.fail()) {
            continue;
            // This could be a parse error; but for now I'm opting to
            // silently ignore files that can't be parsed.  FIXME.
          } else {
            val_.push_back(temp);
          }
        }
      }
      closedir(dp);

      return std::make_pair(i, i + 1);
    }

    return std::make_pair(0, 0);
  }

  /** Create a new arg alias (hashes implicit; chars get 1, strings 2) */
  FolderArg& alternate(const std::string& a) {
    Arg::alternate(a);
    return *this;
  }

  /** Reset arg usage */
  FolderArg& usage(const std::string& u) {
    Arg::usage(u);
    return *this;
  }

  /** Reset arg description */
  FolderArg& description(const std::string& d) {
    Arg::description(d);
    return *this;
  }

  /** Resets arg default value */
  FolderArg& default_val(const std::vector<T>& t) {
    val_ = t;
    return *this;
  }

  /** Resets parse error message */
  FolderArg& parse_error(const std::string& pe) {
    parse_error_ = pe;
    return *this;
  }

  /** Resets file error message */
  FolderArg& file_error(const std::string& fe) {
    file_error_ = fe;
    return *this;
  }

  /** Resets folder error message */
  FolderArg & folder_error(const std::string& fe) {
    folder_error_ = fe;
    return *this;
  }

  /** Implicit conversion to underlying type */
  operator std::vector<T>& () {
    return val_;
  }

  /** Explicit conversion to underlying type */
  std::vector<T>& value() {
    return val_;
  }

  /** Prints underlying value using writer */
  virtual void debug(std::ostream& os) const {
    os << "[" << std::endl;
    for (auto& it : val_) {
      W()(os, it);
      os << std::endl;
    }
    os << "]";
  }

 private:
  /** Underlying value, optionally specified on command line */
  std::vector<T> val_;
  /** String to emit if an error occurs during read() */
  std::string parse_error_;
  /** String to emit if unable to open source file during read() */
  std::string file_error_;
  /** String to emit if unable to open directory */
  std::string folder_error_;

  /** FolderArgs are assigned default constructor values by default */
  FolderArg(const std::string& opt) :
    Arg {opt} {
    usage("<value>");
    parse_error("Unable to parse value!");
    file_error("Unable to open one of the files!");
    folder_error("Unable to open drectory!");
  }
};

} // namespace cpputil

#endif


