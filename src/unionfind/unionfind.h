
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
      max_value_[t] = t;
    }

    void join(T t, T u) {
      auto c1 = lookup(t);
      auto c2 = lookup(u);

      /** not high performance, but I prefer having the 
        representative of each component being the smallest
        value. */
      if(c1 == c2) {
        // no-op
        return;
      } else if (c1 < c2) {
        internal_map_[c2] = c1;
        components_.erase(c2);
        if(max_value_[c1] < max_value_[c2])
          max_value_[c1] = max_value_[c2];
      } else if (c2 < c1) {
        internal_map_[c1] = c2;
        components_.erase(c1);
        if(max_value_[c2] < max_value_[c1])
          max_value_[c2] = max_value_[c1];
      } 
    }

    /** Do we have the input in any class? */
    bool contains(T t) {
      return internal_map_.count(t) > 0;
    }

    /** Find the input in its class. */
    T lookup(T t) {
      T x = internal_map_.at(t);
      if(x == t)
        return x;
      T y = lookup(x);
      internal_map_[t] = y;
      return y;
    }

    /** Get the maximum value in a component. */
    T max_value(T t) {
      T index = lookup(t);
      return max_value_[index];
    }

    std::set<T> components() {
      return components_;
    }

  private:
    std::map<T, T> internal_map_;
    std::map<T, T> max_value_;
    std::set<T> components_;

};

}

#endif
