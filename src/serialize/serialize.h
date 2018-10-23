
#ifndef STOKE_SRC_SERIALIZE_SERIALIZE_H
#define STOKE_SRC_SERIALIZE_SERIALIZE_H


#include <iostream>
#include <istream>
#include <map>
#include <ostream>
#include <vector>
#include <memory>

#include "src/ext/x64asm/src/reg_set.h"
#include "src/serialize/check_stream.h"
#include "src/validator/invariant.h"
#include "src/validator/optional.h"

namespace stoke {

/** Declarations */
template<typename T>
void serialize(std::ostream& os, const T& t);

template<typename T>
T deserialize(std::istream& is);

/** Common case */
template <typename T, typename U>
class Serializer {
  public: 
    static void serialize(std::ostream& os, const T& t) {
      t.serialize(os);
    }
    static T deserialize(std::istream& is) {
      return T::deserialize(is);
    }
};

/** Pointers besides invariants */
template <typename T>
class Serializer<typename std::enable_if<!std::is_base_of<Invariant, T>::value, T*>::type, T*> {
  public: 
    static void serialize(std::ostream& os, const T* t) {
      t->serialize(os);
    }
    static T* deserialize(std::istream& is) {
      T t = stoke::deserialize<T>(is);
      return new T(t);
    }
};

/** Invariant shared pointers */
template <typename T>
class Serializer<typename std::enable_if<std::is_base_of<Invariant, T>::value, std::shared_ptr<T>>::type, std::shared_ptr<T>> {
  public:
    static void serialize(std::ostream& os, const std::shared_ptr<T> t) {
      t->serialize(os);
    }
    static std::shared_ptr<T> deserialize(std::istream& is) {
      return std::dynamic_pointer_cast<T>(Invariant::deserialize(is));
    }
};


/** Invariant pointers */
template <typename T>
class Serializer<typename std::enable_if<std::is_base_of<Invariant, T>::value, T*>::type, T*> {
  public:
    static void serialize(std::ostream& os, const T* t) {
      t->serialize(os);
    }
    static T* deserialize(std::istream& is) {
      return static_cast<T*>(Invariant::deserialize(is));
    }
};

/** Vectors */
template <typename T>
class Serializer<std::vector<T>, std::vector<T>> {
  public: 
    static void serialize(std::ostream& os, const std::vector<T>& v) {
      os << v.size() << std::endl;
      for(auto t : v) {
        stoke::serialize<T>(os, t);
      }
    }

    static std::vector<T> deserialize(std::istream& is) {
      std::vector<T> output;
      size_t n;
      is >> n;
      for(size_t i = 0; i < n; ++i) {
        T t = stoke::deserialize<T>(is);
        output.push_back(t);
      }
      return output;
    }
};

/** Pairs */
template <typename T, typename U>
class Serializer<std::pair<T, U>, std::pair<T, U>> {
  public: 
    static void serialize(std::ostream& os, const std::pair<T, U>& pair) {
      stoke::serialize<T>(os, pair.first);
      stoke::serialize<U>(os, pair.second);
    }

    static std::pair<T, U> deserialize(std::istream& is) {
      T t = stoke::deserialize<T>(is);
      U u = stoke::deserialize<U>(is);
      return std::pair<T,U>(t,u);
    }
};

/** Optional */
template <typename T>
class Serializer<optional<T>, optional<T>> {
  public: 
    static void serialize(std::ostream& os, const optional<T>& option) {
      if(option.has_value()) {
        os << "Y ";
        stoke::serialize<T>(os, option.value());
      } else {
        os << "N ";
      }
    }

    static optional<T> deserialize(std::istream& is) {
      char c;
      is >> c;
      if(c == 'Y') {
        T t = stoke::deserialize<T>(is);
        return optional<T>(t);
      } else if (c == 'N') {
        return optional<T>();
      } else {
        assert(false);
        return optional<T>();
      }
    }
};


/** Maps */
template <typename T, typename U>
class Serializer<std::map<T, U>, std::map<T, U>> {
  public: 
    static void serialize(std::ostream& os, const std::map<T,U>& m) {
      os << m.size() << std::endl;
      for(auto pair : m) {
        stoke::serialize<T>(os, pair.first);
        stoke::serialize<U>(os, pair.second);
      }
    }

    static std::map<T, U> deserialize(std::istream& is) {
      std::map<T,U> output;
      size_t n;
      is >> n;
      for(size_t i = 0; i < n; ++i) {
        T t = stoke::deserialize<T>(is);
        U u = stoke::deserialize<U>(is);
        output.insert({t, u});
      }
      return output;
    }
};

/** Numbers */
template <typename T>
class Serializer<typename std::enable_if<std::is_integral<T>::value, T>::type, T> {
  public: 
    static void serialize(std::ostream& os, const T& t) {
      os << t << " ";
    }

    static T deserialize(std::istream& is) {
      T t;
      is >> t;
      return t;
    }
};

/** RegSet */
template <>
class Serializer<x64asm::RegSet, x64asm::RegSet> {
  public: 
    static void serialize(std::ostream& os, const x64asm::RegSet& t) {
      os << t << " ";
    }

    static x64asm::RegSet deserialize(std::istream& is) {
      x64asm::RegSet t;
      is >> t;
      return t;
    }
};

/** M8 */
template <>
class Serializer<x64asm::M8, x64asm::M8> {
  public: 
    static void serialize(std::ostream& os, const x64asm::M8& t) {
      os << t << " ";
    }

    static x64asm::M8 deserialize(std::istream& is) {
      x64asm::M8 t(x64asm::Imm32(0));
      is >> t;
      return t;
    }
};


/** Implementation */
template<typename T>
void serialize(std::ostream& os, const T& t) {
  Serializer<T,T>::serialize(os, t);
}

template<typename T>
T deserialize(std::istream& is) {
  return Serializer<T,T>::deserialize(is);
}

}

#endif
