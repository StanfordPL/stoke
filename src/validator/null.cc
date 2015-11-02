#include <iostream>
#include <fstream>
#include <stdint.h>
#include <malloc.h>
#include <assert.h>

#include "src/validator/null.h"

#include "gmp.h"
#include "iml.h"


using namespace std;

namespace stoke {

long mpz_to_long(mpz_t z)
{
  long result = 0;
  mpz_export(&result, 0, -1, sizeof result, 0, 0, z);
  return result;
}

size_t Nullspace::z_nullspace(uint64_t* inputs, size_t rows, size_t cols, uint64_t*** output) {

  mpz_t *mp_result;
  cout << "computing the nullspace" << endl;
  size_t dim = nullspaceLong(rows, cols, (long*)inputs, &mp_result);
  cout << "nullspace computation complete" << endl;

  // For each row of the nullspace, find the gcd and divide by it.
  for (size_t i = 0; i < dim; ++i) {
    mpz_t gcd;
    mpz_init_set(gcd, mp_result[0*dim+i]);
    for (size_t j = 1; j < cols; ++j) {
      mpz_gcd(gcd, gcd, mp_result[j*dim+i]);
    }

    mpz_t val;
    mpz_init(val);
    for (size_t j = 0; j < cols; ++j) {
      mpz_divexact(val, mp_result[j*dim+i], gcd);
      mpz_set(mp_result[j*dim+i], val);
    }
  }

  // Allocate the output matrix
  *output = new uint64_t*[dim];
  for(size_t i = 0; i < dim; ++i) {
    cout << "can I have values? " << i << ": " << (*output)[i] << endl;
    (*output)[i] = new uint64_t[cols];
  }
  
  // Fill the output matrix
  for(size_t i = 0; i < dim; ++i) {
    for(size_t j = 0; j < cols; ++j) {
      (*output)[i][j] = (uint64_t)mpz_get_si(mp_result[j*dim + i]);
    }
  }

  return dim;
}

}

namespace BitvectorNullspace {

//Any number is odd*2^x. Return odd
uint64_t getOdd(uint64_t p)
{
  if(p==0) return 0;
  while((p%2)==0)
    p=p/2;
  return p;
}

//2^{64-input}, not needed
uint64_t invertPow2(uint64_t a)
{
  if(a==0) return 1;
  if(a==1) return 1;
  if(a==2) return (((uint64_t)1)<<63);
  else return ((((uint64_t)1)<<63)/(a/2));
}

//Use extended gcd to find v s.t vb=1 mod 2^64
uint64_t invert(uint64_t b)
{
  uint64_t a = ((uint64_t)1)<<63;
  uint64_t alpha, beta, u, v;
  u=1; v=0;
  alpha=a; beta = b;
  while(a>0)
  {
    a=a>>1;
    if((u&1)==0)
    {
      u = u>>1; v = v>>1;
    }
    else
    {
      u = ((u^beta)>>1) + (u & beta);
      v = (v>>1) + alpha;
    }
  }
  return -v;
}

//Create [A^T|I]^T
uint64_t* augmentIdentity(uint64_t* inputs, size_t rows, size_t cols)
{
  uint64_t* augmented = new uint64_t[(rows+cols)*cols];
  for(size_t i=0;i<rows;i++)
    for(size_t j=0; j<cols;j++)
      augmented[i*cols+j]=inputs[i*cols+j];
  for(size_t i=rows; i<rows+cols;i++)
    for(size_t j=0; j<cols;j++)
      if(i==rows+j)
        augmented[i*cols+j]=1;
      else
        augmented[i*cols+j]=0;
  return augmented;
}
//print a matrix
/*void printMat(uint64_t* mat, size_t rows, size_t cols)
{
  cout << "START" << endl;
  for(size_t i=0;i<rows;i++)
  {
    for(size_t j=0;j<cols;j++)
      cout << mat[i*cols+j] << " " ;
     cout << endl;
  }
  cout << "END" << endl;

}*/
//compute gcd of two positive numbers
uint64_t gcd(uint64_t a, uint64_t b)
{
  if(a==0) return b;
  if(b==0) return a;
  if(a>b) return gcd(b,a%b);
  if(b>a) return gcd(a,b%a);
  return a;
}
//absolute value function useful for pretty printing
int64_t abs(uint64_t a)
{
  int64_t retval = a;
  if(retval>=0) return retval;
  else return -retval;
}
//compute gcd of a vector of integers
uint64_t rowGcd(uint64_t* vec, size_t num)
{
  size_t i =0;
  uint64_t retval = abs(vec[i]);
  for(i=1;i<num;i++)
  {
    retval = gcd(retval,abs(vec[i]));
  }
  return retval;
}
//for prettier output
void makePretty(uint64_t*** output,size_t rows,size_t cols)
{
/*
  for(size_t i=0;i<rows;i++)
  {
    uint64_t g = rowGcd(*output[i],cols);
    assert(g!=0 && "NULL ROW");
    for(size_t j=0;j<cols;j++)
    {
      int64_t l = ((int64_t)*output[i][j]);
      l = l/((int64_t)g);
      *output[i][j]= (uint64_t)(l);
    }
  }
*/
}

bool checkInvariants(uint64_t* augmented,size_t rows,size_t cols)
{
  for(size_t i=rows;i<rows+cols;i++)
  {
    bool flag  = false;
    for(size_t j=0;j<cols;j++)
      flag = flag || augmented[i*cols+j]!=0;
    if(!flag)
      return false;
  }
  return true;
}

size_t rank(uint64_t a)
{
  if(a==0) return 64;
  size_t rank =0;
  while(a%2==0)
  {
    a=a/2;
    rank++;
  }
  return rank;
}

#define SUB(X,Y) augmented[(X)*cols+(Y)]

//rowspace of output is nullspace of input
size_t nullspace(long* inputs, size_t rows, size_t cols, uint64_t*** output)
{
  size_t rowrank = 0;
  uint64_t* augmented = augmentIdentity((uint64_t*)inputs,rows, cols);
  //cout << "STARTING" << endl;
  //printMat(augmented,rows+cols,cols);
  size_t currcol=0;
  for(size_t i=0;i<rows;i++)
  {
    size_t minrank = rank(SUB(i,currcol));
    size_t idx = currcol;
    for(size_t j=currcol;j<cols;j++)
    {
      size_t val = rank(SUB(i,j));
      if(val<minrank)
      {
      minrank = val;
      idx = j;
      }
    }
    if(minrank==64)
    {
      i++;
      continue;
    }
    rowrank++;
    assert(rowrank<cols);
    //We have found the column with the pivot
    for(size_t j=i;j<rows+cols;j++)
    {
      uint64_t temp = SUB(j,idx);
      SUB(j,idx)=SUB(j,currcol);
      SUB(j,currcol)=temp;
    }
    //cout << "Swap column" << currcol << " and " << idx << endl;
    //printMat(augmented,rows+cols,cols);
    uint64_t pivot = SUB(i,currcol);
    assert(pivot!=0);
    uint64_t odd = getOdd(pivot);
    uint64_t twopow = pivot/odd;
    uint64_t oddinv = invert(odd);
    for(size_t j=i;j<rows+cols;j++)
    {
      SUB(j,currcol) = SUB(j,currcol)*oddinv;
    }
    //cout << "The pivot at column " << currcol << " is now a power of 2" << endl;
    //printMat(augmented,rows+cols,cols);
    assert(SUB(i,currcol)==twopow && "inversion failed");
    for(size_t k=currcol+1;k<cols;k++)
    {
      uint64_t initval = SUB(i,k)/twopow;
      for(size_t j =i;j<rows+cols;j++)
      {
         SUB(j,k) = SUB(j,k) - initval*SUB(j,currcol);
      }
     // cout << "Column" << k << " - " << initval << " times column " << currcol << endl;
      //printMat(augmented,rows+cols,cols);
      assert(SUB(i,k)==0);
      assert(checkInvariants(augmented,rows,cols));
    }
    currcol++;

  }
  size_t nullity = cols-rowrank;
  //cout << "Nullity is " << nullity << endl;
  *output = new uint64_t*[nullity];
  for(size_t i=cols-nullity;i<cols;i++)
  {
    (*output)[i-cols+nullity]= new uint64_t[cols];
    for(size_t j=rows;j<rows+cols;j++)
    {
      (*output)[i-cols+nullity][j-rows]=SUB(j,i);
    }
  }
  makePretty(output,nullity,cols);
  delete augmented;
  return nullity;
}

}
