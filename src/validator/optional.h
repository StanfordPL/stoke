#ifndef STOKE_VALIDATOR_OPTIONAL
#define STOKE_VALIDATOR_OPTIONAL

namespace stoke {
template <typename T>
class optional {

public:
  optional() {
    has_value_ = false;
  }

  optional(T t) {
    x = t;
    has_value_ = true;
  }

  bool has_value() const {
    return has_value_;
  }

  T operator*() const {
    return x;
  }

  T operator->() const {
    return x;
  }

  T value() const {
    return x;
  }

  // no value < value(x)
  bool operator<(const optional<T>& other) const {
    // if other has no value, we're not less than it
    if(!other.has_value())
      return false;

    // now, assume other has value
    if(has_value())
      return value() < other.value();
    else
      return true;
  }

  bool operator==(const optional<T>& other) const {
    return other.has_value() == has_value() && other.x == x;
  }

private:

  bool has_value_;
  T x;

};
}

#endif
