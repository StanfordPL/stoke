
#ifndef STOKE_SRC_UNIONFIND_H
#define STOKE_SRC_UNIONFIND_H

#include <map>
#include <vector>

namespace stoke {

template <typename T>
class UnionFind {

  public:
    void add(T t) {
      components_.insert(t);
      internal_map_[t] = t;
    }

    void join(T t, T u) {
      auto c1 = lookup(t);
      auto c2 = lookup(u);

      if(c1 == c2) {
        // no-op
        return;
      } else if (c1 < c2) {
        internal_map_[c2] = c1;
        components_.erase(c2);
      } else {
        internal_map_[c1] = c2;
        components_.erase(c1);
      }
    }

    T lookup(T t) {
      T x = internal_map_.at(t);
      if(x == t)
        return x;
      T y = lookup(x);
      internal_map_[t] = y;
      return y;
    }

    std::set<T> components() {
      return components_;
    }

  private:
    std::map<T, T> internal_map_;
    std::set<T> components_;

};

}

#endif
