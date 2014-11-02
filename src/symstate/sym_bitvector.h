
namespace stoke {

template <uint16_t n>
struct SymBitVectorAnd;

template <uint16_t n, uint16_t x, uint16_t y>
struct SymBitVectorConcat;

template <uint16_t n>
struct SymBitVectorConstant;

template <uint16_t n, uint16_t m>
struct SymBitVectorExtract;

template <uint16_t n>
struct SymBitVectorIff;

template <uint16_t n>
struct SymBitVectorIte;

template <uint16_t n>
struct SymBitVectorNot;

template <uint16_t n>
struct SymBitVectorOr;

template <uint16_t n>
struct SymBitVectorPlus;

template <uint16_t n>
struct SymBitVectorShiftRight;

template <uint16_t n>
struct SymBitVectorShiftLeft;

template <uint16_t n>
struct SymBitVectorXor;



template <uint16_t n>
class SymBitVector {
  public:

    /** Constructs the sum of two bitvectors */
    SymBitVector<n> operator+(const SymBitVector<n>& other) const {
      return SymBitVectorPlus<n>(*this, other); 
    }

    /** Constructs the bitwise AND of two bitvectors */
    SymBitVector<n> operator&(const SymBitVector<n>& other) const {
      return SymBitVectorAnd<n>(*this, other);
    }

    /** Constructs the bitwise OR of two bitvectors */
    SymBitVector<n> operator|(const SymBitVector<n>& other) const {
      return SymBitVectorOr<n>(*this, other);
    }

    /** Constructs the bitwise XOR of two bitvectors */
    SymBitVector<n> operator^(const SymBitVector<n>& other) const {
      return SymBitVectorXor<n>(*this, other);
    }

    /** Constructs the logical negation of this bitvector */
    SymBitVector<n> operator!() const {
      return SymBitVectorNot<n>(*this);
    }

    /** Constructs the concatenation of two bitvectors */
    template <uint16_t m>
    SymBitVector<n+m> operator||(const SymBitVector<m>& other) const {
      return SymBitVectorConcat<n+m, n, m>(*this, other);
    }

    /** Constructs a bitvector (of same size) shifted to the right by 'shift' */
    SymBitVector<n> operator>>(uint16_t shift) const {
      return SymBitVectorShiftRight<n>(*this, shift);
    }

    /** Constructs a bitvector (of same size) shifted to the left by 'shift' */
    SymBitVector<n> operator<<(uint16_t shift) const {
      return SymBitVectorShiftLeft<n>(*this, shift);
    }

    /** Returns a bitvector of length 1 indicating if the arguments are equal */
    SymBitVector<1> operator==(const SymBitVector<n>& other) const {
      return SymBitVectorIff<n>(*this, other);
    }

    /** Returns a bitvector of length 1 indicating if the arguments are not equal */
    SymBitVector<1> operator!=(const SymBitVector<n>& other) const {
      return !(*this == other);
    }

    /** Extracts a single bit from the bitvector */
    SymBitVector<1> operator[](uint16_t index) {
      return extract<1>(index);
    }

    /** Extracts a sequence of m bits from 'low_bit' to 'low_bit + m - 1' from the
        bitvector. */
    template <uint16_t m>
    SymBitVector<m> extract(uint16_t low_bit) {
      return SymBitVectorExtract<m,n>(*this, low_bit);
    }

    /** A bitvector representation of if-then-else; i.e. saying ( cond ? a : b ). */
    static SymBitVector<n> ite(const SymBitVector<1>& cond, 
                               const SymBitVector<n>& a, const SymBitVector<n>& b) {
      return SymBitVectorIte<n>(cond, a, b);
    }

};

template <uint16_t n>
struct SymBitVectorAnd : public SymBitVector<n> {

  public:
    SymBitVectorAnd(const SymBitVector<n>& a, const SymBitVector<n>& b) : a_(a), b_(b) {}


    const SymBitVector<n>& a_;
    const SymBitVector<n>& b_;
};

template <uint16_t n, uint16_t x, uint16_t y>
struct SymBitVectorConcat : public SymBitVector<n> {

  public:
    SymBitVectorConcat(const SymBitVector<x>& a, const SymBitVector<y>& b) :
       a_(a), b_(b) {
      assert(x + y == n);
    }

    const SymBitVector<x>& a_;
    const SymBitVector<y>& b_;
};

template <uint16_t n>
struct SymBitVectorConstant : public SymBitVector<n> {

  public:
    SymBitVectorConstant(uint64_t constant) : constant_(constant) {}

    const uint64_t constant_;
};

template <uint16_t n, uint16_t m>
struct SymBitVectorExtract : public SymBitVector<n> {

  public:
    /* Extracts bits low_bit,low_bit+1,...,low_bit+n-1 from a 
       bitvector of length m */
    SymBitVectorExtract(const SymBitVector<m>& bv, uint16_t low_bit) :
      bv_(bv), low_bit_(low_bit), high_bit_(low_bit + n - 1) {
      assert(high_bit_ < m);
    }


    const SymBitVector<m>& bv_;
    const uint16_t low_bit_;
    const uint16_t high_bit_;
};

template <uint16_t n>
struct SymBitVectorIff : public SymBitVector<1> {

  public:
    SymBitVectorIff(const SymBitVector<n>& a, const SymBitVector<n>& b) : a_(a), b_(b) {}


    const SymBitVector<n>& a_;
    const SymBitVector<n>& b_;
};

template <uint16_t n>
struct SymBitVectorIte : public SymBitVector<n> {

  public:
    SymBitVectorIte(const SymBitVector<1>& cond, const SymBitVector<n>& a, 
                    const SymBitVector<n>& b) : cond_(cond), a_(a), b_(b) {}


    const SymBitVector<1>& cond_;
    const SymBitVector<n>& a_;
    const SymBitVector<n>& b_;
};

template <uint16_t n>
struct SymBitVectorNot : public SymBitVector<n> {

  public:
    SymBitVectorNot(const SymBitVector<n>& bv) : bv_(bv) {}


    const SymBitVector<n>& bv_;
};

template <uint16_t n>
struct SymBitVectorOr : public SymBitVector<n> {

  public:
    SymBitVectorOr(const SymBitVector<n>& a, const SymBitVector<n>& b) : a_(a), b_(b) {}


    const SymBitVector<n>& a_;
    const SymBitVector<n>& b_;
};

template <uint16_t n>
struct SymBitVectorPlus : public SymBitVector<n> {

  public:
    SymBitVectorPlus(const SymBitVector<n>& a, const SymBitVector<n>& b) : a_(a), b_(b) {}


    const SymBitVector<n>& a_;
    const SymBitVector<n>& b_;
};

template <uint16_t n>
struct SymBitVectorShiftLeft : public SymBitVector<n> {

  public:
    SymBitVectorShiftLeft(const SymBitVector<n>& bv, uint16_t shift) : 
      bv_(bv), shift_(shift) {}


    const SymBitVector<n>& bv_;
    const uint16_t shift_;
};

template <uint16_t n>
struct SymBitVectorShiftRight : public SymBitVector<n> {

  public:
    SymBitVectorShiftRight(const SymBitVector<n>& bv, uint16_t shift) : 
      bv_(bv), shift_(shift) {}


    const SymBitVector<n>& bv_;
    const uint16_t shift_;
};

template <uint16_t n>
struct SymBitVectorXor : public SymBitVector<n> {

  public:
    SymBitVectorXor(const SymBitVector<n>& a, const SymBitVector<n>& b) : a_(a), b_(b) {}


    const SymBitVector<n>& a_;
    const SymBitVector<n>& b_;
};



} //namespace stoke
