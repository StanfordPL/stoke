#include <stdint.h>

uint64_t mont_mul(uint64_t c1, uint64_t np, uint32_t ml, uint32_t mh, uint64_t c0)
{
  uint64_t l,h; 
  h= (np);
  l=((h)&(0xffffffffL));
  h=(((h)>>32)&(0xffffffffL)); 

  { 
    uint64_t m,m1,lt,ht; 
    lt=l; 
    ht=h; 

    m =((mh))*(lt); 
    lt=((ml))*(lt); 
    m1=((ml))*(ht); 
    ht =((mh))*(ht); 
    m=(m+m1)&(0xffffffffffffffffL); 
    if (m < m1) 
      ht+=((((uint64_t)1)<<32)&(0xffffffffffffffffL)); 
    ht+=(((m)>>32)&(0xffffffffL)); 
    m1=(((m)<<32)&(0xffffffffffffffffL)); 
    lt=(lt+m1)&(0xffffffffffffffffL); 
    if (lt < m1)
      ht++; (l)=lt; 
    (h)=ht;
  };

  l=(l+(c0))&(0xffffffffffffffffL); 
  if (l < (c0)) 
    h++;
  (c0)=(c1);
  l=(l+(c0))&(0xffffffffffffffffL);
  if (l < (c0)) 
    h++; 
  (c0)=h&(0xffffffffffffffffL); 
  (c1)=l;

  return c0 ^ c1;
}

