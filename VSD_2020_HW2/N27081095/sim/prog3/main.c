int GCD(int, int);

int main(void) {
  extern int div1;
  extern int div2;
  extern int _test_start;

  int max;
  max = GCD(div1,div2);
  *(&_test_start) = max;

  return 0;
}


int GCD(int a, int b) {
  if(b) {
    while((a%=b) && (b%=a));
  }
  return a+b;
}

