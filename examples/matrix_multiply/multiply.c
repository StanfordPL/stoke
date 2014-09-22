
int main(int argc, char** argv) {

  int dim, i, j, k;

  if(argc > 1) {
    dim = atoi(argv[1]);
  } else {
    dim = 5;
  }

  int m1[dim][dim];
  int m2[dim][dim];
  int m3[dim][dim];

  for(i = 0; i < dim; i++)
    for(j = 0; j < dim; j++) {
      m1[i][j] = 2*i + j;
      m2[i][j] = i + 2*j;

      if (j < i)
        m3[i][j] = 0;
      else
        m3[i][j] = 1; //just for fun!
    }
  
  /*
  for(i = 0; i < dim; i++)
    for(j = 0; j < dim; j++) 
      for(k = 0; k < dim; k++)
        m3[i][j] += m1[i][k]*m2[k][j];
  */

  return m3[dim-1][dim-1];
}
