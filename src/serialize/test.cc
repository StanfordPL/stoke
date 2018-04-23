

#include "serialize.h"

#include <iostream>
#include <vector>

using namespace std;

struct A {

  static int counter;

  A() {
    me = ++counter;
  }

  void serialize(ostream& os) const {
    os << me << endl;
  }

  static A deserialize(istream& is) {
    A a;
    is >> a.me;
    return a;
  }

  int me;

};

int A::counter = 0;

int main(int argc, char** argv) {
  if(argc == 1) {
    stoke::serialize(cout, 5);
    vector<int> x = { 2, 3, 4};
    stoke::serialize(cout, x);
    vector<A> as = { A(), A(), A() };
    stoke::serialize(cout, as);
    A b;
    stoke::serialize(cout, b);
  } else {
    int x = stoke::deserialize<int>(cin);
    cout << "5 = " << x << endl;
    auto ys = stoke::deserialize<vector<int>>(cin);
    cout << "vector = ";
    for(auto it : ys)
      cout << it << endl;
    auto as = stoke::deserialize<vector<A>>(cin);
    cout << "as = " << endl;
    for(auto it : as)
      cout << it.me << endl;
    A b = stoke::deserialize<A>(cin);
    cout << "b = " << b.me << endl;
  }
}

