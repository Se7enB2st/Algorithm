//Is a number prime? - Codewars

//Define a function isPrime that takes one integer argument and returns true or false depending on if the integer is a prime.
//A prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.


function isPrime(num) {
   // If n is less than 2 or not an integer then by definition cannot be prime.
   if(num < 2 || !Number.isInteger(num)) return false
  
   // Now check every whole number from 2 to the square root of n. If any of these divides n exactly, n cannot be prime.
   for (var i = 2; i <= Math.sqrt(num); i++) {
      if (num % i == 0) return false;
   }
   
   // Finally return whether n is prime or not.
   return true;
}
