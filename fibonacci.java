//The technical mathematical definition of Fibonacci numbers is below:
//fib(0) = 0 
//fib(1) = 1 
//fib(n) = fib(n-1) + fib(n-2)

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
