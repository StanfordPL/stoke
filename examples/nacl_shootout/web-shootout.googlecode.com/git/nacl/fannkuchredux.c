/*
 * The Computer Language Benchmarks Game
 * http://shootout.alioth.debian.org/
 *
 * converted to C by Joseph Piché
 * from Java version by Oleg Mazurov and Isaac Gouy
 *
 */

#include <stdio.h>
#include <stdlib.h>

#include "bench-framework.h"

inline static int max(int a, int b)
{
    return a > b ? a : b;
}

//n = 10, pf[0] = 73196, pf[1] = 38
//n = 11, pf[0] = 556355, pf[1] = 51
int ref_checksum = 73196;
int ref_flips = 38;

int fannkuchredux(int n)
{
    int perm[n];
    int perm1[n];
    int count[n];
    int maxFlipsCount = 0;
    int permCount = 0;
    int checksum = 0;

    int i;

    for (i=0; i<n; i+=1)
        perm1[i] = i;
    int r = n;

    while (1) {
        while (r != 1) {
            count[r-1] = r;
            r -= 1;
        }

        for (i=0; i<n; i+=1)
            perm[i] = perm1[i];
        int flipsCount = 0;
        int k;

        while ( !((k = perm[0]) == 0) ) {
            int k2 = (k+1) >> 1;
            for (i=0; i<k2; i++) {
                int temp = perm[i]; perm[i] = perm[k-i]; perm[k-i] = temp;
            }
            flipsCount += 1;
        }

        maxFlipsCount = max(maxFlipsCount, flipsCount);
        checksum += permCount % 2 == 0 ? flipsCount : -flipsCount;

        /* Use incremental change to generate another permutation */
        while (1) {
            if (r == n) {
                if (n == 10 && checksum != ref_checksum) return -1;
                if (n == 10 && maxFlipsCount != ref_flips) return -1;
                return 0;
            }

            int perm0 = perm1[0];
            i = 0;
            while (i < r) {
                int j = i + 1;
                perm1[i] = perm1[j];
                i = j;
            }
            perm1[r] = perm0;
            count[r] = count[r] - 1;
            if (count[r] > 0) break;
            r++;
        }
        permCount++;
    }
}

/*
int main(int argc, char *argv[])
{
    int n = argc > 1 ? atoi(argv[1]) : 7;
    printf("Pfannkuchen(%d) = %d\n", n, fannkuchredux(n));
    return 0;
}
*/

int run_fannkuch(int n) {
  return fannkuchredux(n);
}
