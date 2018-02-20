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

  bool has_value() {
    return has_value_;
  }

  T operator*() {
    return x;
  }

  T operator->() {
    return x;
  }

  T value() {
    return x;
  }

private:

  bool has_value_;
  T x;

};
}

#endif
