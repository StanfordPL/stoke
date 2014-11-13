#ifndef SYMSTATE_H_
#define SYMSTATE_H_

#include "src/validator/c_interface.h"
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


std::string itoa(int i);

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
  void Init(std::set<SS_Id> vars, int n);
  void Increment(std::set<SS_Id> X, unsigned int n);
  unsigned int get(SS_Id n) const
  {
    if(VN_.find(n) == VN_.end()) {
      throw VALIDATOR_ERROR("Unregognized ID: " + std::to_string(n));
    }
    return (*(VN_.find(n))).second;
  }
};


//General nodes and edges
class V_Edge
{
public:
  //c_e is deprecated. Still there in case we decide to validate extended basic blocks as a single query.
  unsigned int src_ins_no_;
  unsigned int dest_ins_no_;

  VersionNumber incomingVN_;
  V_Edge(std::string codenum,  unsigned int i, unsigned int  j);
  V_Edge() { }
  ~V_Edge() {}
  VersionNumber& getVN();
  void setVN(VersionNumber VN);
};


//Node contains an instruction with the basic block number and the instreuction number in the basic block.
//predecessor edges and successor edges. The amount of memory used and version numbers.
class V_Node
{
public:
  x64asm::Instruction instr_;
  //c_n is deprecated. Still there in case we decide to validate extended basic blocks as a single query.

  unsigned int bb_no_;
  unsigned int ins_no_;

  bool recordFlags;

  std::vector<unsigned int> predecessors_;
  std::vector<unsigned int> successors_;
  VersionNumber outgoingVN_;

  int memused;
  VersionNumber memVN;
  unsigned int getInsNo() const {
    return ins_no_;
  }
  V_Node(std::string codenum, unsigned int i, unsigned int j, const x64asm::Instruction& instr):instr_(instr)
  {
    recordFlags = false;
    //instr_ = instr;
    bb_no_ = i;
    ins_no_ = j;
    memused =-1;
  }
  V_Node():instr_(x64asm::Opcode::NOP) {
    recordFlags = false;
    memused =-1;
  }
  ~V_Node() {}
  VersionNumber& getVN();
  void setVN(VersionNumber VN);
  unsigned int succSize();
  unsigned int predSize();
  unsigned int getPred(unsigned int i);
  unsigned int getSucc(unsigned int i);

  const x64asm::Instruction& getInstr() const;

};
//Edge list datastructure for a EBB.
class Ebb
{
public:
  std::vector<V_Node> nodes;
  std::vector<V_Edge> edges;
  unsigned int size();
  V_Node& getNode(unsigned int);
  V_Edge& getEdge(unsigned int);
  void print();
};


Ebb toEbb(VC& vc, const stoke::Cfg& f1, unsigned int blockid, std::string codenum);
std::string TextInstructionWriter(const x64asm::Instruction& instr);

//result = arg1*arg2 and multiplication is an uninterpreted function
}

//string to SS_Id and SS_Id to size
std::pair< stoke::Bijection <std::string>, std::map <SS_Id, unsigned int> > InitStateMapping();
extern std::pair< stoke::Bijection <std::string>, std::map <SS_Id, unsigned int> > all_state_info;



#endif
