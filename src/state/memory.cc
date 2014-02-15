#include "src/state/memory.h"

#include <iomanip>
#include <sstream>

using namespace std;

namespace stoke {

istream& Memory::read(istream& is) {
  clear();

  string temp;

  getline(is, temp, '[');
  getline(is, name_, ']');
  getline(is, temp, '[');

  uint64_t upper;
  is >> hex >> upper;
  getline(is, temp, '-');

  uint64_t lower;
  is >> hex >> lower;
  getline(is, temp, ']');

  size_t rows;
  getline(is, temp, '[');
  is >> dec >> rows;
  getline(is, temp, ']');

  // Not a problem, rounding a previously rounded address won't change it.
  set_base(lower);
  // Upper was already padded, need to undo that padding before resizing.
  set_size(upper-lower-0x20);

  uint64_t addr;
  for ( size_t i = 0; i < rows; ++i ) {
    is >> hex >> addr;

    contents_.read(is, addr-base_, addr-base_+8);
		for ( int j = 7; j >= 0; --j ) {
			is >> temp;
      set_valid(addr+j, temp == "v" || temp == "d");
      set_defined(addr+j, temp == "d");
		}
  }

  return is;
}

ostream& Memory::write(ostream& os) const {
  os << "[" << name_ << "] ";
  os << "[" << hex << showbase << upper_bound();
  os << "-";
  os << hex << showbase << lower_bound() << "] ";

  ostringstream oss;
  size_t rows = 0;

  for ( int64_t i = upper_bound(), ie = lower_bound(); i > ie; i -= 8 ) {
    auto any = false;
    for ( size_t j = 1; j <= 8; ++j ) 
      if ( is_valid(i-j) )
        any = true;
    if ( !any )
      continue;

    oss << hex << showbase << (i-8) << "\t";
		for ( size_t j = 1; j <= 8; ++j ) {
      oss << hex << noshowbase << setfill('0') << setw(2);
      oss << (is_defined(i-j) ? get_fixed_byte(i-j) : 0) << " ";
    }
    oss << "\t";
		for ( size_t j = 1; j <= 8; ++j )
      oss << (is_defined(i-j) ? "d " : is_valid(i-j) ? "v " : ". ");
    if ( i != lower_bound()+8 )
      oss << endl;
    rows++;
  }

  os << "[" << dec << rows << " valid rows shown]" << endl;
  os << endl;
  os << oss.str();

  /** DEBUGGING -- Comment this out
  os << "VALID MASK" << endl;
  for ( size_t i = 0; i < valid_mask_.size()*8; ++i ) {
    os << hex << setw(2) << setfill('0') << noshowbase;
    os << (int)((uint8_t*)(valid_mask_.data()))[i] << " ";
  }
  os << endl;
  os << "DEF MASK" << endl;
  for ( size_t i = 0; i < defined_mask_.size()*8; ++i ) {
    os << hex << setw(2) << setfill('0') << noshowbase;
    os << (int)((uint8_t*)(defined_mask_.data()))[i] << " ";
  }
  os << endl;
  */

  return os;
}

} // namespace stoke
