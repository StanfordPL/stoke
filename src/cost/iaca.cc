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

#include <string>
#include <iostream>
#include <cstdio>
#include <memory>

#include "src/cost/iaca.h"
#include "src/ext/x64asm/src/fail.h"

using namespace std;

namespace stoke {

// taken from http://stackoverflow.com/questions/478898/how-to-execute-a-command-and-get-output-of-command-within-c
std::string exec(const char* cmd) {
  std::shared_ptr<FILE> pipe(popen(cmd, "r"), pclose);
  if (!pipe) return "ERROR";
  char buffer[128];
  std::string result = "";
  while (!feof(pipe.get())) {
    if (fgets(buffer, 128, pipe.get()) != NULL)
      result += buffer;
  }
  return result;
}

IacaCost::result_type IacaCost::operator()(const Cfg& cfg, Cost max = max_cost) {

  const auto& code = cfg.get_code();

  x64asm::Function buffer;
  buffer.reserve(code.size()*15 + 15 + 2*8);
  assm_.start(buffer);

  // start tag
  buffer.emit_byte(0xbb);
  buffer.emit_byte(0x6f);
  buffer.emit_byte(0x00);
  buffer.emit_byte(0x00);
  buffer.emit_byte(0x00);
  buffer.emit_byte(0x64);
  buffer.emit_byte(0x67);
  buffer.emit_byte(0x90);

  // assemble cfg
  for (auto instr : code)
    assm_.assemble(instr);

  // end tag
  buffer.emit_byte(0xbb);
  buffer.emit_byte(0xde);
  buffer.emit_byte(0x00);
  buffer.emit_byte(0x00);
  buffer.emit_byte(0x00);
  buffer.emit_byte(0x64);
  buffer.emit_byte(0x67);
  buffer.emit_byte(0x90);
  buffer.emit_byte(0x00);

  // write buffer to file
  char filename[] = "/tmp/iaca-cost.XXXXXX";
  int fd = mkstemp(filename);
  if (fd == -1) {
    cerr << "Failed to write iaca file." << endl;
    exit(1);
  }
  auto t = write(fd, buffer.data(), buffer.size());
  if (t == 0) {
    cerr << "Failed to write iaca file." << endl;
    exit(1);
  }
  close(fd);

  // path to iaca
  char buf[200];
  t = readlink("/proc/self/exe", buf, 200);
  string stokepath = buf;
  stokepath = stokepath.substr(0, stokepath.rfind('/'));

  // call iaca
  string cmd = stokepath + "/../src/ext/iaca-lin64/bin/iaca.sh -arch HSW -analysis LATENCY -64 " + string(filename);
  auto res = exec(cmd.c_str());
  cout << res << endl;

  // parse result

  // delete file
  unlink(filename);

  return result_type(true, 5);
}

} // namespace stoke
