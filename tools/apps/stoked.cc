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

  uint64_t fromAddr = 0x400f20;
  uint64_t toAddr = 0x401120;
  // fromAddr = 0x40000f20;
  // toAddr = 0x40010f20;

  cout << "allocating segment from " << (void*)fromAddr << " to " << (void*)toAddr << "..." << endl;
  auto page_size = getpagesize();
  uint64_t start = fromAddr & (~(page_size - 1));
  auto size = toAddr - start;
  cout << "allocation start addr: " << (void*)start << endl;
  unsigned char* mem = (unsigned char*) mmap((void*)start, size, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED, -1, 0);
  cout << "Actual allocated addr: " << (void*)mem << endl;
  if (mem == (void*)-1) {
    auto str = strerror(errno);
    cout << "error: " << errno << " - " << str << endl;
    return 1;
  }

  cout << "done" << endl;

  // ----------------------------

  // CpuState testcase;
  // testcase.heap.resize(0x401120, 0x401120 - 0x400f20);
  // cout << "-------------------------" << endl;

  // Function code;

  // int n;

  // read testcase
  // safe_read(&n, sizeof(n));
  // char* buffer = new char[n+1];
  // safe_read(buffer, n);
  // buffer[n] = 0;
  // stringstream ss(buffer);
  // ss >> testcase;
  // delete buffer;

  // // send address of rsp_backup
  // uint64_t rsp_backup = 0;
  // uint64_t* rsp_backup_ptr = &rsp_backup;
  // safe_write(&rsp_backup_ptr, sizeof(rsp_backup_ptr));

  // allocate memory
  // bool mem = true;
  // if (mem) {
  //   for (auto segment : testcase.get_nonempty_segments()) {
  //     cout << "allocating segment..." << endl;
  //     auto page_size = getpagesize();
  //     uint64_t start = segment->lower_bound() & (~(page_size - 1));
  //     auto size = segment->upper_bound() - start;
  //     cout << (void*)start << endl;
  //     unsigned char* mem = (unsigned char*) mmap((void*)start, size,
  //                          PROT_READ | PROT_WRITE,
  //                          MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED, -1, 0);
  //     // cout << hex << (void*)mem << endl;
  //     // cout << hex << (void*)segment->lower_bound() << endl;
  //     if (mem == (void*)-1) {
  //       auto str = strerror(errno);
  //       cout << "error: " << errno << " - " << str << endl;
  //       return 1;
  //     }
  //   }
  // }
  // read assembled code
  // safe_read(&n, sizeof(n));
  // code.reserve(n);
  // safe_read(code.data(), n);
  // cout << "test" << endl;

  // cout << "okay" << endl;
  // cout << to_string(code.call<int>()) << endl;
  // cout << "done" << endl;

  return 0;
}
