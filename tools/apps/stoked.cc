#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <errno.h>
#include <time.h>

#include <iostream>
#include <chrono>
#include <set>

#include "src/ext/x64asm/src/function.h"

using namespace std;
using namespace x64asm;

// #define DEBUG_STOKED

#ifdef DEBUG_STOKED
#define DEBUG_STOKED_SHOW_ADDRS
#endif

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

class Allocator {
public:
  Allocator(): page_size(getpagesize()) {}

  /** Allocated a one page buffer at an arbitrary address. */
  void* allocate_anywhere() {
    auto ret = mmap(0, page_size,
                    PROT_READ | PROT_WRITE | PROT_EXEC,
                    MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (ret == (void*)-1) {
      cout << "Failed to allocate buffer.  Error: " << strerror(errno) << endl;
      exit(1);
    }
    return ret;
  }

  /** Allocate necessary pages starting at start until start+size. */
  void allocate(uint64_t start, uint64_t size) {
    // calculate real start address
    uint64_t adjusted_start = start & (~(page_size - 1));
    auto adjusted_size = start + size - adjusted_start;
    auto cur = adjusted_start;

    do {
      // allocate if we haven't allocated this page yet
      if (allocated.find(cur) == allocated.end()) {
        allocated.insert(cur);
        auto ret = mmap((void*)cur,
                        page_size,
                        PROT_READ | PROT_WRITE | PROT_EXEC,
                        MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED, -1, 0);
        if (ret == (void*)-1) {
          cout << "Failed to allocate buffer.  Error: " << strerror(errno) << endl;
          exit(1);
        }

#ifdef DEBUG_STOKED_SHOW_ADDRS
        cout << "[ stoked ] Allocating one page:" << endl;
        cout << "             buffer     = " << (void*)start << " - " << (void*) (start + size) << " (" << size << " bytes)" << endl;
        cout << "             page size  = " << page_size << endl;
        cout << "             page start = " << (void*)cur << endl;
#endif
      } else {
#ifdef DEBUG_STOKED_SHOW_ADDRS
        cout << "[ stoked ] Page already allocated:" << endl;
        cout << "             buffer     = " << (void*)start << " - " << (void*) (start + size) << " (" << size << " bytes)" << endl;
        cout << "             page size  = " << page_size << endl;
        cout << "             page start = " << (void*)cur << endl;
#endif
      }
      cur += page_size;
    } while (cur < adjusted_start + adjusted_size);

  }

private:
  /** All the allocated pages (identified by the start address). */
  set<uint64_t> allocated;

  /** The size of a page. */
  uint64_t page_size;
};


/**
* An executable buffer.  Similar to Function from x64asm, but allows choosing
* a specific address for the buffer.
*/
class ExecBuffer {
public:
  ExecBuffer(void* target_addr) : target_address(target_addr) {
  }

  /** Direct pointer to the underlying buffer. */
  void* data() const {
    return target_address;
  }

  /** Zero argument usage form. */
  template <typename Y>
  Y call() const {
    return ((Y(*)()) target_address)();
  }

private:

  /** Address of the buffer */
  void* target_address;
};

bool safe_read(void* buf, int size) {
  auto nread = read(0, buf, size);
  if (nread == 0) {
    return false;
  }
  if (size != nread) {
    cout << "Failed to read sufficient number of bytes; read " << nread << " instead of " << size << " (stoked).  Error message: " << strerror(errno) << endl;
    exit(1);
  }
  return true;
}

void safe_write(const void* data, int nbytes) {
  if (write(2, data, nbytes) != nbytes) {
    cout << "Failed to send data to stoked (stoked)." << endl;
    exit(1);
  }
}

int main() {

  Allocator allocator;
  int n;
  ExecBuffer setup(allocator.allocate_anywhere());
  ExecBuffer cleanup(allocator.allocate_anywhere());

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

  // read the address the code should be located at
  uint64_t target_addr;
  safe_read(&target_addr, sizeof(target_addr));

  // buffer for the code
  ExecBuffer code((void*)target_addr);

  // read ymm values and send address where we store them
  auto nbytes = 256/8;
  unsigned char* ymmdata = new unsigned char[nbytes*16];
  for (int i = 0; i < 16; i++) {
    safe_read(&ymmdata[i*nbytes], nbytes);
    void* ymmdata_ptr = &ymmdata[i*nbytes];
    safe_write(&ymmdata_ptr, sizeof(ymmdata_ptr));
  }

  // read the value of rsp
  uint64_t rsp;
  safe_read(&rsp, sizeof(rsp));

  // send address of rsp_backup
  uint64_t rsp_backup = 0;
  uint64_t* rsp_backup_ptr = &rsp_backup;
  safe_write(&rsp_backup_ptr, sizeof(rsp_backup_ptr));

  // allocate storage at a low address for the jump target to start
  // execution of the target
  // TODO: this is sketchy.  what if 0x10000 is already taken?  we do need it
  // to be a 32bit address, though, which is why it is hard-coded
  uint64_t* jump_target = (uint64_t*)0x10000;
  allocator.allocate(0x10000, 8);
  *jump_target = target_addr;

  // read repetitions
  int reps;
  safe_read(&reps, sizeof(reps));

  // send address of cleanup code
  uint64_t cleanup_addr = (uint64_t) cleanup.data();
  safe_write(&cleanup_addr, sizeof(cleanup_addr));

  // read setup code
  safe_read(&n, sizeof(n));
  assert(n < getpagesize());
  safe_read(setup.data(), n);

  // read cleanup code
  safe_read(&n, sizeof(n));
  assert(n < getpagesize());
  safe_read(cleanup.data(), n);

  // allocate memory
  auto page_size = getpagesize();
  for (auto segment : memories) {
    allocator.allocate(segment.addr, segment.size);
  }

  // make sure the return address pointer is allocated
  allocator.allocate(rsp, 1);

  while (true) {

    // read assembled code
    if (!safe_read(&n, sizeof(n))) break;
    allocator.allocate(target_addr, n);
    safe_read(code.data(), n);

    vector<uint64_t> measurements;
    measurements.reserve(reps);

#define USE_TS

    for (int i = 0; i < reps; i++) {
      // initialize memory (TODO: only do this when necessary)
      for (auto segment : memories) {
        memcpy((void*)segment.addr, segment.data, segment.size);
      }

#ifdef USE_CLOCK
      timespec start, end;
      clock_gettime(CLOCK_THREAD_CPUTIME_ID, &start);
#endif
#ifdef USE_TS
      auto start = rdtsc();
#endif

      setup.call<int>();

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

    sort(measurements.begin(), measurements.end());
    // auto len = measurements.size();
    // int use = 0.7*(reps + 1);
    // int start = 0.05 * reps;
    // uint64_t sum = 0;
    // auto count = 0;
    // for (auto i = start; i < start + use && i < reps; i++) {
    //   sum += measurements[i];
    //   count += 1;
    // }

    uint64_t dur = measurements[0];
    // uint64_t dur = code.call<int>();;

    // send duration
    safe_write(&dur, sizeof(dur));
  }

  return 0;
}
