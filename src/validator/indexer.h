
#include <map>
#include <vector>

#ifndef STOKE_VALIDATOR_INDEXER
#define STOKE_VALIDATOR_INDEXER

namespace stoke {

template <typename T>
class Indexer {

public:
  size_t add(T x) {
    if (map_.count(x) == 0) {
      map_[x] = ++total_num;
      list_.push_back(x);
    }
    return map_[x];
  }

  size_t fetch(T x) {
    assert(map_.count(x));
    return map_[x];
  }

  size_t operator[](T t) {
    return fetch(t);
  }

  T reverse(size_t index) {
    assert(index < total_num);
    return list_[index];
  }

  size_t count() {
    return total_num;
  }

  std::vector<T> get_vector() {
    return list_;
  }

private:
  size_t total_num = 0;
  std::map<T, size_t> map_;
  std::vector<T> list_;


};
}

#endif
