#include <stdint.h>

#include <iostream>
#include <new>

using namespace std;

uint8_t pool[1024*1024]; 
uint8_t* next_ptr = &pool[0];

inline void* operator new(size_t size) {
  next_ptr += size;
  return next_ptr - size;
}

inline void* operator new[](size_t size) {
  next_ptr += size;
  return next_ptr - size;
}

inline void operator delete(void* ptr) noexcept { 
  // Does nothing.
}

inline void operator delete[] (void* ptr) noexcept { 
  // Does nothing.
}

struct Node {
  int32_t val;
  Node* next;
};

extern void traverse(Node* n);

int main() {
	for ( size_t i = 0; i < 1024; ++i ) {
		Node* n = new Node();
		Node* list = n;

		for ( size_t j = 0; j < 16; ++j ) {
			n->next = new Node();
			n->next->val = i*16+j;
			n->next->next = nullptr;
			n = n->next;
		}

		traverse(list);

		while ( list != nullptr ) {
			Node* temp = list;
			list = temp->next;
			delete temp;
		}
	}

  return 0;
}
