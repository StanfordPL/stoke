#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>

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

int main() {
  // CpuState testcase;
  // cin >> testcase;
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
  safe_read(&n, sizeof(n));
  code.reserve(n);
  safe_read(code.data(), n);

  cout << "okay" << endl;
  cout << code.call<int>() << endl;

  return 0;
}
