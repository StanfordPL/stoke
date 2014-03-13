/* ============================================================================================= */

#include "pin.H"

#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <stack>
#include <stdint.h>
#include <unordered_map>
#include <unordered_set>

#include "src/state/cpu_state.h"
#include "src/state/state_writer.h"

using namespace std;
using namespace stoke;

/* ============================================================================================= */
/* Commandline Switches */
/* ============================================================================================= */

KNOB<string> KnobFxnName(KNOB_MODE_WRITEONCE, "pintool", "f", "main",
                         "function to generate tests for");
KNOB<string> KnobOutFile(KNOB_MODE_WRITEONCE, "pintool", "o", "",
                         "file to write results to");
KNOB<size_t> KnobMaxTc(KNOB_MODE_WRITEONCE, "pintool", "n", "0",
                       "maximum number of testcases to emit");
KNOB<size_t> KnobMaxStack(KNOB_MODE_WRITEONCE, "pintool", "x", "1024",
                          "maximum number of bytes to assume appear on the stack");

/* ============================================================================================= */
/* Global Variables */
/* ============================================================================================= */

stack<size_t> stack_frames_;

stack<CpuState> tcs_;
int tc_remaining_;

stack<unordered_set<uint64_t>> stack_valids_;
stack<unordered_map<uint64_t, uint8_t>> stack_defs_;
stack<unordered_set<uint64_t>> heap_valids_;
stack<unordered_map<uint64_t, uint8_t>> heap_defs_;

ostream* os_;

/* ============================================================================================= */
/* Functions */
/* ============================================================================================= */

INT32 Usage() {
  cerr << "STOKE - Testcase Generator" << endl;
  cerr << KNOB_BASE::StringKnobSummary();
  cerr << endl;

  return -1;
}

/* ============================================================================================= */

VOID begin_stack_frame(ADDRINT rsp) {
  stack_frames_.push(rsp);
}

/* ============================================================================================= */

VOID begin_tc(ADDRINT rax, ADDRINT rbx, ADDRINT rcx, ADDRINT rdx,
              ADDRINT r8, ADDRINT r9,  ADDRINT r10, ADDRINT r11,
              ADDRINT r12, ADDRINT r13, ADDRINT r14, ADDRINT r15,
              ADDRINT rsp, ADDRINT rbp, ADDRINT rsi, ADDRINT rdi,
              PIN_REGISTER* sse0, PIN_REGISTER* sse1, PIN_REGISTER* sse2, PIN_REGISTER* sse3,
              PIN_REGISTER* sse4, PIN_REGISTER* sse5, PIN_REGISTER* sse6, PIN_REGISTER* sse7,
              PIN_REGISTER* sse8, PIN_REGISTER* sse9, PIN_REGISTER* sse10, PIN_REGISTER* sse11,
              PIN_REGISTER* sse12, PIN_REGISTER* sse13, PIN_REGISTER* sse14, PIN_REGISTER* sse15
             ) {
  if (tc_remaining_ == 0) {
    return;
  }

  CpuState tc;

  tc.gp[0].get_fixed_quad(0) = rax;
  tc.gp[1].get_fixed_quad(0) = rcx;
  tc.gp[2].get_fixed_quad(0) = rdx;
  tc.gp[3].get_fixed_quad(0) = rbx;
  tc.gp[4].get_fixed_quad(0) = rsp;
  tc.gp[5].get_fixed_quad(0) = rbp;
  tc.gp[6].get_fixed_quad(0) = rsi;
  tc.gp[7].get_fixed_quad(0) = rdi;
  tc.gp[8].get_fixed_quad(0) = r8;
  tc.gp[9].get_fixed_quad(0) = r9;
  tc.gp[10].get_fixed_quad(0) = r10;
  tc.gp[11].get_fixed_quad(0) = r11;
  tc.gp[12].get_fixed_quad(0) = r12;
  tc.gp[13].get_fixed_quad(0) = r13;
  tc.gp[14].get_fixed_quad(0) = r14;
  tc.gp[15].get_fixed_quad(0) = r15;

  for (size_t i = 0; i < 4; ++i) {
    tc.sse[0].get_fixed_quad(i) = sse0->qword[i];
    tc.sse[1].get_fixed_quad(i) = sse1->qword[i];
    tc.sse[2].get_fixed_quad(i) = sse2->qword[i];
    tc.sse[3].get_fixed_quad(i) = sse3->qword[i];
    tc.sse[4].get_fixed_quad(i) = sse4->qword[i];
    tc.sse[5].get_fixed_quad(i) = sse5->qword[i];
    tc.sse[6].get_fixed_quad(i) = sse6->qword[i];
    tc.sse[7].get_fixed_quad(i) = sse7->qword[i];
    tc.sse[8].get_fixed_quad(i) = sse8->qword[i];
    tc.sse[9].get_fixed_quad(i) = sse9->qword[i];
    tc.sse[10].get_fixed_quad(i) = sse10->qword[i];
    tc.sse[11].get_fixed_quad(i) = sse11->qword[i];
    tc.sse[12].get_fixed_quad(i) = sse12->qword[i];
    tc.sse[13].get_fixed_quad(i) = sse13->qword[i];
    tc.sse[14].get_fixed_quad(i) = sse14->qword[i];
    tc.sse[15].get_fixed_quad(i) = sse15->qword[i];
  }

  tcs_.push(tc);
  stack_valids_.push(unordered_set<uint64_t>());
  stack_defs_.push(unordered_map<uint64_t, uint8_t>());
  heap_valids_.push(unordered_set<uint64_t>());
  heap_defs_.push(unordered_map<uint64_t, uint8_t>());
}

/* ============================================================================================= */

VOID record_read(ADDRINT rip, VOID* addr, UINT32 size) {
  assert(!stack_frames_.empty());

  if (tc_remaining_ == 0 || tcs_.empty()) {
    return;
  }

  auto& stack_valid = stack_valids_.top();
  auto& stack_def = stack_defs_.top();
  auto& heap_valid = heap_valids_.top();
  auto& heap_def = heap_defs_.top();

  for (size_t i = 0; i < size; ++i) {
    uint64_t ptr = (uint64_t)addr + i;
    if (ptr >= (stack_frames_.top() - KnobMaxStack.Value())) {
      if (stack_valid.find(ptr) == stack_valid.end()) {
        stack_valid.insert(ptr);
        stack_def[ptr] = *((uint8_t*)ptr);
      }
    } else {
      if (heap_valid.find(ptr) == heap_valid.end()) {
        heap_valid.insert(ptr);
        heap_def[ptr] = *((uint8_t*)ptr);
      }
    }
  }
}

/* ============================================================================================= */

VOID record_write(ADDRINT rip, VOID* addr, UINT32 size) {
  assert(!stack_frames_.empty());

  if (tc_remaining_ == 0 || tcs_.empty()) {
    return;
  }

  auto& stack_valid = stack_valids_.top();
  auto& heap_valid = heap_valids_.top();

  for (size_t i = 0; i < size; ++i) {
    uint64_t ptr = (uint64_t)addr + i;
    if (ptr >= (stack_frames_.top() - KnobMaxStack.Value())) {
      stack_valid.insert(ptr);
    } else {
      heap_valid.insert(ptr);
    }
  }
}

/* ============================================================================================= */

VOID end_tc() {
  if (tc_remaining_ == 0 || tcs_.empty()) {
    return;
  }

  auto& tc = tcs_.top();
  auto& stack_valid = stack_valids_.top();
  auto& stack_def = stack_defs_.top();
  auto& heap_valid = heap_valids_.top();
  auto& heap_def = heap_defs_.top();

  uint64_t stack_min = 0xffffffffffffffff;
  uint64_t stack_max = 0;
  for (const auto addr : stack_valid) {
    stack_min = min(stack_min, addr);
    stack_max = max(stack_max, addr);
  }

	const auto stack_base = stack_valid.empty() ? 0 : stack_min;
	const auto stack_size = stack_valid.empty() ? 0 : stack_max - stack_min + 1;
	tc.stack.resize(stack_base, stack_size);

  for (const auto addr : stack_valid) {
    tc.stack.set_valid(addr, true);
  }
  for (const auto& def : stack_def) {
    tc.stack.set_defined(def.first, true);
    tc.stack[def.first] = def.second;
  }

  uint64_t heap_min = 0xffffffffffffffff;
  uint64_t heap_max = 0;
  for (const auto addr : heap_valid) {
    heap_min = min(heap_min, addr);
    heap_max = max(heap_max, addr);
  }

	const auto heap_base = heap_valid.empty() ? 0 : heap_min;
	const auto heap_size = heap_valid.empty() ? 0 : heap_max - heap_min + 1;
	tc.heap.resize(heap_base, heap_size);

  for (const auto addr : heap_valid) {
    tc.heap.set_valid(addr, true);
  }
  for (const auto& def : heap_def) {
    tc.heap.set_defined(def.first, true);
    tc.heap[def.first] = def.second;
  }

  static size_t id = 0;
  (*os_) << "Testcase " << id++ << ":" << endl;
 	(*os_) << endl;
 	(*os_) << tc;
	if ( tc_remaining_ != 1 ) {
		(*os_) << endl;
		(*os_) << endl;
	}

  tcs_.pop();
  heap_valids_.pop();
  heap_defs_.pop();
  stack_valids_.pop();
  stack_defs_.pop();

  tc_remaining_--;
}

/* ============================================================================================= */

VOID end_stack_frame() {
  assert(!stack_frames_.empty());
  stack_frames_.pop();
}

/* ============================================================================================= */

VOID emit_start(RTN& fxn) {
  RTN_InsertCall(fxn, IPOINT_BEFORE, (AFUNPTR)begin_tc,
                 IARG_REG_VALUE, REG_RAX, IARG_REG_VALUE, REG_RBX,
                 IARG_REG_VALUE, REG_RCX, IARG_REG_VALUE, REG_RDX,
                 IARG_REG_VALUE, REG_R8,  IARG_REG_VALUE, REG_R9,
                 IARG_REG_VALUE, REG_R10, IARG_REG_VALUE, REG_R11,
                 IARG_REG_VALUE, REG_R12, IARG_REG_VALUE, REG_R13,
                 IARG_REG_VALUE, REG_R14, IARG_REG_VALUE, REG_R15,
                 IARG_REG_VALUE, REG_RSP, IARG_REG_VALUE, REG_RBP,
                 IARG_REG_VALUE, REG_RSI, IARG_REG_VALUE, REG_RDI,
                 IARG_REG_REFERENCE, REG_YMM0,  IARG_REG_REFERENCE, REG_YMM1,
                 IARG_REG_REFERENCE, REG_YMM2,  IARG_REG_REFERENCE, REG_YMM3,
                 IARG_REG_REFERENCE, REG_YMM4,  IARG_REG_REFERENCE, REG_YMM5,
                 IARG_REG_REFERENCE, REG_YMM6,  IARG_REG_REFERENCE, REG_YMM7,
                 IARG_REG_REFERENCE, REG_YMM8,  IARG_REG_REFERENCE, REG_YMM9,
                 IARG_REG_REFERENCE, REG_YMM10, IARG_REG_REFERENCE, REG_YMM11,
                 IARG_REG_REFERENCE, REG_YMM12, IARG_REG_REFERENCE, REG_YMM13,
                 IARG_REG_REFERENCE, REG_YMM14, IARG_REG_REFERENCE, REG_YMM15,
                 IARG_END);
}

/* ============================================================================================= */

VOID emit_stop(RTN& fxn) {
  RTN_InsertCall(fxn, IPOINT_AFTER, (AFUNPTR)end_tc, IARG_END);
}

/* ============================================================================================= */

VOID image(IMG img, VOID* v) {
  RTN fxn = RTN_FindByName(img, KnobFxnName.Value().c_str());
  if (!RTN_Valid(fxn)) {
    return;
  }

  RTN_Open(fxn);

  // Record a new stack frame
  RTN_InsertCall(fxn, IPOINT_BEFORE, (AFUNPTR)begin_stack_frame,
                 IARG_REG_VALUE, REG_RSP, IARG_END);

  // Record initial register state
  emit_start(fxn);

  for (INS ins = RTN_InsHead(fxn); INS_Valid(ins); ins = INS_Next(ins)) {
    // Find memory operand
    UINT32 memOpCount = INS_MemoryOperandCount(ins);
    assert(memOpCount < 2 && "No support for multiple mem operands!");

    // Record memory references
    if (memOpCount > 0 && INS_MemoryOperandIsRead(ins, 0))
      INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR) record_read,
                     IARG_INST_PTR, IARG_MEMORYREAD_EA, IARG_MEMORYREAD_SIZE, IARG_END);
    if (memOpCount > 0 && INS_MemoryOperandIsWritten(ins, 0))
      INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR) record_write,
                     IARG_INST_PTR, IARG_MEMORYWRITE_EA, IARG_MEMORYWRITE_SIZE, IARG_END);
  }

  // Finish up
  emit_stop(fxn);

  // Discard stack frame
  RTN_InsertCall(fxn, IPOINT_AFTER, (AFUNPTR)end_stack_frame, IARG_END);

  RTN_Close(fxn);
}

/* ============================================================================================= */

VOID Fini(INT32 code, VOID* v) {
  if (!tcs_.empty()) {
    exit(1);
  }
}

/* ============================================================================================= */
/* Main                                                                  */
/* ============================================================================================= */

int main(int argc, char* argv[]) {
  if (PIN_Init(argc, argv)) {
    return Usage();
  }

  tc_remaining_ = KnobMaxTc.Value();
  os_ = KnobOutFile.Value() == "" ? &cout :
        new ofstream(KnobOutFile.Value().c_str());

  PIN_InitSymbols();
  IMG_AddInstrumentFunction(image, 0);
  PIN_AddFiniFunction(Fini, 0);

  // Never returns
  PIN_StartProgram();

  return 0;
}

/* ============================================================================================= */
/* eof */
/* ============================================================================================= */
