/*
 * The Computer Language Benchmarks Game
 * http://shootout.alioth.debian.org/
 *
 * contributed by Jeffrey Beu
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

namespace
{

template< typename ...  > struct tuple{};

template<typename H, typename... T>
struct tuple<H,T...>
{
  typedef H head;
  typedef tuple<T...> tail;

  head fst;
  tail snd;

  tuple(const head& a,const tail& b):fst(a),snd(b){}
  tuple() = delete;
};

tuple<> construct_tuple()
{ return tuple<>();
}

template<class H, class...T> tuple<H,T...> construct_tuple(H h, T... a)
{
  tuple<H,T...> r(h,construct_tuple(a...));
  return r;
}

template<class OP> void FOREACH(OP,tuple<>){}
template<typename OP,class ...T> void FOREACH(OP& op,tuple<T...>& t)
{
  op(t.fst);
  FOREACH(op,t.snd);
}

template<class OP> void FOR(OP,tuple<>){}

template<typename OP, class ...T> void FOR(OP& op,tuple<T...>& t)
{
  op(t);
  FOR(op,t.snd);
}



struct body {
  double x, y, z;
  double vx, vy, vz;
  const double mass;
};

const double pi = 3.141592653589793;
const double solar_mass = 4 * pi * pi;
const double days_per_year = 365.24;
const double dt = 0.01;

const body sun =
{
  0,0,0,
  0,0,0,
  solar_mass
};

const body jupiter =
{
   4.84143144246472090e+00,
  -1.16032004402742839e+00,
  -1.03622044471123109e-01,
   1.66007664274403694e-03 * days_per_year,
   7.69901118419740425e-03 * days_per_year,
  -6.90460016972063023e-05 * days_per_year,
   9.54791938424326609e-04 * solar_mass
};

const body saturn =
{
   8.34336671824457987e+00,
   4.12479856412430479e+00,
  -4.03523417114321381e-01,
  -2.76742510726862411e-03 * days_per_year,
   4.99852801234917238e-03 * days_per_year,
   2.30417297573763929e-05 * days_per_year,
   2.85885980666130812e-04 * solar_mass
};

const body uranus =
{
   1.28943695621391310e+01,
  -1.51111514016986312e+01,
  -2.23307578892655734e-01,
   2.96460137564761618e-03 * days_per_year,
   2.37847173959480950e-03 * days_per_year,
  -2.96589568540237556e-05 * days_per_year,
   4.36624404335156298e-05 * solar_mass
};

const body neptune =
{
   1.53796971148509165e+01,
  -2.59193146099879641e+01,
   1.79258772950371181e-01,
   2.68067772490389322e-03 * days_per_year,
   1.62824170038242295e-03 * days_per_year,
  -9.51592254519715870e-05 * days_per_year,
   5.15138902046611451e-05 * solar_mass
};


struct
{ struct
  { template<class T> struct foreach_block
    { T &t;
      template<class T2> void operator()(T2& b2)
      {
        auto& b = t.fst;
        double dx = b.x - b2.x;
        double dy = b.y - b2.y;
        double dz = b.z - b2.z;
        double distance = sqrt(dx * dx + dy * dy + dz * dz);
        double mag = dt / (distance * distance * distance);
        b.vx -= dx * b2.mass * mag;
        b.vy -= dy * b2.mass * mag;
        b.vz -= dz * b2.mass * mag;
        b2.vx += dx * b.mass * mag;
        b2.vy += dy * b.mass * mag;
        b2.vz += dz * b.mass * mag;
      }
    };


    template<class T> void operator()(T& bodies)
    {
      foreach_block<decltype(bodies)> run = {bodies};
      FOREACH(run,bodies.snd);
    }
  }for_block;


  struct
  {
    template<class T> void operator()(T& body)
    {
      body.x += dt * body.vx;
      body.y += dt * body.vy;
      body.z += dt * body.vz;
    }
  }foreach_block;

  template<class T> void operator()(T& bodies)
  {
    FOR(for_block,bodies);
    FOREACH(foreach_block,bodies);
  }

}advance;

struct
{
  struct for_block
  { double &e;
    template<class T> struct foreach_block
    { T &t;
      double &e;
      template<class T2> void operator()(T2& b2)
      {
        auto& b = t.fst;
        double dx = b.x - b2.x;
        double dy = b.y - b2.y;
        double dz = b.z - b2.z;
        double distance = sqrt(dx * dx + dy * dy + dz * dz);
        e -= (b.mass * b2.mass) / distance;
      }
    };

    template<class T> void operator()(T& bodies)
    {
      auto& p = bodies.fst;
      e += 0.5 * p.mass * (p.vx * p.vx + p.vy * p.vy + p.vz * p.vz);

      foreach_block<decltype(bodies)> run = {bodies,e};
      FOREACH(run,bodies.snd);
    }
  };

  template<class T> double operator()(T& bodies)
  {
    double e = 0.0;
    for_block run = {e};
    FOR(run,bodies);
    return e;
  }

}energy;

struct
{
  struct foreach_block
  {
    double &px, &py, &pz;
    template<class T> void operator()(T& body)
    {
      px += body.vx * body.mass;
      py += body.vy * body.mass;
      pz += body.vz * body.mass;
    }
  };

  template<class T> void operator()(T& bodies)
  {
    double px = 0.0, py = 0.0, pz = 0.0;
    foreach_block run = {px,py,pz};
    FOREACH(run,bodies);

    bodies.fst.vx = -px / solar_mass;
    bodies.fst.vy = -py / solar_mass;
    bodies.fst.vz = -pz / solar_mass;
  }

}offset;


}

const double start_energy_ref = -0.169075164;
const double end_energy_ref = -0.169086185;

int nbody(int steps)
{

  auto solar_system = construct_tuple(sun,jupiter,saturn,uranus,neptune);
  offset(solar_system);

  // To verify output at the command line for step counts other than the
  // defaults, uncomment the printfs
  //printf ("%.9f\n", energy(solar_system));
  if (fabs(energy(solar_system) - start_energy_ref) > .0000001) return 1;

  for (int i = 1; i <= steps; i++)
  {
    advance(solar_system);
  }

  //printf ("%.9f\n", energy(solar_system));
  if (steps == 1000000 && fabs(energy(solar_system) - end_energy_ref) > .0000001) return 1;
  return 0;
}

extern "C"
int run_nbody(int steps)
{
  return nbody(steps);
}
