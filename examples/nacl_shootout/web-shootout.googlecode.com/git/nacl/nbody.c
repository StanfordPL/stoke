/*
 * The Computer Language Benchmarks Game
 * http://shootout.alioth.debian.org/
 *
 * contributed by Christoph Bauer
 * slightly improved by Mark Hinds
 * SIMDified by Stefan Krause
 * translated in ANSI C by Francesco Massei
 */

#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "bench-framework.h"

#define pi 3.141592653589793
#define solar_mass (4 * pi * pi)
#define days_per_year 365.24

typedef double v2df __attribute__ (( vector_size(2*sizeof(double)) ));

#define lower(_V) (((double*)&_V)[0])

struct planet {
    v2df xy;
    v2df z0; /* z and zero */
    v2df vxvy;
    v2df vz00;	/* vz and zero */
    v2df massmass; /* the mass in both components */
};

#define NBODIES 5
static struct planet bodies_init[NBODIES] = {
  {                               /* sun */
      {0, 0}, {0,0}, {0, 0}, {0,0}, {solar_mass,solar_mass}
  },
  {                               /* jupiter */
      {4.84143144246472090e+00,
    -1.16032004402742839e+00},
    {-1.03622044471123109e-01, 0},
    {1.66007664274403694e-03 * days_per_year,
    7.69901118419740425e-03 * days_per_year},
    {-6.90460016972063023e-05 * days_per_year,0},
    {9.54791938424326609e-04 * solar_mass,9.54791938424326609e-04 * solar_mass}
  },
  {                               /* saturn */
      {8.34336671824457987e+00,
    4.12479856412430479e+00},
    {-4.03523417114321381e-01, 0},
    {-2.76742510726862411e-03 * days_per_year,
    4.99852801234917238e-03 * days_per_year},
    {2.30417297573763929e-05 * days_per_year,0},
    {2.85885980666130812e-04 * solar_mass,2.85885980666130812e-04 * solar_mass}
  },
  {                               /* uranus */
      {1.28943695621391310e+01,
    -1.51111514016986312e+01},
    {-2.23307578892655734e-01,0},
    {2.96460137564761618e-03 * days_per_year,
    2.37847173959480950e-03 * days_per_year},
    {-2.96589568540237556e-05 * days_per_year,0},
    {4.36624404335156298e-05 * solar_mass,4.36624404335156298e-05 * solar_mass}
  },
  {                               /* neptune */
      {1.53796971148509165e+01,
    -2.59193146099879641e+01},
    {1.79258772950371181e-01,0},
    {2.68067772490389322e-03 * days_per_year,
    1.62824170038242295e-03 * days_per_year},
    {-9.51592254519715870e-05 * days_per_year,0},
    {5.15138902046611451e-05 * solar_mass,5.15138902046611451e-05 * solar_mass}
  }
};

static struct planet bodies[NBODIES];

const static v2df dtdt_init = {0.01, 0.01};

static v2df dtdt = {0.01, 0.01};

static void advance(int q)
{
  struct planet *b, *b2;
  v2df dxdy, dz00, tsquare, distance2, magmag;
  int i, j, k;
  for (k=1; k<=q; ++k) {
      for (i = 0; i < NBODIES; ++i) {
        b = &(bodies[i]);
        for (j = i + 1; j < NBODIES; j++) {
          b2 = &(bodies[j]);
          dxdy = b->xy - b2->xy;
          dz00 = b->z0 - b2->z0;
          /* dx*dx+dy*dy | dz*dz */
          tsquare = __builtin_ia32_haddpd(dxdy*dxdy,dz00*dz00);
          /* dx*dx+dy*dy+dz*dz | dx*dx+dy*dy+dz*dz */
          distance2 = __builtin_ia32_haddpd(tsquare,tsquare);
          magmag = dtdt / (__builtin_ia32_sqrtpd(distance2)*distance2);
          dxdy *= magmag;
          dz00 *= magmag;
          b->vxvy -= dxdy * b2->massmass;
          b->vz00 -= dz00 * b2->massmass;
          b2->vxvy += dxdy * b->massmass;
          b2->vz00 += dz00 * b->massmass;
        }
      }
      for (i = 0; i < NBODIES; i++) {
        bodies[i].xy += dtdt * bodies[i].vxvy;
        bodies[i].z0 += dtdt * bodies[i].vz00;
      }
    }
}

static double energy()
{
  v2df e = {0.0, 0.0};
  v2df half = {0.5, 0.5};
  v2df sq, dxdy, dz00, distance;
  const struct planet *b, *b2;
  int i, j;

  for (i = 0; i < NBODIES; i++) {
    b = &(bodies[i]);
    /* b->mass*(vx*vx + vy*vy) | b->mass*(vz*vz + 0*0) */
    sq = b->massmass * __builtin_ia32_haddpd(b->vxvy*b->vxvy, b->vz00*b->vz00);
    sq = __builtin_ia32_haddpd(sq, sq);
    e += half * sq;
    for (j = i + 1; j < NBODIES; j++) {
      b2 = &(bodies[j]);
      dxdy = b->xy - b2->xy;
      dz00 = b->z0 - b2->z0;
      /* b->mass*(vx*vx + vy*vy) | b->mass*(vz*vz + 0*0) */
      distance = __builtin_ia32_haddpd(dxdy*dxdy, dz00*dz00);
      distance = __builtin_ia32_sqrtpd(__builtin_ia32_haddpd(distance,distance));
      e -= (b->massmass * b2->massmass) / distance;
    }
  }
  return lower(e);
}

static void offset_momentum()
{
  v2df pxpy = {0.0, 0.0};
  v2df pz00 = {0.0, 0.0};
  v2df solar_mass_inv = { 1.0 / solar_mass, 1.0 / solar_mass};
  int i;
  for (i = 0; i < NBODIES; i++) {
    pxpy += bodies[i].vxvy * bodies[i].massmass;
    pz00 += bodies[i].vz00 * bodies[i].massmass;
  }
  bodies[0].vxvy = - pxpy * solar_mass_inv;
  bodies[0].vz00 = - pz00 * solar_mass_inv;
}

const double start_energy_ref = -0.169075164;
const double end_energy_ref = -0.169086185;

int nbody(int steps)
{
  dtdt = dtdt_init;
  memcpy(bodies, bodies_init, sizeof(bodies));
  offset_momentum();

  // To verify output at the command line for step counts other than the
  // defaults, uncomment the printfs
  //printf ("%.9f\n", energy());
  if (fabs(energy() - start_energy_ref) > .0000001) return 1;

  advance(steps);

  //printf ("%.9f\n", energy());
  if (steps == 1000000 && fabs(energy() - end_energy_ref) > .0000001) return 1;
  return 0;
}

int run_nbody(int steps)
{
  return nbody(steps);
}
