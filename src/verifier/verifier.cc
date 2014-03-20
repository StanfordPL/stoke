#include <cassert>

#include "src/verifier/verifier.h"

using namespace std;

namespace stoke {

bool Verifier::verify(const Cfg& target, const Cfg& rewrite) {
  switch (strategy_) {
    case Strategy::NONE:
      return true;
    case Strategy::REGRESSION:
      return regression(target, rewrite);
    case Strategy::FORMAL:
      return formal(target, rewrite);
    case Strategy::RANDOM:
      return random(target, rewrite);
    default:
      assert(false);
      return false;
  }
}

bool Verifier::regression(const Cfg& target, const Cfg& rewrite) {
  return false;
}

bool Verifier::formal(const Cfg& target, const Cfg& rewrite) {
  return false;
}

bool Verifier::random(const Cfg& target, const Cfg& rewrite) {
  return false;
}

} // namespace stoke
