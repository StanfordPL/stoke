
int strcasecmp(const char*, const char*);

int go(char* x, char* y) {
  int sum = 0;
  for(int i = 0; i <= 0xff; ++i) {
    char c = (char)i;
    x[0] = c;
    y[0] = c;
    sum += strcasecmp(x,y);
  }

  return sum;
}

int main(int argc, char** argv) {

  char x[2];
  char y[2];

  x[1] = '\0';
  y[1] = '\0';

  return go(x,y);

}
