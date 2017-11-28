public static long fibonacci(int n) {
  if(n == 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  }
  long nMinusOne = 1;
  long nMinusTwo = 0;
  long fib = 0;
  for(int i = 0; i < n; i++) {
    fib = (nMinusTwo + nMinusOne);
    nMinusTwo = nMinusOne;
    nMinusOne = fib;
  }
  return fib;
}
