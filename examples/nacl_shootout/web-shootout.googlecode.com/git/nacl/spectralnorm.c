/*
 * The Computer Language Benchmarks Game
 * http://shootout.alioth.debian.org/
 *
 * Original C contributed by Sebastien Loisel
 * Conversion to C++ by Jon Harrop
 * OpenMP parallelize by The Anh Tran
 * Add SSE by The Anh Tran
 * Reconversion into C by Dan Farina
 */

//#include <omp.h>
#include <math.h>
#include <sched.h>
#include <stdio.h>
#include <stdlib.h>

#include "bench-framework.h"

#define false 0
#define true  1

/* define SIMD data type. 2 doubles encapsulated in one XMM register */
typedef double v2dt __attribute__((vector_size(16)));
static const v2dt v1 = {1.0, 1.0};

/* parameter for evaluate functions */
struct Param
{
    double* u;          /* source vector */
    double* tmp;        /* temporary */
    double* v;          /* destination vector */

    int N;              /* source/destination vector length */
    int N2;             /* = N/2 */

    int r_begin;        /* working range of each thread */
    int r_end;
};

/* Return: 1.0 / (i + j) * (i + j +1) / 2 + i + 1; */
static double
eval_A(int i, int j)
{
    /*
     * 1.0 / (i + j) * (i + j +1) / 2 + i + 1;
     * n * (n+1) is even number. Therefore, just (>> 1) for (/2)
     */
    int d = (((i+j) * (i+j+1)) >> 1) + i+1;

    return 1.0 / d;
}

/*
 * Return type: 2 doubles in xmm register [double1, double2]
 *  double1 = 1.0 / (i + j) * (i + j +1) / 2 + i + 1;
 *  double2 = 1.0 / (i+1 + j) * (i+1 + j +1) / 2 + i+1 + 1;
 */
static v2dt
eval_A_i(int i, int j)
{
    int d1 = (((i+j) * (i+j+1)) >> 1) + i+1;
    int d2 = (((i+1 +j) * (i+1 +j+1)) >> 1) + (i+1) +1;
    v2dt r = {d1, d2};

    return v1 / r;
}

/*
 * Return type: 2 doubles in xmm register [double1, double2]
 *  double1 = 1.0 / (i + j) * (i + j +1) / 2 + i + 1;
 *  double2 = 1.0 / (i + j+1) * (i + j+1 +1) / 2 + i + 1;
 */
static v2dt
eval_A_j(int i, int j)
{
    int d1 = (((i+j) * (i+j+1)) >> 1) + i+1;
    int d2 = (((i+ j+1) * (i+ j+1 +1)) >> 1) + i+1;
    v2dt r = {d1, d2};

    return v1 / r;
}


/* This function is called by many threads */
static void
eval_A_times_u(struct Param *p)
{
    /* alias of source vector */
    const v2dt  *pU = (void *) p->u;
    int          i;
    int          ie;

    for (i = p->r_begin, ie = p->r_end; i < ie; i++)
    {
        v2dt sum = {0, 0};

        /* xmm = 2 doubles. This loop run from [0 .. N/2) */
        int j;
        for (j = 0; j < p->N2; j++)
            sum += pU[j] * eval_A_j(i, j*2);

        /* write result */
        {
            double *mem = (void *) &sum;

            p->tmp[i] = mem[0] + mem[1];
        }

        /* If source vector is odd size. This should be called <= 1 time */
        for (j = j*2; __builtin_expect(j < p->N, false); j++)
            p->tmp[i] += eval_A(i, j) * p->u[j];
    }
}

static void
eval_At_times_u(struct Param *p)
{
    const v2dt  *pT = (void *) p->tmp;
    int          i;
    int          ie;

    for (i = p->r_begin, ie = p->r_end; i < ie; i++)
    {
        v2dt    sum = {0, 0};
        int     j;

        for (j = 0; j < p->N2; j++)
            sum += pT[j] * eval_A_i(j*2, i);

        {
            double *mem = (void *) &sum;

            p->v[i] = mem[0] + mem[1];
        }

        /* odd size array */
        for (j = j*2; __builtin_expect(j < p->N, false); j++)
            p->v[i] += eval_A(j, i) * p->tmp[j];
    }
}

/*
 * Called by N threads.
 *
 * Each thread modifies its portion in destination vector -> barrier needed to
 * sync access
 */
static void
eval_AtA_times_u(struct Param *p)
{
    eval_A_times_u(p);
#pragma omp barrier

    eval_At_times_u(p);
#pragma omp barrier
}

/*
 * Shootout bench uses affinity to emulate single core processor.  This
 * function searches for appropriate number of threads to spawn.
 */
static int
GetThreadCount()
{
#ifdef __GLIBC__
    cpu_set_t   cs;
    int         i;
    int         count = 0;

    CPU_ZERO(&cs);
    sched_getaffinity(0, sizeof(cs), &cs);

    for (i = 0; i < 16; i++)
        if (CPU_ISSET(i, &cs))
            count++;

    return count;
#else
    return 1;
#endif
}

static double
spectral_game(int N)
{
    /* Align 64 byte for L2 cache line */
    __attribute__((aligned(64))) double u[N];
    __attribute__((aligned(64))) double tmp[N];
    __attribute__((aligned(64))) double v[N];

    double      vBv = 0.0;
    double      vv  = 0.0;

#pragma omp parallel default(shared) num_threads(GetThreadCount())
    {
        int i;

#pragma omp for schedule(static)
        for (i = 0; i < N; i++)
            u[i] = 1.0;

        /*
         * this block will be executed by NUM_THREADS variable declared in this
         * block is private for each thread
         */
        int             threadid    = 0;//omp_get_thread_num();
        int             threadcount = 1;//omp_get_num_threads();
        int             chunk       = N / threadcount;
        int             ite;
        struct Param    my_param;

        my_param.tmp = tmp;
        my_param.N   = N;
        my_param.N2  = N/2;

        /*
         * calculate each thread's working range [range1 .. range2) => static
         * schedule here
         */
        my_param.r_begin   = threadid * chunk;
        my_param.r_end  = (threadid < (threadcount -1)) ?
            (my_param.r_begin + chunk) : N;

        for (ite = 0; ite < 10; ite++)
        {
            my_param.u = u;     /* source vec is u */
            my_param.v = v;     /* destination vec is v */
            eval_AtA_times_u(&my_param);

            my_param.u = v;     /* source is v */
            my_param.v = u;     /* destination is u */
            eval_AtA_times_u(&my_param);
        }

        /* multi thread adding */
        {
            int i;

#pragma omp for schedule(static) reduction( + : vBv, vv ) nowait

            for (i = 0; i < N; i++)
            {
                vv  += v[i] * v[i];
                vBv += u[i] * v[i];
            }
        }
    }
    /* end parallel region */

    return sqrt(vBv/vv);
}

const double reference_result = 1.274224047;

int
spectralnorm(int N)
{
  double result = spectral_game(N);
  // printf("%.9f\n", result);
  if (N == 350 && fabs(result - reference_result) > .0000001) return -1;
    return 0;
}

int run_spectralnorm(int N) {
  return spectralnorm(N);
}
