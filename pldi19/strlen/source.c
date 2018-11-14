
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stdio.h>
#include <time.h>
#include <sys/time.h>
#include <math.h>

/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */

#ifndef BENCHMARK_F1
#ifndef BENCHMARK_F3
size_t __attribute__ ((noinline)) func_2(const char* s) {
  const char* t = s;
  while(*s != '\0') {
    s++;
  }

  return (size_t)(s-t);
}
#endif
#endif

#ifndef BENCHMARK_F2
#ifndef BENCHMARK_F3
size_t
__attribute__ ((noinline))
  func_1 (const char *str) {
    const char *char_ptr;
    const unsigned long int *longword_ptr;
    unsigned long int longword, himagic, lomagic;

    /* Handle the first few characters by reading one character at a time.
       Do this until CHAR_PTR is aligned on a longword boundary.  */
    for (char_ptr = str; ((unsigned long int) char_ptr
          & (sizeof (longword) - 1)) != 0;
        ++char_ptr)
      if (*char_ptr == '\0')
        return char_ptr - str;

    /* All these elucidatory comments refer to 4-byte longwords,
       but the theory applies equally well to 8-byte longwords.  */

    longword_ptr = (unsigned long int *) char_ptr;

    /* Bits 31, 24, 16, and 8 of this number are zero.  Call these bits
       the "holes."  Note that there is a hole just to the left of
       each byte, with an extra at the end:

bits:  01111110 11111110 11111110 11111111
bytes: AAAAAAAA BBBBBBBB CCCCCCCC DDDDDDDD

The 1-bits make sure that carries propagate to the next 0-bit.
The 0-bits provide holes for carries to fall into.  */
    himagic = 0x80808080L;
    lomagic = 0x01010101L;
    if (sizeof (longword) > 4)
    {
      /* 64-bit version of the magic.  */
      /* Do the shift in two steps to avoid a warning if long has 32 bits.  */
      himagic = ((himagic << 16) << 16) | himagic;
      lomagic = ((lomagic << 16) << 16) | lomagic;
    }
    if (sizeof (longword) > 8)
      abort ();

    /* Instead of the traditional loop which tests each character,
       we will test a longword at a time.  The tricky part is testing
       if *any of the four* bytes in the longword in question are zero.  */
    for (;;)
    {
      longword = *longword_ptr++;

      if (((longword - lomagic) & ~longword & himagic) != 0)
      {
        /* Which of the bytes was the zero?  If none of them were, it was
           a misfire; continue the search.  */

        const char *cp = (const char *) (longword_ptr - 1);

        if (cp[0] == 0)
          return cp - str;
        if (cp[1] == 0)
          return cp - str + 1;
        if (cp[2] == 0)
          return cp - str + 2;
        if (cp[3] == 0)
          return cp - str + 3;
        if (sizeof (longword) > 4)
        {
          if (cp[4] == 0)
            return cp - str + 4;
          if (cp[5] == 0)
            return cp - str + 5;
          if (cp[6] == 0)
            return cp - str + 6;
          if (cp[7] == 0)
            return cp - str + 7;
        }
      }
    }
  }
#endif
#endif

/** Our optimized version */
#ifndef BENCHMARK_F1
#ifndef BENCHMARK_F2
size_t
__attribute__ ((noinline))
  func_3 (const char *str) {
    const char *char_ptr;
    const unsigned long int *longword_ptr;
    unsigned long int longword, himagic, lomagic;

    /* Handle the first few characters by reading one character at a time.
       Do this until CHAR_PTR is aligned on a longword boundary.  */
    for (char_ptr = str; ((unsigned long int) char_ptr
          & (sizeof (longword) - 1)) != 0;
        ++char_ptr)
      if (*char_ptr == '\0')
        return char_ptr - str;

    /* All these elucidatory comments refer to 4-byte longwords,
       but the theory applies equally well to 8-byte longwords.  */

    longword_ptr = (unsigned long int *) char_ptr;

    /* Bits 31, 24, 16, and 8 of this number are zero.  Call these bits
       the "holes."  Note that there is a hole just to the left of
       each byte, with an extra at the end:

bits:  01111110 11111110 11111110 11111111
bytes: AAAAAAAA BBBBBBBB CCCCCCCC DDDDDDDD

The 1-bits make sure that carries propagate to the next 0-bit.
The 0-bits provide holes for carries to fall into.  */
    himagic = 0x80808080L;
    lomagic = 0x01010101L;
    if (sizeof (longword) > 4)
    {
      /* 64-bit version of the magic.  */
      /* Do the shift in two steps to avoid a warning if long has 32 bits.  */
      himagic = ((himagic << 16) << 16) | himagic;
      lomagic = ((lomagic << 16) << 16) | lomagic;
    }
    if (sizeof (longword) > 8)
      abort ();

    /* Instead of the traditional loop which tests each character,
       we will test a longword at a time.  The tricky part is testing
       if *any of the four* bytes in the longword in question are zero.  */
    for (;;)
    {
      longword = *longword_ptr++;

      if (((longword - lomagic) & ~longword & himagic) != 0)
      {
        break;
      }
    }
        /* Which of the bytes was the zero?  If none of them were, it was
           a misfire; continue the search.  */

    const char *cp = (const char *) (longword_ptr - 1);

    if (cp[0] == 0)
      return cp - str;
    if (cp[1] == 0)
      return cp - str + 1;
    if (cp[2] == 0)
      return cp - str + 2;
    if (cp[3] == 0)
      return cp - str + 3;
    if (sizeof (longword) > 4)
    {
      if (cp[4] == 0)
        return cp - str + 4;
      if (cp[5] == 0)
        return cp - str + 5;
      if (cp[6] == 0)
        return cp - str + 6;
      if (cp[7] == 0)
        return cp - str + 7;
    }
  }
#endif
#endif

#ifndef BENCHMARK_F1
#ifndef BENCHMARK_F2
#ifndef BENCHMARK_F3
/* Return the length of the null-terminated string STR.  Scan for
   the null terminator quickly by testing four bytes at a time.  */
size_t 
__attribute__ ((noinline))
buggy_strlen (const char *str) {
  const char *char_ptr;
  const unsigned long int *longword_ptr;
  unsigned long int longword, magic_bits, himagic, lomagic;

  /* Handle the first few characters by reading one character at a time.
     Do this until CHAR_PTR is aligned on a longword boundary.  */
  for (char_ptr = str; ((unsigned long int) char_ptr
        & (sizeof (longword) - 1)) != 0;
      ++char_ptr)
    if (*char_ptr == '\0')
      return char_ptr - str;

  /* All these elucidatory comments refer to 4-byte longwords,
     but the theory applies equally well to 8-byte longwords.  */

  longword_ptr = (unsigned long int *) char_ptr;

  /* Bits 31, 24, 16, and 8 of this number are zero.  Call these bits
     the "holes."  Note that there is a hole just to the left of
     each byte, with an extra at the end:

bits:  01111110 11111110 11111110 11111111
bytes: AAAAAAAA BBBBBBBB CCCCCCCC DDDDDDDD

The 1-bits make sure that carries propagate to the next 0-bit.
The 0-bits provide holes for carries to fall into.  */
  magic_bits = 0x7efefeffL;
  himagic = 0x80808080L;
  lomagic = 0x01010101L;
  if (sizeof (longword) > 4)
  {
    /* 64-bit version of the magic.  */
    /* Do the shift in two steps to avoid a warning if long has 32 bits.  */
    magic_bits = ((0x7efefefeL << 16) << 16) | 0xfefefeffL;
    himagic = ((himagic << 16) << 16) | himagic;
    lomagic = ((lomagic << 16) << 16) | lomagic;
  }
  if (sizeof (longword) > 8)
    abort ();

  /* Instead of the traditional loop which tests each character,
     we will test a longword at a time.  The tricky part is testing
     if *any of the four* bytes in the longword in question are zero.  */
  for (;;)
  {
    /* We tentatively exit the loop if adding MAGIC_BITS to
       LONGWORD fails to change any of the hole bits of LONGWORD.

       1) Is this safe?  Will it catch all the zero bytes?
       Suppose there is a byte with all zeros.  Any carry bits
       propagating from its left will fall into the hole at its
       least significant bit and stop.  Since there will be no
       carry from its most significant bit, the LSB of the
       byte to the left will be unchanged, and the zero will be
       detected.

       2) Is this worthwhile?  Will it ignore everything except
       zero bytes?  Suppose every byte of LONGWORD has a bit set
       somewhere.  There will be a carry into bit 8.  If bit 8
       is set, this will carry into bit 16.  If bit 8 is clear,
       one of bits 9-15 must be set, so there will be a carry
       into bit 16.  Similarly, there will be a carry into bit
       24.  If one of bits 24-30 is set, there will be a carry
       into bit 31, so all of the hole bits will be changed.

       The one misfire occurs when bits 24-30 are clear and bit
       31 is set; in this case, the hole at bit 31 is not
       changed.  If we had access to the processor carry flag,
       we could close this loophole by putting the fourth hole
       at bit 32!

       So it ignores everything except 128's, when they're aligned
       properly.  */

    longword = *longword_ptr++;

    if (
#if 0
        /* Add MAGIC_BITS to LONGWORD.  */
        (((longword + magic_bits)

          /* Set those bits that were unchanged by the addition.  */
          ^ ~longword)

         /* Look at only the hole bits.  If any of the hole bits
            are unchanged, most likely one of the bytes was a
            zero.  */
         & ~magic_bits)
#else
        ((longword - lomagic) & himagic)
#endif
        != 0)
    {
      /* Which of the bytes was the zero?  If none of them were, it was
         a misfire; continue the search.  */

      const char *cp = (const char *) (longword_ptr - 1);

      if (cp[0] == 0)
        return cp - str;
      if (cp[1] == 0)
        return cp - str + 1;
      if (cp[2] == 0)
        return cp - str + 2;
      if (cp[3] == 0)
        return cp - str + 3;
      if (sizeof (longword) > 4)
      {
        if (cp[4] == 0)
          return cp - str + 4;
        if (cp[5] == 0)
          return cp - str + 5;
        if (cp[6] == 0)
          return cp - str + 6;
        if (cp[7] == 0)
          return cp - str + 7;
      }
    }
  }
}
#endif
#endif
#endif

unsigned long long benchmark(size_t (*fxn)(const char*), size_t warm_ups, size_t loops) {

  // allocate strings to work on
  char* strings[100];
  for(size_t i = 0; i < 100; ++i) {
    strings[i] = malloc(i+20);
    for(size_t j = 0; j < i+19; ++j) {
      strings[i][j] = (char)rand();
      if(strings[i][j] == 0)
        strings[i][j] = '\1';
    }
    strings[i][i+19] = '\0';
  }

  // warm-ups!
  for(size_t j = 0; j < warm_ups; ++j) {
    for(size_t i = 0; i < 100; ++i) {
      (*fxn)(strings[i]);
    }
  }

  // start the clock
  struct timeval start;
  struct timeval end;
  gettimeofday(&start, NULL);

  // loops!
  for(size_t j = 0; j < loops; ++j) {
    for(size_t i = 0; i < 100; ++i) {
      (*fxn)(strings[i]);
    }
  }

  // stop the clock
  gettimeofday(&end, NULL);
  unsigned long long difference = (end.tv_sec - start.tv_sec)*1000000 + (end.tv_usec - start.tv_usec);

  // free strings
  for(size_t i = 0; i < 100; ++i) {
    free(strings[i]);
  }

  return difference;
}


/* ---------------------------------------- */
#define WARMUPS 3
#define TRIALS 25
int main (int argc, char* argv[])
{

  size_t warmups = 1000000;
  size_t loops = 1000000;


  unsigned long long times[TRIALS];
  unsigned long long ours[TRIALS];

  for(size_t i = 0; i < WARMUPS; ++i) {
#ifdef BENCHMARK_F1
    times[i] = benchmark(&func_1, warmups, loops);
#endif
#ifdef BENCHMARK_F3
    times[i] = benchmark(&func_3, warmups, loops);
#endif
  }

  for(size_t i = 0; i < TRIALS; ++i) {
#ifdef BENCHMARK_F1
    times[i] = benchmark(&func_1, warmups, loops);
#endif
#ifdef BENCHMARK_F3
    times[i] = benchmark(&func_3, warmups, loops);
#endif
  }

  printf("Times\n");
  for(size_t i = 0; i < TRIALS; ++i) {
    printf("%llu\n", times[i]);
  }
  //double mean = pow(product, 1.0/TRIALS);
  //printf("GEOMETRIC MEAN OF SPEEDUP: %f\n", mean);
  
  return 0;
}

