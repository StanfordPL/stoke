#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <errno.h>

#include <iostream>

#include "src/state/cpu_state.h"
#include "src/ext/x64asm/src/function.h"
#include "src/ext/x64asm/src/assembler.h"



using namespace std;
using namespace stoke;
using namespace x64asm;

size_t capacity_ = 1000;
unsigned char* buffer_;

void safe_read(void* buf, int size) {
  auto nread = read(0, buf, size);
  if (size != nread) {
    cout << "Failed to read sufficient number of bytes; read " << nread << " instead of " << size << "." << endl;
    exit(1);
  }
}

void safe_write(const void* data, int nbytes) {
  if (write(2, data, nbytes) != nbytes) {
    cout << "Failed to send data to stoked." << endl;
    exit(1);
  }
}

int main() {
  CpuState testcase;
  cout << "-------------------------" << endl;

  Function code;
  // Assembler assm;
  // assm.start(code);

  // assm.mov(rax, Imm32(2));
  // assm.ret();

  // bool ok = assm.finish();
  // assert(ok);

  // cout << code.call<int>() << endl;

  int n;

  // read testcase
  safe_read(&n, sizeof(n));
  char* buffer = new char[n+1];
  safe_read(buffer, n);
  buffer[n] = 0;
  stringstream ss(buffer);
  ss >> testcase;
  delete buffer;

  // send address of rsp_backup
  uint64_t rsp_backup = 0;
  uint64_t* rsp_backup_ptr = &rsp_backup;
  safe_write(&rsp_backup_ptr, sizeof(rsp_backup_ptr));

  // cout << hex << testcase.stack.size() << endl;
  // allocate memory
  // auto stack = (unsigned char*) mmap((void*)testcase.stack.lower_bound(), testcase.stack.size(),
  //                                   PROT_READ | PROT_WRITE,
  //                                   MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
  // if (stack == (void*)-1) {
  //   cout << "error: " << errno << " - " << strerror(errno) << endl;
  //   return 1;
  // }

  // read assembled code
  safe_read(&n, sizeof(n));
  code.reserve(n);
  safe_read(code.data(), n);

  cout << "okay" << endl;
  cout << code.call<int>() << endl;
  cout << "done" << endl;

  return 0;
}
