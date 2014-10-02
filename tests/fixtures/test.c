
#include <string.h>

int main(int argc, char** argv) {
  size_t count = 0;
  for(size_t i = 0; i < argc; ++i) {
    count += strlen(argv[i]);
  }
  return count;
}
