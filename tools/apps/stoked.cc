#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <errno.h>
#include <time.h>

#include <iostream>
#include <chrono>

#include "src/ext/x64asm/src/function.h"
// #include "src/state/cpu_state.h"
// #include "src/ext/x64asm/src/assembler.h"



using namespace std;
using namespace x64asm;

size_t capacity_ = 1000;
unsigned char* buffer_;

bool safe_read(void* buf, int size) {
  auto nread = read(0, buf, size);
  if (nread == 0) {
    return false;
  }
  if (size != nread) {
    cout << "Failed to read sufficient number of bytes; read " << nread << " instead of " << size << "." << endl;
    exit(1);
  }
  return true;
}

void safe_write(const void* data, int nbytes) {
  if (write(2, data, nbytes) != nbytes) {
    cout << "Failed to send data to stoked." << endl;
    exit(1);
  }
}

chrono::high_resolution_clock::time_point __init;
void start() {
  __init = chrono::high_resolution_clock::now();
}

void stop(const string& explanation) {
  auto now = chrono::high_resolution_clock::now();
  auto duration = std::chrono::duration_cast<std::chrono::nanoseconds>(now-__init).count();
  cout << "[time] " << explanation << ": ";
  for (int i = 0; i < 20-(int)explanation.size(); i++) {
    cout << " ";
  }
  cout << duration << " ns";
  cout << endl;
}

class Mem {
public:
  Mem() : addr(0), size(0), data(NULL) {
  }

  uint64_t addr;
  uint64_t size;
  unsigned char* data;
};

inline long long rdtsc() {
  long long cycles;
  asm volatile("rdtscp\n"
               "shlq $32, %%rdx\n"
               "addq %%rdx, %%rax\n"
               : "=a" (cycles)
               : /* no inputs */
               : "rdx", "rcx");
  return cycles;
}


int main() {

  // uint64_t fromAddr = 0x400f20;
  // uint64_t toAddr = 0x401120;
  // // fromAddr = 0x40000f20;
  // // toAddr = 0x40010f20;

  // cout << "allocating segment from " << (void*)fromAddr << " to " << (void*)toAddr << "..." << endl;
  // auto page_size = getpagesize();
  // uint64_t start = fromAddr & (~(page_size - 1));
  // auto size = toAddr - start;
  // cout << "allocation start addr: " << (void*)start << endl;
  // unsigned char* mem = (unsigned char*) mmap((void*)start, size, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED, -1, 0);
  // cout << "Actual allocated addr: " << (void*)mem << endl;
  // if (mem == (void*)-1) {
  //   auto str = strerror(errno);
  //   cout << "error: " << errno << " - " << str << endl;
  //   return 1;
  // }

  // cout << "done" << endl;

  // return 0;

  // ----------------------------

  Function code;
  int n;

  // read testcase memory
  safe_read(&n, sizeof(n));
  vector<Mem> memories(n);
  for (int i = 0; i < n; i++) {
    Mem& mem = memories[i];
    safe_read(&mem.addr, sizeof(mem.addr));
    safe_read(&mem.size, sizeof(mem.size));
    mem.data = new unsigned char[mem.size];
    safe_read(mem.data, mem.size);
  }
  // CpuState testcase;
  // safe_read(&n, sizeof(n));
  // char* buffer = new char[n+1];
  // safe_read(buffer, n);
  // buffer[n] = 0;
  // stringstream ss(buffer);
  // ss >> testcase;
  // delete buffer;

  // send address of rsp_backup
  uint64_t rsp_backup = 0;
  uint64_t* rsp_backup_ptr = &rsp_backup;
  safe_write(&rsp_backup_ptr, sizeof(rsp_backup_ptr));

  // allocate memory
  auto page_size = getpagesize();
  for (auto segment : memories) {
    uint64_t start = segment.addr & (~(page_size - 1));
    auto size = segment.addr + segment.size - start;
    auto mem = (unsigned char*) mmap((void*)start, size, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED, -1, 0);
    if (mem == (void*)-1) {
      auto str = strerror(errno);
      cout << "error: " << errno << " - " << str << endl;
      return 1;
    }
  }

  // initialize memory
  // start();
  for (auto segment : memories) {
    memcpy((void*)segment.addr, segment.data, segment.size);
  }
  // stop("memory init");

  // for (auto segment : testcase.get_nonempty_segments()) {
  //   cout << "allocating segment..." << endl;
  //   auto page_size = getpagesize();
  //   uint64_t start = segment->lower_bound() & (~(page_size - 1));
  //   auto size = segment->upper_bound() - start;
  //   cout << (void*)start << endl;
  //   auto mem = (unsigned char*) mmap((void*)start, size, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED, -1, 0);
  //   cout << hex << (void*)mem << endl;
  //   cout << hex << (void*)segment->lower_bound() << endl;
  //   if (mem == (void*)-1) {
  //     auto str = strerror(errno);
  //     cout << "error: " << errno << " - " << str << endl;
  //     return 1;
  //   }
  // }

  // read assembled code
  while (true) {
    // start();
    if (!safe_read(&n, sizeof(n))) break;
    // stop("read code size");
    // start();
    code.reserve(n);
    safe_read(code.data(), n);
    // stop("read code");

    // for (int i = 0; i < 10; i++) {
    //   start();
    //   code.call<int>();
    //   stop("run code");
    // }

    int reps = 100;
    vector<uint64_t> measurements;
    measurements.reserve(reps);

#define USE_TS

    for (int i = 0; i < reps; i++) {
#ifdef USE_CLOCK
    timespec start, end;
    clock_gettime(CLOCK_THREAD_CPUTIME_ID, &start);
#endif
#ifdef USE_TS
    auto start = rdtsc();
#endif

      code.call<int>();

#ifdef USE_CLOCK
    clock_gettime(CLOCK_THREAD_CPUTIME_ID, &end);
    auto duration = ((end.tv_sec * 1000000000 + end.tv_nsec) - (start.tv_sec * 1000000000 + start.tv_nsec));
#endif
#ifdef USE_TS
    auto end = rdtsc();
    auto duration = end - start;
#endif
    measurements.push_back(duration);

    }

    // sort(measurements.begin(), measurements.end());
    for (auto& m : measurements) {
      cout << m << endl;
    }

    uint64_t dur = 1;

    // send duration
    safe_write(&dur, sizeof(dur));
  }

  return 0;
}
