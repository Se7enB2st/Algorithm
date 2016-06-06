#The Firehose Project - Algorithm Problem: Fibonacci Sequence

#The technical mathematical definition of Fibonacci numbers is below:
#fib(0) = 0 
#fib(1) = 1 
#fib(n) = fib(n-1) + fib(n-2)

#Build a method called iterative_fib that builds a table of Fibonacci numbers one-by-one like we walked you through earlier.
#After you build the entire sequence of numbers up to n digits, just return the last value.

#Iterative method
def iterative_fib(num)
  array = [0,1]
  while array.length != num-1
    x = array[array.length-1]
    y = array[array.length-2]
    result = x + y
    array << result
  end
  return array.last
end

puts iterative_fib(10)
