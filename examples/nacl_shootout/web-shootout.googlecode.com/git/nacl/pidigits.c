/* The Computer Language Benchmarks Game
  http://shootout.alioth.debian.org/

  contributed by Paolo Bonzini & Sean Bartlett
  modified by Michael Mellor
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <gmp.h>
#include "bench-framework.h"

static mpz_t numer, accum, denom, tmp1, tmp2;

static int extract_digit()
{
  if (mpz_cmp(numer, accum) > 0)
    return -1;

  /* Compute (numer * 3 + accum) / denom */
  mpz_mul_2exp(tmp1, numer, 1);
  mpz_add(tmp1, tmp1, numer);
  mpz_add(tmp1, tmp1, accum);
  mpz_fdiv_qr(tmp1, tmp2, tmp1, denom);

  /* Now, if (numer * 4 + accum) % denom... */
  mpz_add(tmp2, tmp2, numer);

  /* ... is normalized, then the two divisions have the same result.  */
  if (mpz_cmp(tmp2, denom) >= 0)
    return -1;

  return mpz_get_ui(tmp1);
}

static void next_term(unsigned int k)
{
  unsigned int y2 = k*2 + 1;

  mpz_mul_2exp(tmp1, numer, 1);
  mpz_add(accum, accum, tmp1);
  mpz_mul_ui(accum, accum, y2);
  mpz_mul_ui(numer, numer, k);
  mpz_mul_ui(denom, denom, y2);
}

static void eliminate_digit(unsigned int d)
{
  mpz_submul_ui(accum, denom, d);
  mpz_mul_ui(accum, accum, 10);
  mpz_mul_ui(numer, numer, 10);
}

char *digitstr;

static void pidigits(unsigned int n)
{
  int d;
  unsigned int i = 0, k = 0, m;
  mpz_init(tmp1);
  mpz_init(tmp2);
  mpz_init_set_ui(numer, 1);
  mpz_init_set_ui(accum, 0);
  mpz_init_set_ui(denom, 1);

  for(;;)
  {
    do {
      k++;
      next_term(k);
      d = extract_digit();
    } while(d == -1);

    //putchar(d + '0');
    digitstr[i] = d + '0';

    i++;
    m = i%10;
    //if(m == 0)
    //  printf("\t:%d\n", i);
    if(i >= n)
      break;
    eliminate_digit(d);
  }

  if(m) {
    m = 10 - m;
    //while(m--)
    //  putchar(' ');
    //printf("\t:%d\n", n);
  }
}
const int num_ref_digits = 1000;
const char * ref_digits = "3141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117067982148086513282306647093844609550582231725359408128481117450284102701938521105559644622948954930381964428810975665933446128475648233786783165271201909145648566923460348610454326648213393607260249141273724587006606315588174881520920962829254091715364367892590360011330530548820466521384146951941511609433057270365759591953092186117381932611793105118548074462379962749567351885752724891227938183011949129833673362440656643086021394946395224737190702179860943702770539217176293176752384674818467669405132000568127145263560827785771342757789609173637178721468440901224953430146549585371050792279689258923542019956112129021960864034418159813629774771309960518707211349999998372978049951059731732816096318595024459455346908302642522308253344685035261931188171010003137838752886587533208381420617177669147303598253490428755468731159562863882353787593751957781857780532171226806613001927876611195909216420198";

int run_pidigits(int digits)
{
  digitstr = malloc(digits+1);
  pidigits(digits);
  digitstr[digits] = '\0';
  if (digits == num_ref_digits) {
    return strncmp(digitstr, ref_digits, num_ref_digits);
  }
  return 0;
}
