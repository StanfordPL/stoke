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

#ifndef STOKE_TOOLS_ARGS_VERIFIER_INC
#define STOKE_TOOLS_ARGS_VERIFIER_INC

#include "src/ext/cpputil/include/command_line/command_line.h"

#include "src/solver/solver.h"
#include "tools/io/solver.h"
#include "tools/io/connection_string.h"

namespace stoke {

cpputil::Heading& verifier_heading =
  cpputil::Heading::create("Verification Options:");

cpputil::ValueArg<std::string>& strategy_arg =
  cpputil::ValueArg<std::string>::create("strategy")
  .usage("(none|bounded|ddec|hold_out)")
  .description("Verification strategy")
  .default_val("hold_out");

cpputil::Heading& validator_heading =
  cpputil::Heading::create("Obligation Checker Options:");

cpputil::ValueArg<std::string>& obligation_checker_arg =
  cpputil::ValueArg<std::string>::create("obligation_checker")
  .usage("(smt|pubsub|postgres)")
  .description("System technologies for discharging proof obligations (SMT vs cloud...)")
  .default_val("smt");

cpputil::FileArg<std::string, ConnectionStringReader, ConnectionStringWriter>& postgres_arg =
  cpputil::FileArg<std::string, ConnectionStringReader, ConnectionStringWriter>::create("postgres")
  .usage("<path>")
  .description("Path of file with a connection string for postgres")
  .default_val("");

cpputil::ValueArg<std::string>& alias_strategy_arg =
  cpputil::ValueArg<std::string>::create("alias_strategy")
  .usage("(basic|string|string_antialias|flat)")
  .description("How to handle aliasing")
  .default_val("flat");

cpputil::ValueArg<std::string>& pointer_range_arg = 
  cpputil::ValueArg<std::string>::create("pointer_range")
  .usage("<string>")
  .description("Range of addresses that must be within pointer space")
  .default_val("");

cpputil::ValueArg<std::string>& assume_arg = 
  cpputil::ValueArg<std::string>::create("assume")
  .usage("<string>")
  .description("Add an assumption about the initial state.")
  .default_val("");

cpputil::ValueArg<size_t>& process_count_arg =
  cpputil::ValueArg<size_t>::create("process_count")
  .usage("<int>")
  .description("Number of processes for verification")
  .default_val(1);

cpputil::FlagArg& verify_nacl_arg =
  cpputil::FlagArg::create("verify_nacl")
  .description("add constraints to bound index registers away from 32-bit boundary");

cpputil::FlagArg& fixpoint_up_arg =
  cpputil::FlagArg::create("fixpoint_up")
  .description("Instead of directly proving obligation, use a fixpoint");



} // namespace stoke

#endif
