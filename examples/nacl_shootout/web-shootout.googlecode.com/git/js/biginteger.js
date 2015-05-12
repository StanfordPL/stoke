/* Modified by Matthew Wilson to extend Array, so that all obj[whole number]
   lookups are numbers indexed to the Array, not hashset members.
   I got another speedup from entirely removing the OO-ness.

    see http://www-cs-students.stanford.edu/~tjw/jsbn/
    see http://v8.googlecode.com/svn/data/benchmarks/v5/crypto.js
*/

// Copyright (c) 2005  Tom Wu
// All Rights Reserved.
// See "LICENSE" for details.
// Basic JavaScript BN library - subset useful for RSA encryption.

functions = (function(){
// Bits per digit
var dbits = 28, BI_FP = 52, DB = dbits, DM = ((1<<dbits)-1), DV = (1<<dbits),
  FV = Math.pow(2,BI_FP), F1 = BI_FP-dbits, F2 = 2*dbits-BI_FP;

// am: Compute w_j += (x*this_i), propagate carries,
// c is initial carry, returns final carry.
// c < 3*dvalue, x < 2*dvalue, this_i < dvalue
// Set max digit bits to 28 since some
// browsers slow down when dealing with 32-bit numbers.
// including V8
function am(This,i,x,w,j,c,n) {
  var xl = x&0x3fff, xh = x>>14, z, l, h, m;
  if(--n >= 0) for(;;) {
    l =(((m=xh*(l=(z=This[i])&0x3fff)+xl*(h=z>>14))&0x3fff)<<14)+xl*l+w[j]+c;
    w[j++] = l&0xfffffff; ++i;
    if (--n >= 0) { c = (l>>28)+(m>>14)+xh*h }
    else { return (l>>28)+(m>>14)+xh*h }
  }
  return c;
}

// Digit conversions
var BI_RM = "0123456789abcdefghijklmnopqrstuvwxyz";
var BI_RC = new Array();
var rr,vv;
rr = "0".charCodeAt(0);
for(vv = 0; vv <= 9; ++vv) BI_RC[rr++] = vv;
rr = "a".charCodeAt(0);
for(vv = 10; vv < 36; ++vv) BI_RC[rr++] = vv;
rr = "A".charCodeAt(0);
for(vv = 10; vv < 36; ++vv) BI_RC[rr++] = vv;

// (protected) copy this to r
function copyTo(o,r) {
  for(var i = (r.t = o.t)-1; i >= 0; --i) r[i] = o[i];
  r.s = o.s;
}

// (protected) set from integer value x, -DV <= x < DV
function fromInt(o,x) {
  o.t = 1;
  o.s = (x<0)?-1:0;
  if(x > 0) o[0] = x;
  else if(x < -1) o[0] = x+DV;
  else o.t = 0;
}

// return bigint initialized to value
function nbv(i) { var r = []; fromInt(r,i); return r; }

// (protected) clamp off excess high words
function clamp(r) {
  var c = r.s&DM, t = r.t;
  while(t > 0 && r[t-1] == c) { --t; }
  r.t = t;
}

// (public) -this
function negate(o) { var r = []; bnpSubTo(ZERO,o,r); return r; }

// (public) |this|
function abs(o) { return (o.s<0)?negate(o):o; }

// (public) return + if this > a, - if this < a, 0 if equal
function bnCompareTo(o,a) {
  var r = o.s-a.s;
  if(r != 0) return r;
  var i = o.t;
  r = i-a.t;
  if(r != 0) return r;
  while(--i >= 0) if((r=o[i]-a[i]) != 0) return r;
  return 0;
}

// returns bit length of the integer x
function nbits(x) {
  var r = 1, t;
  if((t=x>>>16) != 0) { x = t; r += 16; }
  if((t=x>>8) != 0) { x = t; r += 8; }
  if((t=x>>4) != 0) { x = t; r += 4; }
  if((t=x>>2) != 0) { x = t; r += 2; }
  if((t=x>>1) != 0) { x = t; r += 1; }
  return r;
}
/*
// (public) return the number of bits in "this"
function bnBitLength() {
  if(this.t <= 0) return 0;
  return DB*(this.t-1)+nbits(this[this.t-1]^(this.s&DM));
}
*/
// (protected) r = this << n*DB
function bnpDLShift(o,n) {
  var i, t,r=Array((t=o.t)+n);
  for(i = t-1; i >= 0; --i) r[i+n] = o[i];
  for(i = n-1; i >= 0; --i) r[i] = 0;
  r.t = t+n;
  r.s = o.s;
  return r;
}

// (protected) r = this >> n*DB
function bnpDRShiftTo(o,n,r) {
  for(var i = n; i < o.t; ++i) r[i-n] = o[i];
  r.t = Math.max(o.t-n,0);
  r.s = o.s;
}

// (protected) r = this << n
function bnpLShiftTo(o,n,r) {
  var bs = n%DB, cbs = DB-bs, bm = (1<<cbs)-1,
    ds = Math.floor(n/DB), c = ((s=o.s)<<bs)&DM, i, z, t, s;
  for(i = (t=o.t)-1; i >= 0; --i) {
    r[i+ds+1] = ((z=o[i])>>cbs)|c;
    c = (z&bm)<<bs;
  }
  for(i = ds-1; i >= 0; --i) r[i] = 0;
  r[ds] = c;
  r.t = t+ds+1;
  r.s = s;
  clamp(r);
}

// (protected) r = this >> n
function bnpRShiftTo(o,n,r) {
  r.s = o.s;
  var ds = Math.floor(n/DB), t=o.t, z;
  if(ds >= t) { r.t = 0; return; }
  var bs = n%DB, cbs = DB-bs, bm = (1<<bs)-1;
  r[0] = o[ds]>>bs;
  for(var i = ds+1; i < t; ++i) {
    r[i-ds-1] |= ((z=o[i])&bm)<<cbs;
    r[i-ds] = z>>bs;
  }
  if(bs > 0) r[t-ds-1] |= (o.s&bm)<<cbs;
  r.t = t-ds;
  clamp(r);
}

// (protected) r = this - a
function bnpSubTo(o,a,r) {
  var i = 0, c = 0, t, m = Math.min(a.t,t=o.t);
  while(i < m) {
    c += o[i]-a[i];
    r[i++] = c&DM;
    c >>= DB;
  }
  if(a.t < t) {
    c -= a.s;
    while(i < t) {
      c += o[i];
      r[i++] = c&DM;
      c >>= DB;
    }
    c += o.s;
  }
  else {
    c += o.s;
    while(i < a.t) {
      c -= a[i];
      r[i++] = c&DM;
      c >>= DB;
    }
    c -= a.s;
  }
  r.s = (c<0)?-1:0;
  if(c < -1) r[i++] = DV+c;
  else if(c > 0) r[i++] = c;
  r.t = i;
  clamp(r);
}

// (protected) r = this * a, r != this,a (HAC 14.12)
// "this" should be the larger one if appropriate.
function bnpMultiplyTo(o,a,r) {
  var x = abs(o), y = abs(a);
  var i = x.t;
  r.t = i+y.t;
  while(--i >= 0) r[i] = 0;
  for(i = 0; i < y.t; ++i) r[i+x.t] = am(x,0,y[i],r,i,0,x.t);
  r.s = 0;
  clamp(r);
  if(o.s != a.s) bnpSubTo(ZERO,r,r);
}
// (protected) divide this by m, quotient and remainder to q, r (HAC 14.20)
// r != q, this != m.  q or r may be null.
function bnpDivRemTo(o,m,q,r) {
  var pm = abs(m);
  if(pm.t <= 0) return;
  var pt = abs(o);
  if(pt.t < pm.t) {
    //if(q != null) // dead code?
    fromInt(q,0);
    if(r != null) copyTo(o,r);
    return;
  }
  if(r == null) r = [];
  var y = [], ts = o.s, ms = m.s;
  var nsh = DB-nbits(pm[pm.t-1]);	// normalize modulus
  if(nsh > 0) { bnpLShiftTo(pm,nsh,y); bnpLShiftTo(pt,nsh,r); }
  else { copyTo(pm,y); copyTo(pt,r); }
  var ys = y.t;
  var y0 = y[ys-1];
  if(y0 == 0) return;
  var yt = y0*(1<<F1)+((ys>1)?y[ys-2]>>F2:0);
  var d1 = FV/yt, d2 = (1<<F1)/yt, e = 1<<F2;
  var i = r.t, j = i-ys, t = bnpDLShift(y,j);
  if(bnCompareTo(r,t) >= 0) {
    r[r.t++] = 1;
    bnpSubTo(r,t,r);
  }
  t = bnpDLShift(ONE,ys);
  bnpSubTo(t,y,y);	// "negative" y so we can replace sub with am later
  while(y.t < ys) y[y.t++] = 0;
  while(--j >= 0) {
    // Estimate quotient digit
    var qd = (r[--i]==y0)?DM:Math.floor(r[i]*d1+(r[i-1]+e)*d2);
    if((r[i]+=am(y,0,qd,r,j,0,ys)) < qd) {	// Try it out
      t = bnpDLShift(y,j);
      bnpSubTo(r,t,r);
      while(r[i] < --qd) bnpSubTo(r,t,r);
    }
  }
  if(q != null) {
    bnpDRShiftTo(r,ys,q);
    if(ts != ms) bnpSubTo(ZERO,q,q);
  }
  r.t = ys;
  clamp(r);
  if(nsh > 0) bnpRShiftTo(r,nsh,r);	// Denormalize remainder
  if(ts < 0) bnpSubTo(ZERO,r,r);
}

// "constants"
ZERO = nbv(0);
ONE = nbv(1);
// Copyright (c) 2005  Tom Wu
// All Rights Reserved.
// See "LICENSE" for details.

// Extended JavaScript BN functions, required for RSA private ops.

// (public) return value as integer
function intValue(o) {
  if(o.s < 0) {
    if(o.t == 1) return o[0]-DV;
    else if(o.t == 0) return -1;
  }
  else if(o.t == 1) return o[0];
  else if(o.t == 0) return 0;
  // assumes 16 < DB < 32
  return ((o[1]&((1<<(32-DB))-1))<<DB)|o[0];
}

// (public) this << n
function shiftLeft(o,n) {
  var r = [];
  if(n < 0) bnpRShiftTo(o,-n,r); else bnpLShiftTo(o,n,r);
  return r;
}

// (protected) r = this + a
function bnpAddTo(o,a,r) {
  var i = 0, c = 0, m = Math.min(a.t,o.t);
  while(i < m) {
    c += o[i]+a[i];
    r[i++] = c&DM;
    c >>= DB;
  }
  if(a.t < o.t) {
    c += a.s;
    while(i < o.t) {
      c += o[i];
      r[i++] = c&DM;
      c >>= DB;
    }
    c += o.s;
  }
  else {
    c += o.s;
    while(i < a.t) {
      c += a[i];
      r[i++] = c&DM;
      c >>= DB;
    }
    c += a.s;
  }
  r.s = (c<0)?-1:0;
  if(c > 0) r[i++] = c;
  else if(c < -1) r[i++] = DV+c;
  r.t = i;
  clamp(r);
}

return [compareTo = bnCompareTo,
multiply = function multiply(o,a) { var r = []; bnpMultiplyTo(o,a,r);return r},
divide = function divide(o,a) { var r =[]; bnpDivRemTo(o,a,r,null); return r},
addTo = bnpAddTo,
add = function add(o,a) { var r = []; bnpAddTo(o,a,r); return r; },
nbv, shiftLeft, intValue];
})();
