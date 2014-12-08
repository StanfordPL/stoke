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

#ifndef SYMSTATE_H_
#define SYMSTATE_H_

#include "src/validator/legacy/c_interface.h"
#include "src/validator/error.h"
#include <string>
#include <map>
#include <vector>
#include <set>
#include <cassert>
#include "src/cfg/cfg.h"

typedef uint64_t SS_Id;


namespace stoke {

#define V_FLAGSIZE 0
#define V_REGSIZE 1
#define V_XMMSIZE 2

#define V_UNITSIZE 64
#define V_XMMUNIT 128

#define V_FSTATE "Final"
//Flags are sufficiently away from regs as new regs might come
#define FLAG_BEG 100
#define XMM_BEG 16
//Memory can be unbounded
#define MEM_BEG 110

#define V_AF 100
#define V_CF 101
#define V_OF 102
#define V_PF 103
#define V_SF 104
#define V_ZF 105

#define ARCH_SIZE 64


template<class T>
class Bijection
{
public:
  SS_Id toId(T val)
  {
    if ( toId_.find(val) == toId_.end() )
    {
      SS_Id id = toId_.size();
      toId_[val] = id;
      toVal_[id] = val;
    }
    return toId_[val];
  }
  SS_Id valToId(T val) const
  {
    auto result = toId_.find(val);
    if(result == toId_.end())
      throw VALIDATOR_ERROR("Lookup into bijection mapping failed");

    return result->second;
  }
  SS_Id insert(T val, SS_Id id)
  {
    toId_[val] = id;
    toVal_[id] = val;
    return id;
  }
  T toVal(SS_Id id) const
  {
    auto result = toVal_.find(id);
    if (result == toVal_.end())
      throw VALIDATOR_ERROR("Lookup into bijection mapping failed");

    return result->second;
  }

private:
  std::map<T, SS_Id> toId_;
  std::map<SS_Id, T> toVal_;
};


//Version numbers to handle assignments.
class VersionNumber
{
public:
  std::map<SS_Id, unsigned int> VN_;

  /** Set specified vars to a given version */
  void Init(std::set<SS_Id> vars, int n);
  /** Set all vars to a given version */
  void Init(int n);

  void Increment(std::set<SS_Id> X, unsigned int n);

  unsigned int get(SS_Id n) const
  {
    if(VN_.find(n) == VN_.end()) {
      throw VALIDATOR_ERROR("Unregognized ID: " + std::to_string(n));
    }
    return (*(VN_.find(n))).second;
  }
};



} //namespace stoke

//string to SS_Id and SS_Id to size
std::pair< stoke::Bijection <std::string>, std::map <SS_Id, unsigned int> > InitStateMapping();
extern std::pair< stoke::Bijection <std::string>, std::map <SS_Id, unsigned int> > all_state_info;



#endif
