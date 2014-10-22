
#include <sstream>

#include "src/database/serialize.h"
#include "src/state/cpu_state.h"

#include "src/args/reg_set.h"

using namespace std;
using namespace x64asm;
using namespace stoke;
using namespace mongo;

template <>
RegSet BSONSerializer<RegSet>::from(const BSONElement& obj) {
  stringstream tmp;
  tmp << obj.String();

  RegSet r;
  RegSetReader rsr;
  rsr(tmp, r);

  return r;
}

template <> template <>
std::string BSONSerializer<RegSet>::to<std::string>(const RegSet& regset) {

  stringstream tmp;

  RegSetWriter rsw;
  rsw(tmp, regset);
  return tmp.str();
}

template <>
CpuState BSONSerializer<CpuState>::from(const BSONElement& obj) {

  istringstream tmp;
  tmp.str(obj.String());

  CpuState cs;
  cs.read_text(tmp);

  return cs;
} 

template <> template <>
string BSONSerializer<CpuState>::to<string>(const CpuState& cpu_state) {

  stringstream tmp;
  cpu_state.write_text(tmp);

  return tmp.str();
}

template <>
x64asm::Code BSONSerializer<x64asm::Code>::from(const BSONElement &obj) {

  x64asm::Code c;

  stringstream tmp;
  tmp << obj.String() << endl;
  tmp >> c;

  return c;
}

template <> template <>
string BSONSerializer<x64asm::Code>::to<string>(const x64asm::Code& code) {

  stringstream tmp;
  tmp << code;
  
  return tmp.str();
}

template <typename T>
vector<T> BSONSerializer<T>::fromVector(const BSONElement &array) {

  vector<T> vs;

  auto array_obj = array.Obj();

  for(size_t i = 0; i < (size_t)array_obj.nFields(); ++i) {
    auto obj = array_obj[to_string(i)];
    vs.push_back(BSONSerializer<T>::from(obj));
  }

}

template <typename T>
template <typename U>
std::vector<U> BSONSerializer<T>::toVector(const vector<T>& vector) {

  std::vector<U> vs;

  for(auto t : vector) {
    vs.push_back(BSONSerializer<T>::to<U>(t));
  }

  return vs;
}

/* Special code for deserializing ints, because some need to be
   stored as strings in Mongo for over 32 bits. */
template <>
int8_t BSONSerializer<int8_t>::from(const BSONElement &obj) {
  return (int8_t)obj.Int();
}
template <>
int16_t BSONSerializer<int16_t>::from(const BSONElement &obj) {
  return (int16_t)obj.Int();
}
template <>
int32_t BSONSerializer<int32_t>::from(const BSONElement &obj) {
  return (int32_t)obj.Int();
}
template <>
int64_t BSONSerializer<int64_t>::from(const BSONElement &obj) {
  return stoull(obj.String());
}
template <>
uint8_t BSONSerializer<uint8_t>::from(const BSONElement &obj) {
  return (uint8_t)obj.Int();
}
template <>
uint16_t BSONSerializer<uint16_t>::from(const BSONElement &obj) {
  return (uint16_t)obj.Int();
}
template <>
uint32_t BSONSerializer<uint32_t>::from(const BSONElement &obj) {
  return (uint32_t)obj.Int();
}
template <>
uint64_t BSONSerializer<uint64_t>::from(const BSONElement &obj) {
  return stoull(obj.String());
}


template <> template <>
int8_t BSONSerializer<int8_t>::to(const int8_t &t) {
  return t;
}
template <> template <>
int16_t BSONSerializer<int16_t>::to(const int16_t &t) {
  return t;
}
template <> template <>
int32_t BSONSerializer<int32_t>::to(const int32_t &t) {
  return t;
}
template <> template <>
string BSONSerializer<int64_t>::to(const int64_t &t) {
  return to_string(t);
}
template <> template <>
uint8_t BSONSerializer<uint8_t>::to(const uint8_t &t) {
  return t;
}
template <> template <>
uint16_t BSONSerializer<uint16_t>::to(const uint16_t &t) {
  return t;
}
template <> template <>
uint32_t BSONSerializer<uint32_t>::to(const uint32_t &t) {
  return t;
}
template <> template <>
string BSONSerializer<uint64_t>::to(const uint64_t &t) {
  return to_string(t);
}




template <>
string BSONSerializer<string>::from(const BSONElement &obj) {
  return obj.String();
}
template <> template <>
string BSONSerializer<string>::to(const string &s) {
  return s;
}

template <>
OID BSONSerializer<OID>::from(const BSONElement &obj) {
  return obj.OID();
}


template <> template <>
OID BSONSerializer<OID>::to(const OID &s) {
  return s;
}



/* Force various template instantiations */

#define INSTANTIATE_BSON_TEMPLATE(CLASS) \
  template class BSONSerializer<BSON_CONVERT_FROM_ ## CLASS>;\
  template BSON_CONVERT_TO_ ## CLASS BSONSerializer<BSON_CONVERT_FROM_ ## CLASS>\
             ::to(const BSON_CONVERT_FROM_ ## CLASS &x);\
  template std::vector<BSON_CONVERT_TO_ ## CLASS> BSONSerializer<BSON_CONVERT_FROM_ ## CLASS>\
             ::toVector(const std::vector<BSON_CONVERT_FROM_ ## CLASS> &x);


INSTANTIATE_BSON_TEMPLATE(Code);
INSTANTIATE_BSON_TEMPLATE(RegSet);
INSTANTIATE_BSON_TEMPLATE(uint64_t);
INSTANTIATE_BSON_TEMPLATE(uint32_t);
INSTANTIATE_BSON_TEMPLATE(uint16_t);
INSTANTIATE_BSON_TEMPLATE(uint8_t);
INSTANTIATE_BSON_TEMPLATE(int64_t);
INSTANTIATE_BSON_TEMPLATE(int32_t);
INSTANTIATE_BSON_TEMPLATE(int16_t);
INSTANTIATE_BSON_TEMPLATE(int8_t);
INSTANTIATE_BSON_TEMPLATE(CpuState);
INSTANTIATE_BSON_TEMPLATE(string);
INSTANTIATE_BSON_TEMPLATE(OID);


