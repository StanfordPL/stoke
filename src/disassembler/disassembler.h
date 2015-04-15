// Copyright 2013-2015 Stanford University
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

#ifndef STOKE_SRC_DISASSEMBLER_DISASSEMBLER_H
#define STOKE_SRC_DISASSEMBLER_DISASSEMBLER_H

#include <map>
#include <set>

#include "src/ext/pstreams-0.8.1/pstream.h"

#include "src/disassembler/function_callback.h"

namespace stoke {

class Disassembler {
public:
  /** Lift callbacks to std::functions */
  typedef std::function<void (const FunctionCallbackData&)> Callback;

  /** Constructs a fresh disassembler */
  Disassembler() {
    set_function_callback(nullptr, nullptr);
    set_flat_binary(false);
    clear_error();
  }

  /** Installs a callback for when functions are parsed. */
  Disassembler& set_function_callback(FunctionCallback cb, void* arg) {
    fxn_cb_ = cb;
    fxn_cb_arg_ = arg;
    return *this;
  }

  /** Installs a callback for when functions are parsed. */
  Disassembler& set_function_callback(Callback* cc) {
    callback_closure_ = cc;
    return *this;
  }

  /** Tell objdump to parse a flat binary instead of ELF. */
  Disassembler& set_flat_binary(bool b) {
    flat_binary_ = b;
    return *this;
  }

  /** Reports if an error occurred in the last operation.  Whether an error
   * has occurred is cleared whenever disassemble() is called. */
  bool has_error() {
    return error_;
  }
  /** Returns the latest error message. */
  const std::string& get_error() const {
    return error_message_;
  }

  /** Disassembles a file and invokes the function callback for each result. */
  void disassemble(const std::string& filename);

private:
  /** Tracks if an error occurred. */
  bool error_;
  /* Tracks the last error message. */
  std::string error_message_;

  /** Callback to invoke when functions are parsed. */
  FunctionCallback fxn_cb_;
  /** Argument to pass to function callback. */
  void* fxn_cb_arg_;
  /** Closure-alternative to callback */
  Callback* callback_closure_ = NULL;

  /** Should we tell objdump that we want a flat binary, rather than ELF? */
  bool flat_binary_;

  /** POD struct for recording line info */
  struct LineInfo {
    uint64_t offset;   // logical hex offset
    size_t hex_bytes;  // number of hex bytes on this line
    std::string instr; // the text of this line
  };

  /** Clears error state */
  void clear_error() {
    error_ = false;
    error_message_ = "";
  }
  /** Sets error state */
  void set_error(const std::string& msg) {
    error_ = true;
    error_message_ = msg;
  }

  /* Checks if a filename is whitelisted for use. Prevents accidental shell injection. */
  bool check_filename(const std::string& filename);
  /* Runs objdump and provides the output stream */
  redi::ipstream* run_objdump(const std::string& filename, bool only_header);

  /* Parse the section offsets from objdump's stdout. */
  std::map<std::string, uint64_t> parse_section_offsets(redi::ipstream& ips);

  /* Rewrite a line from objdump for our parser :( */
  std::string fix_instruction(const std::string& line);
  /* Parse a line */
  bool parse_line(const std::string& s, LineInfo& line);
  /* Get an address from an objdump'd line */
  bool parse_ptr(const std::string& s, std::map<std::string, std::string>& ptrs);
  /* Get all the lines from a function */
  std::vector<LineInfo> parse_lines(redi::ipstream& ips, const std::string& name);
  /** Rescale rip displacements for x64asm hex */
  void rescale_offsets(x64asm::Code& code, const std::vector<LineInfo>& lines);

  /* Parse a single function from objdump's stdout; returns true until eof */
  bool parse_function(redi::ipstream& ips, FunctionCallbackData& data, uint64_t text_offset);
};

} // namespace stoke

#endif
